.class Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$StoreItemsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lcom/callapp/contacts/manager/task/Task$DoneListener;

.field final synthetic d:Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager;Lcom/callapp/contacts/manager/inAppBilling/BillingManager;Ljava/util/List;Lcom/callapp/contacts/manager/task/Task$DoneListener;)V
    .locals 0

    .line 276
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$1;->d:Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager;

    iput-object p2, p0, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$1;->a:Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

    iput-object p3, p0, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$1;->b:Ljava/util/List;

    iput-object p4, p0, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$1;->c:Lcom/callapp/contacts/manager/task/Task$DoneListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic onDone(Ljava/lang/Object;)V
    .locals 4

    .line 276
    check-cast p1, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCatalog;

    .line 1279
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$1;->d:Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager;

    invoke-static {v0}, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager;->a(Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager;)Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCatalog;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 1280
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$1;->d:Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager;

    invoke-static {v0}, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager;->a(Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager;)Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCatalog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCatalog;->getVersion()I

    move-result v0

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCatalog;->getVersion()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1283
    invoke-static {p1}, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager;->a(Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCatalog;)V

    :cond_0
    if-eqz p1, :cond_6

    .line 1289
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1290
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCatalog;->getCovers()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1291
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCatalog;->getCovers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemCover;

    .line 1292
    invoke-virtual {v2}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemCover;->getSku()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1295
    :cond_1
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCatalog;->getKeypads()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1296
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCatalog;->getKeypads()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemKeypad;

    .line 1297
    invoke-virtual {v2}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemKeypad;->getSku()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1300
    :cond_2
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCatalog;->getThemes()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1301
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCatalog;->getThemes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemTheme;

    .line 1302
    invoke-virtual {v2}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemTheme;->getSku()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1305
    :cond_3
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCatalog;->getSuperSkins()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1306
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCatalog;->getSuperSkins()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkin;

    .line 1307
    invoke-virtual {v2}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkin;->getSku()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1311
    :cond_4
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCatalog;->getAllCallScreenThemes()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1312
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCatalog;->getAllCallScreenThemes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCallScreenThemeItem;

    .line 1313
    invoke-virtual {v2}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCallScreenThemeItem;->getSku()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1317
    :cond_5
    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$1;->a:Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

    iget-object v2, p0, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$1;->b:Ljava/util/List;

    new-instance v3, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$1$1;

    invoke-direct {v3, p0}, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$1$1;-><init>(Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$1;)V

    invoke-static {v1, v2, p1, v0, v3}, Lcom/callapp/contacts/activity/marketplace/catalog/StoreUtils;->a(Lcom/callapp/contacts/manager/inAppBilling/BillingManager;Ljava/util/List;Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCatalog;Ljava/util/List;Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$StoreItemsListener;)V

    .line 1327
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$1;->d:Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager;

    invoke-static {v0, p1}, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager;->a(Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager;Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCatalog;)V

    return-void

    .line 1329
    :cond_6
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$1;->c:Lcom/callapp/contacts/manager/task/Task$DoneListener;

    if-eqz p1, :cond_7

    .line 1330
    invoke-interface {p1}, Lcom/callapp/contacts/manager/task/Task$DoneListener;->onDone()V

    :cond_7
    return-void
.end method
