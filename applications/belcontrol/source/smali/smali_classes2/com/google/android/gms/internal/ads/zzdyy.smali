.class public final Lcom/google/android/gms/internal/ads/zzdyy;
.super Lcom/google/android/gms/internal/ads/zzdyo;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/ads/zzdyo<",
        "Ljava/lang/Object;",
        "TV;>;"
    }
.end annotation


# instance fields
.field private zziaf:Lcom/google/android/gms/internal/ads/zzdza;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdza<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdwy;ZLjava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdwy<",
            "+",
            "Lcom/google/android/gms/internal/ads/zzdzw<",
            "*>;>;Z",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/Callable<",
            "TV;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzdyo;-><init>(Lcom/google/android/gms/internal/ads/zzdwy;ZZ)V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzdzb;

    invoke-direct {p1, p0, p4, p3}, Lcom/google/android/gms/internal/ads/zzdzb;-><init>(Lcom/google/android/gms/internal/ads/zzdyy;Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdyy;->zziaf:Lcom/google/android/gms/internal/ads/zzdza;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdyo;->zzazw()V

    return-void
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/ads/zzdyy;Lcom/google/android/gms/internal/ads/zzdza;)Lcom/google/android/gms/internal/ads/zzdza;
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdyy;->zziaf:Lcom/google/android/gms/internal/ads/zzdza;

    return-object p1
.end method


# virtual methods
.method public final interruptTask()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdyy;->zziaf:Lcom/google/android/gms/internal/ads/zzdza;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdzs;->interruptTask()V

    :cond_0
    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzdyo$zza;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzdyo;->zza(Lcom/google/android/gms/internal/ads/zzdyo$zza;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzdyo$zza;->zzhzz:Lcom/google/android/gms/internal/ads/zzdyo$zza;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdyy;->zziaf:Lcom/google/android/gms/internal/ads/zzdza;

    :cond_0
    return-void
.end method

.method public final zzazx()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdyy;->zziaf:Lcom/google/android/gms/internal/ads/zzdza;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdza;->execute()V

    :cond_0
    return-void
.end method

.method public final zzb(ILjava/lang/Object;)V
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    return-void
.end method
