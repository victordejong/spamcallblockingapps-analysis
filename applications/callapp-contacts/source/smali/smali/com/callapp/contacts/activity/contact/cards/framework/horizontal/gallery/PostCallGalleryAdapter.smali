.class public Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/PostCallGalleryAdapter;
.super Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalGalleryAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalGalleryAdapter<",
        "Lcom/callapp/contacts/activity/contact/cards/PostCallCardItem;",
        "Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/ImageViewGalleryItemViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private c:I


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/widget/AdapterView$OnItemClickListener;Landroid/widget/AdapterView$OnItemLongClickListener;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/contact/cards/PostCallCardItem;",
            ">;",
            "Landroid/widget/AdapterView$OnItemClickListener;",
            "Landroid/widget/AdapterView$OnItemLongClickListener;",
            "I)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0, p1, p2, p3}, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalGalleryAdapter;-><init>(Ljava/util/List;Landroid/widget/AdapterView$OnItemClickListener;Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 20
    iput p4, p0, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/PostCallGalleryAdapter;->c:I

    return-void
.end method


# virtual methods
.method public synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$v;I)V
    .locals 1

    .line 14
    check-cast p1, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/ImageViewGalleryItemViewHolder;

    .line 1033
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/PostCallGalleryAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/callapp/contacts/activity/contact/cards/PostCallCardItem;

    .line 1034
    iget-object v0, p1, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/ImageViewGalleryItemViewHolder;->r:Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/callapp/contacts/activity/contact/cards/PostCallCardItem;->getPostCallContactAction()Lcom/callapp/contacts/activity/contact/details/ContactAction;

    move-result-object p2

    invoke-virtual {p2}, Lcom/callapp/contacts/activity/contact/details/ContactAction;->getLargeIcon()I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1035
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/PostCallGalleryAdapter;->a:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz p2, :cond_0

    .line 1036
    iget-object p2, p1, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/ImageViewGalleryItemViewHolder;->r:Landroid/widget/ImageView;

    new-instance v0, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/PostCallGalleryAdapter$1;

    invoke-direct {v0, p0, p1}, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/PostCallGalleryAdapter$1;-><init>(Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/PostCallGalleryAdapter;Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/ImageViewGalleryItemViewHolder;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    .line 1043
    :cond_0
    iget-object p1, p1, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/ImageViewGalleryItemViewHolder;->r:Landroid/widget/ImageView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$v;
    .locals 2

    .line 2026
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iget v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/PostCallGalleryAdapter;->c:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2028
    new-instance p2, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/ImageViewGalleryItemViewHolder;

    invoke-direct {p2, p1}, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/ImageViewGalleryItemViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method
