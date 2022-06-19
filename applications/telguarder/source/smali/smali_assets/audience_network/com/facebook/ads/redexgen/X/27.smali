.class public final Lcom/facebook/ads/redexgen/X/27;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/26;
    }
.end annotation


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/26;

.field public A01:Lcom/facebook/ads/redexgen/X/26;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 4425
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    invoke-direct {p0, v0, v1, v0, v1}, Lcom/facebook/ads/redexgen/X/27;-><init>(DD)V

    .line 4426
    return-void
.end method

.method public constructor <init>(D)V
    .locals 2

    .line 4427
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/facebook/ads/redexgen/X/27;-><init>(DD)V

    .line 4428
    return-void
.end method

.method public constructor <init>(DD)V
    .locals 1

    .line 4429
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4430
    new-instance v0, Lcom/facebook/ads/redexgen/X/26;

    invoke-direct {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/26;-><init>(D)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/27;->A00:Lcom/facebook/ads/redexgen/X/26;

    .line 4431
    new-instance v0, Lcom/facebook/ads/redexgen/X/26;

    invoke-direct {v0, p3, p4}, Lcom/facebook/ads/redexgen/X/26;-><init>(D)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/27;->A01:Lcom/facebook/ads/redexgen/X/26;

    .line 4432
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/27;->A02()V

    .line 4433
    return-void
.end method


# virtual methods
.method public final A00()Lcom/facebook/ads/redexgen/X/26;
    .locals 1

    .line 4434
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/27;->A00:Lcom/facebook/ads/redexgen/X/26;

    return-object v0
.end method

.method public final A01()Lcom/facebook/ads/redexgen/X/26;
    .locals 1

    .line 4435
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/27;->A01:Lcom/facebook/ads/redexgen/X/26;

    return-object v0
.end method

.method public final A02()V
    .locals 1

    .line 4436
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/27;->A00:Lcom/facebook/ads/redexgen/X/26;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/26;->A06()V

    .line 4437
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/27;->A01:Lcom/facebook/ads/redexgen/X/26;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/26;->A06()V

    .line 4438
    return-void
.end method

.method public final A03()V
    .locals 1

    .line 4439
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/27;->A00:Lcom/facebook/ads/redexgen/X/26;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/26;->A07()V

    .line 4440
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/27;->A01:Lcom/facebook/ads/redexgen/X/26;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/26;->A07()V

    .line 4441
    return-void
.end method

.method public final A04(DD)V
    .locals 1

    .line 4442
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/27;->A00:Lcom/facebook/ads/redexgen/X/26;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/26;->A08(DD)V

    .line 4443
    return-void
.end method

.method public final A05(DD)V
    .locals 1

    .line 4444
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/27;->A01:Lcom/facebook/ads/redexgen/X/26;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/26;->A08(DD)V

    .line 4445
    return-void
.end method
