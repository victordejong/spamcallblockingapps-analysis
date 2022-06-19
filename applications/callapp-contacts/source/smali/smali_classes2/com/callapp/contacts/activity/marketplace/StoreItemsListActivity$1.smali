.class Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/inAppBilling/BillingManager$BillingUpdatesListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity$1;->a:Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity$1;->a:Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity;

    iget-object v0, v0, Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity;->b:Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity$1;->a:Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity;

    iget-object v0, v0, Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity;->b:Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

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
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/i;",
            ">;)V"
        }
    .end annotation

    .line 95
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity$1;->a:Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity;->a(Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity;)V

    return-void
.end method

.method public synthetic b(Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/callapp/contacts/manager/inAppBilling/BillingManager$BillingUpdatesListener$-CC;->$default$b(Lcom/callapp/contacts/manager/inAppBilling/BillingManager$BillingUpdatesListener;Ljava/util/List;)V

    return-void
.end method
