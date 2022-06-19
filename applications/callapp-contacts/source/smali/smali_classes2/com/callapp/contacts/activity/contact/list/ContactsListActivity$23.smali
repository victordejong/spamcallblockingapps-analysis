.class Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$23;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/inAppBilling/BillingManager$BillingUpdatesListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->u()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)V
    .locals 0

    .line 1813
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$23;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1816
    invoke-static {}, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager;->get()Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$23;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->G(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager;->a(Lcom/callapp/contacts/manager/inAppBilling/BillingManager;Ljava/util/List;)Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogReqBuilder;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$23$1;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$23$1;-><init>(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$23;)V

    .line 2207
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogReqBuilder;->a(Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$OnCatalogAttributesLoaded;)V

    return-void
.end method

.method public synthetic a(Lcom/android/billingclient/api/g;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/callapp/contacts/manager/inAppBilling/BillingManager$BillingUpdatesListener$-CC;->$default$a(Lcom/callapp/contacts/manager/inAppBilling/BillingManager$BillingUpdatesListener;Lcom/android/billingclient/api/g;Ljava/util/List;)V

    return-void
.end method

.method public synthetic a(Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/callapp/contacts/manager/inAppBilling/BillingManager$BillingUpdatesListener$-CC;->$default$a(Lcom/callapp/contacts/manager/inAppBilling/BillingManager$BillingUpdatesListener;Ljava/util/List;)V

    return-void
.end method

.method public synthetic b(Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/callapp/contacts/manager/inAppBilling/BillingManager$BillingUpdatesListener$-CC;->$default$b(Lcom/callapp/contacts/manager/inAppBilling/BillingManager$BillingUpdatesListener;Ljava/util/List;)V

    return-void
.end method
