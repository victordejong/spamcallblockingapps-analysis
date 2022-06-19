.class public final Lcom/facebook/ads/redexgen/X/BD;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/BF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AudioTimestampV19"
.end annotation


# static fields
.field public static A05:[Ljava/lang/String;


# instance fields
.field public A00:J

.field public A01:J

.field public A02:J

.field public final A03:Landroid/media/AudioTimestamp;

.field public final A04:Landroid/media/AudioTrack;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/BD;->A00()V

    return-void
.end method

.method public constructor <init>(Landroid/media/AudioTrack;)V
    .locals 1

    .line 22398
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22399
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/BD;->A04:Landroid/media/AudioTrack;

    .line 22400
    new-instance v0, Landroid/media/AudioTimestamp;

    invoke-direct {v0}, Landroid/media/AudioTimestamp;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/BD;->A03:Landroid/media/AudioTimestamp;

    .line 22401
    return-void
.end method

.method public static A00()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "wr1HWVEpzW3H"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "x7l4nCvi4e9mHbXumwC5kjKeB395smlc"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "v4fkIvfSEHFrSodkE6KJGYQhzO8cvX1i"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "P7sBNeN2uSnno9lRKe01ccs541zMBx5W"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "EYTbDNFKvrt2Tm2UMjjehvUzKk6LNwnV"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "jzE1r"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "chRRF"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "UqFDXMl9PXkX"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/BD;->A05:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A01()J
    .locals 2

    .line 22402
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/BD;->A00:J

    return-wide v0
.end method

.method public final A02()J
    .locals 4

    .line 22403
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BD;->A03:Landroid/media/AudioTimestamp;

    iget-wide v2, v0, Landroid/media/AudioTimestamp;->nanoTime:J

    const-wide/16 v0, 0x3e8

    div-long/2addr v2, v0

    return-wide v2
.end method

.method public final A03()Z
    .locals 7

    .line 22404
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/BD;->A04:Landroid/media/AudioTrack;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BD;->A03:Landroid/media/AudioTimestamp;

    invoke-virtual {v1, v0}, Landroid/media/AudioTrack;->getTimestamp(Landroid/media/AudioTimestamp;)Z

    move-result v6

    .line 22405
    .local p0, "updated":Z
    if-eqz v6, :cond_2

    .line 22406
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BD;->A03:Landroid/media/AudioTimestamp;

    iget-wide v4, v0, Landroid/media/AudioTimestamp;->framePosition:J

    .line 22407
    .local v1, "rawPositionFrames":J
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/BD;->A01:J

    cmp-long v3, v0, v4

    sget-object v1, Lcom/facebook/ads/redexgen/X/BD;->A05:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/16 v0, 0x1a

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x7a

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/BD;->A05:[Ljava/lang/String;

    const-string v1, ""

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-lez v3, :cond_1

    .line 22408
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/BD;->A02:J

    const-wide/16 v0, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/BD;->A02:J

    .line 22409
    :cond_1
    iput-wide v4, p0, Lcom/facebook/ads/redexgen/X/BD;->A01:J

    .line 22410
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/BD;->A02:J

    const/16 v0, 0x20

    shl-long/2addr v1, v0

    add-long/2addr v1, v4

    iput-wide v1, p0, Lcom/facebook/ads/redexgen/X/BD;->A00:J

    .line 22411
    .end local v1    # "rawPositionFrames":J
    :cond_2
    return v6
.end method
