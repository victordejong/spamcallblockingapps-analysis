.class public final Lcom/google/android/gms/internal/ads/czh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# direct methods
.method public static final a(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;I)V
    .locals 3

    .prologue
    .line 21
    if-ltz p3, :cond_0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-lt v0, p3, :cond_0

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-lt v0, p3, :cond_0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-ge v0, p3, :cond_1

    .line 22
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "That combination of buffers, offsets and length to xor result in out-of-bond accesses."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 23
    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_2

    .line 24
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 25
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 26
    :cond_2
    return-void
.end method

.method public static final a([BI[BII)[B
    .locals 4

    .prologue
    .line 14
    if-ltz p4, :cond_0

    array-length v0, p0

    sub-int/2addr v0, p4

    if-lt v0, p1, :cond_0

    array-length v0, p2

    sub-int/2addr v0, p4

    if-ge v0, p3, :cond_1

    .line 15
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "That combination of buffers, offsets and length to xor result in out-of-bond accesses."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 16
    :cond_1
    new-array v1, p4, [B

    .line 17
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p4, :cond_2

    .line 18
    add-int v2, v0, p1

    aget-byte v2, p0, v2

    add-int v3, v0, p3

    aget-byte v3, p2, v3

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 19
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 20
    :cond_2
    return-object v1
.end method

.method public static final a([B[B)[B
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 27
    array-length v0, p0

    array-length v1, p1

    if-eq v0, v1, :cond_0

    .line 28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "The lengths of x and y should match."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 29
    :cond_0
    array-length v0, p0

    invoke-static {p0, v2, p1, v2, v0}, Lcom/google/android/gms/internal/ads/czh;->a([BI[BII)[B

    move-result-object v0

    return-object v0
.end method

.method public static varargs a([[B)[B
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 1
    .line 2
    array-length v3, p0

    move v0, v1

    move v2, v1

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, p0, v0

    .line 3
    const v5, 0x7fffffff

    array-length v6, v4

    sub-int/2addr v5, v6

    if-le v2, v5, :cond_0

    .line 4
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string/jumbo v1, "exceeded size limit"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5
    :cond_0
    array-length v4, v4

    add-int/2addr v2, v4

    .line 6
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7
    :cond_1
    new-array v3, v2, [B

    .line 9
    array-length v4, p0

    move v0, v1

    move v2, v1

    :goto_1
    if-ge v0, v4, :cond_2

    aget-object v5, p0, v0

    .line 10
    array-length v6, v5

    invoke-static {v5, v1, v3, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 11
    array-length v5, v5

    add-int/2addr v2, v5

    .line 12
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 13
    :cond_2
    return-object v3
.end method
