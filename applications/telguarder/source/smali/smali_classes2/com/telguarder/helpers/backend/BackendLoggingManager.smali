.class public Lcom/telguarder/helpers/backend/BackendLoggingManager;
.super Ljava/lang/Object;
.source "BackendLoggingManager.java"


# static fields
.field private static mInstance:Lcom/telguarder/helpers/backend/BackendLoggingManager;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/telguarder/helpers/backend/BackendLoggingManager;
    .locals 2

    const-class v0, Lcom/telguarder/helpers/backend/BackendLoggingManager;

    monitor-enter v0

    .line 16
    :try_start_0
    sget-object v1, Lcom/telguarder/helpers/backend/BackendLoggingManager;->mInstance:Lcom/telguarder/helpers/backend/BackendLoggingManager;

    if-nez v1, :cond_0

    .line 17
    new-instance v1, Lcom/telguarder/helpers/backend/BackendLoggingManager;

    invoke-direct {v1}, Lcom/telguarder/helpers/backend/BackendLoggingManager;-><init>()V

    sput-object v1, Lcom/telguarder/helpers/backend/BackendLoggingManager;->mInstance:Lcom/telguarder/helpers/backend/BackendLoggingManager;

    .line 19
    :cond_0
    sget-object v1, Lcom/telguarder/helpers/backend/BackendLoggingManager;->mInstance:Lcom/telguarder/helpers/backend/BackendLoggingManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public logCompanyPhoneCall(Landroid/content/Context;Lcom/telguarder/helpers/contact/BackendLogEntry;)V
    .locals 2

    if-eqz p2, :cond_1

    .line 24
    iget-object v0, p2, Lcom/telguarder/helpers/contact/BackendLogEntry;->id:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 27
    :cond_0
    sget-object v0, Lcom/telguarder/helpers/backend/BackendRequest$Method;->POST:Lcom/telguarder/helpers/backend/BackendRequest$Method;

    const-string v1, "https://api.advista.no/Log/number"

    invoke-static {p1, v1, v0}, Lcom/telguarder/helpers/backend/BackendRequestCreator;->backendRequestOfUrlAndMethodWithLogging(Landroid/content/Context;Ljava/lang/String;Lcom/telguarder/helpers/backend/BackendRequest$Method;)Lcom/telguarder/helpers/backend/BackendRequest;

    move-result-object p1

    const-string v0, "type"

    const-string v1, "ring"

    .line 28
    invoke-virtual {p1, v0, v1}, Lcom/telguarder/helpers/backend/BackendRequest;->putParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    iget-object v0, p2, Lcom/telguarder/helpers/contact/BackendLogEntry;->calledNumber:Ljava/lang/String;

    const-string v1, "number"

    invoke-virtual {p1, v1, v0}, Lcom/telguarder/helpers/backend/BackendRequest;->putParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    iget-object p2, p2, Lcom/telguarder/helpers/contact/BackendLogEntry;->id:Ljava/lang/String;

    const-string v0, "orgNr"

    invoke-virtual {p1, v0, p2}, Lcom/telguarder/helpers/backend/BackendRequest;->putParam(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "source"

    const-string v0, "mobile"

    .line 31
    invoke-virtual {p1, p2, v0}, Lcom/telguarder/helpers/backend/BackendRequest;->putParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    const-class p2, Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/telguarder/helpers/backend/BackendRequest;->execute(Ljava/lang/Class;Lcom/telguarder/helpers/backend/BackendCallbackListener;)V

    :cond_1
    :goto_0
    return-void
.end method
