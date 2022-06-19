.class public final Lcom/google/android/gms/internal/ads/zzekh;
.super Lcom/google/android/gms/internal/ads/zzekc;
.source ""


# instance fields
.field private final buffer:[B

.field private pos:I

.field private zzakh:I

.field private zzimr:I

.field private zzimt:I

.field private zzimu:I

.field private final zzimv:Ljava/io/InputStream;

.field private zzimw:I

.field private zzimx:Lcom/google/android/gms/internal/ads/zzekg;


# direct methods
.method private constructor <init>(Ljava/io/InputStream;I)V
    .locals 1

    const/4 p2, 0x0

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzekc;-><init>(Lcom/google/android/gms/internal/ads/zzekf;)V

    const v0, 0x7fffffff

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzekh;->zzimu:I

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzekh;->zzimx:Lcom/google/android/gms/internal/ads/zzekg;

    const-string p2, "input"

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzeld;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzekh;->zzimv:Ljava/io/InputStream;

    const/16 p1, 0x1000

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzekh;->buffer:[B

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzekh;->zzakh:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzekh;->pos:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzekh;->zzimw:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/io/InputStream;ILcom/google/android/gms/internal/ads/zzekf;)V
    .locals 0

    const/16 p2, 0x1000

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzekh;-><init>(Ljava/io/InputStream;I)V

    return-void
.end method

.method private final zzbhk()I
    .locals 5

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzekh;->pos:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzekh;->zzakh:I

    if-eq v1, v0, :cond_6

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzekh;->buffer:[B

    add-int/lit8 v3, v0, 0x1

    aget-byte v0, v2, v0

    if-ltz v0, :cond_0

    iput v3, p0, Lcom/google/android/gms/internal/ads/zzekh;->pos:I

    return v0

    :cond_0
    sub-int/2addr v1, v3

    const/16 v4, 0x9

    if-lt v1, v4, :cond_6

    add-int/lit8 v1, v3, 0x1

    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x7

    xor-int/2addr v0, v3

    if-gez v0, :cond_1

    xor-int/lit8 v0, v0, -0x80

    goto :goto_0

    :cond_1
    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v2, v1

    shl-int/lit8 v1, v1, 0xe

    xor-int/2addr v0, v1

    if-ltz v0, :cond_3

    xor-int/lit16 v0, v0, 0x3f80

    :cond_2
    move v1, v3

    goto :goto_0

    :cond_3
    add-int/lit8 v1, v3, 0x1

    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x15

    xor-int/2addr v0, v3

    if-gez v0, :cond_4

    const v2, -0x1fc080

    xor-int/2addr v0, v2

    goto :goto_0

    :cond_4
    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v2, v1

    shl-int/lit8 v4, v1, 0x1c

    xor-int/2addr v0, v4

    const v4, 0xfe03f80

    xor-int/2addr v0, v4

    if-gez v1, :cond_2

    add-int/lit8 v1, v3, 0x1

    aget-byte v3, v2, v3

    if-gez v3, :cond_5

    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v2, v1

    if-gez v1, :cond_2

    add-int/lit8 v1, v3, 0x1

    aget-byte v3, v2, v3

    if-gez v3, :cond_5

    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v2, v1

    if-gez v1, :cond_2

    add-int/lit8 v1, v3, 0x1

    aget-byte v2, v2, v3

    if-ltz v2, :cond_6

    :cond_5
    :goto_0
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzekh;->pos:I

    return v0

    :cond_6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzekc;->zzbhh()J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method private final zzbhl()J
    .locals 11

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzekh;->pos:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzekh;->zzakh:I

    if-eq v1, v0, :cond_9

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzekh;->buffer:[B

    add-int/lit8 v3, v0, 0x1

    aget-byte v0, v2, v0

    if-ltz v0, :cond_0

    iput v3, p0, Lcom/google/android/gms/internal/ads/zzekh;->pos:I

    int-to-long v0, v0

    return-wide v0

    :cond_0
    sub-int/2addr v1, v3

    const/16 v4, 0x9

    if-lt v1, v4, :cond_9

    add-int/lit8 v1, v3, 0x1

    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x7

    xor-int/2addr v0, v3

    if-gez v0, :cond_1

    xor-int/lit8 v0, v0, -0x80

    :goto_0
    int-to-long v2, v0

    goto/16 :goto_4

    :cond_1
    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v2, v1

    shl-int/lit8 v1, v1, 0xe

    xor-int/2addr v0, v1

    if-ltz v0, :cond_2

    xor-int/lit16 v0, v0, 0x3f80

    int-to-long v0, v0

    move-wide v9, v0

    move v1, v3

    move-wide v2, v9

    goto/16 :goto_4

    :cond_2
    add-int/lit8 v1, v3, 0x1

    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x15

    xor-int/2addr v0, v3

    if-gez v0, :cond_3

    const v2, -0x1fc080

    xor-int/2addr v0, v2

    goto :goto_0

    :cond_3
    int-to-long v3, v0

    add-int/lit8 v0, v1, 0x1

    aget-byte v1, v2, v1

    int-to-long v5, v1

    const/16 v1, 0x1c

    shl-long/2addr v5, v1

    xor-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-ltz v1, :cond_4

    const-wide/32 v1, 0xfe03f80

    :goto_1
    xor-long v2, v3, v1

    move v1, v0

    goto :goto_4

    :cond_4
    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v2, v0

    int-to-long v7, v0

    const/16 v0, 0x23

    shl-long/2addr v7, v0

    xor-long/2addr v3, v7

    cmp-long v0, v3, v5

    if-gez v0, :cond_5

    const-wide v5, -0x7f01fc080L

    :goto_2
    xor-long v2, v3, v5

    goto :goto_4

    :cond_5
    add-int/lit8 v0, v1, 0x1

    aget-byte v1, v2, v1

    int-to-long v7, v1

    const/16 v1, 0x2a

    shl-long/2addr v7, v1

    xor-long/2addr v3, v7

    cmp-long v1, v3, v5

    if-ltz v1, :cond_6

    const-wide v1, 0x3f80fe03f80L

    goto :goto_1

    :cond_6
    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v2, v0

    int-to-long v7, v0

    const/16 v0, 0x31

    shl-long/2addr v7, v0

    xor-long/2addr v3, v7

    cmp-long v0, v3, v5

    if-gez v0, :cond_7

    const-wide v5, -0x1fc07f01fc080L

    goto :goto_2

    :cond_7
    add-int/lit8 v0, v1, 0x1

    aget-byte v1, v2, v1

    int-to-long v7, v1

    const/16 v1, 0x38

    shl-long/2addr v7, v1

    xor-long/2addr v3, v7

    const-wide v7, 0xfe03f80fe03f80L

    xor-long/2addr v3, v7

    cmp-long v1, v3, v5

    if-gez v1, :cond_8

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v2, v0

    int-to-long v7, v0

    cmp-long v0, v7, v5

    if-ltz v0, :cond_9

    goto :goto_3

    :cond_8
    move v1, v0

    :goto_3
    move-wide v2, v3

    :goto_4
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzekh;->pos:I

    return-wide v2

    :cond_9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzekc;->zzbhh()J

    move-result-wide v0

    return-wide v0
.end method

.method private final zzbhm()I
    .locals 4

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzekh;->pos:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzekh;->zzakh:I

    sub-int/2addr v1, v0

    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/zzekh;->zzgj(I)V

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzekh;->pos:I

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzekh;->buffer:[B

    add-int/lit8 v2, v0, 0x4

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzekh;->pos:I

    aget-byte v2, v1, v0

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, v0, 0x1

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v3, v0, 0x2

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x3

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v2

    return v0
.end method

.method private final zzbhn()J
    .locals 9

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzekh;->pos:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzekh;->zzakh:I

    sub-int/2addr v1, v0

    const/16 v2, 0x8

    if-ge v1, v2, :cond_0

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/zzekh;->zzgj(I)V

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzekh;->pos:I

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzekh;->buffer:[B

    add-int/lit8 v3, v0, 0x8

    iput v3, p0, Lcom/google/android/gms/internal/ads/zzekh;->pos:I

    aget-byte v3, v1, v0

    int-to-long v3, v3

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    add-int/lit8 v7, v0, 0x1

    aget-byte v7, v1, v7

    int-to-long v7, v7

    and-long/2addr v7, v5

    shl-long/2addr v7, v2

    or-long v2, v3, v7

    add-int/lit8 v4, v0, 0x2

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x10

    shl-long/2addr v7, v4

    or-long/2addr v2, v7

    add-int/lit8 v4, v0, 0x3

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x18

    shl-long/2addr v7, v4

    or-long/2addr v2, v7

    add-int/lit8 v4, v0, 0x4

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x20

    shl-long/2addr v7, v4

    or-long/2addr v2, v7

    add-int/lit8 v4, v0, 0x5

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x28

    shl-long/2addr v7, v4

    or-long/2addr v2, v7

    add-int/lit8 v4, v0, 0x6

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x30

    shl-long/2addr v7, v4

    or-long/2addr v2, v7

    add-int/lit8 v0, v0, 0x7

    aget-byte v0, v1, v0

    int-to-long v0, v0

    and-long/2addr v0, v5

    const/16 v4, 0x38

    shl-long/2addr v0, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private final zzbho()V
    .locals 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzekh;->zzakh:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzekh;->zzimr:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzekh;->zzakh:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzekh;->zzimw:I

    add-int/2addr v1, v0

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzekh;->zzimu:I

    if-le v1, v2, :cond_0

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzekh;->zzimr:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzekh;->zzakh:I

    return-void

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzekh;->zzimr:I

    return-void
.end method

.method private final zzbhp()B
    .locals 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzekh;->pos:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzekh;->zzakh:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzekh;->zzgj(I)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzekh;->buffer:[B

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzekh;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzekh;->pos:I

    aget-byte v0, v0, v1

    return v0
.end method

.method private final zzg(IZ)[B
    .locals 4

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzekh;->zzgl(I)[B

    move-result-object p2

    if-eqz p2, :cond_0

    return-object p2

    :cond_0
    iget p2, p0, Lcom/google/android/gms/internal/ads/zzekh;->pos:I

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzekh;->zzakh:I

    sub-int v1, v0, p2

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzekh;->zzimw:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzekh;->zzimw:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzekh;->pos:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzekh;->zzakh:I

    sub-int v2, p1, v1

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/zzekh;->zzgm(I)Ljava/util/List;

    move-result-object v2

    new-array p1, p1, [B

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzekh;->buffer:[B

    invoke-static {v3, p2, p1, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    array-length v3, v2

    invoke-static {v2, v0, p1, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method private final zzgi(I)V
    .locals 8

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzekh;->zzakh:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzekh;->pos:I

    sub-int v2, v0, v1

    if-gt p1, v2, :cond_0

    if-ltz p1, :cond_0

    add-int/2addr v1, p1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzekh;->pos:I

    return-void

    :cond_0
    if-ltz p1, :cond_6

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzekh;->zzimw:I

    add-int v3, v2, v1

    add-int/2addr v3, p1

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzekh;->zzimu:I

    if-gt v3, v4, :cond_5

    add-int/2addr v2, v1

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzekh;->zzimw:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzekh;->zzakh:I

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzekh;->pos:I

    :goto_0
    if-ge v0, p1, :cond_2

    sub-int v1, p1, v0

    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzekh;->zzimv:Ljava/io/InputStream;

    int-to-long v3, v1

    invoke-virtual {v2, v3, v4}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v1

    const-wide/16 v5, 0x0

    cmp-long v7, v1, v5

    if-ltz v7, :cond_1

    cmp-long v5, v1, v3

    if-gtz v5, :cond_1

    if-eqz v7, :cond_2

    long-to-int v2, v1

    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzekh;->zzimv:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x5c

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "#skip returned invalid result: "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\nThe InputStream implementation is buggy."

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzekh;->zzimw:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzekh;->zzimw:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzekh;->zzbho()V

    throw p1

    :cond_2
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzekh;->zzimw:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzekh;->zzimw:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzekh;->zzbho()V

    if-ge v0, p1, :cond_4

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzekh;->zzakh:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzekh;->pos:I

    sub-int v1, v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzekh;->pos:I

    const/4 v0, 0x1

    :goto_1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzekh;->zzgj(I)V

    sub-int v2, p1, v1

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzekh;->zzakh:I

    if-le v2, v3, :cond_3

    add-int/2addr v1, v3

    iput v3, p0, Lcom/google/android/gms/internal/ads/zzekh;->pos:I

    goto :goto_1

    :cond_3
    iput v2, p0, Lcom/google/android/gms/internal/ads/zzekh;->pos:I

    :cond_4
    return-void

    :cond_5
    sub-int/2addr v4, v2

    sub-int/2addr v4, v1

    invoke-direct {p0, v4}, Lcom/google/android/gms/internal/ads/zzekh;->zzgi(I)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzelo;->zzbja()Lcom/google/android/gms/internal/ads/zzelo;

    move-result-object p1

    throw p1

    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzelo;->zzbjb()Lcom/google/android/gms/internal/ads/zzelo;

    move-result-object p1

    throw p1
.end method

.method private final zzgj(I)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzekh;->zzgk(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzekc;->zzimn:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzekh;->zzimw:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzekh;->pos:I

    sub-int/2addr v0, v1

    if-le p1, v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzelo;->zzbjg()Lcom/google/android/gms/internal/ads/zzelo;

    move-result-object p1

    throw p1

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzelo;->zzbja()Lcom/google/android/gms/internal/ads/zzelo;

    move-result-object p1

    throw p1

    :cond_1
    return-void
.end method

.method private final zzgk(I)Z
    .locals 7

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzekh;->pos:I

    add-int v1, v0, p1

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzekh;->zzakh:I

    if-le v1, v2, :cond_7

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzekc;->zzimn:I

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzekh;->zzimw:I

    sub-int/2addr v1, v3

    sub-int/2addr v1, v0

    const/4 v4, 0x0

    if-le p1, v1, :cond_1

    return v4

    :cond_1
    add-int/2addr v3, v0

    add-int/2addr v3, p1

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzekh;->zzimu:I

    if-le v3, v1, :cond_2

    return v4

    :cond_2
    if-lez v0, :cond_4

    if-le v2, v0, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzekh;->buffer:[B

    sub-int/2addr v2, v0

    invoke-static {v1, v0, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzekh;->zzimw:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzekh;->zzimw:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzekh;->zzakh:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzekh;->zzakh:I

    iput v4, p0, Lcom/google/android/gms/internal/ads/zzekh;->pos:I

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzekh;->zzimv:Ljava/io/InputStream;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzekh;->buffer:[B

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzekh;->zzakh:I

    array-length v3, v1

    sub-int/2addr v3, v2

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzekc;->zzimn:I

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzekh;->zzimw:I

    sub-int/2addr v5, v6

    sub-int/2addr v5, v2

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-eqz v0, :cond_6

    const/4 v1, -0x1

    if-lt v0, v1, :cond_6

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzekh;->buffer:[B

    array-length v1, v1

    if-gt v0, v1, :cond_6

    if-lez v0, :cond_5

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzekh;->zzakh:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzekh;->zzakh:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzekh;->zzbho()V

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzekh;->zzakh:I

    if-lt v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_5
    return v4

    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzekh;->zzimv:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x5b

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#read(byte[]) returned invalid result: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\nThe InputStream implementation is buggy."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const/16 v1, 0x4d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "refillBuffer() called when "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " bytes were already available in buffer"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final zzgl(I)[B
    .locals 5

    if-nez p1, :cond_0

    sget-object p1, Lcom/google/android/gms/internal/ads/zzeld;->zzimf:[B

    return-object p1

    :cond_0
    if-ltz p1, :cond_7

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzekh;->zzimw:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzekh;->pos:I

    add-int v2, v0, v1

    add-int/2addr v2, p1

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzekc;->zzimn:I

    sub-int v3, v2, v3

    if-gtz v3, :cond_6

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzekh;->zzimu:I

    if-gt v2, v3, :cond_5

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzekh;->zzakh:I

    sub-int/2addr v0, v1

    sub-int v1, p1, v0

    const/16 v2, 0x1000

    if-lt v1, v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzekh;->zzimv:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v2

    if-gt v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1

    :cond_2
    :goto_0
    new-array v1, p1, [B

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzekh;->buffer:[B

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzekh;->pos:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzekh;->zzimw:I

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzekh;->zzakh:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzekh;->zzimw:I

    iput v4, p0, Lcom/google/android/gms/internal/ads/zzekh;->pos:I

    iput v4, p0, Lcom/google/android/gms/internal/ads/zzekh;->zzakh:I

    :goto_1
    if-ge v0, p1, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzekh;->zzimv:Ljava/io/InputStream;

    sub-int v3, p1, v0

    invoke-virtual {v2, v1, v0, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzekh;->zzimw:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/google/android/gms/internal/ads/zzekh;->zzimw:I

    add-int/2addr v0, v2

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzelo;->zzbja()Lcom/google/android/gms/internal/ads/zzelo;

    move-result-object p1

    throw p1

    :cond_4
    return-object v1

    :cond_5
    sub-int/2addr v3, v0

    sub-int/2addr v3, v1

    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/ads/zzekh;->zzgi(I)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzelo;->zzbja()Lcom/google/android/gms/internal/ads/zzelo;

    move-result-object p1

    throw p1

    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzelo;->zzbjg()Lcom/google/android/gms/internal/ads/zzelo;

    move-result-object p1

    throw p1

    :cond_7
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzelo;->zzbjb()Lcom/google/android/gms/internal/ads/zzelo;

    move-result-object p1

    throw p1
.end method

.method private final zzgm(I)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    if-lez p1, :cond_2

    const/16 v1, 0x1000

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    new-array v2, v1, [B

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_1

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzekh;->zzimv:Ljava/io/InputStream;

    sub-int v5, v1, v3

    invoke-virtual {v4, v2, v3, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzekh;->zzimw:I

    add-int/2addr v5, v4

    iput v5, p0, Lcom/google/android/gms/internal/ads/zzekh;->zzimw:I

    add-int/2addr v3, v4

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzelo;->zzbja()Lcom/google/android/gms/internal/ads/zzelo;

    move-result-object p1

    throw p1

    :cond_1
    sub-int/2addr p1, v1

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method


# virtual methods
.method public final readDouble()D
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzekh;->zzbhn()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public final readFloat()F
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzekh;->zzbhm()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public final readString()Ljava/lang/String;
    .locals 5

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzekh;->zzbhk()I

    move-result v0

    if-lez v0, :cond_0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzekh;->zzakh:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzekh;->pos:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzekh;->buffer:[B

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzekh;->pos:I

    sget-object v4, Lcom/google/android/gms/internal/ads/zzeld;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3, v0, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzekh;->pos:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzekh;->pos:I

    return-object v1

    :cond_0
    if-nez v0, :cond_1

    const-string v0, ""

    return-object v0

    :cond_1
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzekh;->zzakh:I

    if-gt v0, v1, :cond_2

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzekh;->zzgj(I)V

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzekh;->buffer:[B

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzekh;->pos:I

    sget-object v4, Lcom/google/android/gms/internal/ads/zzeld;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3, v0, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzekh;->pos:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzekh;->pos:I

    return-object v1

    :cond_2
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/google/android/gms/internal/ads/zzekh;->zzg(IZ)[B

    move-result-object v0

    sget-object v2, Lcom/google/android/gms/internal/ads/zzeld;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v1
.end method

.method public final zzbgs()I
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzekc;->zzbhi()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzekh;->zzimt:I

    return v0

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzekh;->zzbhk()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzekh;->zzimt:I

    ushr-int/lit8 v1, v0, 0x3

    if-eqz v1, :cond_1

    return v0

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzelo;->zzbjd()Lcom/google/android/gms/internal/ads/zzelo;

    move-result-object v0

    throw v0
.end method

.method public final zzbgt()J
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzekh;->zzbhl()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzbgu()J
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzekh;->zzbhl()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzbgv()I
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzekh;->zzbhk()I

    move-result v0

    return v0
.end method

.method public final zzbgw()J
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzekh;->zzbhn()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzbgx()I
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzekh;->zzbhm()I

    move-result v0

    return v0
.end method

.method public final zzbgy()Z
    .locals 5

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzekh;->zzbhl()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzbgz()Ljava/lang/String;
    .locals 5

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzekh;->zzbhk()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzekh;->pos:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzekh;->zzakh:I

    sub-int v3, v2, v1

    const/4 v4, 0x0

    if-gt v0, v3, :cond_0

    if-lez v0, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzekh;->buffer:[B

    add-int v3, v1, v0

    iput v3, p0, Lcom/google/android/gms/internal/ads/zzekh;->pos:I

    goto :goto_1

    :cond_0
    if-nez v0, :cond_1

    const-string v0, ""

    return-object v0

    :cond_1
    if-gt v0, v2, :cond_2

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzekh;->zzgj(I)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzekh;->buffer:[B

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzekh;->pos:I

    goto :goto_0

    :cond_2
    invoke-direct {p0, v0, v4}, Lcom/google/android/gms/internal/ads/zzekh;->zzg(IZ)[B

    move-result-object v2

    :goto_0
    const/4 v1, 0x0

    :goto_1
    invoke-static {v2, v1, v0}, Lcom/google/android/gms/internal/ads/zzeok;->zzo([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzbha()Lcom/google/android/gms/internal/ads/zzejr;
    .locals 6

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzekh;->zzbhk()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzekh;->zzakh:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzekh;->pos:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzekh;->buffer:[B

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzejr;->zzi([BII)Lcom/google/android/gms/internal/ads/zzejr;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzekh;->pos:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzekh;->pos:I

    return-object v1

    :cond_0
    if-nez v0, :cond_1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzejr;->zzilz:Lcom/google/android/gms/internal/ads/zzejr;

    return-object v0

    :cond_1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzekh;->zzgl(I)[B

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzejr;->zzt([B)Lcom/google/android/gms/internal/ads/zzejr;

    move-result-object v0

    return-object v0

    :cond_2
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzekh;->pos:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzekh;->zzakh:I

    sub-int v3, v2, v1

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzekh;->zzimw:I

    add-int/2addr v4, v2

    iput v4, p0, Lcom/google/android/gms/internal/ads/zzekh;->zzimw:I

    const/4 v2, 0x0

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzekh;->pos:I

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzekh;->zzakh:I

    sub-int v4, v0, v3

    invoke-direct {p0, v4}, Lcom/google/android/gms/internal/ads/zzekh;->zzgm(I)Ljava/util/List;

    move-result-object v4

    new-array v0, v0, [B

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzekh;->buffer:[B

    invoke-static {v5, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    array-length v5, v4

    invoke-static {v4, v2, v0, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v4, v4

    add-int/2addr v3, v4

    goto :goto_0

    :cond_3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzejr;->zzu([B)Lcom/google/android/gms/internal/ads/zzejr;

    move-result-object v0

    return-object v0
.end method

.method public final zzbhb()I
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzekh;->zzbhk()I

    move-result v0

    return v0
.end method

.method public final zzbhc()I
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzekh;->zzbhk()I

    move-result v0

    return v0
.end method

.method public final zzbhd()I
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzekh;->zzbhm()I

    move-result v0

    return v0
.end method

.method public final zzbhe()J
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzekh;->zzbhn()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzbhf()I
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzekh;->zzbhk()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzekc;->zzgh(I)I

    move-result v0

    return v0
.end method

.method public final zzbhg()J
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzekh;->zzbhl()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzekc;->zzfg(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzbhh()J
    .locals 6

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x40

    if-ge v2, v3, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzekh;->zzbhp()B

    move-result v3

    and-int/lit8 v4, v3, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v2

    or-long/2addr v0, v4

    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_0

    return-wide v0

    :cond_0
    add-int/lit8 v2, v2, 0x7

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzelo;->zzbjc()Lcom/google/android/gms/internal/ads/zzelo;

    move-result-object v0

    throw v0
.end method

.method public final zzbhi()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzekh;->pos:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzekh;->zzakh:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzekh;->zzgk(I)Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzbhj()I
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzekh;->zzimw:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzekh;->pos:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final zzgd(I)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzekh;->zzimt:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzelo;->zzbje()Lcom/google/android/gms/internal/ads/zzelo;

    move-result-object p1

    throw p1
.end method

.method public final zzge(I)Z
    .locals 5

    and-int/lit8 v0, p1, 0x7

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_6

    if-eq v0, v2, :cond_5

    const/4 v3, 0x2

    if-eq v0, v3, :cond_4

    const/4 v3, 0x4

    const/4 v4, 0x3

    if-eq v0, v4, :cond_2

    if-eq v0, v3, :cond_1

    const/4 p1, 0x5

    if-ne v0, p1, :cond_0

    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/ads/zzekh;->zzgi(I)V

    return v2

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzelo;->zzbjf()Lcom/google/android/gms/internal/ads/zzeln;

    move-result-object p1

    throw p1

    :cond_1
    return v1

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzekc;->zzbgs()I

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzekc;->zzge(I)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_3
    ushr-int/2addr p1, v4

    shl-int/2addr p1, v4

    or-int/2addr p1, v3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzekc;->zzgd(I)V

    return v2

    :cond_4
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzekh;->zzbhk()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzekh;->zzgi(I)V

    return v2

    :cond_5
    const/16 p1, 0x8

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzekh;->zzgi(I)V

    return v2

    :cond_6
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzekh;->zzakh:I

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzekh;->pos:I

    sub-int/2addr p1, v0

    const/16 v0, 0xa

    if-lt p1, v0, :cond_8

    :goto_0
    if-ge v1, v0, :cond_7

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzekh;->buffer:[B

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzekh;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/google/android/gms/internal/ads/zzekh;->pos:I

    aget-byte p1, p1, v3

    if-gez p1, :cond_9

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_7
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzelo;->zzbjc()Lcom/google/android/gms/internal/ads/zzelo;

    move-result-object p1

    throw p1

    :cond_8
    :goto_1
    if-ge v1, v0, :cond_a

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzekh;->zzbhp()B

    move-result p1

    if-gez p1, :cond_9

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_9
    return v2

    :cond_a
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzelo;->zzbjc()Lcom/google/android/gms/internal/ads/zzelo;

    move-result-object p1

    throw p1
.end method

.method public final zzgf(I)I
    .locals 2

    if-ltz p1, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzekh;->zzimw:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzekh;->pos:I

    add-int/2addr v0, v1

    add-int/2addr p1, v0

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzekh;->zzimu:I

    if-gt p1, v0, :cond_0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzekh;->zzimu:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzekh;->zzbho()V

    return v0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzelo;->zzbja()Lcom/google/android/gms/internal/ads/zzelo;

    move-result-object p1

    throw p1

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzelo;->zzbjb()Lcom/google/android/gms/internal/ads/zzelo;

    move-result-object p1

    throw p1
.end method

.method public final zzgg(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzekh;->zzimu:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzekh;->zzbho()V

    return-void
.end method
