.class Lcom/callapp/contacts/activity/setup/OnBoardingPaymentActivity$2;
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

    .line 127
    iput-object p1, p0, Lcom/callapp/contacts/activity/setup/OnBoardingPaymentActivity$2;->a:Lcom/callapp/contacts/activity/setup/OnBoardingPaymentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 130
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/OnBoardingPaymentActivity$2;->a:Lcom/callapp/contacts/activity/setup/OnBoardingPaymentActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/setup/OnBoardingPaymentActivity;->b(Lcom/callapp/contacts/activity/setup/OnBoardingPaymentActivity;)Landroid/widget/TextView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 131
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/OnBoardingPaymentActivity$2;->a:Lcom/callapp/contacts/activity/setup/OnBoardingPaymentActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/setup/OnBoardingPaymentActivity;->b(Lcom/callapp/contacts/activity/setup/OnBoardingPaymentActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setClickable(Z)V

    .line 132
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/OnBoardingPaymentActivity$2;->a:Lcom/callapp/contacts/activity/setup/OnBoardingPaymentActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/setup/OnBoardingPaymentActivity;->c(Lcom/callapp/contacts/activity/setup/OnBoardingPaymentActivity;)V

    .line 133
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string v0, "Registration"

    const-string v1, "ClickOnboardingPayment"

    const-string v2, "GoPremium"

    invoke-virtual {p1, v0, v1, v2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
