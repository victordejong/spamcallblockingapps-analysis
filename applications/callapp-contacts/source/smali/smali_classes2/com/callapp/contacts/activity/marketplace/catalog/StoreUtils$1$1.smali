.class Lcom/callapp/contacts/activity/marketplace/catalog/StoreUtils$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/billingclient/api/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/marketplace/catalog/StoreUtils$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/marketplace/catalog/StoreUtils$1;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/marketplace/catalog/StoreUtils$1;)V
    .locals 0

    .line 197
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/StoreUtils$1$1;->a:Lcom/callapp/contacts/activity/marketplace/catalog/StoreUtils$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Lcom/android/billingclient/api/g;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/g;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/k;",
            ">;)V"
        }
    .end annotation

    .line 200
    invoke-static {p2}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 201
    invoke-static {p2}, Lcom/callapp/contacts/activity/marketplace/catalog/StoreUtils;->b(Ljava/util/List;)Ljava/util/HashMap;

    move-result-object p1

    .line 202
    iget-object p2, p0, Lcom/callapp/contacts/activity/marketplace/catalog/StoreUtils$1$1;->a:Lcom/callapp/contacts/activity/marketplace/catalog/StoreUtils$1;

    iget-object p2, p2, Lcom/callapp/contacts/activity/marketplace/catalog/StoreUtils$1;->c:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 203
    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/StoreUtils$1$1;->a:Lcom/callapp/contacts/activity/marketplace/catalog/StoreUtils$1;

    iget-object v1, v1, Lcom/callapp/contacts/activity/marketplace/catalog/StoreUtils$1;->a:Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCatalog;

    invoke-virtual {v1, v0}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCatalog;->getJsonStoreItem(Ljava/lang/String;)Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 205
    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/StoreUtils$1$1;->a:Lcom/callapp/contacts/activity/marketplace/catalog/StoreUtils$1;

    iget-object v1, v1, Lcom/callapp/contacts/activity/marketplace/catalog/StoreUtils$1;->d:Ljava/util/List;

    invoke-static {v1, p1, v0}, Lcom/callapp/contacts/activity/marketplace/catalog/StoreUtils;->a(Ljava/util/List;Ljava/util/HashMap;Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;)V

    goto :goto_0

    .line 208
    :cond_1
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/StoreUtils$1$1;->a:Lcom/callapp/contacts/activity/marketplace/catalog/StoreUtils$1;

    iget-object p1, p1, Lcom/callapp/contacts/activity/marketplace/catalog/StoreUtils$1;->e:Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$StoreItemsListener;

    if-eqz p1, :cond_2

    .line 209
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/StoreUtils$1$1;->a:Lcom/callapp/contacts/activity/marketplace/catalog/StoreUtils$1;

    iget-object p1, p1, Lcom/callapp/contacts/activity/marketplace/catalog/StoreUtils$1;->e:Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$StoreItemsListener;

    iget-object p2, p0, Lcom/callapp/contacts/activity/marketplace/catalog/StoreUtils$1$1;->a:Lcom/callapp/contacts/activity/marketplace/catalog/StoreUtils$1;

    iget-object p2, p2, Lcom/callapp/contacts/activity/marketplace/catalog/StoreUtils$1;->a:Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCatalog;

    invoke-interface {p1, p2}, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$StoreItemsListener;->onDone(Ljava/lang/Object;)V

    :cond_2
    return-void

    .line 215
    :cond_3
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/StoreUtils$1$1;->a:Lcom/callapp/contacts/activity/marketplace/catalog/StoreUtils$1;

    iget-object p1, p1, Lcom/callapp/contacts/activity/marketplace/catalog/StoreUtils$1;->e:Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$StoreItemsListener;

    if-eqz p1, :cond_4

    .line 216
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/StoreUtils$1$1;->a:Lcom/callapp/contacts/activity/marketplace/catalog/StoreUtils$1;

    iget-object p1, p1, Lcom/callapp/contacts/activity/marketplace/catalog/StoreUtils$1;->e:Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$StoreItemsListener;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$StoreItemsListener;->onDone(Ljava/lang/Object;)V

    :cond_4
    return-void
.end method
