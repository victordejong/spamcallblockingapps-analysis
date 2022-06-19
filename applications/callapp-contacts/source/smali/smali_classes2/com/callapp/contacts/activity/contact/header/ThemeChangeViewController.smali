.class public Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/o;
.implements Lcom/callapp/contacts/activity/viewcontroller/ViewController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController$contactDetailsThemeChangeListener;
    }
.end annotation


# instance fields
.field private a:Landroid/view/View;

.field private final b:Landroid/widget/ImageView;

.field private final c:Landroid/widget/ImageView;

.field private final d:Landroid/view/View;

.field private final e:Landroid/view/View;

.field private final f:Landroid/view/View;

.field private g:Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController$contactDetailsThemeChangeListener;

.field private h:Lcom/callapp/contacts/activity/contact/header/ThemeState;

.field private i:Landroid/animation/ValueAnimator;

.field private j:Landroid/content/Context;

.field private k:Landroid/view/View;

.field private l:Landroid/widget/ImageView;

.field private m:Landroid/view/View;

.field private n:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;ZLcom/callapp/contacts/activity/contact/header/ThemeChangeViewController$contactDetailsThemeChangeListener;)V
    .locals 3

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 46
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController;->i:Landroid/animation/ValueAnimator;

    .line 54
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d00a4

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 55
    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController;->a:Landroid/view/View;

    .line 56
    iput-object p4, p0, Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController;->g:Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController$contactDetailsThemeChangeListener;

    .line 57
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController;->j:Landroid/content/Context;

    const p1, 0x7f0a027a

    .line 58
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController;->d:Landroid/view/View;

    .line 59
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController;->a:Landroid/view/View;

    const p2, 0x7f0a0279

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController;->b:Landroid/widget/ImageView;

    .line 60
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController;->a:Landroid/view/View;

    const p2, 0x7f0a0292

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController;->c:Landroid/widget/ImageView;

    .line 61
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController;->a:Landroid/view/View;

    const p2, 0x7f0a027c

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController;->e:Landroid/view/View;

    .line 62
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController;->a:Landroid/view/View;

    const p2, 0x7f0a0282

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController;->f:Landroid/view/View;

    .line 63
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController;->a:Landroid/view/View;

    const p2, 0x7f0a027f

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController;->k:Landroid/view/View;

    .line 64
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController;->a:Landroid/view/View;

    const p2, 0x7f0a0914

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController;->l:Landroid/widget/ImageView;

    .line 65
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const p2, 0x7f060244

    invoke-static {p2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p2

    sget-object p4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, p2, p4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 66
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController;->a:Landroid/view/View;

    const p2, 0x7f0a027e

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController;->m:Landroid/view/View;

    .line 67
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController;->a:Landroid/view/View;

    const p2, 0x7f0a0281

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController;->n:Landroid/widget/TextView;

    const p2, 0x7f120357

    .line 68
    invoke-static {p2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController;->m:Landroid/view/View;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 70
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController;->n:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 71
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController;->l:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    .line 73
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController;->setThirdButtonVisibility(Z)V

    .line 76
    :cond_0
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController;->i:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController$1;

    invoke-direct {p2, p0}, Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController$1;-><init>(Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 85
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController;->i:Landroid/animation/ValueAnimator;

    const-wide/16 p2, 0x12c

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 86
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController;->i:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController$2;

    invoke-direct {p2, p0}, Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController$2;-><init>(Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 95
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->di:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/activity/contact/header/ThemeState;

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController;->h:Lcom/callapp/contacts/activity/contact/header/ThemeState;

    .line 96
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController;->setCirclesColor(Lcom/callapp/contacts/activity/contact/header/ThemeState;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController;)Landroid/view/View;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController;->k:Landroid/view/View;

    return-object p0
.end method

.method private synthetic a(Landroid/animation/ValueAnimator;)V
    .locals 6

    .line 119
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController;->k:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070179

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07016f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v5

    invoke-static {v1, v3, v5}, Lcom/callapp/contacts/util/animation/CallappAnimationUtils;->a(IIF)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 120
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController;->k:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 121
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController;->l:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    invoke-static {v1, v2, p1}, Lcom/callapp/contacts/util/animation/CallappAnimationUtils;->a(IIF)I

    move-result p1

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 122
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController;->l:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->requestLayout()V

    return-void
.end method

.method static synthetic b(Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController;)Landroid/widget/ImageView;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController;->l:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic c(Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController;)Landroid/view/View;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController;->m:Landroid/view/View;

    return-object p0
.end method

.method static synthetic d(Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController;)Landroid/widget/TextView;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController;->n:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic e(Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController;->i:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method public static synthetic lambda$UbCvKfYj1rS2Cw7Ru-vMV-RBY80(Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController;->a(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private setCirclesColor(Lcom/callapp/contacts/activity/contact/header/ThemeState;)V
    .locals 3

    .line 157
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController;->b:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/header/ThemeState;->getLeftThemeChangedEvent()Lcom/callapp/contacts/activity/contact/header/ThemeState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/contact/header/ThemeState;->getButtonColor()I

    move-result v1

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 158
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController;->c:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/header/ThemeState;->getRightThemeChangedEvent()Lcom/callapp/contacts/activity/contact/header/ThemeState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/header/ThemeState;->getButtonColor()I

    move-result p1

    invoke-static {p1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p1

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v1}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method


# virtual methods
.method public synthetic a(I)Landroid/view/View;
    .locals 0

    invoke-static {p0, p1}, Lcom/callapp/contacts/activity/viewcontroller/ViewController$-CC;->$default$a(Lcom/callapp/contacts/activity/viewcontroller/ViewController;I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final a()V
    .locals 3

    .line 104
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController;->m:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const-string v1, "Contact Details"

    if-nez v0, :cond_1

    .line 105
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v2, "ClickOrangeStoreOpenButton"

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController;->j:Landroid/content/Context;

    const-class v2, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 107
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController;->j:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/callapp/contacts/util/Activities;->b(Landroid/content/Context;Landroid/content/Intent;)V

    .line 108
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController;->i:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController;->i:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController;->i:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 110
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController;->i:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    return-void

    .line 113
    :cond_1
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v2, "ClickOrangeStoreButton"

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController;->m:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 115
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController;->n:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 116
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController;->l:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 117
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 118
    new-instance v1, Lcom/callapp/contacts/activity/contact/header/-$$Lambda$ThemeChangeViewController$UbCvKfYj1rS2Cw7Ru-vMV-RBY80;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/contact/header/-$$Lambda$ThemeChangeViewController$UbCvKfYj1rS2Cw7Ru-vMV-RBY80;-><init>(Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 124
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, 0x12c

    .line 125
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 126
    new-instance v1, Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController$3;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController$3;-><init>(Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 136
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final a(Lcom/callapp/contacts/activity/contact/header/ThemeState;)V
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController;->h:Lcom/callapp/contacts/activity/contact/header/ThemeState;

    if-eq v0, p1, :cond_1

    .line 147
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController;->h:Lcom/callapp/contacts/activity/contact/header/ThemeState;

    .line 148
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController;->g:Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController$contactDetailsThemeChangeListener;

    if-eqz v0, :cond_0

    .line 149
    invoke-interface {v0, p1}, Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController$contactDetailsThemeChangeListener;->onContactDetailedThemeChanged(Lcom/callapp/contacts/activity/contact/header/ThemeState;)V

    .line 151
    :cond_0
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController;->setCirclesColor(Lcom/callapp/contacts/activity/contact/header/ThemeState;)V

    :cond_1
    return-void
.end method

.method public synthetic b()V
    .locals 0

    invoke-static {p0}, Lcom/callapp/contacts/activity/viewcontroller/ViewController$-CC;->$default$b(Lcom/callapp/contacts/activity/viewcontroller/ViewController;)V

    return-void
.end method

.method public synthetic getContext()Landroid/content/Context;
    .locals 1

    invoke-static {p0}, Lcom/callapp/contacts/activity/viewcontroller/ViewController$-CC;->$default$getContext(Lcom/callapp/contacts/activity/viewcontroller/ViewController;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getResources()Landroid/content/res/Resources;
    .locals 1

    invoke-static {p0}, Lcom/callapp/contacts/activity/viewcontroller/ViewController$-CC;->$default$getResources(Lcom/callapp/contacts/activity/viewcontroller/ViewController;)Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public getRootView()Landroid/view/View;
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController;->a:Landroid/view/View;

    return-object v0
.end method

.method public isThemeDark()Z
    .locals 2

    .line 142
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController;->h:Lcom/callapp/contacts/activity/contact/header/ThemeState;

    sget-object v1, Lcom/callapp/contacts/activity/contact/header/ThemeState;->DARK:Lcom/callapp/contacts/activity/contact/header/ThemeState;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController;->h:Lcom/callapp/contacts/activity/contact/header/ThemeState;

    sget-object v1, Lcom/callapp/contacts/activity/contact/header/ThemeState;->PRIMARYDARK:Lcom/callapp/contacts/activity/contact/header/ThemeState;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public synthetic isViewShown()Z
    .locals 1

    invoke-static {p0}, Lcom/callapp/contacts/activity/viewcontroller/ViewController$-CC;->$default$isViewShown(Lcom/callapp/contacts/activity/viewcontroller/ViewController;)Z

    move-result v0

    return v0
.end method

.method public release()V
    .locals 1
    .annotation runtime Landroidx/lifecycle/v;
        a = .enum Landroidx/lifecycle/j$a;->ON_DESTROY:Landroidx/lifecycle/j$a;
    .end annotation

    const/4 v0, 0x0

    .line 186
    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController;->g:Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController$contactDetailsThemeChangeListener;

    .line 187
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController;->i:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 188
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 189
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController;->i:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method public setAlpha(F)V
    .locals 4

    .line 171
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController;->a:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    float-to-double v0, p1

    const-wide v2, 0x3feccccccccccccdL    # 0.9

    cmpg-double p1, v0, v2

    if-gez p1, :cond_0

    .line 172
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController;->d:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->isClickable()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 173
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController;->d:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 174
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController;->e:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 175
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController;->f:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    return-void

    :cond_0
    cmpl-double p1, v0, v2

    if-ltz p1, :cond_1

    .line 176
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController;->d:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->isClickable()Z

    move-result p1

    if-nez p1, :cond_1

    .line 177
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController;->d:Landroid/view/View;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 178
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController;->e:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 179
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController;->f:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    :cond_1
    return-void
.end method

.method public setThirdButtonVisibility(Z)V
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController;->e:Landroid/view/View;

    invoke-static {v0, p1}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;Z)V

    return-void
.end method

.method public setTranslationY(F)V
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController;->a:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method
