.class public final Lcom/google/android/gms/internal/gtm/zzae;
.super Lcom/google/android/gms/internal/gtm/zzan;
.source ""


# instance fields
.field private final zzvu:Lcom/google/android/gms/internal/gtm/zzbb;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/gtm/zzap;Lcom/google/android/gms/internal/gtm/zzar;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/gtm/zzan;-><init>(Lcom/google/android/gms/internal/gtm/zzap;)V

    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzbb;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/gtm/zzbb;-><init>(Lcom/google/android/gms/internal/gtm/zzap;Lcom/google/android/gms/internal/gtm/zzar;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzae;->zzvu:Lcom/google/android/gms/internal/gtm/zzbb;

    return-void
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/gtm/zzae;)Lcom/google/android/gms/internal/gtm/zzbb;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/gtm/zzae;->zzvu:Lcom/google/android/gms/internal/gtm/zzbb;

    return-object p0
.end method


# virtual methods
.method public final onServiceConnected()V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/analytics/zzk;->zzav()V

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzae;->zzvu:Lcom/google/android/gms/internal/gtm/zzbb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzbb;->onServiceConnected()V

    return-void
.end method

.method public final setLocalDispatchPeriod(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzan;->zzdb()V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "setLocalDispatchPeriod (sec)"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/gtm/zzam;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzam;->zzcq()Lcom/google/android/gms/analytics/zzk;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/gtm/zzaf;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/gtm/zzaf;-><init>(Lcom/google/android/gms/internal/gtm/zzae;I)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/zzk;->zza(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final start()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzae;->zzvu:Lcom/google/android/gms/internal/gtm/zzbb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzbb;->start()V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/gtm/zzas;)J
    .locals 5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzan;->zzdb()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/google/android/gms/analytics/zzk;->zzav()V

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzae;->zzvu:Lcom/google/android/gms/internal/gtm/zzbb;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/gtm/zzbb;->zza(Lcom/google/android/gms/internal/gtm/zzas;Z)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/gtm/zzae;->zzvu:Lcom/google/android/gms/internal/gtm/zzbb;

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/gtm/zzbb;->zzb(Lcom/google/android/gms/internal/gtm/zzas;)V

    :cond_0
    return-wide v0
.end method

.method public final zza(Lcom/google/android/gms/internal/gtm/zzbw;)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzan;->zzdb()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzam;->zzcq()Lcom/google/android/gms/analytics/zzk;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/gtm/zzak;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/gtm/zzak;-><init>(Lcom/google/android/gms/internal/gtm/zzae;Lcom/google/android/gms/internal/gtm/zzbw;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/zzk;->zza(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/gtm/zzcd;)V
    .locals 2

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzan;->zzdb()V

    const-string v0, "Hit delivery requested"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/gtm/zzam;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzam;->zzcq()Lcom/google/android/gms/analytics/zzk;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/gtm/zzai;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/gtm/zzai;-><init>(Lcom/google/android/gms/internal/gtm/zzae;Lcom/google/android/gms/internal/gtm/zzcd;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/zzk;->zza(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 2

    const-string v0, "campaign param can\'t be empty"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzam;->zzcq()Lcom/google/android/gms/analytics/zzk;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/gtm/zzah;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/gtm/zzah;-><init>(Lcom/google/android/gms/internal/gtm/zzae;Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/zzk;->zza(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zzaw()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzae;->zzvu:Lcom/google/android/gms/internal/gtm/zzbb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzan;->zzag()V

    return-void
.end method

.method public final zzch()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzan;->zzdb()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzam;->zzcq()Lcom/google/android/gms/analytics/zzk;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/gtm/zzaj;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/gtm/zzaj;-><init>(Lcom/google/android/gms/internal/gtm/zzae;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/zzk;->zza(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zzci()V
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzan;->zzdb()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzam;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzcp;->zza(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzcq;->zze(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.android.gms.analytics.ANALYTICS_DISPATCH"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.google.android.gms.analytics.AnalyticsService"

    invoke-direct {v2, v0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/gtm/zzae;->zza(Lcom/google/android/gms/internal/gtm/zzbw;)V

    return-void
.end method

.method public final zzcj()Z
    .locals 5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzan;->zzdb()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzam;->zzcq()Lcom/google/android/gms/analytics/zzk;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/gtm/zzal;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/gtm/zzal;-><init>(Lcom/google/android/gms/internal/gtm/zzae;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/zzk;->zza(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    const-wide/16 v1, 0x4

    const/4 v3, 0x0

    :try_start_0
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v4}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    const-string v1, "syncDispatchLocalHits timed out"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/gtm/zzam;->zzd(Ljava/lang/String;Ljava/lang/Object;)V

    return v3

    :catch_1
    move-exception v0

    const-string v1, "syncDispatchLocalHits failed"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/gtm/zzam;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    return v3

    :catch_2
    move-exception v0

    const-string v1, "syncDispatchLocalHits interrupted"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/gtm/zzam;->zzd(Ljava/lang/String;Ljava/lang/Object;)V

    return v3
.end method

.method public final zzck()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzan;->zzdb()V

    invoke-static {}, Lcom/google/android/gms/analytics/zzk;->zzav()V

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzae;->zzvu:Lcom/google/android/gms/internal/gtm/zzbb;

    invoke-static {}, Lcom/google/android/gms/analytics/zzk;->zzav()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzan;->zzdb()V

    const-string v1, "Service disconnected"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/gtm/zzam;->zzq(Ljava/lang/String;)V

    return-void
.end method

.method public final zzcl()V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/analytics/zzk;->zzav()V

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzae;->zzvu:Lcom/google/android/gms/internal/gtm/zzbb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzbb;->zzcl()V

    return-void
.end method
