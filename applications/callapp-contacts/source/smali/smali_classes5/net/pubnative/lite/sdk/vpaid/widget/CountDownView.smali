.class public Lnet/pubnative/lite/sdk/vpaid/widget/CountDownView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private progressBarView:Landroid/widget/ProgressBar;

.field private progressTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 52
    invoke-direct {p0, p1}, Lnet/pubnative/lite/sdk/vpaid/widget/CountDownView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    invoke-direct {p0, p1}, Lnet/pubnative/lite/sdk/vpaid/widget/CountDownView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    invoke-direct {p0, p1}, Lnet/pubnative/lite/sdk/vpaid/widget/CountDownView;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 7

    .line 66
    sget v0, Lnet/pubnative/lite/sdk/core/R$layout;->player_count_down:I

    invoke-static {p1, v0, p0}, Lnet/pubnative/lite/sdk/vpaid/widget/CountDownView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 67
    sget v0, Lnet/pubnative/lite/sdk/core/R$id;->view_progress_bar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/widget/CountDownView;->progressBarView:Landroid/widget/ProgressBar;

    .line 68
    sget v0, Lnet/pubnative/lite/sdk/core/R$id;->view_progress_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lnet/pubnative/lite/sdk/vpaid/widget/CountDownView;->progressTextView:Landroid/widget/TextView;

    .line 69
    new-instance p1, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const/high16 v2, -0x3d4c0000    # -90.0f

    const/4 v3, 0x1

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    const/4 v0, 0x1

    .line 70
    invoke-virtual {p1, v0}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 71
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/widget/CountDownView;->progressBarView:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method


# virtual methods
.method public setProgress(II)V
    .locals 1

    .line 75
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/widget/CountDownView;->progressBarView:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 76
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/widget/CountDownView;->progressBarView:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 77
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/widget/CountDownView;->progressBarView:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    sub-int/2addr p2, p1

    .line 78
    div-int/lit16 p2, p2, 0x3e8

    add-int/lit8 p2, p2, 0x1

    .line 79
    iget-object p1, p0, Lnet/pubnative/lite/sdk/vpaid/widget/CountDownView;->progressTextView:Landroid/widget/TextView;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
