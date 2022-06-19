.class public Lcom/bumptech/glide/load/engine/b/e;
.super Ljava/lang/Object;
.source "DiskLruCacheWrapper.java"

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
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lcom/bumptech/glide/load/engine/b/c;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/b/c;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/b/e;->d:Lcom/bumptech/glide/load/engine/b/c;

    .line 74
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/b/e;->b:Ljava/io/File;

    .line 75
    iput-wide p2, p0, Lcom/bumptech/glide/load/engine/b/e;->c:J

    .line 76
    new-instance v0, Lcom/bumptech/glide/load/engine/b/j;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/b/j;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/b/e;->a:Lcom/bumptech/glide/load/engine/b/j;

    .line 77
    return-void
.end method

.method private declared-synchronized a()Lcom/bumptech/glide/a/a;
    .locals 6

    .prologue
    .line 80
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/b/e;->e:Lcom/bumptech/glide/a/a;

    if-nez v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/b/e;->b:Ljava/io/File;

    const/4 v1, 0x1

    const/4 v2, 0x1

    iget-wide v4, p0, Lcom/bumptech/glide/load/engine/b/e;->c:J

    invoke-static {v0, v1, v2, v4, v5}, Lcom/bumptech/glide/a/a;->a(Ljava/io/File;IIJ)Lcom/bumptech/glide/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/b/e;->e:Lcom/bumptech/glide/a/a;

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/b/e;->e:Lcom/bumptech/glide/a/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 80
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static a(Ljava/io/File;J)Lcom/bumptech/glide/load/engine/b/a;
    .locals 1

    .prologue
    .line 64
    new-instance v0, Lcom/bumptech/glide/load/engine/b/e;

    invoke-direct {v0, p0, p1, p2}, Lcom/bumptech/glide/load/engine/b/e;-><init>(Ljava/io/File;J)V

    return-object v0
.end method


# virtual methods
.method public a(Lcom/bumptech/glide/load/f;)Ljava/io/File;
    .locals 4

    .prologue
    .line 88
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/b/e;->a:Lcom/bumptech/glide/load/engine/b/j;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/engine/b/j;->a(Lcom/bumptech/glide/load/f;)Ljava/lang/String;

    move-result-object v1

    .line 89
    const-string/jumbo v0, "DiskLruCacheWrapper"

    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    const-string/jumbo v0, "DiskLruCacheWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Get: Obtained: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " for for Key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :cond_0
    const/4 v0, 0x0

    .line 97
    :try_start_0
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/b/e;->a()Lcom/bumptech/glide/a/a;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/bumptech/glide/a/a;->a(Ljava/lang/String;)Lcom/bumptech/glide/a/a$d;

    move-result-object v1

    .line 98
    if-eqz v1, :cond_1

    .line 99
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/a/a$d;->a(I)Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 106
    :cond_1
    :goto_0
    return-object v0

    .line 101
    :catch_0
    move-exception v1

    .line 102
    const-string/jumbo v2, "DiskLruCacheWrapper"

    const/4 v3, 0x5

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 103
    const-string/jumbo v2, "DiskLruCacheWrapper"

    const-string/jumbo v3, "Unable to get from disk cache"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public a(Lcom/bumptech/glide/load/f;Lcom/bumptech/glide/load/engine/b/a$b;)V
    .locals 4

    .prologue
    .line 113
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/b/e;->a:Lcom/bumptech/glide/load/engine/b/j;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/engine/b/j;->a(Lcom/bumptech/glide/load/f;)Ljava/lang/String;

    move-result-object v1

    .line 114
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/b/e;->d:Lcom/bumptech/glide/load/engine/b/c;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/load/engine/b/c;->a(Ljava/lang/String;)V

    .line 116
    :try_start_0
    const-string/jumbo v0, "DiskLruCacheWrapper"

    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    const-string/jumbo v0, "DiskLruCacheWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Put: Obtained: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " for for Key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/b/e;->a()Lcom/bumptech/glide/a/a;

    move-result-object v0

    .line 123
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/a/a;->a(Ljava/lang/String;)Lcom/bumptech/glide/a/a$d;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 124
    if-eqz v2, :cond_1

    .line 146
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/b/e;->d:Lcom/bumptech/glide/load/engine/b/c;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/load/engine/b/c;->b(Ljava/lang/String;)V

    .line 148
    :goto_0
    return-void

    .line 128
    :cond_1
    :try_start_2
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/a/a;->b(Ljava/lang/String;)Lcom/bumptech/glide/a/a$b;

    move-result-object v2

    .line 129
    if-nez v2, :cond_3

    .line 130
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Had two simultaneous puts for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 140
    :catch_0
    move-exception v0

    .line 141
    :try_start_3
    const-string/jumbo v2, "DiskLruCacheWrapper"

    const/4 v3, 0x5

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 142
    const-string/jumbo v2, "DiskLruCacheWrapper"

    const-string/jumbo v3, "Unable to put to disk cache"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 146
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/b/e;->d:Lcom/bumptech/glide/load/engine/b/c;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/load/engine/b/c;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 133
    :cond_3
    const/4 v0, 0x0

    :try_start_4
    invoke-virtual {v2, v0}, Lcom/bumptech/glide/a/a$b;->a(I)Ljava/io/File;

    move-result-object v0

    .line 134
    invoke-interface {p2, v0}, Lcom/bumptech/glide/load/engine/b/a$b;->a(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 135
    invoke-virtual {v2}, Lcom/bumptech/glide/a/a$b;->a()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 138
    :cond_4
    :try_start_5
    invoke-virtual {v2}, Lcom/bumptech/glide/a/a$b;->c()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 146
    :catchall_0
    move-exception v0

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/b/e;->d:Lcom/bumptech/glide/load/engine/b/c;

    invoke-virtual {v2, v1}, Lcom/bumptech/glide/load/engine/b/c;->b(Ljava/lang/String;)V

    throw v0

    .line 138
    :catchall_1
    move-exception v0

    :try_start_6
    invoke-virtual {v2}, Lcom/bumptech/glide/a/a$b;->c()V

    throw v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method
