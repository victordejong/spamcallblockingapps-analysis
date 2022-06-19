.class public Lcom/callapp/contacts/widget/onboarding/OnboardingViewPagerFragment;
.super Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/widget/onboarding/OnboardingViewPagerFragment$OnboardingItemViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerFragment<",
        "Lcom/callapp/contacts/widget/onboarding/OnboardingViewPagerFragment$OnboardingItemViewHolder;",
        "Lcom/callapp/contacts/manager/onboarding/welcome_stage/OnboardingDrawableAndTextPair;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Landroid/view/View;)Ljava/lang/Object;
    .locals 1

    .line 2021
    new-instance v0, Lcom/callapp/contacts/widget/onboarding/OnboardingViewPagerFragment$OnboardingItemViewHolder;

    invoke-direct {v0, p1}, Lcom/callapp/contacts/widget/onboarding/OnboardingViewPagerFragment$OnboardingItemViewHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    .line 12
    check-cast p1, Lcom/callapp/contacts/widget/onboarding/OnboardingViewPagerFragment$OnboardingItemViewHolder;

    check-cast p2, Lcom/callapp/contacts/manager/onboarding/welcome_stage/OnboardingDrawableAndTextPair;

    if-eqz p2, :cond_0

    .line 1041
    iget-object v0, p1, Lcom/callapp/contacts/widget/onboarding/OnboardingViewPagerFragment$OnboardingItemViewHolder;->a:Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/callapp/contacts/manager/onboarding/welcome_stage/OnboardingDrawableAndTextPair;->getDrawableRes()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/callapp/contacts/util/ImageUtils;->a(Landroid/widget/ImageView;ILandroid/graphics/ColorFilter;)V

    .line 1042
    iget-object p1, p1, Lcom/callapp/contacts/widget/onboarding/OnboardingViewPagerFragment$OnboardingItemViewHolder;->b:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/callapp/contacts/manager/onboarding/welcome_stage/OnboardingDrawableAndTextPair;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public getLayoutResId()I
    .locals 1

    const v0, 0x7f0d017b

    return v0
.end method
