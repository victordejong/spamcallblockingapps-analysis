.class public final Lcom/bumptech/glide/load/engine/b/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/engine/b/a;


# instance fields
.field private final a:Lcom/bumptech/glide/load/engine/b/j;

.field private final b:Ljava/io/File;

.field private final c:J

.field private final d:Lcom/bumptech/glide/load/engine/b/c;

.field private e:Lcom/bumptech/glide/a/a;


# direct methods
.method protected constructor <init>(Ljava/io/File;J)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lcom/bumptech/glide/load/engine/b/c;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/b/c;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/b/e;->d:Lcom/bumptech/glide/load/engine/b/c;

    .line 71
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/b/e;->b:Ljava/io/File;

    .line 72
    iput-wide p2, p0, Lcom/bumptech/glide/load/engine/b/e;->c:J

    .line 73
    new-instance p1, Lcom/bumptech/glide/load/engine/b/j;

    invoke-direct {p1}, Lcom/bumptech/glide/load/engine/b/j;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/load/engine/b/e;->a:Lcom/bumptech/glide/load/engine/b/j;

    return-void
.end method

.method private declared-synchronized a()Lcom/bumptech/glide/a/a;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 77
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/b/e;->e:Lcom/bumptech/glide/a/a;

    if-nez v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/b/e;->b:Ljava/io/File;

    iget-wide v1, p0, Lcom/bumptech/glide/load/engine/b/e;->c:J

    invoke-static {v0, v1, v2}, Lcom/bumptech/glide/a/a;->a(Ljava/io/File;J)Lcom/bumptech/glide/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/b/e;->e:Lcom/bumptech/glide/a/a;

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/b/e;->e:Lcom/bumptech/glide/a/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static a(Ljava/io/File;J)Lcom/bumptech/glide/load/engine/b/a;
    .locals 1

    .line 63
    new-instance v0, Lcom/bumptech/glide/load/engine/b/e;

    invoke-direct {v0, p0, p1, p2}, Lcom/bumptech/glide/load/engine/b/e;-><init>(Ljava/io/File;J)V

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/bumptech/glide/load/f;)Ljava/io/File;
    .locals 4

    .line 85
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/b/e;->a:Lcom/bumptech/glide/load/engine/b/j;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/engine/b/j;->a(Lcom/bumptech/glide/load/f;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "DiskLruCacheWrapper"

    const/4 v2, 0x2

    .line 86
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 87
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Get: Obtained: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " for for Key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_0
    const/4 p1, 0x0

    .line 94
    :try_start_0
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/b/e;->a()Lcom/bumptech/glide/a/a;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/bumptech/glide/a/a;->a(Ljava/lang/String;)Lcom/bumptech/glide/a/a$d;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1743
    iget-object v0, v0, Lcom/bumptech/glide/a/a$d;->a:[Ljava/io/File;

    const/4 v2, 0x0

    aget-object p1, v0, v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v2, 0x5

    .line 99
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "Unable to get from disk cache"

    .line 100
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-object p1
.end method

.method public final a(Lcom/bumptech/glide/load/f;Lcom/bumptech/glide/load/engine/b/a$b;)V
    .locals 5

    .line 110
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/b/e;->a:Lcom/bumptech/glide/load/engine/b/j;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/engine/b/j;->a(Lcom/bumptech/glide/load/f;)Ljava/lang/String;

    move-result-object v0

    .line 111
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/b/e;->d:Lcom/bumptech/glide/load/engine/b/c;

    .line 2026
    monitor-enter v1

    .line 2027
    :try_start_0
    iget-object v2, v1, Lcom/bumptech/glide/load/engine/b/c;->a:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/load/engine/b/c$a;

    if-nez v2, :cond_0

    .line 2029
    iget-object v2, v1, Lcom/bumptech/glide/load/engine/b/c;->b:Lcom/bumptech/glide/load/engine/b/c$b;

    invoke-virtual {v2}, Lcom/bumptech/glide/load/engine/b/c$b;->a()Lcom/bumptech/glide/load/engine/b/c$a;

    move-result-object v2

    .line 2030
    iget-object v3, v1, Lcom/bumptech/glide/load/engine/b/c;->a:Ljava/util/Map;

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2032
    :cond_0
    iget v3, v2, Lcom/bumptech/glide/load/engine/b/c$a;->b:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    iput v3, v2, Lcom/bumptech/glide/load/engine/b/c$a;->b:I

    .line 2033
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 2035
    iget-object v1, v2, Lcom/bumptech/glide/load/engine/b/c$a;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_1
    const-string v1, "DiskLruCacheWrapper"

    const/4 v2, 0x2

    .line 113
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 114
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Put: Obtained: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for for Key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 119
    :cond_1
    :try_start_2
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/b/e;->a()Lcom/bumptech/glide/a/a;

    move-result-object p1

    .line 120
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/a/a;->a(Ljava/lang/String;)Lcom/bumptech/glide/a/a$d;

    move-result-object v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_3

    .line 143
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/bumptech/glide/load/engine/b/e;->d:Lcom/bumptech/glide/load/engine/b/c;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/load/engine/b/c;->a(Ljava/lang/String;)V

    return-void

    .line 2447
    :cond_3
    :try_start_3
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/a/a;->b(Ljava/lang/String;)Lcom/bumptech/glide/a/a$b;

    move-result-object p1
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz p1, :cond_5

    .line 130
    :try_start_4
    invoke-virtual {p1}, Lcom/bumptech/glide/a/a$b;->a()Ljava/io/File;

    move-result-object v1

    .line 131
    invoke-interface {p2, v1}, Lcom/bumptech/glide/load/engine/b/a$b;->a(Ljava/io/File;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 2833
    iget-object p2, p1, Lcom/bumptech/glide/a/a$b;->d:Lcom/bumptech/glide/a/a;

    invoke-static {p2, p1, v4}, Lcom/bumptech/glide/a/a;->a(Lcom/bumptech/glide/a/a;Lcom/bumptech/glide/a/a$b;Z)V

    .line 2834
    iput-boolean v4, p1, Lcom/bumptech/glide/a/a$b;->c:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 135
    :cond_4
    :try_start_5
    invoke-virtual {p1}, Lcom/bumptech/glide/a/a$b;->c()V

    goto :goto_0

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Lcom/bumptech/glide/a/a$b;->c()V

    throw p2

    .line 127
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Had two simultaneous puts for: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catch_0
    move-exception p1

    :try_start_6
    const-string p2, "DiskLruCacheWrapper"

    const/4 v1, 0x5

    .line 138
    invoke-static {p2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p2, "DiskLruCacheWrapper"

    const-string v1, "Unable to put to disk cache"

    .line 139
    invoke-static {p2, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    .line 143
    iget-object p2, p0, Lcom/bumptech/glide/load/engine/b/e;->d:Lcom/bumptech/glide/load/engine/b/c;

    invoke-virtual {p2, v0}, Lcom/bumptech/glide/load/engine/b/c;->a(Ljava/lang/String;)V

    throw p1

    :catchall_2
    move-exception p1

    .line 2033
    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw p1
.end method
