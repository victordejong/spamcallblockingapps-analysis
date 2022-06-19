.class public final Lcom/google/android/gms/common/util/k;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@17.1.1"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public static a(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 13
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/util/k;->a(Ljava/io/InputStream;Ljava/io/OutputStream;Z)J

    move-result-wide v0

    return-wide v0
.end method

.method private static a(Ljava/io/InputStream;Ljava/io/OutputStream;Z)J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 14
    const/16 v0, 0x400

    invoke-static {p0, p1, p2, v0}, Lcom/google/android/gms/common/util/k;->a(Ljava/io/InputStream;Ljava/io/OutputStream;ZI)J

    move-result-wide v0

    return-wide v0
.end method

.method public static a(Ljava/io/InputStream;Ljava/io/OutputStream;ZI)J
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 15
    new-array v2, p3, [B

    .line 16
    const-wide/16 v0, 0x0

    .line 17
    :goto_0
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0, v2, v3, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 18
    int-to-long v4, v3

    add-long/2addr v0, v4

    .line 19
    const/4 v4, 0x0

    invoke-virtual {p1, v2, v4, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 23
    :catchall_0
    move-exception v0

    if-eqz p2, :cond_0

    .line 24
    invoke-static {p0}, Lcom/google/android/gms/common/util/k;->a(Ljava/io/Closeable;)V

    .line 25
    invoke-static {p1}, Lcom/google/android/gms/common/util/k;->a(Ljava/io/Closeable;)V

    :cond_0
    throw v0

    .line 20
    :cond_1
    if-eqz p2, :cond_2

    .line 21
    invoke-static {p0}, Lcom/google/android/gms/common/util/k;->a(Ljava/io/Closeable;)V

    .line 22
    invoke-static {p1}, Lcom/google/android/gms/common/util/k;->a(Ljava/io/Closeable;)V

    .line 26
    :cond_2
    return-wide v0
.end method

.method public static a(Ljava/io/Closeable;)V
    .locals 1
    .param p0    # Ljava/io/Closeable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 2
    if-eqz p0, :cond_0

    .line 3
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Ljava/io/InputStream;Z)[B
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 28
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 29
    invoke-static {p0, v0, p1}, Lcom/google/android/gms/common/util/k;->a(Ljava/io/InputStream;Ljava/io/OutputStream;Z)J

    .line 30
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method
