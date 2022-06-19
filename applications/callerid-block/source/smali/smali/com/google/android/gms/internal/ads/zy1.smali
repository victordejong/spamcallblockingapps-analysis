.class final Lcom/google/android/gms/internal/ads/zy1;
.super Lcom/google/android/gms/internal/ads/ny1;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/ads/ny1<",
        "Ljava/lang/Object;",
        "TV;>;"
    }
.end annotation


# instance fields
.field private q:Lcom/google/android/gms/internal/ads/zzefa;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzefa<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzedb;ZLjava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzedb<",
            "+",
            "Lcom/google/android/gms/internal/ads/rz1<",
            "*>;>;Z",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/Callable<",
            "TV;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/ny1;-><init>(Lcom/google/android/gms/internal/ads/zzedb;ZZ)V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzeez;

    invoke-direct {p1, p0, p4, p3}, Lcom/google/android/gms/internal/ads/zzeez;-><init>(Lcom/google/android/gms/internal/ads/zy1;Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zy1;->q:Lcom/google/android/gms/internal/ads/zzefa;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ny1;->R()V

    return-void
.end method

.method static synthetic W(Lcom/google/android/gms/internal/ads/zy1;Lcom/google/android/gms/internal/ads/zzefa;)Lcom/google/android/gms/internal/ads/zzefa;
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zy1;->q:Lcom/google/android/gms/internal/ads/zzefa;

    return-object p1
.end method


# virtual methods
.method final M(I)V
    .locals 1

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/ny1;->M(I)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zy1;->q:Lcom/google/android/gms/internal/ads/zzefa;

    :cond_0
    return-void
.end method

.method final S(ILjava/lang/Object;)V
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    return-void
.end method

.method final T()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zy1;->q:Lcom/google/android/gms/internal/ads/zzefa;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzefa;->zze()V

    :cond_0
    return-void
.end method

.method protected final k()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zy1;->q:Lcom/google/android/gms/internal/ads/zzefa;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzefv;->zzg()V

    :cond_0
    return-void
.end method
