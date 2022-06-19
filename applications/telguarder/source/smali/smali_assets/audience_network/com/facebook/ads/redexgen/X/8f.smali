.class public final Lcom/facebook/ads/redexgen/X/8f;
.super Ljava/lang/Exception;
.source ""


# instance fields
.field public A00:I

.field public A01:I

.field public A02:Lorg/json/JSONObject;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A03:Z

.field public A04:Z

.field public A05:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 18438
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 18439
    const/4 v1, 0x0

    iput v1, p0, Lcom/facebook/ads/redexgen/X/8f;->A00:I

    .line 18440
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/8f;->A05:Z

    .line 18441
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/8f;->A04:Z

    .line 18442
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/8f;->A03:Z

    .line 18443
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/8f;->A01:I

    .line 18444
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 18445
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 18446
    const/4 v1, 0x0

    iput v1, p0, Lcom/facebook/ads/redexgen/X/8f;->A00:I

    .line 18447
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/8f;->A05:Z

    .line 18448
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/8f;->A04:Z

    .line 18449
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/8f;->A03:Z

    .line 18450
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/8f;->A01:I

    .line 18451
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 2

    .line 18452
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 18453
    const/4 v1, 0x0

    iput v1, p0, Lcom/facebook/ads/redexgen/X/8f;->A00:I

    .line 18454
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/8f;->A05:Z

    .line 18455
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/8f;->A04:Z

    .line 18456
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/8f;->A03:Z

    .line 18457
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/8f;->A01:I

    .line 18458
    return-void
.end method


# virtual methods
.method public final A00()I
    .locals 1

    .line 18459
    iget v0, p0, Lcom/facebook/ads/redexgen/X/8f;->A00:I

    return v0
.end method

.method public final A01()I
    .locals 1

    .line 18460
    iget v0, p0, Lcom/facebook/ads/redexgen/X/8f;->A01:I

    return v0
.end method

.method public final A02()Lorg/json/JSONObject;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 18461
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8f;->A02:Lorg/json/JSONObject;

    return-object v0
.end method

.method public final A03(I)V
    .locals 0

    .line 18462
    iput p1, p0, Lcom/facebook/ads/redexgen/X/8f;->A00:I

    .line 18463
    return-void
.end method

.method public final A04(I)V
    .locals 0

    .line 18464
    iput p1, p0, Lcom/facebook/ads/redexgen/X/8f;->A01:I

    .line 18465
    return-void
.end method

.method public final A05(Lorg/json/JSONObject;)V
    .locals 0
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 18466
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/8f;->A02:Lorg/json/JSONObject;

    .line 18467
    return-void
.end method

.method public final A06(Z)V
    .locals 0

    .line 18468
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/8f;->A04:Z

    .line 18469
    return-void
.end method

.method public final A07(Z)V
    .locals 0

    .line 18470
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/8f;->A03:Z

    .line 18471
    return-void
.end method

.method public final A08(Z)V
    .locals 0

    .line 18472
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/8f;->A05:Z

    .line 18473
    return-void
.end method

.method public final A09()Z
    .locals 1

    .line 18474
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/8f;->A04:Z

    return v0
.end method

.method public final A0A()Z
    .locals 1

    .line 18475
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/8f;->A03:Z

    return v0
.end method

.method public final A0B()Z
    .locals 1

    .line 18476
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/8f;->A05:Z

    return v0
.end method
