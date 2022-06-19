.class public final Lcom/facebook/ads/redexgen/X/b7;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/P2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/b6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PlayableAdsViewListenerImpl"
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/b6;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/b6;)V
    .locals 0

    .line 69416
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/b7;->A00:Lcom/facebook/ads/redexgen/X/b6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/b6;Lcom/facebook/ads/redexgen/X/bX;)V
    .locals 0

    .line 69417
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/b7;-><init>(Lcom/facebook/ads/redexgen/X/b6;)V

    return-void
.end method


# virtual methods
.method public final A9q()V
    .locals 2

    .line 69418
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/b7;->A00:Lcom/facebook/ads/redexgen/X/b6;

    const/4 v0, 0x1

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/b6;->A0U(Lcom/facebook/ads/redexgen/X/b6;Z)V

    .line 69419
    return-void
.end method

.method public final AAL()V
    .locals 4

    .line 69420
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b7;->A00:Lcom/facebook/ads/redexgen/X/b6;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/b6;->A00(Lcom/facebook/ads/redexgen/X/b6;)Lcom/facebook/ads/redexgen/X/16;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0T()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 69421
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b7;->A00:Lcom/facebook/ads/redexgen/X/b6;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/b6;->A03(Lcom/facebook/ads/redexgen/X/b6;)Lcom/facebook/ads/redexgen/X/JC;

    move-result-object v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b7;->A00:Lcom/facebook/ads/redexgen/X/b6;

    .line 69422
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/b6;->A00(Lcom/facebook/ads/redexgen/X/b6;)Lcom/facebook/ads/redexgen/X/16;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0T()Ljava/lang/String;

    move-result-object v2

    new-instance v1, Lcom/facebook/ads/redexgen/X/Nc;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/Nc;-><init>()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b7;->A00:Lcom/facebook/ads/redexgen/X/b6;

    .line 69423
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/b6;->A0B(Lcom/facebook/ads/redexgen/X/b6;)Lcom/facebook/ads/redexgen/X/P4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/P4;->getViewabilityChecker()Lcom/facebook/ads/redexgen/X/QE;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Nc;->A04(Lcom/facebook/ads/redexgen/X/QE;)Lcom/facebook/ads/redexgen/X/Nc;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b7;->A00:Lcom/facebook/ads/redexgen/X/b6;

    .line 69424
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/b6;->A0B(Lcom/facebook/ads/redexgen/X/b6;)Lcom/facebook/ads/redexgen/X/P4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/P4;->getTouchDataRecorder()Lcom/facebook/ads/redexgen/X/La;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Nc;->A03(Lcom/facebook/ads/redexgen/X/La;)Lcom/facebook/ads/redexgen/X/Nc;

    move-result-object v0

    .line 69425
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nc;->A06()Ljava/util/Map;

    move-result-object v0

    .line 69426
    invoke-interface {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/JC;->A8a(Ljava/lang/String;Ljava/util/Map;)V

    .line 69427
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b7;->A00:Lcom/facebook/ads/redexgen/X/b6;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/b6;->A00(Lcom/facebook/ads/redexgen/X/b6;)Lcom/facebook/ads/redexgen/X/16;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0V()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/24;->A00(Ljava/lang/String;)V

    .line 69428
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b7;->A00:Lcom/facebook/ads/redexgen/X/b6;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/b6;->A02(Lcom/facebook/ads/redexgen/X/b6;)Lcom/facebook/ads/redexgen/X/XJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XJ;->A0A()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A2a()V

    .line 69429
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b7;->A00:Lcom/facebook/ads/redexgen/X/b6;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/b6;->A06(Lcom/facebook/ads/redexgen/X/b6;)Lcom/facebook/ads/redexgen/X/M9;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b7;->A00:Lcom/facebook/ads/redexgen/X/b6;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/b6;->A07(Lcom/facebook/ads/redexgen/X/b6;)Lcom/facebook/ads/redexgen/X/Me;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Me;->A6b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/M9;->A3t(Ljava/lang/String;)V

    .line 69430
    return-void
.end method

.method public final AAf()V
    .locals 2

    .line 69431
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b7;->A00:Lcom/facebook/ads/redexgen/X/b6;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/b6;->A06(Lcom/facebook/ads/redexgen/X/b6;)Lcom/facebook/ads/redexgen/X/M9;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b7;->A00:Lcom/facebook/ads/redexgen/X/b6;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/b6;->A07(Lcom/facebook/ads/redexgen/X/b6;)Lcom/facebook/ads/redexgen/X/Me;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Me;->A6Q()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/M9;->A3t(Ljava/lang/String;)V

    .line 69432
    return-void
.end method

.method public final ACA()V
    .locals 2

    .line 69433
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b7;->A00:Lcom/facebook/ads/redexgen/X/b6;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/b6;->A06(Lcom/facebook/ads/redexgen/X/b6;)Lcom/facebook/ads/redexgen/X/M9;

    move-result-object v1

    const/16 v0, 0xf

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/M9;->A9e(I)V

    .line 69434
    return-void
.end method
