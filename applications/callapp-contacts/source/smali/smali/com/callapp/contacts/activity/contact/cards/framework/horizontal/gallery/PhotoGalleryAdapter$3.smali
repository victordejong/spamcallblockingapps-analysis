.class Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/PhotoGalleryAdapter$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/PhotoGalleryAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/PhotoGalleryItemViewHolder;

.field final synthetic b:Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/PhotoGalleryAdapter;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/PhotoGalleryAdapter;Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/PhotoGalleryItemViewHolder;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/PhotoGalleryAdapter$3;->b:Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/PhotoGalleryAdapter;

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/PhotoGalleryAdapter$3;->a:Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/PhotoGalleryItemViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 7

    .line 132
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/PhotoGalleryAdapter$3;->b:Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/PhotoGalleryAdapter;

    iget-object v1, v0, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/PhotoGalleryAdapter;->b:Landroid/widget/AdapterView$OnItemLongClickListener;

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/PhotoGalleryAdapter$3;->a:Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/PhotoGalleryItemViewHolder;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/PhotoGalleryItemViewHolder;->getAdapterPosition()I

    move-result v4

    const/4 v2, 0x0

    const-wide/16 v5, 0x0

    move-object v3, p1

    invoke-interface/range {v1 .. v6}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    const/4 p1, 0x1

    return p1
.end method
