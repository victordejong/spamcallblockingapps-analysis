.class public final Lcom/google/android/gms/internal/ads/zzeak;
.super Lcom/google/android/gms/internal/ads/zzdzs;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzdzs<",
        "Lcom/google/android/gms/internal/ads/zzdzw<",
        "TV;>;>;"
    }
.end annotation


# instance fields
.field private final synthetic zzibd:Lcom/google/android/gms/internal/ads/zzeah;

.field private final zzibe:Lcom/google/android/gms/internal/ads/zzdyv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdyv<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzeah;Lcom/google/android/gms/internal/ads/zzdyv;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdyv<",
            "TV;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeak;->zzibd:Lcom/google/android/gms/internal/ads/zzeah;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdzs;-><init>()V

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzdwl;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdyv;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeak;->zzibe:Lcom/google/android/gms/internal/ads/zzdyv;

    return-void
.end method


# virtual methods
.method public final isDone()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeak;->zzibd:Lcom/google/android/gms/internal/ads/zzeah;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdyk;->isDone()Z

    move-result v0

    return v0
.end method

.method public final synthetic zzb(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdzw;

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzeak;->zzibd:Lcom/google/android/gms/internal/ads/zzeah;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzdyk;->setFuture(Lcom/google/android/gms/internal/ads/zzdzw;)Z

    return-void

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzeak;->zzibd:Lcom/google/android/gms/internal/ads/zzeah;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzdyk;->setException(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public final synthetic zzbab()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeak;->zzibe:Lcom/google/android/gms/internal/ads/zzdyv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdyv;->zzatm()Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeak;->zzibe:Lcom/google/android/gms/internal/ads/zzdyv;

    const-string v2, "AsyncCallable.call returned null instead of a Future. Did you mean to return immediateFuture(null)? %s"

    invoke-static {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzdwl;->zza(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdzw;

    return-object v0
.end method

.method public final zzbac()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeak;->zzibe:Lcom/google/android/gms/internal/ads/zzdyv;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
