.class public final Lcom/facebook/ads/redexgen/X/a0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Kt;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/5r;->A04(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 66649
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2

    .line 66650
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 66651
    .local p0, "mCallBack":Landroid/view/Window$Callback;
    :goto_0
    if-eqz v0, :cond_0

    .line 66652
    new-instance v1, Lcom/facebook/ads/redexgen/X/Kp;

    invoke-direct {v1, v0, p1}, Lcom/facebook/ads/redexgen/X/Kp;-><init>(Landroid/view/Window$Callback;Landroid/app/Activity;)V

    .line 66653
    .local p1, "activityInterceptorCallback":Lcom/facebook/ads/redexgen/X/Kp;
    new-instance v0, Lcom/facebook/ads/redexgen/X/a1;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/a1;-><init>(Lcom/facebook/ads/redexgen/X/a0;)V

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Kp;->A00(Lcom/facebook/ads/redexgen/X/Ko;)V

    .line 66654
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    .line 66655
    .end local p1    # "activityInterceptorCallback":Lcom/facebook/ads/redexgen/X/Kp;
    :cond_0
    return-void

    .line 66656
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
