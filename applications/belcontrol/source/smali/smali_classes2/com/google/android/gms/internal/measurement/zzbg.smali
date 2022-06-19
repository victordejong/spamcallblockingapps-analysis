.class public abstract Lcom/google/android/gms/internal/measurement/zzbg;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final zzh:J

.field public final zzi:J

.field public final zzj:Z

.field public final synthetic zzk:Lcom/google/android/gms/internal/measurement/zzbr;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/measurement/zzbr;Z)V
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzbg;->zzk:Lcom/google/android/gms/internal/measurement/zzbr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/zzbr;->zza:Lcom/google/android/gms/common/util/Clock;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzbg;->zzh:J

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzbr;->zza:Lcom/google/android/gms/common/util/Clock;

    invoke-interface {p1}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzbg;->zzi:J

    iput-boolean p2, p0, Lcom/google/android/gms/internal/measurement/zzbg;->zzj:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzbg;->zzk:Lcom/google/android/gms/internal/measurement/zzbr;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzbr;->zzK(Lcom/google/android/gms/internal/measurement/zzbr;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzbg;->zzb()V

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzbg;->zza()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzbg;->zzk:Lcom/google/android/gms/internal/measurement/zzbr;

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/google/android/gms/internal/measurement/zzbg;->zzj:Z

    invoke-static {v1, v0, v2, v3}, Lcom/google/android/gms/internal/measurement/zzbr;->zzL(Lcom/google/android/gms/internal/measurement/zzbr;Ljava/lang/Exception;ZZ)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzbg;->zzb()V

    return-void
.end method

.method public abstract zza()V
.end method

.method public zzb()V
    .locals 0

    return-void
.end method
