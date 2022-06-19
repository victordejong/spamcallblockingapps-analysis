.class Lcom/callapp/contacts/manager/inAppBilling/BillingManager$3;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/manager/inAppBilling/BillingManager;->a(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Lcom/callapp/contacts/manager/inAppBilling/BillingManager;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/manager/inAppBilling/BillingManager;Ljava/lang/Runnable;)V
    .locals 0

    .line 359
    iput-object p1, p0, Lcom/callapp/contacts/manager/inAppBilling/BillingManager$3;->b:Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

    iput-object p2, p0, Lcom/callapp/contacts/manager/inAppBilling/BillingManager$3;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 2

    .line 362
    iget-object v0, p0, Lcom/callapp/contacts/manager/inAppBilling/BillingManager$3;->b:Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

    invoke-static {v0}, Lcom/callapp/contacts/manager/inAppBilling/BillingManager;->b(Lcom/callapp/contacts/manager/inAppBilling/BillingManager;)Lcom/android/billingclient/api/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/billingclient/api/c;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/callapp/contacts/manager/inAppBilling/BillingManager$3;->a:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 364
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void

    .line 367
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/manager/inAppBilling/BillingManager$3;->b:Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

    invoke-static {v0}, Lcom/callapp/contacts/manager/inAppBilling/BillingManager;->b(Lcom/callapp/contacts/manager/inAppBilling/BillingManager;)Lcom/android/billingclient/api/c;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/manager/inAppBilling/BillingManager$3$1;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/manager/inAppBilling/BillingManager$3$1;-><init>(Lcom/callapp/contacts/manager/inAppBilling/BillingManager$3;)V

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/c;->a(Lcom/android/billingclient/api/e;)V

    :cond_1
    return-void
.end method
