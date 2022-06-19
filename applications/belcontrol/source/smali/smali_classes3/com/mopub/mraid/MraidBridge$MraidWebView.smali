.class public Lcom/mopub/mraid/MraidBridge$MraidWebView;
.super Lcom/mopub/mobileads/BaseWebViewViewability;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mraid/MraidBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MraidWebView"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mraid/MraidBridge$MraidWebView$OnVisibilityChangedListener;
    }
.end annotation


# instance fields
.field public m:Lcom/mopub/mraid/MraidBridge$MraidWebView$OnVisibilityChangedListener;

.field public n:Lcom/mopub/common/VisibilityTracker;

.field public o:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/mopub/mobileads/BaseWebViewViewability;-><init>(Landroid/content/Context;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-gt v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/webkit/WebView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/mopub/mraid/MraidBridge$MraidWebView;->o:Z

    return-void

    :cond_1
    new-instance v0, Lcom/mopub/common/VisibilityTracker;

    invoke-direct {v0, p1}, Lcom/mopub/common/VisibilityTracker;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mopub/mraid/MraidBridge$MraidWebView;->n:Lcom/mopub/common/VisibilityTracker;

    new-instance p1, Lcom/mopub/mraid/MraidBridge$MraidWebView$a;

    invoke-direct {p1, p0}, Lcom/mopub/mraid/MraidBridge$MraidWebView$a;-><init>(Lcom/mopub/mraid/MraidBridge$MraidWebView;)V

    invoke-virtual {v0, p1}, Lcom/mopub/common/VisibilityTracker;->setVisibilityTrackerListener(Lcom/mopub/common/VisibilityTracker$VisibilityTrackerListener;)V

    return-void
.end method

.method public static synthetic h(Lcom/mopub/mraid/MraidBridge$MraidWebView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mopub/mraid/MraidBridge$MraidWebView;->setMraidViewable(Z)V

    return-void
.end method

.method private setMraidViewable(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/mopub/mraid/MraidBridge$MraidWebView;->o:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/mopub/mraid/MraidBridge$MraidWebView;->o:Z

    iget-object v0, p0, Lcom/mopub/mraid/MraidBridge$MraidWebView;->m:Lcom/mopub/mraid/MraidBridge$MraidWebView$OnVisibilityChangedListener;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/mopub/mraid/MraidBridge$MraidWebView$OnVisibilityChangedListener;->onVisibilityChanged(Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    invoke-super {p0}, Lcom/mopub/mobileads/BaseWebView;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mopub/mraid/MraidBridge$MraidWebView;->n:Lcom/mopub/common/VisibilityTracker;

    iput-object v0, p0, Lcom/mopub/mraid/MraidBridge$MraidWebView;->m:Lcom/mopub/mraid/MraidBridge$MraidWebView$OnVisibilityChangedListener;

    return-void
.end method

.method public isMraidViewable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mopub/mraid/MraidBridge$MraidWebView;->o:Z

    return v0
.end method

.method public onVisibilityChanged(Landroid/view/View;I)V
    .locals 8

    invoke-super {p0, p1, p2}, Lcom/mopub/mobileads/BaseWebViewViewability;->onVisibilityChanged(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/mopub/mraid/MraidBridge$MraidWebView;->n:Lcom/mopub/common/VisibilityTracker;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0, v1}, Lcom/mopub/mraid/MraidBridge$MraidWebView;->setMraidViewable(Z)V

    return-void

    :cond_1
    if-nez p2, :cond_2

    invoke-virtual {v0}, Lcom/mopub/common/VisibilityTracker;->clear()V

    iget-object v2, p0, Lcom/mopub/mraid/MraidBridge$MraidWebView;->n:Lcom/mopub/common/VisibilityTracker;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object v3, p1

    move-object v4, p0

    invoke-virtual/range {v2 .. v7}, Lcom/mopub/common/VisibilityTracker;->addView(Landroid/view/View;Landroid/view/View;IILjava/lang/Integer;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v0, p0}, Lcom/mopub/common/VisibilityTracker;->removeView(Landroid/view/View;)V

    invoke-direct {p0, v2}, Lcom/mopub/mraid/MraidBridge$MraidWebView;->setMraidViewable(Z)V

    :goto_1
    return-void
.end method

.method public setVisibilityChangedListener(Lcom/mopub/mraid/MraidBridge$MraidWebView$OnVisibilityChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/mopub/mraid/MraidBridge$MraidWebView;->m:Lcom/mopub/mraid/MraidBridge$MraidWebView$OnVisibilityChangedListener;

    return-void
.end method
