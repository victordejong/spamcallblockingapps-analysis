.class Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/inAppBilling/BillingManager$BillingUpdatesListener;


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

    .line 243
    iput-object p1, p0, Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity$7;->a:Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 246
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity$7;->a:Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity;->e(Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity;)Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity$7;->a:Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity;->e(Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity;)Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/inAppBilling/BillingManager;->a()V

    :cond_0
    return-void
.end method

.method public synthetic a(Lcom/android/billingclient/api/g;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/callapp/contacts/manager/inAppBilling/BillingManager$BillingUpdatesListener$-CC;->$default$a(Lcom/callapp/contacts/manager/inAppBilling/BillingManager$BillingUpdatesListener;Lcom/android/billingclient/api/g;Ljava/util/List;)V

    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/i;",
            ">;)V"
        }
    .end annotation

    .line 253
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "onboarding_basic"

    .line 254
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "yearly_01"

    .line 255
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "yearly_02"

    .line 256
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 258
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity$7;->a:Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity;->e(Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity;)Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity$7$1;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity$7$1;-><init>(Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity$7;)V

    const-string v2, "subs"

    invoke-virtual {v0, v2, p1, v1}, Lcom/callapp/contacts/manager/inAppBilling/BillingManager;->a(Ljava/lang/String;Ljava/util/List;Lcom/android/billingclient/api/m;)V

    return-void
.end method

.method public synthetic b(Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/callapp/contacts/manager/inAppBilling/BillingManager$BillingUpdatesListener$-CC;->$default$b(Lcom/callapp/contacts/manager/inAppBilling/BillingManager$BillingUpdatesListener;Ljava/util/List;)V

    return-void
.end method
