.class public Lcom/akexorcist/roundcornerprogressbar/RoundCornerProgressBar;
.super Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method public drawProgress(Landroid/widget/LinearLayout;Landroid/graphics/drawable/GradientDrawable;FFFIIZ)V
    .locals 4

    .line 76
    div-int/lit8 p8, p7, 0x2

    sub-int p8, p6, p8

    const/16 v0, 0x8

    new-array v0, v0, [F

    int-to-float p8, p8

    const/4 v1, 0x0

    aput p8, v0, v1

    const/4 v2, 0x1

    aput p8, v0, v2

    const/4 v2, 0x2

    aput p8, v0, v2

    const/4 v3, 0x3

    aput p8, v0, v3

    const/4 v3, 0x4

    aput p8, v0, v3

    const/4 v3, 0x5

    aput p8, v0, v3

    const/4 v3, 0x6

    aput p8, v0, v3

    const/4 v3, 0x7

    aput p8, v0, v3

    .line 77
    invoke-virtual {p2, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 78
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    div-float/2addr p3, p4

    mul-int/lit8 p2, p7, 0x2

    int-to-float p2, p2

    sub-float/2addr p5, p2

    div-float/2addr p5, p3

    float-to-int p2, p5

    .line 81
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 82
    iput p2, p3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 83
    div-int/2addr p2, v2

    add-int p4, p7, p2

    if-ge p4, p6, :cond_0

    sub-int/2addr p6, p7

    .line 84
    invoke-static {p6, v1}, Ljava/lang/Math;->max(II)I

    move-result p4

    sub-int/2addr p4, p2

    .line 85
    iput p4, p3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 86
    iput p4, p3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_0

    .line 88
    :cond_0
    iput v1, p3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 89
    iput v1, p3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 91
    :goto_0
    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public initLayout()I
    .locals 1

    .line 56
    sget v0, Lcom/akexorcist/roundcornerprogressbar/a$c;->layout_round_corner_progress_bar:I

    return v0
.end method

.method public initStyleable(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    return-void
.end method

.method public initView()V
    .locals 0

    return-void
.end method

.method public onViewDraw()V
    .locals 0

    return-void
.end method
