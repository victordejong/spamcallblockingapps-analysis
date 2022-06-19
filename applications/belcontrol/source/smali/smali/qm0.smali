.class public Lqm0;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lqm0$c;,
        Lqm0$b;,
        Lqm0$d;,
        Lqm0$e;
    }
.end annotation


# static fields
.field public static a:Landroid/os/Handler;

.field public static b:Lin0;

.field public static c:Lin0;

.field public static final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lqm0$e;",
            "Lqm0$d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lin0;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lin0;-><init>(I)V

    sput-object v0, Lqm0;->b:Lin0;

    new-instance v0, Lin0;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lin0;-><init>(I)V

    sput-object v0, Lqm0;->c:Lin0;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lqm0;->d:Ljava/util/Map;

    return-void
.end method

.method public static synthetic a(Lqm0$e;Landroid/content/Context;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lqm0;->k(Lqm0$e;Landroid/content/Context;Z)V

    return-void
.end method

.method public static synthetic b(Lqm0$e;Landroid/content/Context;)V
    .locals 0

    invoke-static {p0, p1}, Lqm0;->d(Lqm0$e;Landroid/content/Context;)V

    return-void
.end method

.method public static c(Lrm0;)Z
    .locals 4

    new-instance v0, Lqm0$e;

    invoke-virtual {p0}, Lrm0;->d()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0}, Lrm0;->b()Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lqm0$e;-><init>(Landroid/net/Uri;Ljava/lang/Object;)V

    sget-object p0, Lqm0;->d:Ljava/util/Map;

    monitor-enter p0

    :try_start_0
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lqm0$d;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iget-object v3, v1, Lqm0$d;->a:Lin0$b;

    invoke-interface {v3}, Lin0$b;->cancel()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iput-boolean v2, v1, Lqm0$d;->c:Z

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    monitor-exit p0

    return v2

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static d(Lqm0$e;Landroid/content/Context;)V
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    new-instance v3, Ljava/net/URL;

    iget-object v4, p0, Lqm0$e;->a:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    invoke-static {v3}, Lcom/google/firebase/perf/network/FirebasePerfUrlConnection;->instrument(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/URLConnection;

    check-cast v3, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-virtual {v3, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    const/16 v5, 0xc8

    if-eq v4, v5, :cond_4

    const/16 p1, 0x12d

    if-eq v4, p1, :cond_2

    const/16 p1, 0x12e

    if-eq v4, p1, :cond_2

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_1

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v6, 0x80

    new-array v7, v6, [C

    :goto_0
    invoke-virtual {v5, v7, v1, v6}, Ljava/io/InputStreamReader;->read([CII)I

    move-result v8

    if-lez v8, :cond_0

    invoke-virtual {v4, v7, v1, v8}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-static {v5}, Lfn0;->h(Ljava/io/Closeable;)V

    goto :goto_1

    :cond_1
    const-string v5, "Unexpected error while downloading an image."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    new-instance v5, Lri0;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Lri0;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v4, v0

    goto :goto_2

    :cond_2
    :try_start_3
    const-string p1, "location"

    invoke-virtual {v3, p1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lfn0;->Q(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iget-object v2, p0, Lqm0$e;->a:Landroid/net/Uri;

    invoke-static {v2, p1}, Len0;->a(Landroid/net/Uri;Landroid/net/Uri;)V

    invoke-static {p0}, Lqm0;->l(Lqm0$e;)Lqm0$d;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-boolean v4, v2, Lqm0$d;->c:Z

    if-nez v4, :cond_3

    iget-object v2, v2, Lqm0$d;->b:Lrm0;

    new-instance v4, Lqm0$e;

    iget-object v5, p0, Lqm0$e;->b:Ljava/lang/Object;

    invoke-direct {v4, p1, v5}, Lqm0$e;-><init>(Landroid/net/Uri;Ljava/lang/Object;)V

    invoke-static {v2, v4, v1}, Lqm0;->f(Lrm0;Lqm0$e;Z)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_3
    move-object v4, v0

    move-object v5, v4

    const/4 v2, 0x0

    goto :goto_3

    :catch_0
    move-exception v4

    move-object p1, v0

    const/4 v2, 0x0

    goto :goto_5

    :cond_4
    :try_start_4
    invoke-static {p1, v3}, Ltm0;->c(Landroid/content/Context;Ljava/net/HttpURLConnection;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v4
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object v5, v0

    :goto_2
    move-object v0, p1

    :goto_3
    invoke-static {v0}, Lfn0;->h(Ljava/io/Closeable;)V

    invoke-static {v3}, Lfn0;->o(Ljava/net/URLConnection;)V

    move-object v0, v4

    goto :goto_6

    :catchall_0
    move-exception p0

    move-object v0, p1

    goto :goto_4

    :catch_1
    move-exception v4

    goto :goto_5

    :catchall_1
    move-exception p0

    goto :goto_4

    :catch_2
    move-exception v4

    move-object p1, v0

    goto :goto_5

    :catchall_2
    move-exception p0

    move-object v3, v0

    :goto_4
    invoke-static {v0}, Lfn0;->h(Ljava/io/Closeable;)V

    invoke-static {v3}, Lfn0;->o(Ljava/net/URLConnection;)V

    throw p0

    :catch_3
    move-exception v4

    move-object p1, v0

    move-object v3, p1

    :goto_5
    invoke-static {p1}, Lfn0;->h(Ljava/io/Closeable;)V

    invoke-static {v3}, Lfn0;->o(Ljava/net/URLConnection;)V

    move-object v5, v4

    :goto_6
    if-eqz v2, :cond_5

    invoke-static {p0, v5, v0, v1}, Lqm0;->j(Lqm0$e;Ljava/lang/Exception;Landroid/graphics/Bitmap;Z)V

    :cond_5
    return-void
.end method

.method public static e(Lrm0;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lqm0$e;

    invoke-virtual {p0}, Lrm0;->d()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0}, Lrm0;->b()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lqm0$e;-><init>(Landroid/net/Uri;Ljava/lang/Object;)V

    sget-object v1, Lqm0;->d:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lqm0$d;

    if-eqz v2, :cond_1

    iput-object p0, v2, Lqm0$d;->b:Lrm0;

    const/4 p0, 0x0

    iput-boolean p0, v2, Lqm0$d;->c:Z

    iget-object p0, v2, Lqm0$d;->a:Lin0$b;

    invoke-interface {p0}, Lin0$b;->a()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lrm0;->f()Z

    move-result v2

    invoke-static {p0, v0, v2}, Lqm0;->f(Lrm0;Lqm0$e;Z)V

    :goto_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static f(Lrm0;Lqm0$e;Z)V
    .locals 3

    sget-object v0, Lqm0;->c:Lin0;

    new-instance v1, Lqm0$b;

    invoke-virtual {p0}, Lrm0;->c()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, Lqm0$b;-><init>(Landroid/content/Context;Lqm0$e;Z)V

    invoke-static {p0, p1, v0, v1}, Lqm0;->h(Lrm0;Lqm0$e;Lin0;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static g(Lrm0;Lqm0$e;)V
    .locals 3

    sget-object v0, Lqm0;->b:Lin0;

    new-instance v1, Lqm0$c;

    invoke-virtual {p0}, Lrm0;->c()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lqm0$c;-><init>(Landroid/content/Context;Lqm0$e;)V

    invoke-static {p0, p1, v0, v1}, Lqm0;->h(Lrm0;Lqm0$e;Lin0;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static h(Lrm0;Lqm0$e;Lin0;Ljava/lang/Runnable;)V
    .locals 3

    sget-object v0, Lqm0;->d:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lqm0$d;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lqm0$d;-><init>(Lqm0$a;)V

    iput-object p0, v1, Lqm0$d;->b:Lrm0;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2, p3}, Lin0;->e(Ljava/lang/Runnable;)Lin0$b;

    move-result-object p0

    iput-object p0, v1, Lqm0$d;->a:Lin0$b;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static declared-synchronized i()Landroid/os/Handler;
    .locals 3

    const-class v0, Lqm0;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lqm0;->a:Landroid/os/Handler;

    if-nez v1, :cond_0

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lqm0;->a:Landroid/os/Handler;

    :cond_0
    sget-object v1, Lqm0;->a:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static j(Lqm0$e;Ljava/lang/Exception;Landroid/graphics/Bitmap;Z)V
    .locals 7

    invoke-static {p0}, Lqm0;->l(Lqm0$e;)Lqm0$d;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-boolean v0, p0, Lqm0$d;->c:Z

    if-nez v0, :cond_0

    iget-object v2, p0, Lqm0$d;->b:Lrm0;

    invoke-virtual {v2}, Lrm0;->a()Lrm0$c;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-static {}, Lqm0;->i()Landroid/os/Handler;

    move-result-object p0

    new-instance v0, Lqm0$a;

    move-object v1, v0

    move-object v3, p1

    move v4, p3

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, Lqm0$a;-><init>(Lrm0;Ljava/lang/Exception;ZLandroid/graphics/Bitmap;Lrm0$c;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public static k(Lqm0$e;Landroid/content/Context;Z)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    iget-object p2, p0, Lqm0$e;->a:Landroid/net/Uri;

    invoke-static {p2}, Len0;->c(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-static {p2, p1}, Ltm0;->b(Landroid/net/Uri;Landroid/content/Context;)Ljava/io/InputStream;

    move-result-object p2

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move-object p2, v1

    :cond_1
    :goto_0
    if-nez v0, :cond_2

    iget-object p2, p0, Lqm0$e;->a:Landroid/net/Uri;

    invoke-static {p2, p1}, Ltm0;->b(Landroid/net/Uri;Landroid/content/Context;)Ljava/io/InputStream;

    move-result-object p2

    :cond_2
    if-eqz p2, :cond_3

    invoke-static {p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-static {p2}, Lfn0;->h(Ljava/io/Closeable;)V

    invoke-static {p0, v1, p1, v0}, Lqm0;->j(Lqm0$e;Ljava/lang/Exception;Landroid/graphics/Bitmap;Z)V

    goto :goto_1

    :cond_3
    invoke-static {p0}, Lqm0;->l(Lqm0$e;)Lqm0$d;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-boolean p2, p1, Lqm0$d;->c:Z

    if-nez p2, :cond_4

    iget-object p1, p1, Lqm0$d;->b:Lrm0;

    invoke-static {p1, p0}, Lqm0;->g(Lrm0;Lqm0$e;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public static l(Lqm0$e;)Lqm0$d;
    .locals 1

    sget-object v0, Lqm0;->d:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lqm0$d;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
