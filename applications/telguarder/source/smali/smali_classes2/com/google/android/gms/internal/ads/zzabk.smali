.class final synthetic Lcom/google/android/gms/internal/ads/zzabk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdws;


# instance fields
.field private final zzcmb:Lcom/google/android/gms/internal/ads/zzabl;

.field private final zzcmc:Lcom/google/android/gms/internal/ads/zzaba;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzabl;Lcom/google/android/gms/internal/ads/zzaba;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzabk;->zzcmb:Lcom/google/android/gms/internal/ads/zzabl;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzabk;->zzcmc:Lcom/google/android/gms/internal/ads/zzaba;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzabk;->zzcmb:Lcom/google/android/gms/internal/ads/zzabl;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzabk;->zzcmc:Lcom/google/android/gms/internal/ads/zzaba;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzabl;->zze(Lcom/google/android/gms/internal/ads/zzaba;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
