.class public final Lcom/callapp/contacts/activity/marketplace/viewholders/BundleItemViewHolder;
.super Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u00020\u0001B#\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0002\u0010\u0008J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cH\u0014J\u0010\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000e\u001a\u00020\u000fH\u0014\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/callapp/contacts/activity/marketplace/viewholders/BundleItemViewHolder;",
        "Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;",
        "v",
        "Landroid/view/View;",
        "catalogAttributes",
        "Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;",
        "lifecycle",
        "Landroidx/lifecycle/Lifecycle;",
        "(Landroid/view/View;Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;Landroidx/lifecycle/Lifecycle;)V",
        "checkIfInUse",
        "",
        "storeItem",
        "Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;",
        "getStoreItem",
        "sku",
        "",
        "callapp-client_playRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;Landroidx/lifecycle/j;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1, p2, p3}, Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;-><init>(Landroid/view/View;Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;Landroidx/lifecycle/j;)V

    return-void
.end method


# virtual methods
.method protected final a(Ljava/lang/String;)Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;
    .locals 2

    const-string v0, "sku"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/viewholders/BundleItemViewHolder;->t:Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;

    const-string v1, "catalogAttributes"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;->getAvilableBundles()Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/callapp/contacts/activity/marketplace/viewholders/BundleItemViewHolder;->a(Ljava/lang/String;Ljava/util/List;)Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;

    move-result-object p1

    const-string v0, "getStoreItem(sku, catalo\u2026tributes.avilableBundles)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method protected final a(Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;)Z
    .locals 1

    const-string v0, "storeItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->dN:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;->getSku()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
