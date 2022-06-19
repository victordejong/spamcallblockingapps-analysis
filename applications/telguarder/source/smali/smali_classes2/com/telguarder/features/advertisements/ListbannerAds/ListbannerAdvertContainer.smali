.class public Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertContainer;
.super Landroidx/cardview/widget/CardView;
.source "ListbannerAdvertContainer.java"


# static fields
.field public static ADMARGIN:I = 0x10


# instance fields
.field public containerAndChildVisible:Z

.field private mAddViewToHolderCompletion:Ljava/lang/Runnable;

.field private mAdvertLayoutCompletion:Ljava/lang/Runnable;

.field private mAdvertView:Landroid/view/View;

.field private mParams:Landroid/widget/FrameLayout$LayoutParams;

.field private touchTheftNeeded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Landroidx/cardview/widget/CardView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 23
    iput-boolean p1, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertContainer;->touchTheftNeeded:Z

    const/4 p1, 0x0

    .line 24
    iput-boolean p1, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertContainer;->containerAndChildVisible:Z

    const/4 p1, 0x0

    .line 25
    iput-object p1, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertContainer;->mAdvertLayoutCompletion:Ljava/lang/Runnable;

    .line 26
    iput-object p1, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertContainer;->mAddViewToHolderCompletion:Ljava/lang/Runnable;

    .line 27
    iput-object p1, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertContainer;->mParams:Landroid/widget/FrameLayout$LayoutParams;

    .line 28
    iput-object p1, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertContainer;->mAdvertView:Landroid/view/View;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Landroidx/cardview/widget/CardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 23
    iput-boolean p1, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertContainer;->touchTheftNeeded:Z

    const/4 p1, 0x0

    .line 24
    iput-boolean p1, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertContainer;->containerAndChildVisible:Z

    const/4 p1, 0x0

    .line 25
    iput-object p1, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertContainer;->mAdvertLayoutCompletion:Ljava/lang/Runnable;

    .line 26
    iput-object p1, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertContainer;->mAddViewToHolderCompletion:Ljava/lang/Runnable;

    .line 27
    iput-object p1, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertContainer;->mParams:Landroid/widget/FrameLayout$LayoutParams;

    .line 28
    iput-object p1, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertContainer;->mAdvertView:Landroid/view/View;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroidx/cardview/widget/CardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 23
    iput-boolean p1, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertContainer;->touchTheftNeeded:Z

    const/4 p1, 0x0

    .line 24
    iput-boolean p1, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertContainer;->containerAndChildVisible:Z

    const/4 p1, 0x0

    .line 25
    iput-object p1, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertContainer;->mAdvertLayoutCompletion:Ljava/lang/Runnable;

    .line 26
    iput-object p1, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertContainer;->mAddViewToHolderCompletion:Ljava/lang/Runnable;

    .line 27
    iput-object p1, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertContainer;->mParams:Landroid/widget/FrameLayout$LayoutParams;

    .line 28
    iput-object p1, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertContainer;->mAdvertView:Landroid/view/View;

    return-void
.end method

.method private advertAddToHolder()V
    .locals 2

    .line 127
    iget-object v0, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertContainer;->mParams:Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 128
    iget-object v0, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertContainer;->mAdvertView:Landroid/view/View;

    iget-object v1, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertContainer;->mParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0, v0, v1}, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x0

    .line 129
    invoke-virtual {p0, v0}, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertContainer;->setVisibility(I)V

    .line 130
    new-instance v0, Lcom/telguarder/features/advertisements/ListbannerAds/-$$Lambda$ListbannerAdvertContainer$mrbYl2XxWUVwPeETwdenPhOxRik;

    invoke-direct {v0, p0}, Lcom/telguarder/features/advertisements/ListbannerAds/-$$Lambda$ListbannerAdvertContainer$mrbYl2XxWUVwPeETwdenPhOxRik;-><init>(Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertContainer;)V

    iput-object v0, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertContainer;->mAdvertLayoutCompletion:Ljava/lang/Runnable;

    .line 146
    iget-object v0, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertContainer;->mAdvertView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 147
    iget-object v0, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertContainer;->mAdvertView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method private getScalePercent(Landroid/content/Context;II)F
    .locals 2

    .line 85
    invoke-static {p1}, Lcom/telguarder/helpers/ui/UiHelper;->getDeviceScreenHeight(Landroid/content/Context;)I

    move-result v0

    .line 86
    sget v1, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertContainer;->ADMARGIN:I

    int-to-float v1, v1

    invoke-static {p1, v1}, Lcom/telguarder/helpers/ui/UiHelper;->dpToPixel(Landroid/content/Context;F)I

    move-result v1

    add-int/2addr p3, v1

    .line 87
    div-int/lit8 v0, v0, 0x2

    const/high16 v1, 0x3f800000    # 1.0f

    if-ge p3, v0, :cond_0

    .line 88
    invoke-static {p1}, Lcom/telguarder/helpers/ui/UiHelper;->getDeviceScreenWidth(Landroid/content/Context;)I

    move-result p3

    .line 89
    sget v0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertContainer;->ADMARGIN:I

    int-to-float v0, v0

    invoke-static {p1, v0}, Lcom/telguarder/helpers/ui/UiHelper;->dpToPixel(Landroid/content/Context;F)I

    move-result p1

    add-int/2addr p2, p1

    if-ge p2, p3, :cond_0

    sub-int p1, p3, p2

    int-to-float p1, p1

    const/high16 p2, 0x42c80000    # 100.0f

    mul-float p1, p1, p2

    int-to-float p3, p3

    div-float/2addr p1, p3

    div-float/2addr p1, p2

    add-float/2addr p1, v1

    return p1

    :cond_0
    return v1
.end method


# virtual methods
.method public addViewToHolder(Landroid/content/Context;IILandroid/view/View;Ljava/lang/Runnable;)V
    .locals 0

    .line 99
    iput-object p5, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertContainer;->mAddViewToHolderCompletion:Ljava/lang/Runnable;

    .line 100
    iput-object p4, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertContainer;->mAdvertView:Landroid/view/View;

    if-eqz p1, :cond_0

    goto :goto_0

    .line 101
    :cond_0
    invoke-static {}, Lcom/telguarder/ApplicationObject;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 102
    :goto_0
    invoke-virtual {p0}, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertContainer;->getChildCount()I

    move-result p4

    if-lez p4, :cond_1

    invoke-virtual {p0}, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertContainer;->removeAllViews()V

    .line 103
    :cond_1
    iget-object p4, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertContainer;->mAdvertView:Landroid/view/View;

    invoke-virtual {p4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p4

    if-eqz p4, :cond_2

    iget-object p4, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertContainer;->mAdvertView:Landroid/view/View;

    invoke-virtual {p4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p4

    instance-of p4, p4, Landroid/view/ViewGroup;

    if-eqz p4, :cond_2

    .line 104
    iget-object p4, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertContainer;->mAdvertView:Landroid/view/View;

    invoke-virtual {p4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p4

    check-cast p4, Landroid/view/ViewGroup;

    iget-object p5, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertContainer;->mAdvertView:Landroid/view/View;

    invoke-virtual {p4, p5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2
    const p4, 0x7f050101

    .line 106
    invoke-static {p1, p4}, Lcom/telguarder/helpers/common/AppUtil;->getColorResource(Landroid/content/Context;I)I

    move-result p4

    invoke-virtual {p0, p4}, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertContainer;->setBackgroundColor(I)V

    if-lez p2, :cond_4

    if-lez p3, :cond_4

    int-to-float p3, p3

    .line 108
    invoke-static {p1, p3}, Lcom/telguarder/helpers/ui/UiHelper;->dpToPixel(Landroid/content/Context;F)I

    move-result p3

    int-to-float p2, p2

    .line 109
    invoke-static {p1, p2}, Lcom/telguarder/helpers/ui/UiHelper;->dpToPixel(Landroid/content/Context;F)I

    move-result p2

    .line 110
    invoke-direct {p0, p1, p2, p3}, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertContainer;->getScalePercent(Landroid/content/Context;II)F

    move-result p4

    const/high16 p5, 0x3f800000    # 1.0f

    cmpl-float p5, p4, p5

    if-lez p5, :cond_3

    .line 112
    iget-object p5, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertContainer;->mAdvertView:Landroid/view/View;

    invoke-virtual {p5, p4}, Landroid/view/View;->setScaleX(F)V

    .line 113
    iget-object p5, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertContainer;->mAdvertView:Landroid/view/View;

    invoke-virtual {p5, p4}, Landroid/view/View;->setScaleY(F)V

    .line 115
    :cond_3
    new-instance p5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p5, p2, p3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput-object p5, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertContainer;->mParams:Landroid/widget/FrameLayout$LayoutParams;

    .line 116
    invoke-virtual {p0}, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertContainer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 117
    invoke-virtual {p0}, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertContainer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    sget p5, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertContainer;->ADMARGIN:I

    int-to-float p5, p5

    invoke-static {p1, p5}, Lcom/telguarder/helpers/ui/UiHelper;->dpToPixel(Landroid/content/Context;F)I

    move-result p1

    add-int/2addr p3, p1

    int-to-float p1, p3

    mul-float p4, p4, p1

    float-to-int p1, p4

    iput p1, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_1

    .line 120
    :cond_4
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p2, -0x2

    invoke-direct {p1, p2, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput-object p1, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertContainer;->mParams:Landroid/widget/FrameLayout$LayoutParams;

    .line 122
    :cond_5
    :goto_1
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertContainer;->advertAddToHolder()V

    return-void
.end method

.method public clearVisibilityHandlers()V
    .locals 1

    const/4 v0, 0x0

    .line 151
    iput-object v0, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertContainer;->mAdvertLayoutCompletion:Ljava/lang/Runnable;

    .line 152
    iput-object v0, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertContainer;->mAddViewToHolderCompletion:Ljava/lang/Runnable;

    return-void
.end method

.method public synthetic lambda$advertAddToHolder$0$ListbannerAdvertContainer()V
    .locals 2

    const/4 v0, 0x0

    .line 132
    :try_start_0
    iget-boolean v1, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertContainer;->containerAndChildVisible:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertContainer;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0}, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertContainer;->getHeight()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    .line 133
    iput-boolean v1, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertContainer;->containerAndChildVisible:Z

    .line 134
    iget-object v1, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertContainer;->mAddViewToHolderCompletion:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 135
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 136
    iput-object v0, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertContainer;->mAddViewToHolderCompletion:Ljava/lang/Runnable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 140
    iget-object v1, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertContainer;->mAddViewToHolderCompletion:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 141
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 142
    iput-object v0, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertContainer;->mAddViewToHolderCompletion:Ljava/lang/Runnable;

    :cond_0
    :goto_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 70
    invoke-super {p0}, Landroidx/cardview/widget/CardView;->onFinishInflate()V

    const/4 v0, 0x0

    .line 71
    iput-boolean v0, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertContainer;->containerAndChildVisible:Z

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 p1, 0x0

    .line 45
    invoke-virtual {p0, p1}, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    :cond_0
    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 76
    invoke-super/range {p0 .. p5}, Landroidx/cardview/widget/CardView;->onLayout(ZIIII)V

    .line 77
    iget-object p1, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertContainer;->mAdvertLayoutCompletion:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 78
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    const/4 p1, 0x0

    .line 79
    iput-object p1, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertContainer;->mAdvertLayoutCompletion:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 53
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 54
    invoke-virtual {p0, v0}, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 56
    iput-boolean v0, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertContainer;->touchTheftNeeded:Z

    .line 57
    invoke-static {p1}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    .line 58
    invoke-virtual {v3, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 59
    invoke-static {p1}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    .line 60
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 61
    invoke-virtual {v2, v3}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 62
    invoke-virtual {v2, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_0
    return v1
.end method
