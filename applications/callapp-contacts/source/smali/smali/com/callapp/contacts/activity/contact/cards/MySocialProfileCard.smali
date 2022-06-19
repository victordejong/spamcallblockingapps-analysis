.class public Lcom/callapp/contacts/activity/contact/cards/MySocialProfileCard;
.super Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalCircleImageGalleryCard;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/contact/cards/MySocialProfileCard$MySocialProfileData;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalCircleImageGalleryCard<",
        "Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalIconGalleryItemData;",
        ">;"
    }
.end annotation


# instance fields
.field private final data:Lcom/callapp/contacts/activity/contact/cards/MySocialProfileCard$MySocialProfileData;

.field private final itemClickedListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private photoUri:Landroid/net/Uri;

.field private randomFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;)V
    .locals 1

    .line 60
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalCircleImageGalleryCard;-><init>(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;)V

    .line 53
    new-instance p1, Lcom/callapp/contacts/activity/contact/cards/MySocialProfileCard$MySocialProfileData;

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/MySocialProfileCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getDefaultContactResource()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p1, v0}, Lcom/callapp/contacts/activity/contact/cards/MySocialProfileCard$MySocialProfileData;-><init>(I)V

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/MySocialProfileCard;->data:Lcom/callapp/contacts/activity/contact/cards/MySocialProfileCard$MySocialProfileData;

    .line 126
    new-instance p1, Lcom/callapp/contacts/activity/contact/cards/MySocialProfileCard$1;

    invoke-direct {p1, p0}, Lcom/callapp/contacts/activity/contact/cards/MySocialProfileCard$1;-><init>(Lcom/callapp/contacts/activity/contact/cards/MySocialProfileCard;)V

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/MySocialProfileCard;->itemClickedListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/callapp/contacts/activity/contact/cards/MySocialProfileCard;)Lcom/callapp/contacts/activity/contact/cards/MySocialProfileCard$MySocialProfileData;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/MySocialProfileCard;->data:Lcom/callapp/contacts/activity/contact/cards/MySocialProfileCard$MySocialProfileData;

    return-object p0
.end method

.method static synthetic access$100(Lcom/callapp/contacts/activity/contact/cards/MySocialProfileCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/MySocialProfileCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/callapp/contacts/activity/contact/cards/MySocialProfileCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/MySocialProfileCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/callapp/contacts/activity/contact/cards/MySocialProfileCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/MySocialProfileCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/callapp/contacts/activity/contact/cards/MySocialProfileCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/MySocialProfileCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/callapp/contacts/activity/contact/cards/MySocialProfileCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/MySocialProfileCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    return-object p0
.end method

.method static synthetic access$200(Lcom/callapp/contacts/activity/contact/cards/MySocialProfileCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/MySocialProfileCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    return-object p0
.end method

.method static synthetic access$300(Lcom/callapp/contacts/activity/contact/cards/MySocialProfileCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/MySocialProfileCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    return-object p0
.end method

.method static synthetic access$400(Lcom/callapp/contacts/activity/contact/cards/MySocialProfileCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/MySocialProfileCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    return-object p0
.end method

.method static synthetic access$500(Lcom/callapp/contacts/activity/contact/cards/MySocialProfileCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/MySocialProfileCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    return-object p0
.end method

.method static synthetic access$600(Lcom/callapp/contacts/activity/contact/cards/MySocialProfileCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/MySocialProfileCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    return-object p0
.end method

.method static synthetic access$700(Lcom/callapp/contacts/activity/contact/cards/MySocialProfileCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/MySocialProfileCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    return-object p0
.end method

.method static synthetic access$800(Lcom/callapp/contacts/activity/contact/cards/MySocialProfileCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/MySocialProfileCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    return-object p0
.end method

.method static synthetic access$900(Lcom/callapp/contacts/activity/contact/cards/MySocialProfileCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/MySocialProfileCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    return-object p0
.end method


# virtual methods
.method public getCardInitHeight()I
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 75
    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/callapp/contacts/util/ViewUtils;->a([I)I

    move-result v0

    return v0

    nop

    :array_0
    .array-data 4
        0x7f07030a
        0x7f07030b
    .end array-data
.end method

.method public getFooterText()Ljava/lang/String;
    .locals 1

    const v0, 0x7f1204b1

    .line 194
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderTitle()Ljava/lang/String;
    .locals 1

    const v0, 0x7f1204b2

    .line 95
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItemLayoutResourceId()I
    .locals 1

    const v0, 0x7f0d0089

    return v0
.end method

.method public getListenFields()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;"
        }
    .end annotation

    .line 80
    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->newContact:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    .line 81
    sget-object v1, Lcom/callapp/contacts/model/contact/DataSource;->MY_SOCIAL_PROFILE_CARD_SOURCE:Ljava/util/EnumSet;

    invoke-virtual {v1}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callapp/contacts/model/contact/DataSource;

    .line 82
    iget-object v3, v2, Lcom/callapp/contacts/model/contact/DataSource;->socialIdField:Lcom/callapp/contacts/model/contact/ContactField;

    if-eqz v3, :cond_1

    .line 83
    iget-object v3, v2, Lcom/callapp/contacts/model/contact/DataSource;->socialIdField:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 85
    :cond_1
    iget-object v3, v2, Lcom/callapp/contacts/model/contact/DataSource;->socialDataField:Lcom/callapp/contacts/model/contact/ContactField;

    if-eqz v3, :cond_0

    .line 86
    iget-object v2, v2, Lcom/callapp/contacts/model/contact/DataSource;->socialDataField:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public getOnFooterClickedListener()Landroid/view/View$OnClickListener;
    .locals 1

    .line 168
    new-instance v0, Lcom/callapp/contacts/activity/contact/cards/MySocialProfileCard$2;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/contact/cards/MySocialProfileCard$2;-><init>(Lcom/callapp/contacts/activity/contact/cards/MySocialProfileCard;)V

    return-object v0
.end method

.method public getOnItemClickedListener()Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/MySocialProfileCard;->itemClickedListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method

.method public getOnRightIconClickedListener()Landroid/view/View$OnClickListener;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getOnRowClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    const/16 v0, 0x14

    return v0
.end method

.method public onContactChanged(Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/model/contact/ContactData;",
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;)V"
        }
    .end annotation

    .line 114
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/cards/MySocialProfileCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {p2, p1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->a(Lcom/callapp/contacts/model/contact/ContactData;)Z

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->isVoiceMail()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 119
    :cond_0
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/MySocialProfileCard;->data:Lcom/callapp/contacts/activity/contact/cards/MySocialProfileCard$MySocialProfileData;

    monitor-enter p1

    .line 120
    :try_start_0
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/cards/MySocialProfileCard;->data:Lcom/callapp/contacts/activity/contact/cards/MySocialProfileCard$MySocialProfileData;

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/MySocialProfileCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getRealContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/MySocialProfileCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {v1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v1, v2}, Lcom/callapp/contacts/activity/contact/cards/MySocialProfileCard$MySocialProfileData;->a(Landroid/content/Context;Lcom/callapp/contacts/model/contact/ContactData;Z)V

    .line 121
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/cards/MySocialProfileCard;->data:Lcom/callapp/contacts/activity/contact/cards/MySocialProfileCard$MySocialProfileData;

    invoke-virtual {p2}, Lcom/callapp/contacts/activity/contact/cards/MySocialProfileCard$MySocialProfileData;->getData()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p0, p2, v2}, Lcom/callapp/contacts/activity/contact/cards/MySocialProfileCard;->updateCardData(Ljava/util/List;Z)V

    .line 122
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 123
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/contact/cards/MySocialProfileCard;->showCard(Z)V

    return-void

    :catchall_0
    move-exception p2

    .line 122
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2

    .line 115
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/MySocialProfileCard;->hideCard()V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;)Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalRecyclerViewHolder;
    .locals 2

    .line 105
    invoke-super {p0, p1}, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalCircleImageGalleryCard;->onCreateViewHolder(Landroid/view/ViewGroup;)Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalRecyclerViewHolder;

    move-result-object p1

    .line 106
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalRecyclerViewHolder;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    const v1, 0x7f07030c

    .line 107
    invoke-static {v1}, Lcom/callapp/contacts/util/ViewUtils;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/ViewUtils;->e(Landroid/view/View;I)V

    const/4 v1, 0x0

    .line 108
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    return-object p1
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;)Ljava/lang/Object;
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/contact/cards/MySocialProfileCard;->onCreateViewHolder(Landroid/view/ViewGroup;)Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalRecyclerViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public showShouldExpandButton()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
