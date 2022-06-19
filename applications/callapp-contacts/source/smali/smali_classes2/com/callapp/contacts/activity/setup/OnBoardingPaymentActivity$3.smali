.class Lcom/callapp/contacts/activity/setup/OnBoardingPaymentActivity$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/inAppBilling/BillingManager$BillingUpdatesListener;


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

    .line 141
    iput-object p1, p0, Lcom/callapp/contacts/activity/setup/OnBoardingPaymentActivity$3;->a:Lcom/callapp/contacts/activity/setup/OnBoardingPaymentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 144
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/OnBoardingPaymentActivity$3;->a:Lcom/callapp/contacts/activity/setup/OnBoardingPaymentActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/setup/OnBoardingPaymentActivity;->d(Lcom/callapp/contacts/activity/setup/OnBoardingPaymentActivity;)Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/OnBoardingPaymentActivity$3;->a:Lcom/callapp/contacts/activity/setup/OnBoardingPaymentActivity;

    const-string v1, "onboarding_system"

    invoke-static {v0, v1}, Lcom/callapp/contacts/activity/setup/OnBoardingPaymentActivity;->a(Lcom/callapp/contacts/activity/setup/OnBoardingPaymentActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 146
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/OnBoardingPaymentActivity$3;->a:Lcom/callapp/contacts/activity/setup/OnBoardingPaymentActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/setup/OnBoardingPaymentActivity;->d(Lcom/callapp/contacts/activity/setup/OnBoardingPaymentActivity;)Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/setup/OnBoardingPaymentActivity$3;->a:Lcom/callapp/contacts/activity/setup/OnBoardingPaymentActivity;

    invoke-static {v1}, Lcom/callapp/contacts/activity/setup/OnBoardingPaymentActivity;->e(Lcom/callapp/contacts/activity/setup/OnBoardingPaymentActivity;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "subs"

    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/manager/inAppBilling/BillingManager;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/android/billingclient/api/g;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/g;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/i;",
            ">;)V"
        }
    .end annotation

    .line 166
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/OnBoardingPaymentActivity$3;->a:Lcom/callapp/contacts/activity/setup/OnBoardingPaymentActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/setup/OnBoardingPaymentActivity;->b(Lcom/callapp/contacts/activity/setup/OnBoardingPaymentActivity;)Landroid/widget/TextView;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 167
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/OnBoardingPaymentActivity$3;->a:Lcom/callapp/contacts/activity/setup/OnBoardingPaymentActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/setup/OnBoardingPaymentActivity;->b(Lcom/callapp/contacts/activity/setup/OnBoardingPaymentActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setClickable(Z)V

    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/i;",
            ">;)V"
        }
    .end annotation

    .line 152
    invoke-static {p1}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 153
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/billingclient/api/i;

    .line 154
    invoke-virtual {v0}, Lcom/android/billingclient/api/i;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/setup/OnBoardingPaymentActivity$3;->a:Lcom/callapp/contacts/activity/setup/OnBoardingPaymentActivity;

    invoke-static {v1}, Lcom/callapp/contacts/activity/setup/OnBoardingPaymentActivity;->e(Lcom/callapp/contacts/activity/setup/OnBoardingPaymentActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/OnBoardingPaymentActivity$3;->a:Lcom/callapp/contacts/activity/setup/OnBoardingPaymentActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/setup/OnBoardingPaymentActivity;->a(Lcom/callapp/contacts/activity/setup/OnBoardingPaymentActivity;)V

    .line 156
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/OnBoardingPaymentActivity$3;->a:Lcom/callapp/contacts/activity/setup/OnBoardingPaymentActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/setup/OnBoardingPaymentActivity;->d(Lcom/callapp/contacts/activity/setup/OnBoardingPaymentActivity;)Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/inAppBilling/BillingManager;->b()V

    return-void

    .line 161
    :cond_1
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/OnBoardingPaymentActivity$3;->a:Lcom/callapp/contacts/activity/setup/OnBoardingPaymentActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/setup/OnBoardingPaymentActivity;->d(Lcom/callapp/contacts/activity/setup/OnBoardingPaymentActivity;)Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/inAppBilling/BillingManager;->b()V

    return-void
.end method

.method public synthetic b(Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/callapp/contacts/manager/inAppBilling/BillingManager$BillingUpdatesListener$-CC;->$default$b(Lcom/callapp/contacts/manager/inAppBilling/BillingManager$BillingUpdatesListener;Ljava/util/List;)V

    return-void
.end method
