.class public abstract Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceAdapter$MarketItemClickEvent;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;",
        "ViewHolder:",
        "Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$a<",
        "TViewHolder;>;"
    }
.end annotation


# instance fields
.field protected final a:Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TData;>;"
        }
    .end annotation
.end field

.field private c:Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceAdapter$MarketItemClickEvent;


# direct methods
.method constructor <init>(Ljava/util/List;Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceAdapter$MarketItemClickEvent;Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TData;>;",
            "Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceAdapter$MarketItemClickEvent;",
            "Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;",
            ")V"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$a;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceAdapter;->b:Ljava/util/List;

    .line 38
    iput-object p2, p0, Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceAdapter;->c:Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceAdapter$MarketItemClickEvent;

    .line 39
    iput-object p3, p0, Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceAdapter;->a:Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceAdapter;)Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceAdapter$MarketItemClickEvent;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceAdapter;->c:Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceAdapter$MarketItemClickEvent;

    return-object p0
.end method


# virtual methods
.method protected abstract a(Landroid/view/View;)Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")TViewHolder;"
        }
    .end annotation
.end method

.method protected abstract a(Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TViewHolder;",
            "Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;",
            "TData;)V"
        }
    .end annotation
.end method

.method public getItemCount()I
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceAdapter;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method protected abstract getItemLayoutId()I
.end method

.method public synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$v;I)V
    .locals 4

    .line 20
    check-cast p1, Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;

    .line 1050
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceAdapter;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;

    .line 1051
    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceAdapter;->b:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1062
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;->getDataLayout()Landroid/view/ViewGroup;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 1064
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;->getTitle()Landroid/widget/TextView;

    move-result-object v1

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v2

    const v3, 0x7f0601ec

    invoke-static {v2, v3}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1065
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;->getContainer()Landroidx/cardview/widget/CardView;

    move-result-object v1

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v2

    const v3, 0x7f060026

    invoke-static {v2, v3}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/cardview/widget/CardView;->setCardBackgroundColor(I)V

    .line 1052
    new-instance v1, Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceAdapter$1;

    invoke-direct {v1, p0, v0, p1}, Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceAdapter$1;-><init>(Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceAdapter;Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;)V

    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceAdapter;->b:Ljava/util/List;

    .line 1058
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;

    .line 1052
    invoke-virtual {p0, p1, v1, p2}, Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceAdapter;->a(Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$v;
    .locals 2

    .line 2044
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceAdapter;->getItemLayoutId()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2045
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceAdapter;->a(Landroid/view/View;)Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public setItemClickedListener(Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceAdapter$MarketItemClickEvent;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceAdapter;->c:Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceAdapter$MarketItemClickEvent;

    return-void
.end method
