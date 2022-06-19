.class public Lcom/akexorcist/roundcornerprogressbar/indeterminate/IndeterminateCenteredRoundCornerProgressBar;
.super Lcom/akexorcist/roundcornerprogressbar/CenteredRoundCornerProgressBar;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2}, Lcom/akexorcist/roundcornerprogressbar/CenteredRoundCornerProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2, p3}, Lcom/akexorcist/roundcornerprogressbar/CenteredRoundCornerProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/akexorcist/roundcornerprogressbar/CenteredRoundCornerProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private a()V
    .locals 1

    .line 59
    invoke-virtual {p0}, Lcom/akexorcist/roundcornerprogressbar/indeterminate/IndeterminateCenteredRoundCornerProgressBar;->disableAnimation()V

    const/4 v0, 0x0

    .line 60
    invoke-virtual {p0, v0}, Lcom/akexorcist/roundcornerprogressbar/indeterminate/IndeterminateCenteredRoundCornerProgressBar;->setProgress(I)V

    .line 61
    invoke-virtual {p0}, Lcom/akexorcist/roundcornerprogressbar/indeterminate/IndeterminateCenteredRoundCornerProgressBar;->enableAnimation()V

    const/16 v0, 0x64

    .line 62
    invoke-virtual {p0, v0}, Lcom/akexorcist/roundcornerprogressbar/indeterminate/IndeterminateCenteredRoundCornerProgressBar;->setProgress(I)V

    return-void
.end method


# virtual methods
.method public initView()V
    .locals 1

    .line 31
    invoke-super {p0}, Lcom/akexorcist/roundcornerprogressbar/CenteredRoundCornerProgressBar;->initView()V

    const/high16 v0, 0x42c80000    # 100.0f

    .line 32
    invoke-virtual {p0, v0}, Lcom/akexorcist/roundcornerprogressbar/indeterminate/IndeterminateCenteredRoundCornerProgressBar;->setMax(F)V

    return-void
.end method

.method public onProgressChangeAnimationEnd(Landroid/widget/LinearLayout;)V
    .locals 0

    .line 45
    invoke-virtual {p0}, Lcom/akexorcist/roundcornerprogressbar/indeterminate/IndeterminateCenteredRoundCornerProgressBar;->isShown()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 46
    invoke-direct {p0}, Lcom/akexorcist/roundcornerprogressbar/indeterminate/IndeterminateCenteredRoundCornerProgressBar;->a()V

    :cond_0
    return-void
.end method

.method public onProgressChangeAnimationUpdate(Landroid/widget/LinearLayout;FF)V
    .locals 0

    .line 37
    invoke-super {p0, p1, p2, p3}, Lcom/akexorcist/roundcornerprogressbar/CenteredRoundCornerProgressBar;->onProgressChangeAnimationUpdate(Landroid/widget/LinearLayout;FF)V

    .line 38
    invoke-virtual {p0}, Lcom/akexorcist/roundcornerprogressbar/indeterminate/IndeterminateCenteredRoundCornerProgressBar;->isShown()Z

    move-result p1

    if-nez p1, :cond_0

    .line 39
    invoke-super {p0}, Lcom/akexorcist/roundcornerprogressbar/CenteredRoundCornerProgressBar;->stopProgressAnimationImmediately()V

    :cond_0
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .line 52
    invoke-super {p0, p1, p2}, Lcom/akexorcist/roundcornerprogressbar/CenteredRoundCornerProgressBar;->onVisibilityChanged(Landroid/view/View;I)V

    if-nez p2, :cond_0

    .line 54
    invoke-direct {p0}, Lcom/akexorcist/roundcornerprogressbar/indeterminate/IndeterminateCenteredRoundCornerProgressBar;->a()V

    :cond_0
    return-void
.end method
