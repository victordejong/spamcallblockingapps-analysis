.class Landroidx/core/graphics/h;
.super Ljava/lang/Object;
.source "TypefaceCompatBaseImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/graphics/h$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Long;",
            "Landroidx/core/a/a/c$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Landroidx/core/graphics/h;->a:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private a(Landroidx/core/a/a/c$b;I)Landroidx/core/a/a/c$c;
    .locals 2

    .prologue
    .line 153
    invoke-virtual {p1}, Landroidx/core/a/a/c$b;->a()[Landroidx/core/a/a/c$c;

    move-result-object v0

    new-instance v1, Landroidx/core/graphics/h$2;

    invoke-direct {v1, p0}, Landroidx/core/graphics/h$2;-><init>(Landroidx/core/graphics/h;)V

    invoke-static {v0, p2, v1}, Landroidx/core/graphics/h;->a([Ljava/lang/Object;ILandroidx/core/graphics/h$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/a/a/c$c;

    return-object v0
.end method

.method private static a([Ljava/lang/Object;ILandroidx/core/graphics/h$a;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;I",
            "Landroidx/core/graphics/h$a",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 61
    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_2

    const/16 v0, 0x190

    move v8, v0

    .line 62
    :goto_0
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_3

    move v0, v1

    .line 64
    :goto_1
    const/4 v5, 0x0

    .line 65
    const v3, 0x7fffffff

    .line 67
    array-length v9, p0

    move v7, v2

    :goto_2
    if-ge v7, v9, :cond_5

    aget-object v6, p0, v7

    .line 68
    invoke-interface {p2, v6}, Landroidx/core/graphics/h$a;->b(Ljava/lang/Object;)I

    move-result v4

    sub-int/2addr v4, v8

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    mul-int/lit8 v10, v4, 0x2

    .line 69
    invoke-interface {p2, v6}, Landroidx/core/graphics/h$a;->a(Ljava/lang/Object;)Z

    move-result v4

    if-ne v4, v0, :cond_4

    move v4, v2

    :goto_3
    add-int/2addr v4, v10

    .line 71
    if-eqz v5, :cond_0

    if-le v3, v4, :cond_1

    :cond_0
    move v3, v4

    move-object v5, v6

    .line 67
    :cond_1
    add-int/lit8 v4, v7, 0x1

    move v7, v4

    goto :goto_2

    .line 61
    :cond_2
    const/16 v0, 0x2bc

    move v8, v0

    goto :goto_0

    :cond_3
    move v0, v2

    .line 62
    goto :goto_1

    :cond_4
    move v4, v1

    .line 69
    goto :goto_3

    .line 76
    :cond_5
    return-object v5
.end method

.method private a(Landroid/graphics/Typeface;Landroidx/core/a/a/c$b;)V
    .locals 4

    .prologue
    .line 219
    invoke-static {p1}, Landroidx/core/graphics/h;->b(Landroid/graphics/Typeface;)J

    move-result-wide v0

    .line 220
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 221
    iget-object v2, p0, Landroidx/core/graphics/h;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    :cond_0
    return-void
.end method

.method private static b(Landroid/graphics/Typeface;)J
    .locals 5

    .prologue
    const-wide/16 v2, 0x0

    .line 80
    if-nez p0, :cond_0

    move-wide v0, v2

    .line 94
    :goto_0
    return-wide v0

    .line 85
    :cond_0
    :try_start_0
    const-class v0, Landroid/graphics/Typeface;

    const-string/jumbo v1, "native_instance"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 86
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 87
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    .line 88
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v0

    goto :goto_0

    .line 89
    :catch_0
    move-exception v0

    .line 90
    const-string/jumbo v1, "TypefaceCompatBaseImpl"

    const-string/jumbo v4, "Could not retrieve font from family."

    invoke-static {v1, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-wide v0, v2

    .line 91
    goto :goto_0

    .line 92
    :catch_1
    move-exception v0

    .line 93
    const-string/jumbo v1, "TypefaceCompatBaseImpl"

    const-string/jumbo v4, "Could not retrieve font from family."

    invoke-static {v1, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-wide v0, v2

    .line 94
    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/String;I)Landroid/graphics/Typeface;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 187
    invoke-static {p1}, Landroidx/core/graphics/i;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    .line 188
    if-nez v1, :cond_0

    .line 200
    :goto_0
    return-object v0

    .line 192
    :cond_0
    :try_start_0
    invoke-static {v1, p2, p3}, Landroidx/core/graphics/i;->a(Ljava/io/File;Landroid/content/res/Resources;I)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    .line 202
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 195
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 202
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 196
    :catch_0
    move-exception v2

    .line 202
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    throw v0
.end method

.method public a(Landroid/content/Context;Landroid/os/CancellationSignal;[Landroidx/core/e/b$b;I)Landroid/graphics/Typeface;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 137
    array-length v1, p3

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    .line 146
    :goto_0
    return-object v0

    .line 140
    :cond_0
    invoke-virtual {p0, p3, p4}, Landroidx/core/graphics/h;->a([Landroidx/core/e/b$b;I)Landroidx/core/e/b$b;

    move-result-object v1

    .line 143
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v1}, Landroidx/core/e/b$b;->a()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 144
    :try_start_1
    invoke-virtual {p0, p1, v1}, Landroidx/core/graphics/h;->a(Landroid/content/Context;Ljava/io/InputStream;)Landroid/graphics/Typeface;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 148
    invoke-static {v1}, Landroidx/core/graphics/i;->a(Ljava/io/Closeable;)V

    goto :goto_0

    .line 145
    :catch_0
    move-exception v1

    move-object v1, v0

    .line 148
    :goto_1
    invoke-static {v1}, Landroidx/core/graphics/i;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v2, v1

    move-object v3, v0

    :goto_2
    invoke-static {v3}, Landroidx/core/graphics/i;->a(Ljava/io/Closeable;)V

    throw v2

    :catchall_1
    move-exception v0

    move-object v2, v0

    move-object v3, v1

    goto :goto_2

    .line 145
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method public a(Landroid/content/Context;Landroidx/core/a/a/c$b;Landroid/content/res/Resources;I)Landroid/graphics/Typeface;
    .locals 2

    .prologue
    .line 169
    invoke-direct {p0, p2, p4}, Landroidx/core/graphics/h;->a(Landroidx/core/a/a/c$b;I)Landroidx/core/a/a/c$c;

    move-result-object v0

    .line 170
    if-nez v0, :cond_0

    .line 171
    const/4 v0, 0x0

    .line 178
    :goto_0
    return-object v0

    .line 174
    :cond_0
    invoke-virtual {v0}, Landroidx/core/a/a/c$c;->f()I

    move-result v1

    invoke-virtual {v0}, Landroidx/core/a/a/c$c;->a()Ljava/lang/String;

    move-result-object v0

    .line 173
    invoke-static {p1, p3, v1, v0, p4}, Landroidx/core/graphics/c;->a(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    .line 176
    invoke-direct {p0, v0, p2}, Landroidx/core/graphics/h;->a(Landroid/graphics/Typeface;Landroidx/core/a/a/c$b;)V

    goto :goto_0
.end method

.method protected a(Landroid/content/Context;Ljava/io/InputStream;)Landroid/graphics/Typeface;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 114
    invoke-static {p1}, Landroidx/core/graphics/i;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    .line 115
    if-nez v1, :cond_0

    .line 127
    :goto_0
    return-object v0

    .line 119
    :cond_0
    :try_start_0
    invoke-static {v1, p2}, Landroidx/core/graphics/i;->a(Ljava/io/File;Ljava/io/InputStream;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    .line 129
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 122
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 129
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 123
    :catch_0
    move-exception v2

    .line 129
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    throw v0
.end method

.method a(Landroid/graphics/Typeface;)Landroidx/core/a/a/c$b;
    .locals 4

    .prologue
    .line 211
    invoke-static {p1}, Landroidx/core/graphics/h;->b(Landroid/graphics/Typeface;)J

    move-result-wide v0

    .line 212
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 213
    const/4 v0, 0x0

    .line 215
    :goto_0
    return-object v0

    :cond_0
    iget-object v2, p0, Landroidx/core/graphics/h;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/a/a/c$b;

    goto :goto_0
.end method

.method protected a([Landroidx/core/e/b$b;I)Landroidx/core/e/b$b;
    .locals 1

    .prologue
    .line 99
    new-instance v0, Landroidx/core/graphics/h$1;

    invoke-direct {v0, p0}, Landroidx/core/graphics/h$1;-><init>(Landroidx/core/graphics/h;)V

    invoke-static {p1, p2, v0}, Landroidx/core/graphics/h;->a([Ljava/lang/Object;ILandroidx/core/graphics/h$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/e/b$b;

    return-object v0
.end method
