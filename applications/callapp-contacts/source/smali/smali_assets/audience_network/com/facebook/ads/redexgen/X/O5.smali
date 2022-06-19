.class public final Lcom/facebook/ads/redexgen/X/O5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/YV;->setUpBrowserControls(Lcom/facebook/ads/redexgen/X/aO;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/YV;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/YV;)V
    .locals 0

    .line 46146
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/O5;->A00:Lcom/facebook/ads/redexgen/X/YV;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 46147
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 46148
    .local p0, "action":I
    const/4 v2, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v2, :cond_1

    .line 46149
    :cond_0
    :goto_0
    return v2

    .line 46150
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 46151
    .local p2, "browserFinalY":F
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/O5;->A00:Lcom/facebook/ads/redexgen/X/YV;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YV;->A00(Lcom/facebook/ads/redexgen/X/YV;)F

    move-result v0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 46152
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/O5;->A00:Lcom/facebook/ads/redexgen/X/YV;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/YV;->A0O(Lcom/facebook/ads/redexgen/X/YV;Z)V

    goto :goto_0

    .line 46153
    .end local p2    # "browserFinalY":F
    :cond_2
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/O5;->A00:Lcom/facebook/ads/redexgen/X/YV;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/YV;->A01(Lcom/facebook/ads/redexgen/X/YV;F)F

    .line 46154
    goto :goto_0
.end method
