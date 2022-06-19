.class public Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager;
.super Ljava/lang/Object;
.source "BlockedNumberManager.java"


# static fields
.field private static mInstance:Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager;


# instance fields
.field private mIsBlockerSwitchOn:Z

.field private mReportResult:Lcom/telguarder/features/rateAndFeedback/ReportResult;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 25
    iput-boolean v0, p0, Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager;->mIsBlockerSwitchOn:Z

    return-void
.end method

.method static synthetic access$000(Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager;)Lcom/telguarder/features/rateAndFeedback/ReportResult;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager;->mReportResult:Lcom/telguarder/features/rateAndFeedback/ReportResult;

    return-object p0
.end method

.method static synthetic access$002(Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager;Lcom/telguarder/features/rateAndFeedback/ReportResult;)Lcom/telguarder/features/rateAndFeedback/ReportResult;
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager;->mReportResult:Lcom/telguarder/features/rateAndFeedback/ReportResult;

    return-object p1
.end method

.method public static declared-synchronized getInstance()Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager;
    .locals 2

    const-class v0, Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager;

    monitor-enter v0

    .line 32
    :try_start_0
    sget-object v1, Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager;->mInstance:Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager;

    if-nez v1, :cond_0

    .line 33
    new-instance v1, Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager;

    invoke-direct {v1}, Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager;-><init>()V

    sput-object v1, Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager;->mInstance:Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager;

    .line 35
    :cond_0
    sget-object v1, Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager;->mInstance:Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private loadBlockedNumbersFromBackend(Landroid/content/Context;Lcom/telguarder/helpers/backend/BackendCallbackListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/telguarder/helpers/backend/BackendCallbackListener<",
            "Lcom/telguarder/features/rateAndFeedback/ReportResult;",
            ">;)V"
        }
    .end annotation

    .line 171
    sget-object v0, Lcom/telguarder/helpers/backend/BackendRequest$Method;->GET:Lcom/telguarder/helpers/backend/BackendRequest$Method;

    const-string v1, "https://api.advista.no/Report/Number/Mobile"

    invoke-static {p1, v1, v0}, Lcom/telguarder/helpers/backend/BackendRequestCreator;->backendRequestOfUrlAndMethodWithLogging(Landroid/content/Context;Ljava/lang/String;Lcom/telguarder/helpers/backend/BackendRequest$Method;)Lcom/telguarder/helpers/backend/BackendRequest;

    move-result-object p1

    .line 172
    const-class v0, Lcom/telguarder/features/rateAndFeedback/ReportResult;

    new-instance v1, Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager$3;

    invoke-direct {v1, p0, p2}, Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager$3;-><init>(Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager;Lcom/telguarder/helpers/backend/BackendCallbackListener;)V

    invoke-virtual {p1, v0, v1}, Lcom/telguarder/helpers/backend/BackendRequest;->execute(Ljava/lang/Class;Lcom/telguarder/helpers/backend/BackendCallbackListener;)V

    return-void
.end method


# virtual methods
.method public addBlockedNumber(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/telguarder/helpers/backend/BackendCallbackListener;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/telguarder/helpers/backend/BackendCallbackListener<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    move-object v3, p2

    .line 104
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendNumberReportApiCalled(Ljava/lang/String;)V

    .line 105
    sget-object v0, Lcom/telguarder/helpers/backend/BackendRequest$Method;->POST:Lcom/telguarder/helpers/backend/BackendRequest$Method;

    const-string v1, "https://api.advista.no/Report/Number/Mobile"

    move-object v7, p1

    invoke-static {p1, v1, v0}, Lcom/telguarder/helpers/backend/BackendRequestCreator;->backendRequestOfUrlAndMethodWithLogging(Landroid/content/Context;Ljava/lang/String;Lcom/telguarder/helpers/backend/BackendRequest$Method;)Lcom/telguarder/helpers/backend/BackendRequest;

    move-result-object v8

    const-string v0, "number"

    .line 106
    invoke-virtual {v8, v0, p2}, Lcom/telguarder/helpers/backend/BackendRequest;->putParam(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "owner"

    move-object v5, p3

    .line 107
    invoke-virtual {v8, v0, p3}, Lcom/telguarder/helpers/backend/BackendRequest;->putParam(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "reason"

    move-object v6, p4

    .line 108
    invoke-virtual {v8, v0, p4}, Lcom/telguarder/helpers/backend/BackendRequest;->putParam(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "comment"

    move-object/from16 v1, p5

    .line 109
    invoke-virtual {v8, v0, v1}, Lcom/telguarder/helpers/backend/BackendRequest;->putParam(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "blocked"

    move/from16 v4, p6

    .line 110
    invoke-virtual {v8, v0, v4}, Lcom/telguarder/helpers/backend/BackendRequest;->putParam(Ljava/lang/String;Z)V

    .line 111
    const-class v9, Ljava/lang/String;

    new-instance v10, Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager$1;

    move-object v0, v10

    move-object v1, p0

    move-object/from16 v2, p7

    invoke-direct/range {v0 .. v7}, Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager$1;-><init>(Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager;Lcom/telguarder/helpers/backend/BackendCallbackListener;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v8, v9, v10}, Lcom/telguarder/helpers/backend/BackendRequest;->execute(Ljava/lang/reflect/Type;Lcom/telguarder/helpers/backend/BackendCallbackListener;)V

    return-void
.end method

.method public getBlockedNumberInfo(Ljava/lang/String;)Lcom/telguarder/features/rateAndFeedback/ReportResult$ReportEntry;
    .locals 3

    .line 57
    invoke-virtual {p0}, Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager;->isBlockedNumberListNotEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 58
    iget-object v0, p0, Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager;->mReportResult:Lcom/telguarder/features/rateAndFeedback/ReportResult;

    iget-object v0, v0, Lcom/telguarder/features/rateAndFeedback/ReportResult;->numbers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/telguarder/features/rateAndFeedback/ReportResult$ReportEntry;

    .line 59
    iget-object v2, v1, Lcom/telguarder/features/rateAndFeedback/ReportResult$ReportEntry;->number:Ljava/lang/String;

    invoke-static {v2, p1}, Lcom/telguarder/helpers/contact/ContactUtils;->isNumberTheSame(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getBlockedNumberList()Lcom/telguarder/features/rateAndFeedback/ReportResult;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager;->mReportResult:Lcom/telguarder/features/rateAndFeedback/ReportResult;

    return-object v0
.end method

.method public initBlockedNumberManager(Landroid/content/Context;)V
    .locals 1

    .line 80
    invoke-static {}, Lcom/telguarder/helpers/preferences/PreferencesManager;->getInstance()Lcom/telguarder/helpers/preferences/PreferencesManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telguarder/helpers/preferences/PreferencesManager;->getSavedBlockerSwitchState()Z

    move-result v0

    iput-boolean v0, p0, Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager;->mIsBlockerSwitchOn:Z

    .line 81
    invoke-static {}, Lcom/telguarder/helpers/preferences/PreferencesManager;->getInstance()Lcom/telguarder/helpers/preferences/PreferencesManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telguarder/helpers/preferences/PreferencesManager;->getCachedBlockedNumberList()Lcom/telguarder/features/rateAndFeedback/ReportResult;

    move-result-object v0

    iput-object v0, p0, Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager;->mReportResult:Lcom/telguarder/features/rateAndFeedback/ReportResult;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 83
    invoke-virtual {p0, p1, v0}, Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager;->refreshCachedList(Landroid/content/Context;Lcom/telguarder/helpers/backend/BackendCallbackListener;)V

    :cond_0
    return-void
.end method

.method public isBlockedNumberListNotEmpty()Z
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager;->mReportResult:Lcom/telguarder/features/rateAndFeedback/ReportResult;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/telguarder/features/rateAndFeedback/ReportResult;->numbers:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager;->mReportResult:Lcom/telguarder/features/rateAndFeedback/ReportResult;

    iget-object v0, v0, Lcom/telguarder/features/rateAndFeedback/ReportResult;->numbers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isBlockerSwitchOn()Z
    .locals 1

    .line 69
    iget-boolean v0, p0, Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager;->mIsBlockerSwitchOn:Z

    return v0
.end method

.method public isNumberBlocked(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    .line 40
    invoke-virtual {p0, p1, v0}, Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager;->isNumberBlocked(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public isNumberBlocked(Ljava/lang/String;Z)Z
    .locals 1

    if-eqz p2, :cond_0

    .line 45
    invoke-virtual {p0}, Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager;->isBlockerSwitchOn()Z

    move-result p2

    if-eqz p2, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager;->isBlockedNumberListNotEmpty()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 46
    iget-object p2, p0, Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager;->mReportResult:Lcom/telguarder/features/rateAndFeedback/ReportResult;

    iget-object p2, p2, Lcom/telguarder/features/rateAndFeedback/ReportResult;->numbers:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/telguarder/features/rateAndFeedback/ReportResult$ReportEntry;

    .line 47
    iget-object v0, v0, Lcom/telguarder/features/rateAndFeedback/ReportResult$ReportEntry;->number:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/telguarder/helpers/contact/ContactUtils;->isNumberTheSame(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public declared-synchronized refreshCachedList(Landroid/content/Context;Lcom/telguarder/helpers/backend/BackendCallbackListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/telguarder/helpers/backend/BackendCallbackListener<",
            "Lcom/telguarder/features/rateAndFeedback/ReportResult;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 89
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager;->loadBlockedNumbersFromBackend(Landroid/content/Context;Lcom/telguarder/helpers/backend/BackendCallbackListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public removeBlockedNumber(Landroid/content/Context;Ljava/lang/String;Lcom/telguarder/helpers/backend/BackendCallbackListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/telguarder/helpers/backend/BackendCallbackListener<",
            "Lcom/telguarder/features/rateAndFeedback/ReportResult;",
            ">;)V"
        }
    .end annotation

    .line 144
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendNumberReportDeleteApiCalled(Ljava/lang/String;)V

    .line 145
    sget-object v0, Lcom/telguarder/helpers/backend/BackendRequest$Method;->POST:Lcom/telguarder/helpers/backend/BackendRequest$Method;

    const-string v1, "https://api.advista.no/Report/Number/Mobile/Delete"

    invoke-static {p1, v1, v0}, Lcom/telguarder/helpers/backend/BackendRequestCreator;->backendRequestOfUrlAndMethodWithLogging(Landroid/content/Context;Ljava/lang/String;Lcom/telguarder/helpers/backend/BackendRequest$Method;)Lcom/telguarder/helpers/backend/BackendRequest;

    move-result-object v0

    .line 146
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 147
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "numbers"

    .line 148
    invoke-virtual {v0, v2, v1}, Lcom/telguarder/helpers/backend/BackendRequest;->putParam(Ljava/lang/String;Ljava/util/List;)V

    .line 149
    const-class v1, Lcom/telguarder/features/rateAndFeedback/ReportResult;

    new-instance v2, Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager$2;

    invoke-direct {v2, p0, p3, p2, p1}, Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager$2;-><init>(Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager;Lcom/telguarder/helpers/backend/BackendCallbackListener;Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Lcom/telguarder/helpers/backend/BackendRequest;->execute(Ljava/lang/Class;Lcom/telguarder/helpers/backend/BackendCallbackListener;)V

    return-void
.end method

.method public setBlockerSwitchState(Z)V
    .locals 1

    .line 74
    iput-boolean p1, p0, Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager;->mIsBlockerSwitchOn:Z

    .line 75
    invoke-static {}, Lcom/telguarder/helpers/preferences/PreferencesManager;->getInstance()Lcom/telguarder/helpers/preferences/PreferencesManager;

    move-result-object p1

    iget-boolean v0, p0, Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager;->mIsBlockerSwitchOn:Z

    invoke-virtual {p1, v0}, Lcom/telguarder/helpers/preferences/PreferencesManager;->savedBlockerSwitchState(Z)V

    return-void
.end method
