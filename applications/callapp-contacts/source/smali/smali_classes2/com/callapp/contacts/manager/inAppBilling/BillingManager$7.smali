.class Lcom/callapp/contacts/manager/inAppBilling/BillingManager$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/manager/inAppBilling/BillingManager;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/manager/inAppBilling/BillingManager;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/manager/inAppBilling/BillingManager;)V
    .locals 0

    .line 571
    iput-object p1, p0, Lcom/callapp/contacts/manager/inAppBilling/BillingManager$7;->a:Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 574
    iget-object v0, p0, Lcom/callapp/contacts/manager/inAppBilling/BillingManager$7;->a:Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

    invoke-static {v0}, Lcom/callapp/contacts/manager/inAppBilling/BillingManager;->b(Lcom/callapp/contacts/manager/inAppBilling/BillingManager;)Lcom/android/billingclient/api/c;

    move-result-object v0

    const-string v1, "inapp"

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/c;->a(Ljava/lang/String;)Lcom/android/billingclient/api/i$a;

    move-result-object v0

    .line 575
    iget-object v1, p0, Lcom/callapp/contacts/manager/inAppBilling/BillingManager$7;->a:Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

    invoke-static {v1}, Lcom/callapp/contacts/manager/inAppBilling/BillingManager;->b(Lcom/callapp/contacts/manager/inAppBilling/BillingManager;)Lcom/android/billingclient/api/c;

    move-result-object v1

    const-string v2, "subs"

    invoke-virtual {v1, v2}, Lcom/android/billingclient/api/c;->a(Ljava/lang/String;)Lcom/android/billingclient/api/i$a;

    move-result-object v1

    .line 2000
    iget-object v2, v1, Lcom/android/billingclient/api/i$a;->b:Lcom/android/billingclient/api/g;

    .line 3000
    iget v2, v2, Lcom/android/billingclient/api/g;->a:I

    if-nez v2, :cond_0

    .line 4000
    iget-object v2, v0, Lcom/android/billingclient/api/i$a;->b:Lcom/android/billingclient/api/g;

    .line 5000
    iget v2, v2, Lcom/android/billingclient/api/g;->a:I

    if-nez v2, :cond_0

    .line 6000
    iget-object v2, v0, Lcom/android/billingclient/api/i$a;->a:Ljava/util/List;

    .line 7000
    iget-object v1, v1, Lcom/android/billingclient/api/i$a;->a:Ljava/util/List;

    .line 577
    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 578
    iget-object v1, p0, Lcom/callapp/contacts/manager/inAppBilling/BillingManager$7;->a:Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

    invoke-static {}, Lcom/android/billingclient/api/g;->a()Lcom/android/billingclient/api/g$a;

    move-result-object v2

    const/4 v3, 0x0

    .line 8000
    iput v3, v2, Lcom/android/billingclient/api/g$a;->a:I

    .line 578
    invoke-virtual {v2}, Lcom/android/billingclient/api/g$a;->a()Lcom/android/billingclient/api/g;

    move-result-object v2

    .line 9000
    iget-object v0, v0, Lcom/android/billingclient/api/i$a;->a:Ljava/util/List;

    .line 578
    invoke-virtual {v1, v2, v0}, Lcom/callapp/contacts/manager/inAppBilling/BillingManager;->a(Lcom/android/billingclient/api/g;Ljava/util/List;)V

    :cond_0
    return-void
.end method
