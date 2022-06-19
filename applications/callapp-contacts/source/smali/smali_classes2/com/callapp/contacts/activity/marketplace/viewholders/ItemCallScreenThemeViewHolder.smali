.class public Lcom/callapp/contacts/activity/marketplace/viewholders/ItemCallScreenThemeViewHolder;
.super Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;Landroidx/lifecycle/j;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2, p3}, Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;-><init>(Landroid/view/View;Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;Landroidx/lifecycle/j;)V

    return-void
.end method


# virtual methods
.method protected final a(Ljava/lang/String;)Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/viewholders/ItemCallScreenThemeViewHolder;->t:Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;->getAvailableCallScreenThemes()Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/callapp/contacts/activity/marketplace/viewholders/ItemCallScreenThemeViewHolder;->a(Ljava/lang/String;Ljava/util/List;)Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;

    move-result-object p1

    return-object p1
.end method

.method protected final a(Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;)Z
    .locals 1

    .line 38
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->du:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;->getSku()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method protected final b(Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;)Z
    .locals 1

    .line 26
    invoke-super {p0, p1}, Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;->b(Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->cM:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gtz v0, :cond_2

    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->cP:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->cT:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;->isCustomizable()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->cU:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_3

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;->isCustomizable()Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    const/4 p1, 0x1

    return p1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method protected setAdditionalDataView(Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;)V
    .locals 0

    .line 31
    invoke-super {p0, p1}, Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;->setAdditionalDataView(Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;)V

    return-void
.end method
