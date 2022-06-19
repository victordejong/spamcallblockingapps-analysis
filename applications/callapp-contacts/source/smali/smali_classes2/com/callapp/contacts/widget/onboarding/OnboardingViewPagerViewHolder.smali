.class public Lcom/callapp/contacts/widget/onboarding/OnboardingViewPagerViewHolder;
.super Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerLayoutViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerLayoutViewHolder<",
        "Lcom/callapp/contacts/manager/onboarding/welcome_stage/OnboardingDrawableAndTextPair;",
        ">;"
    }
.end annotation


# instance fields
.field private b:Lcom/callapp/contacts/widget/DurationAffectedScroller;

.field private final c:Ljava/lang/Runnable;

.field private final d:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;Landroidx/fragment/app/FragmentManager;)V
    .locals 2

    .line 51
    new-instance v0, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerAdapter;

    const-class v1, Lcom/callapp/contacts/widget/onboarding/OnboardingViewPagerFragment;

    invoke-direct {v0, p2, v1}, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;Ljava/lang/Class;)V

    invoke-direct {p0, p1, v0}, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerLayoutViewHolder;-><init>(Landroid/view/ViewGroup;Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerAdapter;)V

    .line 19
    new-instance p1, Lcom/callapp/contacts/widget/onboarding/OnboardingViewPagerViewHolder$1;

    invoke-direct {p1, p0}, Lcom/callapp/contacts/widget/onboarding/OnboardingViewPagerViewHolder$1;-><init>(Lcom/callapp/contacts/widget/onboarding/OnboardingViewPagerViewHolder;)V

    iput-object p1, p0, Lcom/callapp/contacts/widget/onboarding/OnboardingViewPagerViewHolder;->c:Ljava/lang/Runnable;

    .line 34
    new-instance p1, Lcom/callapp/contacts/widget/onboarding/OnboardingViewPagerViewHolder$2;

    invoke-direct {p1, p0}, Lcom/callapp/contacts/widget/onboarding/OnboardingViewPagerViewHolder$2;-><init>(Lcom/callapp/contacts/widget/onboarding/OnboardingViewPagerViewHolder;)V

    iput-object p1, p0, Lcom/callapp/contacts/widget/onboarding/OnboardingViewPagerViewHolder;->d:Ljava/lang/Runnable;

    .line 52
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/onboarding/OnboardingViewPagerViewHolder;->getPager()Landroidx/viewpager/widget/ViewPager;

    move-result-object p1

    new-instance p2, Lcom/callapp/contacts/widget/onboarding/-$$Lambda$OnboardingViewPagerViewHolder$dx35WFG_cpTpQtlDB8iSGtEmJL8;

    invoke-direct {p2, p0}, Lcom/callapp/contacts/widget/onboarding/-$$Lambda$OnboardingViewPagerViewHolder$dx35WFG_cpTpQtlDB8iSGtEmJL8;-><init>(Lcom/callapp/contacts/widget/onboarding/OnboardingViewPagerViewHolder;)V

    invoke-static {p1, p2}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;Lcom/callapp/contacts/api/ContextRunnable;)V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/widget/onboarding/OnboardingViewPagerViewHolder;)Ljava/lang/Runnable;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/callapp/contacts/widget/onboarding/OnboardingViewPagerViewHolder;->d:Ljava/lang/Runnable;

    return-object p0
.end method

.method private synthetic a(Landroid/view/View;)V
    .locals 6

    const-wide/16 v0, 0x5dc

    .line 54
    :try_start_0
    new-instance v2, Lcom/callapp/contacts/widget/DurationAffectedScroller;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v4}, Landroid/view/animation/LinearInterpolator;-><init>()V

    const/16 v5, 0x2bc

    invoke-direct {v2, v3, v4, v5}, Lcom/callapp/contacts/widget/DurationAffectedScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;I)V

    iput-object v2, p0, Lcom/callapp/contacts/widget/onboarding/OnboardingViewPagerViewHolder;->b:Lcom/callapp/contacts/widget/DurationAffectedScroller;

    const-string v3, "mScroller"

    .line 55
    invoke-static {p1, v3, v2}, Lcom/callapp/contacts/util/ReflectionUtils;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    :catch_0
    iget-object v2, p0, Lcom/callapp/contacts/widget/onboarding/OnboardingViewPagerViewHolder;->c:Ljava/lang/Runnable;

    invoke-virtual {p1, v2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/callapp/contacts/widget/onboarding/OnboardingViewPagerViewHolder;->c:Ljava/lang/Runnable;

    invoke-virtual {p1, v3, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 59
    throw v2
.end method

.method static synthetic b(Lcom/callapp/contacts/widget/onboarding/OnboardingViewPagerViewHolder;)Ljava/lang/Runnable;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/callapp/contacts/widget/onboarding/OnboardingViewPagerViewHolder;->c:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic lambda$dx35WFG_cpTpQtlDB8iSGtEmJL8(Lcom/callapp/contacts/widget/onboarding/OnboardingViewPagerViewHolder;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/callapp/contacts/widget/onboarding/OnboardingViewPagerViewHolder;->a(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final d()V
    .locals 2

    .line 64
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/onboarding/OnboardingViewPagerViewHolder;->getPager()Landroidx/viewpager/widget/ViewPager;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/widget/onboarding/OnboardingViewPagerViewHolder;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 65
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/onboarding/OnboardingViewPagerViewHolder;->getPager()Landroidx/viewpager/widget/ViewPager;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/widget/onboarding/OnboardingViewPagerViewHolder;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method
