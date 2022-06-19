.class public Lcom/mopub/mraid/MraidBridge$MraidWebView;
.super Lcom/mopub/mobileads/BaseWebViewViewability;
.source "SourceFile"


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
.field i:Lcom/mopub/mraid/MraidBridge$MraidWebView$OnVisibilityChangedListener;

.field private j:Lcom/mopub/common/VisibilityTracker;

.field private k:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 247
    invoke-direct {p0, p1}, Lcom/mopub/mobileads/BaseWebViewViewability;-><init>(Landroid/content/Context;)V

    .line 249
    invoke-virtual {p0}, Lcom/mopub/mraid/MraidBridge$MraidWebView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/mopub/mraid/MraidBridge$MraidWebView;->k:Z

    .line 251
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-gt v0, v1, :cond_1

    return-void

    .line 258
    :cond_1
    new-instance v0, Lcom/mopub/common/VisibilityTracker;

    invoke-direct {v0, p1}, Lcom/mopub/common/VisibilityTracker;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mopub/mraid/MraidBridge$MraidWebView;->j:Lcom/mopub/common/VisibilityTracker;

    .line 259
    new-instance p1, Lcom/mopub/mraid/MraidBridge$MraidWebView$1;

    invoke-direct {p1, p0}, Lcom/mopub/mraid/MraidBridge$MraidWebView$1;-><init>(Lcom/mopub/mraid/MraidBridge$MraidWebView;)V

    .line 269
    iget-object v0, p0, Lcom/mopub/mraid/MraidBridge$MraidWebView;->j:Lcom/mopub/common/VisibilityTracker;

    invoke-virtual {v0, p1}, Lcom/mopub/common/VisibilityTracker;->setVisibilityTrackerListener(Lcom/mopub/common/VisibilityTracker$VisibilityTrackerListener;)V

    return-void
.end method

.method static synthetic a(Lcom/mopub/mraid/MraidBridge$MraidWebView;Z)V
    .locals 0

    .line 233
    invoke-direct {p0, p1}, Lcom/mopub/mraid/MraidBridge$MraidWebView;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 1

    .line 293
    iget-boolean v0, p0, Lcom/mopub/mraid/MraidBridge$MraidWebView;->k:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 296
    :cond_0
    iput-boolean p1, p0, Lcom/mopub/mraid/MraidBridge$MraidWebView;->k:Z

    .line 297
    iget-object v0, p0, Lcom/mopub/mraid/MraidBridge$MraidWebView;->i:Lcom/mopub/mraid/MraidBridge$MraidWebView$OnVisibilityChangedListener;

    if-eqz v0, :cond_1

    .line 298
    invoke-interface {v0, p1}, Lcom/mopub/mraid/MraidBridge$MraidWebView$OnVisibilityChangedListener;->onVisibilityChanged(Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 308
    invoke-super {p0}, Lcom/mopub/mobileads/BaseWebViewViewability;->destroy()V

    .line 310
    iget-object v0, p0, Lcom/mopub/mraid/MraidBridge$MraidWebView;->j:Lcom/mopub/common/VisibilityTracker;

    if-eqz v0, :cond_0

    .line 311
    invoke-virtual {v0}, Lcom/mopub/common/VisibilityTracker;->destroy()V

    :cond_0
    const/4 v0, 0x0

    .line 313
    iput-object v0, p0, Lcom/mopub/mraid/MraidBridge$MraidWebView;->j:Lcom/mopub/common/VisibilityTracker;

    .line 314
    iput-object v0, p0, Lcom/mopub/mraid/MraidBridge$MraidWebView;->i:Lcom/mopub/mraid/MraidBridge$MraidWebView$OnVisibilityChangedListener;

    return-void
.end method

.method public isMraidViewable()Z
    .locals 1

    .line 303
    iget-boolean v0, p0, Lcom/mopub/mraid/MraidBridge$MraidWebView;->k:Z

    return v0
.end method

.method public onVisibilityChanged(Landroid/view/View;I)V
    .locals 8

    .line 278
    invoke-super {p0, p1, p2}, Lcom/mopub/mobileads/BaseWebViewViewability;->onVisibilityChanged(Landroid/view/View;I)V

    .line 279
    iget-object v0, p0, Lcom/mopub/mraid/MraidBridge$MraidWebView;->j:Lcom/mopub/common/VisibilityTracker;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 280
    :goto_0
    invoke-direct {p0, v1}, Lcom/mopub/mraid/MraidBridge$MraidWebView;->a(Z)V

    return-void

    :cond_1
    if-nez p2, :cond_2

    .line 284
    invoke-virtual {v0}, Lcom/mopub/common/VisibilityTracker;->clear()V

    .line 285
    iget-object v2, p0, Lcom/mopub/mraid/MraidBridge$MraidWebView;->j:Lcom/mopub/common/VisibilityTracker;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object v3, p1

    move-object v4, p0

    invoke-virtual/range {v2 .. v7}, Lcom/mopub/common/VisibilityTracker;->addView(Landroid/view/View;Landroid/view/View;IILjava/lang/Integer;)V

    return-void

    .line 287
    :cond_2
    invoke-virtual {v0, p0}, Lcom/mopub/common/VisibilityTracker;->removeView(Landroid/view/View;)V

    .line 288
    invoke-direct {p0, v2}, Lcom/mopub/mraid/MraidBridge$MraidWebView;->a(Z)V

    return-void
.end method
