.class public Lcom/callapp/contacts/activity/marketplace/viewholders/ThemeItemViewHolder;
.super Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;Landroidx/lifecycle/j;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2, p3}, Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;-><init>(Landroid/view/View;Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;Landroidx/lifecycle/j;)V

    return-void
.end method


# virtual methods
.method protected final a(Ljava/lang/String;)Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/viewholders/ThemeItemViewHolder;->t:Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;->getAvilableThemes()Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/callapp/contacts/activity/marketplace/viewholders/ThemeItemViewHolder;->a(Ljava/lang/String;Ljava/util/List;)Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;

    move-result-object p1

    return-object p1
.end method

.method protected final a(Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;)Z
    .locals 1

    .line 25
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->dh:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;->getSku()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
