.class public abstract Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalCircleImageGalleryCard;
.super Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalGalleryCard;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalCircleImageGalleryCard$PhotoPresentableDataImpl;,
        Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalCircleImageGalleryCard$PhotoPresentableData;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data::",
        "Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalCircleImageGalleryCard$PhotoPresentableData;",
        ">",
        "Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalGalleryCard<",
        "TData;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/activity/contact/cards/MultiCardContainer;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalGalleryCard;-><init>(Lcom/callapp/contacts/activity/contact/cards/MultiCardContainer;)V

    return-void
.end method

.method public constructor <init>(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalGalleryCard;-><init>(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;)V

    return-void
.end method


# virtual methods
.method public getGalleryAdapter()Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalGalleryAdapter;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalGalleryAdapter<",
            "TData;",
            "Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalRecyclerViewHolder;",
            ">;"
        }
    .end annotation

    .line 24
    new-instance v0, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/PhotoGalleryAdapter;

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalCircleImageGalleryCard;->getDataList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalCircleImageGalleryCard;->getOnItemClickedListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v2

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalCircleImageGalleryCard;->getOnItemLongClickedListener()Landroid/widget/AdapterView$OnItemLongClickListener;

    move-result-object v3

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalCircleImageGalleryCard;->getItemLayoutResourceId()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/PhotoGalleryAdapter;-><init>(Ljava/util/List;Landroid/widget/AdapterView$OnItemClickListener;Landroid/widget/AdapterView$OnItemLongClickListener;I)V

    return-object v0
.end method

.method protected getItemLayoutResourceId()I
    .locals 1

    const v0, 0x7f0d008f

    return v0
.end method

.method protected getOnItemLongClickedListener()Landroid/widget/AdapterView$OnItemLongClickListener;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
