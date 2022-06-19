.class public Lcom/callapp/contacts/widget/onboarding/OnboardingViewPagerContainer;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field private a:Lcom/callapp/contacts/widget/onboarding/OnboardingViewPagerViewHolder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 19
    invoke-direct {p0, p1, v0}, Lcom/callapp/contacts/widget/onboarding/OnboardingViewPagerContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 23
    invoke-direct {p0, p1, p2, v0}, Lcom/callapp/contacts/widget/onboarding/OnboardingViewPagerContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0d01ad

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p0, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    return-void
.end method

.method private a()V
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/callapp/contacts/widget/onboarding/OnboardingViewPagerContainer;->a:Lcom/callapp/contacts/widget/onboarding/OnboardingViewPagerViewHolder;

    if-eqz v0, :cond_0

    .line 44
    invoke-virtual {v0}, Lcom/callapp/contacts/widget/onboarding/OnboardingViewPagerViewHolder;->d()V

    :cond_0
    return-void
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 0

    .line 50
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 51
    invoke-direct {p0}, Lcom/callapp/contacts/widget/onboarding/OnboardingViewPagerContainer;->a()V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 33
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    .line 34
    invoke-direct {p0}, Lcom/callapp/contacts/widget/onboarding/OnboardingViewPagerContainer;->a()V

    return p1
.end method

.method public setData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/manager/onboarding/welcome_stage/OnboardingDrawableAndTextPair;",
            ">;)V"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/callapp/contacts/widget/onboarding/OnboardingViewPagerContainer;->a:Lcom/callapp/contacts/widget/onboarding/OnboardingViewPagerViewHolder;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/widget/onboarding/OnboardingViewPagerViewHolder;->a(Ljava/util/List;)V

    return-void
.end method
