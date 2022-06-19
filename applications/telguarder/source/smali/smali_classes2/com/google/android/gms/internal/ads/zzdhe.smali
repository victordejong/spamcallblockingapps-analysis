.class public final Lcom/google/android/gms/internal/ads/zzdhe;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdfi;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdfi<",
        "Lcom/google/android/gms/internal/ads/zzdhf;",
        ">;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private zzfri:Ljava/util/concurrent/ScheduledExecutorService;

.field private zzhes:Lcom/google/android/gms/internal/ads/zzarw;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzarw;Ljava/util/concurrent/ScheduledExecutorService;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdhe;->zzhes:Lcom/google/android/gms/internal/ads/zzarw;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdhe;->zzfri:Ljava/util/concurrent/ScheduledExecutorService;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdhe;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final zzasy()Lcom/google/android/gms/internal/ads/zzdzw;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzdzw<",
            "Lcom/google/android/gms/internal/ads/zzdhf;",
            ">;"
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdhe;->zzhes:Lcom/google/android/gms/internal/ads/zzarw;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdhe;->context:Landroid/content/Context;

    .line 7
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzarw;->zzo(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzabp;->zzctx:Lcom/google/android/gms/internal/ads/zzaba;

    .line 9
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqr()Lcom/google/android/gms/internal/ads/zzabl;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzabl;->zzd(Lcom/google/android/gms/internal/ads/zzaba;)Ljava/lang/Object;

    move-result-object v1

    .line 10
    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzdhe;->zzfri:Ljava/util/concurrent/ScheduledExecutorService;

    .line 11
    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzdzk;->zza(Lcom/google/android/gms/internal/ads/zzdzw;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object v0

    .line 12
    sget-object v1, Lcom/google/android/gms/internal/ads/zzdhh;->zzeaj:Lcom/google/android/gms/internal/ads/zzdvz;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzazp;->zzeic:Lcom/google/android/gms/internal/ads/zzdzv;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzdzk;->zzb(Lcom/google/android/gms/internal/ads/zzdzw;Lcom/google/android/gms/internal/ads/zzdvz;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object v0

    return-object v0
.end method
