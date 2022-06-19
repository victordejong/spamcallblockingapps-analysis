.class public Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceKeypadAdapter;
.super Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceAdapter<",
        "Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemKeypad;",
        "Lcom/callapp/contacts/activity/marketplace/viewholders/KeypadViewHolder;",
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
            "Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemKeypad;",
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
    iput-object p4, p0, Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceKeypadAdapter;->b:Landroidx/lifecycle/j;

    return-void
.end method


# virtual methods
.method protected final synthetic a(Landroid/view/View;)Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;
    .locals 3

    .line 1035
    new-instance v0, Lcom/callapp/contacts/activity/marketplace/viewholders/KeypadViewHolder;

    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceKeypadAdapter;->a:Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;

    iget-object v2, p0, Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceKeypadAdapter;->b:Landroidx/lifecycle/j;

    invoke-direct {v0, p1, v1, v2}, Lcom/callapp/contacts/activity/marketplace/viewholders/KeypadViewHolder;-><init>(Landroid/view/View;Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;Landroidx/lifecycle/j;)V

    return-object v0
.end method

.method protected final bridge synthetic a(Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;)V
    .locals 0

    .line 15
    check-cast p1, Lcom/callapp/contacts/activity/marketplace/viewholders/KeypadViewHolder;

    check-cast p3, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemKeypad;

    .line 2030
    invoke-virtual {p1, p3, p2}, Lcom/callapp/contacts/activity/marketplace/viewholders/KeypadViewHolder;->a(Lcom/callapp/contacts/activity/marketplace/list/ImageLoaderData;Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;)V

    return-void
.end method

.method protected getItemLayoutId()I
    .locals 1

    const v0, 0x7f0d0174

    return v0
.end method
