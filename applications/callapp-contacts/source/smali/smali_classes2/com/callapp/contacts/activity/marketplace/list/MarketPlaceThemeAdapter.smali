.class public Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceThemeAdapter;
.super Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceAdapter<",
        "Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemTheme;",
        "Lcom/callapp/contacts/activity/marketplace/viewholders/ThemeItemViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final b:Landroidx/lifecycle/j;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceAdapter$MarketItemClickEvent;Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;Landroidx/lifecycle/j;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemTheme;",
            ">;",
            "Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceAdapter$MarketItemClickEvent;",
            "Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;",
            "Landroidx/lifecycle/j;",
            ")V"
        }
    .end annotation

    .line 19
    invoke-direct {p0, p1, p2, p3}, Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceAdapter;-><init>(Ljava/util/List;Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceAdapter$MarketItemClickEvent;Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;)V

    .line 20
    iput-object p4, p0, Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceThemeAdapter;->b:Landroidx/lifecycle/j;

    return-void
.end method


# virtual methods
.method protected final synthetic a(Landroid/view/View;)Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;
    .locals 3

    .line 1035
    new-instance v0, Lcom/callapp/contacts/activity/marketplace/viewholders/ThemeItemViewHolder;

    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceThemeAdapter;->a:Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;

    iget-object v2, p0, Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceThemeAdapter;->b:Landroidx/lifecycle/j;

    invoke-direct {v0, p1, v1, v2}, Lcom/callapp/contacts/activity/marketplace/viewholders/ThemeItemViewHolder;-><init>(Landroid/view/View;Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;Landroidx/lifecycle/j;)V

    return-object v0
.end method

.method protected final synthetic a(Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;)V
    .locals 2

    .line 15
    check-cast p1, Lcom/callapp/contacts/activity/marketplace/viewholders/ThemeItemViewHolder;

    check-cast p3, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemTheme;

    .line 2030
    invoke-virtual {p3}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemTheme;->getColor()I

    move-result v0

    .line 2114
    iget-object v1, p1, Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;->r:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 2115
    invoke-interface {p3}, Lcom/callapp/contacts/activity/marketplace/list/ImageLoaderData;->getSku()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3}, Lcom/callapp/contacts/activity/marketplace/list/ImageLoaderData;->getUrl()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, v0, p3}, Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;->a(Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected getItemLayoutId()I
    .locals 1

    const v0, 0x7f0d0177

    return v0
.end method
