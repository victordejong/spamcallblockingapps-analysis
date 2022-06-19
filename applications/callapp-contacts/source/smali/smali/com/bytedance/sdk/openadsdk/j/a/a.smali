.class public Lcom/bytedance/sdk/openadsdk/j/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/j/a/a$a;
    }
.end annotation


# static fields
.field private static a:Ljava/lang/String;

.field private static volatile e:Lcom/bytedance/sdk/openadsdk/j/a/a;


# instance fields
.field private b:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/bytedance/sdk/openadsdk/b/a;

.field private final d:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/openadsdk/j/a/a$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/j/a/a;->b:Ljava/util/WeakHashMap;

    .line 47
    new-instance v0, Lcom/bytedance/sdk/openadsdk/j/a/a$1;

    const/high16 v1, 0x500000

    invoke-direct {v0, p0, v1}, Lcom/bytedance/sdk/openadsdk/j/a/a$1;-><init>(Lcom/bytedance/sdk/openadsdk/j/a/a;I)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/j/a/a;->d:Landroid/util/LruCache;

    .line 68
    new-instance v0, Lcom/bytedance/sdk/openadsdk/b/d;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/b/d;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/j/a/a;->c:Lcom/bytedance/sdk/openadsdk/b/a;

    return-void
.end method

.method public static a()Lcom/bytedance/sdk/openadsdk/j/a/a;
    .locals 2

    .line 32
    sget-object v0, Lcom/bytedance/sdk/openadsdk/j/a/a;->e:Lcom/bytedance/sdk/openadsdk/j/a/a;

    if-nez v0, :cond_1

    .line 33
    const-class v0, Lcom/bytedance/sdk/openadsdk/j/a/a;

    monitor-enter v0

    .line 34
    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/openadsdk/j/a/a;->e:Lcom/bytedance/sdk/openadsdk/j/a/a;

    if-nez v1, :cond_0

    .line 35
    new-instance v1, Lcom/bytedance/sdk/openadsdk/j/a/a;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/j/a/a;-><init>()V

    sput-object v1, Lcom/bytedance/sdk/openadsdk/j/a/a;->e:Lcom/bytedance/sdk/openadsdk/j/a/a;

    .line 37
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 39
    :cond_1
    :goto_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/j/a/a;->e:Lcom/bytedance/sdk/openadsdk/j/a/a;

    return-object v0
.end method

.method private a([B)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 128
    array-length v1, p1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_0

    aget-byte v1, p1, v0

    const/16 v2, 0x47

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    aget-byte v2, p1, v1

    const/16 v3, 0x49

    if-ne v2, v3, :cond_0

    const/4 v2, 0x2

    aget-byte p1, p1, v2

    const/16 v2, 0x46

    if-ne p1, v2, :cond_0

    return v1

    :cond_0
    return v0
.end method

.method private static b()Ljava/lang/String;
    .locals 3

    .line 212
    sget-object v0, Lcom/bytedance/sdk/openadsdk/j/a/a;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/adnet/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "diskGif"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 216
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/j/a/a;->a:Ljava/lang/String;

    .line 219
    :cond_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/j/a/a;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;)Ljava/io/File;
    .locals 6

    monitor-enter p0

    .line 133
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 134
    monitor-exit p0

    return-object v1

    .line 137
    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/j/a/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-lez p1, :cond_1

    .line 139
    monitor-exit p0

    return-object v0

    .line 142
    :cond_1
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Ljava/lang/String;IILandroid/widget/ImageView$ScaleType;)Ljava/lang/String;
    .locals 0

    monitor-enter p0

    .line 192
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 193
    monitor-exit p0

    return-object p1

    :cond_0
    :try_start_1
    const-string p2, "https"

    .line 198
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "https"

    const-string p3, "http"

    .line 199
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 202
    :cond_1
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/j/a/a;->b:Ljava/util/WeakHashMap;

    invoke-virtual {p2, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 203
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p3, :cond_2

    .line 204
    monitor-exit p0

    return-object p2

    .line 206
    :cond_2
    :try_start_2
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 207
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/j/a/a;->b:Ljava/util/WeakHashMap;

    invoke-virtual {p3, p1, p2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 208
    monitor-exit p0

    return-object p2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Ljava/lang/String;[B)V
    .locals 0

    monitor-enter p0

    .line 72
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/j/a/a;->b(Ljava/lang/String;[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/j/a/a$a;
    .locals 5

    monitor-enter p0

    .line 146
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 147
    monitor-exit p0

    return-object v1

    .line 150
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/j/a/a;->d:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/j/a/a$a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    if-eqz v0, :cond_1

    .line 152
    monitor-exit p0

    return-object v0

    .line 155
    :cond_1
    :try_start_2
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/j/a/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    if-eqz v2, :cond_4

    .line 160
    :try_start_3
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 161
    :try_start_4
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 162
    invoke-virtual {v2}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 164
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 167
    :try_start_5
    new-instance v3, Lcom/bytedance/sdk/openadsdk/j/a/a$a;

    invoke-direct {v3, v0}, Lcom/bytedance/sdk/openadsdk/j/a/a$a;-><init>([B)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 181
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 167
    :catch_0
    monitor-exit p0

    return-object v3

    :catchall_0
    nop

    if-eqz v0, :cond_2

    .line 172
    :try_start_7
    new-instance v3, Lcom/bytedance/sdk/openadsdk/j/a/a$a;

    invoke-direct {v3, v0}, Lcom/bytedance/sdk/openadsdk/j/a/a$a;-><init>([B)V

    .line 173
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/j/a/a;->d:Landroid/util/LruCache;

    invoke-virtual {v0, p1, v3}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 181
    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 174
    :catch_1
    monitor-exit p0

    return-object v3

    .line 181
    :cond_2
    :goto_0
    :try_start_9
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    goto :goto_2

    :catchall_1
    move-exception p1

    goto :goto_1

    :catchall_2
    move-exception p1

    move-object v2, v1

    :goto_1
    :try_start_a
    const-string v0, "GifCache"

    const-string v3, "gifCache get error "

    .line 177
    invoke-static {v0, v3, p1}, Lcom/bytedance/sdk/openadsdk/utils/q;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    if-eqz v2, :cond_4

    goto :goto_0

    :catchall_3
    move-exception p1

    if-eqz v2, :cond_3

    .line 181
    :try_start_b
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 185
    :catch_2
    :cond_3
    :try_start_c
    throw p1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 188
    :catch_3
    :cond_4
    :goto_2
    monitor-exit p0

    return-object v1

    :catchall_4
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b(Ljava/lang/String;[B)V
    .locals 7

    monitor-enter p0

    .line 76
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    if-nez p2, :cond_0

    goto/16 :goto_2

    .line 80
    :cond_0
    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/j/a/a;->a([B)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    if-nez v0, :cond_1

    .line 83
    :try_start_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/j/a/a;->d:Landroid/util/LruCache;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/j/a/a$a;

    invoke-direct {v1, p2}, Lcom/bytedance/sdk/openadsdk/j/a/a$a;-><init>([B)V

    invoke-virtual {v0, p1, v1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    const-string v1, "GifCache"

    const-string v2, "gifCache mLruCache.put error "

    .line 85
    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/q;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 90
    :cond_1
    :goto_0
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/j/a/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    const-wide/16 v1, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    cmp-long p1, v3, v1

    if-lez p1, :cond_2

    .line 92
    monitor-exit p0

    return-void

    .line 95
    :cond_2
    :try_start_3
    new-instance p1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ".tmp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    const/4 v3, 0x0

    .line 100
    :try_start_4
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    .line 102
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 103
    :try_start_5
    invoke-virtual {v4, p2}, Ljava/io/FileOutputStream;->write([B)V

    .line 104
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    .line 106
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v5

    cmp-long p2, v5, v1

    if-lez p2, :cond_4

    .line 107
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 108
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 110
    :cond_3
    invoke-virtual {p1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 113
    :cond_4
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/j/a/a;->c:Lcom/bytedance/sdk/openadsdk/b/a;

    invoke-interface {p2, v0}, Lcom/bytedance/sdk/openadsdk/b/a;->a(Ljava/io/File;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 120
    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 123
    monitor-exit p0

    return-void

    .line 124
    :catch_0
    monitor-exit p0

    return-void

    :catchall_1
    move-object v3, v4

    .line 115
    :catchall_2
    :try_start_7
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 116
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    if-eqz v3, :cond_5

    .line 120
    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    goto :goto_1

    .line 124
    :catch_1
    monitor-exit p0

    return-void

    .line 123
    :cond_5
    :goto_1
    monitor-exit p0

    return-void

    :catchall_3
    move-exception p1

    if-eqz v3, :cond_6

    .line 120
    :try_start_9
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 124
    :catch_2
    :cond_6
    :try_start_a
    throw p1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 77
    :cond_7
    :goto_2
    monitor-exit p0

    return-void

    :catchall_4
    move-exception p1

    monitor-exit p0

    throw p1
.end method
