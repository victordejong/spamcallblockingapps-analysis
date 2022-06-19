.class public final Lcom/google/android/gms/internal/gtm/zzqg;
.super Lcom/google/android/gms/internal/gtm/zzqe;
.source ""


# instance fields
.field private final buffer:[B

.field private limit:I

.field private pos:I

.field private final zzawk:Z

.field private zzawl:I

.field private zzawm:I

.field private zzawn:I

.field private zzawo:I


# direct methods
.method private constructor <init>([BIIZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gtm/zzqe;-><init>(Lcom/google/android/gms/internal/gtm/zzqf;)V

    const v0, 0x7fffffff

    iput v0, p0, Lcom/google/android/gms/internal/gtm/zzqg;->zzawo:I

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzqg;->buffer:[B

    add-int/2addr p3, p2

    iput p3, p0, Lcom/google/android/gms/internal/gtm/zzqg;->limit:I

    iput p2, p0, Lcom/google/android/gms/internal/gtm/zzqg;->pos:I

    iput p2, p0, Lcom/google/android/gms/internal/gtm/zzqg;->zzawm:I

    iput-boolean p4, p0, Lcom/google/android/gms/internal/gtm/zzqg;->zzawk:Z

    return-void
.end method

.method public synthetic constructor <init>([BIIZLcom/google/android/gms/internal/gtm/zzqf;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/gtm/zzqg;-><init>([BIIZ)V

    return-void
.end method

.method private final zzoa()I
    .locals 5

    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzqg;->pos:I

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzqg;->limit:I

    if-eq v1, v0, :cond_6

    iget-object v2, p0, Lcom/google/android/gms/internal/gtm/zzqg;->buffer:[B

    add-int/lit8 v3, v0, 0x1

    aget-byte v0, v2, v0

    if-ltz v0, :cond_0

    iput v3, p0, Lcom/google/android/gms/internal/gtm/zzqg;->pos:I

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
    iput v1, p0, Lcom/google/android/gms/internal/gtm/zzqg;->pos:I

    return v0

    :cond_6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzqe;->zznx()J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method private final zzob()J
    .locals 11

    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzqg;->pos:I

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzqg;->limit:I

    if-eq v1, v0, :cond_9

    iget-object v2, p0, Lcom/google/android/gms/internal/gtm/zzqg;->buffer:[B

    add-int/lit8 v3, v0, 0x1

    aget-byte v0, v2, v0

    if-ltz v0, :cond_0

    iput v3, p0, Lcom/google/android/gms/internal/gtm/zzqg;->pos:I

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
    iput v1, p0, Lcom/google/android/gms/internal/gtm/zzqg;->pos:I

    return-wide v2

    :cond_9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzqe;->zznx()J

    move-result-wide v0

    return-wide v0
.end method

.method private final zzoc()I
    .locals 4

    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzqg;->pos:I

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzqg;->limit:I

    sub-int/2addr v1, v0

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzqg;->buffer:[B

    add-int/lit8 v2, v0, 0x4

    iput v2, p0, Lcom/google/android/gms/internal/gtm/zzqg;->pos:I

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

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzrk;->zzpp()Lcom/google/android/gms/internal/gtm/zzrk;

    move-result-object v0

    throw v0
.end method

.method private final zzod()J
    .locals 9

    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzqg;->pos:I

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzqg;->limit:I

    sub-int/2addr v1, v0

    const/16 v2, 0x8

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzqg;->buffer:[B

    add-int/lit8 v3, v0, 0x8

    iput v3, p0, Lcom/google/android/gms/internal/gtm/zzqg;->pos:I

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

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzrk;->zzpp()Lcom/google/android/gms/internal/gtm/zzrk;

    move-result-object v0

    throw v0
.end method

.method private final zzoe()V
    .locals 3

    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzqg;->limit:I

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzqg;->zzawl:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/gtm/zzqg;->limit:I

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzqg;->zzawm:I

    sub-int v1, v0, v1

    iget v2, p0, Lcom/google/android/gms/internal/gtm/zzqg;->zzawo:I

    if-le v1, v2, :cond_0

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/gms/internal/gtm/zzqg;->zzawl:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/gtm/zzqg;->limit:I

    return-void

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/gtm/zzqg;->zzawl:I

    return-void
.end method

.method private final zzof()B
    .locals 3

    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzqg;->pos:I

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzqg;->limit:I

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzqg;->buffer:[B

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/gtm/zzqg;->pos:I

    aget-byte v0, v1, v0

    return v0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzrk;->zzpp()Lcom/google/android/gms/internal/gtm/zzrk;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public final readDouble()D
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzqg;->zzod()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public final readFloat()F
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzqg;->zzoc()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public final readString()Ljava/lang/String;
    .locals 5

    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzqg;->zzoa()I

    move-result v0

    if-lez v0, :cond_0

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzqg;->limit:I

    iget v2, p0, Lcom/google/android/gms/internal/gtm/zzqg;->pos:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/gtm/zzqg;->buffer:[B

    iget v3, p0, Lcom/google/android/gms/internal/gtm/zzqg;->pos:I

    sget-object v4, Lcom/google/android/gms/internal/gtm/zzre;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3, v0, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iget v2, p0, Lcom/google/android/gms/internal/gtm/zzqg;->pos:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/android/gms/internal/gtm/zzqg;->pos:I

    return-object v1

    :cond_0
    if-nez v0, :cond_1

    const-string v0, ""

    return-object v0

    :cond_1
    if-gez v0, :cond_2

    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzrk;->zzpq()Lcom/google/android/gms/internal/gtm/zzrk;

    move-result-object v0

    throw v0

    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzrk;->zzpp()Lcom/google/android/gms/internal/gtm/zzrk;

    move-result-object v0

    throw v0
.end method

.method public final zza(Lcom/google/android/gms/internal/gtm/zzsu;Lcom/google/android/gms/internal/gtm/zzqp;)Lcom/google/android/gms/internal/gtm/zzsk;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/android/gms/internal/gtm/zzsk;",
            ">(",
            "Lcom/google/android/gms/internal/gtm/zzsu<",
            "TT;>;",
            "Lcom/google/android/gms/internal/gtm/zzqp;",
            ")TT;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzqg;->zzoa()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzqe;->zzawf:I

    iget v2, p0, Lcom/google/android/gms/internal/gtm/zzqe;->zzawg:I

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zzaq(I)I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzqe;->zzawf:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/gtm/zzqe;->zzawf:I

    invoke-interface {p1, p0, p2}, Lcom/google/android/gms/internal/gtm/zzsu;->zza(Lcom/google/android/gms/internal/gtm/zzqe;Lcom/google/android/gms/internal/gtm/zzqp;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/gtm/zzsk;

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/gtm/zzqe;->zzan(I)V

    iget p2, p0, Lcom/google/android/gms/internal/gtm/zzqe;->zzawf:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p0, Lcom/google/android/gms/internal/gtm/zzqe;->zzawf:I

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zzar(I)V

    return-object p1

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzrk;->zzpu()Lcom/google/android/gms/internal/gtm/zzrk;

    move-result-object p1

    throw p1
.end method

.method public final zzan(I)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzqg;->zzawn:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzrk;->zzps()Lcom/google/android/gms/internal/gtm/zzrk;

    move-result-object p1

    throw p1
.end method

.method public final zzao(I)Z
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

    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/gtm/zzqe;->zzas(I)V

    return v2

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzrk;->zzpt()Lcom/google/android/gms/internal/gtm/zzrl;

    move-result-object p1

    throw p1

    :cond_1
    return v1

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzqe;->zzni()I

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zzao(I)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_3
    ushr-int/2addr p1, v4

    shl-int/2addr p1, v4

    or-int/2addr p1, v3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/gtm/zzqe;->zzan(I)V

    return v2

    :cond_4
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzqg;->zzoa()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/gtm/zzqe;->zzas(I)V

    return v2

    :cond_5
    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/gtm/zzqe;->zzas(I)V

    return v2

    :cond_6
    iget p1, p0, Lcom/google/android/gms/internal/gtm/zzqg;->limit:I

    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzqg;->pos:I

    sub-int/2addr p1, v0

    const/16 v0, 0xa

    if-lt p1, v0, :cond_8

    :goto_0
    if-ge v1, v0, :cond_7

    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzqg;->buffer:[B

    iget v3, p0, Lcom/google/android/gms/internal/gtm/zzqg;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/google/android/gms/internal/gtm/zzqg;->pos:I

    aget-byte p1, p1, v3

    if-gez p1, :cond_9

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_7
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzrk;->zzpr()Lcom/google/android/gms/internal/gtm/zzrk;

    move-result-object p1

    throw p1

    :cond_8
    :goto_1
    if-ge v1, v0, :cond_a

    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzqg;->zzof()B

    move-result p1

    if-gez p1, :cond_9

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_9
    return v2

    :cond_a
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzrk;->zzpr()Lcom/google/android/gms/internal/gtm/zzrk;

    move-result-object p1

    throw p1
.end method

.method public final zzaq(I)I
    .locals 1

    if-ltz p1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzqe;->zznz()I

    move-result v0

    add-int/2addr p1, v0

    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzqg;->zzawo:I

    if-gt p1, v0, :cond_0

    iput p1, p0, Lcom/google/android/gms/internal/gtm/zzqg;->zzawo:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzqg;->zzoe()V

    return v0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzrk;->zzpp()Lcom/google/android/gms/internal/gtm/zzrk;

    move-result-object p1

    throw p1

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzrk;->zzpq()Lcom/google/android/gms/internal/gtm/zzrk;

    move-result-object p1

    throw p1
.end method

.method public final zzar(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/gtm/zzqg;->zzawo:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzqg;->zzoe()V

    return-void
.end method

.method public final zzas(I)V
    .locals 2

    if-ltz p1, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzqg;->limit:I

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzqg;->pos:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_0

    add-int/2addr v1, p1

    iput v1, p0, Lcom/google/android/gms/internal/gtm/zzqg;->pos:I

    return-void

    :cond_0
    if-gez p1, :cond_1

    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzrk;->zzpq()Lcom/google/android/gms/internal/gtm/zzrk;

    move-result-object p1

    throw p1

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzrk;->zzpp()Lcom/google/android/gms/internal/gtm/zzrk;

    move-result-object p1

    throw p1
.end method

.method public final zzni()I
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzqe;->zzny()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/gtm/zzqg;->zzawn:I

    return v0

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzqg;->zzoa()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/gtm/zzqg;->zzawn:I

    ushr-int/lit8 v1, v0, 0x3

    if-eqz v1, :cond_1

    return v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/gtm/zzrk;

    const-string v1, "Protocol message contained an invalid tag (zero)."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/gtm/zzrk;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zznj()J
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzqg;->zzob()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zznk()J
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzqg;->zzob()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zznl()I
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzqg;->zzoa()I

    move-result v0

    return v0
.end method

.method public final zznm()J
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzqg;->zzod()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zznn()I
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzqg;->zzoc()I

    move-result v0

    return v0
.end method

.method public final zzno()Z
    .locals 5

    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzqg;->zzob()J

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

.method public final zznp()Ljava/lang/String;
    .locals 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzqg;->zzoa()I

    move-result v0

    if-lez v0, :cond_0

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzqg;->limit:I

    iget v2, p0, Lcom/google/android/gms/internal/gtm/zzqg;->pos:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzqg;->buffer:[B

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/gtm/zztz;->zzh([BII)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/internal/gtm/zzqg;->pos:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/android/gms/internal/gtm/zzqg;->pos:I

    return-object v1

    :cond_0
    if-nez v0, :cond_1

    const-string v0, ""

    return-object v0

    :cond_1
    if-gtz v0, :cond_2

    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzrk;->zzpq()Lcom/google/android/gms/internal/gtm/zzrk;

    move-result-object v0

    throw v0

    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzrk;->zzpp()Lcom/google/android/gms/internal/gtm/zzrk;

    move-result-object v0

    throw v0
.end method

.method public final zznq()Lcom/google/android/gms/internal/gtm/zzps;
    .locals 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzqg;->zzoa()I

    move-result v0

    if-lez v0, :cond_0

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzqg;->limit:I

    iget v2, p0, Lcom/google/android/gms/internal/gtm/zzqg;->pos:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzqg;->buffer:[B

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/gtm/zzps;->zzb([BII)Lcom/google/android/gms/internal/gtm/zzps;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/internal/gtm/zzqg;->pos:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/android/gms/internal/gtm/zzqg;->pos:I

    return-object v1

    :cond_0
    if-nez v0, :cond_1

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzps;->zzavx:Lcom/google/android/gms/internal/gtm/zzps;

    return-object v0

    :cond_1
    if-lez v0, :cond_2

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzqg;->limit:I

    iget v2, p0, Lcom/google/android/gms/internal/gtm/zzqg;->pos:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_2

    add-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/gms/internal/gtm/zzqg;->pos:I

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzqg;->buffer:[B

    invoke-static {v1, v2, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    goto :goto_0

    :cond_2
    if-gtz v0, :cond_4

    if-nez v0, :cond_3

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzre;->zzbbh:[B

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzps;->zzf([B)Lcom/google/android/gms/internal/gtm/zzps;

    move-result-object v0

    return-object v0

    :cond_3
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzrk;->zzpq()Lcom/google/android/gms/internal/gtm/zzrk;

    move-result-object v0

    throw v0

    :cond_4
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzrk;->zzpp()Lcom/google/android/gms/internal/gtm/zzrk;

    move-result-object v0

    throw v0
.end method

.method public final zznr()I
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzqg;->zzoa()I

    move-result v0

    return v0
.end method

.method public final zzns()I
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzqg;->zzoa()I

    move-result v0

    return v0
.end method

.method public final zznt()I
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzqg;->zzoc()I

    move-result v0

    return v0
.end method

.method public final zznu()J
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzqg;->zzod()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zznv()I
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzqg;->zzoa()I

    move-result v0

    ushr-int/lit8 v1, v0, 0x1

    and-int/lit8 v0, v0, 0x1

    neg-int v0, v0

    xor-int/2addr v0, v1

    return v0
.end method

.method public final zznw()J
    .locals 6

    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzqg;->zzob()J

    move-result-wide v0

    const/4 v2, 0x1

    ushr-long v2, v0, v2

    const-wide/16 v4, 0x1

    and-long/2addr v0, v4

    neg-long v0, v0

    xor-long/2addr v0, v2

    return-wide v0
.end method

.method public final zznx()J
    .locals 6

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x40

    if-ge v2, v3, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzqg;->zzof()B

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
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzrk;->zzpr()Lcom/google/android/gms/internal/gtm/zzrk;

    move-result-object v0

    throw v0
.end method

.method public final zzny()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzqg;->pos:I

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzqg;->limit:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zznz()I
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzqg;->pos:I

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzqg;->zzawm:I

    sub-int/2addr v0, v1

    return v0
.end method
