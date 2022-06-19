.class public final Lcom/facebook/ads/redexgen/X/BF;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/BD;,
        Lcom/facebook/ads/internal/exoplayer2/audio/AudioTimestampPoller$State;
    }
.end annotation


# static fields
.field public static A06:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:J

.field public A02:J

.field public A03:J

.field public A04:J

.field public final A05:Lcom/facebook/ads/redexgen/X/BD;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/BF;->A00()V

    return-void
.end method

.method public constructor <init>(Landroid/media/AudioTrack;)V
    .locals 2

    .line 22419
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22420
    sget v1, Lcom/facebook/ads/redexgen/X/Ic;->A02:I

    const/16 v0, 0x13

    if-lt v1, v0, :cond_0

    .line 22421
    new-instance v0, Lcom/facebook/ads/redexgen/X/BD;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/BD;-><init>(Landroid/media/AudioTrack;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/BF;->A05:Lcom/facebook/ads/redexgen/X/BD;

    .line 22422
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/BF;->A06()V

    .line 22423
    :goto_0
    return-void

    .line 22424
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/BF;->A05:Lcom/facebook/ads/redexgen/X/BD;

    .line 22425
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/BF;->A01(I)V

    goto :goto_0
.end method

.method public static A00()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "SHU0wW4MmCfNoOfOhe2G3SISBOUTgMNf"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "URv59VLi544NxlEpQzQEj29h2pcSepQW"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "o8uftdfyijoE6POwr5l7v3fYmOg2nmqm"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "cl7r9HP0HoemQbXkbCX83B9NqeRJDV5N"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "CG71aFpwsokZKXLSCMbr8zEhtikK9QCs"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "JBR77gbmjj8vAgDgqQR6HjC3pFNY2wZv"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "sg8ARdXgVUwLO3AbI6pt"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "lbHDrsBCfBY9TPebisEBEhqeEMZuG3jZ"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/BF;->A06:[Ljava/lang/String;

    return-void
.end method

.method private A01(I)V
    .locals 6

    .line 22426
    iput p1, p0, Lcom/facebook/ads/redexgen/X/BF;->A00:I

    .line 22427
    const-wide/16 v4, 0x1388

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    .line 22428
    const-wide/32 v0, 0x7a120

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/BF;->A04:J

    .line 22429
    :goto_0
    return-void

    .line 22430
    :cond_0
    const-wide/32 v0, 0x989680

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/BF;->A04:J

    .line 22431
    goto :goto_0

    .line 22432
    :cond_1
    iput-wide v4, p0, Lcom/facebook/ads/redexgen/X/BF;->A04:J

    .line 22433
    goto :goto_0

    .line 22434
    :cond_2
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/BF;->A03:J

    .line 22435
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/BF;->A01:J

    .line 22436
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    const-wide/16 v0, 0x3e8

    div-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/BF;->A02:J

    .line 22437
    iput-wide v4, p0, Lcom/facebook/ads/redexgen/X/BF;->A04:J

    .line 22438
    goto :goto_0

    .line 22439
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method


# virtual methods
.method public final A02()J
    .locals 2

    .line 22440
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BF;->A05:Lcom/facebook/ads/redexgen/X/BD;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/BD;->A01()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public final A03()J
    .locals 2

    .line 22441
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BF;->A05:Lcom/facebook/ads/redexgen/X/BD;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/BD;->A02()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_0
.end method

.method public final A04()V
    .locals 2

    .line 22442
    iget v1, p0, Lcom/facebook/ads/redexgen/X/BF;->A00:I

    const/4 v0, 0x4

    if-ne v1, v0, :cond_0

    .line 22443
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/BF;->A06()V

    .line 22444
    :cond_0
    return-void
.end method

.method public final A05()V
    .locals 1

    .line 22445
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/BF;->A01(I)V

    .line 22446
    return-void
.end method

.method public final A06()V
    .locals 1

    .line 22447
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BF;->A05:Lcom/facebook/ads/redexgen/X/BD;

    if-eqz v0, :cond_0

    .line 22448
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/BF;->A01(I)V

    .line 22449
    :cond_0
    return-void
.end method

.method public final A07()Z
    .locals 3

    .line 22450
    iget v2, p0, Lcom/facebook/ads/redexgen/X/BF;->A00:I

    const/4 v1, 0x1

    if-eq v2, v1, :cond_0

    const/4 v0, 0x2

    if-ne v2, v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final A08()Z
    .locals 2

    .line 22451
    iget v1, p0, Lcom/facebook/ads/redexgen/X/BF;->A00:I

    const/4 v0, 0x2

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A09(J)Z
    .locals 7

    .line 22452
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/BF;->A05:Lcom/facebook/ads/redexgen/X/BD;

    if-eqz v5, :cond_0

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/BF;->A03:J

    sub-long v3, p1, v0

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/BF;->A04:J

    cmp-long v0, v3, v1

    if-gez v0, :cond_1

    .line 22453
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/BF;
    :cond_0
    const/4 v3, 0x0

    sget-object v1, Lcom/facebook/ads/redexgen/X/BF;->A06:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x48

    if-eq v1, v0, :cond_8

    sget-object v2, Lcom/facebook/ads/redexgen/X/BF;->A06:[Ljava/lang/String;

    const-string v1, "Sz20nayKh9t7UEz5LpxHOwJvNNsKSQrW"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "HmM06965yKVgbIZrKrCybuNDMGabx57J"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    return v3

    .line 22454
    :cond_1
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/BF;->A03:J

    .line 22455
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/BD;->A03()Z

    move-result v6

    .line 22456
    .local p0, "updatedTimestamp":Z
    iget v1, p0, Lcom/facebook/ads/redexgen/X/BF;->A00:I

    const/4 v4, 0x3

    const/4 v3, 0x1

    if-eqz v1, :cond_7

    const/4 v5, 0x2

    if-eq v1, v3, :cond_5

    if-eq v1, v5, :cond_4

    if-eq v1, v4, :cond_3

    const/4 v0, 0x4

    if-ne v1, v0, :cond_c

    .line 22457
    :cond_2
    :goto_0
    return v6

    .line 22458
    :cond_3
    if-eqz v6, :cond_2

    .line 22459
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/BF;->A06()V

    goto :goto_0

    .line 22460
    :cond_4
    if-nez v6, :cond_2

    .line 22461
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/BF;->A06()V

    goto :goto_0

    .line 22462
    :cond_5
    if-eqz v6, :cond_6

    .line 22463
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BF;->A05:Lcom/facebook/ads/redexgen/X/BD;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/BD;->A01()J

    move-result-wide v3

    .line 22464
    .local p1, "timestampPositionFrames":J
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/BF;->A01:J

    cmp-long v0, v3, v1

    if-lez v0, :cond_2

    .line 22465
    invoke-direct {p0, v5}, Lcom/facebook/ads/redexgen/X/BF;->A01(I)V

    goto :goto_0

    .line 22466
    :cond_6
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/BF;->A06()V

    .line 22467
    goto :goto_0

    .line 22468
    :cond_7
    if-eqz v6, :cond_b

    .line 22469
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BF;->A05:Lcom/facebook/ads/redexgen/X/BD;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/BD;->A02()J

    move-result-wide v4

    sget-object v2, Lcom/facebook/ads/redexgen/X/BF;->A06:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/16 v0, 0x19

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_9

    :cond_8
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_9
    sget-object v2, Lcom/facebook/ads/redexgen/X/BF;->A06:[Ljava/lang/String;

    const-string v1, "vRBv59GBt5xljVW1XVRQp4i1xOhsrDRO"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "gKn7JDYPswzsl8Lco6azrnSDrOlOSg3J"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/BF;->A02:J

    cmp-long v0, v4, v1

    if-ltz v0, :cond_a

    .line 22470
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BF;->A05:Lcom/facebook/ads/redexgen/X/BD;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/BD;->A01()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/BF;->A01:J

    .line 22471
    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/BF;->A01(I)V

    goto :goto_0

    .line 22472
    :cond_a
    const/4 v6, 0x0

    goto :goto_0

    .line 22473
    :cond_b
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/BF;->A02:J

    sub-long/2addr p1, v0

    const-wide/32 v1, 0x7a120

    cmp-long v0, p1, v1

    if-lez v0, :cond_2

    .line 22474
    invoke-direct {p0, v4}, Lcom/facebook/ads/redexgen/X/BF;->A01(I)V

    goto :goto_0

    .line 22475
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
