.class Lcom/google/firebase/installations/b;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-installations@@16.2.1"


# instance fields
.field private final a:Ljava/nio/channels/FileChannel;

.field private final b:Ljava/nio/channels/FileLock;


# direct methods
.method private constructor <init>(Ljava/nio/channels/FileChannel;Ljava/nio/channels/FileLock;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/google/firebase/installations/b;->a:Ljava/nio/channels/FileChannel;

    .line 33
    iput-object p2, p0, Lcom/google/firebase/installations/b;->b:Ljava/nio/channels/FileLock;

    .line 34
    return-void
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;)Lcom/google/firebase/installations/b;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 45
    .line 48
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-direct {v0, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 49
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string/jumbo v3, "rw"

    invoke-direct {v2, v0, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 52
    :try_start_1
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v2

    .line 53
    :try_start_2
    new-instance v0, Lcom/google/firebase/installations/b;

    invoke-direct {v0, v3, v2}, Lcom/google/firebase/installations/b;-><init>(Ljava/nio/channels/FileChannel;Ljava/nio/channels/FileLock;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 75
    :goto_0
    return-object v0

    .line 54
    :catch_0
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    .line 57
    :goto_1
    const-string/jumbo v4, "CrossProcessLock"

    const-string/jumbo v5, "encountered error while creating and acquiring the lock, ignoring"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 60
    if-eqz v2, :cond_0

    .line 62
    :try_start_3
    invoke-virtual {v2}, Ljava/nio/channels/FileLock;->release()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 67
    :cond_0
    :goto_2
    if-eqz v3, :cond_1

    .line 69
    :try_start_4
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_1
    :goto_3
    move-object v0, v1

    .line 75
    goto :goto_0

    .line 63
    :catch_1
    move-exception v0

    goto :goto_2

    .line 70
    :catch_2
    move-exception v0

    goto :goto_3

    .line 54
    :catch_3
    move-exception v0

    move-object v2, v1

    goto :goto_1

    :catch_4
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method a()V
    .locals 3

    .prologue
    .line 82
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/installations/b;->b:Ljava/nio/channels/FileLock;

    invoke-virtual {v0}, Ljava/nio/channels/FileLock;->release()V

    .line 83
    iget-object v0, p0, Lcom/google/firebase/installations/b;->a:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :goto_0
    return-void

    .line 84
    :catch_0
    move-exception v0

    .line 86
    const-string/jumbo v1, "CrossProcessLock"

    const-string/jumbo v2, "encountered error while releasing, ignoring"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
