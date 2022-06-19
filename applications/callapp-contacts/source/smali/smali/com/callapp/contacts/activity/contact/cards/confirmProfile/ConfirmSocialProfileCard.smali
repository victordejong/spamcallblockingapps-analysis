.class public Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard;
.super Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerCard;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$SocialFeedEvents;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard$ConfirmSocialProfileObject;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerCard<",
        "Ljava/util/List<",
        "Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard$ConfirmSocialProfileObject;",
        ">;>;",
        "Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$SocialFeedEvents;"
    }
.end annotation


# instance fields
.field private final socialIdToDataMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard$ConfirmSocialProfileObject;",
            ">;"
        }
    .end annotation
.end field

.field private final urlToImageLoadingTaskMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/callapp/contacts/manager/task/Task;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerCard;-><init>(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;)V

    .line 41
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard;->socialIdToDataMap:Landroid/util/SparseArray;

    .line 42
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard;->urlToImageLoadingTaskMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private LoadAndAddPhotoToSocial(ILjava/lang/String;)V
    .locals 2

    .line 242
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/manager/Singletons;->getRemoteAccountHelper(I)Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 244
    invoke-static {p2}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 245
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard;->socialIdToDataMap:Landroid/util/SparseArray;

    monitor-enter v0

    .line 246
    :try_start_0
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard;->socialIdToDataMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard$ConfirmSocialProfileObject;

    if-eqz p1, :cond_0

    .line 249
    invoke-virtual {p1, p2}, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard$ConfirmSocialProfileObject;->setPhotoUrl(Ljava/lang/String;)V

    .line 250
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard;->updateCardData()V

    .line 252
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    return-object p0
.end method

.method static synthetic access$100(Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    return-object p0
.end method

.method static synthetic access$200(Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    return-object p0
.end method

.method static synthetic access$300(Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    return-object p0
.end method

.method static synthetic access$400(Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    return-object p0
.end method

.method static synthetic access$500(Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    return-object p0
.end method

.method static synthetic access$600(Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    return-object p0
.end method

.method static synthetic access$700(Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard;ILjava/lang/String;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard;->LoadAndAddPhotoToSocial(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard;->urlToImageLoadingTaskMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method private getValidToShowItems()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard$ConfirmSocialProfileObject;",
            ">;"
        }
    .end annotation

    .line 258
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 260
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard;->socialIdToDataMap:Landroid/util/SparseArray;

    monitor-enter v1

    .line 261
    :try_start_0
    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard;->socialIdToDataMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    .line 263
    iget-object v4, p0, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard;->socialIdToDataMap:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard$ConfirmSocialProfileObject;

    if-eqz v4, :cond_0

    .line 264
    invoke-virtual {v4}, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard$ConfirmSocialProfileObject;->getPhotoUrl()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 265
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 268
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 269
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    .line 270
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private removeAllDataFromCard()V
    .locals 4

    .line 199
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard;->urlToImageLoadingTaskMap:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v0

    .line 200
    :try_start_0
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard;->urlToImageLoadingTaskMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Map;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 201
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard;->urlToImageLoadingTaskMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callapp/contacts/manager/task/Task;

    if-eqz v2, :cond_0

    .line 202
    invoke-virtual {v2}, Lcom/callapp/contacts/manager/task/Task;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 203
    invoke-virtual {v2}, Lcom/callapp/contacts/manager/task/Task;->cancel()V

    goto :goto_0

    .line 207
    :cond_1
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard;->urlToImageLoadingTaskMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 209
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 211
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard;->socialIdToDataMap:Landroid/util/SparseArray;

    monitor-enter v1

    .line 212
    :try_start_1
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard;->socialIdToDataMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 213
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    .line 209
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method private removeLoadingTask(Ljava/lang/String;)V
    .locals 2

    .line 217
    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 218
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard;->urlToImageLoadingTaskMap:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v0

    .line 219
    :try_start_0
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard;->urlToImageLoadingTaskMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/manager/task/Task;

    if-eqz v1, :cond_0

    .line 221
    invoke-virtual {v1}, Lcom/callapp/contacts/manager/task/Task;->cancel()V

    .line 222
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard;->urlToImageLoadingTaskMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    return-void
.end method

.method private removeSourcesThatAreNoLongerUnsure(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/model/contact/DataSource;",
            ">;)V"
        }
    .end annotation

    .line 279
    invoke-static {p1}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 281
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard;->removeAllDataFromCard()V

    goto :goto_4

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard;->socialIdToDataMap:Landroid/util/SparseArray;

    monitor-enter v0

    .line 286
    :try_start_0
    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard;->socialIdToDataMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    sub-int/2addr v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ltz v2, :cond_4

    const/4 v5, 0x0

    .line 289
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 290
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/callapp/contacts/model/contact/DataSource;

    .line 292
    iget-object v7, p0, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard;->socialIdToDataMap:Landroid/util/SparseArray;

    invoke-virtual {v7, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard$ConfirmSocialProfileObject;

    if-eqz v7, :cond_1

    .line 293
    invoke-static {v7}, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard$ConfirmSocialProfileObject;->a(Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard$ConfirmSocialProfileObject;)Lcom/callapp/contacts/model/contact/DataSource;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/callapp/contacts/model/contact/DataSource;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    const/4 v5, -0x1

    :goto_2
    if-ltz v5, :cond_3

    .line 301
    invoke-interface {p1, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_3

    .line 304
    :cond_3
    iget-object v4, p0, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard;->socialIdToDataMap:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard$ConfirmSocialProfileObject;

    invoke-virtual {v4}, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard$ConfirmSocialProfileObject;->getPhotoUrl()Ljava/lang/String;

    move-result-object v4

    .line 305
    iget-object v5, p0, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard;->socialIdToDataMap:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->removeAt(I)V

    .line 306
    invoke-direct {p0, v4}, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard;->removeLoadingTask(Ljava/lang/String;)V

    const/4 v4, 0x1

    :goto_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 310
    :cond_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, v4

    :goto_4
    if-eqz v1, :cond_5

    .line 314
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard;->updateCardData()V

    :cond_5
    return-void

    :catchall_0
    move-exception p1

    .line 310
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private updateCardData()V
    .locals 3

    .line 229
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard;->socialIdToDataMap:Landroid/util/SparseArray;

    monitor-enter v0

    .line 230
    :try_start_0
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard;->getValidToShowItems()Ljava/util/ArrayList;

    move-result-object v1

    .line 232
    invoke-static {v1}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    .line 233
    invoke-virtual {p0, v1, v2}, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard;->updateCardData(Ljava/util/List;Z)V

    const/4 v1, 0x1

    .line 234
    invoke-virtual {p0, v1}, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard;->showCard(Z)V

    goto :goto_0

    .line 236
    :cond_0
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard;->hideCard()V

    .line 238
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public getCardInitHeight()I
    .locals 2

    .line 50
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700e4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method public getHeaderTitle()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getListenFields()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;"
        }
    .end annotation

    .line 65
    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->fullName:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method

.method public getNewPageAdapter()Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerAdapter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerAdapter<",
            "Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard$ConfirmSocialProfileObject;",
            ">;"
        }
    .end annotation

    .line 320
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getRealContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    .line 321
    new-instance v1, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerAdapter;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-class v2, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSingleProfileFragment;

    invoke-direct {v1, v0, v2}, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;Ljava/lang/Class;)V

    return-object v1
.end method

.method public getPriority()I
    .locals 1

    const/16 v0, 0xc8

    return v0
.end method

.method public isCardLockedWhenScreenIsLocked()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onContactChanged(Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/model/contact/ContactData;",
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;)V"
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {v0, p1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->a(Lcom/callapp/contacts/model/contact/ContactData;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->isVoiceMail()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_2

    .line 85
    :cond_0
    sget-object p1, Lcom/callapp/contacts/model/contact/ContactField;->fullName:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 88
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard;->socialIdToDataMap:Landroid/util/SparseArray;

    monitor-enter p1

    const/4 p2, 0x0

    const/4 v0, 0x0

    .line 91
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard;->socialIdToDataMap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge p2, v1, :cond_3

    .line 92
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard;->socialIdToDataMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard$ConfirmSocialProfileObject;

    .line 94
    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {v2}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callapp/contacts/model/contact/ContactData;->getNameOrNumber()Ljava/lang/String;

    move-result-object v2

    .line 95
    invoke-static {v2}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 96
    invoke-virtual {v1}, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard$ConfirmSocialProfileObject;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 97
    invoke-virtual {v1, v2}, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard$ConfirmSocialProfileObject;->setName(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_1

    .line 101
    :cond_1
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard;->hideCard()V

    :cond_2
    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_4

    .line 106
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard;->updateCardData()V

    .line 108
    :cond_4
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    :cond_5
    return-void

    .line 81
    :cond_6
    :goto_2
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard;->hideCard()V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 326
    invoke-super {p0}, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerCard;->onDestroy()V

    .line 329
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard;->removeAllDataFromCard()V

    return-void
.end method

.method public onUnsureSocialsChanged(Ljava/util/List;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/model/contact/DataSource;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v11, p0

    .line 114
    invoke-static/range {p1 .. p1}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 115
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lcom/callapp/contacts/model/contact/DataSource;

    .line 116
    iget v13, v12, Lcom/callapp/contacts/model/contact/DataSource;->dbCode:I

    .line 118
    iget-object v1, v11, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {v1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v13, v2}, Lcom/callapp/contacts/model/contact/ContactDataUtils;->getContactPhotoUrlOnSocial(Lcom/callapp/contacts/model/contact/ContactData;IZ)Ljava/lang/String;

    move-result-object v14

    .line 121
    iget-object v1, v11, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard;->socialIdToDataMap:Landroid/util/SparseArray;

    iget v2, v12, Lcom/callapp/contacts/model/contact/DataSource;->dbCode:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard$ConfirmSocialProfileObject;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    .line 122
    :cond_1
    invoke-virtual {v1}, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard$ConfirmSocialProfileObject;->getPhotoUrl()Ljava/lang/String;

    move-result-object v1

    .line 123
    :goto_1
    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 125
    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 130
    invoke-direct {v11, v1}, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard;->removeLoadingTask(Ljava/lang/String;)V

    .line 134
    :cond_2
    invoke-static {v14}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 139
    invoke-static {v13}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->getSocialBadgeBgColor(I)I

    move-result v9

    .line 140
    iget-object v1, v11, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {v1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/model/contact/ContactData;->getNameOrNumber()Ljava/lang/String;

    move-result-object v3

    .line 142
    new-instance v15, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard$ConfirmSocialProfileObject;

    const/4 v6, 0x0

    iget-object v1, v11, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {v1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getDefaultContactDrawableTintColor()Ljava/lang/Integer;

    move-result-object v7

    new-instance v10, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard$1;

    invoke-direct {v10, v11}, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard$1;-><init>(Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard;)V

    move-object v1, v15

    move-object/from16 v2, p0

    move-object v4, v12

    move-object v5, v14

    move v8, v13

    invoke-direct/range {v1 .. v10}, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard$ConfirmSocialProfileObject;-><init>(Lit/gmariotti/cardslib/library/a/b;Ljava/lang/String;Lcom/callapp/contacts/model/contact/DataSource;Ljava/lang/String;ILjava/lang/Integer;IILcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSingleProfileFragment$ConfirmOrDismissClicked;)V

    .line 171
    iget-object v1, v11, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard;->socialIdToDataMap:Landroid/util/SparseArray;

    monitor-enter v1

    .line 172
    :try_start_0
    iget-object v2, v11, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard;->socialIdToDataMap:Landroid/util/SparseArray;

    iget v3, v12, Lcom/callapp/contacts/model/contact/DataSource;->dbCode:I

    invoke-virtual {v2, v3, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 173
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 176
    new-instance v1, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard$2;

    invoke-direct {v1, v11, v13, v14}, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard$2;-><init>(Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard;ILjava/lang/String;)V

    .line 188
    iget-object v2, v11, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard;->urlToImageLoadingTaskMap:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v2

    .line 189
    :try_start_1
    iget-object v3, v11, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard;->urlToImageLoadingTaskMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v14, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 191
    invoke-virtual {v1}, Lcom/callapp/contacts/manager/task/Task;->execute()Lcom/callapp/contacts/manager/task/Task;

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    .line 190
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    .line 173
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 195
    :cond_3
    invoke-direct/range {p0 .. p1}, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard;->removeSourcesThatAreNoLongerUnsure(Ljava/util/List;)V

    return-void
.end method

.method public showShouldExpandButton()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
