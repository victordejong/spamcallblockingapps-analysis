.class final Lcom/bumptech/glide/load/engine/c/b;
.super Ljava/lang/Object;
.source "RuntimeCompat.java"


# direct methods
.method static a()I
    .locals 3

    .prologue
    .line 27
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    .line 28
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-ge v1, v2, :cond_0

    .line 29
    invoke-static {}, Lcom/bumptech/glide/load/engine/c/b;->b()I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 31
    :cond_0
    return v0
.end method

.method private static b()I
    .locals 5

    .prologue
    .line 48
    const/4 v1, 0x0

    .line 49
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v2

    .line 51
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string/jumbo v3, "/sys/devices/system/cpu/"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 52
    const-string/jumbo v3, "cpu[0-9]+"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 53
    new-instance v4, Lcom/bumptech/glide/load/engine/c/b$1;

    invoke-direct {v4, v3}, Lcom/bumptech/glide/load/engine/c/b$1;-><init>(Ljava/util/regex/Pattern;)V

    invoke-virtual {v0, v4}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 64
    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 66
    :goto_0
    const/4 v1, 0x1

    if-eqz v0, :cond_1

    array-length v0, v0

    :goto_1
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    .line 59
    :catch_0
    move-exception v0

    .line 60
    :try_start_1
    const-string/jumbo v3, "GlideRuntimeCompat"

    const/4 v4, 0x6

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 61
    const-string/jumbo v3, "GlideRuntimeCompat"

    const-string/jumbo v4, "Failed to calculate accurate cpu count"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    :cond_0
    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    move-object v0, v1

    .line 65
    goto :goto_0

    .line 64
    :catchall_0
    move-exception v0

    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v0

    .line 66
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
