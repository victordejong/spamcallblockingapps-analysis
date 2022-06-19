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

    .line 4317
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    invoke-direct {p0, v0, v1, v0, v1}, Lcom/facebook/ads/redexgen/X/27;-><init>(DD)V

    .line 4318
    return-void
.end method

.method public constructor <init>(D)V
    .locals 2

    .line 4319
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/facebook/ads/redexgen/X/27;-><init>(DD)V

    .line 4320
    return-void
.end method

.method public constructor <init>(DD)V
    .locals 1

    .line 4321
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4322
    new-instance v0, Lcom/facebook/ads/redexgen/X/26;

    invoke-direct {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/26;-><init>(D)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/27;->A00:Lcom/facebook/ads/redexgen/X/26;

    .line 4323
    new-instance v0, Lcom/facebook/ads/redexgen/X/26;

    invoke-direct {v0, p3, p4}, Lcom/facebook/ads/redexgen/X/26;-><init>(D)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/27;->A01:Lcom/facebook/ads/redexgen/X/26;

    .line 4324
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/27;->A02()V

    .line 4325
    return-void
.end method


# virtual methods
.method public final A00()Lcom/facebook/ads/redexgen/X/26;
    .locals 1

    .line 4326
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/27;->A00:Lcom/facebook/ads/redexgen/X/26;

    return-object v0
.end method

.method public final A01()Lcom/facebook/ads/redexgen/X/26;
    .locals 1

    .line 4327
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/27;->A01:Lcom/facebook/ads/redexgen/X/26;

    return-object v0
.end method

.method public final A02()V
    .locals 1

    .line 4328
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/27;->A00:Lcom/facebook/ads/redexgen/X/26;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/26;->A06()V

    .line 4329
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/27;->A01:Lcom/facebook/ads/redexgen/X/26;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/26;->A06()V

    .line 4330
    return-void
.end method

.method public final A03()V
    .locals 1

    .line 4331
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/27;->A00:Lcom/facebook/ads/redexgen/X/26;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/26;->A07()V

    .line 4332
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/27;->A01:Lcom/facebook/ads/redexgen/X/26;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/26;->A07()V

    .line 4333
    return-void
.end method

.method public final A04(DD)V
    .locals 1

    .line 4334
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/27;->A00:Lcom/facebook/ads/redexgen/X/26;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/26;->A08(DD)V

    .line 4335
    return-void
.end method

.method public final A05(DD)V
    .locals 1

    .line 4336
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/27;->A01:Lcom/facebook/ads/redexgen/X/26;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/26;->A08(DD)V

    .line 4337
    return-void
.end method
