.class Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/PostCallGalleryAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/PostCallGalleryAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/ImageViewGalleryItemViewHolder;

.field final synthetic b:Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/PostCallGalleryAdapter;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/PostCallGalleryAdapter;Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/ImageViewGalleryItemViewHolder;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/PostCallGalleryAdapter$1;->b:Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/PostCallGalleryAdapter;

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/PostCallGalleryAdapter$1;->a:Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/ImageViewGalleryItemViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 39
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/PostCallGalleryAdapter$1;->b:Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/PostCallGalleryAdapter;

    iget-object v1, v0, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/PostCallGalleryAdapter;->a:Landroid/widget/AdapterView$OnItemClickListener;

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/PostCallGalleryAdapter$1;->a:Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/ImageViewGalleryItemViewHolder;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/ImageViewGalleryItemViewHolder;->getAdapterPosition()I

    move-result v4

    const/4 v2, 0x0

    const-wide/16 v5, 0x0

    move-object v3, p1

    invoke-interface/range {v1 .. v6}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method
