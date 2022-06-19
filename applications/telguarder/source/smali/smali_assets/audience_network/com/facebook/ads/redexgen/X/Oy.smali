.class public final Lcom/facebook/ads/redexgen/X/Oy;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Oz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PlayableAdsViewOffTargetClickListener"
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Oz;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Oz;)V
    .locals 0

    .line 47588
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Oy;->A00:Lcom/facebook/ads/redexgen/X/Oz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/Oz;Lcom/facebook/ads/redexgen/X/82;)V
    .locals 0

    .line 47589
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Oy;-><init>(Lcom/facebook/ads/redexgen/X/Oz;)V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 47590
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v0, 0x1

    if-ne v1, v0, :cond_0

    .line 47591
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Oy;->A00:Lcom/facebook/ads/redexgen/X/Oz;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/Oz;->A01(Lcom/facebook/ads/redexgen/X/Oz;J)J

    .line 47592
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oy;->A00:Lcom/facebook/ads/redexgen/X/Oz;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Oz;->A00(Lcom/facebook/ads/redexgen/X/Oz;)I

    .line 47593
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oy;->A00:Lcom/facebook/ads/redexgen/X/Oz;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Oz;->A03(Lcom/facebook/ads/redexgen/X/Oz;)Lcom/facebook/ads/redexgen/X/JC;

    move-result-object v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oy;->A00:Lcom/facebook/ads/redexgen/X/Oz;

    .line 47594
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Oz;->A02(Lcom/facebook/ads/redexgen/X/Oz;)Lcom/facebook/ads/redexgen/X/16;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0R()Ljava/lang/String;

    move-result-object v2

    new-instance v1, Lcom/facebook/ads/redexgen/X/NX;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/NX;-><init>()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oy;->A00:Lcom/facebook/ads/redexgen/X/Oz;

    .line 47595
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Oz;->getViewabilityChecker()Lcom/facebook/ads/redexgen/X/Q9;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/NX;->A03(Lcom/facebook/ads/redexgen/X/Q9;)Lcom/facebook/ads/redexgen/X/NX;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oy;->A00:Lcom/facebook/ads/redexgen/X/Oz;

    .line 47596
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Oz;->getTouchDataRecorder()Lcom/facebook/ads/redexgen/X/Lc;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/NX;->A02(Lcom/facebook/ads/redexgen/X/Lc;)Lcom/facebook/ads/redexgen/X/NX;

    move-result-object v0

    .line 47597
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NX;->A05()Ljava/util/Map;

    move-result-object v0

    .line 47598
    invoke-interface {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/JC;->A8g(Ljava/lang/String;Ljava/util/Map;)V

    .line 47599
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
