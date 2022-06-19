.class Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceAdapter$1;
.super Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;

.field final synthetic b:Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;

.field final synthetic c:Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceAdapter;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceAdapter;Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceAdapter$1;->c:Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceAdapter;

    iput-object p2, p0, Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceAdapter$1;->a:Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;

    iput-object p3, p0, Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceAdapter$1;->b:Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;

    invoke-direct {p0}, Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 4

    .line 55
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Item sku: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceAdapter$1;->a:Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;->getSku()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Store"

    const-string v2, "Store item clicked"

    invoke-virtual {p1, v1, v2, v0}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceAdapter$1;->c:Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceAdapter;

    invoke-static {p1}, Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceAdapter;->a(Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceAdapter;)Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceAdapter$MarketItemClickEvent;

    move-result-object p1

    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceAdapter$1;->a:Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/view/View;

    iget-object v2, p0, Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceAdapter$1;->b:Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;

    invoke-virtual {v2}, Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;->getImageView()Landroid/widget/ImageView;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceAdapter$1;->b:Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;

    invoke-virtual {v2}, Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;->getPromotionContainer()Landroid/view/ViewGroup;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-interface {p1, v0, v1}, Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceAdapter$MarketItemClickEvent;->a(Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;[Landroid/view/View;)V

    return-void
.end method
