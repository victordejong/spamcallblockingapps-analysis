.class Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;->fillFooterWithData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;)V
    .locals 0

    .line 745
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$7;->a:Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 748
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$7;->a:Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;->isCardVisibleOnScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 749
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$7;->a:Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;->access$2600(Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;)Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalRecyclerViewHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalRecyclerViewHolder;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$a;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalGalleryAdapter;

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$7;->a:Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;

    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;->access$2800(Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$7;->a:Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;

    invoke-static {v2}, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;->access$2400(Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v2

    iget-object v3, p0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$7;->a:Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;

    invoke-static {v3}, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;->access$2500(Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;)Landroid/widget/AdapterView$OnItemLongClickListener;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalGalleryAdapter;->a(Ljava/util/Collection;Landroid/widget/AdapterView$OnItemClickListener;Landroid/widget/AdapterView$OnItemLongClickListener;)V

    :cond_0
    return-void
.end method
