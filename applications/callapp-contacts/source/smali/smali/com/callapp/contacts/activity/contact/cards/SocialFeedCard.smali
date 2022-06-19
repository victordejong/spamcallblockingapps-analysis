.class public Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;
.super Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$SocialState;,
        Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$SocialFeedSimpleExpandedCardList;,
        Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$SocialDataObject;,
        Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$SocialFeedEvents;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard<",
        "Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;",
        ">;"
    }
.end annotation


# static fields
.field private static final BORDER_WIDTH:I

.field private static footerDataSources:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Lcom/callapp/contacts/model/contact/DataSource;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final footerHeight:I

.field private static infoDataSources:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Lcom/callapp/contacts/model/contact/DataSource;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final FOOTER_DATA_LIST_LOCK:Ljava/lang/Object;

.field private final dbCodeToIconPhotoMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final eventsListener:Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$SocialFeedEvents;

.field private footerDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalIconGalleryItemData;",
            ">;"
        }
    .end annotation
.end field

.field private footerDataListPositionToDataSource:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/Pair<",
            "Lcom/callapp/contacts/model/contact/DataSource;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private footerItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private footerItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

.field private footerViewHolder:Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalRecyclerViewHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalRecyclerViewHolder<",
            "Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalGalleryAdapter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/high16 v0, 0x40000000    # 2.0f

    .line 75
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->a(F)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;->BORDER_WIDTH:I

    .line 76
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070309

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;->footerHeight:I

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;->infoDataSources:Ljava/util/List;

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;->footerDataSources:Ljava/util/List;

    .line 102
    sget-object v0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;->infoDataSources:Ljava/util/List;

    new-instance v1, Landroid/util/Pair;

    sget-object v2, Lcom/callapp/contacts/model/contact/DataSource;->facebook:Lcom/callapp/contacts/model/contact/DataSource;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    sget-object v0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;->infoDataSources:Ljava/util/List;

    new-instance v1, Landroid/util/Pair;

    sget-object v2, Lcom/callapp/contacts/model/contact/DataSource;->twitter:Lcom/callapp/contacts/model/contact/DataSource;

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    sget-object v0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;->infoDataSources:Ljava/util/List;

    new-instance v1, Landroid/util/Pair;

    sget-object v2, Lcom/callapp/contacts/model/contact/DataSource;->google:Lcom/callapp/contacts/model/contact/DataSource;

    const-string v4, "googlePlacesData"

    invoke-direct {v1, v2, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    sget-object v0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;->infoDataSources:Ljava/util/List;

    new-instance v1, Landroid/util/Pair;

    sget-object v2, Lcom/callapp/contacts/model/contact/DataSource;->pinterest:Lcom/callapp/contacts/model/contact/DataSource;

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    sget-object v0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;->infoDataSources:Ljava/util/List;

    new-instance v1, Landroid/util/Pair;

    sget-object v2, Lcom/callapp/contacts/model/contact/DataSource;->instagram:Lcom/callapp/contacts/model/contact/DataSource;

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    sget-object v0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;->infoDataSources:Ljava/util/List;

    new-instance v1, Landroid/util/Pair;

    sget-object v2, Lcom/callapp/contacts/model/contact/DataSource;->vk:Lcom/callapp/contacts/model/contact/DataSource;

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    sget-object v0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;->footerDataSources:Ljava/util/List;

    new-instance v1, Landroid/util/Pair;

    sget-object v2, Lcom/callapp/contacts/model/contact/DataSource;->facebook:Lcom/callapp/contacts/model/contact/DataSource;

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    sget-object v0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;->footerDataSources:Ljava/util/List;

    new-instance v1, Landroid/util/Pair;

    sget-object v2, Lcom/callapp/contacts/model/contact/DataSource;->google:Lcom/callapp/contacts/model/contact/DataSource;

    invoke-direct {v1, v2, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    sget-object v0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;->footerDataSources:Ljava/util/List;

    new-instance v1, Landroid/util/Pair;

    sget-object v2, Lcom/callapp/contacts/model/contact/DataSource;->twitter:Lcom/callapp/contacts/model/contact/DataSource;

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    sget-object v0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;->footerDataSources:Ljava/util/List;

    new-instance v1, Landroid/util/Pair;

    sget-object v2, Lcom/callapp/contacts/model/contact/DataSource;->instagram:Lcom/callapp/contacts/model/contact/DataSource;

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    sget-object v0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;->footerDataSources:Ljava/util/List;

    new-instance v1, Landroid/util/Pair;

    sget-object v2, Lcom/callapp/contacts/model/contact/DataSource;->pinterest:Lcom/callapp/contacts/model/contact/DataSource;

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    sget-object v0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;->footerDataSources:Ljava/util/List;

    new-instance v1, Landroid/util/Pair;

    sget-object v2, Lcom/callapp/contacts/model/contact/DataSource;->vk:Lcom/callapp/contacts/model/contact/DataSource;

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    sget-object v0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;->footerDataSources:Ljava/util/List;

    new-instance v1, Landroid/util/Pair;

    sget-object v2, Lcom/callapp/contacts/model/contact/DataSource;->foursquare:Lcom/callapp/contacts/model/contact/DataSource;

    const-string v3, "venueFoursquareData"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Lcom/callapp/contacts/activity/contact/cards/MultiCardContainer;Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$SocialFeedEvents;)V
    .locals 2

    .line 120
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard;-><init>(Lcom/callapp/contacts/activity/contact/cards/MultiCardContainer;)V

    .line 79
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;->FOOTER_DATA_LIST_LOCK:Ljava/lang/Object;

    .line 80
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;->footerDataList:Ljava/util/List;

    .line 81
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;->footerDataListPositionToDataSource:Landroid/util/SparseArray;

    .line 122
    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;->eventsListener:Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$SocialFeedEvents;

    .line 124
    new-instance p1, Landroid/util/SparseArray;

    sget-object p2, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;->footerDataSources:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-direct {p1, p2}, Landroid/util/SparseArray;-><init>(I)V

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;->dbCodeToIconPhotoMap:Landroid/util/SparseArray;

    .line 125
    sget-object p1, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;->footerDataSources:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/util/Pair;

    .line 126
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;->dbCodeToIconPhotoMap:Landroid/util/SparseArray;

    iget-object v1, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/callapp/contacts/model/contact/DataSource;

    iget v1, v1, Lcom/callapp/contacts/model/contact/DataSource;->dbCode:I

    iget-object p2, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, Lcom/callapp/contacts/model/contact/DataSource;

    iget p2, p2, Lcom/callapp/contacts/model/contact/DataSource;->dbCode:I

    invoke-static {p2}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->getSocialPairBadgeResId(I)Landroid/util/Pair;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic access$1000(Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;)V
    .locals 0

    .line 73
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;->openContactSocialProfileActivity()V

    return-void
.end method

.method static synthetic access$1200(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/model/contact/social/SocialData;
    .locals 0

    .line 73
    invoke-static {p0, p1}, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;->getSocialData(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/model/contact/social/SocialData;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1300(Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;Ljava/lang/Integer;)V
    .locals 0

    .line 73
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;->startMatchingActivity(Ljava/lang/Integer;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;)Landroid/widget/AdapterView$OnItemClickListener;
    .locals 0

    .line 73
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;->getFooterOnItemClickedListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2500(Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;)Landroid/widget/AdapterView$OnItemLongClickListener;
    .locals 0

    .line 73
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;->getFooterOnItemLongClickedListener()Landroid/widget/AdapterView$OnItemLongClickListener;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2600(Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;)Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalRecyclerViewHolder;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;->footerViewHolder:Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalRecyclerViewHolder;

    return-object p0
.end method

.method static synthetic access$2602(Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalRecyclerViewHolder;)Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalRecyclerViewHolder;
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;->footerViewHolder:Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalRecyclerViewHolder;

    return-object p1
.end method

.method static synthetic access$2700()I
    .locals 1

    .line 73
    sget v0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;->footerHeight:I

    return v0
.end method

.method static synthetic access$2800(Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;)Ljava/util/List;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;->footerDataList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;ILandroid/app/Activity;Lcom/callapp/common/model/json/JSONSocialNetworkID;Ljava/lang/Runnable;Lcom/callapp/contacts/manager/task/OutcomeListener;)V
    .locals 0

    .line 73
    invoke-static/range {p0 .. p5}, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;->openSocialProfile(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;ILandroid/app/Activity;Lcom/callapp/common/model/json/JSONSocialNetworkID;Ljava/lang/Runnable;Lcom/callapp/contacts/manager/task/OutcomeListener;)V

    return-void
.end method

.method static synthetic access$300(Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    return-object p0
.end method

.method static synthetic access$400(Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    return-object p0
.end method

.method static synthetic access$500(Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    return-object p0
.end method

.method static synthetic access$600(Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    return-object p0
.end method

.method static synthetic access$700(Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    return-object p0
.end method

.method static synthetic access$800(Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    return-object p0
.end method

.method static synthetic access$900(Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;Lcom/callapp/contacts/model/contact/ContactData;I)Landroid/util/Pair;
    .locals 0

    .line 73
    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;->getSourceAndState(Lcom/callapp/contacts/model/contact/ContactData;I)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method private getAllUnsureButSearchableSources(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Lcom/callapp/contacts/model/contact/DataSource;",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/util/ArrayList<",
            "Lcom/callapp/contacts/model/contact/DataSource;",
            ">;"
        }
    .end annotation

    .line 678
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 679
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {v1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v1

    .line 681
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 682
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/callapp/contacts/model/contact/DataSource;

    .line 683
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;->getPlaceData(Lcom/callapp/contacts/model/contact/ContactData;Ljava/lang/String;)Lcom/callapp/contacts/model/contact/PlaceData;

    move-result-object v2

    .line 684
    invoke-static {v1, v3}, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;->getSocialId(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/common/model/json/JSONSocialNetworkID;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$SocialState;->access$3000(Lcom/callapp/contacts/model/contact/DataSource;Lcom/callapp/common/model/json/JSONSocialNetworkID;Lcom/callapp/contacts/model/contact/PlaceData;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 685
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private getDataList(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$SocialDataObject;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;",
            ">;"
        }
    .end annotation

    .line 226
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 227
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 229
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$SocialDataObject;

    .line 230
    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$SocialDataObject;->a(Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$SocialDataObject;)Lcom/callapp/contacts/model/contact/PlaceData;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$SocialDataObject;->a(Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$SocialDataObject;)Lcom/callapp/contacts/model/contact/PlaceData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callapp/contacts/model/contact/PlaceData;->getFullName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 234
    :cond_1
    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$SocialDataObject;->b(Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$SocialDataObject;)Lcom/callapp/contacts/model/contact/DataSource;

    move-result-object v2

    iget v2, v2, Lcom/callapp/contacts/model/contact/DataSource;->dbCode:I

    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$SocialDataObject;->c(Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$SocialDataObject;)Lcom/callapp/contacts/model/contact/social/SocialData;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/callapp/contacts/model/contact/social/SocialDataUtils;->getDefaultText(ILcom/callapp/contacts/model/contact/social/SocialData;)Ljava/lang/String;

    move-result-object v2

    .line 235
    invoke-static {v2}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 236
    new-instance v3, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$1;

    invoke-direct {v3, p0, v1}, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$1;-><init>(Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$SocialDataObject;)V

    .line 244
    new-instance v4, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;

    invoke-direct {v4}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;-><init>()V

    .line 1357
    iput-object v2, v4, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->d:Ljava/lang/String;

    .line 246
    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$SocialDataObject;->b(Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$SocialDataObject;)Lcom/callapp/contacts/model/contact/DataSource;

    move-result-object v1

    iget v1, v1, Lcom/callapp/contacts/model/contact/DataSource;->dbCode:I

    invoke-static {v1}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->getSocialBadgeColoredResId(I)I

    move-result v1

    invoke-virtual {v4, v1}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->a(I)Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;

    move-result-object v1

    .line 2342
    iput-object v3, v1, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->b:Landroid/view/View$OnClickListener;

    .line 2397
    iput-object v3, v1, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->k:Landroid/view/View$OnClickListener;

    .line 250
    invoke-virtual {v1, p0}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->a(Lit/gmariotti/cardslib/library/a/b;)Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method private getFooterDataListAccordingToContact()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalIconGalleryItemData;",
            ">;"
        }
    .end annotation

    .line 662
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;->footerDataListPositionToDataSource:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 663
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;->footerDataSources:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 664
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {v1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v1

    .line 665
    sget-object v2, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;->footerDataSources:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 666
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Lcom/callapp/contacts/model/contact/DataSource;

    .line 667
    iget-object v5, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-static {v1, v5}, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;->getPlaceData(Lcom/callapp/contacts/model/contact/ContactData;Ljava/lang/String;)Lcom/callapp/contacts/model/contact/PlaceData;

    move-result-object v5

    .line 668
    invoke-static {v1, v4}, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;->getSocialId(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/common/model/json/JSONSocialNetworkID;

    move-result-object v6

    invoke-direct {p0, v6, v4, v5}, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;->getFooterItemData(Lcom/callapp/common/model/json/JSONSocialNetworkID;Lcom/callapp/contacts/model/contact/DataSource;Lcom/callapp/contacts/model/contact/PlaceData;)Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalIconGalleryItemData;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 670
    iget-object v5, p0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;->footerDataListPositionToDataSource:Landroid/util/SparseArray;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 671
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private getFooterItemData(Lcom/callapp/common/model/json/JSONSocialNetworkID;Lcom/callapp/contacts/model/contact/DataSource;Lcom/callapp/contacts/model/contact/PlaceData;)Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalIconGalleryItemData;
    .locals 3

    .line 693
    iget v0, p2, Lcom/callapp/contacts/model/contact/DataSource;->dbCode:I

    invoke-static {v0}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->getSocialBadgeBgColor(I)I

    move-result v0

    .line 695
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;->dbCodeToIconPhotoMap:Landroid/util/SparseArray;

    iget v2, p2, Lcom/callapp/contacts/model/contact/DataSource;->dbCode:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 696
    sget-object v2, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$9;->a:[I

    invoke-static {p2, p1, p3}, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$SocialState;->getState(Lcom/callapp/contacts/model/contact/DataSource;Lcom/callapp/common/model/json/JSONSocialNetworkID;Lcom/callapp/contacts/model/contact/PlaceData;)Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$SocialState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$SocialState;->ordinal()I

    move-result p1

    aget p1, v2, p1

    const/4 p2, 0x0

    const/4 p3, 0x1

    const/4 v2, -0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 720
    :pswitch_0
    new-instance p1, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalIconGalleryItemData$Builder;

    invoke-direct {p1}, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalIconGalleryItemData$Builder;-><init>()V

    iget-object p2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Integer;

    .line 721
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 8064
    iput p2, p1, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalIconGalleryItemData$Builder;->a:I

    .line 8109
    iput v2, p1, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalIconGalleryItemData$Builder;->h:I

    .line 8114
    iput v0, p1, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalIconGalleryItemData$Builder;->i:I

    .line 9094
    iput-boolean p3, p1, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalIconGalleryItemData$Builder;->f:Z

    .line 725
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalIconGalleryItemData$Builder;->a()Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalIconGalleryItemData;

    move-result-object p2

    goto :goto_0

    .line 709
    :pswitch_1
    new-instance p1, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalIconGalleryItemData$Builder;

    invoke-direct {p1}, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalIconGalleryItemData$Builder;-><init>()V

    iget-object p2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Integer;

    .line 710
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 6064
    iput p2, p1, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalIconGalleryItemData$Builder;->a:I

    const p2, 0x7f080471

    .line 6104
    iput p2, p1, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalIconGalleryItemData$Builder;->g:I

    .line 6109
    iput v2, p1, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalIconGalleryItemData$Builder;->h:I

    .line 6114
    iput v0, p1, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalIconGalleryItemData$Builder;->i:I

    .line 7094
    iput-boolean p3, p1, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalIconGalleryItemData$Builder;->f:Z

    .line 715
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalIconGalleryItemData$Builder;->a()Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalIconGalleryItemData;

    move-result-object p2

    goto :goto_0

    .line 698
    :pswitch_2
    new-instance p1, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalIconGalleryItemData$Builder;

    invoke-direct {p1}, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalIconGalleryItemData$Builder;-><init>()V

    iget-object p2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Integer;

    .line 699
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 4064
    iput p2, p1, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalIconGalleryItemData$Builder;->a:I

    const p2, 0x7f0802bd

    .line 4104
    iput p2, p1, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalIconGalleryItemData$Builder;->g:I

    .line 4109
    iput v2, p1, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalIconGalleryItemData$Builder;->h:I

    .line 4114
    iput v0, p1, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalIconGalleryItemData$Builder;->i:I

    .line 5094
    iput-boolean p3, p1, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalIconGalleryItemData$Builder;->f:Z

    .line 704
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalIconGalleryItemData$Builder;->a()Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalIconGalleryItemData;

    move-result-object p2

    :goto_0
    :pswitch_3
    return-object p2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private getFooterOnItemClickedListener()Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1

    .line 341
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;->footerItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    if-nez v0, :cond_0

    .line 342
    new-instance v0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$3;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$3;-><init>(Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;)V

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;->footerItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 384
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;->footerItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method

.method private getFooterOnItemLongClickedListener()Landroid/widget/AdapterView$OnItemLongClickListener;
    .locals 1

    .line 388
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;->footerItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    if-nez v0, :cond_0

    .line 389
    new-instance v0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$4;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$4;-><init>(Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;)V

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;->footerItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 437
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;->footerItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    return-object v0
.end method

.method private static getPlaceData(Lcom/callapp/contacts/model/contact/ContactData;Ljava/lang/String;)Lcom/callapp/contacts/model/contact/PlaceData;
    .locals 1

    .line 580
    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p0, p1}, Lcom/callapp/contacts/util/ReflectionUtils;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/callapp/contacts/model/contact/PlaceData;

    return-object p0
.end method

.method private static getSocialData(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/model/contact/social/SocialData;
    .locals 1

    .line 584
    iget-object v0, p1, Lcom/callapp/contacts/model/contact/DataSource;->socialDataField:Lcom/callapp/contacts/model/contact/ContactField;

    if-eqz v0, :cond_0

    .line 585
    iget-object p1, p1, Lcom/callapp/contacts/model/contact/DataSource;->socialDataField:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactField;->name()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/callapp/contacts/util/ReflectionUtils;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/callapp/contacts/model/contact/social/SocialData;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getSocialId(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/common/model/json/JSONSocialNetworkID;
    .locals 1

    .line 573
    iget-object v0, p1, Lcom/callapp/contacts/model/contact/DataSource;->socialIdField:Lcom/callapp/contacts/model/contact/ContactField;

    if-eqz v0, :cond_0

    .line 574
    iget-object p1, p1, Lcom/callapp/contacts/model/contact/DataSource;->socialIdField:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactField;->name()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/callapp/contacts/util/ReflectionUtils;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/callapp/common/model/json/JSONSocialNetworkID;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private getSourceAndState(Lcom/callapp/contacts/model/contact/ContactData;I)Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/model/contact/ContactData;",
            "I)",
            "Landroid/util/Pair<",
            "Lcom/callapp/contacts/model/contact/DataSource;",
            "Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$SocialState;",
            ">;"
        }
    .end annotation

    .line 330
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;->footerDataListPositionToDataSource:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/util/Pair;

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 332
    iget-object v0, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/callapp/contacts/model/contact/DataSource;

    .line 333
    iget-object p2, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;->getPlaceData(Lcom/callapp/contacts/model/contact/ContactData;Ljava/lang/String;)Lcom/callapp/contacts/model/contact/PlaceData;

    move-result-object p2

    .line 334
    invoke-static {p1, v0}, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;->getSocialId(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/common/model/json/JSONSocialNetworkID;

    move-result-object p1

    invoke-static {v0, p1, p2}, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$SocialState;->getState(Lcom/callapp/contacts/model/contact/DataSource;Lcom/callapp/common/model/json/JSONSocialNetworkID;Lcom/callapp/contacts/model/contact/PlaceData;)Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$SocialState;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    .line 337
    :goto_0
    new-instance p2, Landroid/util/Pair;

    invoke-direct {p2, v0, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p2
.end method

.method private isFooterDataChanged()Z
    .locals 3

    .line 202
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;->footerViewHolder:Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalRecyclerViewHolder;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 205
    :cond_0
    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalRecyclerViewHolder;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$a;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalGalleryAdapter;

    if-nez v0, :cond_1

    return v1

    .line 209
    :cond_1
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalGalleryAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    .line 210
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;->footerDataList:Ljava/util/List;

    invoke-static {v2, v0}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    return v1
.end method

.method public static loginAndFireChange(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;Lcom/callapp/contacts/model/contact/DataSource;)V
    .locals 2

    .line 758
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v0

    iget v1, p1, Lcom/callapp/contacts/model/contact/DataSource;->dbCode:I

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/Singletons;->getRemoteAccountHelper(I)Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 763
    :cond_0
    new-instance v1, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$8;

    invoke-direct {v1, v0, p0, p1}, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$8;-><init>(Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;Lcom/callapp/contacts/activity/contact/details/PresentersContainer;Lcom/callapp/contacts/model/contact/DataSource;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->setLoginListener(Lcom/callapp/contacts/api/helper/common/LoginListener;)V

    .line 782
    invoke-interface {p0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getRealContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {v0, p0}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->b(Landroid/app/Activity;)V

    return-void
.end method

.method static onSocialStateChanged(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;Lcom/callapp/contacts/model/contact/DataSource;)V
    .locals 3

    .line 786
    invoke-interface {p0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContainerMode()Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;->EDIT_USER_PROFILE_ACTIVITY:Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;

    if-ne v0, v1, :cond_1

    .line 787
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 788
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v1

    iget v2, p1, Lcom/callapp/contacts/model/contact/DataSource;->dbCode:I

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/manager/Singletons;->getRemoteAccountHelper(I)Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 790
    invoke-virtual {v1}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->getDataSource()Lcom/callapp/contacts/model/contact/DataSource;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 791
    invoke-interface {p0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v1

    .line 792
    invoke-virtual {v1}, Lcom/callapp/contacts/model/contact/ContactData;->assertDeviceDataExist()V

    .line 793
    invoke-virtual {v1, v0}, Lcom/callapp/contacts/model/contact/ContactData;->resetSocialNetworks(Ljava/util/List;)V

    .line 796
    :cond_0
    invoke-interface {p0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v0

    iget v1, p1, Lcom/callapp/contacts/model/contact/DataSource;->dbCode:I

    invoke-static {v0, v1}, Lcom/callapp/contacts/loader/device/UserProfileLoader;->a(Lcom/callapp/contacts/model/contact/ContactData;I)V

    .line 799
    :cond_1
    iget-object v0, p1, Lcom/callapp/contacts/model/contact/DataSource;->socialIdField:Lcom/callapp/contacts/model/contact/ContactField;

    if-eqz v0, :cond_2

    .line 800
    invoke-interface {p0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object p0

    iget-object p1, p1, Lcom/callapp/contacts/model/contact/DataSource;->socialIdField:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/contact/ContactData;->fireChange(Lcom/callapp/contacts/model/contact/ContactField;)V

    return-void

    .line 803
    :cond_2
    invoke-interface {p0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object p0

    sget-object p1, Lcom/callapp/contacts/model/contact/ContactField;->googlePlaces:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/contact/ContactData;->fireChange(Lcom/callapp/contacts/model/contact/ContactField;)V

    return-void
.end method

.method private openContactSocialProfileActivity()V
    .locals 2

    .line 487
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getRealContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {v1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->openContactProfile(Landroid/app/Activity;Lcom/callapp/contacts/model/contact/ContactData;)V

    return-void
.end method

.method private static openSocialProfile(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;ILandroid/app/Activity;Lcom/callapp/common/model/json/JSONSocialNetworkID;Ljava/lang/Runnable;Lcom/callapp/contacts/manager/task/OutcomeListener;)V
    .locals 6

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    .line 654
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/manager/Singletons;->getRemoteAccountHelper(I)Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 656
    invoke-virtual {p3}, Lcom/callapp/common/model/json/JSONSocialNetworkID;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1, p4, p5}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Runnable;Lcom/callapp/contacts/manager/task/OutcomeListener;)V

    :cond_0
    return-void

    .line 644
    :cond_1
    invoke-interface {p0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getFacebookPlaceData()Lcom/callapp/contacts/model/contact/FacebookPlaceData;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 646
    invoke-static {}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->get()Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;

    move-result-object v0

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/FacebookPlaceData;->getFacebookId()Lcom/callapp/common/model/json/JSONSocialNetworkID;

    move-result-object p0

    invoke-virtual {p0}, Lcom/callapp/common/model/json/JSONSocialNetworkID;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v5, "facebookPlaceData"

    move-object v1, p2

    move-object v3, p4

    move-object v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Runnable;Lcom/callapp/contacts/manager/task/OutcomeListener;Ljava/lang/String;)V

    return-void

    .line 648
    :cond_2
    invoke-interface {p0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->getFacebookData()Lcom/callapp/contacts/model/contact/social/FacebookData;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 649
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/social/FacebookData;->getFqlType()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    :goto_0
    move-object v5, p0

    .line 650
    invoke-static {}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->get()Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;

    move-result-object v0

    invoke-virtual {p3}, Lcom/callapp/common/model/json/JSONSocialNetworkID;->getId()Ljava/lang/String;

    move-result-object v2

    move-object v1, p2

    move-object v3, p4

    move-object v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Runnable;Lcom/callapp/contacts/manager/task/OutcomeListener;Ljava/lang/String;)V

    return-void
.end method

.method private static setIsFriend(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/social/SocialData;Lcom/callapp/contacts/model/contact/DataSource;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 557
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/model/contact/social/SocialData;->setIsFriend(Ljava/lang/Boolean;)V

    .line 558
    iget-object p2, p2, Lcom/callapp/contacts/model/contact/DataSource;->socialDataField:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-virtual {p0, p2}, Lcom/callapp/contacts/model/contact/ContactData;->getCacheKey(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 559
    invoke-static {}, Lcom/callapp/contacts/manager/cache/CacheManager;->get()Lcom/callapp/contacts/manager/cache/CacheManager;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2, v0, p0, p1}, Lcom/callapp/contacts/manager/cache/CacheManager;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private static showAndConfirmProfile(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/DataSource;)V
    .locals 8

    .line 590
    invoke-static {p1, p2}, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;->getSocialId(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/common/model/json/JSONSocialNetworkID;

    move-result-object v3

    if-nez v3, :cond_0

    return-void

    .line 595
    :cond_0
    invoke-interface {p0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getRealContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/callapp/contacts/api/helper/common/ActivityWithContact;

    if-eqz v0, :cond_1

    .line 596
    new-instance v5, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$5;

    invoke-direct {v5, p0, p1, p2}, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$5;-><init>(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/DataSource;)V

    .line 603
    invoke-static {p1, p2}, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;->toRegisterActivityLifecycleListener(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/DataSource;)Z

    move-result v4

    .line 605
    new-instance v7, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$6;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p2

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$6;-><init>(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;Lcom/callapp/contacts/model/contact/DataSource;Lcom/callapp/common/model/json/JSONSocialNetworkID;ZLjava/lang/Runnable;Lcom/callapp/contacts/model/contact/ContactData;)V

    .line 637
    invoke-virtual {v7}, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$6;->execute()Lcom/callapp/contacts/manager/task/Task;

    :cond_1
    return-void
.end method

.method public static showProfile(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;Lcom/callapp/contacts/model/contact/social/SocialData;Lcom/callapp/contacts/model/contact/DataSource;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 549
    invoke-interface {p0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/callapp/contacts/model/contact/ContactData;->isSure(Lcom/callapp/contacts/model/contact/DataSource;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/callapp/contacts/model/contact/ContactData;->isFriend(Lcom/callapp/contacts/model/contact/DataSource;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 550
    invoke-interface {p0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;->setIsFriend(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/social/SocialData;Lcom/callapp/contacts/model/contact/DataSource;)V

    .line 552
    :cond_0
    invoke-interface {p0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;->showAndConfirmProfile(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/DataSource;)V

    return-void
.end method

.method private startMatchingActivity(Ljava/lang/Integer;)V
    .locals 6

    .line 286
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {v1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getRealContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/callapp/contacts/activity/select/PersonSelectActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "PERSON_SELECT_NET_ID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    .line 287
    invoke-interface {v1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/model/contact/ContactData;->getFullName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PERSON_SELECT_CONTACTS_FULL_NAME"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "PERSON_SELECT_OPEN_PROFILE_IF_SINGLE_RESULT"

    const/4 v2, 0x0

    .line 288
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 290
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {v1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v1, v3}, Lcom/callapp/contacts/api/helper/common/SocialNetworksSearchUtil;->a(Lcom/callapp/contacts/model/contact/ContactData;I)Lcom/callapp/contacts/model/contact/SocialSearchResults;

    move-result-object v1

    const-string v3, "PERSON_SELECT_AUTO_SEARCH_TEXT"

    const-string v4, "PERSON_SELECT_HAS_RESULT"

    if-eqz v1, :cond_0

    .line 291
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {}, Lcom/callapp/contacts/api/helper/foursquare/FoursquareHelper;->get()Lcom/callapp/contacts/api/helper/foursquare/FoursquareHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/callapp/contacts/api/helper/foursquare/FoursquareHelper;->getApiConstantNetworkId()I

    move-result v5

    if-eq p1, v5, :cond_0

    const/4 p1, 0x1

    .line 292
    invoke-virtual {v0, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 293
    iget-object p1, v1, Lcom/callapp/contacts/model/contact/SocialSearchResults;->term:Ljava/lang/String;

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 295
    :cond_0
    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 296
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {p1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getFullName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 298
    :goto_0
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {p1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getRealContext()Landroid/content/Context;

    move-result-object p1

    new-instance v1, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$2;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$2;-><init>(Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;)V

    invoke-static {p1, v0, v1}, Lcom/callapp/contacts/util/Activities;->a(Landroid/content/Context;Landroid/content/Intent;Lcom/callapp/contacts/manager/popup/ActivityResult;)V

    return-void
.end method

.method private static toRegisterActivityLifecycleListener(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/DataSource;)Z
    .locals 2

    .line 564
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v0

    iget v1, p1, Lcom/callapp/contacts/model/contact/DataSource;->dbCode:I

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/Singletons;->getRemoteAccountHelper(I)Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

    move-result-object v0

    .line 3161
    invoke-virtual {v0}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->isNativeAppInstalled()Z

    move-result v0

    .line 565
    invoke-static {p0, p1}, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;->getSocialId(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/common/model/json/JSONSocialNetworkID;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 566
    invoke-virtual {p0}, Lcom/callapp/common/model/json/JSONSocialNetworkID;->isSure()Z

    move-result p0

    if-nez p0, :cond_0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public autoExpand()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public createExpandCardList()Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard$ExpandedCardList;
    .locals 2

    .line 198
    new-instance v0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$SocialFeedSimpleExpandedCardList;

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$SocialFeedSimpleExpandedCardList;-><init>(Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;Landroid/content/Context;)V

    return-object v0
.end method

.method public fillFooterWithData()V
    .locals 2

    .line 742
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;->footerViewHolder:Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalRecyclerViewHolder;

    if-eqz v0, :cond_0

    .line 743
    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalRecyclerViewHolder;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$a;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalGalleryAdapter;

    if-eqz v0, :cond_0

    .line 745
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    new-instance v1, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$7;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$7;-><init>(Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;)V

    invoke-interface {v0, v1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->safeRunOnUIThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public getHeaderTitle()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

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

    .line 137
    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->negatives:Lcom/callapp/contacts/model/contact/ContactField;

    sget-object v1, Lcom/callapp/contacts/model/contact/ContactField;->phone:Lcom/callapp/contacts/model/contact/ContactField;

    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->googlePlaces:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-static {v0, v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    .line 139
    sget-object v1, Lcom/callapp/contacts/model/contact/DataSource;->ALL_SOCIAL_DATA_SOURCES_LIST:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callapp/contacts/model/contact/DataSource;

    .line 140
    iget-object v3, v2, Lcom/callapp/contacts/model/contact/DataSource;->socialDataField:Lcom/callapp/contacts/model/contact/ContactField;

    if-eqz v3, :cond_1

    .line 141
    iget-object v3, v2, Lcom/callapp/contacts/model/contact/DataSource;->socialDataField:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 143
    :cond_1
    iget-object v3, v2, Lcom/callapp/contacts/model/contact/DataSource;->socialIdField:Lcom/callapp/contacts/model/contact/ContactField;

    if-eqz v3, :cond_2

    .line 144
    iget-object v3, v2, Lcom/callapp/contacts/model/contact/DataSource;->socialIdField:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 146
    :cond_2
    iget-object v3, v2, Lcom/callapp/contacts/model/contact/DataSource;->socialSearchField:Lcom/callapp/contacts/model/contact/ContactField;

    if-eqz v3, :cond_0

    .line 147
    iget-object v2, v2, Lcom/callapp/contacts/model/contact/DataSource;->socialSearchField:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public getPriority()I
    .locals 1

    const/16 v0, 0xbe

    return v0
.end method

.method public isAllowedExpandAnimation()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onContactChanged(Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Set;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/model/contact/ContactData;",
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;)V"
        }
    .end annotation

    .line 171
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->isUnsearchableNumber()Z

    move-result p2

    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {p2, p1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->a(Lcom/callapp/contacts/model/contact/ContactData;)Z

    move-result p2

    if-nez p2, :cond_3

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->isVoiceMail()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_1

    .line 176
    :cond_0
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 177
    sget-object v0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;->infoDataSources:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 178
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/callapp/contacts/model/contact/DataSource;

    invoke-static {p1, v2}, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;->getSocialData(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/model/contact/social/SocialData;

    move-result-object v2

    .line 179
    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {p1, v3}, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;->getPlaceData(Lcom/callapp/contacts/model/contact/ContactData;Ljava/lang/String;)Lcom/callapp/contacts/model/contact/PlaceData;

    move-result-object v3

    .line 180
    new-instance v4, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$SocialDataObject;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/callapp/contacts/model/contact/DataSource;

    invoke-direct {v4, p0, v2, v1, v3}, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$SocialDataObject;-><init>(Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;Lcom/callapp/contacts/model/contact/social/SocialData;Lcom/callapp/contacts/model/contact/DataSource;Lcom/callapp/contacts/model/contact/PlaceData;)V

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 183
    :cond_1
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;->FOOTER_DATA_LIST_LOCK:Ljava/lang/Object;

    monitor-enter p1

    .line 184
    :try_start_0
    invoke-direct {p0, p2}, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;->getDataList(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object p2

    .line 185
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;->getFooterDataListAccordingToContact()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;->footerDataList:Ljava/util/List;

    .line 186
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;->isFooterDataChanged()Z

    move-result v0

    invoke-virtual {p0, p2, v0}, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;->updateCardData(Ljava/util/Collection;Z)V

    .line 187
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;->eventsListener:Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$SocialFeedEvents;

    if-eqz p1, :cond_2

    .line 190
    sget-object p2, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;->footerDataSources:Ljava/util/List;

    invoke-direct {p0, p2}, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;->getAllUnsureButSearchableSources(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$SocialFeedEvents;->onUnsureSocialsChanged(Ljava/util/List;)V

    :cond_2
    const/4 p1, 0x0

    .line 193
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;->showCard(Z)V

    return-void

    :catchall_0
    move-exception p2

    .line 187
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2

    .line 172
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;->hideCard()V

    return-void
.end method

.method public showShouldExpandButton()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
