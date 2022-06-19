.class public Lcom/callapp/contacts/activity/marketplace/KeypadStoreItemsListActivity;
.super Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity<",
        "Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemKeypad;",
        "Lcom/callapp/contacts/activity/marketplace/viewholders/KeypadViewHolder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;",
            ")",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemKeypad;",
            ">;"
        }
    .end annotation

    .line 52
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;->getAvilableKeypads()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected final a(Landroidx/recyclerview/widget/RecyclerView;Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity$StoreListItemClickEvent;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView;",
            "Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity$StoreListItemClickEvent;",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemKeypad;",
            ">;)V"
        }
    .end annotation

    .line 58
    new-instance p2, Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 v0, 0x2

    invoke-direct {p2, p0, v0}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 59
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$i;)V

    .line 60
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p2

    const v0, 0x7f0600f3

    invoke-static {p2, v0}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setBackgroundColor(I)V

    .line 61
    new-instance p2, Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceListKeypadAdapter;

    new-instance v2, Lcom/callapp/contacts/activity/marketplace/KeypadStoreItemsListActivity$1;

    invoke-direct {v2, p0}, Lcom/callapp/contacts/activity/marketplace/KeypadStoreItemsListActivity$1;-><init>(Lcom/callapp/contacts/activity/marketplace/KeypadStoreItemsListActivity;)V

    iget-object v3, p0, Lcom/callapp/contacts/activity/marketplace/KeypadStoreItemsListActivity;->d:Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;

    .line 67
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/KeypadStoreItemsListActivity;->getLifecycle()Landroidx/lifecycle/j;

    move-result-object v5

    const v4, 0x7f0d0175

    move-object v0, p2

    move-object v1, p3

    invoke-direct/range {v0 .. v5}, Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceListKeypadAdapter;-><init>(Ljava/util/List;Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceAdapter$MarketItemClickEvent;Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;ILandroidx/lifecycle/j;)V

    .line 61
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$a;)V

    return-void
.end method

.method public getLayoutResourceId()I
    .locals 1

    const v0, 0x7f0d01b5

    return v0
.end method

.method protected getStoreItemType()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method protected getStoreTitle()Ljava/lang/String;
    .locals 1

    const v0, 0x7f12041e

    .line 37
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 30
    invoke-super {p0, p1}, Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    new-instance p1, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    const v0, 0x7f0a011b

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/marketplace/KeypadStoreItemsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f08055c

    invoke-direct {p1, v0, v1, p0}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;-><init>(Landroid/widget/ImageView;ILandroid/content/Context;)V

    const/4 v0, 0x1

    .line 1376
    iput-boolean v0, p1, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->q:Z

    .line 31
    invoke-virtual {p1}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->d()V

    return-void
.end method
