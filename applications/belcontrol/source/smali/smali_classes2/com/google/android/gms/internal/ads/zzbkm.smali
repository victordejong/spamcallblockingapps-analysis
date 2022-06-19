.class public final Lcom/google/android/gms/internal/ads/zzbkm;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzqw;


# instance fields
.field private final zzbqg:Lcom/google/android/gms/common/util/Clock;

.field private zzbwh:Z

.field private zzdjd:Lcom/google/android/gms/internal/ads/zzbeb;

.field private final zzfsg:Lcom/google/android/gms/internal/ads/zzbjx;

.field private final zzfsj:Ljava/util/concurrent/Executor;

.field private zzfsl:Lcom/google/android/gms/internal/ads/zzbkb;

.field private zzftg:Z


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzbjx;Lcom/google/android/gms/common/util/Clock;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbkm;->zzbwh:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbkm;->zzftg:Z

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbkb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbkb;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbkm;->zzfsl:Lcom/google/android/gms/internal/ads/zzbkb;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbkm;->zzfsj:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbkm;->zzfsg:Lcom/google/android/gms/internal/ads/zzbjx;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbkm;->zzbqg:Lcom/google/android/gms/common/util/Clock;

    return-void
.end method

.method private final zzajb()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbkm;->zzfsg:Lcom/google/android/gms/internal/ads/zzbjx;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbkm;->zzfsl:Lcom/google/android/gms/internal/ads/zzbkb;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbjx;->zza(Lcom/google/android/gms/internal/ads/zzbkb;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbkm;->zzdjd:Lcom/google/android/gms/internal/ads/zzbeb;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbkm;->zzfsj:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzbkl;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/ads/zzbkl;-><init>(Lcom/google/android/gms/internal/ads/zzbkm;Lorg/json/JSONObject;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Failed to call video active view js"

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zza(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public final disable()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbkm;->zzbwh:Z

    return-void
.end method

.method public final enable()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbkm;->zzbwh:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbkm;->zzajb()V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzqx;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbkm;->zzfsl:Lcom/google/android/gms/internal/ads/zzbkb;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbkm;->zzftg:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-boolean v1, p1, Lcom/google/android/gms/internal/ads/zzqx;->zzbrj:Z

    :goto_0
    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzbkb;->zzbrj:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbkm;->zzbqg:Lcom/google/android/gms/common/util/Clock;

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzbkb;->timestamp:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbkm;->zzfsl:Lcom/google/android/gms/internal/ads/zzbkb;

    iput-object p1, v0, Lcom/google/android/gms/internal/ads/zzbkb;->zzfss:Lcom/google/android/gms/internal/ads/zzqx;

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzbkm;->zzbwh:Z

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbkm;->zzajb()V

    :cond_1
    return-void
.end method

.method public final zzbf(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzbkm;->zzftg:Z

    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzbeb;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbkm;->zzdjd:Lcom/google/android/gms/internal/ads/zzbeb;

    return-void
.end method

.method public final synthetic zzi(Lorg/json/JSONObject;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbkm;->zzdjd:Lcom/google/android/gms/internal/ads/zzbeb;

    const-string v1, "AFMA_updateActiveView"

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzakw;->zzb(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method
