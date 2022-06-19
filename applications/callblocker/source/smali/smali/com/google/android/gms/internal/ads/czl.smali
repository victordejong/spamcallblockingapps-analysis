.class abstract Lcom/google/android/gms/internal/ads/czl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/csm;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/czj;

.field private final b:Lcom/google/android/gms/internal/ads/czj;


# direct methods
.method public constructor <init>([B)V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/czl;->a([BI)Lcom/google/android/gms/internal/ads/czj;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/czl;->a:Lcom/google/android/gms/internal/ads/czj;

    .line 3
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/czl;->a([BI)Lcom/google/android/gms/internal/ads/czj;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/czl;->b:Lcom/google/android/gms/internal/ads/czj;

    .line 4
    return-void
.end method


# virtual methods
.method abstract a([BI)Lcom/google/android/gms/internal/ads/czj;
.end method

.method public a([B[B)[B
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 5
    array-length v0, p1

    const v1, 0x7fffffff

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/czl;->a:Lcom/google/android/gms/internal/ads/czj;

    .line 6
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/czj;->a()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x10

    if-le v0, v1, :cond_0

    .line 7
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string/jumbo v1, "plaintext too long"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8
    :cond_0
    array-length v0, p1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/czl;->a:Lcom/google/android/gms/internal/ads/czj;

    .line 9
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/czj;->a()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x10

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 11
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    array-length v1, p1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/czl;->a:Lcom/google/android/gms/internal/ads/czj;

    .line 12
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/czj;->a()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x10

    if-ge v0, v1, :cond_1

    .line 13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Given ByteBuffer output is too small"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 14
    :cond_1
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 15
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/czl;->a:Lcom/google/android/gms/internal/ads/czj;

    invoke-virtual {v1, v3, p1}, Lcom/google/android/gms/internal/ads/czj;->a(Ljava/nio/ByteBuffer;[B)V

    .line 16
    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/czl;->a:Lcom/google/android/gms/internal/ads/czj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/czj;->a()I

    move-result v0

    new-array v0, v0, [B

    .line 18
    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 19
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    add-int/lit8 v1, v1, -0x10

    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 21
    if-nez p2, :cond_2

    .line 22
    new-array p2, v4, [B

    .line 24
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/czl;->b:Lcom/google/android/gms/internal/ads/czj;

    invoke-virtual {v1, v0, v4}, Lcom/google/android/gms/internal/ads/czj;->a([BI)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 25
    const/16 v1, 0x20

    new-array v4, v1, [B

    .line 26
    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 29
    array-length v0, p2

    rem-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_3

    array-length v0, p2

    .line 30
    :goto_0
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    .line 31
    rem-int/lit8 v1, v2, 0x10

    if-nez v1, :cond_4

    move v1, v2

    .line 32
    :goto_1
    add-int v5, v0, v1

    add-int/lit8 v5, v5, 0x10

    .line 33
    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    sget-object v6, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 34
    invoke-virtual {v5, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 35
    invoke-virtual {v5, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 36
    invoke-virtual {v5, v3}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 37
    add-int/2addr v0, v1

    invoke-virtual {v5, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 38
    array-length v0, p2

    int-to-long v0, v0

    invoke-virtual {v5, v0, v1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 39
    int-to-long v0, v2

    invoke-virtual {v5, v0, v1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 40
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 41
    invoke-static {v4, v0}, Lcom/google/android/gms/internal/ads/dak;->a([B[B)[B

    move-result-object v0

    .line 42
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    add-int/lit8 v1, v1, 0x10

    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 43
    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 44
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0

    .line 29
    :cond_3
    array-length v0, p2

    add-int/lit8 v0, v0, 0x10

    array-length v1, p2

    rem-int/lit8 v1, v1, 0x10

    sub-int/2addr v0, v1

    goto :goto_0

    .line 31
    :cond_4
    add-int/lit8 v1, v2, 0x10

    rem-int/lit8 v5, v2, 0x10

    sub-int/2addr v1, v5

    goto :goto_1
.end method
