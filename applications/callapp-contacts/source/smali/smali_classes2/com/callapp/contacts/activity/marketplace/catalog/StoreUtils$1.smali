.class final Lcom/callapp/contacts/activity/marketplace/catalog/StoreUtils$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/marketplace/catalog/StoreUtils;->a(Lcom/callapp/contacts/manager/inAppBilling/BillingManager;Ljava/util/List;Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCatalog;Ljava/util/List;Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$StoreItemsListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCatalog;

.field final synthetic b:Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

.field final synthetic c:Ljava/util/List;

.field final synthetic d:Ljava/util/List;

.field final synthetic e:Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$StoreItemsListener;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCatalog;Lcom/callapp/contacts/manager/inAppBilling/BillingManager;Ljava/util/List;Ljava/util/List;Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$StoreItemsListener;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/StoreUtils$1;->a:Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCatalog;

    iput-object p2, p0, Lcom/callapp/contacts/activity/marketplace/catalog/StoreUtils$1;->b:Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

    iput-object p3, p0, Lcom/callapp/contacts/activity/marketplace/catalog/StoreUtils$1;->c:Ljava/util/List;

    iput-object p4, p0, Lcom/callapp/contacts/activity/marketplace/catalog/StoreUtils$1;->d:Ljava/util/List;

    iput-object p5, p0, Lcom/callapp/contacts/activity/marketplace/catalog/StoreUtils$1;->e:Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$StoreItemsListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 196
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/StoreUtils$1;->a:Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCatalog;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/StoreUtils$1;->b:Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/StoreUtils$1;->c:Ljava/util/List;

    new-instance v2, Lcom/callapp/contacts/activity/marketplace/catalog/StoreUtils$1$1;

    invoke-direct {v2, p0}, Lcom/callapp/contacts/activity/marketplace/catalog/StoreUtils$1$1;-><init>(Lcom/callapp/contacts/activity/marketplace/catalog/StoreUtils$1;)V

    const-string v3, "inapp"

    invoke-virtual {v0, v3, v1, v2}, Lcom/callapp/contacts/manager/inAppBilling/BillingManager;->a(Ljava/lang/String;Ljava/util/List;Lcom/android/billingclient/api/m;)V

    return-void

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/StoreUtils$1;->e:Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$StoreItemsListener;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 222
    invoke-interface {v0, v1}, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$StoreItemsListener;->onDone(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
