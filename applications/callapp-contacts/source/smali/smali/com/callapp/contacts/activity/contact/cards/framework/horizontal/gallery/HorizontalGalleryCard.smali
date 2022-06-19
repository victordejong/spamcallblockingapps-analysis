.class public abstract Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalGalleryCard;
.super Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<DataItem:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard<",
        "Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalRecyclerViewHolder;",
        "Ljava/util/List<",
        "TDataItem;>;>;"
    }
.end annotation


# instance fields
.field private dataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TDataItem;>;"
        }
    .end annotation
.end field

.field private dataListLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/activity/contact/cards/MultiCardContainer;)V
    .locals 1

    const v0, 0x7f0d0117

    .line 36
    invoke-direct {p0, p1, v0}, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;-><init>(Lcom/callapp/contacts/activity/contact/cards/MultiCardContainer;I)V

    .line 24
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalGalleryCard;->dataListLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;)V
    .locals 1

    const v0, 0x7f0d0117

    .line 28
    invoke-direct {p0, p1, v0}, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;-><init>(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;I)V

    .line 24
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalGalleryCard;->dataListLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;I)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;-><init>(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;I)V

    .line 24
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalGalleryCard;->dataListLock:Ljava/lang/Object;

    return-void
.end method

.method private static calcAmountOfItemsInEachRow(Landroid/content/Context;)I
    .locals 2

    .line 120
    invoke-static {}, Lcom/callapp/contacts/util/Activities;->getScreenOrientation()I

    move-result p0

    invoke-static {p0}, Lcom/callapp/contacts/util/Activities;->getScreenWidth(I)I

    move-result p0

    .line 122
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0701f6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr p0, v0

    add-int/lit8 p0, p0, -0x48

    int-to-float p0, p0

    const/high16 v0, 0x40c00000    # 6.0f

    .line 124
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->a(F)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v0, v0, v1

    sub-float/2addr p0, v0

    const/high16 v0, 0x41800000    # 16.0f

    .line 125
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->a(F)F

    move-result v0

    sub-float/2addr p0, v0

    float-to-int p0, p0

    .line 127
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0701f4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 128
    div-int/2addr p0, v0

    return p0
.end method


# virtual methods
.method protected getContainerHeight()I
    .locals 1

    .line 132
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalGalleryCard;->getCardInitHeight()I

    move-result v0

    return v0
.end method

.method protected getDataList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TDataItem;>;"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalGalleryCard;->dataList:Ljava/util/List;

    return-object v0
.end method

.method protected abstract getFooterText()Ljava/lang/String;
.end method

.method protected abstract getGalleryAdapter()Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalGalleryAdapter;
.end method

.method protected getLayoutResourceId()I
    .locals 1

    const v0, 0x7f0d0117

    return v0
.end method

.method protected abstract getOnFooterClickedListener()Landroid/view/View$OnClickListener;
.end method

.method protected abstract getOnItemClickedListener()Landroid/widget/AdapterView$OnItemClickListener;
.end method

.method protected abstract getOnItemLongClickedListener()Landroid/widget/AdapterView$OnItemLongClickListener;
.end method

.method protected abstract getOnRightIconClickedListener()Landroid/view/View$OnClickListener;
.end method

.method protected abstract getOnRowClickListener()Landroid/view/View$OnClickListener;
.end method

.method protected isScrollable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onBindViewHolder(Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalRecyclerViewHolder;)V
    .locals 6

    .line 86
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalGalleryCard;->getOnRowClickListener()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalGalleryCard;->getOnRightIconClickedListener()Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalGalleryCard;->getOnFooterClickedListener()Landroid/view/View$OnClickListener;

    move-result-object v3

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalGalleryCard;->getFooterText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalGalleryCard;->getContainerHeight()I

    move-result v5

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalRecyclerViewHolder;->a(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Ljava/lang/String;I)V

    .line 88
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalRecyclerViewHolder;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$a;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalGalleryAdapter;

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalGalleryAdapter;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 90
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalGalleryCard;->dataListLock:Ljava/lang/Object;

    monitor-enter v1

    .line 91
    :try_start_0
    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalGalleryCard;->dataList:Ljava/util/List;

    invoke-static {v0, v2}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalGalleryCard;->dataList:Ljava/util/List;

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalGalleryCard;->getOnItemClickedListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v2

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalGalleryCard;->getOnItemLongClickedListener()Landroid/widget/AdapterView$OnItemLongClickListener;

    move-result-object v3

    invoke-virtual {p1, v0, v2, v3}, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalGalleryAdapter;->a(Ljava/util/Collection;Landroid/widget/AdapterView$OnItemClickListener;Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 94
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public bridge synthetic onBindViewHolder(Ljava/lang/Object;)V
    .locals 0

    .line 23
    check-cast p1, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalRecyclerViewHolder;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalGalleryCard;->onBindViewHolder(Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalRecyclerViewHolder;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;)Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalRecyclerViewHolder;
    .locals 4

    .line 81
    new-instance v0, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalRecyclerViewHolder;

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalGalleryCard;->getGalleryAdapter()Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalGalleryAdapter;

    move-result-object v1

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalGalleryCard;->getOnFooterClickedListener()Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalGalleryCard;->getFooterText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalRecyclerViewHolder;-><init>(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$a;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;)Ljava/lang/Object;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalGalleryCard;->onCreateViewHolder(Landroid/view/ViewGroup;)Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalRecyclerViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic updateCardData(Ljava/lang/Object;Z)V
    .locals 0

    .line 23
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalGalleryCard;->updateCardData(Ljava/util/List;Z)V

    return-void
.end method

.method protected updateCardData(Ljava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TDataItem;>;Z)V"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalGalleryCard;->dataListLock:Ljava/lang/Object;

    monitor-enter v0

    if-nez p2, :cond_0

    .line 43
    :try_start_0
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalGalleryCard;->dataList:Ljava/util/List;

    invoke-static {p2, p1}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 44
    monitor-exit v0

    return-void

    .line 47
    :cond_0
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalGalleryCard;->isScrollable()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 48
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalGalleryCard;->dataList:Ljava/util/List;

    if-nez p2, :cond_1

    .line 49
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalGalleryCard;->dataList:Ljava/util/List;

    goto :goto_0

    .line 51
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 54
    :goto_0
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalGalleryCard;->dataList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_3

    .line 58
    :cond_2
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalGalleryCard;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalGalleryCard;->calcAmountOfItemsInEachRow(Landroid/content/Context;)I

    move-result p2

    .line 59
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalGalleryCard;->dataList:Ljava/util/List;

    if-nez v1, :cond_4

    if-lez p2, :cond_3

    move v1, p2

    goto :goto_1

    :cond_3
    const/4 v1, 0x5

    .line 61
    :goto_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalGalleryCard;->dataList:Ljava/util/List;

    goto :goto_2

    .line 63
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 66
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, p2, :cond_5

    .line 67
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalGalleryCard;->dataList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {p1, v2, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_3

    .line 69
    :cond_5
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalGalleryCard;->dataList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 72
    :goto_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
