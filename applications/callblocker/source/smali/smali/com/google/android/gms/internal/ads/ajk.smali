.class public final Lcom/google/android/gms/internal/ads/ajk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dtr;


# instance fields
.field private a:Lcom/google/android/gms/internal/ads/act;

.field private final b:Ljava/util/concurrent/Executor;

.field private final c:Lcom/google/android/gms/internal/ads/aiz;

.field private final d:Lcom/google/android/gms/common/util/e;

.field private e:Z

.field private f:Z

.field private g:Lcom/google/android/gms/internal/ads/ajd;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/aiz;Lcom/google/android/gms/common/util/e;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/ajk;->e:Z

    .line 3
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/ajk;->f:Z

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/ajd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/ajd;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ajk;->g:Lcom/google/android/gms/internal/ads/ajd;

    .line 5
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ajk;->b:Ljava/util/concurrent/Executor;

    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ajk;->c:Lcom/google/android/gms/internal/ads/aiz;

    .line 7
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/ajk;->d:Lcom/google/android/gms/common/util/e;

    .line 8
    return-void
.end method

.method private final c()V
    .locals 3

    .prologue
    .line 9
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ajk;->c:Lcom/google/android/gms/internal/ads/aiz;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ajk;->g:Lcom/google/android/gms/internal/ads/ajd;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/aiz;->a(Lcom/google/android/gms/internal/ads/ajd;)Lorg/json/JSONObject;

    move-result-object v0

    .line 10
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ajk;->a:Lcom/google/android/gms/internal/ads/act;

    if-eqz v1, :cond_0

    .line 11
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ajk;->b:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/google/android/gms/internal/ads/ajo;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/ads/ajo;-><init>(Lcom/google/android/gms/internal/ads/ajk;Lorg/json/JSONObject;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    :cond_0
    :goto_0
    return-void

    .line 13
    :catch_0
    move-exception v0

    .line 14
    const-string/jumbo v1, "Failed to call video active view js"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/uu;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/ajk;->e:Z

    .line 25
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/act;)V
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ajk;->a:Lcom/google/android/gms/internal/ads/act;

    .line 23
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/dtt;)V
    .locals 4

    .prologue
    .line 16
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ajk;->g:Lcom/google/android/gms/internal/ads/ajd;

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/ajk;->f:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, v1, Lcom/google/android/gms/internal/ads/ajd;->a:Z

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ajk;->g:Lcom/google/android/gms/internal/ads/ajd;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ajk;->d:Lcom/google/android/gms/common/util/e;

    invoke-interface {v1}, Lcom/google/android/gms/common/util/e;->b()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/google/android/gms/internal/ads/ajd;->c:J

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ajk;->g:Lcom/google/android/gms/internal/ads/ajd;

    iput-object p1, v0, Lcom/google/android/gms/internal/ads/ajd;->e:Lcom/google/android/gms/internal/ads/dtt;

    .line 19
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/ajk;->e:Z

    if-eqz v0, :cond_0

    .line 20
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/ajk;->c()V

    .line 21
    :cond_0
    return-void

    .line 16
    :cond_1
    iget-boolean v0, p1, Lcom/google/android/gms/internal/ads/dtt;->j:Z

    goto :goto_0
.end method

.method final synthetic a(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ajk;->a:Lcom/google/android/gms/internal/ads/act;

    const-string/jumbo v1, "AFMA_updateActiveView"

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/ads/act;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public final a(Z)V
    .locals 0

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/ajk;->f:Z

    .line 30
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/ajk;->e:Z

    .line 27
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/ajk;->c()V

    .line 28
    return-void
.end method
