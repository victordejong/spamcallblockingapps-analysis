.class public final Lcom/facebook/ads/redexgen/X/FC;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/FE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MediaPeriodId"
.end annotation


# instance fields
.field public final A00:I

.field public final A01:I

.field public final A02:I

.field public final A03:J


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 32422
    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/facebook/ads/redexgen/X/FC;-><init>(IJ)V

    .line 32423
    return-void
.end method

.method public constructor <init>(IIIJ)V
    .locals 0

    .line 32424
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32425
    iput p1, p0, Lcom/facebook/ads/redexgen/X/FC;->A02:I

    .line 32426
    iput p2, p0, Lcom/facebook/ads/redexgen/X/FC;->A00:I

    .line 32427
    iput p3, p0, Lcom/facebook/ads/redexgen/X/FC;->A01:I

    .line 32428
    iput-wide p4, p0, Lcom/facebook/ads/redexgen/X/FC;->A03:J

    .line 32429
    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 6

    .line 32430
    const/4 v2, -0x1

    const/4 v3, -0x1

    move-object v0, p0

    move-wide v4, p2

    move v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/FC;-><init>(IIIJ)V

    .line 32431
    return-void
.end method


# virtual methods
.method public final A00(I)Lcom/facebook/ads/redexgen/X/FC;
    .locals 6

    .line 32432
    iget v0, p0, Lcom/facebook/ads/redexgen/X/FC;->A02:I

    move v1, p1

    if-ne v0, v1, :cond_0

    .line 32433
    move-object v0, p0

    .line 32434
    :goto_0
    return-object v0

    .line 32435
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/FC;

    iget v2, p0, Lcom/facebook/ads/redexgen/X/FC;->A00:I

    iget v3, p0, Lcom/facebook/ads/redexgen/X/FC;->A01:I

    iget-wide v4, p0, Lcom/facebook/ads/redexgen/X/FC;->A03:J

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/FC;-><init>(IIIJ)V

    goto :goto_0
.end method

.method public final A01()Z
    .locals 2

    .line 32436
    iget v1, p0, Lcom/facebook/ads/redexgen/X/FC;->A00:I

    const/4 v0, -0x1

    if-eq v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 32437
    const/4 v5, 0x1

    if-ne p0, p1, :cond_0

    .line 32438
    return v5

    .line 32439
    :cond_0
    const/4 v2, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-eq v1, v0, :cond_2

    .line 32440
    .end local v5
    :cond_1
    return v2

    .line 32441
    :cond_2
    check-cast p1, Lcom/facebook/ads/redexgen/X/FC;

    .line 32442
    .local v5, "periodId":Lcom/facebook/ads/redexgen/X/FC;
    iget v1, p0, Lcom/facebook/ads/redexgen/X/FC;->A02:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/FC;->A02:I

    if-ne v1, v0, :cond_3

    iget v1, p0, Lcom/facebook/ads/redexgen/X/FC;->A00:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/FC;->A00:I

    if-ne v1, v0, :cond_3

    iget v1, p0, Lcom/facebook/ads/redexgen/X/FC;->A01:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/FC;->A01:I

    if-ne v1, v0, :cond_3

    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/FC;->A03:J

    iget-wide v1, p1, Lcom/facebook/ads/redexgen/X/FC;->A03:J

    cmp-long v0, v3, v1

    if-nez v0, :cond_3

    :goto_0
    return v5

    :cond_3
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 4

    .line 32443
    const/16 v0, 0x11

    .line 32444
    .local p0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v0, p0, Lcom/facebook/ads/redexgen/X/FC;->A02:I

    add-int/2addr v1, v0

    .line 32445
    .end local p0    # "result":I
    .local v0, "result":I
    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lcom/facebook/ads/redexgen/X/FC;->A00:I

    add-int/2addr v1, v0

    .line 32446
    .end local v0    # "result":I
    .restart local p0    # "result":I
    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lcom/facebook/ads/redexgen/X/FC;->A01:I

    add-int/2addr v1, v0

    .line 32447
    .end local p0    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v3, v1, 0x1f

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/FC;->A03:J

    long-to-int v0, v1

    add-int/2addr v3, v0

    .line 32448
    .end local v0    # "result":I
    .restart local p0    # "result":I
    return v3
.end method
