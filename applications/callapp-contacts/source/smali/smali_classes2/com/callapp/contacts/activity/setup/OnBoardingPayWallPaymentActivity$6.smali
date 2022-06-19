.class Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity;)V
    .locals 0

    .line 204
    iput-object p1, p0, Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity$6;->a:Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 207
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity$6;->a:Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity;

    const-string v1, "yearly_01"

    invoke-static {v0, v1}, Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity;->a(Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity;Ljava/lang/String;)Ljava/lang/String;

    const/4 v0, 0x1

    .line 208
    invoke-static {p1, v0}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/view/View;I)V

    .line 209
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity$6;->a:Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity;->d(Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity;)Landroid/widget/TextView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 210
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity$6;->a:Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity;->d(Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setClickable(Z)V

    .line 211
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity$6;->a:Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity;->b(Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Registration"

    const-string v2, "ClickOnboardingPaymentPayWall2"

    invoke-virtual {p1, v1, v2, v0}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity$6;->a:Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity;->c(Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity;)V

    return-void
.end method
