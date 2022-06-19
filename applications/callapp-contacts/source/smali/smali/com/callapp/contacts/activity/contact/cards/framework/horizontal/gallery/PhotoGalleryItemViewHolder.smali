.class public Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/PhotoGalleryItemViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$v;
.source "SourceFile"


# instance fields
.field r:Lcom/callapp/contacts/manager/task/Task;

.field private final s:Lcom/callapp/contacts/widget/ProfilePictureView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 15
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$v;-><init>(Landroid/view/View;)V

    const v0, 0x7f0a06ed

    .line 16
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/widget/ProfilePictureView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/PhotoGalleryItemViewHolder;->s:Lcom/callapp/contacts/widget/ProfilePictureView;

    return-void
.end method


# virtual methods
.method public getPicView()Lcom/callapp/contacts/widget/ProfilePictureView;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/PhotoGalleryItemViewHolder;->s:Lcom/callapp/contacts/widget/ProfilePictureView;

    return-object v0
.end method

.method public setTask(Lcom/callapp/contacts/manager/task/Task;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/PhotoGalleryItemViewHolder;->r:Lcom/callapp/contacts/manager/task/Task;

    return-void
.end method
