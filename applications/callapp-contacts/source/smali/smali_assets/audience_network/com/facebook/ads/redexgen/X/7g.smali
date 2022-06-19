.class public final Lcom/facebook/ads/redexgen/X/7g;
.super Lcom/facebook/ads/redexgen/X/KQ;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Ia;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Ia;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Ia;)V
    .locals 0

    .line 16728
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/7g;->A00:Lcom/facebook/ads/redexgen/X/Ia;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/KQ;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/KU;)V
    .locals 3

    .line 16729
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7g;->A00:Lcom/facebook/ads/redexgen/X/Ia;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ia;->A0D(Lcom/facebook/ads/redexgen/X/Ia;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 16730
    return-void

    .line 16731
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7g;->A00:Lcom/facebook/ads/redexgen/X/Ia;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ia;->A03(Lcom/facebook/ads/redexgen/X/Ia;)Lcom/facebook/ads/redexgen/X/Pb;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/Pb;->A03:Lcom/facebook/ads/redexgen/X/Pb;

    if-eq v1, v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7g;->A00:Lcom/facebook/ads/redexgen/X/Ia;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ia;->A0E(Lcom/facebook/ads/redexgen/X/Ia;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 16732
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/7g;->A00:Lcom/facebook/ads/redexgen/X/Ia;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Ia;->A04(Lcom/facebook/ads/redexgen/X/Ia;Lcom/facebook/ads/redexgen/X/Pb;)Lcom/facebook/ads/redexgen/X/Pb;

    .line 16733
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7g;->A00:Lcom/facebook/ads/redexgen/X/Ia;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ia;->A0A(Lcom/facebook/ads/redexgen/X/Ia;)V

    .line 16734
    return-void

    .line 16735
    :cond_2
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/7g;->A00:Lcom/facebook/ads/redexgen/X/Ia;

    const/4 v1, 0x0

    const/16 v0, 0x8

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ia;->A0B(Lcom/facebook/ads/redexgen/X/Ia;II)V

    .line 16736
    return-void
.end method


# virtual methods
.method public final bridge synthetic A04(Lcom/facebook/ads/redexgen/X/9E;)V
    .locals 0

    .line 16737
    check-cast p1, Lcom/facebook/ads/redexgen/X/KU;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/7g;->A00(Lcom/facebook/ads/redexgen/X/KU;)V

    return-void
.end method
