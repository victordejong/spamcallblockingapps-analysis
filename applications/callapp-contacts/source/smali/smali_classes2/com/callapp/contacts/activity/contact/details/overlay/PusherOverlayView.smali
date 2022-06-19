.class public abstract Lcom/callapp/contacts/activity/contact/details/overlay/PusherOverlayView;
.super Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;
.source "SourceFile"


# instance fields
.field private a:Landroid/view/View;

.field private b:I

.field private c:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;ZZLcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView$OverlayViewListener;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;-><init>(Landroid/content/Context;ZZLcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView$OverlayViewListener;)V

    return-void
.end method

.method private getTopSpaceView()Landroid/view/View;
    .locals 1

    const v0, 0x7f0a095d

    .line 101
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/contact/details/overlay/PusherOverlayView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected abstract a()V
.end method

.method protected createLayoutForOverlay(Landroid/view/LayoutInflater;)V
    .locals 2

    const v0, 0x7f0d0041

    .line 79
    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const v0, 0x7f0a02a6

    .line 80
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/contact/details/overlay/PusherOverlayView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/PusherOverlayView;->c:Landroid/view/ViewGroup;

    .line 81
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/overlay/PusherOverlayView;->getLayoutResId()I

    move-result v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/PusherOverlayView;->c:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 83
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/details/overlay/PusherOverlayView;->getTopSpaceView()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/PusherOverlayView;->a:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 85
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput p1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/PusherOverlayView;->b:I

    :cond_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 51
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 52
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/PusherOverlayView;->a:Landroid/view/View;

    if-nez v0, :cond_0

    .line 53
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/details/overlay/PusherOverlayView;->getTopSpaceView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/PusherOverlayView;->a:Landroid/view/View;

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/PusherOverlayView;->a:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/PusherOverlayView;->c:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 57
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/PusherOverlayView;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/PusherOverlayView;->c:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getY()F

    move-result v1

    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/details/overlay/PusherOverlayView;->c:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    .line 58
    invoke-super {p0, p1}, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 p1, 0x1

    return p1

    .line 64
    :cond_1
    invoke-super {p0, p1}, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected getTrackEventCategory()Ljava/lang/String;
    .locals 1

    const-string v0, "Pusher Overlay"

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .line 34
    invoke-super {p0}, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;->onCreate()V

    const v0, 0x7f0600ed

    .line 35
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    const v1, 0x7f0a0244

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lcom/callapp/contacts/activity/contact/details/overlay/PusherOverlayView;->setCloseButtonListenerInOverlay(IIZ)V

    .line 36
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/overlay/PusherOverlayView;->a()V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 40
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/overlay/PusherOverlayView;->removeView()V

    .line 41
    invoke-super {p0}, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;->onDestroy()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 69
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/PusherOverlayView;->c:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getY()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 73
    :cond_0
    invoke-super {p0, p1}, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public updateWindowLayout()V
    .locals 2

    .line 91
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/PusherOverlayView;->a:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 92
    iget v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/PusherOverlayView;->b:I

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/overlay/PusherOverlayView;->getWindowY()I

    move-result v1

    add-int/2addr v0, v1

    .line 93
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/PusherOverlayView;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v0, v1, :cond_0

    .line 94
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/PusherOverlayView;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 95
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/PusherOverlayView;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method
