.class public Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard;
.super Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$SocialImage;,
        Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$SocialImagesCardAdapter;,
        Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$ViewHolder;,
        Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$SocialImagesCardViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard<",
        "Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$ViewHolder;",
        "Ljava/util/ArrayList<",
        "Ljava/util/Map$Entry<",
        "Lcom/callapp/contacts/model/UploadedPhoto;",
        "Lcom/callapp/contacts/model/contact/DataSource;",
        ">;>;>;"
    }
.end annotation


# static fields
.field private static final MAX_PHOTOS_PER_NETWORK:I = 0x8


# instance fields
.field private adapter:Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$SocialImagesCardAdapter;

.field private final photoUrlsByNetId:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$SocialImage;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final photosLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/activity/contact/cards/MultiCardContainer;)V
    .locals 1

    const v0, 0x7f0d008a

    .line 147
    invoke-direct {p0, p1, v0}, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;-><init>(Lcom/callapp/contacts/activity/contact/cards/MultiCardContainer;I)V

    .line 45
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard;->photosLock:Ljava/lang/Object;

    .line 46
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard;->photoUrlsByNetId:Ljava/util/HashMap;

    return-void
.end method

.method private AddPhoto(Ljava/lang/String;I)V
    .locals 3

    .line 126
    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 127
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard;->photosLock:Ljava/lang/Object;

    monitor-enter v0

    .line 128
    :try_start_0
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard;->photoUrlsByNetId:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 129
    invoke-static {v1}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 130
    monitor-exit v0

    return-void

    .line 132
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    new-instance v0, Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$3;-><init>(Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard;Ljava/lang/String;I)V

    .line 142
    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$3;->execute()Lcom/callapp/contacts/manager/task/Task;

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 132
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic access$100(Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard;)Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$SocialImagesCardAdapter;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard;->adapter:Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$SocialImagesCardAdapter;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    return-object p0
.end method

.method static synthetic access$300(Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard;Ljava/lang/String;I)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard;->addPhoto(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$400(Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard;Z)V
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard;->showCard(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    return-object p0
.end method

.method static synthetic access$700(Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    return-object p0
.end method

.method static synthetic access$800(Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    return-object p0
.end method

.method static synthetic access$900(Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    return-object p0
.end method

.method private addPhoto(Ljava/lang/String;I)V
    .locals 7

    .line 161
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard;->photosLock:Ljava/lang/Object;

    monitor-enter v0

    .line 162
    :try_start_0
    new-instance v1, Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$SocialImage;

    invoke-direct {v1, p1, p2}, Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$SocialImage;-><init>(Ljava/lang/String;I)V

    .line 163
    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard;->photoUrlsByNetId:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    if-nez v2, :cond_0

    .line 165
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 166
    iget-object v3, p0, Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard;->photoUrlsByNetId:Ljava/util/HashMap;

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    :cond_0
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 170
    monitor-exit v0

    return-void

    .line 173
    :cond_1
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard;->adapter:Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$SocialImagesCardAdapter;

    if-eqz v1, :cond_3

    .line 1256
    iget-object v2, v1, Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$SocialImagesCardAdapter;->a:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1257
    :try_start_1
    iget-object v3, v1, Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$SocialImagesCardAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-gez v3, :cond_2

    const/4 v3, 0x0

    .line 1261
    :cond_2
    iget-object v4, v1, Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$SocialImagesCardAdapter;->b:Ljava/util/ArrayList;

    new-instance v5, Landroidx/core/e/b;

    new-instance v6, Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$SocialImage;

    invoke-direct {v6, p1, p2}, Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$SocialImage;-><init>(Ljava/lang/String;I)V

    invoke-direct {v5, p1, v6}, Landroidx/core/e/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4, v3, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1262
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1264
    :try_start_2
    iget-object p1, v1, Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$SocialImagesCardAdapter;->c:Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard;->access$600(Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    move-result-object p1

    new-instance p2, Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$SocialImagesCardAdapter$1;

    invoke-direct {p2, v1}, Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$SocialImagesCardAdapter$1;-><init>(Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$SocialImagesCardAdapter;)V

    invoke-interface {p1, p2}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->safeRunOnUIThread(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 1262
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1

    .line 178
    :cond_3
    :goto_0
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method

.method private clearAllData()V
    .locals 2

    .line 110
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard;->photosLock:Ljava/lang/Object;

    monitor-enter v0

    .line 111
    :try_start_0
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard;->photoUrlsByNetId:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 112
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard;->adapter:Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$SocialImagesCardAdapter;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$SocialImagesCardAdapter;->a(Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$SocialImagesCardAdapter;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    new-instance v1, Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$2;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$2;-><init>(Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard;)V

    invoke-interface {v0, v1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->safeRunOnUIThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    .line 112
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public getHeaderTitle()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getListenFields()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;"
        }
    .end annotation

    .line 56
    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->uploadedPhotosUrl:Lcom/callapp/contacts/model/contact/ContactField;

    sget-object v1, Lcom/callapp/contacts/model/contact/ContactField;->negatives:Lcom/callapp/contacts/model/contact/ContactField;

    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->newContact:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-static {v0, v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    const/16 v0, 0x5a

    return v0
.end method

.method protected onBindViewHolder(Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$ViewHolder;)V
    .locals 7

    .line 208
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 210
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard;->photosLock:Ljava/lang/Object;

    monitor-enter v1

    .line 211
    :try_start_0
    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard;->photoUrlsByNetId:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 212
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$SocialImage;

    .line 213
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 214
    invoke-static {v3}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 215
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 216
    new-instance v6, Landroidx/core/e/b;

    invoke-direct {v6, v5, v4}, Landroidx/core/e/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 220
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 221
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard;->adapter:Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$SocialImagesCardAdapter;

    if-nez v1, :cond_2

    .line 222
    new-instance v1, Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$SocialImagesCardAdapter;

    invoke-direct {v1, p0, v0}, Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$SocialImagesCardAdapter;-><init>(Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard;Ljava/util/ArrayList;)V

    iput-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard;->adapter:Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$SocialImagesCardAdapter;

    goto :goto_1

    .line 224
    :cond_2
    invoke-virtual {v1, v0}, Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$SocialImagesCardAdapter;->setItemsData(Ljava/util/ArrayList;)V

    .line 226
    :goto_1
    iget-object p1, p1, Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$ViewHolder;->a:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard;->adapter:Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$SocialImagesCardAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$a;)V

    return-void

    :catchall_0
    move-exception p1

    .line 220
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public bridge synthetic onBindViewHolder(Ljava/lang/Object;)V
    .locals 0

    .line 43
    check-cast p1, Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$ViewHolder;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard;->onBindViewHolder(Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$ViewHolder;)V

    return-void
.end method

.method public onContactChanged(Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/model/contact/ContactData;",
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;)V"
        }
    .end annotation

    .line 98
    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->newContact:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->negatives:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 99
    :cond_0
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard;->clearAllData()V

    .line 102
    :cond_1
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {p2, p1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->a(Lcom/callapp/contacts/model/contact/ContactData;)Z

    move-result p2

    if-nez p2, :cond_3

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->isVoiceMail()Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_0

    .line 105
    :cond_2
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getUploadedPhotosUrl()Ljava/util/ArrayList;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard;->updateCardData(Ljava/util/ArrayList;Z)V

    return-void

    .line 103
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard;->hideCard()V

    return-void
.end method

.method protected onCreateViewHolder(Landroid/view/ViewGroup;)Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$ViewHolder;
    .locals 2

    .line 203
    new-instance v0, Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$ViewHolder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$ViewHolder;-><init>(Landroid/view/View;Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$1;)V

    return-object v0
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;)Ljava/lang/Object;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard;->onCreateViewHolder(Landroid/view/ViewGroup;)Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onThemeChangedInner()V
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard;->adapter:Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$SocialImagesCardAdapter;

    if-eqz v0, :cond_0

    .line 184
    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$SocialImagesCardAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public showShouldExpandButton()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic updateCardData(Ljava/lang/Object;Z)V
    .locals 0

    .line 43
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1, p2}, Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard;->updateCardData(Ljava/util/ArrayList;Z)V

    return-void
.end method

.method protected updateCardData(Ljava/util/ArrayList;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/util/Map$Entry<",
            "Lcom/callapp/contacts/model/UploadedPhoto;",
            "Lcom/callapp/contacts/model/contact/DataSource;",
            ">;>;Z)V"
        }
    .end annotation

    .line 62
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 64
    invoke-static {p1}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 68
    new-instance p1, Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$1;

    invoke-direct {p1, p0}, Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$1;-><init>(Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard;)V

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 74
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 75
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-nez v3, :cond_1

    .line 77
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 79
    :cond_1
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_0

    .line 84
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 85
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/callapp/contacts/model/UploadedPhoto;

    invoke-virtual {v3}, Lcom/callapp/contacts/model/UploadedPhoto;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/model/contact/DataSource;

    iget v0, v0, Lcom/callapp/contacts/model/contact/DataSource;->dbCode:I

    invoke-direct {p0, v3, v0}, Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard;->AddPhoto(Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :cond_3
    if-nez v1, :cond_4

    .line 92
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard;->hideCard()V

    :cond_4
    return-void
.end method
