.class public final Lcom/google/android/gms/internal/ads/akh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/eeg;


# instance fields
.field a:Lcom/google/android/gms/internal/ads/adt;

.field b:Z

.field c:Z

.field private final d:Ljava/util/concurrent/Executor;

.field private final e:Lcom/google/android/gms/internal/ads/ajs;

.field private final f:Lcom/google/android/gms/common/util/f;

.field private g:Lcom/google/android/gms/internal/ads/ajw;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/ajs;Lcom/google/android/gms/common/util/f;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/akh;->b:Z

    .line 3
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/akh;->c:Z

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/ajw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/ajw;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/akh;->g:Lcom/google/android/gms/internal/ads/ajw;

    .line 5
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/akh;->d:Ljava/util/concurrent/Executor;

    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/akh;->e:Lcom/google/android/gms/internal/ads/ajs;

    .line 7
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/akh;->f:Lcom/google/android/gms/common/util/f;

    return-void
.end method


# virtual methods
.method final a()V
    .locals 3

    .line 9
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/akh;->e:Lcom/google/android/gms/internal/ads/ajs;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/akh;->g:Lcom/google/android/gms/internal/ads/ajw;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/ajs;->a(Lcom/google/android/gms/internal/ads/ajw;)Lorg/json/JSONObject;

    move-result-object v0

    .line 10
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/akh;->a:Lcom/google/android/gms/internal/ads/adt;

    if-eqz v1, :cond_0

    .line 11
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/akh;->d:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/google/android/gms/internal/ads/akg;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/ads/akg;-><init>(Lcom/google/android/gms/internal/ads/akh;Lorg/json/JSONObject;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Failed to call video active view js"

    .line 14
    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zza(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/eeh;)V
    .locals 3

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/akh;->g:Lcom/google/android/gms/internal/ads/ajw;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/akh;->c:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-boolean v1, p1, Lcom/google/android/gms/internal/ads/eeh;->j:Z

    :goto_0
    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/ajw;->a:Z

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/akh;->g:Lcom/google/android/gms/internal/ads/ajw;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/akh;->f:Lcom/google/android/gms/common/util/f;

    invoke-interface {v1}, Lcom/google/android/gms/common/util/f;->b()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/ajw;->c:J

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/akh;->g:Lcom/google/android/gms/internal/ads/ajw;

    iput-object p1, v0, Lcom/google/android/gms/internal/ads/ajw;->e:Lcom/google/android/gms/internal/ads/eeh;

    .line 19
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/akh;->b:Z

    if-eqz p1, :cond_1

    .line 20
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/akh;->a()V

    :cond_1
    return-void
.end method
