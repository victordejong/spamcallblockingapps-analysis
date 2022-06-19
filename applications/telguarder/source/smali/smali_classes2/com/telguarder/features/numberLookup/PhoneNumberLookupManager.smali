.class public Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager;
.super Ljava/lang/Object;
.source "PhoneNumberLookupManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$PhoneNumberLookupCallbackListener;,
        Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$CallType;
    }
.end annotation


# static fields
.field private static mInstance:Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager;


# instance fields
.field private mLastIncomingNumberLookupSuccess:Z

.field private mLastIncomingNumberLookupWasContact:Z

.field private mLastSuccessfullyLookedupIncomingNumber:Ljava/lang/String;

.field private mLastSuccessfullyLookedupIncomingNumberWasSpam:Z

.field private mLookupBackendRequestSuccess:Z

.field private mNetworkCallBack:Landroid/net/ConnectivityManager$NetworkCallback;

.field private mNetworkCallBackForBckApiCall:Landroid/net/ConnectivityManager$NetworkCallback;

.field private mNumberLookupBackendCallbackListener:Lcom/telguarder/helpers/backend/BackendCallbackListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/telguarder/helpers/backend/BackendCallbackListener<",
            "Lcom/telguarder/features/numberLookup/NumberLookupResponse;",
            ">;"
        }
    .end annotation
.end field

.field private mNumberLookupCallbackListener:Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$PhoneNumberLookupCallbackListener;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager;->mLastIncomingNumberLookupSuccess:Z

    .line 29
    iput-boolean v0, p0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager;->mLastIncomingNumberLookupWasContact:Z

    .line 31
    iput-boolean v0, p0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager;->mLastSuccessfullyLookedupIncomingNumberWasSpam:Z

    .line 32
    iput-boolean v0, p0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager;->mLookupBackendRequestSuccess:Z

    return-void
.end method

.method static synthetic access$000(Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager;Landroid/content/Context;Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$CallType;ZLcom/telguarder/features/numberLookup/PhoneNumberLookupResult;Ljava/lang/Runnable;)V
    .locals 0

    .line 23
    invoke-direct/range {p0 .. p5}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager;->lookupPhoneNumberOnBackend(Landroid/content/Context;Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$CallType;ZLcom/telguarder/features/numberLookup/PhoneNumberLookupResult;Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$100(Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager;)Z
    .locals 0

    .line 23
    iget-boolean p0, p0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager;->mLookupBackendRequestSuccess:Z

    return p0
.end method

.method static synthetic access$102(Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager;Z)Z
    .locals 0

    .line 23
    iput-boolean p1, p0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager;->mLookupBackendRequestSuccess:Z

    return p1
.end method

.method static synthetic access$200(Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager;)Landroid/net/ConnectivityManager$NetworkCallback;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager;->mNetworkCallBack:Landroid/net/ConnectivityManager$NetworkCallback;

    return-object p0
.end method

.method static synthetic access$300(Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager;)Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$PhoneNumberLookupCallbackListener;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager;->mNumberLookupCallbackListener:Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$PhoneNumberLookupCallbackListener;

    return-object p0
.end method

.method static synthetic access$400(Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager;Landroid/content/Context;Lcom/telguarder/features/numberLookup/NumberLookup;Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$CallType;Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager;->handlePhoneNumberSearchResponse(Landroid/content/Context;Lcom/telguarder/features/numberLookup/NumberLookup;Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$CallType;Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;)V

    return-void
.end method

.method static synthetic access$500(Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager;)Lcom/telguarder/helpers/backend/BackendCallbackListener;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager;->mNumberLookupBackendCallbackListener:Lcom/telguarder/helpers/backend/BackendCallbackListener;

    return-object p0
.end method

.method static synthetic access$600(Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager;)Landroid/net/ConnectivityManager$NetworkCallback;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager;->mNetworkCallBackForBckApiCall:Landroid/net/ConnectivityManager$NetworkCallback;

    return-object p0
.end method

.method private areSamePhoneCalls(Lcom/telguarder/features/numberLookup/PhoneEvent;Lcom/telguarder/features/numberLookup/PhoneEvent;)Z
    .locals 0

    if-nez p1, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 315
    invoke-virtual {p1, p2}, Lcom/telguarder/features/numberLookup/PhoneEvent;->sameAs(Lcom/telguarder/features/numberLookup/PhoneEvent;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private getContactLookupData(Landroid/content/Context;Ljava/lang/String;Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;Ljava/lang/Runnable;)V
    .locals 8

    .line 89
    new-instance v0, Ljava/lang/Thread;

    new-instance v7, Lcom/telguarder/features/numberLookup/-$$Lambda$PhoneNumberLookupManager$xnjHjl720vNjdMD4krUA0x1Fzbw;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p3

    move-object v4, p1

    move-object v5, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/telguarder/features/numberLookup/-$$Lambda$PhoneNumberLookupManager$xnjHjl720vNjdMD4krUA0x1Fzbw;-><init>(Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager;Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;Landroid/content/Context;Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-direct {v0, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 93
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager;
    .locals 2

    const-class v0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager;

    monitor-enter v0

    .line 39
    :try_start_0
    sget-object v1, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager;->mInstance:Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager;

    if-nez v1, :cond_0

    .line 40
    new-instance v1, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager;

    invoke-direct {v1}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager;-><init>()V

    sput-object v1, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager;->mInstance:Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager;

    .line 42
    :cond_0
    sget-object v1, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager;->mInstance:Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getLookupResultFromCache(Landroid/content/Context;Ljava/lang/String;)Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;
    .locals 3

    .line 98
    new-instance v0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;

    invoke-direct {v0}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;-><init>()V

    .line 99
    iput-object p2, v0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->phoneNumber:Ljava/lang/String;

    const/4 v1, 0x0

    .line 101
    :try_start_0
    invoke-static {p1}, Lcom/telguarder/features/numberLookup/PhoneCallManager;->getInstance(Landroid/content/Context;)Lcom/telguarder/features/numberLookup/PhoneCallManager;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/telguarder/features/numberLookup/PhoneCallManager;->getPersonPhoneCallByPhoneNumber(Landroid/content/Context;Ljava/lang/String;)Lcom/telguarder/features/numberLookup/PhoneEvent;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->setPersonCall(Lcom/telguarder/features/numberLookup/PhoneEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 103
    :catch_0
    invoke-virtual {v0, v1}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->setPersonCall(Lcom/telguarder/features/numberLookup/PhoneEvent;)V

    .line 106
    :goto_0
    :try_start_1
    invoke-static {p1}, Lcom/telguarder/features/numberLookup/PhoneCallManager;->getInstance(Landroid/content/Context;)Lcom/telguarder/features/numberLookup/PhoneCallManager;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/telguarder/features/numberLookup/PhoneCallManager;->getCompanyPhoneCallByPhoneNumber(Landroid/content/Context;Ljava/lang/String;)Lcom/telguarder/features/numberLookup/PhoneEvent;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->setCompanyCall(Lcom/telguarder/features/numberLookup/PhoneEvent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 108
    :catch_1
    invoke-virtual {v0, v1}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->setCompanyCall(Lcom/telguarder/features/numberLookup/PhoneEvent;)V

    .line 110
    :goto_1
    invoke-virtual {v0}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->getPersonCall()Lcom/telguarder/features/numberLookup/PhoneEvent;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->getCompanyCall()Lcom/telguarder/features/numberLookup/PhoneEvent;

    move-result-object v1

    if-nez v1, :cond_0

    .line 111
    invoke-static {}, Lcom/telguarder/features/numberLookup/OfflineSpamDbHelper;->getInstance()Lcom/telguarder/features/numberLookup/OfflineSpamDbHelper;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/telguarder/features/numberLookup/OfflineSpamDbHelper;->getSpam(Landroid/content/Context;Ljava/lang/String;)Lcom/telguarder/features/numberLookup/PhoneEvent;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->setCompanyCall(Lcom/telguarder/features/numberLookup/PhoneEvent;)V

    .line 112
    invoke-virtual {v0}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->getCompanyCall()Lcom/telguarder/features/numberLookup/PhoneEvent;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 113
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendLookupIdentificationOfflineSpam()V

    .line 114
    invoke-virtual {v0}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->getPersonCall()Lcom/telguarder/features/numberLookup/PhoneEvent;

    move-result-object p1

    invoke-virtual {v0}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->getCompanyCall()Lcom/telguarder/features/numberLookup/PhoneEvent;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager;->spamAnalytics(Lcom/telguarder/features/numberLookup/PhoneEvent;Lcom/telguarder/features/numberLookup/PhoneEvent;)V

    :cond_0
    return-object v0
.end method

.method private handlePhoneNumberSearchResponse(Landroid/content/Context;Lcom/telguarder/features/numberLookup/NumberLookup;Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$CallType;Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;)V
    .locals 6

    .line 251
    iget-object v0, p2, Lcom/telguarder/features/numberLookup/NumberLookup;->result:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/telguarder/features/numberLookup/SearchResult;

    .line 252
    invoke-virtual {v3}, Lcom/telguarder/features/numberLookup/SearchResult;->getActorType()Lcom/telguarder/features/numberLookup/ActorType;

    move-result-object v4

    sget-object v5, Lcom/telguarder/features/numberLookup/ActorType;->PERSON:Lcom/telguarder/features/numberLookup/ActorType;

    if-ne v4, v5, :cond_1

    if-nez v1, :cond_1

    .line 253
    iget-object v1, p4, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->phoneNumber:Ljava/lang/String;

    iget-object v4, p2, Lcom/telguarder/features/numberLookup/NumberLookup;->spam:Lcom/telguarder/features/numberLookup/Spam;

    iget-object v5, p2, Lcom/telguarder/features/numberLookup/NumberLookup;->securityLevel:Ljava/lang/String;

    invoke-static {p1, v3, v1, v4, v5}, Lcom/telguarder/features/numberLookup/PhoneEvent;->phoneCallOfSearchResult(Landroid/content/Context;Lcom/telguarder/features/numberLookup/SearchResult;Ljava/lang/String;Lcom/telguarder/features/numberLookup/Spam;Ljava/lang/String;)Lcom/telguarder/features/numberLookup/PhoneEvent;

    move-result-object v1

    .line 254
    invoke-static {p1}, Lcom/telguarder/features/numberLookup/PhoneCallManager;->getInstance(Landroid/content/Context;)Lcom/telguarder/features/numberLookup/PhoneCallManager;

    move-result-object v3

    invoke-virtual {p4}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->getPersonCall()Lcom/telguarder/features/numberLookup/PhoneEvent;

    move-result-object v4

    invoke-virtual {v3, p1, v4, v1}, Lcom/telguarder/features/numberLookup/PhoneCallManager;->saverOrUpdatePhoneCall(Landroid/content/Context;Lcom/telguarder/features/numberLookup/PhoneEvent;Lcom/telguarder/features/numberLookup/PhoneEvent;)I

    goto :goto_0

    .line 255
    :cond_1
    invoke-virtual {v3}, Lcom/telguarder/features/numberLookup/SearchResult;->getActorType()Lcom/telguarder/features/numberLookup/ActorType;

    move-result-object v4

    sget-object v5, Lcom/telguarder/features/numberLookup/ActorType;->COMPANY:Lcom/telguarder/features/numberLookup/ActorType;

    if-ne v4, v5, :cond_2

    if-nez v2, :cond_2

    .line 256
    iget-object v2, p4, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->phoneNumber:Ljava/lang/String;

    iget-object v4, p2, Lcom/telguarder/features/numberLookup/NumberLookup;->spam:Lcom/telguarder/features/numberLookup/Spam;

    iget-object v5, p2, Lcom/telguarder/features/numberLookup/NumberLookup;->securityLevel:Ljava/lang/String;

    invoke-static {p1, v3, v2, v4, v5}, Lcom/telguarder/features/numberLookup/PhoneEvent;->phoneCallOfSearchResult(Landroid/content/Context;Lcom/telguarder/features/numberLookup/SearchResult;Ljava/lang/String;Lcom/telguarder/features/numberLookup/Spam;Ljava/lang/String;)Lcom/telguarder/features/numberLookup/PhoneEvent;

    move-result-object v2

    .line 257
    invoke-static {p1}, Lcom/telguarder/features/numberLookup/PhoneCallManager;->getInstance(Landroid/content/Context;)Lcom/telguarder/features/numberLookup/PhoneCallManager;

    move-result-object v3

    invoke-virtual {p4}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->getCompanyCall()Lcom/telguarder/features/numberLookup/PhoneEvent;

    move-result-object v4

    invoke-virtual {v3, p1, v4, v2}, Lcom/telguarder/features/numberLookup/PhoneCallManager;->saverOrUpdatePhoneCall(Landroid/content/Context;Lcom/telguarder/features/numberLookup/PhoneEvent;Lcom/telguarder/features/numberLookup/PhoneEvent;)I

    :cond_2
    :goto_0
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    :cond_3
    if-nez v1, :cond_4

    .line 264
    invoke-virtual {p4}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->getPersonCall()Lcom/telguarder/features/numberLookup/PhoneEvent;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 266
    :try_start_0
    invoke-static {p1}, Lcom/telguarder/features/numberLookup/PhoneCallManager;->getInstance(Landroid/content/Context;)Lcom/telguarder/features/numberLookup/PhoneCallManager;

    move-result-object v0

    invoke-virtual {p4}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->getPersonCall()Lcom/telguarder/features/numberLookup/PhoneEvent;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/telguarder/features/numberLookup/PhoneCallManager;->deletePhoneCallFromCache(Lcom/telguarder/features/numberLookup/PhoneEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 268
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/telguarder/helpers/log/Logger;->error(Ljava/lang/String;)V

    :cond_4
    :goto_1
    if-nez v2, :cond_5

    .line 271
    invoke-virtual {p4}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->getCompanyCall()Lcom/telguarder/features/numberLookup/PhoneEvent;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 273
    :try_start_1
    invoke-static {p1}, Lcom/telguarder/features/numberLookup/PhoneCallManager;->getInstance(Landroid/content/Context;)Lcom/telguarder/features/numberLookup/PhoneCallManager;

    move-result-object v0

    invoke-virtual {p4}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->getCompanyCall()Lcom/telguarder/features/numberLookup/PhoneEvent;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/telguarder/features/numberLookup/PhoneCallManager;->deletePhoneCallFromCache(Lcom/telguarder/features/numberLookup/PhoneEvent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 275
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/telguarder/helpers/log/Logger;->error(Ljava/lang/String;)V

    :cond_5
    :goto_2
    const/4 v0, 0x0

    if-nez v1, :cond_7

    if-nez v2, :cond_7

    .line 279
    invoke-virtual {p4}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->getContact()Lcom/telguarder/helpers/contact/Contact;

    move-result-object v3

    if-nez v3, :cond_7

    .line 280
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendLookupIdentification(Ljava/lang/Boolean;)V

    .line 281
    iget-object p1, p0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager;->mNumberLookupCallbackListener:Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$PhoneNumberLookupCallbackListener;

    if-eqz p1, :cond_6

    invoke-interface {p1}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$PhoneNumberLookupCallbackListener;->onNoResults()V

    :cond_6
    return-void

    .line 284
    :cond_7
    invoke-static {}, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler;->getInstance()Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler;

    move-result-object v3

    iget-object v4, p4, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler;->getPhoneStateCallData(Ljava/lang/String;)Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler$PhoneStateCallData;

    move-result-object v3

    .line 285
    sget-object v4, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$CallType;->OUTGOING:Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$CallType;

    if-eq p3, v4, :cond_8

    sget-object v4, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$CallType;->BLOCKED:Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$CallType;

    if-eq p3, v4, :cond_8

    if-eqz v3, :cond_13

    iget-object v3, v3, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler$PhoneStateCallData;->lastCallState:Ljava/lang/String;

    sget-object v4, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13

    .line 286
    :cond_8
    invoke-virtual {p4}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->getPersonCall()Lcom/telguarder/features/numberLookup/PhoneEvent;

    move-result-object v3

    invoke-direct {p0, v3, v1}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager;->areSamePhoneCalls(Lcom/telguarder/features/numberLookup/PhoneEvent;Lcom/telguarder/features/numberLookup/PhoneEvent;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_9

    invoke-virtual {p4}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->getCompanyCall()Lcom/telguarder/features/numberLookup/PhoneEvent;

    move-result-object v3

    invoke-direct {p0, v3, v2}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager;->areSamePhoneCalls(Lcom/telguarder/features/numberLookup/PhoneEvent;Lcom/telguarder/features/numberLookup/PhoneEvent;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 287
    :cond_9
    invoke-virtual {p4, v1}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->setPersonCall(Lcom/telguarder/features/numberLookup/PhoneEvent;)V

    .line 288
    invoke-virtual {p4, v2}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->setCompanyCall(Lcom/telguarder/features/numberLookup/PhoneEvent;)V

    .line 289
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object v3

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendLookupIdentification(Ljava/lang/Boolean;)V

    .line 290
    invoke-direct {p0, v1, v2}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager;->spamAnalytics(Lcom/telguarder/features/numberLookup/PhoneEvent;Lcom/telguarder/features/numberLookup/PhoneEvent;)V

    .line 291
    iget-object v3, p0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager;->mNumberLookupCallbackListener:Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$PhoneNumberLookupCallbackListener;

    if-eqz v3, :cond_a

    invoke-interface {v3, p4}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$PhoneNumberLookupCallbackListener;->onResultsFromBackend(Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;)V

    .line 293
    :cond_a
    iget-object v3, p2, Lcom/telguarder/features/numberLookup/NumberLookup;->spam:Lcom/telguarder/features/numberLookup/Spam;

    if-nez v3, :cond_d

    invoke-virtual {p4}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->getPersonCall()Lcom/telguarder/features/numberLookup/PhoneEvent;

    move-result-object v3

    if-eqz v3, :cond_b

    invoke-virtual {p4}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->getPersonCall()Lcom/telguarder/features/numberLookup/PhoneEvent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/telguarder/features/numberLookup/PhoneEvent;->isSpam()Z

    move-result v3

    if-nez v3, :cond_c

    :cond_b
    invoke-virtual {p4}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->getCompanyCall()Lcom/telguarder/features/numberLookup/PhoneEvent;

    move-result-object v3

    if-eqz v3, :cond_d

    invoke-virtual {p4}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->getCompanyCall()Lcom/telguarder/features/numberLookup/PhoneEvent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/telguarder/features/numberLookup/PhoneEvent;->isSpam()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 294
    :cond_c
    invoke-static {}, Lcom/telguarder/features/numberLookup/OfflineSpamDbHelper;->getInstance()Lcom/telguarder/features/numberLookup/OfflineSpamDbHelper;

    move-result-object v3

    iget-object v5, p4, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v3, p1, v5}, Lcom/telguarder/features/numberLookup/OfflineSpamDbHelper;->deleteSpam(Landroid/content/Context;Ljava/lang/String;)V

    .line 296
    :cond_d
    sget-object p1, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$CallType;->INCOMING:Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$CallType;

    if-eq p3, p1, :cond_e

    sget-object p1, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$CallType;->BLOCKED:Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$CallType;

    if-ne p3, p1, :cond_13

    .line 297
    :cond_e
    iget-object p1, p4, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->phoneNumber:Ljava/lang/String;

    iput-object p1, p0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager;->mLastSuccessfullyLookedupIncomingNumber:Ljava/lang/String;

    .line 298
    iget-object p1, p2, Lcom/telguarder/features/numberLookup/NumberLookup;->spam:Lcom/telguarder/features/numberLookup/Spam;

    if-eqz p1, :cond_f

    iget-object p1, p2, Lcom/telguarder/features/numberLookup/NumberLookup;->spam:Lcom/telguarder/features/numberLookup/Spam;

    iget-object p1, p1, Lcom/telguarder/features/numberLookup/Spam;->spamType:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_f

    const/4 p1, 0x1

    goto :goto_3

    :cond_f
    const/4 p1, 0x0

    :goto_3
    iput-boolean p1, p0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager;->mLastSuccessfullyLookedupIncomingNumberWasSpam:Z

    if-nez p1, :cond_11

    if-eqz v1, :cond_10

    .line 299
    iget-object p1, v1, Lcom/telguarder/features/numberLookup/PhoneEvent;->name:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_11

    :cond_10
    if-eqz v2, :cond_12

    iget-object p1, v2, Lcom/telguarder/features/numberLookup/PhoneEvent;->name:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_12

    :cond_11
    const/4 v0, 0x1

    :cond_12
    iput-boolean v0, p0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager;->mLastIncomingNumberLookupSuccess:Z

    :cond_13
    return-void
.end method

.method private internalLookupResultsForPhoneNumber(Landroid/content/Context;Ljava/lang/String;Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$CallType;ZLcom/telguarder/features/numberLookup/PhoneNumberLookupResult;Ljava/lang/Runnable;)V
    .locals 7

    .line 124
    invoke-virtual {p5}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->getPersonCall()Lcom/telguarder/features/numberLookup/PhoneEvent;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p5}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->getCompanyCall()Lcom/telguarder/features/numberLookup/PhoneEvent;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p5}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->getContact()Lcom/telguarder/helpers/contact/Contact;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 125
    :cond_0
    sget-object v0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$CallType;->INCOMING:Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$CallType;

    if-eq p3, v0, :cond_1

    sget-object v0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$CallType;->BLOCKED:Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$CallType;

    if-ne p3, v0, :cond_8

    .line 126
    :cond_1
    iput-object p2, p0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager;->mLastSuccessfullyLookedupIncomingNumber:Ljava/lang/String;

    .line 127
    invoke-virtual {p5}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->getPersonCall()Lcom/telguarder/features/numberLookup/PhoneEvent;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p5}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->getPersonCall()Lcom/telguarder/features/numberLookup/PhoneEvent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telguarder/features/numberLookup/PhoneEvent;->isSpam()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    invoke-virtual {p5}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->getCompanyCall()Lcom/telguarder/features/numberLookup/PhoneEvent;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p5}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->getCompanyCall()Lcom/telguarder/features/numberLookup/PhoneEvent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telguarder/features/numberLookup/PhoneEvent;->isSpam()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager;->mLastSuccessfullyLookedupIncomingNumberWasSpam:Z

    if-nez v0, :cond_6

    .line 128
    invoke-virtual {p5}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->getPersonCall()Lcom/telguarder/features/numberLookup/PhoneEvent;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p5}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->getPersonCall()Lcom/telguarder/features/numberLookup/PhoneEvent;

    move-result-object v0

    iget-object v0, v0, Lcom/telguarder/features/numberLookup/PhoneEvent;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    invoke-virtual {p5}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->getCompanyCall()Lcom/telguarder/features/numberLookup/PhoneEvent;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {p5}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->getCompanyCall()Lcom/telguarder/features/numberLookup/PhoneEvent;

    move-result-object v0

    iget-object v0, v0, Lcom/telguarder/features/numberLookup/PhoneEvent;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    const/4 v1, 0x1

    :cond_7
    iput-boolean v1, p0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager;->mLastIncomingNumberLookupSuccess:Z

    .line 131
    :cond_8
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager;->mNumberLookupCallbackListener:Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$PhoneNumberLookupCallbackListener;

    if-eqz v0, :cond_9

    invoke-interface {v0, p5}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$PhoneNumberLookupCallbackListener;->onResultsFromCache(Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;)V

    :cond_9
    const/4 v1, 0x1

    .line 133
    :cond_a
    invoke-virtual {p5}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->getPersonCall()Lcom/telguarder/features/numberLookup/PhoneEvent;

    move-result-object v0

    invoke-virtual {p5}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->getCompanyCall()Lcom/telguarder/features/numberLookup/PhoneEvent;

    move-result-object v3

    invoke-direct {p0, p1, v0, v3}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager;->needToLookupNumberOnBackend(Landroid/content/Context;Lcom/telguarder/features/numberLookup/PhoneEvent;Lcom/telguarder/features/numberLookup/PhoneEvent;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 134
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p2, v0, :cond_c

    .line 135
    iget-object p2, p0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager;->mNetworkCallBack:Landroid/net/ConnectivityManager$NetworkCallback;

    if-eqz p2, :cond_b

    invoke-static {p1, p2}, Lcom/telguarder/helpers/backend/NetworkHelper;->unregisterNetworkCallback(Landroid/content/Context;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 136
    :cond_b
    new-instance p2, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$1;

    move-object v0, p2

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$1;-><init>(Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager;Landroid/content/Context;Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$CallType;ZLcom/telguarder/features/numberLookup/PhoneNumberLookupResult;Ljava/lang/Runnable;)V

    iput-object p2, p0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager;->mNetworkCallBack:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 147
    invoke-static {p1, p2}, Lcom/telguarder/helpers/backend/NetworkHelper;->registerNetworkCallback(Landroid/content/Context;Landroid/net/ConnectivityManager$NetworkCallback;)V

    goto :goto_1

    :cond_c
    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    .line 149
    invoke-direct/range {v0 .. v5}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager;->lookupPhoneNumberOnBackend(Landroid/content/Context;Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$CallType;ZLcom/telguarder/features/numberLookup/PhoneNumberLookupResult;Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_d
    if-eqz v1, :cond_11

    .line 152
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object p3

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendLookupIdentification(Ljava/lang/Boolean;)V

    .line 153
    invoke-virtual {p5}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->getPersonCall()Lcom/telguarder/features/numberLookup/PhoneEvent;

    move-result-object p3

    invoke-virtual {p5}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->getCompanyCall()Lcom/telguarder/features/numberLookup/PhoneEvent;

    move-result-object v0

    invoke-direct {p0, p3, v0}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager;->spamAnalytics(Lcom/telguarder/features/numberLookup/PhoneEvent;Lcom/telguarder/features/numberLookup/PhoneEvent;)V

    if-eqz p4, :cond_10

    .line 154
    invoke-virtual {p5}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->getPersonCall()Lcom/telguarder/features/numberLookup/PhoneEvent;

    move-result-object p3

    if-eqz p3, :cond_e

    invoke-virtual {p5}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->getPersonCall()Lcom/telguarder/features/numberLookup/PhoneEvent;

    move-result-object p3

    invoke-virtual {p3}, Lcom/telguarder/features/numberLookup/PhoneEvent;->isSpam()Z

    move-result p3

    if-nez p3, :cond_10

    :cond_e
    invoke-virtual {p5}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->getCompanyCall()Lcom/telguarder/features/numberLookup/PhoneEvent;

    move-result-object p3

    if-eqz p3, :cond_f

    invoke-virtual {p5}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->getCompanyCall()Lcom/telguarder/features/numberLookup/PhoneEvent;

    move-result-object p3

    invoke-virtual {p3}, Lcom/telguarder/features/numberLookup/PhoneEvent;->isSpam()Z

    move-result p3

    if-nez p3, :cond_10

    .line 155
    :cond_f
    new-instance p3, Ljava/lang/Thread;

    new-instance p4, Lcom/telguarder/features/numberLookup/-$$Lambda$PhoneNumberLookupManager$yUWqQDQVU7wD7q9XEBXQFAZi3s8;

    invoke-direct {p4, p0, p1, p2}, Lcom/telguarder/features/numberLookup/-$$Lambda$PhoneNumberLookupManager$yUWqQDQVU7wD7q9XEBXQFAZi3s8;-><init>(Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager;Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {p3, p4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 157
    invoke-virtual {p3}, Ljava/lang/Thread;->start()V

    :cond_10
    if-eqz p6, :cond_11

    .line 159
    invoke-interface {p6}, Ljava/lang/Runnable;->run()V

    :cond_11
    :goto_1
    return-void
.end method

.method private lookupPhoneNumberOnBackend(Landroid/content/Context;Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$CallType;ZLcom/telguarder/features/numberLookup/PhoneNumberLookupResult;Ljava/lang/Runnable;)V
    .locals 8

    const/4 v0, 0x0

    .line 178
    iput-boolean v0, p0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager;->mLookupBackendRequestSuccess:Z

    .line 179
    new-instance v0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$2;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p4

    move-object v5, p5

    move-object v6, p2

    move v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$2;-><init>(Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager;Landroid/content/Context;Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;Ljava/lang/Runnable;Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$CallType;Z)V

    iput-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager;->mNumberLookupBackendCallbackListener:Lcom/telguarder/helpers/backend/BackendCallbackListener;

    .line 229
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p5, 0x15

    if-lt p3, p5, :cond_1

    .line 230
    iget-object p3, p0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager;->mNetworkCallBackForBckApiCall:Landroid/net/ConnectivityManager$NetworkCallback;

    if-eqz p3, :cond_0

    invoke-static {p1, p3}, Lcom/telguarder/helpers/backend/NetworkHelper;->unregisterNetworkCallback(Landroid/content/Context;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 231
    :cond_0
    new-instance p3, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$3;

    invoke-direct {p3, p0, p1, p4, p2}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$3;-><init>(Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager;Landroid/content/Context;Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$CallType;)V

    iput-object p3, p0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager;->mNetworkCallBackForBckApiCall:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 241
    invoke-static {p1, p3}, Lcom/telguarder/helpers/backend/NetworkHelper;->registerNetworkCallback(Landroid/content/Context;Landroid/net/ConnectivityManager$NetworkCallback;)V

    goto :goto_0

    .line 243
    :cond_1
    invoke-static {}, Lcom/telguarder/features/numberLookup/SearchManager;->getInstance()Lcom/telguarder/features/numberLookup/SearchManager;

    move-result-object p3

    iget-object p4, p4, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->phoneNumber:Ljava/lang/String;

    iget-object p5, p0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager;->mNumberLookupBackendCallbackListener:Lcom/telguarder/helpers/backend/BackendCallbackListener;

    invoke-virtual {p3, p1, p4, p5, p2}, Lcom/telguarder/features/numberLookup/SearchManager;->getNumberLookupResultsForCallWidget(Landroid/content/Context;Ljava/lang/String;Lcom/telguarder/helpers/backend/BackendCallbackListener;Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$CallType;)V

    :goto_0
    return-void
.end method

.method private needToLookupNumberOnBackend(Landroid/content/Context;Lcom/telguarder/features/numberLookup/PhoneEvent;Lcom/telguarder/features/numberLookup/PhoneEvent;)Z
    .locals 0

    if-eqz p2, :cond_0

    .line 173
    invoke-virtual {p2, p1}, Lcom/telguarder/features/numberLookup/PhoneEvent;->isFromFreshCache(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_1

    :cond_0
    if-eqz p3, :cond_2

    invoke-virtual {p3, p1}, Lcom/telguarder/features/numberLookup/PhoneEvent;->isFromFreshCache(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private spamAnalytics(Lcom/telguarder/features/numberLookup/PhoneEvent;Lcom/telguarder/features/numberLookup/PhoneEvent;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 306
    iget-object v0, p2, Lcom/telguarder/features/numberLookup/PhoneEvent;->spamType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 307
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object p1

    iget-object p2, p2, Lcom/telguarder/features/numberLookup/PhoneEvent;->spamType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendLookupSpamAlert(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 308
    iget-object p2, p1, Lcom/telguarder/features/numberLookup/PhoneEvent;->spamType:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 309
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object p2

    iget-object p1, p1, Lcom/telguarder/features/numberLookup/PhoneEvent;->spamType:Ljava/lang/String;

    invoke-virtual {p2, p1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendLookupSpamAlert(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private startPreloadFromResultInCache(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 165
    invoke-static {}, Lcom/telguarder/helpers/preferences/PreferencesManager;->getInstance()Lcom/telguarder/helpers/preferences/PreferencesManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telguarder/helpers/preferences/PreferencesManager;->postCallScreenIsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;

    move-result-object v0

    iget-boolean v0, v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->mLoadStarted:Z

    if-nez v0, :cond_0

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " Phone number: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    .line 167
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->startPreload(Landroid/content/Context;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public cancelPhoneNumberLookup()V
    .locals 2

    .line 325
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager;->mNumberLookupBackendCallbackListener:Lcom/telguarder/helpers/backend/BackendCallbackListener;

    if-eqz v0, :cond_0

    .line 326
    invoke-virtual {v0}, Lcom/telguarder/helpers/backend/BackendCallbackListener;->cancel()V

    .line 328
    :cond_0
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager;->mNumberLookupCallbackListener:Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$PhoneNumberLookupCallbackListener;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 329
    invoke-interface {v0, v1}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$PhoneNumberLookupCallbackListener;->onLookupCancelled(Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;)V

    :cond_1
    return-void
.end method

.method public getCallTypeByCallLogCallType(I)Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$CallType;
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 340
    sget-object p1, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$CallType;->OUTGOING:Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$CallType;

    return-object p1

    :cond_0
    const/4 v0, 0x6

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    goto :goto_0

    .line 344
    :cond_1
    sget-object p1, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$CallType;->INCOMING:Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$CallType;

    return-object p1

    .line 342
    :cond_2
    :goto_0
    sget-object p1, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$CallType;->BLOCKED:Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$CallType;

    return-object p1
.end method

.method public getLastSuccessfullyLookedupIncomingNumber()Ljava/lang/String;
    .locals 1

    .line 370
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager;->mLastSuccessfullyLookedupIncomingNumber:Ljava/lang/String;

    return-object v0
.end method

.method public synthetic lambda$getContactLookupData$4$PhoneNumberLookupManager(Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;Landroid/content/Context;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 1

    .line 90
    invoke-static {}, Lcom/telguarder/helpers/contact/ContactManager;->getInstance()Lcom/telguarder/helpers/contact/ContactManager;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/telguarder/helpers/contact/ContactManager;->getContactByPhoneNumber(Landroid/content/Context;Ljava/lang/String;)Lcom/telguarder/helpers/contact/Contact;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->setContact(Lcom/telguarder/helpers/contact/Contact;)V

    .line 91
    invoke-virtual {p1}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->getContact()Lcom/telguarder/helpers/contact/Contact;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager;->mLastIncomingNumberLookupWasContact:Z

    if-eqz p4, :cond_1

    .line 92
    invoke-interface {p4}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method

.method public synthetic lambda$internalLookupResultsForPhoneNumber$5$PhoneNumberLookupManager(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 156
    invoke-direct {p0, p1, p2}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager;->startPreloadFromResultInCache(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$lookupResultsForPhoneNumber$1$PhoneNumberLookupManager(Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;ZLandroid/content/Context;Ljava/lang/String;Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$CallType;)V
    .locals 8

    .line 65
    invoke-virtual {p1}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->getContact()Lcom/telguarder/helpers/contact/Contact;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 66
    iget-object p5, p0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager;->mNumberLookupCallbackListener:Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$PhoneNumberLookupCallbackListener;

    if-eqz p5, :cond_0

    invoke-interface {p5, p1}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$PhoneNumberLookupCallbackListener;->onLookupCancelled(Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;)V

    :cond_0
    if-eqz p2, :cond_3

    .line 68
    new-instance p1, Ljava/lang/Thread;

    new-instance p2, Lcom/telguarder/features/numberLookup/-$$Lambda$PhoneNumberLookupManager$eGOQFjchTMgt9-E4EgviUINfUDI;

    invoke-direct {p2, p0, p3, p4}, Lcom/telguarder/features/numberLookup/-$$Lambda$PhoneNumberLookupManager$eGOQFjchTMgt9-E4EgviUINfUDI;-><init>(Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager;Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 70
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 73
    :cond_1
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager;->mNumberLookupCallbackListener:Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$PhoneNumberLookupCallbackListener;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$PhoneNumberLookupCallbackListener;->onLookupInProgress()V

    :cond_2
    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move v5, p2

    move-object v6, p1

    .line 74
    invoke-direct/range {v1 .. v7}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager;->internalLookupResultsForPhoneNumber(Landroid/content/Context;Ljava/lang/String;Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$CallType;ZLcom/telguarder/features/numberLookup/PhoneNumberLookupResult;Ljava/lang/Runnable;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public synthetic lambda$lookupResultsForPhoneNumber$3$PhoneNumberLookupManager(Landroid/content/Context;Ljava/lang/String;Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$CallType;)V
    .locals 7

    .line 79
    new-instance v6, Lcom/telguarder/features/numberLookup/-$$Lambda$PhoneNumberLookupManager$43Y54v8ORGOvfcjkIr7D1ZI0tao;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p3

    move-object v3, p1

    move-object v4, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/telguarder/features/numberLookup/-$$Lambda$PhoneNumberLookupManager$43Y54v8ORGOvfcjkIr7D1ZI0tao;-><init>(Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager;Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;Landroid/content/Context;Ljava/lang/String;Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$CallType;)V

    invoke-direct {p0, p1, p2, p3, v6}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager;->getContactLookupData(Landroid/content/Context;Ljava/lang/String;Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic lambda$null$0$PhoneNumberLookupManager(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1, p2}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager;->startPreloadFromResultInCache(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$null$2$PhoneNumberLookupManager(Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;Landroid/content/Context;Ljava/lang/String;Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$CallType;)V
    .locals 8

    .line 80
    invoke-virtual {p1}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->getContact()Lcom/telguarder/helpers/contact/Contact;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p1

    .line 81
    invoke-direct/range {v1 .. v7}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager;->internalLookupResultsForPhoneNumber(Landroid/content/Context;Ljava/lang/String;Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$CallType;ZLcom/telguarder/features/numberLookup/PhoneNumberLookupResult;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public lookupResultsForPhoneNumber(Landroid/content/Context;Ljava/lang/String;Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$PhoneNumberLookupCallbackListener;Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$CallType;Z)V
    .locals 8

    .line 47
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendLookupApprovedByUser(Z)V

    const/4 v0, 0x0

    .line 48
    iput-boolean v0, p0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager;->mLastIncomingNumberLookupSuccess:Z

    .line 49
    iput-boolean v0, p0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager;->mLastIncomingNumberLookupWasContact:Z

    .line 50
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    if-nez p3, :cond_0

    goto/16 :goto_0

    .line 53
    :cond_0
    iput-object p3, p0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager;->mNumberLookupCallbackListener:Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$PhoneNumberLookupCallbackListener;

    .line 54
    invoke-static {}, Lcom/telguarder/helpers/preferences/PreferencesManager;->getInstance()Lcom/telguarder/helpers/preferences/PreferencesManager;

    move-result-object p3

    invoke-virtual {p3}, Lcom/telguarder/helpers/preferences/PreferencesManager;->getUserConsentForPolicy2018()Z

    move-result p3

    if-nez p3, :cond_2

    .line 55
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendLookupApprovedByUser(Z)V

    .line 56
    iget-object p1, p0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager;->mNumberLookupCallbackListener:Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$PhoneNumberLookupCallbackListener;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$PhoneNumberLookupCallbackListener;->onLookupNotAllowed()V

    :cond_1
    return-void

    .line 60
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager;->getLookupResultFromCache(Landroid/content/Context;Ljava/lang/String;)Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;

    move-result-object p3

    .line 62
    invoke-static {}, Lcom/telguarder/helpers/preferences/PreferencesManager;->getInstance()Lcom/telguarder/helpers/preferences/PreferencesManager;

    move-result-object v0

    const-string v1, "SETTINGS_LOOK_UP_STORED_CONTACTS"

    invoke-virtual {v0, v1}, Lcom/telguarder/helpers/preferences/PreferencesManager;->getSettingEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 64
    new-instance v7, Lcom/telguarder/features/numberLookup/-$$Lambda$PhoneNumberLookupManager$HPIUByrZQuSPnHutk6QOiJJ864g;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p3

    move v3, p5

    move-object v4, p1

    move-object v5, p2

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/telguarder/features/numberLookup/-$$Lambda$PhoneNumberLookupManager$HPIUByrZQuSPnHutk6QOiJJ864g;-><init>(Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager;Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;ZLandroid/content/Context;Ljava/lang/String;Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$CallType;)V

    invoke-direct {p0, p1, p2, p3, v7}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager;->getContactLookupData(Landroid/content/Context;Ljava/lang/String;Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 78
    :cond_3
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager;->mNumberLookupCallbackListener:Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$PhoneNumberLookupCallbackListener;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$PhoneNumberLookupCallbackListener;->onLookupInProgress()V

    .line 79
    :cond_4
    new-instance v6, Lcom/telguarder/features/numberLookup/-$$Lambda$PhoneNumberLookupManager$M-md9rI9uugZ2gTCusDsjNTiAD8;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/telguarder/features/numberLookup/-$$Lambda$PhoneNumberLookupManager$M-md9rI9uugZ2gTCusDsjNTiAD8;-><init>(Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager;Landroid/content/Context;Ljava/lang/String;Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$CallType;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move v4, p5

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager;->internalLookupResultsForPhoneNumber(Landroid/content/Context;Ljava/lang/String;Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$CallType;ZLcom/telguarder/features/numberLookup/PhoneNumberLookupResult;Ljava/lang/Runnable;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public wasLastIncomingNumberContact()Z
    .locals 1

    .line 365
    iget-boolean v0, p0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager;->mLastIncomingNumberLookupWasContact:Z

    return v0
.end method

.method public wasLastIncomingNumberLookupSuccessful()Z
    .locals 1

    .line 360
    iget-boolean v0, p0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager;->mLastIncomingNumberLookupSuccess:Z

    return v0
.end method

.method public wasLastSuccessfullyLookedupIncomingNumberSpam()Z
    .locals 1

    .line 374
    iget-boolean v0, p0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager;->mLastSuccessfullyLookedupIncomingNumberWasSpam:Z

    return v0
.end method
