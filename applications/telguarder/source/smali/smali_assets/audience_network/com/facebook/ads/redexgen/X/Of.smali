.class public final Lcom/facebook/ads/redexgen/X/Of;
.super Landroid/widget/LinearLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Od;,
        Lcom/facebook/ads/redexgen/X/Oe;
    }
.end annotation


# static fields
.field public static final A05:I

.field public static final A06:I

.field public static final A07:I

.field public static final A08:I


# instance fields
.field public A00:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A01:I

.field public final A02:Lcom/facebook/ads/redexgen/X/Wm;

.field public final A03:Lcom/facebook/ads/redexgen/X/Nj;

.field public final A04:Lcom/facebook/ads/redexgen/X/Np;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 47060
    sget v0, Lcom/facebook/ads/redexgen/X/Lj;->A02:F

    const/high16 v1, 0x41800000    # 16.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/Of;->A07:I

    .line 47061
    sget v0, Lcom/facebook/ads/redexgen/X/Lj;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/Of;->A08:I

    .line 47062
    sget v1, Lcom/facebook/ads/redexgen/X/Lj;->A02:F

    const/high16 v0, 0x41000000    # 8.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/Of;->A06:I

    .line 47063
    sget v1, Lcom/facebook/ads/redexgen/X/Lj;->A02:F

    const/high16 v0, 0x42900000    # 72.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/Of;->A05:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Od;)V
    .locals 6

    .line 47064
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Od;->A04(Lcom/facebook/ads/redexgen/X/Od;)Lcom/facebook/ads/redexgen/X/Wm;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 47065
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Od;->A04(Lcom/facebook/ads/redexgen/X/Od;)Lcom/facebook/ads/redexgen/X/Wm;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Of;->A02:Lcom/facebook/ads/redexgen/X/Wm;

    .line 47066
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Of;->A02:Lcom/facebook/ads/redexgen/X/Wm;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Nj;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Nj;-><init>(Lcom/facebook/ads/redexgen/X/Wm;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Of;->A03:Lcom/facebook/ads/redexgen/X/Nj;

    .line 47067
    new-instance v0, Lcom/facebook/ads/redexgen/X/Np;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Of;->A02:Lcom/facebook/ads/redexgen/X/Wm;

    .line 47068
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Od;->A02(Lcom/facebook/ads/redexgen/X/Od;)Lcom/facebook/ads/redexgen/X/1I;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/Np;-><init>(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/1I;ZZZ)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Of;->A04:Lcom/facebook/ads/redexgen/X/Np;

    .line 47069
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Od;->A00(Lcom/facebook/ads/redexgen/X/Od;)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Of;->A01:I

    .line 47070
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Of;->A03(Lcom/facebook/ads/redexgen/X/Od;)V

    .line 47071
    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/Od;Lcom/facebook/ads/redexgen/X/RL;)V
    .locals 0

    .line 47072
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Of;-><init>(Lcom/facebook/ads/redexgen/X/Od;)V

    return-void
.end method

.method private A00()V
    .locals 2

    .line 47073
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Of;->A03:Lcom/facebook/ads/redexgen/X/Nj;

    const/16 v0, 0x96

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/Of;->A01(Landroid/view/View;I)V

    .line 47074
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Of;->A04:Lcom/facebook/ads/redexgen/X/Np;

    const/16 v0, 0xaa

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/Of;->A01(Landroid/view/View;I)V

    .line 47075
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Of;->A00:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    .line 47076
    const/16 v0, 0xbe

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/Of;->A01(Landroid/view/View;I)V

    .line 47077
    :cond_0
    return-void
.end method

.method private A01(Landroid/view/View;I)V
    .locals 3

    .line 47078
    int-to-float v0, p2

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 47079
    const/high16 v0, 0x3f400000    # 0.75f

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 47080
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 47081
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    neg-int v0, p2

    int-to-float v0, v0

    .line 47082
    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 47083
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 47084
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 47085
    const-wide/16 v0, 0x12c

    invoke-virtual {v2, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/high16 v1, 0x40000000    # 2.0f

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    .line 47086
    invoke-virtual {v2, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 47087
    return-void
.end method

.method private A02(Lcom/facebook/ads/redexgen/X/Od;)V
    .locals 7

    .line 47088
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Od;->A05(Lcom/facebook/ads/redexgen/X/Od;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 47089
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Of;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Of;->A00:Landroid/widget/LinearLayout;

    .line 47090
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Of;->A00:Landroid/widget/LinearLayout;

    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 47091
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Of;->A00:Landroid/widget/LinearLayout;

    sget v2, Lcom/facebook/ads/redexgen/X/Of;->A08:I

    div-int/lit8 v1, v2, 0x2

    div-int/lit8 v0, v2, 0x2

    invoke-virtual {v3, v2, v1, v2, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 47092
    const/4 v1, -0x2

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 47093
    .local p0, "informativeContainerParams":Landroid/widget/LinearLayout$LayoutParams;
    sget v0, Lcom/facebook/ads/redexgen/X/Of;->A08:I

    div-int/lit8 v0, v0, 0x2

    const/4 v6, 0x0

    invoke-virtual {v2, v6, v0, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 47094
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Of;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 47095
    .local v0, "informativeTextView":Landroid/widget/TextView;
    const/4 v0, -0x1

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 47096
    const/16 v0, 0x10

    invoke-static {v5, v6, v0}, Lcom/facebook/ads/redexgen/X/Lj;->A0Z(Landroid/widget/TextView;ZI)V

    .line 47097
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Od;->A05(Lcom/facebook/ads/redexgen/X/Od;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47098
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 47099
    .local p1, "informativeTextViewParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Of;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 47100
    .local v1, "informativeIconView":Landroid/widget/ImageView;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Of;->A02:Lcom/facebook/ads/redexgen/X/Wm;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Rz;

    invoke-direct {v0, v3, v1}, Lcom/facebook/ads/redexgen/X/Rz;-><init>(Landroid/widget/ImageView;Lcom/facebook/ads/redexgen/X/Wm;)V

    .line 47101
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Rz;->A05()Lcom/facebook/ads/redexgen/X/Rz;

    move-result-object v1

    .line 47102
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Od;->A06(Lcom/facebook/ads/redexgen/X/Od;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Rz;->A08(Ljava/lang/String;)V

    .line 47103
    sget v0, Lcom/facebook/ads/redexgen/X/Of;->A07:I

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 47104
    .local v0, "informativeIconViewParams":Landroid/widget/LinearLayout$LayoutParams;
    sget v0, Lcom/facebook/ads/redexgen/X/Of;->A08:I

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {v1, v6, v6, v0, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 47105
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Of;->A00:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 47106
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Of;->A00:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 47107
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 47108
    .local v0, "bgDrawable":Landroid/graphics/drawable/GradientDrawable;
    const/high16 v0, 0x42c80000    # 100.0f

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 47109
    const v0, 0x1bffffff

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 47110
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Of;->A00:Landroid/widget/LinearLayout;

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/Lj;->A0U(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 47111
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Of;->A00:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0, v2}, Lcom/facebook/ads/redexgen/X/Of;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 47112
    .end local p0    # "informativeContainerParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local p1    # "informativeTextViewParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v0    # "bgDrawable":Landroid/graphics/drawable/GradientDrawable;
    .end local v0
    .end local v1    # "informativeIconView":Landroid/widget/ImageView;
    .end local v0
    :cond_0
    return-void
.end method

.method private A03(Lcom/facebook/ads/redexgen/X/Od;)V
    .locals 10

    .line 47113
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Of;->A03:Lcom/facebook/ads/redexgen/X/Nj;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/facebook/ads/redexgen/X/Lj;->A0O(Landroid/view/View;I)V

    .line 47114
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Of;->A03:Lcom/facebook/ads/redexgen/X/Nj;

    const/16 v0, 0x32

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Nj;->setRadius(I)V

    .line 47115
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Od;->A01(Lcom/facebook/ads/redexgen/X/Od;)Lcom/facebook/ads/redexgen/X/1G;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1G;->A00()Lcom/facebook/ads/redexgen/X/1E;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/1E;->A05:Lcom/facebook/ads/redexgen/X/1E;

    const/4 v3, 0x1

    if-ne v1, v0, :cond_0

    .line 47116
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Of;->A03:Lcom/facebook/ads/redexgen/X/Nj;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/Nj;->setFullCircleCorners(Z)V

    .line 47117
    :goto_0
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Of;->A03:Lcom/facebook/ads/redexgen/X/Nj;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Of;->A02:Lcom/facebook/ads/redexgen/X/Wm;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Rz;

    invoke-direct {v0, v4, v1}, Lcom/facebook/ads/redexgen/X/Rz;-><init>(Landroid/widget/ImageView;Lcom/facebook/ads/redexgen/X/Wm;)V

    .line 47118
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Rz;->A05()Lcom/facebook/ads/redexgen/X/Rz;

    move-result-object v1

    .line 47119
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Od;->A03(Lcom/facebook/ads/redexgen/X/Od;)Lcom/facebook/ads/redexgen/X/1S;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1S;->A01()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Rz;->A08(Ljava/lang/String;)V

    .line 47120
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Of;->A04:Lcom/facebook/ads/redexgen/X/Np;

    .line 47121
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Od;->A01(Lcom/facebook/ads/redexgen/X/Od;)Lcom/facebook/ads/redexgen/X/1G;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1G;->A06()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Od;->A03(Lcom/facebook/ads/redexgen/X/Od;)Lcom/facebook/ads/redexgen/X/1S;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1S;->A03()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 47122
    invoke-virtual/range {v4 .. v9}, Lcom/facebook/ads/redexgen/X/Np;->A02(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 47123
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Of;->A04:Lcom/facebook/ads/redexgen/X/Np;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Np;->getDescriptionTextView()Landroid/widget/TextView;

    move-result-object v1

    const v0, 0x3f4ccccd    # 0.8f

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 47124
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Of;->A04:Lcom/facebook/ads/redexgen/X/Np;

    const/16 v5, 0x11

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/Np;->setAlignment(I)V

    .line 47125
    const/4 v0, -0x2

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 47126
    .local p0, "titleAndDescriptionParams":Landroid/widget/LinearLayout$LayoutParams;
    sget v1, Lcom/facebook/ads/redexgen/X/Of;->A08:I

    div-int/lit8 v0, v1, 0x2

    invoke-virtual {v4, v2, v1, v2, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 47127
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Of;->A03:Lcom/facebook/ads/redexgen/X/Nj;

    sget v1, Lcom/facebook/ads/redexgen/X/Of;->A05:I

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v2, v0}, Lcom/facebook/ads/redexgen/X/Of;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 47128
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Of;->A04:Lcom/facebook/ads/redexgen/X/Np;

    invoke-virtual {p0, v0, v4}, Lcom/facebook/ads/redexgen/X/Of;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 47129
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Of;->A02(Lcom/facebook/ads/redexgen/X/Od;)V

    .line 47130
    const v0, -0xdcd8d1

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/Lj;->A0O(Landroid/view/View;I)V

    .line 47131
    invoke-virtual {p0, v5}, Lcom/facebook/ads/redexgen/X/Of;->setGravity(I)V

    .line 47132
    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/Of;->setOrientation(I)V

    .line 47133
    return-void

    .line 47134
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Of;->A03:Lcom/facebook/ads/redexgen/X/Nj;

    sget v0, Lcom/facebook/ads/redexgen/X/Of;->A06:I

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Nj;->setRadius(I)V

    goto :goto_0
.end method


# virtual methods
.method public final A04(Lcom/facebook/ads/redexgen/X/Oe;)V
    .locals 3

    .line 47135
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Of;->A00()V

    .line 47136
    new-instance v2, Lcom/facebook/ads/redexgen/X/RL;

    invoke-direct {v2, p0, p1}, Lcom/facebook/ads/redexgen/X/RL;-><init>(Lcom/facebook/ads/redexgen/X/Of;Lcom/facebook/ads/redexgen/X/Oe;)V

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Of;->A01:I

    int-to-long v0, v0

    invoke-virtual {p0, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/Of;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 47137
    return-void
.end method
