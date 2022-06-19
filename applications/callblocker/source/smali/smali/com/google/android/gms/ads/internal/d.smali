.class public final Lcom/google/android/gms/ads/internal/d;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# annotations
.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/ads/internal/d;->b:J

    return-void
.end method

.method private final a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/yd;ZLcom/google/android/gms/internal/ads/uh;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 8
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->j()Lcom/google/android/gms/common/util/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/e;->b()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/google/android/gms/ads/internal/d;->b:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x1388

    cmp-long v0, v4, v6

    if-gez v0, :cond_1

    .line 9
    const-string/jumbo v0, "Not retrying to fetch app settings"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->e(Ljava/lang/String;)V

    .line 54
    :cond_0
    :goto_0
    return-void

    .line 11
    :cond_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->j()Lcom/google/android/gms/common/util/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/e;->b()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/gms/ads/internal/d;->b:J

    .line 13
    if-nez p4, :cond_2

    move v0, v1

    .line 22
    :goto_1
    if-eqz v0, :cond_0

    .line 24
    if-nez p1, :cond_6

    .line 25
    const-string/jumbo v0, "Context not provided to fetch application settings"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 15
    :cond_2
    invoke-virtual {p4}, Lcom/google/android/gms/internal/ads/uh;->a()J

    move-result-wide v4

    .line 16
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->j()Lcom/google/android/gms/common/util/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v6

    .line 17
    sub-long v4, v6, v4

    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->bH:Lcom/google/android/gms/internal/ads/ect;

    .line 19
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 20
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-lez v0, :cond_4

    move v0, v1

    .line 21
    :goto_2
    if-nez v0, :cond_3

    invoke-virtual {p4}, Lcom/google/android/gms/internal/ads/uh;->b()Z

    move-result v0

    if-nez v0, :cond_5

    :cond_3
    move v0, v1

    goto :goto_1

    :cond_4
    move v0, v2

    .line 20
    goto :goto_2

    :cond_5
    move v0, v2

    .line 21
    goto :goto_1

    .line 27
    :cond_6
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 28
    const-string/jumbo v0, "App settings could not be fetched. Required parameters missing"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 30
    :cond_7
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 31
    if-eqz v0, :cond_a

    :goto_3
    iput-object v0, p0, Lcom/google/android/gms/ads/internal/d;->a:Landroid/content/Context;

    .line 32
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->p()Lcom/google/android/gms/internal/ads/je;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/d;->a:Landroid/content/Context;

    .line 33
    invoke-virtual {v0, v1, p2}, Lcom/google/android/gms/internal/ads/je;->b(Landroid/content/Context;Lcom/google/android/gms/internal/ads/yd;)Lcom/google/android/gms/internal/ads/jn;

    move-result-object v0

    const-string/jumbo v1, "google.afma.config.fetchAppSettings"

    sget-object v2, Lcom/google/android/gms/internal/ads/ji;->a:Lcom/google/android/gms/internal/ads/jj;

    sget-object v3, Lcom/google/android/gms/internal/ads/ji;->a:Lcom/google/android/gms/internal/ads/jj;

    .line 34
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/jn;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/jg;Lcom/google/android/gms/internal/ads/jh;)Lcom/google/android/gms/internal/ads/jf;

    move-result-object v0

    .line 35
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 36
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 37
    const-string/jumbo v2, "app_id"

    invoke-virtual {v1, v2, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 40
    :cond_8
    :goto_4
    const-string/jumbo v2, "is_init"

    invoke-virtual {v1, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 41
    const-string/jumbo v2, "pn"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 42
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/jf;->b(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    .line 43
    sget-object v1, Lcom/google/android/gms/ads/internal/f;->a:Lcom/google/android/gms/internal/ads/cqt;

    .line 44
    sget-object v2, Lcom/google/android/gms/internal/ads/yg;->f:Lcom/google/android/gms/internal/ads/crs;

    .line 45
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/crg;->a(Lcom/google/android/gms/internal/ads/crt;Lcom/google/android/gms/internal/ads/cqt;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v1

    .line 46
    if-eqz p7, :cond_9

    .line 48
    sget-object v2, Lcom/google/android/gms/internal/ads/yg;->f:Lcom/google/android/gms/internal/ads/crs;

    .line 49
    invoke-interface {v0, p7, v2}, Lcom/google/android/gms/internal/ads/crt;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 50
    :cond_9
    const-string/jumbo v0, "ConfigLoader.maybeFetchNewAppSettings"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/yk;->a(Lcom/google/android/gms/internal/ads/crt;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 52
    :catch_0
    move-exception v0

    .line 53
    const-string/jumbo v1, "Error requesting application settings"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/uu;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_a
    move-object v0, p1

    .line 31
    goto :goto_3

    .line 38
    :cond_b
    :try_start_1
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 39
    const-string/jumbo v2, "ad_unit_id"

    invoke-virtual {v1, v2, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/yd;Ljava/lang/String;Lcom/google/android/gms/internal/ads/uh;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 5
    if-eqz p4, :cond_0

    invoke-virtual {p4}, Lcom/google/android/gms/internal/ads/uh;->d()Ljava/lang/String;

    move-result-object v5

    .line 6
    :goto_0
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v6, p3

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/ads/internal/d;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/yd;ZLcom/google/android/gms/internal/ads/uh;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 7
    return-void

    :cond_0
    move-object v5, v7

    .line 5
    goto :goto_0
.end method

.method public final a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/yd;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 3
    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move-object v6, v4

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/ads/internal/d;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/yd;ZLcom/google/android/gms/internal/ads/uh;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 4
    return-void
.end method
