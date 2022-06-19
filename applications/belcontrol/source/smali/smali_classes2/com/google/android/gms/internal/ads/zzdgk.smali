.class public final Lcom/google/android/gms/internal/ads/zzdgk;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdfi;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdfi<",
        "Lcom/google/android/gms/internal/ads/zzdgl;",
        ">;"
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final executor:Ljava/util/concurrent/Executor;

.field private final zzbqd:Lcom/google/android/gms/internal/ads/zzayo;

.field private final zzfri:Ljava/util/concurrent/ScheduledExecutorService;

.field private final zzgqc:I

.field private final zzhdv:Lcom/google/android/gms/internal/ads/zzayk;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzayk;ILandroid/content/Context;Lcom/google/android/gms/internal/ads/zzayo;Ljava/util/concurrent/ScheduledExecutorService;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdgk;->zzhdv:Lcom/google/android/gms/internal/ads/zzayk;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzdgk;->zzgqc:I

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdgk;->context:Landroid/content/Context;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdgk;->zzbqd:Lcom/google/android/gms/internal/ads/zzayo;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzdgk;->zzfri:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzdgk;->executor:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final zzasy()Lcom/google/android/gms/internal/ads/zzdzw;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzdzw<",
            "Lcom/google/android/gms/internal/ads/zzdgl;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdgn;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzdgn;-><init>(Lcom/google/android/gms/internal/ads/zzdgk;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdgk;->executor:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdzk;->zza(Lcom/google/android/gms/internal/ads/zzdyv;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdzf;->zzg(Lcom/google/android/gms/internal/ads/zzdzw;)Lcom/google/android/gms/internal/ads/zzdzf;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdgm;->zzeaj:Lcom/google/android/gms/internal/ads/zzdvz;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdgk;->executor:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzdzf;->zza(Lcom/google/android/gms/internal/ads/zzdvz;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdzf;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzabp;->zzcpo:Lcom/google/android/gms/internal/ads/zzaba;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqr()Lcom/google/android/gms/internal/ads/zzabl;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzabl;->zzd(Lcom/google/android/gms/internal/ads/zzaba;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzdgk;->zzfri:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzdzf;->zza(JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/ads/zzdzf;

    move-result-object v0

    const-class v1, Ljava/lang/Exception;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzdgp;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/zzdgp;-><init>(Lcom/google/android/gms/internal/ads/zzdgk;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdzy;->zzbaf()Ljava/util/concurrent/Executor;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzdzf;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzdvz;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdzf;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic zzatu()Lcom/google/android/gms/internal/ads/zzdzw;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdgk;->zzhdv:Lcom/google/android/gms/internal/ads/zzayk;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdgk;->context:Landroid/content/Context;

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzdgk;->zzgqc:I

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzayk;->zzb(Landroid/content/Context;I)Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic zzb(Ljava/lang/Exception;)Lcom/google/android/gms/internal/ads/zzdgl;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdgk;->zzbqd:Lcom/google/android/gms/internal/ads/zzayo;

    const-string v1, "AttestationTokenSignal"

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzayo;->zza(Ljava/lang/Throwable;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method
