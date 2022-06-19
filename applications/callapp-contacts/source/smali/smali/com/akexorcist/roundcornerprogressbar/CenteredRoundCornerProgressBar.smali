.class public Lcom/akexorcist/roundcornerprogressbar/CenteredRoundCornerProgressBar;
.super Lcom/akexorcist/roundcornerprogressbar/RoundCornerProgressBar;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/akexorcist/roundcornerprogressbar/RoundCornerProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/akexorcist/roundcornerprogressbar/RoundCornerProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/akexorcist/roundcornerprogressbar/RoundCornerProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method public drawProgress(Landroid/widget/LinearLayout;Landroid/graphics/drawable/GradientDrawable;FFFIIZ)V
    .locals 0

    .line 42
    invoke-super/range {p0 .. p8}, Lcom/akexorcist/roundcornerprogressbar/RoundCornerProgressBar;->drawProgress(Landroid/widget/LinearLayout;Landroid/graphics/drawable/GradientDrawable;FFFIIZ)V

    .line 43
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    div-float/2addr p3, p4

    mul-int/lit8 p7, p7, 0x2

    int-to-float p4, p7

    sub-float p4, p5, p4

    div-float/2addr p4, p3

    sub-float/2addr p5, p4

    const/high16 p3, 0x40000000    # 2.0f

    div-float/2addr p5, p3

    float-to-int p3, p5

    .line 47
    iget p4, p2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget p5, p2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {p2, p3, p4, p3, p5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 48
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
