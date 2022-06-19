.class public Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceCallScreenThemeAdapter;
.super Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceAdapter<",
        "Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCallScreenThemeItem;",
        "Lcom/callapp/contacts/activity/marketplace/viewholders/ItemCallScreenThemeViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final b:I

.field private final c:Z

.field private final d:Landroidx/lifecycle/j;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/j;Ljava/util/List;Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceAdapter$MarketItemClickEvent;Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/j;",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCallScreenThemeItem;",
            ">;",
            "Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceAdapter$MarketItemClickEvent;",
            "Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;",
            "IZ)V"
        }
    .end annotation

    .line 26
    invoke-direct {p0, p2, p3, p4}, Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceAdapter;-><init>(Ljava/util/List;Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceAdapter$MarketItemClickEvent;Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;)V

    .line 27
    iput p5, p0, Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceCallScreenThemeAdapter;->b:I

    .line 28
    iput-boolean p6, p0, Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceCallScreenThemeAdapter;->c:Z

    .line 29
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceCallScreenThemeAdapter;->d:Landroidx/lifecycle/j;

    return-void
.end method


# virtual methods
.method protected final synthetic a(Landroid/view/View;)Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;
    .locals 3

    .line 1045
    new-instance v0, Lcom/callapp/contacts/activity/marketplace/viewholders/ItemCallScreenThemeViewHolder;

    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceCallScreenThemeAdapter;->a:Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;

    iget-object v2, p0, Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceCallScreenThemeAdapter;->d:Landroidx/lifecycle/j;

    invoke-direct {v0, p1, v1, v2}, Lcom/callapp/contacts/activity/marketplace/viewholders/ItemCallScreenThemeViewHolder;-><init>(Landroid/view/View;Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;Landroidx/lifecycle/j;)V

    return-object v0
.end method

.method protected final synthetic a(Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;)V
    .locals 1

    .line 15
    check-cast p1, Lcom/callapp/contacts/activity/marketplace/viewholders/ItemCallScreenThemeViewHolder;

    check-cast p3, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCallScreenThemeItem;

    .line 2039
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceCallScreenThemeAdapter;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCallScreenThemeItem;->getThemeStoreListPreviewUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCallScreenThemeItem;->getThemeStorePreviewUrl()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p3, v0}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCallScreenThemeItem;->setUrl(Ljava/lang/String;)V

    .line 2040
    invoke-virtual {p1, p3, p2}, Lcom/callapp/contacts/activity/marketplace/viewholders/ItemCallScreenThemeViewHolder;->a(Lcom/callapp/contacts/activity/marketplace/list/ImageLoaderData;Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;)V

    return-void
.end method

.method protected getItemLayoutId()I
    .locals 1

    .line 34
    iget v0, p0, Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceCallScreenThemeAdapter;->b:I

    return v0
.end method
