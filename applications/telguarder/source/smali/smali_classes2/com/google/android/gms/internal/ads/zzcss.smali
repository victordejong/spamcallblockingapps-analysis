.class final synthetic Lcom/google/android/gms/internal/ads/zzcss;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbnu;


# instance fields
.field private final zzgtt:Lcom/google/android/gms/internal/ads/zzcrl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcrl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcss;->zzgtt:Lcom/google/android/gms/internal/ads/zzcrl;

    return-void
.end method


# virtual methods
.method public final getVideoController()Lcom/google/android/gms/internal/ads/zzzc;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcss;->zzgtt:Lcom/google/android/gms/internal/ads/zzcrl;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcsp;->zza(Lcom/google/android/gms/internal/ads/zzcrl;)Lcom/google/android/gms/internal/ads/zzzc;

    move-result-object v0

    return-object v0
.end method
