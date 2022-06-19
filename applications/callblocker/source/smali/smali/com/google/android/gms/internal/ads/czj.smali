.class abstract Lcom/google/android/gms/internal/ads/czj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dai;


# static fields
.field private static final b:[I


# instance fields
.field a:[I

.field private final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    .line 64
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/czj;->b([B)[I

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/czj;->b:[I

    .line 65
    return-void

    .line 63
    :array_0
    .array-data 1
        0x65t
        0x78t
        0x70t
        0x61t
        0x6et
        0x64t
        0x20t
        0x33t
        0x32t
        0x2dt
        0x62t
        0x79t
        0x74t
        0x65t
        0x20t
        0x6bt
    .end array-data
.end method

.method constructor <init>([BI)V
    .locals 2

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    array-length v0, p1

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    .line 3
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string/jumbo v1, "The key length in bytes must be 32."

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4
    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/czj;->b([B)[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/czj;->a:[I

    .line 5
    iput p2, p0, Lcom/google/android/gms/internal/ads/czj;->c:I

    .line 6
    return-void
.end method

.method private static a(II)I
    .locals 2

    .prologue
    .line 62
    shl-int v0, p0, p1

    neg-int v1, p1

    ushr-int v1, p0, v1

    or-int/2addr v0, v1

    return v0
.end method

.method static a([I)V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/16 v5, 0xa

    const/4 v1, 0x0

    .line 38
    move v0, v1

    :goto_0
    if-ge v0, v5, :cond_0

    .line 39
    const/4 v2, 0x4

    const/16 v3, 0x8

    const/16 v4, 0xc

    invoke-static {p0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/czj;->a([IIIII)V

    .line 40
    const/4 v2, 0x5

    const/16 v3, 0x9

    const/16 v4, 0xd

    invoke-static {p0, v6, v2, v3, v4}, Lcom/google/android/gms/internal/ads/czj;->a([IIIII)V

    .line 41
    const/4 v2, 0x6

    const/16 v3, 0xe

    invoke-static {p0, v7, v2, v5, v3}, Lcom/google/android/gms/internal/ads/czj;->a([IIIII)V

    .line 42
    const/4 v2, 0x7

    const/16 v3, 0xb

    const/16 v4, 0xf

    invoke-static {p0, v8, v2, v3, v4}, Lcom/google/android/gms/internal/ads/czj;->a([IIIII)V

    .line 43
    const/4 v2, 0x5

    const/16 v3, 0xf

    invoke-static {p0, v1, v2, v5, v3}, Lcom/google/android/gms/internal/ads/czj;->a([IIIII)V

    .line 44
    const/4 v2, 0x6

    const/16 v3, 0xb

    const/16 v4, 0xc

    invoke-static {p0, v6, v2, v3, v4}, Lcom/google/android/gms/internal/ads/czj;->a([IIIII)V

    .line 45
    const/4 v2, 0x7

    const/16 v3, 0x8

    const/16 v4, 0xd

    invoke-static {p0, v7, v2, v3, v4}, Lcom/google/android/gms/internal/ads/czj;->a([IIIII)V

    .line 46
    const/4 v2, 0x4

    const/16 v3, 0x9

    const/16 v4, 0xe

    invoke-static {p0, v8, v2, v3, v4}, Lcom/google/android/gms/internal/ads/czj;->a([IIIII)V

    .line 47
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 48
    :cond_0
    return-void
.end method

.method private static a([IIIII)V
    .locals 2

    .prologue
    .line 49
    aget v0, p0, p1

    aget v1, p0, p2

    add-int/2addr v0, v1

    aput v0, p0, p1

    .line 50
    aget v0, p0, p4

    aget v1, p0, p1

    xor-int/2addr v0, v1

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/czj;->a(II)I

    move-result v0

    aput v0, p0, p4

    .line 51
    aget v0, p0, p3

    aget v1, p0, p4

    add-int/2addr v0, v1

    aput v0, p0, p3

    .line 52
    aget v0, p0, p2

    aget v1, p0, p3

    xor-int/2addr v0, v1

    const/16 v1, 0xc

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/czj;->a(II)I

    move-result v0

    aput v0, p0, p2

    .line 53
    aget v0, p0, p1

    aget v1, p0, p2

    add-int/2addr v0, v1

    aput v0, p0, p1

    .line 54
    aget v0, p0, p4

    aget v1, p0, p1

    xor-int/2addr v0, v1

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/czj;->a(II)I

    move-result v0

    aput v0, p0, p4

    .line 55
    aget v0, p0, p3

    aget v1, p0, p4

    add-int/2addr v0, v1

    aput v0, p0, p3

    .line 56
    aget v0, p0, p2

    aget v1, p0, p3

    xor-int/2addr v0, v1

    const/4 v1, 0x7

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/czj;->a(II)I

    move-result v0

    aput v0, p0, p2

    .line 57
    return-void
.end method

.method static a([I[I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 35
    sget-object v0, Lcom/google/android/gms/internal/ads/czj;->b:[I

    sget-object v1, Lcom/google/android/gms/internal/ads/czj;->b:[I

    array-length v1, v1

    invoke-static {v0, v2, p0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 36
    sget-object v0, Lcom/google/android/gms/internal/ads/czj;->b:[I

    array-length v0, v0

    const/16 v1, 0x8

    invoke-static {p1, v2, p0, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 37
    return-void
.end method

.method private static b([B)[I
    .locals 2

    .prologue
    .line 58
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v0

    .line 59
    invoke-virtual {v0}, Ljava/nio/IntBuffer;->remaining()I

    move-result v1

    new-array v1, v1, [I

    .line 60
    invoke-virtual {v0, v1}, Ljava/nio/IntBuffer;->get([I)Ljava/nio/IntBuffer;

    .line 61
    return-object v1
.end method


# virtual methods
.method abstract a()I
.end method

.method final a([BI)Ljava/nio/ByteBuffer;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 26
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/czj;->b([B)[I

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/ads/czj;->a([II)[I

    move-result-object v3

    .line 27
    invoke-virtual {v3}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 28
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/czj;->a([I)V

    move v1, v2

    .line 29
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_0

    .line 30
    aget v4, v3, v1

    aget v5, v0, v1

    add-int/2addr v4, v5

    aput v4, v3, v1

    .line 31
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 32
    :cond_0
    const/16 v0, 0x40

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 33
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v1

    const/16 v4, 0x10

    invoke-virtual {v1, v3, v2, v4}, Ljava/nio/IntBuffer;->put([III)Ljava/nio/IntBuffer;

    .line 34
    return-object v0
.end method

.method final a(Ljava/nio/ByteBuffer;[B)V
    .locals 7

    .prologue
    .line 12
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/czj;->a()I

    move-result v1

    sub-int/2addr v0, v1

    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Given ByteBuffer output is too small"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 14
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/czj;->a()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/daj;->a(I)[B

    move-result-object v1

    .line 15
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 16
    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 17
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    .line 18
    div-int/lit8 v0, v3, 0x40

    add-int/lit8 v4, v0, 0x1

    .line 19
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_2

    .line 20
    iget v5, p0, Lcom/google/android/gms/internal/ads/czj;->c:I

    add-int/2addr v5, v0

    invoke-virtual {p0, v1, v5}, Lcom/google/android/gms/internal/ads/czj;->a([BI)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 21
    add-int/lit8 v6, v4, -0x1

    if-ne v0, v6, :cond_1

    .line 22
    rem-int/lit8 v6, v3, 0x40

    invoke-static {p1, v2, v5, v6}, Lcom/google/android/gms/internal/ads/czh;->a(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;I)V

    .line 24
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 23
    :cond_1
    const/16 v6, 0x40

    invoke-static {p1, v2, v5, v6}, Lcom/google/android/gms/internal/ads/czh;->a(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;I)V

    goto :goto_1

    .line 25
    :cond_2
    return-void
.end method

.method public final a([B)[B
    .locals 3

    .prologue
    .line 7
    array-length v0, p1

    const v1, 0x7fffffff

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/czj;->a()I

    move-result v2

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_0

    .line 8
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string/jumbo v1, "plaintext too long"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/czj;->a()I

    move-result v0

    array-length v1, p1

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 10
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/ads/czj;->a(Ljava/nio/ByteBuffer;[B)V

    .line 11
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method

.method abstract a([II)[I
.end method
