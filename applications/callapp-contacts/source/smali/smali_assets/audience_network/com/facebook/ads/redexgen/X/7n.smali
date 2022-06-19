.class public final Lcom/facebook/ads/redexgen/X/7n;
.super Lcom/facebook/ads/redexgen/X/KJ;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Jj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Jj;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Jj;)V
    .locals 0

    .line 16812
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/7n;->A00:Lcom/facebook/ads/redexgen/X/Jj;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/KJ;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/7s;)V
    .locals 3

    .line 16813
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7n;->A00:Lcom/facebook/ads/redexgen/X/Jj;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Jj;->A09(Lcom/facebook/ads/redexgen/X/Jj;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/7n;->A00:Lcom/facebook/ads/redexgen/X/Jj;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Pk;->A05:Lcom/facebook/ads/redexgen/X/Pk;

    .line 16814
    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Jj;->A0B(Lcom/facebook/ads/redexgen/X/Jj;Lcom/facebook/ads/redexgen/X/Pk;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16815
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7n;->A00:Lcom/facebook/ads/redexgen/X/Jj;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Jj;->A05(Lcom/facebook/ads/redexgen/X/Jj;)V

    .line 16816
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/7n;->A00:Lcom/facebook/ads/redexgen/X/Jj;

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Jj;->A06(Lcom/facebook/ads/redexgen/X/Jj;ZZ)V

    .line 16817
    :cond_0
    return-void
.end method


# virtual methods
.method public final bridge synthetic A04(Lcom/facebook/ads/redexgen/X/9E;)V
    .locals 0

    .line 16818
    check-cast p1, Lcom/facebook/ads/redexgen/X/7s;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/7n;->A00(Lcom/facebook/ads/redexgen/X/7s;)V

    return-void
.end method
