.class Lcom/callapp/contacts/widget/onboarding/OnboardingViewPagerViewHolder$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/widget/onboarding/OnboardingViewPagerViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/widget/onboarding/OnboardingViewPagerViewHolder;

.field private b:I


# direct methods
.method constructor <init>(Lcom/callapp/contacts/widget/onboarding/OnboardingViewPagerViewHolder;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/callapp/contacts/widget/onboarding/OnboardingViewPagerViewHolder$2;->a:Lcom/callapp/contacts/widget/onboarding/OnboardingViewPagerViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x4

    .line 35
    iput p1, p0, Lcom/callapp/contacts/widget/onboarding/OnboardingViewPagerViewHolder$2;->b:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 39
    iget v0, p0, Lcom/callapp/contacts/widget/onboarding/OnboardingViewPagerViewHolder$2;->b:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/callapp/contacts/widget/onboarding/OnboardingViewPagerViewHolder$2;->b:I

    const-wide/16 v2, 0x5dc

    if-ltz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/callapp/contacts/widget/onboarding/OnboardingViewPagerViewHolder$2;->a:Lcom/callapp/contacts/widget/onboarding/OnboardingViewPagerViewHolder;

    invoke-virtual {v0}, Lcom/callapp/contacts/widget/onboarding/OnboardingViewPagerViewHolder;->getPager()Landroidx/viewpager/widget/ViewPager;

    move-result-object v0

    iget v4, p0, Lcom/callapp/contacts/widget/onboarding/OnboardingViewPagerViewHolder$2;->b:I

    invoke-virtual {v0, v4, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    .line 42
    iget-object v0, p0, Lcom/callapp/contacts/widget/onboarding/OnboardingViewPagerViewHolder$2;->a:Lcom/callapp/contacts/widget/onboarding/OnboardingViewPagerViewHolder;

    invoke-virtual {v0}, Lcom/callapp/contacts/widget/onboarding/OnboardingViewPagerViewHolder;->getPager()Landroidx/viewpager/widget/ViewPager;

    move-result-object v0

    invoke-virtual {v0, p0, v2, v3}, Landroidx/viewpager/widget/ViewPager;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_0
    const/4 v0, 0x4

    .line 44
    iput v0, p0, Lcom/callapp/contacts/widget/onboarding/OnboardingViewPagerViewHolder$2;->b:I

    .line 45
    iget-object v0, p0, Lcom/callapp/contacts/widget/onboarding/OnboardingViewPagerViewHolder$2;->a:Lcom/callapp/contacts/widget/onboarding/OnboardingViewPagerViewHolder;

    invoke-virtual {v0}, Lcom/callapp/contacts/widget/onboarding/OnboardingViewPagerViewHolder;->getPager()Landroidx/viewpager/widget/ViewPager;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/widget/onboarding/OnboardingViewPagerViewHolder$2;->a:Lcom/callapp/contacts/widget/onboarding/OnboardingViewPagerViewHolder;

    invoke-static {v1}, Lcom/callapp/contacts/widget/onboarding/OnboardingViewPagerViewHolder;->b(Lcom/callapp/contacts/widget/onboarding/OnboardingViewPagerViewHolder;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v3}, Landroidx/viewpager/widget/ViewPager;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
