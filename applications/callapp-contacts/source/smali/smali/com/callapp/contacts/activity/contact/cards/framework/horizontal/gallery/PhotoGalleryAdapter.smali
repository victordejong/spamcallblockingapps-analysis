.class public Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/PhotoGalleryAdapter;
.super Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalGalleryAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data::",
        "Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalCircleImageGalleryCard$PhotoPresentableData;",
        ">",
        "Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalGalleryAdapter<",
        "TData;",
        "Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/PhotoGalleryItemViewHolder;",
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
            "TData;>;",
            "Landroid/widget/AdapterView$OnItemClickListener;",
            "Landroid/widget/AdapterView$OnItemLongClickListener;",
            "I)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalGalleryAdapter;-><init>(Ljava/util/List;Landroid/widget/AdapterView$OnItemClickListener;Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 33
    iput p4, p0, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/PhotoGalleryAdapter;->c:I

    return-void
.end method


# virtual methods
.method public synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$v;I)V
    .locals 6

    .line 27
    check-cast p1, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/PhotoGalleryItemViewHolder;

    .line 1045
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/PhotoGalleryAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalCircleImageGalleryCard$PhotoPresentableData;

    .line 2020
    iget-object v1, p1, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/PhotoGalleryItemViewHolder;->r:Lcom/callapp/contacts/manager/task/Task;

    if-eqz v1, :cond_0

    .line 2021
    iget-object v1, p1, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/PhotoGalleryItemViewHolder;->r:Lcom/callapp/contacts/manager/task/Task;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/task/Task;->cancel()V

    :cond_0
    if-nez v0, :cond_1

    .line 1049
    const-class p1, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/PhotoGalleryAdapter;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "data is null for position: "

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    return-void

    .line 1053
    :cond_1
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/PhotoGalleryItemViewHolder;->getPicView()Lcom/callapp/contacts/widget/ProfilePictureView;

    move-result-object p2

    .line 1055
    invoke-interface {v0}, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalCircleImageGalleryCard$PhotoPresentableData;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    .line 1057
    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    .line 1058
    invoke-interface {v0}, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalCircleImageGalleryCard$PhotoPresentableData;->getResourcePhoto()I

    move-result v1

    if-eqz v1, :cond_2

    .line 1059
    new-instance v1, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    invoke-interface {v0}, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalCircleImageGalleryCard$PhotoPresentableData;->getResourcePhoto()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;-><init>(I)V

    .line 1060
    invoke-interface {v0}, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalCircleImageGalleryCard$PhotoPresentableData;->getIconColorFilter()I

    move-result v2

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v4}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->a(ILandroid/graphics/PorterDuff$Mode;)Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    move-result-object v1

    .line 1061
    invoke-interface {v0}, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalCircleImageGalleryCard$PhotoPresentableData;->getBackgroundColor()Ljava/lang/Integer;

    move-result-object v2

    .line 2354
    iput-object v2, v1, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->g:Ljava/lang/Integer;

    .line 1062
    invoke-interface {v0}, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalCircleImageGalleryCard$PhotoPresentableData;->dontTransform()Z

    move-result v2

    .line 2391
    iput-boolean v2, v1, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->q:Z

    .line 1063
    invoke-interface {v0}, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalCircleImageGalleryCard$PhotoPresentableData;->getBorderWidth()I

    move-result v2

    invoke-interface {v0}, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalCircleImageGalleryCard$PhotoPresentableData;->getBorderColor()I

    move-result v4

    invoke-virtual {v1, v2, v4}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->b(II)Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    move-result-object v1

    .line 3371
    iput-boolean v3, v1, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->l:Z

    .line 1065
    invoke-interface {v0}, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalCircleImageGalleryCard$PhotoPresentableData;->getIconPadding()F

    move-result v2

    .line 3466
    iput v2, v1, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->i:F

    .line 4307
    invoke-virtual {p2, v1}, Lcom/callapp/contacts/widget/ProfilePictureView;->a(Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;)Z

    goto :goto_1

    .line 1067
    :cond_2
    invoke-virtual {p2}, Lcom/callapp/contacts/widget/ProfilePictureView;->a()V

    goto :goto_1

    .line 4534
    :cond_3
    iget-object v2, p2, Lcom/callapp/contacts/widget/ProfilePictureView;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 1070
    invoke-interface {v0}, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalCircleImageGalleryCard$PhotoPresentableData;->getResourcePhoto()I

    move-result v2

    if-eqz v2, :cond_4

    .line 1071
    new-instance v2, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    invoke-interface {v0}, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalCircleImageGalleryCard$PhotoPresentableData;->getResourcePhoto()I

    move-result v4

    invoke-direct {v2, v4}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;-><init>(I)V

    .line 1072
    invoke-interface {v0}, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalCircleImageGalleryCard$PhotoPresentableData;->getIconColorFilter()I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v4, v5}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->a(ILandroid/graphics/PorterDuff$Mode;)Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    move-result-object v2

    .line 1073
    invoke-interface {v0}, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalCircleImageGalleryCard$PhotoPresentableData;->getBackgroundColor()Ljava/lang/Integer;

    move-result-object v4

    .line 5354
    iput-object v4, v2, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->g:Ljava/lang/Integer;

    .line 1074
    invoke-interface {v0}, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalCircleImageGalleryCard$PhotoPresentableData;->getBorderWidth()I

    move-result v4

    invoke-interface {v0}, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalCircleImageGalleryCard$PhotoPresentableData;->getBorderColor()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->b(II)Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    move-result-object v2

    .line 1075
    invoke-interface {v0}, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalCircleImageGalleryCard$PhotoPresentableData;->dontTransform()Z

    move-result v4

    .line 5391
    iput-boolean v4, v2, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->q:Z

    .line 6371
    iput-boolean v3, v2, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->l:Z

    .line 1077
    invoke-interface {v0}, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalCircleImageGalleryCard$PhotoPresentableData;->getIconPadding()F

    move-result v4

    .line 6466
    iput v4, v2, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->i:F

    .line 7307
    invoke-virtual {p2, v2}, Lcom/callapp/contacts/widget/ProfilePictureView;->a(Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;)Z

    goto :goto_0

    .line 1079
    :cond_4
    invoke-virtual {p2}, Lcom/callapp/contacts/widget/ProfilePictureView;->a()V

    .line 1081
    :goto_0
    new-instance v2, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/PhotoGalleryAdapter$1;

    invoke-direct {v2, p0, v0, p2, v1}, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/PhotoGalleryAdapter$1;-><init>(Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/PhotoGalleryAdapter;Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalCircleImageGalleryCard$PhotoPresentableData;Lcom/callapp/contacts/widget/ProfilePictureView;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/PhotoGalleryItemViewHolder;->setTask(Lcom/callapp/contacts/manager/task/Task;)V

    .line 8030
    iget-object v1, p1, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/PhotoGalleryItemViewHolder;->r:Lcom/callapp/contacts/manager/task/Task;

    if-eqz v1, :cond_5

    .line 8031
    iget-object v1, p1, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/PhotoGalleryItemViewHolder;->r:Lcom/callapp/contacts/manager/task/Task;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/task/Task;->execute()Lcom/callapp/contacts/manager/task/Task;

    .line 1117
    :cond_5
    :goto_1
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/PhotoGalleryAdapter;->a:Landroid/widget/AdapterView$OnItemClickListener;

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    .line 1118
    new-instance v1, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/PhotoGalleryAdapter$2;

    invoke-direct {v1, p0, p1}, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/PhotoGalleryAdapter$2;-><init>(Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/PhotoGalleryAdapter;Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/PhotoGalleryItemViewHolder;)V

    invoke-virtual {p2, v1}, Lcom/callapp/contacts/widget/ProfilePictureView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 1125
    :cond_6
    invoke-virtual {p2, v2}, Lcom/callapp/contacts/widget/ProfilePictureView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1128
    :goto_2
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/PhotoGalleryAdapter;->b:Landroid/widget/AdapterView$OnItemLongClickListener;

    if-eqz v1, :cond_7

    .line 1129
    new-instance v1, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/PhotoGalleryAdapter$3;

    invoke-direct {v1, p0, p1}, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/PhotoGalleryAdapter$3;-><init>(Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/PhotoGalleryAdapter;Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/PhotoGalleryItemViewHolder;)V

    invoke-virtual {p2, v1}, Lcom/callapp/contacts/widget/ProfilePictureView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_3

    .line 1137
    :cond_7
    invoke-virtual {p2, v2}, Lcom/callapp/contacts/widget/ProfilePictureView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1140
    :goto_3
    invoke-interface {v0}, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalCircleImageGalleryCard$PhotoPresentableData;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/callapp/contacts/widget/ProfilePictureView;->setText(Ljava/lang/CharSequence;)V

    .line 1141
    invoke-interface {v0}, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalCircleImageGalleryCard$PhotoPresentableData;->getBadgeResourceId()I

    move-result p1

    if-eqz p1, :cond_8

    const/4 p1, 0x1

    goto :goto_4

    :cond_8
    const/4 p1, 0x0

    :goto_4
    invoke-virtual {p2, p1}, Lcom/callapp/contacts/widget/ProfilePictureView;->a(Z)V

    .line 1142
    invoke-interface {v0}, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalCircleImageGalleryCard$PhotoPresentableData;->getBadgeResourceId()I

    move-result p1

    invoke-static {p1}, Lcom/callapp/contacts/util/ViewUtils;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/callapp/contacts/widget/ProfilePictureView;->a(Landroid/graphics/drawable/Drawable;)Lcom/callapp/contacts/widget/ProfilePictureView;

    .line 1143
    invoke-interface {v0}, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalCircleImageGalleryCard$PhotoPresentableData;->getBadgeTintColor()I

    move-result p1

    if-eqz p1, :cond_9

    .line 1144
    invoke-interface {v0}, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalCircleImageGalleryCard$PhotoPresentableData;->getBadgeTintColor()I

    move-result p1

    invoke-virtual {p2, p1, v3}, Lcom/callapp/contacts/widget/ProfilePictureView;->a(IZ)Lcom/callapp/contacts/widget/ProfilePictureView;

    .line 1146
    :cond_9
    invoke-interface {v0}, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalCircleImageGalleryCard$PhotoPresentableData;->getBadgeBackgroundColor()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/callapp/contacts/widget/ProfilePictureView;->a(I)Lcom/callapp/contacts/widget/ProfilePictureView;

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$v;
    .locals 2

    .line 8038
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iget v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/PhotoGalleryAdapter;->c:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 8040
    new-instance p2, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/PhotoGalleryItemViewHolder;

    invoke-direct {p2, p1}, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/PhotoGalleryItemViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method
