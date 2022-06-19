.class public final synthetic Lcom/google/android/gms/internal/ads/zzbot;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdyu;


# instance fields
.field private final zzfww:Lcom/google/android/gms/internal/ads/zzcny;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzcny;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbot;->zzfww:Lcom/google/android/gms/internal/ads/zzcny;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzcny;)Lcom/google/android/gms/internal/ads/zzdyu;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbot;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzbot;-><init>(Lcom/google/android/gms/internal/ads/zzcny;)V

    return-object v0
.end method


# virtual methods
.method public final zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdzw;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbot;->zzfww:Lcom/google/android/gms/internal/ads/zzcny;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzatq;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcny;->zzh(Lcom/google/android/gms/internal/ads/zzatq;)Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object p1

    return-object p1
.end method
