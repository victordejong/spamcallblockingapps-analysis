.class public Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/StoreButtonViewController;
.super Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/CollapsingButtonViewController;
.source "SourceFile"


# instance fields
.field private a:Lcom/skyfishjy/library/RippleBackground;

.field private b:Lcom/callapp/contacts/util/Predicate;

.field private c:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;IFLjava/lang/Runnable;Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/notification/BaseNotificationBadgeViewController;Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;)V
    .locals 0

    .line 42
    invoke-direct/range {p0 .. p8}, Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/CollapsingButtonViewController;-><init>(Landroid/content/Context;ILjava/lang/String;IFLjava/lang/Runnable;Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/notification/BaseNotificationBadgeViewController;Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;)V

    .line 20
    sget-object p1, Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/-$$Lambda$StoreButtonViewController$sOHVwsxy4d3e4WNEdbdu-5TcZ8o;->INSTANCE:Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/-$$Lambda$StoreButtonViewController$sOHVwsxy4d3e4WNEdbdu-5TcZ8o;

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/StoreButtonViewController;->b:Lcom/callapp/contacts/util/Predicate;

    .line 22
    new-instance p1, Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/-$$Lambda$StoreButtonViewController$h5OP8ezn4ItDFxsyGdzyIqNQZ8Q;

    invoke-direct {p1, p0}, Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/-$$Lambda$StoreButtonViewController$h5OP8ezn4ItDFxsyGdzyIqNQZ8Q;-><init>(Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/StoreButtonViewController;)V

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/StoreButtonViewController;->c:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/StoreButtonViewController;)Lcom/skyfishjy/library/RippleBackground;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/StoreButtonViewController;->a:Lcom/skyfishjy/library/RippleBackground;

    return-object p0
.end method

.method static synthetic b(Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/StoreButtonViewController;)Ljava/lang/Runnable;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/StoreButtonViewController;->c:Ljava/lang/Runnable;

    return-object p0
.end method

.method private synthetic f()V
    .locals 3

    .line 23
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/StoreButtonViewController;->a:Lcom/skyfishjy/library/RippleBackground;

    if-eqz v0, :cond_0

    .line 24
    invoke-virtual {v0}, Lcom/skyfishjy/library/RippleBackground;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xfa

    .line 25
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/StoreButtonViewController$1;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/StoreButtonViewController$1;-><init>(Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/StoreButtonViewController;)V

    .line 26
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 33
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_0
    return-void
.end method

.method private static synthetic g()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static synthetic lambda$h5OP8ezn4ItDFxsyGdzyIqNQZ8Q(Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/StoreButtonViewController;)V
    .locals 0

    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/StoreButtonViewController;->f()V

    return-void
.end method

.method public static synthetic lambda$sOHVwsxy4d3e4WNEdbdu-5TcZ8o()Z
    .locals 1

    invoke-static {}, Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/StoreButtonViewController;->g()Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected final a()V
    .locals 1

    .line 79
    invoke-super {p0}, Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/CollapsingButtonViewController;->a()V

    .line 80
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/StoreButtonViewController;->a:Lcom/skyfishjy/library/RippleBackground;

    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {v0}, Lcom/skyfishjy/library/RippleBackground;->b()V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 3

    .line 47
    invoke-super {p0}, Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/CollapsingButtonViewController;->b()V

    .line 48
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/StoreButtonViewController;->b:Lcom/callapp/contacts/util/Predicate;

    invoke-interface {v0}, Lcom/callapp/contacts/util/Predicate;->accept()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 49
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/StoreButtonViewController;->a:Lcom/skyfishjy/library/RippleBackground;

    if-nez v0, :cond_0

    .line 50
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/StoreButtonViewController;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d027c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/skyfishjy/library/RippleBackground;

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/StoreButtonViewController;->a:Lcom/skyfishjy/library/RippleBackground;

    .line 51
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/StoreButtonViewController;->getRootView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/StoreButtonViewController;->a:Lcom/skyfishjy/library/RippleBackground;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 52
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/StoreButtonViewController;->a:Lcom/skyfishjy/library/RippleBackground;

    invoke-virtual {v0}, Lcom/skyfishjy/library/RippleBackground;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 55
    :cond_0
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/StoreButtonViewController;->e()V

    :cond_1
    return-void
.end method

.method public final d()V
    .locals 2

    .line 61
    invoke-super {p0}, Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/CollapsingButtonViewController;->d()V

    .line 62
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/StoreButtonViewController;->a:Lcom/skyfishjy/library/RippleBackground;

    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {v0}, Lcom/skyfishjy/library/RippleBackground;->b()V

    .line 64
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/StoreButtonViewController;->a:Lcom/skyfishjy/library/RippleBackground;

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/StoreButtonViewController;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/skyfishjy/library/RippleBackground;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final e()V
    .locals 3

    .line 86
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/StoreButtonViewController;->b:Lcom/callapp/contacts/util/Predicate;

    invoke-interface {v0}, Lcom/callapp/contacts/util/Predicate;->accept()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/StoreButtonViewController;->a:Lcom/skyfishjy/library/RippleBackground;

    if-eqz v0, :cond_0

    .line 1150
    iget-boolean v0, v0, Lcom/skyfishjy/library/RippleBackground;->a:Z

    if-nez v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/StoreButtonViewController;->a:Lcom/skyfishjy/library/RippleBackground;

    .line 88
    invoke-virtual {v0}, Lcom/skyfishjy/library/RippleBackground;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    .line 89
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const v1, 0x3e99999a    # 0.3f

    .line 90
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/StoreButtonViewController$2;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/StoreButtonViewController$2;-><init>(Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/StoreButtonViewController;)V

    .line 91
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 100
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_0
    return-void
.end method

.method public isShowingLoyaltyGesture()Z
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/StoreButtonViewController;->b:Lcom/callapp/contacts/util/Predicate;

    invoke-interface {v0}, Lcom/callapp/contacts/util/Predicate;->accept()Z

    move-result v0

    return v0
.end method

.method public setScale(F)V
    .locals 1

    .line 70
    invoke-super {p0, p1}, Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/CollapsingButtonViewController;->setScale(F)V

    .line 71
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/StoreButtonViewController;->a:Lcom/skyfishjy/library/RippleBackground;

    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {v0, p1}, Lcom/skyfishjy/library/RippleBackground;->setScaleX(F)V

    .line 73
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/StoreButtonViewController;->a:Lcom/skyfishjy/library/RippleBackground;

    invoke-virtual {v0, p1}, Lcom/skyfishjy/library/RippleBackground;->setScaleY(F)V

    :cond_0
    return-void
.end method

.method public setShouldPlayAnimation(Lcom/callapp/contacts/util/Predicate;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/StoreButtonViewController;->b:Lcom/callapp/contacts/util/Predicate;

    return-void
.end method
