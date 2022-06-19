.class public final Lcom/facebook/ads/redexgen/X/P3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/P4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PlayableAdsViewOffTargetClickListener"
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/P4;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/P4;)V
    .locals 0

    .line 47406
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/P3;->A00:Lcom/facebook/ads/redexgen/X/P4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/P4;Lcom/facebook/ads/redexgen/X/82;)V
    .locals 0

    .line 47407
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/P3;-><init>(Lcom/facebook/ads/redexgen/X/P4;)V

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

    .line 47408
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v0, 0x1

    if-ne v1, v0, :cond_0

    .line 47409
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/P3;->A00:Lcom/facebook/ads/redexgen/X/P4;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/P4;->A01(Lcom/facebook/ads/redexgen/X/P4;J)J

    .line 47410
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/P3;->A00:Lcom/facebook/ads/redexgen/X/P4;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/P4;->A00(Lcom/facebook/ads/redexgen/X/P4;)I

    .line 47411
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/P3;->A00:Lcom/facebook/ads/redexgen/X/P4;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/P4;->A03(Lcom/facebook/ads/redexgen/X/P4;)Lcom/facebook/ads/redexgen/X/JC;

    move-result-object v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/P3;->A00:Lcom/facebook/ads/redexgen/X/P4;

    .line 47412
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/P4;->A02(Lcom/facebook/ads/redexgen/X/P4;)Lcom/facebook/ads/redexgen/X/16;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0T()Ljava/lang/String;

    move-result-object v2

    new-instance v1, Lcom/facebook/ads/redexgen/X/Nc;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/Nc;-><init>()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/P3;->A00:Lcom/facebook/ads/redexgen/X/P4;

    .line 47413
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/P4;->getViewabilityChecker()Lcom/facebook/ads/redexgen/X/QE;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Nc;->A04(Lcom/facebook/ads/redexgen/X/QE;)Lcom/facebook/ads/redexgen/X/Nc;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/P3;->A00:Lcom/facebook/ads/redexgen/X/P4;

    .line 47414
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/P4;->getTouchDataRecorder()Lcom/facebook/ads/redexgen/X/La;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Nc;->A03(Lcom/facebook/ads/redexgen/X/La;)Lcom/facebook/ads/redexgen/X/Nc;

    move-result-object v0

    .line 47415
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nc;->A06()Ljava/util/Map;

    move-result-object v0

    .line 47416
    invoke-interface {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/JC;->A8e(Ljava/lang/String;Ljava/util/Map;)V

    .line 47417
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
