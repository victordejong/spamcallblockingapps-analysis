.class public final Lcom/verizon/ads/JobScheduler;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/verizon/ads/Logger;

.field private static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/verizon/ads/Job;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Landroid/os/HandlerThread;

.field private static final d:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 20
    const-class v0, Lcom/verizon/ads/JobScheduler;

    invoke-static {v0}, Lcom/verizon/ads/Logger;->getInstance(Ljava/lang/Class;)Lcom/verizon/ads/Logger;

    move-result-object v0

    sput-object v0, Lcom/verizon/ads/JobScheduler;->a:Lcom/verizon/ads/Logger;

    .line 21
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/verizon/ads/JobScheduler;->b:Ljava/util/Map;

    .line 26
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "JobScheduler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 27
    sput-object v0, Lcom/verizon/ads/JobScheduler;->c:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 29
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/verizon/ads/JobScheduler;->d:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Landroid/os/Handler;
    .locals 1

    .line 18
    sget-object v0, Lcom/verizon/ads/JobScheduler;->d:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic b()Lcom/verizon/ads/Logger;
    .locals 1

    .line 18
    sget-object v0, Lcom/verizon/ads/JobScheduler;->a:Lcom/verizon/ads/Logger;

    return-object v0
.end method

.method static synthetic c()Ljava/util/Map;
    .locals 1

    .line 18
    sget-object v0, Lcom/verizon/ads/JobScheduler;->b:Ljava/util/Map;

    return-object v0
.end method

.method public static schedule(Landroid/content/Context;Lcom/verizon/ads/Job;)V
    .locals 5

    if-nez p0, :cond_0

    .line 69
    sget-object p0, Lcom/verizon/ads/JobScheduler;->a:Lcom/verizon/ads/Logger;

    const-string p1, "context cannot be null."

    invoke-virtual {p0, p1}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 75
    sget-object p0, Lcom/verizon/ads/JobScheduler;->a:Lcom/verizon/ads/Logger;

    const-string p1, "job cannot be null."

    invoke-virtual {p0, p1}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 p0, 0x3

    .line 1097
    invoke-static {p0}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 1098
    sget-object v0, Lcom/verizon/ads/JobScheduler;->a:Lcom/verizon/ads/Logger;

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/verizon/ads/Job;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const-string v4, "Scheduling job %d with job handler."

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 1101
    :cond_2
    sget-object v0, Lcom/verizon/ads/JobScheduler;->b:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/verizon/ads/Job;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/verizon/ads/Job;

    if-eqz v0, :cond_4

    .line 1106
    invoke-static {p0}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 1107
    sget-object p0, Lcom/verizon/ads/JobScheduler;->a:Lcom/verizon/ads/Logger;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/verizon/ads/Job;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v1, "Attempting to cancel previous job with id %d"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 1110
    :cond_3
    sget-object p0, Lcom/verizon/ads/JobScheduler;->d:Landroid/os/Handler;

    new-instance v1, Lcom/verizon/ads/JobScheduler$1;

    invoke-direct {v1, v0}, Lcom/verizon/ads/JobScheduler$1;-><init>(Lcom/verizon/ads/Job;)V

    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1119
    :cond_4
    new-instance p0, Lcom/verizon/ads/JobScheduler$2;

    invoke-direct {p0}, Lcom/verizon/ads/JobScheduler$2;-><init>()V

    .line 2032
    iput-object p0, p1, Lcom/verizon/ads/Job;->a:Lcom/verizon/ads/Job$JobStateListener;

    .line 1130
    sget-object p0, Lcom/verizon/ads/JobScheduler;->d:Landroid/os/Handler;

    new-instance v0, Lcom/verizon/ads/JobScheduler$3;

    invoke-direct {v0, p1}, Lcom/verizon/ads/JobScheduler$3;-><init>(Lcom/verizon/ads/Job;)V

    .line 1143
    invoke-virtual {p1}, Lcom/verizon/ads/Job;->getDelay()J

    move-result-wide v1

    .line 1130
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static schedule(Lcom/verizon/ads/Job;)V
    .locals 1

    .line 41
    invoke-static {}, Lcom/verizon/ads/VASAds;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 42
    sget-object p0, Lcom/verizon/ads/JobScheduler;->a:Lcom/verizon/ads/Logger;

    const-string v0, "VASAds must be initialized prior to scheduling a job."

    invoke-virtual {p0, v0}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    return-void

    .line 47
    :cond_0
    invoke-static {}, Lcom/verizon/ads/VASAds;->b()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    .line 49
    sget-object p0, Lcom/verizon/ads/JobScheduler;->a:Lcom/verizon/ads/Logger;

    const-string v0, "VASAds application context is null.  Cannot schedule job."

    invoke-virtual {p0, v0}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    return-void

    .line 54
    :cond_1
    invoke-static {v0, p0}, Lcom/verizon/ads/JobScheduler;->schedule(Landroid/content/Context;Lcom/verizon/ads/Job;)V

    return-void
.end method

.method public static shutdown()V
    .locals 1

    .line 88
    sget-object v0, Lcom/verizon/ads/JobScheduler;->c:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    :cond_0
    return-void
.end method
