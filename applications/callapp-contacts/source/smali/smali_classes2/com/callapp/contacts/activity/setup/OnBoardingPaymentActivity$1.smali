.class Lcom/callapp/contacts/activity/setup/OnBoardingPaymentActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/setup/OnBoardingPaymentActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/setup/OnBoardingPaymentActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/setup/OnBoardingPaymentActivity;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/callapp/contacts/activity/setup/OnBoardingPaymentActivity$1;->a:Lcom/callapp/contacts/activity/setup/OnBoardingPaymentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 122
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/OnBoardingPaymentActivity$1;->a:Lcom/callapp/contacts/activity/setup/OnBoardingPaymentActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/setup/OnBoardingPaymentActivity;->a(Lcom/callapp/contacts/activity/setup/OnBoardingPaymentActivity;)V

    .line 123
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string v0, "Registration"

    const-string v1, "ClickOnboardingPayment"

    const-string v2, "IWishToSeeAds"

    invoke-virtual {p1, v0, v1, v2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
