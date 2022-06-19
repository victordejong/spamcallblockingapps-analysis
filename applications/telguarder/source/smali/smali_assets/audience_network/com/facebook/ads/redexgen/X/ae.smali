.class public final Lcom/facebook/ads/redexgen/X/ae;
.super Lcom/facebook/ads/redexgen/X/4P;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/ad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public A00:Z

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/ad;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/ad;)V
    .locals 1

    .line 67540
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/ae;->A01:Lcom/facebook/ads/redexgen/X/ad;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/4P;-><init>()V

    .line 67541
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/ae;->A00:Z

    return-void
.end method


# virtual methods
.method public final A0N(Lcom/facebook/ads/redexgen/X/El;I)V
    .locals 1

    .line 67542
    invoke-super {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/4P;->A0N(Lcom/facebook/ads/redexgen/X/El;I)V

    .line 67543
    if-nez p2, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/ae;->A00:Z

    if-eqz v0, :cond_0

    .line 67544
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/ae;->A00:Z

    .line 67545
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ae;->A01:Lcom/facebook/ads/redexgen/X/ad;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ad;->A0G()V

    .line 67546
    :cond_0
    return-void
.end method

.method public final A0O(Lcom/facebook/ads/redexgen/X/El;II)V
    .locals 1

    .line 67547
    if-nez p2, :cond_0

    if-eqz p3, :cond_1

    .line 67548
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/ae;->A00:Z

    .line 67549
    :cond_1
    return-void
.end method
