.class public final Lcom/facebook/ads/redexgen/X/77;
.super Lcom/facebook/ads/redexgen/X/KQ;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/IB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/IB;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/IB;)V
    .locals 0

    .line 15980
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/77;->A00:Lcom/facebook/ads/redexgen/X/IB;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/KQ;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/KU;)V
    .locals 1

    .line 15981
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/77;->A00:Lcom/facebook/ads/redexgen/X/IB;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IB;->A00(Lcom/facebook/ads/redexgen/X/IB;)Lcom/facebook/ads/redexgen/X/PD;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 15982
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/77;->A00:Lcom/facebook/ads/redexgen/X/IB;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IB;->A05(Lcom/facebook/ads/redexgen/X/IB;)V

    .line 15983
    :cond_0
    return-void
.end method


# virtual methods
.method public final bridge synthetic A04(Lcom/facebook/ads/redexgen/X/9E;)V
    .locals 0

    .line 15984
    check-cast p1, Lcom/facebook/ads/redexgen/X/KU;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/77;->A00(Lcom/facebook/ads/redexgen/X/KU;)V

    return-void
.end method
