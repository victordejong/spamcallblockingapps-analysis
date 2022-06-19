.class public Lcom/pubmatic/sdk/common/log/PMLog;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pubmatic/sdk/common/log/PMLog$PMLogMessage;,
        Lcom/pubmatic/sdk/common/log/PMLog$PMLogging;
    }
.end annotation


# static fields
.field private static sSelf:Lcom/pubmatic/sdk/common/log/PMLog;


# instance fields
.field private final loggers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/pubmatic/sdk/common/log/PMLog$PMLogging;",
            ">;"
        }
    .end annotation
.end field

.field private mLogLevel:Lcom/pubmatic/sdk/common/OpenWrapSDK$LogLevel;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pubmatic/sdk/common/log/PMLog;->loggers:Ljava/util/ArrayList;

    sget-object v0, Lcom/pubmatic/sdk/common/OpenWrapSDK$LogLevel;->Warn:Lcom/pubmatic/sdk/common/OpenWrapSDK$LogLevel;

    iput-object v0, p0, Lcom/pubmatic/sdk/common/log/PMLog;->mLogLevel:Lcom/pubmatic/sdk/common/OpenWrapSDK$LogLevel;

    return-void
.end method

.method public static addLogger(Lcom/pubmatic/sdk/common/log/PMLog$PMLogging;)V
    .locals 1

    invoke-static {}, Lcom/pubmatic/sdk/common/log/PMLog;->getInstance()Lcom/pubmatic/sdk/common/log/PMLog;

    move-result-object v0

    invoke-direct {v0, p0}, Lcom/pubmatic/sdk/common/log/PMLog;->addLoggerInternal(Lcom/pubmatic/sdk/common/log/PMLog$PMLogging;)V

    return-void
.end method

.method private addLoggerInternal(Lcom/pubmatic/sdk/common/log/PMLog$PMLogging;)V
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/common/log/PMLog;->loggers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static allLoggers()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/pubmatic/sdk/common/log/PMLog$PMLogging;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pubmatic/sdk/common/log/PMLog;->getInstance()Lcom/pubmatic/sdk/common/log/PMLog;

    move-result-object v0

    invoke-direct {v0}, Lcom/pubmatic/sdk/common/log/PMLog;->allLoggersInternal()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private allLoggersInternal()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/pubmatic/sdk/common/log/PMLog$PMLogging;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/pubmatic/sdk/common/log/PMLog;->loggers:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static varargs debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pubmatic/sdk/common/log/PMLog;->getInstance()Lcom/pubmatic/sdk/common/log/PMLog;

    move-result-object v0

    sget-object v1, Lcom/pubmatic/sdk/common/OpenWrapSDK$LogLevel;->Debug:Lcom/pubmatic/sdk/common/OpenWrapSDK$LogLevel;

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/pubmatic/sdk/common/log/PMLog;->log(Ljava/lang/String;Lcom/pubmatic/sdk/common/OpenWrapSDK$LogLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pubmatic/sdk/common/log/PMLog;->getInstance()Lcom/pubmatic/sdk/common/log/PMLog;

    move-result-object v0

    sget-object v1, Lcom/pubmatic/sdk/common/OpenWrapSDK$LogLevel;->Error:Lcom/pubmatic/sdk/common/OpenWrapSDK$LogLevel;

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/pubmatic/sdk/common/log/PMLog;->log(Ljava/lang/String;Lcom/pubmatic/sdk/common/OpenWrapSDK$LogLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private static getApplicationContext()Landroid/content/Context;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.app.ActivityThread"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "currentApplication"

    const/4 v3, 0x0

    :try_start_1
    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, v0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Application;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private static getInstance()Lcom/pubmatic/sdk/common/log/PMLog;
    .locals 3

    sget-object v0, Lcom/pubmatic/sdk/common/log/PMLog;->sSelf:Lcom/pubmatic/sdk/common/log/PMLog;

    if-nez v0, :cond_1

    const-class v0, Lcom/pubmatic/sdk/common/log/PMLog;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/pubmatic/sdk/common/log/PMLog;->sSelf:Lcom/pubmatic/sdk/common/log/PMLog;

    if-nez v1, :cond_0

    new-instance v1, Lcom/pubmatic/sdk/common/log/PMLog;

    invoke-direct {v1}, Lcom/pubmatic/sdk/common/log/PMLog;-><init>()V

    sput-object v1, Lcom/pubmatic/sdk/common/log/PMLog;->sSelf:Lcom/pubmatic/sdk/common/log/PMLog;

    new-instance v2, Lcom/pubmatic/sdk/common/log/PMDefaultLogger;

    invoke-direct {v2}, Lcom/pubmatic/sdk/common/log/PMDefaultLogger;-><init>()V

    invoke-direct {v1, v2}, Lcom/pubmatic/sdk/common/log/PMLog;->addLoggerInternal(Lcom/pubmatic/sdk/common/log/PMLog$PMLogging;)V

    invoke-static {}, Lcom/pubmatic/sdk/common/log/PMLog;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "DEBUG"

    invoke-static {v1, v2}, Lcom/pubmatic/sdk/common/utility/POBUtils;->getBuildConfigValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/pubmatic/sdk/common/log/PMLog;->sSelf:Lcom/pubmatic/sdk/common/log/PMLog;

    sget-object v2, Lcom/pubmatic/sdk/common/OpenWrapSDK$LogLevel;->Debug:Lcom/pubmatic/sdk/common/OpenWrapSDK$LogLevel;

    iput-object v2, v1, Lcom/pubmatic/sdk/common/log/PMLog;->mLogLevel:Lcom/pubmatic/sdk/common/OpenWrapSDK$LogLevel;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/pubmatic/sdk/common/log/PMLog;->sSelf:Lcom/pubmatic/sdk/common/log/PMLog;

    return-object v0
.end method

.method public static getLogLevel()Lcom/pubmatic/sdk/common/OpenWrapSDK$LogLevel;
    .locals 1

    invoke-static {}, Lcom/pubmatic/sdk/common/log/PMLog;->getInstance()Lcom/pubmatic/sdk/common/log/PMLog;

    move-result-object v0

    iget-object v0, v0, Lcom/pubmatic/sdk/common/log/PMLog;->mLogLevel:Lcom/pubmatic/sdk/common/OpenWrapSDK$LogLevel;

    return-object v0
.end method

.method public static varargs info(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pubmatic/sdk/common/log/PMLog;->getInstance()Lcom/pubmatic/sdk/common/log/PMLog;

    move-result-object v0

    sget-object v1, Lcom/pubmatic/sdk/common/OpenWrapSDK$LogLevel;->Info:Lcom/pubmatic/sdk/common/OpenWrapSDK$LogLevel;

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/pubmatic/sdk/common/log/PMLog;->log(Ljava/lang/String;Lcom/pubmatic/sdk/common/OpenWrapSDK$LogLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private varargs log(Ljava/lang/String;Lcom/pubmatic/sdk/common/OpenWrapSDK$LogLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    invoke-virtual {p2}, Lcom/pubmatic/sdk/common/OpenWrapSDK$LogLevel;->getLevel()I

    move-result v0

    iget-object v1, p0, Lcom/pubmatic/sdk/common/log/PMLog;->mLogLevel:Lcom/pubmatic/sdk/common/OpenWrapSDK$LogLevel;

    invoke-virtual {v1}, Lcom/pubmatic/sdk/common/OpenWrapSDK$LogLevel;->getLevel()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v1, p3, p4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p3, v2, v0

    invoke-static {p4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x1

    aput-object p3, v2, p4

    const-string p3, "%s %s"

    invoke-static {v1, p3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    :goto_0
    new-instance p4, Lcom/pubmatic/sdk/common/log/PMLog$PMLogMessage;

    invoke-direct {p4, p1, p3, p2}, Lcom/pubmatic/sdk/common/log/PMLog$PMLogMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/pubmatic/sdk/common/OpenWrapSDK$LogLevel;)V

    :goto_1
    iget-object p1, p0, Lcom/pubmatic/sdk/common/log/PMLog;->loggers:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v0, p1, :cond_0

    iget-object p1, p0, Lcom/pubmatic/sdk/common/log/PMLog;->loggers:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/pubmatic/sdk/common/log/PMLog$PMLogging;

    invoke-interface {p1, p4}, Lcom/pubmatic/sdk/common/log/PMLog$PMLogging;->log(Lcom/pubmatic/sdk/common/log/PMLog$PMLogMessage;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    return-void
.end method

.method public static setLogLevel(Lcom/pubmatic/sdk/common/OpenWrapSDK$LogLevel;)V
    .locals 1

    invoke-static {}, Lcom/pubmatic/sdk/common/log/PMLog;->getInstance()Lcom/pubmatic/sdk/common/log/PMLog;

    move-result-object v0

    iput-object p0, v0, Lcom/pubmatic/sdk/common/log/PMLog;->mLogLevel:Lcom/pubmatic/sdk/common/OpenWrapSDK$LogLevel;

    return-void
.end method

.method public static varargs verbose(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pubmatic/sdk/common/log/PMLog;->getInstance()Lcom/pubmatic/sdk/common/log/PMLog;

    move-result-object v0

    sget-object v1, Lcom/pubmatic/sdk/common/OpenWrapSDK$LogLevel;->Verbose:Lcom/pubmatic/sdk/common/OpenWrapSDK$LogLevel;

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/pubmatic/sdk/common/log/PMLog;->log(Ljava/lang/String;Lcom/pubmatic/sdk/common/OpenWrapSDK$LogLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pubmatic/sdk/common/log/PMLog;->getInstance()Lcom/pubmatic/sdk/common/log/PMLog;

    move-result-object v0

    sget-object v1, Lcom/pubmatic/sdk/common/OpenWrapSDK$LogLevel;->Warn:Lcom/pubmatic/sdk/common/OpenWrapSDK$LogLevel;

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/pubmatic/sdk/common/log/PMLog;->log(Ljava/lang/String;Lcom/pubmatic/sdk/common/OpenWrapSDK$LogLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
