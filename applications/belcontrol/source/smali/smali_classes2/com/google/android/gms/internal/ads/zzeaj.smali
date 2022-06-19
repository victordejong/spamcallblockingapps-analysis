.class public final Lcom/google/android/gms/internal/ads/zzeaj;
.super Lcom/google/android/gms/internal/ads/zzdzs;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzdzs<",
        "TV;>;"
    }
.end annotation


# instance fields
.field private final zziai:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "TV;>;"
        }
    .end annotation
.end field

.field private final synthetic zzibd:Lcom/google/android/gms/internal/ads/zzeah;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzeah;Ljava/util/concurrent/Callable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "TV;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeaj;->zzibd:Lcom/google/android/gms/internal/ads/zzeah;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdzs;-><init>()V

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzdwl;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/Callable;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeaj;->zziai:Ljava/util/concurrent/Callable;

    return-void
.end method


# virtual methods
.method public final isDone()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeaj;->zzibd:Lcom/google/android/gms/internal/ads/zzeah;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdyk;->isDone()Z

    move-result v0

    return v0
.end method

.method public final zzb(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzeaj;->zzibd:Lcom/google/android/gms/internal/ads/zzeah;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzdyk;->set(Ljava/lang/Object;)Z

    return-void

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzeaj;->zzibd:Lcom/google/android/gms/internal/ads/zzeah;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzdyk;->setException(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public final zzbab()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeaj;->zziai:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final zzbac()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeaj;->zziai:Ljava/util/concurrent/Callable;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
