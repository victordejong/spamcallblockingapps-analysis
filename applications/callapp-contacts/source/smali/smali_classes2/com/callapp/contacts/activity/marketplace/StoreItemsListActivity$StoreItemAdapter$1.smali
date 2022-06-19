.class Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity$StoreItemAdapter$1;
.super Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity$StoreItemAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;

.field final synthetic b:Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;

.field final synthetic c:Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity$StoreItemAdapter;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity$StoreItemAdapter;Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;)V
    .locals 0

    .line 231
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity$StoreItemAdapter$1;->c:Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity$StoreItemAdapter;

    iput-object p2, p0, Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity$StoreItemAdapter$1;->a:Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;

    iput-object p3, p0, Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity$StoreItemAdapter$1;->b:Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;

    invoke-direct {p0}, Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 4

    .line 234
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity$StoreItemAdapter$1;->c:Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity$StoreItemAdapter;

    invoke-static {v0}, Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity$StoreItemAdapter;->a(Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity$StoreItemAdapter;)Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity$StoreListItemClickEvent;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/view/View;

    iget-object v2, p0, Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity$StoreItemAdapter$1;->b:Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;

    invoke-virtual {v2}, Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;->getImageView()Landroid/widget/ImageView;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity$StoreItemAdapter$1;->b:Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;

    invoke-virtual {v2}, Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;->getPromotionContainer()Landroid/view/ViewGroup;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-interface {v0, p1, v1}, Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity$StoreListItemClickEvent;->a(Landroid/view/View;[Landroid/view/View;)V

    return-void
.end method
