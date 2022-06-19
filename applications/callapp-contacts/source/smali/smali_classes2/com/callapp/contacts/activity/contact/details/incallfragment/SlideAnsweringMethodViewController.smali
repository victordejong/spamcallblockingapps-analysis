.class public Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;
.super Lcom/callapp/contacts/activity/contact/details/incallfragment/BaseAnsweringMethodViewController;
.source "SourceFile"


# instance fields
.field private a:F

.field private b:F

.field private c:I

.field private d:I

.field private e:F

.field private f:I

.field private final g:Landroid/view/animation/Animation;

.field private h:Landroid/widget/ImageView;

.field private i:Landroid/widget/ImageView;

.field private j:Landroid/widget/RelativeLayout;

.field private k:Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;

.field private l:Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;

.field private m:Z


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;Lcom/callapp/contacts/activity/marketplace/ButtonSet;Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment$InCallActionFragmentInterface;)V
    .locals 7

    .line 47
    invoke-direct {p0, p1, p3}, Lcom/callapp/contacts/activity/contact/details/incallfragment/BaseAnsweringMethodViewController;-><init>(Landroid/view/ViewGroup;Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment$InCallActionFragmentInterface;)V

    .line 48
    sget-object p3, Lcom/callapp/contacts/manager/preferences/Prefs;->fE:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {p3}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    .line 49
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;->getRootView()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz p3, :cond_0

    .line 1089
    new-instance v1, Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController$1;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController$1;-><init>(Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;)V

    goto :goto_0

    .line 1204
    :cond_0
    new-instance v1, Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController$2;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController$2;-><init>(Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;)V

    .line 49
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 50
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;->c:I

    .line 51
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07020e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;->d:I

    .line 52
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f010025

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;->g:Landroid/view/animation/Animation;

    const v1, 0x7f0a0191

    .line 53
    invoke-virtual {p0, v1}, Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;->a(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;->h:Landroid/widget/ImageView;

    const v1, 0x7f0a0190

    .line 54
    invoke-virtual {p0, v1}, Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;->a(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;->i:Landroid/widget/ImageView;

    const v1, 0x7f0a018f

    .line 55
    invoke-virtual {p0, v1}, Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;->a(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;->j:Landroid/widget/RelativeLayout;

    .line 56
    invoke-virtual {p2}, Lcom/callapp/contacts/activity/marketplace/ButtonSet;->isGif()Z

    move-result v1

    iput-boolean v1, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;->m:Z

    if-nez v1, :cond_1

    .line 58
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;->j:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    const v0, 0x7f0a00e7

    .line 60
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;->k:Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;

    const v0, 0x7f0a00e9

    .line 61
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;->l:Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;

    .line 62
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;->k:Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;->startAnimation()V

    .line 63
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;->l:Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;->startAnimation()V

    if-eqz p3, :cond_2

    .line 64
    iget v0, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;->c:I

    int-to-float v0, v0

    const v1, 0x3e4ccccd    # 0.2f

    mul-float v0, v0, v1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    iput v0, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;->b:F

    if-eqz p3, :cond_3

    .line 65
    iget p3, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;->c:I

    int-to-float p3, p3

    const v0, 0x3f19999a    # 0.6f

    goto :goto_2

    :cond_3
    iget p3, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;->d:I

    int-to-float p3, p3

    const v0, 0x3f28f5c3    # 0.66f

    :goto_2
    mul-float p3, p3, v0

    iput p3, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;->e:F

    .line 66
    iget-boolean p3, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;->m:Z

    const/16 v0, 0x8

    if-eqz p3, :cond_4

    .line 67
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;->i:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 68
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;->h:Landroid/widget/ImageView;

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 69
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;->h:Landroid/widget/ImageView;

    iget-object p3, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;->i:Landroid/widget/ImageView;

    invoke-virtual {p3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 70
    new-instance v0, Lcom/callapp/contacts/util/glide/GlideUtils$GifPlayer;

    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;->h:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;->h:Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/callapp/contacts/activity/marketplace/ButtonSet;->getAnswerResourceUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/callapp/contacts/activity/marketplace/ButtonSet;->getAnswerCallDrawableRes()I

    move-result v4

    const/4 v5, -0x1

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/callapp/contacts/util/glide/GlideUtils$GifPlayer;-><init>(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;IIZ)V

    return-void

    .line 71
    :cond_4
    invoke-virtual {p2}, Lcom/callapp/contacts/activity/marketplace/ButtonSet;->getAnswerCallDrawableRes()I

    move-result p3

    const v1, 0x7f080310

    const v2, 0x7f060244

    const/4 v3, 0x1

    if-eq p3, v1, :cond_5

    invoke-virtual {p2}, Lcom/callapp/contacts/activity/marketplace/ButtonSet;->shouldHideBackground()Z

    move-result p3

    if-eqz p3, :cond_5

    .line 72
    iget-object p3, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;->i:Landroid/widget/ImageView;

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 73
    new-instance p3, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;->h:Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/callapp/contacts/activity/marketplace/ButtonSet;->getAnswerCallDrawableRes()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p3, v0, p2, p1}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;-><init>(Landroid/widget/ImageView;ILandroid/content/Context;)V

    .line 1376
    iput-boolean v3, p3, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->q:Z

    .line 73
    invoke-virtual {p3}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->d()V

    .line 74
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;->h:Landroid/widget/ImageView;

    new-instance p2, Landroid/graphics/PorterDuffColorFilter;

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p3

    invoke-static {p3, v2}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result p3

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, p3, v0}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void

    .line 76
    :cond_5
    new-instance p3, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;->i:Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/callapp/contacts/activity/marketplace/ButtonSet;->getAnswerCallDrawableRes()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p3, v0, p2, p1}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;-><init>(Landroid/widget/ImageView;ILandroid/content/Context;)V

    .line 2376
    iput-boolean v3, p3, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->q:Z

    .line 76
    invoke-virtual {p3}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->d()V

    .line 77
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;->h:Landroid/widget/ImageView;

    new-instance p2, Landroid/graphics/PorterDuffColorFilter;

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p3

    const v0, 0x7f06010d

    invoke-static {p3, v0}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result p3

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, p3, v0}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 78
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;->i:Landroid/widget/ImageView;

    new-instance p2, Landroid/graphics/PorterDuffColorFilter;

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p3

    invoke-static {p3, v2}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result p3

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, p3, v0}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;F)F
    .locals 0

    .line 30
    iput p1, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;->a:F

    return p1
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;)I
    .locals 0

    .line 30
    iget p0, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;->c:I

    return p0
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;I)I
    .locals 0

    .line 30
    iput p1, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;->f:I

    return p1
.end method

.method private synthetic a(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 339
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;->m:Z

    if-eqz v0, :cond_0

    .line 340
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;->h:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0

    .line 342
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;->h:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, p1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 344
    :goto_0
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;->h:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method static synthetic b(Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;->j:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method private synthetic b(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 332
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;->i:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, p1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 333
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;->i:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method static synthetic c(Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;)I
    .locals 0

    .line 30
    iget p0, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;->d:I

    return p0
.end method

.method static synthetic d(Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;)Z
    .locals 0

    .line 30
    iget-boolean p0, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;->m:Z

    return p0
.end method

.method static synthetic e(Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;)Landroid/view/animation/Animation;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;->g:Landroid/view/animation/Animation;

    return-object p0
.end method

.method static synthetic f(Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;)V
    .locals 7

    .line 3329
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    iget v1, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;->f:I

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 3330
    new-instance v1, Landroid/animation/ArgbEvaluator;

    invoke-direct {v1}, Landroid/animation/ArgbEvaluator;-><init>()V

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v3, v6

    invoke-static {v1, v3}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 3331
    new-instance v3, Lcom/callapp/contacts/activity/contact/details/incallfragment/-$$Lambda$SlideAnsweringMethodViewController$Lme-BZW5ZBugSeWy8rVnUPE5uXs;

    invoke-direct {v3, p0}, Lcom/callapp/contacts/activity/contact/details/incallfragment/-$$Lambda$SlideAnsweringMethodViewController$Lme-BZW5ZBugSeWy8rVnUPE5uXs;-><init>(Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;)V

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 3336
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 3337
    new-instance v0, Landroid/animation/ArgbEvaluator;

    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {v3}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v4

    iget-object v3, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;->i:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    const v3, 0x7f06010d

    goto :goto_0

    :cond_0
    const v3, 0x7f060244

    :goto_0
    invoke-static {v3}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v6

    invoke-static {v0, v5}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 3338
    new-instance v3, Lcom/callapp/contacts/activity/contact/details/incallfragment/-$$Lambda$SlideAnsweringMethodViewController$il-FWnPuxmK4YzeyaueA0Mb5sjE;

    invoke-direct {v3, p0}, Lcom/callapp/contacts/activity/contact/details/incallfragment/-$$Lambda$SlideAnsweringMethodViewController$il-FWnPuxmK4YzeyaueA0Mb5sjE;-><init>(Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 3347
    new-instance p0, Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v2, v2, [Landroid/animation/Animator;

    aput-object v1, v2, v4

    aput-object v0, v2, v6

    .line 3348
    invoke-virtual {p0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v0, 0x1f4

    .line 3349
    invoke-virtual {p0, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 3350
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method static synthetic g(Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;)F
    .locals 0

    .line 30
    iget p0, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;->a:F

    return p0
.end method

.method static synthetic h(Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;)F
    .locals 0

    .line 30
    iget p0, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;->e:F

    return p0
.end method

.method static synthetic i(Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;)F
    .locals 0

    .line 30
    iget p0, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;->b:F

    return p0
.end method

.method static synthetic j(Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;)Landroid/widget/ImageView;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;->h:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic k(Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;)Landroid/widget/ImageView;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;->i:Landroid/widget/ImageView;

    return-object p0
.end method

.method public static synthetic lambda$Lme-BZW5ZBugSeWy8rVnUPE5uXs(Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;->b(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic lambda$il-FWnPuxmK4YzeyaueA0Mb5sjE(Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;->a(Landroid/animation/ValueAnimator;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 355
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;->k:Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;->stopAnimation()V

    .line 356
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;->l:Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;->stopAnimation()V

    .line 357
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;->j:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->clearAnimation()V

    .line 358
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;->g:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 359
    invoke-super {p0}, Lcom/callapp/contacts/activity/contact/details/incallfragment/BaseAnsweringMethodViewController;->a()V

    return-void
.end method

.method protected getLayoutResource()I
    .locals 1

    .line 84
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->fE:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0d0181

    return v0

    :cond_0
    const v0, 0x7f0d0183

    return v0
.end method
