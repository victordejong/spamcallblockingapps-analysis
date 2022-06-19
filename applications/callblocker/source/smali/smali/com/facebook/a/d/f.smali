.class final Lcom/facebook/a/d/f;
.super Ljava/lang/Object;
.source "HashUtils.java"


# direct methods
.method private static a(Ljava/io/File;)Ljava/lang/String;
    .locals 6

    .prologue
    const/16 v1, 0x400

    .line 26
    .line 27
    new-instance v3, Ljava/io/BufferedInputStream;

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    const/4 v2, 0x0

    .line 28
    :try_start_0
    const-string/jumbo v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 29
    const/16 v1, 0x400

    new-array v1, v1, [B

    .line 33
    :cond_0
    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .line 34
    if-lez v4, :cond_1

    .line 35
    const/4 v5, 0x0

    invoke-virtual {v0, v1, v5, v4}, Ljava/security/MessageDigest;->update([BII)V

    .line 37
    :cond_1
    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 40
    new-instance v1, Ljava/math/BigInteger;

    const/4 v4, 0x1

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-direct {v1, v4, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v0

    .line 41
    if-eqz v3, :cond_2

    if-eqz v2, :cond_3

    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 40
    :cond_2
    :goto_0
    return-object v0

    .line 41
    :catch_0
    move-exception v1

    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    goto :goto_0

    .line 27
    :catch_1
    move-exception v0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 41
    :catchall_0
    move-exception v1

    move-object v2, v0

    :goto_1
    if-eqz v3, :cond_4

    if-eqz v2, :cond_5

    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :cond_4
    :goto_2
    throw v1

    :catch_2
    move-exception v0

    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v1, v0

    goto :goto_1
.end method

.method public static final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/facebook/a/d/f;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
