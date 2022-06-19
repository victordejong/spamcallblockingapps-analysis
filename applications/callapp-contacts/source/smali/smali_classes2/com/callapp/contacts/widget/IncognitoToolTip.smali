.class public Lcom/callapp/contacts/widget/IncognitoToolTip;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "SourceFile"


# instance fields
.field private a:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, p1, v0}, Lcom/callapp/contacts/widget/IncognitoToolTip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p1, p2, v0}, Lcom/callapp/contacts/widget/IncognitoToolTip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1041
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const p3, 0x7f0d0156

    const/4 v0, 0x1

    invoke-virtual {p2, p3, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const p2, 0x7f0a0941

    .line 1042
    invoke-virtual {p0, p2}, Lcom/callapp/contacts/widget/IncognitoToolTip;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    new-instance p3, Landroid/graphics/PorterDuffColorFilter;

    const v0, 0x7f0601ec

    .line 1043
    invoke-static {p1, v0}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p3, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1042
    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    const p2, 0x7f0a0946

    .line 1044
    invoke-virtual {p0, p2}, Lcom/callapp/contacts/widget/IncognitoToolTip;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    invoke-static {p1, v0}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1045
    invoke-virtual {p0, p2}, Lcom/callapp/contacts/widget/IncognitoToolTip;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    const v1, 0x7f1203c3

    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p3, 0x7f0a0945

    .line 1046
    invoke-virtual {p0, p3}, Lcom/callapp/contacts/widget/IncognitoToolTip;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {p1, v0}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1047
    invoke-virtual {p0, p3}, Lcom/callapp/contacts/widget/IncognitoToolTip;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    const v0, 0x7f1203c2

    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p3, 0x7f0a0175

    .line 1048
    invoke-virtual {p0, p3}, Lcom/callapp/contacts/widget/IncognitoToolTip;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f060088

    invoke-static {p1, v1}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1049
    invoke-virtual {p0, p3}, Lcom/callapp/contacts/widget/IncognitoToolTip;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    const v0, 0x7f120401

    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1050
    invoke-virtual {p0, p2}, Lcom/callapp/contacts/widget/IncognitoToolTip;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance p3, Lcom/callapp/contacts/widget/IncognitoToolTip$1;

    invoke-direct {p3, p0}, Lcom/callapp/contacts/widget/IncognitoToolTip$1;-><init>(Lcom/callapp/contacts/widget/IncognitoToolTip;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0805aa

    .line 1062
    invoke-virtual {p0, p2}, Lcom/callapp/contacts/widget/IncognitoToolTip;->setBackgroundResource(I)V

    .line 1063
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/IncognitoToolTip;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    check-cast p2, Landroid/graphics/drawable/GradientDrawable;

    const p3, 0x7f060026

    invoke-static {p1, p3}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 1064
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/IncognitoToolTip;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    check-cast p2, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0}, Lcom/callapp/contacts/widget/IncognitoToolTip;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f070174

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p3

    .line 1065
    invoke-static {p1, v1}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result p1

    .line 1064
    invoke-virtual {p2, p3, p1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 1066
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x15

    if-lt p1, p2, :cond_0

    const/high16 p1, 0x41000000    # 8.0f

    .line 1067
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/widget/IncognitoToolTip;->setElevation(F)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/widget/IncognitoToolTip;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/callapp/contacts/widget/IncognitoToolTip;->a:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic a(Lcom/callapp/contacts/widget/IncognitoToolTip;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/callapp/contacts/widget/IncognitoToolTip;->a:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method private synthetic a(Landroid/animation/ValueAnimator;)V
    .locals 5

    .line 84
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3feccccccccccccdL    # 0.9

    cmpg-double v4, v0, v2

    if-gtz v4, :cond_0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    .line 85
    :goto_0
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/widget/IncognitoToolTip;->setAlpha(F)V

    return-void
.end method

.method private synthetic d()V
    .locals 3

    const/4 v0, 0x0

    .line 79
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/widget/IncognitoToolTip;->setVisibility(I)V

    const/4 v0, 0x0

    .line 80
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/widget/IncognitoToolTip;->setAlpha(F)V

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 81
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/widget/IncognitoToolTip;->a:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x1f4

    .line 82
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 83
    iget-object v0, p0, Lcom/callapp/contacts/widget/IncognitoToolTip;->a:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/callapp/contacts/widget/-$$Lambda$IncognitoToolTip$5LmKaAK865bQnsLyZN_MLhl5gZw;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/widget/-$$Lambda$IncognitoToolTip$5LmKaAK865bQnsLyZN_MLhl5gZw;-><init>(Lcom/callapp/contacts/widget/IncognitoToolTip;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 87
    iget-object v0, p0, Lcom/callapp/contacts/widget/IncognitoToolTip;->a:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static synthetic lambda$5LmKaAK865bQnsLyZN_MLhl5gZw(Lcom/callapp/contacts/widget/IncognitoToolTip;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/callapp/contacts/widget/IncognitoToolTip;->a(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic lambda$uWcXMpy1dfju4UjvmsPAhcndB9g(Lcom/callapp/contacts/widget/IncognitoToolTip;)V
    .locals 0

    invoke-direct {p0}, Lcom/callapp/contacts/widget/IncognitoToolTip;->d()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 3

    .line 76
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->by:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1094
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->fQ:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x1e

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x82

    if-eq v1, v2, :cond_0

    .line 1095
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x1ae

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 78
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    new-instance v2, Lcom/callapp/contacts/widget/-$$Lambda$IncognitoToolTip$uWcXMpy1dfju4UjvmsPAhcndB9g;

    invoke-direct {v2, p0}, Lcom/callapp/contacts/widget/-$$Lambda$IncognitoToolTip$uWcXMpy1dfju4UjvmsPAhcndB9g;-><init>(Lcom/callapp/contacts/widget/IncognitoToolTip;)V

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    :cond_2
    return v0
.end method

.method public final b()V
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/callapp/contacts/widget/IncognitoToolTip;->a:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/callapp/contacts/widget/IncognitoToolTip;->a:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method public setLearnMoreOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 72
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/widget/IncognitoToolTip;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
