.class public final Lcom/google/android/gms/internal/ads/pv0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/qj;


# instance fields
.field private d:Lcom/google/android/gms/internal/ads/wn0;

.field private final e:Ljava/util/concurrent/Executor;

.field private final f:Lcom/google/android/gms/internal/ads/av0;

.field private final g:Lcom/google/android/gms/common/util/e;

.field private h:Z

.field private i:Z

.field private final j:Lcom/google/android/gms/internal/ads/dv0;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/av0;Lcom/google/android/gms/common/util/e;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/pv0;->h:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/pv0;->i:Z

    new-instance v0, Lcom/google/android/gms/internal/ads/dv0;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/dv0;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/pv0;->j:Lcom/google/android/gms/internal/ads/dv0;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/pv0;->e:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/pv0;->f:Lcom/google/android/gms/internal/ads/av0;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/pv0;->g:Lcom/google/android/gms/common/util/e;

    return-void
.end method

.method private final i()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pv0;->f:Lcom/google/android/gms/internal/ads/av0;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/pv0;->j:Lcom/google/android/gms/internal/ads/dv0;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/av0;->a(Lcom/google/android/gms/internal/ads/dv0;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/pv0;->d:Lcom/google/android/gms/internal/ads/wn0;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/pv0;->e:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/google/android/gms/internal/ads/nv0;

    .line 2
    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/ads/nv0;-><init>(Lcom/google/android/gms/internal/ads/pv0;Lorg/json/JSONObject;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Failed to call video active view js"

    .line 3
    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/o1;->l(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public final Y(Lcom/google/android/gms/internal/ads/pj;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pv0;->j:Lcom/google/android/gms/internal/ads/dv0;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/pv0;->i:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 2
    :cond_0
    iget-boolean v1, p1, Lcom/google/android/gms/internal/ads/pj;->j:Z

    .line 3
    :goto_0
    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/dv0;->a:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/pv0;->g:Lcom/google/android/gms/common/util/e;

    invoke-interface {v1}, Lcom/google/android/gms/common/util/e;->b()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/dv0;->d:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pv0;->j:Lcom/google/android/gms/internal/ads/dv0;

    iput-object p1, v0, Lcom/google/android/gms/internal/ads/dv0;->f:Lcom/google/android/gms/internal/ads/pj;

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/pv0;->h:Z

    if-eqz p1, :cond_1

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/pv0;->i()V

    :cond_1
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/wn0;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/pv0;->d:Lcom/google/android/gms/internal/ads/wn0;

    return-void
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/pv0;->h:Z

    return-void
.end method

.method public final c()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/pv0;->h:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/pv0;->i()V

    return-void
.end method

.method public final d(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/pv0;->i:Z

    return-void
.end method

.method final synthetic e(Lorg/json/JSONObject;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pv0;->d:Lcom/google/android/gms/internal/ads/wn0;

    const-string v1, "AFMA_updateActiveView"

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/ads/g50;->E0(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method
