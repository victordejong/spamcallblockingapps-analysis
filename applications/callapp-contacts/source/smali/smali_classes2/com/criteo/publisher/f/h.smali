.class final Lcom/criteo/publisher/f/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Landroid/util/AtomicFile;

.field private final c:Ljava/lang/Object;

.field private final d:Lcom/criteo/publisher/f/v;

.field private volatile e:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Lcom/criteo/publisher/f/s;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/util/AtomicFile;Lcom/criteo/publisher/f/v;)V
    .locals 1

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/criteo/publisher/f/h;->c:Ljava/lang/Object;

    .line 70
    iput-object p1, p0, Lcom/criteo/publisher/f/h;->a:Ljava/lang/String;

    .line 71
    iput-object p2, p0, Lcom/criteo/publisher/f/h;->b:Landroid/util/AtomicFile;

    .line 72
    iput-object p3, p0, Lcom/criteo/publisher/f/h;->d:Lcom/criteo/publisher/f/v;

    .line 73
    new-instance p1, Ljava/lang/ref/SoftReference;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/criteo/publisher/f/h;->e:Ljava/lang/ref/SoftReference;

    return-void
.end method

.method private a(Lcom/criteo/publisher/f/s;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 166
    iget-object v0, p0, Lcom/criteo/publisher/f/h;->b:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v0

    .line 167
    :try_start_0
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 169
    :try_start_1
    iget-object v2, p0, Lcom/criteo/publisher/f/h;->d:Lcom/criteo/publisher/f/v;

    .line 1065
    iget-object v2, v2, Lcom/criteo/publisher/f/v;->a:Lcom/criteo/publisher/m0/l;

    invoke-virtual {v2, p1, v1}, Lcom/criteo/publisher/m0/l;->a(Ljava/lang/Object;Ljava/io/OutputStream;)V

    .line 170
    iget-object p1, p0, Lcom/criteo/publisher/f/h;->b:Landroid/util/AtomicFile;

    invoke-virtual {p1, v0}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 175
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 172
    :try_start_3
    iget-object v2, p0, Lcom/criteo/publisher/f/h;->b:Landroid/util/AtomicFile;

    invoke-virtual {v2, v0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 173
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 166
    :goto_0
    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v2

    .line 175
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v1

    :try_start_6
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :catchall_3
    move-exception p1

    .line 166
    :try_start_7
    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :catchall_4
    move-exception v1

    if-eqz v0, :cond_1

    .line 175
    :try_start_8
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    goto :goto_2

    :catchall_5
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_2
    throw v1
.end method

.method private b()Lcom/criteo/publisher/f/s;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 155
    iget-object v0, p0, Lcom/criteo/publisher/f/h;->b:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/criteo/publisher/f/h;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/criteo/publisher/f/s;->a(Ljava/lang/String;)Lcom/criteo/publisher/f/s$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/criteo/publisher/f/s$a;->a()Lcom/criteo/publisher/f/s;

    move-result-object v0

    return-object v0

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/criteo/publisher/f/h;->b:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v0

    .line 160
    :try_start_0
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 161
    :try_start_1
    iget-object v2, p0, Lcom/criteo/publisher/f/h;->d:Lcom/criteo/publisher/f/v;

    .line 1049
    iget-object v2, v2, Lcom/criteo/publisher/f/v;->a:Lcom/criteo/publisher/m0/l;

    const-class v3, Lcom/criteo/publisher/f/s;

    invoke-virtual {v2, v3, v1}, Lcom/criteo/publisher/m0/l;->a(Ljava/lang/Class;Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/criteo/publisher/f/s;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 162
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_1
    return-object v2

    :catchall_0
    move-exception v2

    .line 159
    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v3

    .line 162
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v1

    :try_start_5
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception v1

    .line 159
    :try_start_6
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :catchall_4
    move-exception v2

    if-eqz v0, :cond_2

    .line 162
    :try_start_7
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    goto :goto_1

    :catchall_5
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw v2
.end method

.method private b(Lcom/criteo/publisher/f/s;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lcom/criteo/publisher/f/h;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 93
    :try_start_0
    new-instance v1, Ljava/lang/ref/SoftReference;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/criteo/publisher/f/h;->e:Ljava/lang/ref/SoftReference;

    .line 95
    invoke-direct {p0, p1}, Lcom/criteo/publisher/f/h;->a(Lcom/criteo/publisher/f/s;)V

    .line 96
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/criteo/publisher/f/h;->e:Ljava/lang/ref/SoftReference;

    .line 97
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method final a()Lcom/criteo/publisher/f/s;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/criteo/publisher/f/h;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 78
    :try_start_0
    iget-object v1, p0, Lcom/criteo/publisher/f/h;->e:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/criteo/publisher/f/s;

    if-eqz v1, :cond_0

    .line 80
    monitor-exit v0

    return-object v1

    .line 83
    :cond_0
    invoke-direct {p0}, Lcom/criteo/publisher/f/h;->b()Lcom/criteo/publisher/f/s;

    move-result-object v1

    .line 84
    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/criteo/publisher/f/h;->e:Ljava/lang/ref/SoftReference;

    .line 85
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 86
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method final a(Lcom/criteo/publisher/f/u;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 128
    iget-object v0, p0, Lcom/criteo/publisher/f/h;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 129
    :try_start_0
    invoke-virtual {p0}, Lcom/criteo/publisher/f/h;->a()Lcom/criteo/publisher/f/s;

    move-result-object v1

    .line 1147
    iget-object v2, p0, Lcom/criteo/publisher/f/h;->c:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1148
    :try_start_1
    new-instance v3, Ljava/lang/ref/SoftReference;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, p0, Lcom/criteo/publisher/f/h;->e:Ljava/lang/ref/SoftReference;

    .line 1149
    iget-object v3, p0, Lcom/criteo/publisher/f/h;->b:Landroid/util/AtomicFile;

    invoke-virtual {v3}, Landroid/util/AtomicFile;->delete()V

    .line 1150
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 134
    :try_start_2
    invoke-interface {p1, v1}, Lcom/criteo/publisher/f/u;->a(Lcom/criteo/publisher/f/s;)Z

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez p1, :cond_0

    .line 139
    :try_start_3
    invoke-direct {p0, v1}, Lcom/criteo/publisher/f/h;->b(Lcom/criteo/publisher/f/s;)V

    .line 142
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 139
    invoke-direct {p0, v1}, Lcom/criteo/publisher/f/h;->b(Lcom/criteo/publisher/f/s;)V

    .line 141
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_1
    move-exception p1

    .line 1150
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw p1

    :catchall_2
    move-exception p1

    .line 142
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p1
.end method

.method final a(Lcom/criteo/publisher/f/w$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lcom/criteo/publisher/f/h;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 102
    :try_start_0
    invoke-virtual {p0}, Lcom/criteo/publisher/f/h;->a()Lcom/criteo/publisher/f/s;

    move-result-object v1

    .line 104
    invoke-virtual {v1}, Lcom/criteo/publisher/f/s;->k()Lcom/criteo/publisher/f/s$a;

    move-result-object v1

    .line 105
    invoke-interface {p1, v1}, Lcom/criteo/publisher/f/w$a;->a(Lcom/criteo/publisher/f/s$a;)V

    .line 106
    invoke-virtual {v1}, Lcom/criteo/publisher/f/s$a;->a()Lcom/criteo/publisher/f/s;

    move-result-object p1

    .line 108
    invoke-direct {p0, p1}, Lcom/criteo/publisher/f/h;->b(Lcom/criteo/publisher/f/s;)V

    .line 109
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
