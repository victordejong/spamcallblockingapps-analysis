.class public Lcom/callapp/contacts/activity/favorites/FavoritesAdapter;
.super Lcom/callapp/contacts/activity/favorites/DragItemAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/callapp/contacts/activity/favorites/DragItemAdapter<",
        "Lcom/callapp/contacts/activity/favorites/FavoriteMemoryContactItem;",
        "Lcom/callapp/contacts/activity/favorites/BaseFavoriteViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public c:Z

.field private final d:Lcom/callapp/contacts/activity/base/ScrollEvents;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager;Lcom/callapp/contacts/activity/base/ScrollEvents;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/favorites/FavoriteMemoryContactItem;",
            ">;",
            "Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager;",
            "Lcom/callapp/contacts/activity/base/ScrollEvents;",
            ")V"
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/activity/favorites/DragItemAdapter;-><init>(Ljava/util/List;Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager;)V

    .line 24
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->gc:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/callapp/contacts/activity/favorites/FavoritesAdapter;->c:Z

    .line 29
    iput-object p3, p0, Lcom/callapp/contacts/activity/favorites/FavoritesAdapter;->d:Lcom/callapp/contacts/activity/base/ScrollEvents;

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/callapp/contacts/activity/base/BaseCallAppViewHolder;Lcom/callapp/contacts/activity/base/BaseViewTypeData;)V
    .locals 5

    .line 21
    check-cast p1, Lcom/callapp/contacts/activity/favorites/BaseFavoriteViewHolder;

    check-cast p2, Lcom/callapp/contacts/activity/favorites/FavoriteMemoryContactItem;

    .line 1068
    invoke-super {p0, p1, p2}, Lcom/callapp/contacts/activity/favorites/DragItemAdapter;->a(Lcom/callapp/contacts/activity/favorites/DragItemAdapter$ViewHolder;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;)V

    .line 1069
    invoke-virtual {p2}, Lcom/callapp/contacts/activity/favorites/FavoriteMemoryContactItem;->getViewType()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    .line 1071
    move-object v1, p1

    check-cast v1, Lcom/callapp/contacts/activity/favorites/FavoriteViewHolder;

    .line 1072
    iget-object v2, p0, Lcom/callapp/contacts/activity/favorites/FavoritesAdapter;->d:Lcom/callapp/contacts/activity/base/ScrollEvents;

    iget-boolean v3, p0, Lcom/callapp/contacts/activity/favorites/FavoritesAdapter;->c:Z

    invoke-virtual {v1, p2, v2, v3}, Lcom/callapp/contacts/activity/favorites/FavoriteViewHolder;->a(Lcom/callapp/contacts/activity/favorites/FavoriteMemoryContactItem;Lcom/callapp/contacts/activity/base/ScrollEvents;Z)V

    .line 1073
    iget-object v1, p0, Lcom/callapp/contacts/activity/favorites/FavoritesAdapter;->b:Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/callapp/contacts/activity/favorites/FavoritesAdapter;->b:Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager;

    .line 2079
    iget-object v1, v1, Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager;->b:Lcom/callapp/contacts/manager/asset/managers/SuperSkinListBackgroundAssetManager;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/asset/managers/SuperSkinListBackgroundAssetManager;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f0601f1

    .line 1074
    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/callapp/contacts/activity/favorites/BaseFavoriteViewHolder;->setBackgroundColor(I)V

    :cond_0
    const/16 v1, 0x17

    if-ne v0, v1, :cond_3

    .line 1078
    check-cast p1, Lcom/callapp/contacts/activity/favorites/FavoritesPromotionViewHolder;

    if-eqz p2, :cond_3

    .line 1079
    invoke-virtual {p2}, Lcom/callapp/contacts/activity/favorites/FavoriteMemoryContactItem;->getStickyData()Lcom/callapp/contacts/activity/calllog/stickyBanner/JsonStickyData;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1080
    invoke-virtual {p2}, Lcom/callapp/contacts/activity/favorites/FavoriteMemoryContactItem;->getStickyData()Lcom/callapp/contacts/activity/calllog/stickyBanner/JsonStickyData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/calllog/stickyBanner/JsonStickyData;->getNeedBilling()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/callapp/contacts/manager/inAppBilling/BillingManager;->isBillingAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_3

    .line 1082
    invoke-virtual {p2}, Lcom/callapp/contacts/activity/favorites/FavoriteMemoryContactItem;->getStickyData()Lcom/callapp/contacts/activity/calllog/stickyBanner/JsonStickyData;

    move-result-object p2

    const-string v0, "jsonStickyData"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3047
    iget-object v0, p1, Lcom/callapp/contacts/activity/favorites/FavoritesPromotionViewHolder;->w:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/callapp/contacts/activity/calllog/stickyBanner/JsonStickyData;->getTitle()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3048
    iget-object v0, p1, Lcom/callapp/contacts/activity/favorites/FavoritesPromotionViewHolder;->y:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/callapp/contacts/activity/calllog/stickyBanner/JsonStickyData;->getAction()Lcom/callapp/contacts/activity/calllog/stickyBanner/JsonStickyAction;

    move-result-object v2

    const-string v3, "jsonStickyData.action"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/callapp/contacts/activity/calllog/stickyBanner/JsonStickyAction;->getActionText()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3049
    new-instance v0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    iget-object v2, p1, Lcom/callapp/contacts/activity/favorites/FavoritesPromotionViewHolder;->x:Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/callapp/contacts/activity/calllog/stickyBanner/JsonStickyData;->getImg()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lcom/callapp/contacts/activity/favorites/FavoritesPromotionViewHolder;->x:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v2, v3, v4}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;-><init>(Landroid/widget/ImageView;Ljava/lang/String;Landroid/content/Context;)V

    .line 3376
    iput-boolean v1, v0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->q:Z

    .line 3049
    invoke-virtual {v0}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->d()V

    .line 3050
    new-instance v0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    iget-object v2, p1, Lcom/callapp/contacts/activity/favorites/FavoritesPromotionViewHolder;->z:Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/callapp/contacts/activity/calllog/stickyBanner/JsonStickyData;->getBackground()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lcom/callapp/contacts/activity/favorites/FavoritesPromotionViewHolder;->z:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v2, v3, v4}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;-><init>(Landroid/widget/ImageView;Ljava/lang/String;Landroid/content/Context;)V

    .line 4376
    iput-boolean v1, v0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->q:Z

    .line 3050
    invoke-virtual {v0}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->d()V

    .line 3052
    iget-object v0, p1, Lcom/callapp/contacts/activity/favorites/FavoritesPromotionViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/callapp/contacts/activity/favorites/FavoritesPromotionViewHolder$onBind$1;

    invoke-direct {v1, p2}, Lcom/callapp/contacts/activity/favorites/FavoritesPromotionViewHolder$onBind$1;-><init>(Lcom/callapp/contacts/activity/calllog/stickyBanner/JsonStickyData;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3058
    iget-object p1, p1, Lcom/callapp/contacts/activity/favorites/FavoritesPromotionViewHolder;->itemView:Landroid/view/View;

    const-string p2, "itemView"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/callapp/contacts/activity/favorites/FavoritesPromotionViewHolder;->a(Landroid/view/View;)V

    :cond_3
    return-void
.end method

.method public getUniqueItemId(I)J
    .locals 2

    .line 59
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/favorites/FavoritesAdapter;->getItemAt(I)Lcom/callapp/contacts/activity/base/BaseViewTypeData;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 61
    check-cast p1, Lcom/callapp/contacts/activity/favorites/FavoriteMemoryContactItem;

    iget-wide v0, p1, Lcom/callapp/contacts/activity/favorites/FavoriteMemoryContactItem;->contactId:J

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$v;
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0xb

    if-ne p2, v1, :cond_0

    .line 5045
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0d02f9

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 5046
    new-instance p2, Lcom/callapp/contacts/activity/favorites/FavoriteViewHolder;

    invoke-direct {p2, p1}, Lcom/callapp/contacts/activity/favorites/FavoriteViewHolder;-><init>(Landroid/view/View;)V

    return-object p2

    :cond_0
    const/16 v1, 0xc

    if-ne p2, v1, :cond_1

    .line 5048
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0d02da

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 5049
    new-instance p2, Lcom/callapp/contacts/activity/favorites/AddFavoriteViewHolder;

    invoke-direct {p2, p1}, Lcom/callapp/contacts/activity/favorites/AddFavoriteViewHolder;-><init>(Landroid/view/View;)V

    return-object p2

    :cond_1
    const/16 v1, 0x17

    if-ne p2, v1, :cond_2

    .line 5051
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0d0303

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 5052
    new-instance p2, Lcom/callapp/contacts/activity/favorites/FavoritesPromotionViewHolder;

    invoke-direct {p2, p1}, Lcom/callapp/contacts/activity/favorites/FavoritesPromotionViewHolder;-><init>(Landroid/view/View;)V

    return-object p2

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method
