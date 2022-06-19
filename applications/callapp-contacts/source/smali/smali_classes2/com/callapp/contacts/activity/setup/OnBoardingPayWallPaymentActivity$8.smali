.class Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity$8;
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

    .line 333
    iput-object p1, p0, Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity$8;->a:Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 336
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity$8;->a:Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity;->g(Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity;)Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity$8;->a:Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity;

    invoke-static {v1}, Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity;->b(Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "subs"

    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/manager/inAppBilling/BillingManager;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

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

    .line 346
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity$8;->a:Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity;->d(Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity;)Landroid/widget/TextView;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 347
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity$8;->a:Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity;->d(Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setClickable(Z)V

    .line 348
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity$8;->a:Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity;->a(Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 349
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity$8;->a:Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity;->a(Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setClickable(Z)V

    return-void
.end method

.method public synthetic a(Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/callapp/contacts/manager/inAppBilling/BillingManager$BillingUpdatesListener$-CC;->$default$a(Lcom/callapp/contacts/manager/inAppBilling/BillingManager$BillingUpdatesListener;Ljava/util/List;)V

    return-void
.end method

.method public final b(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/i;",
            ">;)V"
        }
    .end annotation

    .line 341
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity$8;->a:Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity;->f(Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity;)V

    return-void
.end method
