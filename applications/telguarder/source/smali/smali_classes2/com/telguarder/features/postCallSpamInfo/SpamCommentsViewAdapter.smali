.class public Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SpamCommentsViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field public static final ITEM_TYPE_LIST_AD:I = 0x4

.field public static final ITEM_TYPE_LIST_HEADER:I = 0x1

.field public static final ITEM_TYPE_LIST_ITEM:I = 0x3

.field public static final ITEM_TYPE_LIST_PROGRESS:I = 0x2

.field public static final ITEM_TYPE_SUBMIT:I

.field private static mInstance:Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;


# instance fields
.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/telguarder/features/postCallSpamInfo/SpamCommentData;",
            ">;"
        }
    .end annotation
.end field

.field private mAdNetwrkFirstItem:Z

.field public mAdvert:Lcom/telguarder/features/advertisements/Advert;

.field public mAdvertFromCache:Lcom/telguarder/features/advertisements/Advert;

.field private mHostActivity:Landroidx/appcompat/app/AppCompatActivity;

.field private mPhoneEvent:Lcom/telguarder/features/numberLookup/PhoneEvent;

.field public mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mSpamCommentHeaderData:Lcom/telguarder/features/postCallSpamInfo/SpamCommentHeaderData;

.field private mSpamCommentProgressData:Lcom/telguarder/features/postCallSpamInfo/SpamCommentProgressData;

.field private mSpamCommentSubmitData:Lcom/telguarder/features/postCallSpamInfo/SpamCommentSubmitData;


# direct methods
.method public constructor <init>(Landroidx/appcompat/app/AppCompatActivity;Lcom/telguarder/features/numberLookup/PhoneEvent;)V
    .locals 1

    .line 52
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;->list:Ljava/util/List;

    .line 53
    iput-object p1, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;->mHostActivity:Landroidx/appcompat/app/AppCompatActivity;

    .line 54
    iput-object p2, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;->mPhoneEvent:Lcom/telguarder/features/numberLookup/PhoneEvent;

    .line 55
    invoke-static {}, Lcom/telguarder/features/advertisements/AdvertManager;->getInstance()Lcom/telguarder/features/advertisements/AdvertManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/telguarder/features/advertisements/AdvertManager;->getListbannerAdvertFromCache()Lcom/telguarder/features/advertisements/Advert;

    move-result-object p1

    iput-object p1, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;->mAdvertFromCache:Lcom/telguarder/features/advertisements/Advert;

    .line 56
    iput-object p1, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;->mAdvert:Lcom/telguarder/features/advertisements/Advert;

    const/4 p1, 0x0

    .line 57
    invoke-virtual {p0, p1}, Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;->initData(Z)V

    .line 58
    sput-object p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;->mInstance:Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;

    return-void
.end method

.method static synthetic access$000(Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;)Landroidx/appcompat/app/AppCompatActivity;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;->mHostActivity:Landroidx/appcompat/app/AppCompatActivity;

    return-object p0
.end method

.method static synthetic access$100(Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;)Lcom/telguarder/features/numberLookup/PhoneEvent;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;->mPhoneEvent:Lcom/telguarder/features/numberLookup/PhoneEvent;

    return-object p0
.end method

.method static synthetic access$200(Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;)Ljava/util/List;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;->list:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;)Z
    .locals 0

    .line 22
    iget-boolean p0, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;->mAdNetwrkFirstItem:Z

    return p0
.end method

.method static synthetic access$302(Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;Z)Z
    .locals 0

    .line 22
    iput-boolean p1, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;->mAdNetwrkFirstItem:Z

    return p1
.end method

.method private addListItem(Lcom/telguarder/features/postCallSpamInfo/SpamCommentData;)V
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/telguarder/features/postCallSpamInfo/-$$Lambda$SpamCommentsViewAdapter$JWiBfbZAdaZeS-VhuCXne4AiVs0;

    invoke-direct {v0, p0}, Lcom/telguarder/features/postCallSpamInfo/-$$Lambda$SpamCommentsViewAdapter$JWiBfbZAdaZeS-VhuCXne4AiVs0;-><init>(Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static getInstance()Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;
    .locals 1

    .line 48
    sget-object v0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;->mInstance:Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;

    return-object v0
.end method

.method private insertListItem(ILcom/telguarder/features/postCallSpamInfo/SpamCommentData;)V
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 218
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/telguarder/features/postCallSpamInfo/-$$Lambda$SpamCommentsViewAdapter$mI3ko0UOdwFUvl_fGidnI1F6a48;

    invoke-direct {v0, p0, p1}, Lcom/telguarder/features/postCallSpamInfo/-$$Lambda$SpamCommentsViewAdapter$mI3ko0UOdwFUvl_fGidnI1F6a48;-><init>(Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;I)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static isInstantiated()Z
    .locals 1

    .line 43
    sget-object v0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;->mInstance:Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public addOwnCommentToTheList(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 240
    invoke-virtual {p0}, Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;->getSpamCommentSubmitData()Lcom/telguarder/features/postCallSpamInfo/SpamCommentSubmitData;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;->remove(Lcom/telguarder/features/postCallSpamInfo/SpamCommentData;)V

    .line 241
    iget-object v0, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;->list:Ljava/util/List;

    invoke-virtual {p0}, Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;->getSpamCommentHeaderData()Lcom/telguarder/features/postCallSpamInfo/SpamCommentHeaderData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x1

    if-ltz v0, :cond_0

    add-int/2addr v0, v1

    .line 243
    new-instance v1, Lcom/telguarder/features/postCallSpamInfo/SpamCommentListItemData;

    invoke-direct {v1, p1, p2}, Lcom/telguarder/features/postCallSpamInfo/SpamCommentListItemData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;->insertListItem(ILcom/telguarder/features/postCallSpamInfo/SpamCommentData;)V

    goto :goto_1

    .line 245
    :cond_0
    invoke-virtual {p0}, Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;->getSpamCommentHeaderData()Lcom/telguarder/features/postCallSpamInfo/SpamCommentHeaderData;

    move-result-object v0

    iget-object v2, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;->mHostActivity:Landroidx/appcompat/app/AppCompatActivity;

    iget-object v3, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;->mPhoneEvent:Lcom/telguarder/features/numberLookup/PhoneEvent;

    invoke-virtual {v3}, Lcom/telguarder/features/numberLookup/PhoneEvent;->isSpamCommunityOrange()Z

    move-result v3

    if-eqz v3, :cond_1

    const v3, 0x7f050119

    goto :goto_0

    :cond_1
    const v3, 0x7f050118

    :goto_0
    invoke-static {v2, v3}, Lcom/telguarder/helpers/ui/UiHelper;->getColorWrapper(Landroid/content/Context;I)I

    move-result v2

    iput v2, v0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentHeaderData;->headerTextColor:I

    const/4 v0, 0x0

    .line 246
    invoke-virtual {p0}, Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;->getSpamCommentHeaderData()Lcom/telguarder/features/postCallSpamInfo/SpamCommentHeaderData;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;->insertListItem(ILcom/telguarder/features/postCallSpamInfo/SpamCommentData;)V

    .line 247
    new-instance v0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentListItemData;

    invoke-direct {v0, p1, p2}, Lcom/telguarder/features/postCallSpamInfo/SpamCommentListItemData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v1, v0}, Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;->insertListItem(ILcom/telguarder/features/postCallSpamInfo/SpamCommentData;)V

    :goto_1
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;->list:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/telguarder/features/postCallSpamInfo/SpamCommentData;

    invoke-virtual {p1}, Lcom/telguarder/features/postCallSpamInfo/SpamCommentData;->getItemType()I

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, -0x1

    return p1
.end method

.method public getSpamCommentHeaderData()Lcom/telguarder/features/postCallSpamInfo/SpamCommentHeaderData;
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;->mSpamCommentHeaderData:Lcom/telguarder/features/postCallSpamInfo/SpamCommentHeaderData;

    if-nez v0, :cond_0

    .line 196
    new-instance v0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentHeaderData;

    invoke-direct {v0}, Lcom/telguarder/features/postCallSpamInfo/SpamCommentHeaderData;-><init>()V

    iput-object v0, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;->mSpamCommentHeaderData:Lcom/telguarder/features/postCallSpamInfo/SpamCommentHeaderData;

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;->mSpamCommentHeaderData:Lcom/telguarder/features/postCallSpamInfo/SpamCommentHeaderData;

    return-object v0
.end method

.method public getSpamCommentProgressData()Lcom/telguarder/features/postCallSpamInfo/SpamCommentProgressData;
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;->mSpamCommentProgressData:Lcom/telguarder/features/postCallSpamInfo/SpamCommentProgressData;

    if-nez v0, :cond_0

    .line 204
    new-instance v0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentProgressData;

    invoke-direct {v0}, Lcom/telguarder/features/postCallSpamInfo/SpamCommentProgressData;-><init>()V

    iput-object v0, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;->mSpamCommentProgressData:Lcom/telguarder/features/postCallSpamInfo/SpamCommentProgressData;

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;->mSpamCommentProgressData:Lcom/telguarder/features/postCallSpamInfo/SpamCommentProgressData;

    return-object v0
.end method

.method public getSpamCommentSubmitData()Lcom/telguarder/features/postCallSpamInfo/SpamCommentSubmitData;
    .locals 2

    .line 187
    iget-object v0, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;->mSpamCommentSubmitData:Lcom/telguarder/features/postCallSpamInfo/SpamCommentSubmitData;

    if-nez v0, :cond_0

    .line 188
    new-instance v0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentSubmitData;

    iget-object v1, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;->mPhoneEvent:Lcom/telguarder/features/numberLookup/PhoneEvent;

    invoke-direct {v0, v1}, Lcom/telguarder/features/postCallSpamInfo/SpamCommentSubmitData;-><init>(Lcom/telguarder/features/numberLookup/PhoneEvent;)V

    iput-object v0, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;->mSpamCommentSubmitData:Lcom/telguarder/features/postCallSpamInfo/SpamCommentSubmitData;

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;->mSpamCommentSubmitData:Lcom/telguarder/features/postCallSpamInfo/SpamCommentSubmitData;

    return-object v0
.end method

.method public initData(Z)V
    .locals 2

    const/4 v0, 0x1

    .line 253
    iput-boolean v0, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;->mAdNetwrkFirstItem:Z

    .line 254
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/telguarder/features/postCallSpamInfo/-$$Lambda$SpamCommentsViewAdapter$s_6mLIbxZhw7RkHB21TYgIGEB_U;

    invoke-direct {v1, p0, p1}, Lcom/telguarder/features/postCallSpamInfo/-$$Lambda$SpamCommentsViewAdapter$s_6mLIbxZhw7RkHB21TYgIGEB_U;-><init>(Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;Z)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 299
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public synthetic lambda$addListItem$1$SpamCommentsViewAdapter()V
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;->notifyItemInserted(I)V

    return-void
.end method

.method public synthetic lambda$initData$3$SpamCommentsViewAdapter(Z)V
    .locals 4

    .line 255
    iget-object v0, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 256
    iget-object v0, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;->list:Ljava/util/List;

    invoke-virtual {p0}, Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;->getSpamCommentSubmitData()Lcom/telguarder/features/postCallSpamInfo/SpamCommentSubmitData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 257
    invoke-static {}, Lcom/telguarder/features/postCallSpamInfo/SpamCommentDataProvider;->getInstance()Lcom/telguarder/features/postCallSpamInfo/SpamCommentDataProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;->mHostActivity:Landroidx/appcompat/app/AppCompatActivity;

    iget-object v2, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;->mPhoneEvent:Lcom/telguarder/features/numberLookup/PhoneEvent;

    iget-object v2, v2, Lcom/telguarder/features/numberLookup/PhoneEvent;->calledPhoneNumber:Ljava/lang/String;

    new-instance v3, Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter$1;

    invoke-direct {v3, p0}, Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter$1;-><init>(Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;)V

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/telguarder/features/postCallSpamInfo/SpamCommentDataProvider;->getData(Landroid/content/Context;Ljava/lang/String;ZLcom/telguarder/features/postCallSpamInfo/SpamCommentDataProvider$SpamCommentDataProviderCallback;)V

    return-void
.end method

.method public synthetic lambda$insertListItem$2$SpamCommentsViewAdapter(I)V
    .locals 0

    .line 218
    invoke-virtual {p0, p1}, Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;->notifyItemInserted(I)V

    return-void
.end method

.method public synthetic lambda$onBindViewHolder$0$SpamCommentsViewAdapter(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    .line 169
    move-object v0, p1

    check-cast v0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentAdRowViewHolder;

    iget-object v1, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;->list:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/telguarder/features/postCallSpamInfo/SpamCommentAdData;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {v0, p2, p1}, Lcom/telguarder/features/postCallSpamInfo/SpamCommentAdRowViewHolder;->bindData(Lcom/telguarder/features/postCallSpamInfo/SpamCommentAdData;Landroid/view/ViewGroup;)V

    return-void
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 178
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 179
    iput-object p1, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    .line 161
    invoke-virtual {p0, p2}, Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;->getItemViewType(I)I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 167
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 168
    iget-object v0, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentAdData;

    new-instance v1, Lcom/telguarder/features/postCallSpamInfo/-$$Lambda$SpamCommentsViewAdapter$oYtmqAKitz725mAvo7FR2vSmKV4;

    invoke-direct {v1, p0, p1, p2}, Lcom/telguarder/features/postCallSpamInfo/-$$Lambda$SpamCommentsViewAdapter$oYtmqAKitz725mAvo7FR2vSmKV4;-><init>(Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    invoke-virtual {v0, v1}, Lcom/telguarder/features/postCallSpamInfo/SpamCommentAdData;->load(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 165
    :cond_1
    check-cast p1, Lcom/telguarder/features/postCallSpamInfo/SpamCommentItemRowViewHolder;

    iget-object v0, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/telguarder/features/postCallSpamInfo/SpamCommentListItemData;

    invoke-virtual {p1, p2}, Lcom/telguarder/features/postCallSpamInfo/SpamCommentItemRowViewHolder;->bindData(Lcom/telguarder/features/postCallSpamInfo/SpamCommentListItemData;)V

    goto :goto_0

    .line 164
    :cond_2
    check-cast p1, Lcom/telguarder/features/postCallSpamInfo/SpamCommentProgressRowViewHolder;

    iget-object v0, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/telguarder/features/postCallSpamInfo/SpamCommentProgressData;

    invoke-virtual {p1, p2}, Lcom/telguarder/features/postCallSpamInfo/SpamCommentProgressRowViewHolder;->bindData(Lcom/telguarder/features/postCallSpamInfo/SpamCommentProgressData;)V

    goto :goto_0

    .line 163
    :cond_3
    check-cast p1, Lcom/telguarder/features/postCallSpamInfo/SpamCommentHeaderRowViewHolder;

    iget-object v0, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/telguarder/features/postCallSpamInfo/SpamCommentHeaderData;

    invoke-virtual {p1, p2}, Lcom/telguarder/features/postCallSpamInfo/SpamCommentHeaderRowViewHolder;->bindData(Lcom/telguarder/features/postCallSpamInfo/SpamCommentHeaderData;)V

    goto :goto_0

    .line 162
    :cond_4
    check-cast p1, Lcom/telguarder/features/postCallSpamInfo/SpamCommentSubmitRowViewHolder;

    iget-object v0, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/telguarder/features/postCallSpamInfo/SpamCommentSubmitData;

    invoke-virtual {p1, p2}, Lcom/telguarder/features/postCallSpamInfo/SpamCommentSubmitRowViewHolder;->bindData(Lcom/telguarder/features/postCallSpamInfo/SpamCommentSubmitData;)V

    :goto_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3

    const/4 v0, 0x0

    if-eqz p2, :cond_4

    const/4 v1, 0x1

    if-eq p2, v1, :cond_3

    const/4 v1, 0x2

    if-eq p2, v1, :cond_2

    const/4 v1, 0x3

    if-eq p2, v1, :cond_1

    const/4 v1, 0x4

    if-eq p2, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 150
    :cond_0
    new-instance p2, Lcom/telguarder/features/postCallSpamInfo/SpamCommentAdRowViewHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0b00b1

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/telguarder/features/postCallSpamInfo/SpamCommentAdRowViewHolder;-><init>(Landroid/view/View;)V

    return-object p2

    .line 149
    :cond_1
    new-instance p2, Lcom/telguarder/features/postCallSpamInfo/SpamCommentItemRowViewHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0b00b3

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/telguarder/features/postCallSpamInfo/SpamCommentItemRowViewHolder;-><init>(Landroid/view/View;)V

    return-object p2

    .line 148
    :cond_2
    new-instance p2, Lcom/telguarder/features/postCallSpamInfo/SpamCommentProgressRowViewHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0b00b4

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/telguarder/features/postCallSpamInfo/SpamCommentProgressRowViewHolder;-><init>(Landroid/view/View;)V

    return-object p2

    .line 147
    :cond_3
    new-instance p2, Lcom/telguarder/features/postCallSpamInfo/SpamCommentHeaderRowViewHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0b00b2

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/telguarder/features/postCallSpamInfo/SpamCommentHeaderRowViewHolder;-><init>(Landroid/view/View;)V

    return-object p2

    .line 146
    :cond_4
    new-instance p2, Lcom/telguarder/features/postCallSpamInfo/SpamCommentSubmitRowViewHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0b00b5

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/telguarder/features/postCallSpamInfo/SpamCommentSubmitRowViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public onDestroy()V
    .locals 4

    .line 111
    iget-object v0, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;->list:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 113
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/telguarder/features/postCallSpamInfo/SpamCommentData;

    .line 114
    invoke-virtual {v1}, Lcom/telguarder/features/postCallSpamInfo/SpamCommentData;->getItemType()I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 119
    :cond_1
    check-cast v1, Lcom/telguarder/features/postCallSpamInfo/SpamCommentAdData;

    invoke-virtual {v1}, Lcom/telguarder/features/postCallSpamInfo/SpamCommentAdData;->onDestroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_2
    :goto_1
    return-void
.end method

.method public onPause()V
    .locals 4

    .line 63
    iget-object v0, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;->list:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 65
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/telguarder/features/postCallSpamInfo/SpamCommentData;

    .line 66
    invoke-virtual {v1}, Lcom/telguarder/features/postCallSpamInfo/SpamCommentData;->getItemType()I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 71
    :cond_1
    check-cast v1, Lcom/telguarder/features/postCallSpamInfo/SpamCommentAdData;

    invoke-virtual {v1}, Lcom/telguarder/features/postCallSpamInfo/SpamCommentAdData;->onPause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_2
    :goto_1
    return-void
.end method

.method public onResume()V
    .locals 4

    .line 79
    iget-object v0, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;->list:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 81
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/telguarder/features/postCallSpamInfo/SpamCommentData;

    .line 82
    invoke-virtual {v1}, Lcom/telguarder/features/postCallSpamInfo/SpamCommentData;->getItemType()I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 87
    :cond_1
    check-cast v1, Lcom/telguarder/features/postCallSpamInfo/SpamCommentAdData;

    invoke-virtual {v1}, Lcom/telguarder/features/postCallSpamInfo/SpamCommentAdData;->onResume()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_2
    :goto_1
    return-void
.end method

.method public onStop()V
    .locals 4

    .line 95
    iget-object v0, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;->list:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 97
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/telguarder/features/postCallSpamInfo/SpamCommentData;

    .line 98
    invoke-virtual {v1}, Lcom/telguarder/features/postCallSpamInfo/SpamCommentData;->getItemType()I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 103
    :cond_1
    check-cast v1, Lcom/telguarder/features/postCallSpamInfo/SpamCommentAdData;

    invoke-virtual {v1}, Lcom/telguarder/features/postCallSpamInfo/SpamCommentAdData;->onStop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_2
    :goto_1
    return-void
.end method

.method public refresh(Lcom/telguarder/features/postCallSpamInfo/SpamCommentData;)V
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 234
    invoke-virtual {p0, p1}, Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;->notifyItemChanged(I)V

    :cond_0
    return-void
.end method

.method public remove(Lcom/telguarder/features/postCallSpamInfo/SpamCommentData;)V
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 225
    iget-object v0, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 226
    invoke-virtual {p0, p1}, Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;->notifyItemRemoved(I)V

    :cond_0
    return-void
.end method
