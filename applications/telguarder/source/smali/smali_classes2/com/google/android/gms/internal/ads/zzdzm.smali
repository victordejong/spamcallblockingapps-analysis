.class final Lcom/google/android/gms/internal/ads/zzdzm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field private final zziam:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "TV;>;"
        }
    .end annotation
.end field

.field private final zzian:Lcom/google/android/gms/internal/ads/zzdzl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdzl<",
            "-TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/Future;Lcom/google/android/gms/internal/ads/zzdzl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "TV;>;",
            "Lcom/google/android/gms/internal/ads/zzdzl<",
            "-TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdzm;->zziam:Ljava/util/concurrent/Future;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdzm;->zzian:Lcom/google/android/gms/internal/ads/zzdzl;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdzm;->zziam:Ljava/util/concurrent/Future;

    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzeao;

    if-eqz v1, :cond_0

    .line 6
    check-cast v0, Lcom/google/android/gms/internal/ads/zzeao;

    .line 7
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzean;->zza(Lcom/google/android/gms/internal/ads/zzeao;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 9
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdzm;->zzian:Lcom/google/android/gms/internal/ads/zzdzl;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzdzl;->zzb(Ljava/lang/Throwable;)V

    return-void

    .line 11
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdzm;->zziam:Ljava/util/concurrent/Future;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdzk;->zza(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdzm;->zzian:Lcom/google/android/gms/internal/ads/zzdzl;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzdzl;->onSuccess(Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 17
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdzm;->zzian:Lcom/google/android/gms/internal/ads/zzdzl;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzdzl;->zzb(Ljava/lang/Throwable;)V

    return-void

    :catch_2
    move-exception v0

    .line 14
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdzm;->zzian:Lcom/google/android/gms/internal/ads/zzdzl;

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzdzl;->zzb(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 21
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzdwb;->zzw(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdwd;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdzm;->zzian:Lcom/google/android/gms/internal/ads/zzdzl;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdwd;->zzy(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdwd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdwd;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
