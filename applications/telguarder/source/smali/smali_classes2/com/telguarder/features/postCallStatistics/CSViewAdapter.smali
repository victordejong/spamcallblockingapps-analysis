.class public Lcom/telguarder/features/postCallStatistics/CSViewAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "CSViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field public static final ITEM_TYPE_AD:I = 0x5

.field public static final ITEM_TYPE_AD_INFO:I = 0x6

.field public static final ITEM_TYPE_COUNT:I = 0x1

.field public static final ITEM_TYPE_DURATION:I = 0x0

.field public static final ITEM_TYPE_HIST:I = 0x4

.field public static final ITEM_TYPE_HIST_HEADER:I = 0x3

.field public static final ITEM_TYPE_STAT:I = 0x2

.field private static mInstance:Lcom/telguarder/features/postCallStatistics/CSViewAdapter;


# instance fields
.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/telguarder/features/postCallStatistics/CSData;",
            ">;"
        }
    .end annotation
.end field

.field private mAdHolderCallbackInterface:Lcom/telguarder/features/postCallStatistics/CSAdRowViewHolder$AdHolderCallbackInterface;

.field private mAdInfoHolderCallbackInterface:Lcom/telguarder/features/postCallStatistics/CSAdInfoRowViewHolder$AdInfoHolderCallbackInterface;

.field private mAdViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

.field private mCSAdData:Lcom/telguarder/features/postCallStatistics/CSAdData;

.field private mCSAdInfoData:Lcom/telguarder/features/postCallStatistics/CSAdInfoData;

.field private mCSCountData:Lcom/telguarder/features/postCallStatistics/CSCountData;

.field private mCSDurData:Lcom/telguarder/features/postCallStatistics/CSDurData;

.field private mCSHistHeaderData:Lcom/telguarder/features/postCallStatistics/CSHistHeaderData;

.field private mCSStatData:Lcom/telguarder/features/postCallStatistics/CSStatData;

.field private mCallType:I

.field private mContext:Landroid/content/Context;

.field private mPhoneNumber:Ljava/lang/String;

.field public mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1

    .line 63
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/telguarder/features/postCallStatistics/CSViewAdapter;->list:Ljava/util/List;

    const/4 v0, 0x0

    .line 49
    iput-object v0, p0, Lcom/telguarder/features/postCallStatistics/CSViewAdapter;->mAdViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 64
    iput-object p1, p0, Lcom/telguarder/features/postCallStatistics/CSViewAdapter;->mContext:Landroid/content/Context;

    .line 65
    iput-object p2, p0, Lcom/telguarder/features/postCallStatistics/CSViewAdapter;->mPhoneNumber:Ljava/lang/String;

    .line 66
    iput p3, p0, Lcom/telguarder/features/postCallStatistics/CSViewAdapter;->mCallType:I

    .line 67
    invoke-direct {p0, p1}, Lcom/telguarder/features/postCallStatistics/CSViewAdapter;->initData(Landroid/content/Context;)V

    .line 68
    sput-object p0, Lcom/telguarder/features/postCallStatistics/CSViewAdapter;->mInstance:Lcom/telguarder/features/postCallStatistics/CSViewAdapter;

    return-void
.end method

.method static synthetic access$000(Lcom/telguarder/features/postCallStatistics/CSViewAdapter;J)J
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/telguarder/features/postCallStatistics/CSViewAdapter;->getRoundedMinutes(J)J

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$100(Lcom/telguarder/features/postCallStatistics/CSViewAdapter;)Ljava/util/List;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/telguarder/features/postCallStatistics/CSViewAdapter;->list:Ljava/util/List;

    return-object p0
.end method

.method private getAdViewHolder(Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 4

    .line 297
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/CSViewAdapter;->mAdViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-nez v0, :cond_0

    .line 298
    new-instance v0, Lcom/telguarder/features/postCallStatistics/CSAdRowViewHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0b0038

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/telguarder/features/postCallStatistics/CSAdRowViewHolder;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/telguarder/features/postCallStatistics/CSViewAdapter;->mAdViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 300
    :cond_0
    iget-object p1, p0, Lcom/telguarder/features/postCallStatistics/CSViewAdapter;->mAdViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    return-object p1
.end method

.method public static getInstance()Lcom/telguarder/features/postCallStatistics/CSViewAdapter;
    .locals 1

    .line 59
    sget-object v0, Lcom/telguarder/features/postCallStatistics/CSViewAdapter;->mInstance:Lcom/telguarder/features/postCallStatistics/CSViewAdapter;

    return-object v0
.end method

.method private getRoundedMinutes(J)J
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_1

    const-wide/16 v2, 0x3c

    .line 73
    div-long/2addr p1, v2

    long-to-float p1, p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-long p1, p1

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const-wide/16 p1, 0x1

    :cond_0
    return-wide p1

    :cond_1
    return-wide v0
.end method

.method private initData(Landroid/content/Context;)V
    .locals 4

    .line 81
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/CSViewAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 82
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/CSViewAdapter;->list:Ljava/util/List;

    invoke-virtual {p0}, Lcom/telguarder/features/postCallStatistics/CSViewAdapter;->getCSDurData()Lcom/telguarder/features/postCallStatistics/CSDurData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/CSViewAdapter;->list:Ljava/util/List;

    invoke-virtual {p0}, Lcom/telguarder/features/postCallStatistics/CSViewAdapter;->getCSAdData()Lcom/telguarder/features/postCallStatistics/CSAdData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/CSViewAdapter;->list:Ljava/util/List;

    invoke-virtual {p0}, Lcom/telguarder/features/postCallStatistics/CSViewAdapter;->getCSAdInfoData()Lcom/telguarder/features/postCallStatistics/CSAdInfoData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/CSViewAdapter;->list:Ljava/util/List;

    invoke-virtual {p0}, Lcom/telguarder/features/postCallStatistics/CSViewAdapter;->getCSCountData()Lcom/telguarder/features/postCallStatistics/CSCountData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/CSViewAdapter;->list:Ljava/util/List;

    invoke-virtual {p0}, Lcom/telguarder/features/postCallStatistics/CSViewAdapter;->getCSStatData()Lcom/telguarder/features/postCallStatistics/CSStatData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    invoke-static {}, Lcom/telguarder/features/postCallStatistics/CSDataProvider;->getInstance()Lcom/telguarder/features/postCallStatistics/CSDataProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/telguarder/features/postCallStatistics/CSViewAdapter;->mPhoneNumber:Ljava/lang/String;

    iget v2, p0, Lcom/telguarder/features/postCallStatistics/CSViewAdapter;->mCallType:I

    new-instance v3, Lcom/telguarder/features/postCallStatistics/CSViewAdapter$1;

    invoke-direct {v3, p0}, Lcom/telguarder/features/postCallStatistics/CSViewAdapter$1;-><init>(Lcom/telguarder/features/postCallStatistics/CSViewAdapter;)V

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/telguarder/features/postCallStatistics/CSDataProvider;->getData(Landroid/content/Context;Ljava/lang/String;ILcom/telguarder/features/postCallStatistics/CSDataProvider$CSDataProviderCallback;)V

    return-void
.end method

.method public static isInstantiated()Z
    .locals 1

    .line 54
    sget-object v0, Lcom/telguarder/features/postCallStatistics/CSViewAdapter;->mInstance:Lcom/telguarder/features/postCallStatistics/CSViewAdapter;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public animate(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 2

    .line 332
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/CSViewAdapter;->mContext:Landroid/content/Context;

    const v1, 0x7f01000c

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 333
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public getCSAdData()Lcom/telguarder/features/postCallStatistics/CSAdData;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/CSViewAdapter;->mCSAdData:Lcom/telguarder/features/postCallStatistics/CSAdData;

    if-nez v0, :cond_0

    .line 135
    new-instance v0, Lcom/telguarder/features/postCallStatistics/CSAdData;

    invoke-direct {v0}, Lcom/telguarder/features/postCallStatistics/CSAdData;-><init>()V

    iput-object v0, p0, Lcom/telguarder/features/postCallStatistics/CSViewAdapter;->mCSAdData:Lcom/telguarder/features/postCallStatistics/CSAdData;

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/CSViewAdapter;->mCSAdData:Lcom/telguarder/features/postCallStatistics/CSAdData;

    return-object v0
.end method

.method public getCSAdInfoData()Lcom/telguarder/features/postCallStatistics/CSAdInfoData;
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/CSViewAdapter;->mCSAdInfoData:Lcom/telguarder/features/postCallStatistics/CSAdInfoData;

    if-nez v0, :cond_0

    .line 171
    new-instance v0, Lcom/telguarder/features/postCallStatistics/CSAdInfoData;

    invoke-direct {v0}, Lcom/telguarder/features/postCallStatistics/CSAdInfoData;-><init>()V

    iput-object v0, p0, Lcom/telguarder/features/postCallStatistics/CSViewAdapter;->mCSAdInfoData:Lcom/telguarder/features/postCallStatistics/CSAdInfoData;

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/CSViewAdapter;->mCSAdInfoData:Lcom/telguarder/features/postCallStatistics/CSAdInfoData;

    return-object v0
.end method

.method public getCSCountData()Lcom/telguarder/features/postCallStatistics/CSCountData;
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/CSViewAdapter;->mCSCountData:Lcom/telguarder/features/postCallStatistics/CSCountData;

    if-nez v0, :cond_0

    .line 179
    new-instance v0, Lcom/telguarder/features/postCallStatistics/CSCountData;

    invoke-direct {v0}, Lcom/telguarder/features/postCallStatistics/CSCountData;-><init>()V

    iput-object v0, p0, Lcom/telguarder/features/postCallStatistics/CSViewAdapter;->mCSCountData:Lcom/telguarder/features/postCallStatistics/CSCountData;

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/CSViewAdapter;->mCSCountData:Lcom/telguarder/features/postCallStatistics/CSCountData;

    return-object v0
.end method

.method public getCSDurData()Lcom/telguarder/features/postCallStatistics/CSDurData;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/CSViewAdapter;->mCSDurData:Lcom/telguarder/features/postCallStatistics/CSDurData;

    if-nez v0, :cond_0

    .line 127
    new-instance v0, Lcom/telguarder/features/postCallStatistics/CSDurData;

    invoke-direct {v0}, Lcom/telguarder/features/postCallStatistics/CSDurData;-><init>()V

    iput-object v0, p0, Lcom/telguarder/features/postCallStatistics/CSViewAdapter;->mCSDurData:Lcom/telguarder/features/postCallStatistics/CSDurData;

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/CSViewAdapter;->mCSDurData:Lcom/telguarder/features/postCallStatistics/CSDurData;

    return-object v0
.end method

.method public getCSHistHeaderData()Lcom/telguarder/features/postCallStatistics/CSHistHeaderData;
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/CSViewAdapter;->mCSHistHeaderData:Lcom/telguarder/features/postCallStatistics/CSHistHeaderData;

    if-nez v0, :cond_0

    .line 195
    new-instance v0, Lcom/telguarder/features/postCallStatistics/CSHistHeaderData;

    invoke-direct {v0}, Lcom/telguarder/features/postCallStatistics/CSHistHeaderData;-><init>()V

    iput-object v0, p0, Lcom/telguarder/features/postCallStatistics/CSViewAdapter;->mCSHistHeaderData:Lcom/telguarder/features/postCallStatistics/CSHistHeaderData;

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/CSViewAdapter;->mCSHistHeaderData:Lcom/telguarder/features/postCallStatistics/CSHistHeaderData;

    return-object v0
.end method

.method public getCSStatData()Lcom/telguarder/features/postCallStatistics/CSStatData;
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/CSViewAdapter;->mCSStatData:Lcom/telguarder/features/postCallStatistics/CSStatData;

    if-nez v0, :cond_0

    .line 187
    new-instance v0, Lcom/telguarder/features/postCallStatistics/CSStatData;

    invoke-direct {v0}, Lcom/telguarder/features/postCallStatistics/CSStatData;-><init>()V

    iput-object v0, p0, Lcom/telguarder/features/postCallStatistics/CSViewAdapter;->mCSStatData:Lcom/telguarder/features/postCallStatistics/CSStatData;

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/CSViewAdapter;->mCSStatData:Lcom/telguarder/features/postCallStatistics/CSStatData;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/CSViewAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/CSViewAdapter;->list:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/CSViewAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/CSViewAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/telguarder/features/postCallStatistics/CSData;

    invoke-virtual {p1}, Lcom/telguarder/features/postCallStatistics/CSData;->getItemType()I

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, -0x1

    return p1
.end method

.method public getPosition(Lcom/telguarder/features/postCallStatistics/CSData;)I
    .locals 1

    .line 266
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/CSViewAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public getPositionForDay(Ljava/util/Date;)I
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 271
    :goto_0
    iget-object v2, p0, Lcom/telguarder/features/postCallStatistics/CSViewAdapter;->list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 272
    iget-object v2, p0, Lcom/telguarder/features/postCallStatistics/CSViewAdapter;->list:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/telguarder/features/postCallStatistics/CSData;

    .line 273
    instance-of v3, v2, Lcom/telguarder/features/postCallStatistics/CSHistData;

    if-eqz v3, :cond_0

    .line 274
    check-cast v2, Lcom/telguarder/features/postCallStatistics/CSHistData;

    iget-wide v2, v2, Lcom/telguarder/features/postCallStatistics/CSHistData;->callDate:J

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/32 v4, 0x5265c00

    div-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public insert(ILcom/telguarder/features/postCallStatistics/CSData;)V
    .locals 1

    .line 251
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/CSViewAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 252
    invoke-virtual {p0, p1}, Lcom/telguarder/features/postCallStatistics/CSViewAdapter;->notifyItemInserted(I)V

    return-void
.end method

.method public insertAdBox()V
    .locals 2

    .line 149
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/CSViewAdapter;->mCSAdData:Lcom/telguarder/features/postCallStatistics/CSAdData;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 150
    invoke-virtual {p0}, Lcom/telguarder/features/postCallStatistics/CSViewAdapter;->getCSAdData()Lcom/telguarder/features/postCallStatistics/CSAdData;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/telguarder/features/postCallStatistics/CSViewAdapter;->insert(ILcom/telguarder/features/postCallStatistics/CSData;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$notifyAdBox$0$CSViewAdapter()V
    .locals 2

    .line 143
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/CSViewAdapter;->list:Ljava/util/List;

    iget-object v1, p0, Lcom/telguarder/features/postCallStatistics/CSViewAdapter;->mCSAdData:Lcom/telguarder/features/postCallStatistics/CSAdData;

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/telguarder/features/postCallStatistics/CSViewAdapter;->notifyItemChanged(I)V

    return-void
.end method

.method public synthetic lambda$notifyAdInfoBox$1$CSViewAdapter()V
    .locals 2

    .line 165
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/CSViewAdapter;->list:Ljava/util/List;

    iget-object v1, p0, Lcom/telguarder/features/postCallStatistics/CSViewAdapter;->mCSAdInfoData:Lcom/telguarder/features/postCallStatistics/CSAdInfoData;

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/telguarder/features/postCallStatistics/CSViewAdapter;->notifyItemChanged(I)V

    return-void
.end method

.method public notifyAdBox()V
    .locals 2

    .line 142
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/CSViewAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/CSViewAdapter;->mCSAdData:Lcom/telguarder/features/postCallStatistics/CSAdData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/CSViewAdapter;->list:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 143
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/telguarder/features/postCallStatistics/-$$Lambda$CSViewAdapter$m4KPQbTHVaKL245OToS0AGJOpYc;

    invoke-direct {v1, p0}, Lcom/telguarder/features/postCallStatistics/-$$Lambda$CSViewAdapter$m4KPQbTHVaKL245OToS0AGJOpYc;-><init>(Lcom/telguarder/features/postCallStatistics/CSViewAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public notifyAdInfoBox()V
    .locals 2

    .line 164
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/CSViewAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->isComputingLayout()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/CSViewAdapter;->mCSAdInfoData:Lcom/telguarder/features/postCallStatistics/CSAdInfoData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/CSViewAdapter;->list:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 165
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/telguarder/features/postCallStatistics/-$$Lambda$CSViewAdapter$iH7r6FlmErC4hTW_WGDqLeX1KUw;

    invoke-direct {v1, p0}, Lcom/telguarder/features/postCallStatistics/-$$Lambda$CSViewAdapter$iH7r6FlmErC4hTW_WGDqLeX1KUw;-><init>(Lcom/telguarder/features/postCallStatistics/CSViewAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    .line 219
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 220
    iput-object p1, p0, Lcom/telguarder/features/postCallStatistics/CSViewAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 221
    new-instance v0, Lcom/telguarder/features/postCallStatistics/CSViewAdapter$2;

    invoke-direct {v0, p0}, Lcom/telguarder/features/postCallStatistics/CSViewAdapter$2;-><init>(Lcom/telguarder/features/postCallStatistics/CSViewAdapter;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    .line 306
    invoke-virtual {p0, p2}, Lcom/telguarder/features/postCallStatistics/CSViewAdapter;->getItemViewType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 313
    :pswitch_0
    check-cast p1, Lcom/telguarder/features/postCallStatistics/CSAdInfoRowViewHolder;

    iget-object p2, p0, Lcom/telguarder/features/postCallStatistics/CSViewAdapter;->mAdInfoHolderCallbackInterface:Lcom/telguarder/features/postCallStatistics/CSAdInfoRowViewHolder$AdInfoHolderCallbackInterface;

    invoke-virtual {p1, p2}, Lcom/telguarder/features/postCallStatistics/CSAdInfoRowViewHolder;->bindData(Lcom/telguarder/features/postCallStatistics/CSAdInfoRowViewHolder$AdInfoHolderCallbackInterface;)V

    goto :goto_0

    .line 312
    :pswitch_1
    check-cast p1, Lcom/telguarder/features/postCallStatistics/CSAdRowViewHolder;

    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/CSViewAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/telguarder/features/postCallStatistics/CSAdData;

    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;

    move-result-object v0

    iget-object v0, v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->mAdvert:Lcom/telguarder/features/advertisements/Advert;

    iget-object v1, p0, Lcom/telguarder/features/postCallStatistics/CSViewAdapter;->mAdHolderCallbackInterface:Lcom/telguarder/features/postCallStatistics/CSAdRowViewHolder$AdHolderCallbackInterface;

    invoke-virtual {p1, p2, v0, v1}, Lcom/telguarder/features/postCallStatistics/CSAdRowViewHolder;->bindData(Lcom/telguarder/features/postCallStatistics/CSAdData;Lcom/telguarder/features/advertisements/Advert;Lcom/telguarder/features/postCallStatistics/CSAdRowViewHolder$AdHolderCallbackInterface;)V

    goto :goto_0

    .line 311
    :pswitch_2
    check-cast p1, Lcom/telguarder/features/postCallStatistics/CSHistRowViewHolder;

    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/CSViewAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/telguarder/features/postCallStatistics/CSHistData;

    invoke-virtual {p1, p2}, Lcom/telguarder/features/postCallStatistics/CSHistRowViewHolder;->bindData(Lcom/telguarder/features/postCallStatistics/CSHistData;)V

    goto :goto_0

    .line 310
    :pswitch_3
    check-cast p1, Lcom/telguarder/features/postCallStatistics/CSHistHeaderRowViewHolder;

    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/CSViewAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/telguarder/features/postCallStatistics/CSHistHeaderData;

    invoke-virtual {p1, p2}, Lcom/telguarder/features/postCallStatistics/CSHistHeaderRowViewHolder;->bindData(Lcom/telguarder/features/postCallStatistics/CSHistHeaderData;)V

    goto :goto_0

    .line 309
    :pswitch_4
    check-cast p1, Lcom/telguarder/features/postCallStatistics/CSStatRowViewHolder;

    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/CSViewAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/telguarder/features/postCallStatistics/CSStatData;

    invoke-virtual {p1, p2}, Lcom/telguarder/features/postCallStatistics/CSStatRowViewHolder;->bindData(Lcom/telguarder/features/postCallStatistics/CSStatData;)V

    goto :goto_0

    .line 308
    :pswitch_5
    check-cast p1, Lcom/telguarder/features/postCallStatistics/CSCountRowViewHolder;

    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/CSViewAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/telguarder/features/postCallStatistics/CSCountData;

    invoke-virtual {p1, p2}, Lcom/telguarder/features/postCallStatistics/CSCountRowViewHolder;->bindData(Lcom/telguarder/features/postCallStatistics/CSCountData;)V

    goto :goto_0

    .line 307
    :pswitch_6
    check-cast p1, Lcom/telguarder/features/postCallStatistics/CSDurRowViewHolder;

    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/CSViewAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/telguarder/features/postCallStatistics/CSDurData;

    invoke-virtual {p1, p2}, Lcom/telguarder/features/postCallStatistics/CSDurRowViewHolder;->bindData(Lcom/telguarder/features/postCallStatistics/CSDurData;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3

    const/4 v0, 0x0

    packed-switch p2, :pswitch_data_0

    const/4 p1, 0x0

    return-object p1

    .line 291
    :pswitch_0
    new-instance p2, Lcom/telguarder/features/postCallStatistics/CSAdInfoRowViewHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0b0037

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/telguarder/features/postCallStatistics/CSAdInfoRowViewHolder;-><init>(Landroid/view/View;)V

    return-object p2

    .line 290
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/telguarder/features/postCallStatistics/CSViewAdapter;->getAdViewHolder(Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    return-object p1

    .line 289
    :pswitch_2
    new-instance p2, Lcom/telguarder/features/postCallStatistics/CSHistRowViewHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0b003c

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/telguarder/features/postCallStatistics/CSHistRowViewHolder;-><init>(Landroid/view/View;)V

    return-object p2

    .line 288
    :pswitch_3
    new-instance p2, Lcom/telguarder/features/postCallStatistics/CSHistHeaderRowViewHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0b003b

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/telguarder/features/postCallStatistics/CSHistHeaderRowViewHolder;-><init>(Landroid/view/View;)V

    return-object p2

    .line 287
    :pswitch_4
    new-instance p2, Lcom/telguarder/features/postCallStatistics/CSStatRowViewHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0b003d

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/telguarder/features/postCallStatistics/CSStatRowViewHolder;-><init>(Landroid/view/View;)V

    return-object p2

    .line 286
    :pswitch_5
    new-instance p2, Lcom/telguarder/features/postCallStatistics/CSCountRowViewHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0b0039

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/telguarder/features/postCallStatistics/CSCountRowViewHolder;-><init>(Landroid/view/View;)V

    return-object p2

    .line 285
    :pswitch_6
    new-instance p2, Lcom/telguarder/features/postCallStatistics/CSDurRowViewHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0b003a

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/telguarder/features/postCallStatistics/CSDurRowViewHolder;-><init>(Landroid/view/View;)V

    return-object p2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .line 236
    instance-of v0, p1, Lcom/telguarder/features/postCallStatistics/CSRowViewHolder;

    if-eqz v0, :cond_0

    .line 237
    check-cast p1, Lcom/telguarder/features/postCallStatistics/CSRowViewHolder;

    invoke-virtual {p1}, Lcom/telguarder/features/postCallStatistics/CSRowViewHolder;->onAttachToWindow()V

    :cond_0
    return-void
.end method

.method public onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .line 244
    instance-of v0, p1, Lcom/telguarder/features/postCallStatistics/CSRowViewHolder;

    if-eqz v0, :cond_0

    .line 245
    check-cast p1, Lcom/telguarder/features/postCallStatistics/CSRowViewHolder;

    invoke-virtual {p1}, Lcom/telguarder/features/postCallStatistics/CSRowViewHolder;->onDetachFromWindow()V

    :cond_0
    return-void
.end method

.method public remove(Lcom/telguarder/features/postCallStatistics/CSData;)V
    .locals 1

    .line 257
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/CSViewAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 259
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/CSViewAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 260
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/telguarder/features/postCallStatistics/CSViewAdapter;->notifyItemRemoved(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public removeAdBox()V
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/CSViewAdapter;->mCSAdData:Lcom/telguarder/features/postCallStatistics/CSAdData;

    if-eqz v0, :cond_0

    .line 157
    invoke-virtual {p0, v0}, Lcom/telguarder/features/postCallStatistics/CSViewAdapter;->remove(Lcom/telguarder/features/postCallStatistics/CSData;)V

    const/4 v0, 0x0

    .line 158
    iput-object v0, p0, Lcom/telguarder/features/postCallStatistics/CSViewAdapter;->mCSAdData:Lcom/telguarder/features/postCallStatistics/CSAdData;

    :cond_0
    return-void
.end method

.method public setAdHolderCallbackInterface(Lcom/telguarder/features/postCallStatistics/CSAdRowViewHolder$AdHolderCallbackInterface;)V
    .locals 0

    .line 320
    iput-object p1, p0, Lcom/telguarder/features/postCallStatistics/CSViewAdapter;->mAdHolderCallbackInterface:Lcom/telguarder/features/postCallStatistics/CSAdRowViewHolder$AdHolderCallbackInterface;

    .line 321
    invoke-virtual {p0}, Lcom/telguarder/features/postCallStatistics/CSViewAdapter;->notifyAdBox()V

    return-void
.end method

.method public setAdInfoHolderCallbackInterface(Lcom/telguarder/features/postCallStatistics/CSAdInfoRowViewHolder$AdInfoHolderCallbackInterface;)V
    .locals 0

    .line 326
    iput-object p1, p0, Lcom/telguarder/features/postCallStatistics/CSViewAdapter;->mAdInfoHolderCallbackInterface:Lcom/telguarder/features/postCallStatistics/CSAdInfoRowViewHolder$AdInfoHolderCallbackInterface;

    .line 327
    invoke-virtual {p0}, Lcom/telguarder/features/postCallStatistics/CSViewAdapter;->notifyAdInfoBox()V

    return-void
.end method
