.class Lcom/callapp/contacts/manager/cache/FileStore;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "[|\\\\?*<\\\":>+\\[\\]/\'\\s]"

    .line 41
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/callapp/contacts/manager/cache/FileStore;->a:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Ljava/lang/Class;Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 223
    sget-object v0, Lcom/callapp/contacts/manager/cache/FileStore;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    const-string v1, "-"

    invoke-virtual {p1, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 224
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getKryo()Lcom/esotericsoftware/kryo/c;
    .locals 4

    .line 45
    new-instance v0, Lcom/callapp/contacts/util/serializer/CallAppKryo;

    invoke-direct {v0}, Lcom/callapp/contacts/util/serializer/CallAppKryo;-><init>()V

    .line 2138
    iget-boolean v1, v0, Lcom/esotericsoftware/kryo/c;->d:Z

    const/4 v2, 0x1

    if-eq v2, v1, :cond_2

    if-eqz v1, :cond_0

    .line 2141
    iget-object v1, v0, Lcom/esotericsoftware/kryo/c;->c:Lcom/esotericsoftware/kryo/f;

    invoke-interface {v1}, Lcom/esotericsoftware/kryo/f;->b()V

    const/4 v1, 0x0

    .line 2142
    iput-object v1, v0, Lcom/esotericsoftware/kryo/c;->e:Ljava/lang/Object;

    .line 2144
    :cond_0
    iput-boolean v2, v0, Lcom/esotericsoftware/kryo/c;->d:Z

    .line 2145
    iget-object v1, v0, Lcom/esotericsoftware/kryo/c;->c:Lcom/esotericsoftware/kryo/f;

    if-nez v1, :cond_1

    new-instance v1, Lcom/esotericsoftware/kryo/c/k;

    invoke-direct {v1}, Lcom/esotericsoftware/kryo/c/k;-><init>()V

    iput-object v1, v0, Lcom/esotericsoftware/kryo/c;->c:Lcom/esotericsoftware/kryo/f;

    .line 2146
    :cond_1
    sget-boolean v1, Lcom/esotericsoftware/b/a;->e:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "References: true"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "kryo"

    invoke-static {v2, v1}, Lcom/esotericsoftware/b/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const/4 v1, 0x0

    .line 48
    invoke-virtual {v0, v1}, Lcom/esotericsoftware/kryo/c;->setRegistrationRequired(Z)V

    .line 49
    const-class v2, Landroid/graphics/Bitmap;

    new-instance v3, Lcom/callapp/contacts/util/serializer/KryoBitmapSeriliazer;

    invoke-direct {v3}, Lcom/callapp/contacts/util/serializer/KryoBitmapSeriliazer;-><init>()V

    invoke-virtual {v0, v2, v3}, Lcom/esotericsoftware/kryo/c;->b(Ljava/lang/Class;Lcom/esotericsoftware/kryo/h;)Lcom/esotericsoftware/kryo/g;

    .line 50
    invoke-static {v0}, Lcom/callapp/contacts/util/serializer/UnmodifiableCollectionsSerializer;->a(Lcom/esotericsoftware/kryo/c;)V

    .line 51
    invoke-static {v0}, Lcom/callapp/contacts/util/serializer/SynchronizedCollectionsSerializer;->a(Lcom/esotericsoftware/kryo/c;)V

    new-array v2, v1, [Ljava/lang/Object;

    .line 52
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    new-instance v3, Lcom/callapp/contacts/util/serializer/ArraysAsListSerializer;

    invoke-direct {v3}, Lcom/callapp/contacts/util/serializer/ArraysAsListSerializer;-><init>()V

    invoke-virtual {v0, v2, v3}, Lcom/esotericsoftware/kryo/c;->b(Ljava/lang/Class;Lcom/esotericsoftware/kryo/h;)Lcom/esotericsoftware/kryo/g;

    .line 54
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v1, v1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 55
    invoke-static {v1}, Lcom/callapp/contacts/util/serializer/SubListSerializers;->a(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/h;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 57
    invoke-virtual {v0, v1, v2}, Lcom/esotericsoftware/kryo/c;->b(Ljava/lang/Class;Lcom/esotericsoftware/kryo/h;)Lcom/esotericsoftware/kryo/g;

    .line 60
    :cond_3
    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    new-instance v2, Lcom/esotericsoftware/kryo/serializers/g$ak;

    invoke-direct {v2}, Lcom/esotericsoftware/kryo/serializers/g$ak;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/esotericsoftware/kryo/c;->b(Ljava/lang/Class;Lcom/esotericsoftware/kryo/h;)Lcom/esotericsoftware/kryo/g;

    .line 62
    const-class v1, Lcom/esotericsoftware/kryo/serializers/e;

    invoke-virtual {v0, v1}, Lcom/esotericsoftware/kryo/c;->setDefaultSerializer(Ljava/lang/Class;)V

    .line 63
    const-class v1, Landroid/content/Context;

    new-instance v2, Lcom/callapp/contacts/util/serializer/ContextIgnoreSerializer;

    invoke-direct {v2}, Lcom/callapp/contacts/util/serializer/ContextIgnoreSerializer;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/esotericsoftware/kryo/c;->a(Ljava/lang/Class;Lcom/esotericsoftware/kryo/h;)V

    .line 65
    new-instance v1, Lcom/callapp/contacts/util/serializer/CallAppObjectInstantiator;

    invoke-direct {v1}, Lcom/callapp/contacts/util/serializer/CallAppObjectInstantiator;-><init>()V

    .line 66
    new-instance v2, Lcom/esotericsoftware/kryo/c/d;

    invoke-direct {v2}, Lcom/esotericsoftware/kryo/c/d;-><init>()V

    .line 3044
    iput-object v1, v2, Lcom/esotericsoftware/kryo/c/d;->a:Lorg/objenesis/b/b;

    .line 68
    invoke-virtual {v0, v2}, Lcom/esotericsoftware/kryo/c;->setInstantiatorStrategy(Lorg/objenesis/b/b;)V

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;[B)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "[B)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    .line 144
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    monitor-enter p1

    .line 148
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 149
    :try_start_1
    new-instance p2, Lcom/esotericsoftware/kryo/a/a;

    new-instance v2, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v2, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p2, v2}, Lcom/esotericsoftware/kryo/a/a;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 151
    :try_start_2
    invoke-direct {p0}, Lcom/callapp/contacts/manager/cache/FileStore;->getKryo()Lcom/esotericsoftware/kryo/c;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/esotericsoftware/kryo/c;->b(Lcom/esotericsoftware/kryo/a/a;)Ljava/lang/Object;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 155
    :try_start_3
    invoke-static {v1}, Lcom/callapp/contacts/util/IoUtils;->a(Ljava/io/Closeable;)V

    .line 156
    invoke-static {p2}, Lcom/callapp/contacts/util/IoUtils;->a(Ljava/io/Closeable;)V

    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    return-object v0

    :catch_0
    move-exception v2

    goto :goto_0

    :catchall_0
    move-exception p2

    move-object v4, v0

    move-object v0, p2

    move-object p2, v4

    goto :goto_1

    :catch_1
    move-exception v2

    move-object p2, v0

    goto :goto_0

    :catchall_1
    move-exception p2

    move-object v1, v0

    move-object v0, p2

    move-object p2, v1

    goto :goto_1

    :catch_2
    move-exception v2

    move-object p2, v0

    move-object v1, p2

    .line 153
    :goto_0
    :try_start_4
    const-class v3, Lcom/callapp/contacts/manager/cache/FileStore;

    invoke-static {v3, v2}, Lcom/callapp/contacts/util/CLog;->b(Ljava/lang/Class;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 155
    :try_start_5
    invoke-static {v1}, Lcom/callapp/contacts/util/IoUtils;->a(Ljava/io/Closeable;)V

    .line 156
    invoke-static {p2}, Lcom/callapp/contacts/util/IoUtils;->a(Ljava/io/Closeable;)V

    .line 158
    monitor-exit p1

    return-object v0

    :catchall_2
    move-exception v0

    .line 155
    :goto_1
    invoke-static {v1}, Lcom/callapp/contacts/util/IoUtils;->a(Ljava/io/Closeable;)V

    .line 156
    invoke-static {p2}, Lcom/callapp/contacts/util/IoUtils;->a(Ljava/io/Closeable;)V

    .line 157
    throw v0

    :catchall_3
    move-exception p2

    .line 158
    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw p2
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Object;)[B
    .locals 5

    const/4 v0, 0x0

    if-nez p2, :cond_0

    new-array p1, v0, [B

    return-object p1

    .line 115
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    monitor-enter p1

    const/4 v1, 0x0

    .line 120
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 121
    :try_start_1
    new-instance v3, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v3, v2}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 122
    :try_start_2
    new-instance v4, Lcom/esotericsoftware/kryo/a/c;

    invoke-direct {v4, v3}, Lcom/esotericsoftware/kryo/a/c;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 123
    :try_start_3
    invoke-direct {p0}, Lcom/callapp/contacts/manager/cache/FileStore;->getKryo()Lcom/esotericsoftware/kryo/c;

    move-result-object v1

    invoke-virtual {v1, v4, p2}, Lcom/esotericsoftware/kryo/c;->a(Lcom/esotericsoftware/kryo/a/c;Ljava/lang/Object;)V

    .line 124
    invoke-virtual {v4}, Lcom/esotericsoftware/kryo/a/c;->close()V

    .line 125
    invoke-virtual {v3}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 126
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 130
    :try_start_4
    invoke-static {v4}, Lcom/callapp/contacts/util/IoUtils;->a(Ljava/io/Closeable;)V

    .line 131
    invoke-static {v3}, Lcom/callapp/contacts/util/IoUtils;->a(Ljava/io/Closeable;)V

    .line 132
    invoke-static {v2}, Lcom/callapp/contacts/util/IoUtils;->a(Ljava/io/Closeable;)V

    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    return-object p2

    :catchall_0
    move-exception p2

    move-object v1, v4

    goto :goto_1

    :catch_0
    move-exception p2

    move-object v1, v4

    goto :goto_0

    :catch_1
    move-exception p2

    goto :goto_0

    :catchall_1
    move-exception p2

    move-object v3, v1

    goto :goto_1

    :catch_2
    move-exception p2

    move-object v3, v1

    goto :goto_0

    :catchall_2
    move-exception p2

    move-object v2, v1

    move-object v3, v2

    goto :goto_1

    :catch_3
    move-exception p2

    move-object v2, v1

    move-object v3, v2

    .line 128
    :goto_0
    :try_start_5
    const-class v4, Lcom/callapp/contacts/manager/cache/FileStore;

    invoke-static {v4, p2}, Lcom/callapp/contacts/util/CLog;->b(Ljava/lang/Class;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 130
    :try_start_6
    invoke-static {v1}, Lcom/callapp/contacts/util/IoUtils;->a(Ljava/io/Closeable;)V

    .line 131
    invoke-static {v3}, Lcom/callapp/contacts/util/IoUtils;->a(Ljava/io/Closeable;)V

    .line 132
    invoke-static {v2}, Lcom/callapp/contacts/util/IoUtils;->a(Ljava/io/Closeable;)V

    .line 134
    monitor-exit p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    new-array p1, v0, [B

    return-object p1

    :catchall_3
    move-exception p2

    .line 130
    :goto_1
    :try_start_7
    invoke-static {v1}, Lcom/callapp/contacts/util/IoUtils;->a(Ljava/io/Closeable;)V

    .line 131
    invoke-static {v3}, Lcom/callapp/contacts/util/IoUtils;->a(Ljava/io/Closeable;)V

    .line 132
    invoke-static {v2}, Lcom/callapp/contacts/util/IoUtils;->a(Ljava/io/Closeable;)V

    .line 133
    throw p2

    :catchall_4
    move-exception p2

    .line 134
    monitor-exit p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    throw p2
.end method
