.class Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$SocialFeedSimpleExpandedCardList;
.super Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard$ExpandedCardList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SocialFeedSimpleExpandedCardList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard<",
        "Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;",
        ">.ExpandedCard",
        "List<",
        "Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalRecyclerViewHolder<",
        "Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalGalleryAdapter;",
        ">;>;"
    }
.end annotation


# instance fields
.field a:Landroid/view/View$OnClickListener;

.field final synthetic b:Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;Landroid/content/Context;)V
    .locals 0

    .line 443
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$SocialFeedSimpleExpandedCardList;->b:Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;

    .line 444
    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard$ExpandedCardList;-><init>(Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Landroid/view/View;)Ljava/lang/Object;
    .locals 5

    .line 2449
    new-instance v0, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/PhotoGalleryAdapter;

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$SocialFeedSimpleExpandedCardList;->b:Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;

    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;->access$2400(Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$SocialFeedSimpleExpandedCardList;->b:Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;

    invoke-static {v2}, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;->access$2500(Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;)Landroid/widget/AdapterView$OnItemLongClickListener;

    move-result-object v2

    const/4 v3, 0x0

    const v4, 0x7f0d008f

    invoke-direct {v0, v3, v1, v2, v4}, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/PhotoGalleryAdapter;-><init>(Ljava/util/List;Landroid/widget/AdapterView$OnItemClickListener;Landroid/widget/AdapterView$OnItemLongClickListener;I)V

    .line 2451
    new-instance v1, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$SocialFeedSimpleExpandedCardList$1;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$SocialFeedSimpleExpandedCardList$1;-><init>(Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$SocialFeedSimpleExpandedCardList;)V

    iput-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$SocialFeedSimpleExpandedCardList;->a:Landroid/view/View$OnClickListener;

    .line 2460
    new-instance v1, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalRecyclerViewHolder;

    invoke-direct {v1, p1, v0, v3, v3}, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalRecyclerViewHolder;-><init>(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$a;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    return-object v1
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 6

    .line 440
    check-cast p1, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalRecyclerViewHolder;

    .line 1465
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$SocialFeedSimpleExpandedCardList;->b:Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;

    invoke-static {v0, p1}, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;->access$2602(Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalRecyclerViewHolder;)Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalRecyclerViewHolder;

    .line 1466
    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$SocialFeedSimpleExpandedCardList;->a:Landroid/view/View$OnClickListener;

    invoke-static {}, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;->access$2700()I

    move-result v5

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p1

    move-object v1, v2

    invoke-virtual/range {v0 .. v5}, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalRecyclerViewHolder;->a(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Ljava/lang/String;I)V

    .line 1467
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalRecyclerViewHolder;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$a;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalGalleryAdapter;

    .line 1469
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalGalleryAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$SocialFeedSimpleExpandedCardList;->b:Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;

    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;->access$2800(Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1471
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$SocialFeedSimpleExpandedCardList;->b:Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;->access$2800(Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$SocialFeedSimpleExpandedCardList;->b:Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;

    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;->access$2400(Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$SocialFeedSimpleExpandedCardList;->b:Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;

    invoke-static {v2}, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;->access$2500(Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;)Landroid/widget/AdapterView$OnItemLongClickListener;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalGalleryAdapter;->a(Ljava/util/Collection;Landroid/widget/AdapterView$OnItemClickListener;Landroid/widget/AdapterView$OnItemLongClickListener;)V

    :cond_0
    return-void
.end method

.method public getFooterLayoutId()I
    .locals 1

    const v0, 0x7f0d0117

    return v0
.end method
