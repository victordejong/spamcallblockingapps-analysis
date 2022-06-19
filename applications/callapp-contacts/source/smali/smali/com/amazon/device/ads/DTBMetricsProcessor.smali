.class public Lcom/amazon/device/ads/DTBMetricsProcessor;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static a:Ljava/lang/String; = "mediation_latency"

.field static b:Ljava/lang/String; = "lost_bid"

.field static c:Ljava/lang/String; = "fetch_latency"

.field static d:Ljava/lang/String; = "fetch_failure"

.field static e:Ljava/lang/String; = "alert_sdk_wrapping"

.field static f:Ljava/lang/String; = "alert_sdk_wrapping_v2"

.field private static h:Lcom/amazon/device/ads/DTBMetricsProcessor; = null

.field private static k:Ljava/lang/String; = "DTB_Metrics"


# instance fields
.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/device/ads/DTBMetricReport;",
            ">;"
        }
    .end annotation
.end field

.field private i:Z

.field private final j:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    new-instance v0, Lcom/amazon/device/ads/DTBMetricsProcessor;

    invoke-direct {v0}, Lcom/amazon/device/ads/DTBMetricsProcessor;-><init>()V

    sput-object v0, Lcom/amazon/device/ads/DTBMetricsProcessor;->h:Lcom/amazon/device/ads/DTBMetricsProcessor;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/amazon/device/ads/DTBMetricsProcessor;->j:Ljava/lang/Object;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/device/ads/DTBMetricsProcessor;->g:Ljava/util/List;

    return-void
.end method

.method static a()Lcom/amazon/device/ads/DTBMetricsProcessor;
    .locals 1

    .line 36
    sget-object v0, Lcom/amazon/device/ads/DTBMetricsProcessor;->h:Lcom/amazon/device/ads/DTBMetricsProcessor;

    return-object v0
.end method

.method private static b(Lcom/amazon/device/ads/DTBMetricReport;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 165
    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBMetricReport;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBMetricReport;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 168
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBMetricReport;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 166
    :cond_1
    :goto_0
    sget-object v0, Lcom/amazon/device/ads/DtbConstants;->b:Ljava/lang/String;

    .line 171
    :goto_1
    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBMetricReport;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x3

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBMetricReport;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v4

    .line 172
    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBMetricReport;->a()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v3

    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBMetricReport;->c()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v2

    .line 173
    invoke-static {}, Lcom/amazon/device/ads/DTBMetricsProcessor;->e()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v5

    const-string p0, "%s/x/px/%s/%s%s"

    .line 172
    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_2
    new-array v1, v5, [Ljava/lang/Object;

    aput-object v0, v1, v4

    .line 175
    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBMetricReport;->c()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v3

    .line 176
    invoke-static {}, Lcom/amazon/device/ads/DTBMetricsProcessor;->e()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v2

    const-string p0, "%s/x/px/p/PH/%s%s"

    .line 175
    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_2
    return-object p0
.end method

.method private c()V
    .locals 6

    .line 106
    iget-object v0, p0, Lcom/amazon/device/ads/DTBMetricsProcessor;->j:Ljava/lang/Object;

    monitor-enter v0

    .line 107
    :try_start_0
    iget-boolean v1, p0, Lcom/amazon/device/ads/DTBMetricsProcessor;->i:Z

    if-eqz v1, :cond_0

    .line 108
    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 110
    iput-boolean v1, p0, Lcom/amazon/device/ads/DTBMetricsProcessor;->i:Z

    .line 111
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    :goto_0
    iget-object v0, p0, Lcom/amazon/device/ads/DTBMetricsProcessor;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_2

    .line 114
    iget-object v0, p0, Lcom/amazon/device/ads/DTBMetricsProcessor;->g:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/device/ads/DTBMetricReport;

    .line 115
    invoke-static {}, Lcom/amazon/device/ads/DTBMetricsConfiguration;->getInstance()Lcom/amazon/device/ads/DTBMetricsConfiguration;

    move-result-object v2

    .line 1190
    iget-object v3, v0, Lcom/amazon/device/ads/DTBMetricReport;->a:Ljava/lang/String;

    .line 115
    invoke-virtual {v2, v3}, Lcom/amazon/device/ads/DTBMetricsConfiguration;->isTypeEnabled(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 116
    sget-object v1, Lcom/amazon/device/ads/DTBMetricsProcessor;->k:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Report type:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2190
    iget-object v0, v0, Lcom/amazon/device/ads/DTBMetricReport;->a:Ljava/lang/String;

    .line 116
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is ignored"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/amazon/device/ads/DtbLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    invoke-direct {p0}, Lcom/amazon/device/ads/DTBMetricsProcessor;->d()V

    goto :goto_0

    .line 121
    :cond_1
    :try_start_1
    invoke-static {v0}, Lcom/amazon/device/ads/DTBMetricsProcessor;->b(Lcom/amazon/device/ads/DTBMetricReport;)Ljava/lang/String;

    move-result-object v2

    .line 122
    sget-object v3, Lcom/amazon/device/ads/DTBMetricsProcessor;->k:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Report URL:\n"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\nType:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3190
    iget-object v5, v0, Lcom/amazon/device/ads/DTBMetricReport;->a:Ljava/lang/String;

    .line 122
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/amazon/device/ads/DtbLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    sget-object v3, Lcom/amazon/device/ads/DTBMetricsProcessor;->k:Ljava/lang/String;

    const-string v4, "Report:\n"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/amazon/device/ads/DtbLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    new-instance v0, Lcom/amazon/device/ads/DtbHttpClient;

    invoke-direct {v0, v2}, Lcom/amazon/device/ads/DtbHttpClient;-><init>(Ljava/lang/String;)V

    .line 125
    invoke-virtual {v0}, Lcom/amazon/device/ads/DtbHttpClient;->b()V

    .line 126
    invoke-direct {p0}, Lcom/amazon/device/ads/DTBMetricsProcessor;->d()V

    .line 127
    sget-object v0, Lcom/amazon/device/ads/DTBMetricsProcessor;->k:Ljava/lang/String;

    const-string v2, "Report Submission Success"

    invoke-static {v0, v2}, Lcom/amazon/device/ads/DtbLog;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 141
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "JSON Exception:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/device/ads/DtbLog;->a(Ljava/lang/String;)V

    .line 143
    invoke-direct {p0}, Lcom/amazon/device/ads/DTBMetricsProcessor;->d()V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    .line 136
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "IOException:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/device/ads/DtbLog;->a(Ljava/lang/String;)V

    .line 137
    sget-object v0, Lcom/amazon/device/ads/DTBMetricsProcessor;->k:Ljava/lang/String;

    const-string v2, "Report Submission Failure"

    invoke-static {v0, v2}, Lcom/amazon/device/ads/DtbLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_2
    move-exception v0

    .line 131
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Malformed Exception:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/device/ads/DtbLog;->a(Ljava/lang/String;)V

    .line 147
    :cond_2
    :goto_1
    iput-boolean v1, p0, Lcom/amazon/device/ads/DTBMetricsProcessor;->i:Z

    return-void

    :catchall_0
    move-exception v1

    .line 111
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private d()V
    .locals 3

    .line 158
    iget-object v0, p0, Lcom/amazon/device/ads/DTBMetricsProcessor;->g:Ljava/util/List;

    monitor-enter v0

    .line 159
    :try_start_0
    iget-object v1, p0, Lcom/amazon/device/ads/DTBMetricsProcessor;->g:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 160
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static e()Ljava/lang/String;
    .locals 4

    .line 182
    invoke-static {}, Lcom/amazon/device/ads/AdRegistration;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "?cb=0"

    return-object v0

    .line 186
    :cond_0
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide v2, 0x416312d000000000L    # 1.0E7

    mul-double v0, v0, v2

    double-to-int v0, v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 188
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2

    const-string v0, "?cb=%d"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private synthetic f()V
    .locals 0

    .line 98
    invoke-direct {p0}, Lcom/amazon/device/ads/DTBMetricsProcessor;->c()V

    return-void
.end method

.method public static synthetic lambda$x6QHGtIawWnzf15inJLT3hti7TE(Lcom/amazon/device/ads/DTBMetricsProcessor;)V
    .locals 0

    invoke-direct {p0}, Lcom/amazon/device/ads/DTBMetricsProcessor;->f()V

    return-void
.end method


# virtual methods
.method final a(Lcom/amazon/device/ads/DTBMetricReport$BidWrapper;Ljava/lang/String;)V
    .locals 0

    .line 67
    invoke-static {p1, p2}, Lcom/amazon/device/ads/DTBMetricReport;->a(Lcom/amazon/device/ads/DTBMetricReport$BidWrapper;Ljava/lang/String;)Lcom/amazon/device/ads/DTBMetricReport;

    move-result-object p1

    .line 69
    invoke-virtual {p0, p1}, Lcom/amazon/device/ads/DTBMetricsProcessor;->a(Lcom/amazon/device/ads/DTBMetricReport;)V

    .line 70
    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBMetricsProcessor;->b()V

    return-void
.end method

.method final a(Lcom/amazon/device/ads/DTBMetricReport;)V
    .locals 2

    .line 152
    iget-object v0, p0, Lcom/amazon/device/ads/DTBMetricsProcessor;->g:Ljava/util/List;

    monitor-enter v0

    .line 153
    :try_start_0
    iget-object v1, p0, Lcom/amazon/device/ads/DTBMetricsProcessor;->g:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method final b()V
    .locals 2

    .line 1044
    invoke-static {}, Lcom/amazon/device/ads/DTBAdUtil;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    invoke-static {}, Lcom/amazon/device/ads/DtbThreadService;->a()Lcom/amazon/device/ads/DtbThreadService;

    move-result-object v0

    new-instance v1, Lcom/amazon/device/ads/-$$Lambda$DTBMetricsProcessor$x6QHGtIawWnzf15inJLT3hti7TE;

    invoke-direct {v1, p0}, Lcom/amazon/device/ads/-$$Lambda$DTBMetricsProcessor$x6QHGtIawWnzf15inJLT3hti7TE;-><init>(Lcom/amazon/device/ads/DTBMetricsProcessor;)V

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/DtbThreadService;->a(Ljava/lang/Runnable;)V

    return-void

    .line 101
    :cond_0
    invoke-direct {p0}, Lcom/amazon/device/ads/DTBMetricsProcessor;->c()V

    return-void
.end method
