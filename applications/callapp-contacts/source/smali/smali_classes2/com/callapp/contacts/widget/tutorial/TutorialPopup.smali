.class public Lcom/callapp/contacts/widget/tutorial/TutorialPopup;
.super Lcom/callapp/contacts/manager/popup/DialogPopup;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/widget/tutorial/command/events/OnCommandDoneListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/widget/tutorial/TutorialPopup$TutorialAdapter;,
        Lcom/callapp/contacts/widget/tutorial/TutorialPopup$TutorialPageListener;,
        Lcom/callapp/contacts/widget/tutorial/TutorialPopup$TutorialPopupListener;
    }
.end annotation


# instance fields
.field a:Lcom/callapp/contacts/widget/PagingTogglableViewPager;

.field b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callapp/contacts/widget/tutorial/TutorialPageModel;",
            ">;"
        }
    .end annotation
.end field

.field c:Landroid/view/ViewGroup;

.field d:Landroid/widget/LinearLayout;

.field e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/callapp/contacts/widget/tutorial/TutorialStepMarker;",
            ">;"
        }
    .end annotation
.end field

.field f:Lcom/callapp/contacts/widget/CallAppAnimatedViewPagerIndicator;

.field g:Lcom/skyfishjy/library/RippleBackground;

.field h:Lcom/callapp/contacts/widget/tutorial/TutorialPopup$TutorialAdapter;

.field private j:Lcom/callapp/contacts/widget/tutorial/TutorialPopup$TutorialPopupListener;

.field private k:Lcom/callapp/contacts/event/bus/EventBus;

.field private l:Ljava/lang/Runnable;

.field private m:Landroid/widget/HorizontalScrollView;


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/widget/tutorial/TutorialPopup$TutorialPopupListener;Ljava/util/List;Lcom/callapp/contacts/event/bus/EventBus;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/widget/tutorial/TutorialPopup$TutorialPopupListener;",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/widget/tutorial/TutorialPageModel;",
            ">;",
            "Lcom/callapp/contacts/event/bus/EventBus;",
            ")V"
        }
    .end annotation

    .line 101
    invoke-direct {p0}, Lcom/callapp/contacts/manager/popup/DialogPopup;-><init>()V

    .line 58
    new-instance v0, Lcom/callapp/contacts/widget/tutorial/-$$Lambda$TutorialPopup$csEeLPOxkwdG9XQthZ1skCRUGlc;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/widget/tutorial/-$$Lambda$TutorialPopup$csEeLPOxkwdG9XQthZ1skCRUGlc;-><init>(Lcom/callapp/contacts/widget/tutorial/TutorialPopup;)V

    iput-object v0, p0, Lcom/callapp/contacts/widget/tutorial/TutorialPopup;->l:Ljava/lang/Runnable;

    .line 102
    iput-object p1, p0, Lcom/callapp/contacts/widget/tutorial/TutorialPopup;->j:Lcom/callapp/contacts/widget/tutorial/TutorialPopup$TutorialPopupListener;

    .line 103
    iput-object p2, p0, Lcom/callapp/contacts/widget/tutorial/TutorialPopup;->b:Ljava/util/List;

    .line 104
    iput-object p3, p0, Lcom/callapp/contacts/widget/tutorial/TutorialPopup;->k:Lcom/callapp/contacts/event/bus/EventBus;

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/widget/tutorial/TutorialPopup;I)Lcom/callapp/contacts/util/Predicate;
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/callapp/contacts/widget/tutorial/TutorialPopup;->getTutorialViewPredicate(I)Lcom/callapp/contacts/util/Predicate;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/callapp/contacts/widget/tutorial/TutorialPopup;)Lcom/callapp/contacts/widget/PagingTogglableViewPager;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/callapp/contacts/widget/tutorial/TutorialPopup;->a:Lcom/callapp/contacts/widget/PagingTogglableViewPager;

    return-object p0
.end method

.method private synthetic a()V
    .locals 2

    .line 181
    iget-object v0, p0, Lcom/callapp/contacts/widget/tutorial/TutorialPopup;->m:Landroid/widget/HorizontalScrollView;

    const/16 v1, 0x42

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->fullScroll(I)Z

    return-void
.end method

.method private synthetic a(Landroid/view/View;)V
    .locals 4

    .line 146
    :try_start_0
    new-instance v0, Lcom/callapp/contacts/widget/DurationAffectedScroller;

    invoke-virtual {p0}, Lcom/callapp/contacts/widget/tutorial/TutorialPopup;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    const/16 v3, 0xc8

    invoke-direct {v0, v1, v2, v3}, Lcom/callapp/contacts/widget/DurationAffectedScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;I)V

    const-string v1, "mScroller"

    .line 147
    invoke-static {p1, v1, v0}, Lcom/callapp/contacts/util/ReflectionUtils;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/widget/tutorial/TutorialPopup;IZ)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/widget/tutorial/TutorialPopup;->setNextButtonState(IZ)V

    return-void
.end method

.method private static synthetic a(Z)Z
    .locals 0

    return p0
.end method

.method static synthetic b(Lcom/callapp/contacts/widget/tutorial/TutorialPopup;)Ljava/util/List;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/callapp/contacts/widget/tutorial/TutorialPopup;->b:Ljava/util/List;

    return-object p0
.end method

.method private synthetic b()V
    .locals 3

    .line 59
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const v1, 0x3f59999a    # 0.85f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0x3e8

    .line 60
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    const/4 v1, 0x1

    .line 61
    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 62
    new-instance v1, Lcom/callapp/contacts/widget/tutorial/TutorialPopup$1;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/widget/tutorial/TutorialPopup$1;-><init>(Lcom/callapp/contacts/widget/tutorial/TutorialPopup;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 69
    iget-object v1, p0, Lcom/callapp/contacts/widget/tutorial/TutorialPopup;->g:Lcom/skyfishjy/library/RippleBackground;

    invoke-virtual {v1, v0}, Lcom/skyfishjy/library/RippleBackground;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private synthetic b(Landroid/view/View;)V
    .locals 0

    .line 126
    iget-object p1, p0, Lcom/callapp/contacts/widget/tutorial/TutorialPopup;->j:Lcom/callapp/contacts/widget/tutorial/TutorialPopup$TutorialPopupListener;

    invoke-interface {p1}, Lcom/callapp/contacts/widget/tutorial/TutorialPopup$TutorialPopupListener;->a()V

    return-void
.end method

.method static synthetic b(Lcom/callapp/contacts/widget/tutorial/TutorialPopup;I)V
    .locals 1

    const/4 v0, 0x1

    .line 46
    invoke-virtual {p0, p1, v0}, Lcom/callapp/contacts/widget/tutorial/TutorialPopup;->setCurrentItem(IZ)V

    return-void
.end method

.method static synthetic c(Lcom/callapp/contacts/widget/tutorial/TutorialPopup;)V
    .locals 10

    .line 2314
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/callapp/contacts/widget/tutorial/TutorialPopup;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v9, Lcom/callapp/contacts/popup/contact/DialogSimpleMessage;

    .line 2315
    invoke-static {}, Lcom/callapp/contacts/manager/inAppBilling/BillingManager;->isBillingAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7f12072b

    goto :goto_0

    :cond_0
    const v2, 0x7f12072a

    :goto_0
    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v2, 0x7f120729

    .line 2316
    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const v2, 0x7f1201e3

    .line 2318
    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-instance v8, Lcom/callapp/contacts/widget/tutorial/TutorialPopup$3;

    invoke-direct {v8, p0}, Lcom/callapp/contacts/widget/tutorial/TutorialPopup$3;-><init>(Lcom/callapp/contacts/widget/tutorial/TutorialPopup;)V

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcom/callapp/contacts/popup/contact/DialogSimpleMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;)V

    .line 2314
    invoke-virtual {v0, v1, v9}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    return-void
.end method

.method static synthetic d(Lcom/callapp/contacts/widget/tutorial/TutorialPopup;)Lcom/skyfishjy/library/RippleBackground;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/callapp/contacts/widget/tutorial/TutorialPopup;->g:Lcom/skyfishjy/library/RippleBackground;

    return-object p0
.end method

.method private getTutorialViewPredicate(I)Lcom/callapp/contacts/util/Predicate;
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/callapp/contacts/widget/tutorial/TutorialPopup;->h:Lcom/callapp/contacts/widget/tutorial/TutorialPopup$TutorialAdapter;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/widget/tutorial/TutorialPopup$TutorialAdapter;->getTutorialViewAtPosition(I)Lcom/callapp/contacts/widget/tutorial/TutorialView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/widget/tutorial/TutorialView;->getData()Lcom/callapp/contacts/widget/tutorial/TutorialPageModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/widget/tutorial/TutorialPageModel;->getShouldBeDisplayed()Lcom/callapp/contacts/util/Predicate;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic lambda$2bCf2ksRAMTdqC_XxCP5RcjLbnI(Lcom/callapp/contacts/widget/tutorial/TutorialPopup;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/callapp/contacts/widget/tutorial/TutorialPopup;->b(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$Hv0Cu6cRKYk-9jA9mo4sUn-rF6g(Z)Z
    .locals 0

    invoke-static {p0}, Lcom/callapp/contacts/widget/tutorial/TutorialPopup;->a(Z)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$XVrR5Z5OJU-fNZQ3LBYc7ePZA_o(Lcom/callapp/contacts/widget/tutorial/TutorialPopup;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/callapp/contacts/widget/tutorial/TutorialPopup;->a(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$csEeLPOxkwdG9XQthZ1skCRUGlc(Lcom/callapp/contacts/widget/tutorial/TutorialPopup;)V
    .locals 0

    invoke-direct {p0}, Lcom/callapp/contacts/widget/tutorial/TutorialPopup;->b()V

    return-void
.end method

.method public static synthetic lambda$tvmWpFYiUmwGNWmJHBy00V4YJV8(Lcom/callapp/contacts/widget/tutorial/TutorialPopup;)V
    .locals 0

    invoke-direct {p0}, Lcom/callapp/contacts/widget/tutorial/TutorialPopup;->a()V

    return-void
.end method

.method private setNextButtonState(IZ)V
    .locals 1

    .line 213
    new-instance v0, Lcom/callapp/contacts/widget/tutorial/-$$Lambda$TutorialPopup$Hv0Cu6cRKYk-9jA9mo4sUn-rF6g;

    invoke-direct {v0, p2}, Lcom/callapp/contacts/widget/tutorial/-$$Lambda$TutorialPopup$Hv0Cu6cRKYk-9jA9mo4sUn-rF6g;-><init>(Z)V

    .line 214
    iget-object p2, p0, Lcom/callapp/contacts/widget/tutorial/TutorialPopup;->h:Lcom/callapp/contacts/widget/tutorial/TutorialPopup$TutorialAdapter;

    invoke-virtual {p2, p1}, Lcom/callapp/contacts/widget/tutorial/TutorialPopup$TutorialAdapter;->getTutorialViewAtPosition(I)Lcom/callapp/contacts/widget/tutorial/TutorialView;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/widget/tutorial/TutorialView;->setNextButtonState(Lcom/callapp/contacts/util/Predicate;)V

    return-void
.end method

.method private setupViewPager(Landroid/view/View;)V
    .locals 4

    const v0, 0x7f0a0aa8

    .line 140
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/widget/PagingTogglableViewPager;

    iput-object p1, p0, Lcom/callapp/contacts/widget/tutorial/TutorialPopup;->a:Lcom/callapp/contacts/widget/PagingTogglableViewPager;

    .line 141
    new-instance v0, Lcom/callapp/contacts/widget/tutorial/TutorialPopup$TutorialPageListener;

    iget-object v1, p0, Lcom/callapp/contacts/widget/tutorial/TutorialPopup;->b:Ljava/util/List;

    iget-object v2, p0, Lcom/callapp/contacts/widget/tutorial/TutorialPopup;->j:Lcom/callapp/contacts/widget/tutorial/TutorialPopup$TutorialPopupListener;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/callapp/contacts/widget/tutorial/TutorialPopup$TutorialPageListener;-><init>(Lcom/callapp/contacts/widget/tutorial/TutorialPopup;Ljava/util/List;Lcom/callapp/contacts/widget/tutorial/TutorialPopup$TutorialPopupListener;Lcom/callapp/contacts/widget/tutorial/TutorialPopup$1;)V

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/widget/PagingTogglableViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$e;)V

    .line 142
    iget-object p1, p0, Lcom/callapp/contacts/widget/tutorial/TutorialPopup;->a:Lcom/callapp/contacts/widget/PagingTogglableViewPager;

    iget-object v0, p0, Lcom/callapp/contacts/widget/tutorial/TutorialPopup;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/widget/PagingTogglableViewPager;->setOffscreenPageLimit(I)V

    .line 143
    iget-object p1, p0, Lcom/callapp/contacts/widget/tutorial/TutorialPopup;->a:Lcom/callapp/contacts/widget/PagingTogglableViewPager;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/widget/PagingTogglableViewPager;->setPagingEnabled(Z)V

    .line 144
    iget-object p1, p0, Lcom/callapp/contacts/widget/tutorial/TutorialPopup;->a:Lcom/callapp/contacts/widget/PagingTogglableViewPager;

    new-instance v0, Lcom/callapp/contacts/widget/tutorial/-$$Lambda$TutorialPopup$XVrR5Z5OJU-fNZQ3LBYc7ePZA_o;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/widget/tutorial/-$$Lambda$TutorialPopup$XVrR5Z5OJU-fNZQ3LBYc7ePZA_o;-><init>(Lcom/callapp/contacts/widget/tutorial/TutorialPopup;)V

    invoke-static {p1, v0}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;Lcom/callapp/contacts/api/ContextRunnable;)V

    return-void
.end method

.method private setupViews(Landroid/view/View;)V
    .locals 3

    const v0, 0x7f0a06ce

    .line 123
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/callapp/contacts/widget/tutorial/TutorialPopup;->c:Landroid/view/ViewGroup;

    const v0, 0x7f0a06cf

    .line 124
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/callapp/contacts/widget/tutorial/TutorialPopup;->d:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0489

    .line 125
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/HorizontalScrollView;

    iput-object v0, p0, Lcom/callapp/contacts/widget/tutorial/TutorialPopup;->m:Landroid/widget/HorizontalScrollView;

    .line 126
    iget-object v0, p0, Lcom/callapp/contacts/widget/tutorial/TutorialPopup;->c:Landroid/view/ViewGroup;

    const v1, 0x7f0a016c

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/widget/tutorial/-$$Lambda$TutorialPopup$2bCf2ksRAMTdqC_XxCP5RcjLbnI;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/widget/tutorial/-$$Lambda$TutorialPopup$2bCf2ksRAMTdqC_XxCP5RcjLbnI;-><init>(Lcom/callapp/contacts/widget/tutorial/TutorialPopup;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    iget-object v0, p0, Lcom/callapp/contacts/widget/tutorial/TutorialPopup;->c:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/callapp/contacts/widget/tutorial/TutorialPopup;->setupViewPager(Landroid/view/View;)V

    const v0, 0x7f0a0518

    .line 129
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/widget/CallAppAnimatedViewPagerIndicator;

    iput-object v0, p0, Lcom/callapp/contacts/widget/tutorial/TutorialPopup;->f:Lcom/callapp/contacts/widget/CallAppAnimatedViewPagerIndicator;

    .line 130
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060244

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/widget/CallAppAnimatedViewPagerIndicator;->setPageColor(I)V

    .line 131
    iget-object v0, p0, Lcom/callapp/contacts/widget/tutorial/TutorialPopup;->f:Lcom/callapp/contacts/widget/CallAppAnimatedViewPagerIndicator;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060088

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/widget/CallAppAnimatedViewPagerIndicator;->setFillColor(I)V

    .line 132
    iget-object v0, p0, Lcom/callapp/contacts/widget/tutorial/TutorialPopup;->f:Lcom/callapp/contacts/widget/CallAppAnimatedViewPagerIndicator;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06010f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/widget/CallAppAnimatedViewPagerIndicator;->setStrokeColor(I)V

    .line 133
    iget-object v0, p0, Lcom/callapp/contacts/widget/tutorial/TutorialPopup;->f:Lcom/callapp/contacts/widget/CallAppAnimatedViewPagerIndicator;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07039b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/widget/CallAppAnimatedViewPagerIndicator;->setSeparationLineLength(F)V

    .line 134
    iget-object v0, p0, Lcom/callapp/contacts/widget/tutorial/TutorialPopup;->f:Lcom/callapp/contacts/widget/CallAppAnimatedViewPagerIndicator;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/widget/CallAppAnimatedViewPagerIndicator;->setDotAnimationDuration(J)V

    .line 135
    iget-object v0, p0, Lcom/callapp/contacts/widget/tutorial/TutorialPopup;->f:Lcom/callapp/contacts/widget/CallAppAnimatedViewPagerIndicator;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070189

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/widget/CallAppAnimatedViewPagerIndicator;->setRadius(F)V

    .line 136
    iget-object v0, p0, Lcom/callapp/contacts/widget/tutorial/TutorialPopup;->f:Lcom/callapp/contacts/widget/CallAppAnimatedViewPagerIndicator;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f07017a

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/widget/CallAppAnimatedViewPagerIndicator;->setStrokeWidth(F)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/callapp/contacts/widget/tutorial/command/TutorialCommand$COMMAND_TYPE;)V
    .locals 2

    .line 77
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/widget/tutorial/TutorialPopup$2;

    invoke-direct {v1, p0, p1}, Lcom/callapp/contacts/widget/tutorial/TutorialPopup$2;-><init>(Lcom/callapp/contacts/widget/tutorial/TutorialPopup;Lcom/callapp/contacts/widget/tutorial/command/TutorialCommand$COMMAND_TYPE;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public dismiss()V
    .locals 2

    .line 331
    iget-object v0, p0, Lcom/callapp/contacts/widget/tutorial/TutorialPopup;->g:Lcom/skyfishjy/library/RippleBackground;

    if-eqz v0, :cond_0

    .line 332
    invoke-virtual {v0}, Lcom/skyfishjy/library/RippleBackground;->b()V

    .line 333
    iget-object v0, p0, Lcom/callapp/contacts/widget/tutorial/TutorialPopup;->g:Lcom/skyfishjy/library/RippleBackground;

    iget-object v1, p0, Lcom/callapp/contacts/widget/tutorial/TutorialPopup;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/skyfishjy/library/RippleBackground;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 335
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/widget/tutorial/TutorialPopup;->k:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object v1, Lcom/callapp/contacts/widget/tutorial/command/events/OnCommandDoneListener;->i:Lcom/callapp/contacts/event/bus/EventType;

    invoke-virtual {v0, v1, p0}, Lcom/callapp/contacts/event/bus/EventBus;->b(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;)V

    .line 336
    invoke-super {p0}, Lcom/callapp/contacts/manager/popup/DialogPopup;->dismiss()V

    return-void
.end method

.method public ovViewCreated(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    const p2, 0x7f0d01b1

    const/4 v0, 0x0

    .line 115
    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 116
    invoke-direct {p0, p1}, Lcom/callapp/contacts/widget/tutorial/TutorialPopup;->setupViews(Landroid/view/View;)V

    .line 117
    iget-object p2, p0, Lcom/callapp/contacts/widget/tutorial/TutorialPopup;->k:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object v0, Lcom/callapp/contacts/widget/tutorial/command/events/OnCommandDoneListener;->i:Lcom/callapp/contacts/event/bus/EventType;

    invoke-virtual {p2, v0, p0}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;)V

    return-object p1
.end method

.method setCurrentItem(IZ)V
    .locals 7

    const/4 v0, 0x0

    .line 164
    :goto_0
    iget-object v1, p0, Lcom/callapp/contacts/widget/tutorial/TutorialPopup;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_7

    const-wide/16 v1, 0xc8

    const/high16 v3, 0x3f800000    # 1.0f

    if-ge v0, p1, :cond_1

    .line 166
    iget-object v4, p0, Lcom/callapp/contacts/widget/tutorial/TutorialPopup;->e:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/callapp/contacts/widget/tutorial/TutorialStepMarker;

    const v5, 0x3f19999a    # 0.6f

    if-eqz p2, :cond_0

    .line 1102
    iget-object v4, v4, Lcom/callapp/contacts/widget/tutorial/TutorialStepMarker;->b:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    .line 1103
    invoke-virtual {v4, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    .line 1104
    invoke-virtual {v4, v3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 1105
    invoke-virtual {v3, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 1106
    invoke-virtual {v3, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 1107
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto/16 :goto_1

    .line 1109
    :cond_0
    invoke-virtual {v4, v3, v3, v5}, Lcom/callapp/contacts/widget/tutorial/TutorialStepMarker;->a(FFF)V

    goto :goto_1

    :cond_1
    if-le v0, p1, :cond_3

    .line 168
    iget-object v4, p0, Lcom/callapp/contacts/widget/tutorial/TutorialPopup;->e:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/callapp/contacts/widget/tutorial/TutorialStepMarker;

    const v5, 0x3e4ccccd    # 0.2f

    if-eqz p2, :cond_2

    .line 2060
    iget-object v4, v4, Lcom/callapp/contacts/widget/tutorial/TutorialStepMarker;->b:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    .line 2061
    invoke-virtual {v4, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    .line 2062
    invoke-virtual {v4, v3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 2063
    invoke-virtual {v3, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 2064
    invoke-virtual {v3, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 2065
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_1

    .line 2067
    :cond_2
    invoke-virtual {v4, v3, v3, v5}, Lcom/callapp/contacts/widget/tutorial/TutorialStepMarker;->a(FFF)V

    goto :goto_1

    .line 170
    :cond_3
    iget-object v4, p0, Lcom/callapp/contacts/widget/tutorial/TutorialPopup;->e:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/callapp/contacts/widget/tutorial/TutorialStepMarker;

    const v5, 0x3fa66666    # 1.3f

    if-eqz p2, :cond_5

    .line 2076
    iget-object v6, v4, Lcom/callapp/contacts/widget/tutorial/TutorialStepMarker;->b:Landroid/widget/ImageView;

    .line 2077
    invoke-virtual {v6}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    .line 2078
    invoke-virtual {v6, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 2079
    invoke-virtual {v3, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 2080
    iget-boolean v2, v4, Lcom/callapp/contacts/widget/tutorial/TutorialStepMarker;->a:Z

    if-eqz v2, :cond_4

    .line 2081
    new-instance v2, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v2}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    .line 2082
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 2083
    invoke-virtual {v2, v5}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 2084
    invoke-virtual {v2, v5}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    .line 2086
    :cond_4
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_1

    .line 2088
    :cond_5
    iget-boolean v1, v4, Lcom/callapp/contacts/widget/tutorial/TutorialStepMarker;->a:Z

    if-eqz v1, :cond_6

    .line 2089
    invoke-virtual {v4, v5, v5, v3}, Lcom/callapp/contacts/widget/tutorial/TutorialStepMarker;->a(FFF)V

    goto :goto_1

    .line 2091
    :cond_6
    invoke-virtual {v4, v3, v3, v3}, Lcom/callapp/contacts/widget/tutorial/TutorialStepMarker;->a(FFF)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 173
    :cond_7
    iget-object p2, p0, Lcom/callapp/contacts/widget/tutorial/TutorialPopup;->f:Lcom/callapp/contacts/widget/CallAppAnimatedViewPagerIndicator;

    invoke-virtual {p2, p1}, Lcom/callapp/contacts/widget/CallAppAnimatedViewPagerIndicator;->setCurrentItem(I)V

    if-lez p1, :cond_8

    .line 174
    iget-object p2, p0, Lcom/callapp/contacts/widget/tutorial/TutorialPopup;->e:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    if-ge p1, p2, :cond_8

    .line 175
    iget-object p2, p0, Lcom/callapp/contacts/widget/tutorial/TutorialPopup;->g:Lcom/skyfishjy/library/RippleBackground;

    invoke-virtual {p2}, Lcom/skyfishjy/library/RippleBackground;->b()V

    .line 176
    iget-object p2, p0, Lcom/callapp/contacts/widget/tutorial/TutorialPopup;->g:Lcom/skyfishjy/library/RippleBackground;

    iget-object v0, p0, Lcom/callapp/contacts/widget/tutorial/TutorialPopup;->l:Ljava/lang/Runnable;

    invoke-virtual {p2, v0}, Lcom/skyfishjy/library/RippleBackground;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 177
    iget-object p2, p0, Lcom/callapp/contacts/widget/tutorial/TutorialPopup;->g:Lcom/skyfishjy/library/RippleBackground;

    invoke-virtual {p2}, Lcom/skyfishjy/library/RippleBackground;->a()V

    .line 178
    iget-object p2, p0, Lcom/callapp/contacts/widget/tutorial/TutorialPopup;->g:Lcom/skyfishjy/library/RippleBackground;

    iget-object v0, p0, Lcom/callapp/contacts/widget/tutorial/TutorialPopup;->l:Ljava/lang/Runnable;

    invoke-virtual {p2, v0}, Lcom/skyfishjy/library/RippleBackground;->post(Ljava/lang/Runnable;)Z

    .line 180
    :cond_8
    iget-object p2, p0, Lcom/callapp/contacts/widget/tutorial/TutorialPopup;->b:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    if-lt p1, p2, :cond_9

    .line 181
    iget-object p1, p0, Lcom/callapp/contacts/widget/tutorial/TutorialPopup;->m:Landroid/widget/HorizontalScrollView;

    new-instance p2, Lcom/callapp/contacts/widget/tutorial/-$$Lambda$TutorialPopup$tvmWpFYiUmwGNWmJHBy00V4YJV8;

    invoke-direct {p2, p0}, Lcom/callapp/contacts/widget/tutorial/-$$Lambda$TutorialPopup$tvmWpFYiUmwGNWmJHBy00V4YJV8;-><init>(Lcom/callapp/contacts/widget/tutorial/TutorialPopup;)V

    invoke-virtual {p1, p2}, Landroid/widget/HorizontalScrollView;->post(Ljava/lang/Runnable;)Z

    :cond_9
    return-void
.end method

.method public setDialogWindowSize(Landroid/view/Window;)V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, -0x2

    .line 109
    invoke-virtual {p1, v0, v1}, Landroid/view/Window;->setLayout(II)V

    .line 110
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    const v1, 0x7f080118

    invoke-static {v0, v1}, Landroidx/core/content/b;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
