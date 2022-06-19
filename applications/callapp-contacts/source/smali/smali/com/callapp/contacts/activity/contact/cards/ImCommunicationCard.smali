.class public Lcom/callapp/contacts/activity/contact/cards/ImCommunicationCard;
.super Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalCircleImageGalleryCard;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/contact/cards/ImCommunicationCard$ImIconData;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalCircleImageGalleryCard<",
        "Lcom/callapp/contacts/activity/contact/cards/ImCommunicationCard$ImIconData;",
        ">;"
    }
.end annotation


# instance fields
.field private final itemClickedListener:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/activity/contact/cards/MultiCardContainer;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalCircleImageGalleryCard;-><init>(Lcom/callapp/contacts/activity/contact/cards/MultiCardContainer;)V

    .line 97
    new-instance p1, Lcom/callapp/contacts/activity/contact/cards/ImCommunicationCard$1;

    invoke-direct {p1, p0}, Lcom/callapp/contacts/activity/contact/cards/ImCommunicationCard$1;-><init>(Lcom/callapp/contacts/activity/contact/cards/ImCommunicationCard;)V

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/ImCommunicationCard;->itemClickedListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/callapp/contacts/activity/contact/cards/ImCommunicationCard;)Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalGalleryAdapter;
    .locals 0

    .line 30
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/ImCommunicationCard;->getGalleryAdapter()Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalGalleryAdapter;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/callapp/contacts/activity/contact/cards/ImCommunicationCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/ImCommunicationCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    return-object p0
.end method

.method static synthetic access$200(Lcom/callapp/contacts/activity/contact/cards/ImCommunicationCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/ImCommunicationCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    return-object p0
.end method


# virtual methods
.method public getCardInitHeight()I
    .locals 2

    .line 42
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/ImCommunicationCard;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070309

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method public getFooterText()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getHeaderTextColor()I
    .locals 2

    .line 115
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    const v1, 0x7f0601cc

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method public getHeaderTitle()Ljava/lang/String;
    .locals 1

    const v0, 0x7f1203a3

    .line 60
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
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

    .line 47
    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->phone:Lcom/callapp/contacts/model/contact/ContactField;

    const/4 v1, 0x7

    new-array v1, v1, [Lcom/callapp/contacts/model/contact/ContactField;

    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->imAddresses:Lcom/callapp/contacts/model/contact/ContactField;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->skype:Lcom/callapp/contacts/model/contact/ContactField;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->yahoo:Lcom/callapp/contacts/model/contact/ContactField;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->googlePlusHangoutDataId:Lcom/callapp/contacts/model/contact/ContactField;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->emails:Lcom/callapp/contacts/model/contact/ContactField;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->gmailData:Lcom/callapp/contacts/model/contact/ContactField;

    const/4 v3, 0x5

    aput-object v2, v1, v3

    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->facebookId:Lcom/callapp/contacts/model/contact/ContactField;

    const/4 v3, 0x6

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;[Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method

.method public getOnFooterClickedListener()Landroid/view/View$OnClickListener;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getOnItemClickedListener()Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/ImCommunicationCard;->itemClickedListener:Landroid/widget/AdapterView$OnItemClickListener;

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

    const/16 v0, 0x78

    return v0
.end method

.method public onContactChanged(Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Set;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/model/contact/ContactData;",
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;)V"
        }
    .end annotation

    .line 70
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->isUnknownNumber()Z

    move-result p2

    if-nez p2, :cond_5

    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/cards/ImCommunicationCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {p2, p1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->a(Lcom/callapp/contacts/model/contact/ContactData;)Z

    move-result p2

    if-nez p2, :cond_5

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->isVoiceMail()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_1

    .line 75
    :cond_0
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 77
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons$SenderType;->values()[Lcom/callapp/contacts/manager/Singletons$SenderType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 78
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    invoke-static {v4}, Lcom/callapp/contacts/manager/Singletons;->a(Lcom/callapp/contacts/manager/Singletons$SenderType;)Lcom/callapp/contacts/api/helper/instantmessaging/basetypes/ImSender;

    move-result-object v5

    .line 79
    invoke-interface {v5, p1}, Lcom/callapp/contacts/api/helper/instantmessaging/basetypes/ImSender;->canUseIm(Lcom/callapp/contacts/model/contact/ContactData;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 80
    new-instance v6, Lcom/callapp/contacts/activity/contact/cards/ImCommunicationCard$ImIconData;

    invoke-interface {v5}, Lcom/callapp/contacts/api/helper/instantmessaging/basetypes/ImSender;->getImIconResId()I

    move-result v5

    invoke-direct {v6, v5, v4}, Lcom/callapp/contacts/activity/contact/cards/ImCommunicationCard$ImIconData;-><init>(ILcom/callapp/contacts/manager/Singletons$SenderType;)V

    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 84
    :cond_2
    invoke-static {p2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 86
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_4

    .line 87
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/ImCommunicationCard;->getDataList()Ljava/util/List;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_3

    .line 89
    invoke-virtual {p0, p2, v2}, Lcom/callapp/contacts/activity/contact/cards/ImCommunicationCard;->updateCardData(Ljava/util/List;Z)V

    .line 91
    :cond_3
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/contact/cards/ImCommunicationCard;->showCard(Z)V

    return-void

    .line 93
    :cond_4
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/ImCommunicationCard;->hideCard()V

    return-void

    .line 71
    :cond_5
    :goto_1
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/ImCommunicationCard;->hideCard()V

    return-void
.end method

.method public showShouldExpandButton()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
