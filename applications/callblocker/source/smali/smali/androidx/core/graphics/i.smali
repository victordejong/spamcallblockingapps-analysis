.class public Landroidx/core/graphics/i;
.super Ljava/lang/Object;
.source "TypefaceCompatUtil.java"


# direct methods
.method public static a(Landroid/content/Context;)Ljava/io/File;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 63
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    .line 64
    if-nez v3, :cond_1

    .line 79
    :cond_0
    :goto_0
    return-object v0

    .line 68
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ".font"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 69
    const/4 v1, 0x0

    move v2, v1

    :goto_1
    const/16 v1, 0x64

    if-ge v2, v1, :cond_0

    .line 70
    new-instance v1, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 72
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_2

    move-object v0, v1

    .line 73
    goto :goto_0

    .line 75
    :catch_0
    move-exception v1

    .line 69
    :cond_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;Landroid/content/res/Resources;I)Ljava/nio/ByteBuffer;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 124
    invoke-static {p0}, Landroidx/core/graphics/i;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    .line 125
    if-nez v1, :cond_0

    .line 132
    :goto_0
    return-object v0

    .line 129
    :cond_0
    :try_start_0
    invoke-static {v1, p1, p2}, Landroidx/core/graphics/i;->a(Ljava/io/File;Landroid/content/res/Resources;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    .line 134
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 132
    :cond_1
    :try_start_1
    invoke-static {v1}, Landroidx/core/graphics/i;->a(Ljava/io/File;)Ljava/nio/ByteBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 134
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    throw v0
.end method

.method public static a(Landroid/content/Context;Landroid/os/CancellationSignal;Landroid/net/Uri;)Ljava/nio/ByteBuffer;
    .locals 11

    .prologue
    const/4 v6, 0x0

    .line 103
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 104
    :try_start_0
    const-string/jumbo v1, "r"

    invoke-virtual {v0, p2, v1, p1}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v7

    const/4 v8, 0x0

    .line 105
    if-nez v7, :cond_3

    .line 113
    if-eqz v7, :cond_0

    if-eqz v6, :cond_2

    :try_start_1
    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :goto_0
    move-object v0, v6

    .line 114
    :cond_1
    :goto_1
    return-object v0

    .line 113
    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v8, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v0, v6

    .line 114
    goto :goto_1

    .line 113
    :cond_2
    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 108
    :cond_3
    :try_start_3
    new-instance v9, Ljava/io/FileInputStream;

    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 v10, 0x0

    .line 109
    :try_start_4
    invoke-virtual {v9}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 110
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    .line 111
    sget-object v1, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v2, 0x0

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-result-object v0

    .line 112
    if-eqz v9, :cond_4

    if-eqz v6, :cond_6

    :try_start_5
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 113
    :cond_4
    :goto_2
    if-eqz v7, :cond_1

    if-eqz v6, :cond_7

    :try_start_6
    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    :catch_2
    move-exception v1

    :try_start_7
    invoke-virtual {v8, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_1

    .line 112
    :catch_3
    move-exception v1

    :try_start_8
    invoke-virtual {v10, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_2

    .line 104
    :catch_4
    move-exception v0

    :try_start_9
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 113
    :catchall_0
    move-exception v1

    move-object v2, v0

    :goto_3
    if-eqz v7, :cond_5

    if-eqz v2, :cond_a

    :try_start_a
    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_7
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1

    :cond_5
    :goto_4
    :try_start_b
    throw v1
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1

    .line 112
    :cond_6
    :try_start_c
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto :goto_2

    .line 113
    :catchall_1
    move-exception v0

    move-object v1, v0

    move-object v2, v6

    goto :goto_3

    :cond_7
    :try_start_d
    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_1

    goto :goto_1

    .line 108
    :catch_5
    move-exception v0

    :try_start_e
    throw v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 112
    :catchall_2
    move-exception v1

    move-object v2, v0

    :goto_5
    if-eqz v9, :cond_8

    if-eqz v2, :cond_9

    :try_start_f
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_6
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    :cond_8
    :goto_6
    :try_start_10
    throw v1

    :catch_6
    move-exception v0

    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_9
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_4
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    goto :goto_6

    .line 113
    :catch_7
    move-exception v0

    :try_start_11
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_a
    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_1

    goto :goto_4

    .line 112
    :catchall_3
    move-exception v0

    move-object v1, v0

    move-object v2, v6

    goto :goto_5
.end method

.method private static a(Ljava/io/File;)Ljava/nio/ByteBuffer;
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 88
    :try_start_0
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v8, 0x0

    .line 89
    :try_start_1
    invoke-virtual {v7}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 90
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    .line 91
    sget-object v1, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v2, 0x0

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 92
    if-eqz v7, :cond_0

    if-eqz v6, :cond_1

    :try_start_2
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 93
    :cond_0
    :goto_0
    return-object v0

    .line 92
    :catch_0
    move-exception v1

    :try_start_3
    invoke-virtual {v8, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v0, v6

    .line 93
    goto :goto_0

    .line 92
    :cond_1
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 88
    :catch_2
    move-exception v0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 92
    :catchall_0
    move-exception v1

    move-object v2, v0

    :goto_1
    if-eqz v7, :cond_2

    if-eqz v2, :cond_3

    :try_start_5
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :cond_2
    :goto_2
    :try_start_6
    throw v1

    :catch_3
    move-exception v0

    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_3
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v1, v0

    move-object v2, v6

    goto :goto_1
.end method

.method public static a(Ljava/io/Closeable;)V
    .locals 1

    .prologue
    .line 175
    if-eqz p0, :cond_0

    .line 177
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    :cond_0
    :goto_0
    return-void

    .line 178
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Ljava/io/File;Landroid/content/res/Resources;I)Z
    .locals 2

    .prologue
    .line 165
    const/4 v1, 0x0

    .line 167
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    .line 168
    invoke-static {p0, v1}, Landroidx/core/graphics/i;->a(Ljava/io/File;Ljava/io/InputStream;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 170
    invoke-static {v1}, Landroidx/core/graphics/i;->a(Ljava/io/Closeable;)V

    .line 168
    return v0

    .line 170
    :catchall_0
    move-exception v0

    invoke-static {v1}, Landroidx/core/graphics/i;->a(Ljava/io/Closeable;)V

    throw v0
.end method

.method public static a(Ljava/io/File;Ljava/io/InputStream;)Z
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 142
    const/4 v3, 0x0

    .line 143
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v4

    .line 145
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    const/16 v1, 0x400

    :try_start_1
    new-array v1, v1, [B

    .line 148
    :goto_0
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v5, -0x1

    if-eq v3, v5, :cond_0

    .line 149
    const/4 v5, 0x0

    invoke-virtual {v2, v1, v5, v3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 152
    :catch_0
    move-exception v1

    .line 153
    :goto_1
    :try_start_2
    const-string/jumbo v3, "TypefaceCompatUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Error copying resource contents to temp file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 156
    invoke-static {v2}, Landroidx/core/graphics/i;->a(Ljava/io/Closeable;)V

    .line 157
    invoke-static {v4}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 154
    :goto_2
    return v0

    .line 151
    :cond_0
    const/4 v0, 0x1

    .line 156
    invoke-static {v2}, Landroidx/core/graphics/i;->a(Ljava/io/Closeable;)V

    .line 157
    invoke-static {v4}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    goto :goto_2

    .line 156
    :catchall_0
    move-exception v0

    move-object v2, v3

    :goto_3
    invoke-static {v2}, Landroidx/core/graphics/i;->a(Ljava/io/Closeable;)V

    .line 157
    invoke-static {v4}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v0

    .line 156
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 152
    :catch_1
    move-exception v1

    move-object v2, v3

    goto :goto_1
.end method
