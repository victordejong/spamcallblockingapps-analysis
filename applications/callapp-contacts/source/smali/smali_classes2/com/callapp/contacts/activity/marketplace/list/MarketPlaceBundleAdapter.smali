.class public final Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceBundleAdapter;
.super Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceAdapter<",
        "Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemBundle;",
        "Lcom/callapp/contacts/activity/marketplace/viewholders/BundleItemViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0001B3\u0012\u0010\u0010\u0004\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0018\u00010\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0002\u0010\u000cJ\u0008\u0010\r\u001a\u00020\u000eH\u0014J\u0014\u0010\u000f\u001a\u0004\u0018\u00010\u00032\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0014J&\u0010\u0012\u001a\u00020\u00132\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u00032\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u00162\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0002H\u0014R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceBundleAdapter;",
        "Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceAdapter;",
        "Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemBundle;",
        "Lcom/callapp/contacts/activity/marketplace/viewholders/BundleItemViewHolder;",
        "skins",
        "",
        "marketItemClickEvent",
        "Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceAdapter$MarketItemClickEvent;",
        "catalogAttributes",
        "Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;",
        "lifecycle",
        "Landroidx/lifecycle/Lifecycle;",
        "(Ljava/util/List;Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceAdapter$MarketItemClickEvent;Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;Landroidx/lifecycle/Lifecycle;)V",
        "getItemLayoutId",
        "",
        "onCreateViewHolderAdapter",
        "view",
        "Landroid/view/View;",
        "startLoadingData",
        "",
        "holder",
        "dataLoadedClickListener",
        "Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;",
        "storeItem",
        "callapp-client_playRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field private final b:Landroidx/lifecycle/j;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceAdapter$MarketItemClickEvent;Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;Landroidx/lifecycle/j;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemBundle;",
            ">;",
            "Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceAdapter$MarketItemClickEvent;",
            "Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;",
            "Landroidx/lifecycle/j;",
            ")V"
        }
    .end annotation

    const-string v0, "lifecycle"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0, p1, p2, p3}, Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceAdapter;-><init>(Ljava/util/List;Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceAdapter$MarketItemClickEvent;Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;)V

    iput-object p4, p0, Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceBundleAdapter;->b:Landroidx/lifecycle/j;

    return-void
.end method


# virtual methods
.method public final synthetic a(Landroid/view/View;)Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;
    .locals 3

    .line 2021
    new-instance v0, Lcom/callapp/contacts/activity/marketplace/viewholders/BundleItemViewHolder;

    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceBundleAdapter;->a:Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;

    iget-object v2, p0, Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceBundleAdapter;->b:Landroidx/lifecycle/j;

    invoke-direct {v0, p1, v1, v2}, Lcom/callapp/contacts/activity/marketplace/viewholders/BundleItemViewHolder;-><init>(Landroid/view/View;Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;Landroidx/lifecycle/j;)V

    .line 11
    check-cast v0, Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;

    return-object v0
.end method

.method public final synthetic a(Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;)V
    .locals 2

    .line 11
    check-cast p1, Lcom/callapp/contacts/activity/marketplace/viewholders/BundleItemViewHolder;

    check-cast p3, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemBundle;

    .line 1017
    invoke-static {p1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;)V

    check-cast p3, Lcom/callapp/contacts/activity/marketplace/list/ImageLoaderData;

    .line 1108
    iget-object v0, p1, Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;->r:Landroid/widget/ImageView;

    invoke-interface {p3}, Lcom/callapp/contacts/activity/marketplace/list/ImageLoaderData;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 1109
    invoke-interface {p3}, Lcom/callapp/contacts/activity/marketplace/list/ImageLoaderData;->getSku()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3}, Lcom/callapp/contacts/activity/marketplace/list/ImageLoaderData;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3}, Lcom/callapp/contacts/activity/marketplace/list/ImageLoaderData;->getColor()I

    move-result p3

    invoke-virtual {p1, p2, v0, v1, p3}, Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;->a(Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method protected final getItemLayoutId()I
    .locals 1

    const v0, 0x7f0d0172

    return v0
.end method
