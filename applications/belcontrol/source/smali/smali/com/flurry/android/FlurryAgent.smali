.class public final Lcom/flurry/android/FlurryAgent;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/android/FlurryAgent$Builder;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "FlurryAgent"

.field private static b:Lcom/flurry/android/FlurryAgentListener;

.field private static final c:Lcom/flurry/sdk/kp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/kp<",
            "Lcom/flurry/sdk/lt;",
            ">;"
        }
    .end annotation
.end field

.field private static d:Z

.field private static e:I

.field private static f:J

.field private static g:Z

.field private static h:Z

.field private static i:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/flurry/android/FlurryAgent$1;

    invoke-direct {v0}, Lcom/flurry/android/FlurryAgent$1;-><init>()V

    sput-object v0, Lcom/flurry/android/FlurryAgent;->c:Lcom/flurry/sdk/kp;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/flurry/android/FlurryAgent;->d:Z

    const/4 v1, 0x5

    sput v1, Lcom/flurry/android/FlurryAgent;->e:I

    const-wide/16 v1, 0x2710

    sput-wide v1, Lcom/flurry/android/FlurryAgent;->f:J

    const/4 v1, 0x1

    sput-boolean v1, Lcom/flurry/android/FlurryAgent;->g:Z

    sput-boolean v0, Lcom/flurry/android/FlurryAgent;->h:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/flurry/android/FlurryAgent;->i:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Lcom/flurry/android/FlurryAgentListener;
    .locals 1

    sget-object v0, Lcom/flurry/android/FlurryAgent;->b:Lcom/flurry/android/FlurryAgentListener;

    return-object v0
.end method

.method public static synthetic a(Lcom/flurry/android/FlurryAgentListener;ZIJZZLandroid/content/Context;Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/flurry/android/FlurryAgent;->b:Lcom/flurry/android/FlurryAgentListener;

    invoke-static {p0}, Lcom/flurry/android/FlurryAgent;->setFlurryAgentListener(Lcom/flurry/android/FlurryAgentListener;)V

    sput-boolean p1, Lcom/flurry/android/FlurryAgent;->d:Z

    invoke-static {p1}, Lcom/flurry/android/FlurryAgent;->setLogEnabled(Z)V

    sput p2, Lcom/flurry/android/FlurryAgent;->e:I

    invoke-static {p2}, Lcom/flurry/android/FlurryAgent;->setLogLevel(I)V

    sput-wide p3, Lcom/flurry/android/FlurryAgent;->f:J

    invoke-static {p3, p4}, Lcom/flurry/android/FlurryAgent;->setContinueSessionMillis(J)V

    sput-boolean p5, Lcom/flurry/android/FlurryAgent;->g:Z

    invoke-static {p5}, Lcom/flurry/android/FlurryAgent;->setCaptureUncaughtExceptions(Z)V

    sput-boolean p6, Lcom/flurry/android/FlurryAgent;->h:Z

    invoke-static {p6}, Lcom/flurry/android/FlurryAgent;->setPulseEnabled(Z)V

    sput-object p8, Lcom/flurry/android/FlurryAgent;->i:Ljava/lang/String;

    invoke-static {p7, p8}, Lcom/flurry/android/FlurryAgent;->init(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static addOrigin(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/flurry/android/FlurryAgent;->addOrigin(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static addOrigin(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    sget-object p0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string p1, "Device SDK Version older than 10"

    invoke-static {p0, p1}, Lcom/flurry/sdk/ku;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/ki;->a()Lcom/flurry/sdk/ki;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/flurry/sdk/ki;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    sget-object p1, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string p2, ""

    invoke-static {p1, p2, p0}, Lcom/flurry/sdk/ku;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "originVersion not specified"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "originName not specified"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static addSessionProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    sget-object p0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string p1, "Device SDK Version older than 10"

    :goto_0
    invoke-static {p0, p1}, Lcom/flurry/sdk/ku;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/flurry/sdk/kg;->a()Lcom/flurry/sdk/kg;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    invoke-static {}, Lcom/flurry/sdk/jr;->c()Lcom/flurry/sdk/kf;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, p0, p1}, Lcom/flurry/sdk/kf;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Flurry SDK must be initialized before starting a session"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_1
    sget-object p0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string p1, "String name or value passed to addSessionProperty was null or empty."

    goto :goto_0
.end method

.method public static synthetic b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static clearLocation()V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v1, "Device SDK Version older than 10"

    invoke-static {v0, v1}, Lcom/flurry/sdk/ku;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/flurry/sdk/lx;->a()Lcom/flurry/sdk/lx;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "ExplicitLocation"

    invoke-virtual {v0, v2, v1}, Lcom/flurry/sdk/ly;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static endTimedEvent(Ljava/lang/String;)V
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    sget-object p0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v0, "Device SDK Version older than 10"

    invoke-static {p0, v0}, Lcom/flurry/sdk/ku;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez p0, :cond_1

    sget-object p0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v0, "String eventId passed to endTimedEvent was null."

    invoke-static {p0, v0}, Lcom/flurry/sdk/ku;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/hx;->a()Lcom/flurry/sdk/hx;

    invoke-static {}, Lcom/flurry/sdk/hx;->b()Lcom/flurry/sdk/jo;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/flurry/sdk/jo;->a(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to signify the end of event: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, v0}, Lcom/flurry/sdk/ku;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static endTimedEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    sget-object p0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string p1, "Device SDK Version older than 10"

    invoke-static {p0, p1}, Lcom/flurry/sdk/ku;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "String eventId passed to endTimedEvent was null."

    if-nez p0, :cond_1

    sget-object p0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/flurry/sdk/ku;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    if-nez p1, :cond_2

    sget-object p0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/flurry/sdk/ku;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/hx;->a()Lcom/flurry/sdk/hx;

    invoke-static {}, Lcom/flurry/sdk/hx;->b()Lcom/flurry/sdk/jo;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0, p0, p1}, Lcom/flurry/sdk/jo;->a(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    return-void

    :catchall_0
    move-exception p1

    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to signify the end of event: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p1}, Lcom/flurry/sdk/ku;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static getAgentVersion()I
    .locals 1

    invoke-static {}, Lcom/flurry/sdk/kh;->b()I

    move-result v0

    return v0
.end method

.method public static getReleaseVersion()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/flurry/sdk/kh;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSessionId()Ljava/lang/String;
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0xa

    if-ge v0, v2, :cond_0

    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v2, "Device SDK Version older than 10"

    invoke-static {v0, v2}, Lcom/flurry/sdk/ku;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_0
    invoke-static {}, Lcom/flurry/sdk/kg;->a()Lcom/flurry/sdk/kg;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    invoke-static {}, Lcom/flurry/sdk/jr;->b()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    sget-object v2, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v2, v3, v0}, Lcom/flurry/sdk/ku;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Flurry SDK must be initialized before starting a session"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static declared-synchronized init(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-class v0, Lcom/flurry/android/FlurryAgent;

    monitor-enter v0

    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    sget-object p0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string p1, "Device SDK Version older than 10"

    invoke-static {p0, p1}, Lcom/flurry/sdk/ku;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit v0

    return-void

    :cond_0
    if-eqz p0, :cond_3

    :try_start_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/flurry/sdk/kg;->a()Lcom/flurry/sdk/kg;

    move-result-object v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v2, "Flurry is already initialized"

    invoke-static {v1, v2}, Lcom/flurry/sdk/ku;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_1
    :try_start_2
    invoke-static {}, Lcom/flurry/sdk/mk;->a()V

    invoke-static {p0, p1}, Lcom/flurry/sdk/kg;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    :try_start_3
    sget-object p1, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v1, ""

    invoke-static {p1, v1, p0}, Lcom/flurry/sdk/ku;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit v0

    return-void

    :cond_2
    :try_start_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "API key not specified"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null context"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static isSessionActive()Z
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0xa

    if-ge v0, v2, :cond_0

    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v2, "Device SDK Version older than 10"

    invoke-static {v0, v2}, Lcom/flurry/sdk/ku;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/lu;->a()Lcom/flurry/sdk/lu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/lu;->c()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    sget-object v2, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v2, v3, v0}, Lcom/flurry/sdk/ku;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1
.end method

.method public static logEvent(Lcom/flurry/android/FlurrySyndicationEventName;Ljava/lang/String;Ljava/util/Map;)Lcom/flurry/android/FlurryEventRecordStatus;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/android/FlurrySyndicationEventName;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/flurry/android/FlurryEventRecordStatus;"
        }
    .end annotation

    sget-object v0, Lcom/flurry/android/FlurryEventRecordStatus;->kFlurryEventFailed:Lcom/flurry/android/FlurryEventRecordStatus;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    sget-object p0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string p1, "Device SDK Version older than 10"

    :goto_0
    invoke-static {p0, p1}, Lcom/flurry/sdk/ku;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    if-nez p0, :cond_1

    sget-object p0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string p1, "String eventName passed to logEvent was null."

    goto :goto_0

    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object p0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string p1, "String syndicationId passed to logEvent was null or empty."

    goto :goto_0

    :cond_2
    if-nez p2, :cond_3

    sget-object v1, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v2, "String parameters passed to logEvent was null."

    invoke-static {v1, v2}, Lcom/flurry/sdk/ku;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/hx;->a()Lcom/flurry/sdk/hx;

    invoke-virtual {p0}, Lcom/flurry/android/FlurrySyndicationEventName;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/flurry/sdk/hx;->b()Lcom/flurry/sdk/jo;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2, v1, p1, p2}, Lcom/flurry/sdk/jo;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/flurry/android/FlurryEventRecordStatus;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, p0

    goto :goto_1

    :catchall_0
    move-exception p1

    sget-object p2, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to log event: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/flurry/android/FlurrySyndicationEventName;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0, p1}, Lcom/flurry/sdk/ku;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    return-object v0
.end method

.method public static logEvent(Ljava/lang/String;)Lcom/flurry/android/FlurryEventRecordStatus;
    .locals 5

    sget-object v0, Lcom/flurry/android/FlurryEventRecordStatus;->kFlurryEventFailed:Lcom/flurry/android/FlurryEventRecordStatus;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    sget-object p0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v1, "Device SDK Version older than 10"

    :goto_0
    invoke-static {p0, v1}, Lcom/flurry/sdk/ku;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    if-nez p0, :cond_1

    sget-object p0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v1, "String eventId passed to logEvent was null."

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/hx;->a()Lcom/flurry/sdk/hx;

    invoke-static {}, Lcom/flurry/sdk/hx;->b()Lcom/flurry/sdk/jo;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v2, v3, v3}, Lcom/flurry/sdk/jo;->a(Ljava/lang/String;Ljava/util/Map;ZI)Lcom/flurry/android/FlurryEventRecordStatus;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, p0

    goto :goto_1

    :catchall_0
    move-exception v1

    sget-object v2, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to log event: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0, v1}, Lcom/flurry/sdk/ku;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    return-object v0
.end method

.method public static logEvent(Ljava/lang/String;Ljava/util/Map;)Lcom/flurry/android/FlurryEventRecordStatus;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/flurry/android/FlurryEventRecordStatus;"
        }
    .end annotation

    sget-object v0, Lcom/flurry/android/FlurryEventRecordStatus;->kFlurryEventFailed:Lcom/flurry/android/FlurryEventRecordStatus;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    sget-object p0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string p1, "Device SDK Version older than 10"

    :goto_0
    invoke-static {p0, p1}, Lcom/flurry/sdk/ku;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    if-nez p0, :cond_1

    sget-object p0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string p1, "String eventId passed to logEvent was null."

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    sget-object v1, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v2, "String parameters passed to logEvent was null."

    invoke-static {v1, v2}, Lcom/flurry/sdk/ku;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/hx;->a()Lcom/flurry/sdk/hx;

    const/4 v1, 0x0

    invoke-static {p0, p1, v1}, Lcom/flurry/sdk/hx;->a(Ljava/lang/String;Ljava/util/Map;I)Lcom/flurry/android/FlurryEventRecordStatus;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    sget-object v1, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to log event: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, p1}, Lcom/flurry/sdk/ku;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-object v0
.end method

.method public static logEvent(Ljava/lang/String;Ljava/util/Map;Z)Lcom/flurry/android/FlurryEventRecordStatus;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Lcom/flurry/android/FlurryEventRecordStatus;"
        }
    .end annotation

    sget-object v0, Lcom/flurry/android/FlurryEventRecordStatus;->kFlurryEventFailed:Lcom/flurry/android/FlurryEventRecordStatus;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    sget-object p0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string p1, "Device SDK Version older than 10"

    :goto_0
    invoke-static {p0, p1}, Lcom/flurry/sdk/ku;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    if-nez p0, :cond_1

    sget-object p0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string p1, "String eventId passed to logEvent was null."

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    sget-object v1, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v2, "String parameters passed to logEvent was null."

    invoke-static {v1, v2}, Lcom/flurry/sdk/ku;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/hx;->a()Lcom/flurry/sdk/hx;

    invoke-static {}, Lcom/flurry/sdk/hx;->b()Lcom/flurry/sdk/jo;

    move-result-object v1

    if-eqz v1, :cond_3

    const/4 v2, 0x0

    invoke-virtual {v1, p0, p1, p2, v2}, Lcom/flurry/sdk/jo;->a(Ljava/lang/String;Ljava/util/Map;ZI)Lcom/flurry/android/FlurryEventRecordStatus;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, p0

    goto :goto_1

    :catchall_0
    move-exception p1

    sget-object p2, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to log event: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0, p1}, Lcom/flurry/sdk/ku;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    return-object v0
.end method

.method public static logEvent(Ljava/lang/String;Z)Lcom/flurry/android/FlurryEventRecordStatus;
    .locals 4

    sget-object v0, Lcom/flurry/android/FlurryEventRecordStatus;->kFlurryEventFailed:Lcom/flurry/android/FlurryEventRecordStatus;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    sget-object p0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string p1, "Device SDK Version older than 10"

    :goto_0
    invoke-static {p0, p1}, Lcom/flurry/sdk/ku;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    if-nez p0, :cond_1

    sget-object p0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string p1, "String eventId passed to logEvent was null."

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/hx;->a()Lcom/flurry/sdk/hx;

    invoke-static {}, Lcom/flurry/sdk/hx;->b()Lcom/flurry/sdk/jo;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v2, p1, v3}, Lcom/flurry/sdk/jo;->a(Ljava/lang/String;Ljava/util/Map;ZI)Lcom/flurry/android/FlurryEventRecordStatus;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, p0

    goto :goto_1

    :catchall_0
    move-exception p1

    sget-object v1, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to log event: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, p1}, Lcom/flurry/sdk/ku;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    return-object v0
.end method

.method public static logPayment(Ljava/lang/String;Ljava/lang/String;IDLjava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/flurry/android/FlurryEventRecordStatus;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ID",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/flurry/android/FlurryEventRecordStatus;"
        }
    .end annotation

    sget-object v0, Lcom/flurry/android/FlurryEventRecordStatus;->kFlurryEventFailed:Lcom/flurry/android/FlurryEventRecordStatus;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    sget-object p0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string p1, "Device SDK Version older than 10"

    :goto_0
    invoke-static {p0, p1}, Lcom/flurry/sdk/ku;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    if-nez p0, :cond_1

    sget-object p0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string p1, "String productName passed to logEvent was null."

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    sget-object p0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string p1, "String productId passed to logEvent was null."

    goto :goto_0

    :cond_2
    if-nez p5, :cond_3

    sget-object p0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string p1, "String currency passed to logEvent was null."

    goto :goto_0

    :cond_3
    if-nez p6, :cond_4

    sget-object p0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string p1, "String transactionId passed to logEvent was null."

    goto :goto_0

    :cond_4
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "fl.ProductName"

    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "fl.ProductID"

    invoke-interface {v1, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "fl.Quantity"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "fl.Price"

    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string p2, "%1$.2f"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p3

    aput-object p3, v2, v3

    invoke-static {p1, p2, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "fl.Currency"

    invoke-interface {v1, p0, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "fl.TransactionIdentifier"

    invoke-interface {v1, p0, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result p0

    if-eqz p7, :cond_6

    invoke-interface {p7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p3

    invoke-interface {v1, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_5

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p3

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-interface {v1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_6
    invoke-static {}, Lcom/flurry/sdk/hx;->a()Lcom/flurry/sdk/hx;

    const-string p1, "Flurry.purchase"

    invoke-static {p1, v1, p0}, Lcom/flurry/sdk/hx;->a(Ljava/lang/String;Ljava/util/Map;I)Lcom/flurry/android/FlurryEventRecordStatus;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    sget-object p1, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string p2, "Failed to log event: Flurry.purchase"

    invoke-static {p1, p2, p0}, Lcom/flurry/sdk/ku;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-object v0
.end method

.method public static logPayment(ILandroid/content/Intent;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/content/Intent;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    sget-object p0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string p1, "Device SDK Version older than 10"

    invoke-static {p0, p1}, Lcom/flurry/sdk/ku;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "RESPONSE_CODE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v2, "Intent with no response code, assuming OK (known issue)"

    invoke-static {v0, v2}, Lcom/flurry/sdk/ku;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    instance-of v2, v0, Ljava/lang/Integer;

    if-eqz v2, :cond_2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_2
    instance-of v2, v0, Ljava/lang/Long;

    if-eqz v2, :cond_3

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-int v1, v0

    :cond_3
    :goto_0
    const-string v0, "INAPP_PURCHASE_DATA"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "INAPP_DATA_SIGNATURE"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, -0x1

    if-ne p0, v3, :cond_4

    if-nez v1, :cond_4

    invoke-static {}, Lcom/flurry/sdk/kg;->a()Lcom/flurry/sdk/kg;

    move-result-object p0

    iget-object p0, p0, Lcom/flurry/sdk/kg;->a:Landroid/content/Context;

    const-string v1, "productId"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/flurry/android/FlurryAgent$2;

    invoke-direct {v3, v2, v0, p1, p2}, Lcom/flurry/android/FlurryAgent$2;-><init>(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {p0, v1, v3}, Lcom/flurry/sdk/jn;->a(Landroid/content/Context;Ljava/lang/String;Lcom/flurry/sdk/jn$a;)V

    return-void

    :cond_4
    sget-object p2, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid logPayment call. resultCode:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", responseCode:"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", purchaseData:"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", dataSignature:"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/flurry/sdk/ku;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    sget-object p1, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string p2, "Failed to log event: Flurry.purchase"

    invoke-static {p1, p2, p0}, Lcom/flurry/sdk/ku;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static onEndSession(Landroid/content/Context;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    sget-object p0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v0, "Device SDK Version older than 10"

    invoke-static {p0, v0}, Lcom/flurry/sdk/ku;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "Null context"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {}, Lcom/flurry/sdk/kg;->a()Lcom/flurry/sdk/kg;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/lu;->a()Lcom/flurry/sdk/lu;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/flurry/sdk/lu;->c(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1, p0}, Lcom/flurry/sdk/ku;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Flurry SDK must be initialized before ending a session"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static onError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    sget-object p0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string p1, "Device SDK Version older than 10"

    invoke-static {p0, p1}, Lcom/flurry/sdk/ku;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez p0, :cond_1

    sget-object p0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string p1, "String errorId passed to onError was null."

    invoke-static {p0, p1}, Lcom/flurry/sdk/ku;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    if-nez p1, :cond_2

    sget-object p0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string p1, "String message passed to onError was null."

    invoke-static {p0, p1}, Lcom/flurry/sdk/ku;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    if-nez p2, :cond_3

    sget-object p0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string p1, "String errorClass passed to onError was null."

    invoke-static {p0, p1}, Lcom/flurry/sdk/ku;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/hx;->a()Lcom/flurry/sdk/hx;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    if-eqz v0, :cond_4

    array-length v1, v0

    const/4 v2, 0x2

    if-le v1, v2, :cond_4

    array-length v1, v0

    sub-int/2addr v1, v2

    new-array v3, v1, [Ljava/lang/StackTraceElement;

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v3

    :cond_4
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V

    invoke-static {}, Lcom/flurry/sdk/hx;->b()Lcom/flurry/sdk/jo;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0, p0, p1, p2, v1}, Lcom/flurry/sdk/jo;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    return-void

    :catchall_0
    move-exception p0

    sget-object p1, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string p2, ""

    invoke-static {p1, p2, p0}, Lcom/flurry/sdk/ku;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static onError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    sget-object p0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string p1, "Device SDK Version older than 10"

    invoke-static {p0, p1}, Lcom/flurry/sdk/ku;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez p0, :cond_1

    sget-object p0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string p1, "String errorId passed to onError was null."

    invoke-static {p0, p1}, Lcom/flurry/sdk/ku;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    if-nez p1, :cond_2

    sget-object p0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string p1, "String message passed to onError was null."

    invoke-static {p0, p1}, Lcom/flurry/sdk/ku;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    if-nez p2, :cond_3

    sget-object p0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string p1, "Throwable passed to onError was null."

    invoke-static {p0, p1}, Lcom/flurry/sdk/ku;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/hx;->a()Lcom/flurry/sdk/hx;

    invoke-static {p0, p1, p2}, Lcom/flurry/sdk/hx;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    sget-object p1, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string p2, ""

    invoke-static {p1, p2, p0}, Lcom/flurry/sdk/ku;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static onEvent(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    sget-object p0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v0, "Device SDK Version older than 10"

    invoke-static {p0, v0}, Lcom/flurry/sdk/ku;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez p0, :cond_1

    sget-object p0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v0, "String eventId passed to onEvent was null."

    invoke-static {p0, v0}, Lcom/flurry/sdk/ku;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/hx;->a()Lcom/flurry/sdk/hx;

    invoke-static {}, Lcom/flurry/sdk/hx;->b()Lcom/flurry/sdk/jo;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2, v2}, Lcom/flurry/sdk/jo;->a(Ljava/lang/String;Ljava/util/Map;ZI)Lcom/flurry/android/FlurryEventRecordStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    return-void

    :catchall_0
    move-exception p0

    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1, p0}, Lcom/flurry/sdk/ku;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static onEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    sget-object p0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string p1, "Device SDK Version older than 10"

    invoke-static {p0, p1}, Lcom/flurry/sdk/ku;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez p0, :cond_1

    sget-object p0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string p1, "String eventId passed to onEvent was null."

    invoke-static {p0, p1}, Lcom/flurry/sdk/ku;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    if-nez p1, :cond_2

    sget-object p0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string p1, "Parameters Map passed to onEvent was null."

    invoke-static {p0, p1}, Lcom/flurry/sdk/ku;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/hx;->a()Lcom/flurry/sdk/hx;

    invoke-static {}, Lcom/flurry/sdk/hx;->b()Lcom/flurry/sdk/jo;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1, v1}, Lcom/flurry/sdk/jo;->a(Ljava/lang/String;Ljava/util/Map;ZI)Lcom/flurry/android/FlurryEventRecordStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    return-void

    :catchall_0
    move-exception p0

    sget-object p1, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v0, ""

    invoke-static {p1, v0, p0}, Lcom/flurry/sdk/ku;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static onPageView()V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v1, "Device SDK Version older than 10"

    invoke-static {v0, v1}, Lcom/flurry/sdk/ku;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/hx;->a()Lcom/flurry/sdk/hx;

    invoke-static {}, Lcom/flurry/sdk/hx;->b()Lcom/flurry/sdk/jo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/flurry/sdk/jo;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/flurry/sdk/ku;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static onStartSession(Landroid/content/Context;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    sget-object p0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v0, "Device SDK Version older than 10"

    invoke-static {p0, v0}, Lcom/flurry/sdk/ku;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "Null context"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {}, Lcom/flurry/sdk/kg;->a()Lcom/flurry/sdk/kg;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/lu;->a()Lcom/flurry/sdk/lu;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/flurry/sdk/lu;->b(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1, p0}, Lcom/flurry/sdk/ku;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Flurry SDK must be initialized before starting a session"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static onStartSession(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;)V

    return-void
.end method

.method public static setAge(I)V
    .locals 6

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    sget-object p0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v0, "Device SDK Version older than 10"

    invoke-static {p0, v0}, Lcom/flurry/sdk/ku;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-lez p0, :cond_1

    const/16 v0, 0x6e

    if-ge p0, v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    int-to-long v2, p0

    const-wide v4, 0x7528ad000L

    mul-long v2, v2, v4

    sub-long/2addr v0, v2

    new-instance p0, Ljava/util/Date;

    invoke-direct {p0, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0}, Ljava/util/Date;->getYear()I

    move-result p0

    new-instance v0, Ljava/util/Date;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1, v1}, Ljava/util/Date;-><init>(III)V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {}, Lcom/flurry/sdk/lx;->a()Lcom/flurry/sdk/lx;

    move-result-object p0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "Age"

    invoke-virtual {p0, v1, v0}, Lcom/flurry/sdk/ly;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public static setCaptureUncaughtExceptions(Z)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    sget-object p0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v0, "Device SDK Version older than 10"

    invoke-static {p0, v0}, Lcom/flurry/sdk/ku;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/flurry/sdk/lx;->a()Lcom/flurry/sdk/lx;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const-string v1, "CaptureUncaughtExceptions"

    invoke-virtual {v0, v1, p0}, Lcom/flurry/sdk/ly;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static setContinueSessionMillis(J)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    sget-object p0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string p1, "Device SDK Version older than 10"

    invoke-static {p0, p1}, Lcom/flurry/sdk/ku;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-wide/16 v0, 0x1388

    cmp-long v2, p0, v0

    if-gez v2, :cond_1

    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid time set for session resumption: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/flurry/sdk/ku;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-static {}, Lcom/flurry/sdk/lx;->a()Lcom/flurry/sdk/lx;

    move-result-object v0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string p1, "ContinueSessionMillis"

    invoke-virtual {v0, p1, p0}, Lcom/flurry/sdk/ly;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static setFlurryAgentListener(Lcom/flurry/android/FlurryAgentListener;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    sget-object p0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v0, "Device SDK Version older than 10"

    invoke-static {p0, v0}, Lcom/flurry/sdk/ku;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "com.flurry.android.sdk.FlurrySessionEvent"

    if-nez p0, :cond_1

    sget-object p0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v1, "Listener cannot be null"

    invoke-static {p0, v1}, Lcom/flurry/sdk/ku;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/flurry/sdk/kq;->a()Lcom/flurry/sdk/kq;

    move-result-object p0

    sget-object v1, Lcom/flurry/android/FlurryAgent;->c:Lcom/flurry/sdk/kp;

    invoke-virtual {p0, v0, v1}, Lcom/flurry/sdk/kq;->b(Ljava/lang/String;Lcom/flurry/sdk/kp;)V

    return-void

    :cond_1
    sput-object p0, Lcom/flurry/android/FlurryAgent;->b:Lcom/flurry/android/FlurryAgentListener;

    invoke-static {}, Lcom/flurry/sdk/kq;->a()Lcom/flurry/sdk/kq;

    move-result-object p0

    sget-object v1, Lcom/flurry/android/FlurryAgent;->c:Lcom/flurry/sdk/kp;

    invoke-virtual {p0, v0, v1}, Lcom/flurry/sdk/kq;->a(Ljava/lang/String;Lcom/flurry/sdk/kp;)V

    return-void
.end method

.method public static setGender(B)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    sget-object p0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v0, "Device SDK Version older than 10"

    invoke-static {p0, v0}, Lcom/flurry/sdk/ku;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "Gender"

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    if-eq p0, v1, :cond_1

    invoke-static {}, Lcom/flurry/sdk/lx;->a()Lcom/flurry/sdk/lx;

    move-result-object p0

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/flurry/sdk/ly;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_1
    invoke-static {}, Lcom/flurry/sdk/lx;->a()Lcom/flurry/sdk/lx;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    invoke-virtual {v1, v0, p0}, Lcom/flurry/sdk/ly;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static setLocation(FF)V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    sget-object p0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string p1, "Device SDK Version older than 10"

    invoke-static {p0, p1}, Lcom/flurry/sdk/ku;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Landroid/location/Location;

    const-string v1, "Explicit"

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    float-to-double v1, p0

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setLatitude(D)V

    float-to-double p0, p1

    invoke-virtual {v0, p0, p1}, Landroid/location/Location;->setLongitude(D)V

    invoke-static {}, Lcom/flurry/sdk/lx;->a()Lcom/flurry/sdk/lx;

    move-result-object p0

    const-string p1, "ExplicitLocation"

    invoke-virtual {p0, p1, v0}, Lcom/flurry/sdk/ly;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static setLocationCriteria(Landroid/location/Criteria;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0xa

    if-ge p0, v0, :cond_0

    sget-object p0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v0, "Device SDK Version older than 10"

    invoke-static {p0, v0}, Lcom/flurry/sdk/ku;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static setLogEnabled(Z)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    sget-object p0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v0, "Device SDK Version older than 10"

    invoke-static {p0, v0}, Lcom/flurry/sdk/ku;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz p0, :cond_1

    invoke-static {}, Lcom/flurry/sdk/ku;->b()V

    return-void

    :cond_1
    invoke-static {}, Lcom/flurry/sdk/ku;->a()V

    return-void
.end method

.method public static setLogEvents(Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0xa

    if-ge p0, v0, :cond_0

    sget-object p0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v0, "Device SDK Version older than 10"

    invoke-static {p0, v0}, Lcom/flurry/sdk/ku;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static setLogLevel(I)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    sget-object p0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v0, "Device SDK Version older than 10"

    invoke-static {p0, v0}, Lcom/flurry/sdk/ku;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {p0}, Lcom/flurry/sdk/ku;->a(I)V

    return-void
.end method

.method public static setPulseEnabled(Z)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    sget-object p0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v0, "Device SDK Version older than 10"

    invoke-static {p0, v0}, Lcom/flurry/sdk/ku;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/flurry/sdk/lx;->a()Lcom/flurry/sdk/lx;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "ProtonEnabled"

    invoke-virtual {v0, v2, v1}, Lcom/flurry/sdk/ly;->a(Ljava/lang/String;Ljava/lang/Object;)V

    if-nez p0, :cond_1

    invoke-static {}, Lcom/flurry/sdk/lx;->a()Lcom/flurry/sdk/lx;

    move-result-object p0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v1, "analyticsEnabled"

    invoke-virtual {p0, v1, v0}, Lcom/flurry/sdk/ly;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public static setReportLocation(Z)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    sget-object p0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v0, "Device SDK Version older than 10"

    invoke-static {p0, v0}, Lcom/flurry/sdk/ku;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/flurry/sdk/lx;->a()Lcom/flurry/sdk/lx;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const-string v1, "ReportLocation"

    invoke-virtual {v0, v1, p0}, Lcom/flurry/sdk/ly;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static setSessionOrigin(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    sget-object p0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string p1, "Device SDK Version older than 10"

    :goto_0
    invoke-static {p0, p1}, Lcom/flurry/sdk/ku;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string p1, "String originName passed to setSessionOrigin was null or empty."

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/flurry/sdk/kg;->a()Lcom/flurry/sdk/kg;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    invoke-static {}, Lcom/flurry/sdk/jr;->c()Lcom/flurry/sdk/kf;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, p0}, Lcom/flurry/sdk/kf;->a(Ljava/lang/String;)V

    :cond_2
    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    invoke-static {}, Lcom/flurry/sdk/jr;->c()Lcom/flurry/sdk/kf;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0, p1}, Lcom/flurry/sdk/kf;->b(Ljava/lang/String;)V

    :cond_3
    return-void

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Flurry SDK must be initialized before starting a session"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static setUserId(Ljava/lang/String;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    sget-object p0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v0, "Device SDK Version older than 10"

    invoke-static {p0, v0}, Lcom/flurry/sdk/ku;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez p0, :cond_1

    sget-object p0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v0, "String userId passed to setUserId was null."

    invoke-static {p0, v0}, Lcom/flurry/sdk/ku;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-static {}, Lcom/flurry/sdk/lx;->a()Lcom/flurry/sdk/lx;

    move-result-object v0

    invoke-static {p0}, Lcom/flurry/sdk/md;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "UserId"

    invoke-virtual {v0, v1, p0}, Lcom/flurry/sdk/ly;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static setVersionName(Ljava/lang/String;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    sget-object p0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v0, "Device SDK Version older than 10"

    invoke-static {p0, v0}, Lcom/flurry/sdk/ku;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez p0, :cond_1

    sget-object p0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v0, "String versionName passed to setVersionName was null."

    invoke-static {p0, v0}, Lcom/flurry/sdk/ku;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-static {}, Lcom/flurry/sdk/lx;->a()Lcom/flurry/sdk/lx;

    move-result-object v0

    const-string v1, "VersionName"

    invoke-virtual {v0, v1, p0}, Lcom/flurry/sdk/ly;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
