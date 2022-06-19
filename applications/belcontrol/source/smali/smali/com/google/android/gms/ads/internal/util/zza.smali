.class public abstract Lcom/google/android/gms/ads/internal/util/zza;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private volatile thread:Ljava/lang/Thread;

.field private final zzedk:Ljava/lang/Runnable;

.field private zzedl:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/ads/internal/util/zzc;

    invoke-direct {v0, p0}, Lcom/google/android/gms/ads/internal/util/zzc;-><init>(Lcom/google/android/gms/ads/internal/util/zza;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/util/zza;->zzedk:Ljava/lang/Runnable;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/util/zza;->zzedl:Z

    return-void
.end method

.method public static synthetic zza(Lcom/google/android/gms/ads/internal/util/zza;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/util/zza;->thread:Ljava/lang/Thread;

    return-object p1
.end method


# virtual methods
.method public abstract zzwe()V
.end method

.method public final zzye()Lcom/google/android/gms/internal/ads/zzdzw;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzdzw<",
            "*>;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/ads/zzazp;->zzeid:Lcom/google/android/gms/internal/ads/zzdzv;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zza;->zzedk:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzdzv;->zzg(Ljava/lang/Runnable;)Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object v0

    return-object v0
.end method
