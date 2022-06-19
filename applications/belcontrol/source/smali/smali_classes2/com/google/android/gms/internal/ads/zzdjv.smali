.class public final Lcom/google/android/gms/internal/ads/zzdjv;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdpx;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lcom/google/android/gms/internal/ads/zzbqv<",
        "TAdT;>;AdT:",
        "Lcom/google/android/gms/internal/ads/zzbnt;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdpx<",
        "TAdT;>;"
    }
.end annotation


# instance fields
.field private final zzhhh:Lcom/google/android/gms/internal/ads/zzdkn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdkn<",
            "TR;",
            "Lcom/google/android/gms/internal/ads/zzdpm<",
            "TAdT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdkn;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdkn<",
            "TR;",
            "Lcom/google/android/gms/internal/ads/zzdpm<",
            "TAdT;>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdjv;->zzhhh:Lcom/google/android/gms/internal/ads/zzdkn;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzdqa;)Lcom/google/android/gms/internal/ads/zzdzw;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdqa;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzdzw<",
            "Lcom/google/android/gms/internal/ads/zzdpm<",
            "TAdT;>;>;"
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdju;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdjv;->zzhhh:Lcom/google/android/gms/internal/ads/zzdkn;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzdju;->zzhhf:Lcom/google/android/gms/internal/ads/zzdko;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzdju;->zzhhe:Lcom/google/android/gms/internal/ads/zzdkp;

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzdkn;->zza(Lcom/google/android/gms/internal/ads/zzdko;Lcom/google/android/gms/internal/ads/zzdkp;)Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzdpm;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdpm<",
            "TAdT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdjv;->zzhhh:Lcom/google/android/gms/internal/ads/zzdkn;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdkn;->zzaun()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbqv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbqv;->zzagj()Lcom/google/android/gms/internal/ads/zzbou;

    move-result-object v0

    iput-object v0, p1, Lcom/google/android/gms/internal/ads/zzdpm;->zzhoh:Lcom/google/android/gms/internal/ads/zzbou;

    return-void
.end method

.method public final zzb(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method
