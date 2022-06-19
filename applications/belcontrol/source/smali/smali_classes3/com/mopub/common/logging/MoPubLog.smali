.class public Lcom/mopub/common/logging/MoPubLog;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;,
        Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;,
        Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;,
        Lcom/mopub/common/logging/MoPubLog$AdLogEvent;,
        Lcom/mopub/common/logging/MoPubLog$MPLogEventType;,
        Lcom/mopub/common/logging/MoPubLog$LogLevel;,
        Lcom/mopub/common/logging/MoPubLog$LogLevelInt;
    }
.end annotation


# static fields
.field public static final LOGTAG:Ljava/lang/String; = "MoPub"

.field public static final d:Lcom/mopub/common/logging/MoPubLog;


# instance fields
.field public a:Lcom/mopub/common/logging/MoPubLog$LogLevel;

.field public b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/mopub/common/logging/MoPubLogger;",
            "Lcom/mopub/common/logging/MoPubLog$LogLevel;",
            ">;"
        }
    .end annotation
.end field

.field public c:Lcom/mopub/common/logging/MoPubLogger;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/mopub/common/logging/MoPubLog;

    invoke-direct {v0}, Lcom/mopub/common/logging/MoPubLog;-><init>()V

    sput-object v0, Lcom/mopub/common/logging/MoPubLog;->d:Lcom/mopub/common/logging/MoPubLog;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/mopub/common/logging/MoPubLog$LogLevel;->INFO:Lcom/mopub/common/logging/MoPubLog$LogLevel;

    iput-object v0, p0, Lcom/mopub/common/logging/MoPubLog;->a:Lcom/mopub/common/logging/MoPubLog$LogLevel;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mopub/common/logging/MoPubLog;->b:Ljava/util/Map;

    new-instance v0, Lcom/mopub/common/logging/MoPubDefaultLogger;

    invoke-direct {v0}, Lcom/mopub/common/logging/MoPubDefaultLogger;-><init>()V

    iput-object v0, p0, Lcom/mopub/common/logging/MoPubLog;->c:Lcom/mopub/common/logging/MoPubLogger;

    return-void
.end method

.method public static a()Lka;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lka<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    new-instance v1, Lka;

    const/4 v2, 0x4

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v3, v0}, Lka;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method

.method public static addLogger(Lcom/mopub/common/logging/MoPubLogger;)V
    .locals 1

    sget-object v0, Lcom/mopub/common/logging/MoPubLog;->d:Lcom/mopub/common/logging/MoPubLog;

    iget-object v0, v0, Lcom/mopub/common/logging/MoPubLog;->a:Lcom/mopub/common/logging/MoPubLog$LogLevel;

    invoke-static {p0, v0}, Lcom/mopub/common/logging/MoPubLog;->addLogger(Lcom/mopub/common/logging/MoPubLogger;Lcom/mopub/common/logging/MoPubLog$LogLevel;)V

    return-void
.end method

.method public static addLogger(Lcom/mopub/common/logging/MoPubLogger;Lcom/mopub/common/logging/MoPubLog$LogLevel;)V
    .locals 1

    sget-object v0, Lcom/mopub/common/logging/MoPubLog;->d:Lcom/mopub/common/logging/MoPubLog;

    iget-object v0, v0, Lcom/mopub/common/logging/MoPubLog;->b:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static varargs b(Lka;Ljava/lang/String;Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lka<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/mopub/common/logging/MoPubLog$MPLogEventType;",
            "[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    if-nez p2, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/mopub/common/logging/MoPubLog;->d:Lcom/mopub/common/logging/MoPubLog;

    iget-object v0, v0, Lcom/mopub/common/logging/MoPubLog;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mopub/common/logging/MoPubLogger;

    sget-object v2, Lcom/mopub/common/logging/MoPubLog;->d:Lcom/mopub/common/logging/MoPubLog;

    iget-object v3, v2, Lcom/mopub/common/logging/MoPubLog;->b:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v2, v2, Lcom/mopub/common/logging/MoPubLog;->b:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mopub/common/logging/MoPubLog$LogLevel;

    invoke-virtual {v2}, Lcom/mopub/common/logging/MoPubLog$LogLevel;->intValue()I

    move-result v2

    invoke-interface {p2}, Lcom/mopub/common/logging/MoPubLog$MPLogEventType;->getLogLevel()Lcom/mopub/common/logging/MoPubLog$LogLevel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mopub/common/logging/MoPubLog$LogLevel;->intValue()I

    move-result v3

    if-gt v2, v3, :cond_1

    iget-object v2, p0, Lka;->a:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lka;->b:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-interface {p2, p3}, Lcom/mopub/common/logging/MoPubLog$MPLogEventType;->getMessage([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v3, p1, v4}, Lcom/mopub/common/logging/MoPubLogger;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/mopub/common/logging/MoPubLog;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0, p1}, Lcom/mopub/common/logging/MoPubLog;->f(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0, p1}, Lcom/mopub/common/logging/MoPubLog;->f(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/mopub/common/logging/MoPubLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0, p1}, Lcom/mopub/common/logging/MoPubLog;->f(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static f(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    sget-object v0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM_WITH_THROWABLE:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    const/4 p1, 0x1

    aput-object p0, v1, p1

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return-void
.end method

.method public static getLogLevel()Lcom/mopub/common/logging/MoPubLog$LogLevel;
    .locals 1

    sget-object v0, Lcom/mopub/common/logging/MoPubLog;->d:Lcom/mopub/common/logging/MoPubLog;

    iget-object v0, v0, Lcom/mopub/common/logging/MoPubLog;->a:Lcom/mopub/common/logging/MoPubLog$LogLevel;

    return-object v0
.end method

.method public static i(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/mopub/common/logging/MoPubLog;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0, p1}, Lcom/mopub/common/logging/MoPubLog;->f(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static varargs log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/mopub/common/logging/MoPubLog;->a()Lka;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, p0, p1}, Lcom/mopub/common/logging/MoPubLog;->b(Lka;Ljava/lang/String;Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs log(Ljava/lang/String;Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V
    .locals 1

    invoke-static {}, Lcom/mopub/common/logging/MoPubLog;->a()Lka;

    move-result-object v0

    invoke-static {v0, p0, p1, p2}, Lcom/mopub/common/logging/MoPubLog;->b(Lka;Ljava/lang/String;Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return-void
.end method

.method public static setLogLevel(Lcom/mopub/common/logging/MoPubLog$LogLevel;)V
    .locals 1

    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    sget-object v0, Lcom/mopub/common/logging/MoPubLog;->d:Lcom/mopub/common/logging/MoPubLog;

    iput-object p0, v0, Lcom/mopub/common/logging/MoPubLog;->a:Lcom/mopub/common/logging/MoPubLog$LogLevel;

    iget-object v0, v0, Lcom/mopub/common/logging/MoPubLog;->c:Lcom/mopub/common/logging/MoPubLogger;

    invoke-static {v0, p0}, Lcom/mopub/common/logging/MoPubLog;->addLogger(Lcom/mopub/common/logging/MoPubLogger;Lcom/mopub/common/logging/MoPubLog$LogLevel;)V

    return-void
.end method

.method public static v(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/mopub/common/logging/MoPubLog;->v(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0, p1}, Lcom/mopub/common/logging/MoPubLog;->f(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static w(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/mopub/common/logging/MoPubLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0, p1}, Lcom/mopub/common/logging/MoPubLog;->f(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
