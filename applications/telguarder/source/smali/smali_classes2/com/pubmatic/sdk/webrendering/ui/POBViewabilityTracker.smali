.class public Lcom/pubmatic/sdk/webrendering/ui/POBViewabilityTracker;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;
.implements Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pubmatic/sdk/webrendering/ui/POBViewabilityTracker$onViewabilityChangedListener;
    }
.end annotation


# instance fields
.field private a:Landroid/view/View;

.field private b:Lcom/pubmatic/sdk/webrendering/ui/POBViewabilityTracker$onViewabilityChangedListener;

.field private c:F

.field private d:Z

.field private e:Z


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/pubmatic/sdk/webrendering/ui/POBViewabilityTracker;->a:Landroid/view/View;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pubmatic/sdk/webrendering/ui/POBViewabilityTracker;->e:Z

    iput-boolean v0, p0, Lcom/pubmatic/sdk/webrendering/ui/POBViewabilityTracker;->d:Z

    invoke-virtual {p1, p0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method

.method private a()V
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/webrendering/ui/POBViewabilityTracker;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pubmatic/sdk/webrendering/ui/POBViewabilityTracker;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnWindowFocusChangeListener(Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;)V

    :cond_0
    return-void
.end method

.method private b()V
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/webrendering/ui/POBViewabilityTracker;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pubmatic/sdk/webrendering/ui/POBViewabilityTracker;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v0, p0, Lcom/pubmatic/sdk/webrendering/ui/POBViewabilityTracker;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    :cond_0
    return-void
.end method

.method private c()V
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/webrendering/ui/POBViewabilityTracker;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pubmatic/sdk/webrendering/ui/POBViewabilityTracker;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnWindowFocusChangeListener(Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;)V

    :cond_0
    return-void
.end method

.method private d()V
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/webrendering/ui/POBViewabilityTracker;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pubmatic/sdk/webrendering/ui/POBViewabilityTracker;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v0, p0, Lcom/pubmatic/sdk/webrendering/ui/POBViewabilityTracker;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    :cond_0
    return-void
.end method

.method private e()V
    .locals 2

    iget-object v0, p0, Lcom/pubmatic/sdk/webrendering/ui/POBViewabilityTracker;->a:Landroid/view/View;

    invoke-static {v0}, Lcom/pubmatic/sdk/common/utility/POBUtils;->getVisiblePercent(Landroid/view/View;)F

    move-result v0

    iget v1, p0, Lcom/pubmatic/sdk/webrendering/ui/POBViewabilityTracker;->c:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/pubmatic/sdk/webrendering/ui/POBViewabilityTracker;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-boolean v1, p0, Lcom/pubmatic/sdk/webrendering/ui/POBViewabilityTracker;->e:Z

    if-eq v1, v0, :cond_2

    iget-object v1, p0, Lcom/pubmatic/sdk/webrendering/ui/POBViewabilityTracker;->b:Lcom/pubmatic/sdk/webrendering/ui/POBViewabilityTracker$onViewabilityChangedListener;

    if-eqz v1, :cond_1

    invoke-interface {v1, v0}, Lcom/pubmatic/sdk/webrendering/ui/POBViewabilityTracker$onViewabilityChangedListener;->onViewabilityChanged(Z)V

    :cond_1
    iput-boolean v0, p0, Lcom/pubmatic/sdk/webrendering/ui/POBViewabilityTracker;->e:Z

    :cond_2
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    invoke-direct {p0}, Lcom/pubmatic/sdk/webrendering/ui/POBViewabilityTracker;->d()V

    invoke-direct {p0}, Lcom/pubmatic/sdk/webrendering/ui/POBViewabilityTracker;->c()V

    iget-object v0, p0, Lcom/pubmatic/sdk/webrendering/ui/POBViewabilityTracker;->a:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method

.method public isViewable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/pubmatic/sdk/webrendering/ui/POBViewabilityTracker;->e:Z

    return v0
.end method

.method public onGlobalLayout()V
    .locals 0

    invoke-direct {p0}, Lcom/pubmatic/sdk/webrendering/ui/POBViewabilityTracker;->e()V

    return-void
.end method

.method public onScrollChanged()V
    .locals 0

    invoke-direct {p0}, Lcom/pubmatic/sdk/webrendering/ui/POBViewabilityTracker;->e()V

    return-void
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/pubmatic/sdk/webrendering/ui/POBViewabilityTracker;->a()V

    iget-boolean p1, p0, Lcom/pubmatic/sdk/webrendering/ui/POBViewabilityTracker;->d:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/pubmatic/sdk/webrendering/ui/POBViewabilityTracker;->b()V

    :cond_0
    invoke-direct {p0}, Lcom/pubmatic/sdk/webrendering/ui/POBViewabilityTracker;->e()V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/pubmatic/sdk/webrendering/ui/POBViewabilityTracker;->d()V

    invoke-direct {p0}, Lcom/pubmatic/sdk/webrendering/ui/POBViewabilityTracker;->c()V

    invoke-direct {p0}, Lcom/pubmatic/sdk/webrendering/ui/POBViewabilityTracker;->e()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    invoke-direct {p0}, Lcom/pubmatic/sdk/webrendering/ui/POBViewabilityTracker;->e()V

    return-void
.end method

.method public setAllowViewTreeObserverRegistration(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/pubmatic/sdk/webrendering/ui/POBViewabilityTracker;->d:Z

    return-void
.end method

.method public setOnExposureChangeWithThresholdListener(Lcom/pubmatic/sdk/webrendering/ui/POBViewabilityTracker$onViewabilityChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/webrendering/ui/POBViewabilityTracker;->b:Lcom/pubmatic/sdk/webrendering/ui/POBViewabilityTracker$onViewabilityChangedListener;

    return-void
.end method

.method public setViewabilityThresholdPercent(F)V
    .locals 0

    iput p1, p0, Lcom/pubmatic/sdk/webrendering/ui/POBViewabilityTracker;->c:F

    return-void
.end method
