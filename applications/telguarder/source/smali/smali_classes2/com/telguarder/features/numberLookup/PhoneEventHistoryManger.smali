.class public Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger;
.super Ljava/lang/Object;
.source "PhoneEventHistoryManger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger$EventHistoryModule;
    }
.end annotation


# static fields
.field private static mHistoryListCahceSaveInProgress:Z = false

.field private static mInstance:Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger;


# instance fields
.field public volatile historyLastCallTimestamp:J

.field public volatile lastCallType:I

.field public volatile lastNumber:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 21
    sget-boolean v0, Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger;->mHistoryListCahceSaveInProgress:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .locals 0

    .line 21
    sput-boolean p0, Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger;->mHistoryListCahceSaveInProgress:Z

    return p0
.end method

.method static synthetic access$100(Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger;Landroid/content/Context;)Lio/realm/Realm;
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger;->getRealm(Landroid/content/Context;)Lio/realm/Realm;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized getInstance()Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger;
    .locals 2

    const-class v0, Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger;

    monitor-enter v0

    .line 35
    :try_start_0
    sget-object v1, Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger;->mInstance:Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger;

    if-nez v1, :cond_0

    .line 36
    new-instance v1, Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger;

    invoke-direct {v1}, Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger;-><init>()V

    sput-object v1, Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger;->mInstance:Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger;

    .line 38
    :cond_0
    sget-object v1, Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger;->mInstance:Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getRealm(Landroid/content/Context;)Lio/realm/Realm;
    .locals 5

    const-string v0, "history.realm"

    const/4 v1, 0x0

    .line 47
    :try_start_0
    new-instance v2, Lio/realm/RealmConfiguration$Builder;

    invoke-direct {v2}, Lio/realm/RealmConfiguration$Builder;-><init>()V

    invoke-virtual {v2, v0}, Lio/realm/RealmConfiguration$Builder;->name(Ljava/lang/String;)Lio/realm/RealmConfiguration$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/RealmConfiguration$Builder;->deleteRealmIfMigrationNeeded()Lio/realm/RealmConfiguration$Builder;

    move-result-object v2

    new-instance v3, Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger$EventHistoryModule;

    invoke-direct {v3, p0}, Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger$EventHistoryModule;-><init>(Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger;)V

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lio/realm/RealmConfiguration$Builder;->modules(Ljava/lang/Object;[Ljava/lang/Object;)Lio/realm/RealmConfiguration$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/RealmConfiguration$Builder;->build()Lio/realm/RealmConfiguration;

    move-result-object v2

    invoke-static {v2}, Lio/realm/Realm;->getInstance(Lio/realm/RealmConfiguration;)Lio/realm/Realm;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 50
    :catch_0
    :try_start_1
    invoke-static {p1}, Lio/realm/Realm;->init(Landroid/content/Context;)V

    .line 51
    new-instance p1, Lio/realm/RealmConfiguration$Builder;

    invoke-direct {p1}, Lio/realm/RealmConfiguration$Builder;-><init>()V

    invoke-virtual {p1, v0}, Lio/realm/RealmConfiguration$Builder;->name(Ljava/lang/String;)Lio/realm/RealmConfiguration$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/RealmConfiguration$Builder;->deleteRealmIfMigrationNeeded()Lio/realm/RealmConfiguration$Builder;

    move-result-object p1

    new-instance v0, Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger$EventHistoryModule;

    invoke-direct {v0, p0}, Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger$EventHistoryModule;-><init>(Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger;)V

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lio/realm/RealmConfiguration$Builder;->modules(Ljava/lang/Object;[Ljava/lang/Object;)Lio/realm/RealmConfiguration$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/RealmConfiguration$Builder;->build()Lio/realm/RealmConfiguration;

    move-result-object p1

    invoke-static {p1}, Lio/realm/Realm;->getInstance(Lio/realm/RealmConfiguration;)Lio/realm/Realm;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method


# virtual methods
.method public addCallHistoryListItem(Landroid/content/Context;Ljava/lang/String;IJ)V
    .locals 9

    const/4 v0, 0x0

    .line 165
    iput-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger;->lastNumber:Ljava/lang/String;

    .line 166
    new-instance v0, Ljava/lang/Thread;

    new-instance v8, Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger$2;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p4

    move v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger$2;-><init>(Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger;Landroid/content/Context;Ljava/lang/String;JI)V

    invoke-direct {v0, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 190
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public getCachedHistoryList(Landroid/content/Context;Z)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/ArrayList<",
            "Lcom/telguarder/features/numberLookup/PhoneEvent;",
            ">;"
        }
    .end annotation

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 63
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger;->getRealm(Landroid/content/Context;)Lio/realm/Realm;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    if-eqz v1, :cond_0

    .line 75
    invoke-virtual {v1}, Lio/realm/Realm;->close()V

    :cond_0
    return-object v0

    :cond_1
    const-string p1, "dateTimeInMillis"

    if-eqz p2, :cond_2

    .line 67
    :try_start_1
    const-class p2, Lcom/telguarder/features/numberLookup/CachedHistoryListItem;

    invoke-virtual {v1, p2}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object p2

    const-string v2, "spamType"

    invoke-virtual {p2, v2}, Lio/realm/RealmQuery;->isNotNull(Ljava/lang/String;)Lio/realm/RealmQuery;

    move-result-object p2

    sget-object v2, Lio/realm/Sort;->DESCENDING:Lio/realm/Sort;

    invoke-virtual {p2, p1, v2}, Lio/realm/RealmQuery;->sort(Ljava/lang/String;Lio/realm/Sort;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/RealmQuery;->findAll()Lio/realm/RealmResults;

    move-result-object p1

    goto :goto_0

    .line 69
    :cond_2
    const-class p2, Lcom/telguarder/features/numberLookup/CachedHistoryListItem;

    invoke-virtual {v1, p2}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object p2

    sget-object v2, Lio/realm/Sort;->DESCENDING:Lio/realm/Sort;

    invoke-virtual {p2, p1, v2}, Lio/realm/RealmQuery;->sort(Ljava/lang/String;Lio/realm/Sort;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/RealmQuery;->findAll()Lio/realm/RealmResults;

    move-result-object p1

    .line 71
    :goto_0
    invoke-virtual {p1}, Lio/realm/RealmResults;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/telguarder/features/numberLookup/CachedHistoryListItem;

    .line 72
    invoke-static {p2}, Lcom/telguarder/features/numberLookup/PhoneEvent;->phoneEventOfHistoryCacheItem(Lcom/telguarder/features/numberLookup/CachedHistoryListItem;)Lcom/telguarder/features/numberLookup/PhoneEvent;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_3
    if-eqz v1, :cond_4

    .line 75
    invoke-virtual {v1}, Lio/realm/Realm;->close()V

    :cond_4
    return-object v0

    :catchall_0
    move-exception p1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lio/realm/Realm;->close()V

    .line 76
    :cond_5
    throw p1
.end method

.method public getCallCountForNumber(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 5

    const/4 v0, 0x0

    .line 85
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger;->getRealm(Landroid/content/Context;)Lio/realm/Realm;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    if-eqz v1, :cond_0

    .line 101
    invoke-virtual {v1}, Lio/realm/Realm;->close()V

    :cond_0
    return v2

    .line 87
    :cond_1
    :try_start_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 88
    invoke-static {p1, p2, v0}, Lcom/telguarder/helpers/contact/ContactUtils;->getE164NUmberIfPossible(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    invoke-static {p1, p2, v0}, Lcom/telguarder/helpers/contact/ContactUtils;->getNationalNumberIfPossible(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 90
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 93
    const-class v0, Lcom/telguarder/features/numberLookup/CachedHistoryListItem;

    invoke-virtual {v1, v0}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v0

    const-string v3, "calledPhoneNumber"

    invoke-virtual {v0, v3, p2}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/String;)Lio/realm/RealmQuery;

    move-result-object p2

    const-string v0, "type"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v0, v3}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/Integer;)Lio/realm/RealmQuery;

    move-result-object p2

    invoke-virtual {p2}, Lio/realm/RealmQuery;->findAll()Lio/realm/RealmResults;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 94
    invoke-virtual {p2}, Lio/realm/RealmResults;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 95
    invoke-virtual {p2}, Lio/realm/RealmResults;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/telguarder/features/numberLookup/CachedHistoryListItem;

    .line 96
    invoke-virtual {v0}, Lcom/telguarder/features/numberLookup/CachedHistoryListItem;->getCounter()I

    move-result v3

    if-lez v3, :cond_4

    invoke-virtual {v0}, Lcom/telguarder/features/numberLookup/CachedHistoryListItem;->getCounter()I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/2addr v2, v0

    goto :goto_0

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    if-eqz v1, :cond_6

    .line 101
    invoke-virtual {v1}, Lio/realm/Realm;->close()V

    :cond_6
    return v2

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_1

    :catchall_1
    move-exception p1

    :goto_1
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    .line 102
    :cond_7
    throw p1
.end method

.method public saveHistoryListCache(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "*>;)V"
        }
    .end annotation

    .line 108
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger$1;-><init>(Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger;Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 160
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public updateLastCallHistoryListItem(Landroid/content/Context;Lcom/telguarder/features/numberLookup/PhoneEvent;)V
    .locals 2

    .line 195
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger;->lastNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 196
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger$3;-><init>(Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger;Landroid/content/Context;Lcom/telguarder/features/numberLookup/PhoneEvent;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 229
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public updateLastCallHistoryListItem(Landroid/content/Context;Lcom/telguarder/helpers/contact/Contact;)V
    .locals 2

    .line 234
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger;->lastNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    iget-object v0, p2, Lcom/telguarder/helpers/contact/Contact;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 235
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger$4;-><init>(Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger;Landroid/content/Context;Lcom/telguarder/helpers/contact/Contact;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 263
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_1
    :goto_0
    return-void
.end method
