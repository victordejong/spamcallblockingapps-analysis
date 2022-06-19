.class Lcom/amazon/device/ads/DtbMetrics$Submitter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/DtbMetrics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Submitter"
.end annotation


# static fields
.field public static final a:Lcom/amazon/device/ads/DtbMetrics$Submitter;


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/amazon/device/ads/DtbMetrics;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 117
    new-instance v0, Lcom/amazon/device/ads/DtbMetrics$Submitter;

    invoke-direct {v0}, Lcom/amazon/device/ads/DtbMetrics$Submitter;-><init>()V

    sput-object v0, Lcom/amazon/device/ads/DtbMetrics$Submitter;->a:Lcom/amazon/device/ads/DtbMetrics$Submitter;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    const-class v0, Lcom/amazon/device/ads/DtbMetrics$Submitter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/DtbMetrics$Submitter;->b:Ljava/lang/String;

    .line 121
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/amazon/device/ads/DtbMetrics$Submitter;->c:Ljava/util/Queue;

    return-void
.end method

.method private synthetic a()V
    .locals 8

    const-string v0, "Metrics submission failed- Sequence "

    .line 134
    invoke-static {}, Lcom/amazon/device/ads/DtbLog;->b()V

    .line 2147
    iget-object v1, p0, Lcom/amazon/device/ads/DtbMetrics$Submitter;->c:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2148
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/device/ads/DtbMetrics;

    const/4 v5, 0x1

    add-int/2addr v3, v5

    .line 2150
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "Starting metrics submission - Sequence "

    invoke-virtual {v7, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lcom/amazon/device/ads/DtbLog;->b()V

    .line 3089
    iget-object v6, v4, Lcom/amazon/device/ads/DtbMetrics;->c:Ljava/lang/String;

    if-nez v6, :cond_0

    .line 2152
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 2153
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "No metric url found- Sequence "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", skipping.."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/amazon/device/ads/DtbLog;->b()V

    goto :goto_0

    .line 2157
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 4089
    iget-object v7, v4, Lcom/amazon/device/ads/DtbMetrics;->c:Ljava/lang/String;

    .line 2157
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5081
    invoke-virtual {v4}, Lcom/amazon/device/ads/DtbMetrics;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/amazon/device/ads/DtbCommonUtils;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2157
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2159
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "Metrics URL:"

    invoke-virtual {v7, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lcom/amazon/device/ads/DtbLog;->b()V

    .line 2161
    :try_start_0
    new-instance v6, Lcom/amazon/device/ads/DtbHttpClient;

    invoke-direct {v6, v4}, Lcom/amazon/device/ads/DtbHttpClient;-><init>(Ljava/lang/String;)V

    .line 2162
    invoke-static {}, Lcom/amazon/device/ads/DtbDebugProperties;->b()Z

    move-result v4

    .line 5089
    iput-boolean v4, v6, Lcom/amazon/device/ads/DtbHttpClient;->c:Z

    .line 2163
    invoke-virtual {v6}, Lcom/amazon/device/ads/DtbHttpClient;->b()V

    .line 5111
    iget v4, v6, Lcom/amazon/device/ads/DtbHttpClient;->b:I

    const/16 v6, 0xc8

    if-ne v4, v6, :cond_1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_2

    const-string v4, "Metrics submitted- Sequence "

    .line 2166
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lcom/amazon/device/ads/DtbLog;->b()V

    .line 2167
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_0

    .line 2169
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", response invalid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/amazon/device/ads/DtbLog;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    .line 2173
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", encountered error:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/amazon/device/ads/DtbLog;->b()V

    .line 136
    :cond_3
    :goto_2
    invoke-static {}, Lcom/amazon/device/ads/DtbLog;->b()V

    return-void
.end method

.method public static synthetic lambda$0jBw3RyIOF2xrD1SfJeNuoHcO4c(Lcom/amazon/device/ads/DtbMetrics$Submitter;)V
    .locals 0

    invoke-direct {p0}, Lcom/amazon/device/ads/DtbMetrics$Submitter;->a()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/amazon/device/ads/DtbMetrics;)V
    .locals 4

    .line 1085
    iget-object v0, p1, Lcom/amazon/device/ads/DtbMetrics;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 129
    iget-object v0, p0, Lcom/amazon/device/ads/DtbMetrics$Submitter;->c:Ljava/util/Queue;

    invoke-virtual {p1}, Lcom/amazon/device/ads/DtbMetrics;->a()Lcom/amazon/device/ads/DtbMetrics;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 1111
    iget-object v0, p1, Lcom/amazon/device/ads/DtbMetrics;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1112
    iget-object p1, p1, Lcom/amazon/device/ads/DtbMetrics;->b:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 132
    invoke-static {}, Lcom/amazon/device/ads/DtbLog;->b()V

    .line 133
    invoke-static {}, Lcom/amazon/device/ads/DtbThreadService;->a()Lcom/amazon/device/ads/DtbThreadService;

    move-result-object p1

    new-instance v0, Lcom/amazon/device/ads/-$$Lambda$DtbMetrics$Submitter$0jBw3RyIOF2xrD1SfJeNuoHcO4c;

    invoke-direct {v0, p0}, Lcom/amazon/device/ads/-$$Lambda$DtbMetrics$Submitter$0jBw3RyIOF2xrD1SfJeNuoHcO4c;-><init>(Lcom/amazon/device/ads/DtbMetrics$Submitter;)V

    .line 2063
    :try_start_0
    iget-boolean v1, p1, Lcom/amazon/device/ads/DtbThreadService;->a:Z

    if-nez v1, :cond_1

    .line 2064
    iget-object v1, p1, Lcom/amazon/device/ads/DtbThreadService;->c:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 2065
    invoke-static {v1}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    iput-object v1, p1, Lcom/amazon/device/ads/DtbThreadService;->c:Ljava/util/concurrent/ScheduledExecutorService;

    .line 2067
    :cond_0
    iget-object p1, p1, Lcom/amazon/device/ads/DtbThreadService;->c:Ljava/util/concurrent/ScheduledExecutorService;

    sget-wide v1, Lcom/amazon/device/ads/DtbThreadService;->b:J

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, v0, v1, v2, v3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catch Ljava/lang/InternalError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2071
    invoke-static {p1}, Lcom/amazon/device/ads/DtbThreadService;->a(Ljava/lang/InternalError;)V

    .line 139
    :cond_1
    :goto_0
    invoke-static {}, Lcom/amazon/device/ads/DtbLog;->b()V

    :cond_2
    return-void
.end method
