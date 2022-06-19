.class public final Lcom/facebook/ads/redexgen/X/26;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/27;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Metric"
.end annotation


# instance fields
.field public A00:D

.field public A01:D

.field public A02:D

.field public A03:D

.field public A04:D

.field public A05:D

.field public A06:D

.field public A07:D

.field public A08:D

.field public A09:D

.field public A0A:I


# direct methods
.method public constructor <init>(D)V
    .locals 0

    .line 4281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4282
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/26;->A04:D

    .line 4283
    return-void
.end method


# virtual methods
.method public final A00()D
    .locals 2

    .line 4284
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/26;->A00:D

    return-wide v0
.end method

.method public final A01()D
    .locals 2

    .line 4285
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/26;->A03:D

    return-wide v0
.end method

.method public final A02()D
    .locals 2

    .line 4286
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/26;->A05:D

    return-wide v0
.end method

.method public final A03()D
    .locals 2

    .line 4287
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/26;->A06:D

    return-wide v0
.end method

.method public final A04()D
    .locals 2

    .line 4288
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/26;->A07:D

    return-wide v0
.end method

.method public final A05()D
    .locals 2

    .line 4289
    iget v0, p0, Lcom/facebook/ads/redexgen/X/26;->A0A:I

    if-nez v0, :cond_0

    .line 4290
    const-wide/16 v0, 0x0

    return-wide v0

    .line 4291
    :cond_0
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/26;->A08:D

    return-wide v0
.end method

.method public final A06()V
    .locals 4

    .line 4292
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/26;->A00:D

    .line 4293
    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/26;->A02:D

    .line 4294
    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/26;->A03:D

    .line 4295
    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/26;->A05:D

    .line 4296
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/26;->A0A:I

    .line 4297
    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/26;->A07:D

    .line 4298
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/26;->A08:D

    .line 4299
    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/26;->A09:D

    .line 4300
    return-void
.end method

.method public final A07()V
    .locals 2

    .line 4301
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/26;->A01:D

    .line 4302
    return-void
.end method

.method public final A08(DD)V
    .locals 4

    .line 4303
    iget v0, p0, Lcom/facebook/ads/redexgen/X/26;->A0A:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/26;->A0A:I

    .line 4304
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/26;->A07:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/26;->A07:D

    .line 4305
    iput-wide p3, p0, Lcom/facebook/ads/redexgen/X/26;->A02:D

    .line 4306
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/26;->A09:D

    mul-double v0, p3, p1

    add-double/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/26;->A09:D

    .line 4307
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/26;->A09:D

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/26;->A07:D

    div-double/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/26;->A00:D

    .line 4308
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/26;->A08:D

    invoke-static {v0, v1, p3, p4}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/26;->A08:D

    .line 4309
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/26;->A05:D

    invoke-static {v0, v1, p3, p4}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/26;->A05:D

    .line 4310
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/26;->A04:D

    cmpl-double v0, p3, v1

    if-ltz v0, :cond_0

    .line 4311
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/26;->A03:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/26;->A03:D

    .line 4312
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/26;->A01:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/26;->A01:D

    .line 4313
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/26;->A06:D

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/26;->A01:D

    .line 4314
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/26;->A06:D

    .line 4315
    :goto_0
    return-void

    .line 4316
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/26;->A01:D

    goto :goto_0
.end method
