.class public abstract Lcom/google/android/gms/internal/ads/zzfos;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/ads/zzfpe;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfpe;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfpe;-><init>()V

    return-object v0
.end method

.method public static zzb(ILcom/google/android/gms/internal/ads/zzfpd;)Lcom/google/android/gms/internal/ads/zzfpe;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfpe;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfoq;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzfoq;-><init>(I)V

    sget-object p0, Lcom/google/android/gms/internal/ads/zzfor;->zza:Lcom/google/android/gms/internal/ads/zzfor;

    invoke-direct {v0, v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzfpe;-><init>(Lcom/google/android/gms/internal/ads/zzfqs;Lcom/google/android/gms/internal/ads/zzfqs;Lcom/google/android/gms/internal/ads/zzfpd;)V

    return-object v0
.end method

.method public static zzc(Lcom/google/android/gms/internal/ads/zzfqs;Lcom/google/android/gms/internal/ads/zzfqs;Lcom/google/android/gms/internal/ads/zzfpd;)Lcom/google/android/gms/internal/ads/zzfpe;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzfqs<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzfqs<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzfpd;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzfpe;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfpe;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzfpe;-><init>(Lcom/google/android/gms/internal/ads/zzfqs;Lcom/google/android/gms/internal/ads/zzfqs;Lcom/google/android/gms/internal/ads/zzfpd;)V

    return-object v0
.end method

.method public static synthetic zzd(I)Ljava/lang/Integer;
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic zze()Ljava/lang/Integer;
    .locals 1

    const/4 v0, -0x1

    .line 1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
