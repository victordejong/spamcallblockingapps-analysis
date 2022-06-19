.class public Lcom/allinone/callerid/callscreen/view/MyJzvdStd;
.super Lcn/jzvd/JzvdStd;
.source "MyJzvdStd.java"


# instance fields
.field private H0:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/jzvd/JzvdStd;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcn/jzvd/JzvdStd;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public A(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcn/jzvd/Jzvd;->A(II)V

    return-void
.end method

.method public E()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcn/jzvd/JzvdStd;->E()V

    const-string v0, "JZVD"

    const-string v1, "Auto complete"

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public F()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcn/jzvd/JzvdStd;->F()V

    .line 2
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    const-string v1, "callscreen_play_error"

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    return-void
.end method

.method public G()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcn/jzvd/JzvdStd;->G()V

    return-void
.end method

.method public H()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcn/jzvd/JzvdStd;->H()V

    return-void
.end method

.method public I()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcn/jzvd/JzvdStd;->I()V

    return-void
.end method

.method public J()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcn/jzvd/JzvdStd;->J()V

    return-void
.end method

.method public K(II)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Lcn/jzvd/Jzvd;->K(II)V

    const-string p1, "JZVD"

    const-string p2, "onVideoSizeChanged"

    .line 2
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isSilence:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/allinone/callerid/callscreen/view/MyJzvdStd;->H0:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-boolean p1, p0, Lcom/allinone/callerid/callscreen/view/MyJzvdStd;->H0:Z

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p0, Lcn/jzvd/Jzvd;->u:Lcn/jzvd/u;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2}, Lcn/jzvd/u;->setVolume(FF)V

    :cond_0
    return-void
.end method

.method public U()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcn/jzvd/Jzvd;->U()V

    const-string v0, "JZVD"

    const-string v1, "startVideo"

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public Y()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcn/jzvd/JzvdStd;->Y()V

    return-void
.end method

.method public Z()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcn/jzvd/JzvdStd;->Z()V

    return-void
.end method

.method public a0()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcn/jzvd/JzvdStd;->a0()V

    return-void
.end method

.method public b0()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcn/jzvd/JzvdStd;->b0()V

    return-void
.end method

.method public c0()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcn/jzvd/JzvdStd;->c0()V

    return-void
.end method

.method public d0()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcn/jzvd/JzvdStd;->d0()V

    return-void
.end method

.method public e0()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcn/jzvd/JzvdStd;->e0()V

    return-void
.end method

.method public f0()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcn/jzvd/JzvdStd;->f0()V

    return-void
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0c00ce

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcn/jzvd/JzvdStd;->onClick(Landroid/view/View;)V

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const-string v0, "JZVD"

    const v1, 0x7f09023f

    if-ne p1, v1, :cond_0

    const-string p1, "onClick: fullscreen button"

    .line 3
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const v1, 0x7f09057c

    if-ne p1, v1, :cond_1

    const-string p1, "onClick: start button"

    .line 4
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcn/jzvd/JzvdStd;->onStopTrackingTouch(Landroid/widget/SeekBar;)V

    const-string p1, "JZVD"

    const-string v0, "Seek position "

    .line 2
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Lcn/jzvd/JzvdStd;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090598

    if-ne p1, v0, :cond_2

    .line 3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-boolean p1, p0, Lcn/jzvd/Jzvd;->S:Z

    const-string p2, "JZVD"

    if-eqz p1, :cond_1

    const-string p1, "Touch screen seek position"

    .line 5
    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    :cond_1
    iget-boolean p1, p0, Lcn/jzvd/Jzvd;->R:Z

    if-eqz p1, :cond_2

    const-string p1, "Touch screen change volume"

    .line 7
    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public r0()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcn/jzvd/JzvdStd;->r0()V

    const-string v0, "JZVD"

    const-string v1, "click blank"

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setSilence(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/allinone/callerid/callscreen/view/MyJzvdStd;->H0:Z

    return-void
.end method

.method public v()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcn/jzvd/Jzvd;->v()V

    const-string v0, "JZVD"

    const-string v1, "goto Fullscreen"

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public w()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcn/jzvd/Jzvd;->w()V

    const-string v0, "JZVD"

    const-string v1, "quit Fullscreen"

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public x(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcn/jzvd/JzvdStd;->x(Landroid/content/Context;)V

    return-void
.end method

.method public z(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcn/jzvd/Jzvd;->z(II)V

    return-void
.end method
