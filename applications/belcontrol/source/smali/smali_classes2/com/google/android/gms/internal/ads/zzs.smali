.class public final Lcom/google/android/gms/internal/ads/zzs;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final mRunnable:Ljava/lang/Runnable;

.field private final zzaf:Lcom/google/android/gms/internal/ads/zzab;

.field private final zzag:Lcom/google/android/gms/internal/ads/zzag;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzab;Lcom/google/android/gms/internal/ads/zzag;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzs;->zzaf:Lcom/google/android/gms/internal/ads/zzab;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzs;->zzag:Lcom/google/android/gms/internal/ads/zzag;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzs;->mRunnable:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzs;->zzaf:Lcom/google/android/gms/internal/ads/zzab;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzab;->isCanceled()Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzs;->zzag:Lcom/google/android/gms/internal/ads/zzag;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzag;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzs;->zzaf:Lcom/google/android/gms/internal/ads/zzab;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzs;->zzag:Lcom/google/android/gms/internal/ads/zzag;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzag;->result:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzab;->zza(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzs;->zzaf:Lcom/google/android/gms/internal/ads/zzab;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzs;->zzag:Lcom/google/android/gms/internal/ads/zzag;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzag;->zzbr:Lcom/google/android/gms/internal/ads/zzap;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzab;->zzb(Lcom/google/android/gms/internal/ads/zzap;)V

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzs;->zzag:Lcom/google/android/gms/internal/ads/zzag;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzag;->zzbs:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzs;->zzaf:Lcom/google/android/gms/internal/ads/zzab;

    const-string v1, "intermediate-response"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzab;->zzc(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzs;->zzaf:Lcom/google/android/gms/internal/ads/zzab;

    const-string v1, "done"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzab;->zzd(Ljava/lang/String;)V

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzs;->mRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_2
    return-void
.end method
