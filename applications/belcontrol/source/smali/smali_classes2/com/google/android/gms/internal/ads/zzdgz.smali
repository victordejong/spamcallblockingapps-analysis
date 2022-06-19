.class public final Lcom/google/android/gms/internal/ads/zzdgz;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdfi;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdfi<",
        "Lcom/google/android/gms/internal/ads/zzdgw;",
        ">;"
    }
.end annotation


# instance fields
.field private packageName:Ljava/lang/String;

.field private zzghl:Lcom/google/android/gms/internal/ads/zzdzv;

.field private zzhep:Lcom/google/android/gms/internal/ads/zzayg;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzayg;Lcom/google/android/gms/internal/ads/zzdzv;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdgz;->zzhep:Lcom/google/android/gms/internal/ads/zzayg;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdgz;->zzghl:Lcom/google/android/gms/internal/ads/zzdzv;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdgz;->packageName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zzasy()Lcom/google/android/gms/internal/ads/zzdzw;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzdzw<",
            "Lcom/google/android/gms/internal/ads/zzdgw;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbaa;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbaa;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdzk;->zzag(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzabp;->zzcxc:Lcom/google/android/gms/internal/ads/zzaba;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqr()Lcom/google/android/gms/internal/ads/zzabl;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzabl;->zzd(Lcom/google/android/gms/internal/ads/zzaba;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdgz;->zzhep:Lcom/google/android/gms/internal/ads/zzayg;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdgz;->packageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzayg;->zzdz(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdgz;->zzhep:Lcom/google/android/gms/internal/ads/zzayg;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdgz;->packageName:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzayg;->zzea(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/google/android/gms/internal/ads/zzdzw;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v3, 0x1

    aput-object v1, v2, v3

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzdzk;->zzb([Lcom/google/android/gms/internal/ads/zzdzw;)Lcom/google/android/gms/internal/ads/zzdzp;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/ads/zzdgy;

    invoke-direct {v3, v0, v1}, Lcom/google/android/gms/internal/ads/zzdgy;-><init>(Lcom/google/android/gms/internal/ads/zzdzw;Lcom/google/android/gms/internal/ads/zzdzw;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzazp;->zzeic:Lcom/google/android/gms/internal/ads/zzdzv;

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/internal/ads/zzdzp;->zzb(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object v0

    return-object v0
.end method
