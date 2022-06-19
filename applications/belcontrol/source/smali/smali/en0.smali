.class public Len0;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Ljava/lang/String; = "en0"

.field public static final b:Ljava/lang/String;

.field public static c:Lom0;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-class v0, Len0;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_Redirect"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Len0;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 3

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Len0;->b()Lom0;

    move-result-object v1

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v2, Len0;->b:Ljava/lang/String;

    invoke-virtual {v1, p0, v2}, Lom0;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {v0}, Lfn0;->h(Ljava/io/Closeable;)V

    throw p0

    :catch_0
    :goto_0
    invoke-static {v0}, Lfn0;->h(Ljava/io/Closeable;)V

    :cond_1
    :goto_1
    return-void
.end method

.method public static declared-synchronized b()Lom0;
    .locals 4

    const-class v0, Len0;

    monitor-enter v0

    :try_start_0
    sget-object v1, Len0;->c:Lom0;

    if-nez v1, :cond_0

    new-instance v1, Lom0;

    sget-object v2, Len0;->a:Ljava/lang/String;

    new-instance v3, Lom0$g;

    invoke-direct {v3}, Lom0$g;-><init>()V

    invoke-direct {v1, v2, v3}, Lom0;-><init>(Ljava/lang/String;Lom0$g;)V

    sput-object v1, Len0;->c:Lom0;

    :cond_0
    sget-object v1, Len0;->c:Lom0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static c(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 9

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    :try_start_0
    invoke-static {}, Len0;->b()Lom0;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v2, 0x0

    move-object v4, v0

    const/4 v3, 0x0

    :goto_0
    :try_start_1
    sget-object v5, Len0;->b:Ljava/lang/String;

    invoke-virtual {v1, p0, v5}, Lom0;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    if-eqz v5, :cond_2

    const/4 v3, 0x1

    new-instance p0, Ljava/io/InputStreamReader;

    invoke-direct {p0, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 v4, 0x80

    :try_start_2
    new-array v5, v4, [C

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    invoke-virtual {p0, v5, v2, v4}, Ljava/io/InputStreamReader;->read([CII)I

    move-result v7

    if-lez v7, :cond_1

    invoke-virtual {v6, v5, v2, v7}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    invoke-static {p0}, Lfn0;->h(Ljava/io/Closeable;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v8, v4

    move-object v4, p0

    move-object p0, v8

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-object v4, p0

    goto :goto_3

    :cond_2
    if-eqz v3, :cond_3

    :try_start_3
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {v4}, Lfn0;->h(Ljava/io/Closeable;)V

    return-object p0

    :catchall_1
    move-exception v0

    move-object p0, v4

    goto :goto_2

    :catchall_2
    move-exception p0

    move-object v8, v0

    move-object v0, p0

    move-object p0, v8

    :goto_2
    invoke-static {p0}, Lfn0;->h(Ljava/io/Closeable;)V

    throw v0

    :catch_1
    move-object v4, v0

    :catch_2
    :cond_3
    :goto_3
    invoke-static {v4}, Lfn0;->h(Ljava/io/Closeable;)V

    return-object v0
.end method
