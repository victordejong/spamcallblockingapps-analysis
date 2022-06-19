.class Lcom/callapp/contacts/manager/inAppBilling/BillingManager$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/manager/inAppBilling/BillingManager;->a(Ljava/lang/String;Ljava/util/List;Lcom/android/billingclient/api/m;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/android/billingclient/api/m;

.field final synthetic d:Lcom/callapp/contacts/manager/inAppBilling/BillingManager;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/manager/inAppBilling/BillingManager;Ljava/util/List;Ljava/lang/String;Lcom/android/billingclient/api/m;)V
    .locals 0

    .line 503
    iput-object p1, p0, Lcom/callapp/contacts/manager/inAppBilling/BillingManager$5;->d:Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

    iput-object p2, p0, Lcom/callapp/contacts/manager/inAppBilling/BillingManager$5;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/callapp/contacts/manager/inAppBilling/BillingManager$5;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/callapp/contacts/manager/inAppBilling/BillingManager$5;->c:Lcom/android/billingclient/api/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1000
    new-instance v0, Lcom/android/billingclient/api/l$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/billingclient/api/l$a;-><init>(Lcom/android/billingclient/api/aa;)V

    .line 506
    iget-object v1, p0, Lcom/callapp/contacts/manager/inAppBilling/BillingManager$5;->a:Ljava/util/List;

    .line 507
    new-instance v2, Ljava/util/ArrayList;

    .line 1001
    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, v0, Lcom/android/billingclient/api/l$a;->b:Ljava/util/List;

    .line 507
    iget-object v1, p0, Lcom/callapp/contacts/manager/inAppBilling/BillingManager$5;->b:Ljava/lang/String;

    .line 2000
    iput-object v1, v0, Lcom/android/billingclient/api/l$a;->a:Ljava/lang/String;

    .line 507
    iget-object v1, v0, Lcom/android/billingclient/api/l$a;->a:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 2001
    iget-object v1, v0, Lcom/android/billingclient/api/l$a;->b:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 2004
    new-instance v1, Lcom/android/billingclient/api/l;

    invoke-direct {v1}, Lcom/android/billingclient/api/l;-><init>()V

    iget-object v2, v0, Lcom/android/billingclient/api/l$a;->a:Ljava/lang/String;

    .line 3000
    iput-object v2, v1, Lcom/android/billingclient/api/l;->a:Ljava/lang/String;

    .line 2002
    iget-object v0, v0, Lcom/android/billingclient/api/l$a;->b:Ljava/util/List;

    .line 4000
    iput-object v0, v1, Lcom/android/billingclient/api/l;->b:Ljava/util/List;

    .line 508
    iget-object v0, p0, Lcom/callapp/contacts/manager/inAppBilling/BillingManager$5;->d:Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

    invoke-static {v0}, Lcom/callapp/contacts/manager/inAppBilling/BillingManager;->b(Lcom/callapp/contacts/manager/inAppBilling/BillingManager;)Lcom/android/billingclient/api/c;

    move-result-object v0

    new-instance v2, Lcom/callapp/contacts/manager/inAppBilling/BillingManager$5$1;

    invoke-direct {v2, p0}, Lcom/callapp/contacts/manager/inAppBilling/BillingManager$5$1;-><init>(Lcom/callapp/contacts/manager/inAppBilling/BillingManager$5;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/billingclient/api/c;->a(Lcom/android/billingclient/api/l;Lcom/android/billingclient/api/m;)V

    return-void

    .line 2001
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SKU list or SkuWithOffer list must be set"

    .line 2004
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 507
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SKU type must be set"

    .line 2001
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
