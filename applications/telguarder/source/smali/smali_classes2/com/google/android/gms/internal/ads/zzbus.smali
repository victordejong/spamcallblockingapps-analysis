.class final synthetic Lcom/google/android/gms/internal/ads/zzbus;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbvh;


# instance fields
.field private final zzfzn:Lcom/google/android/gms/ads/internal/overlay/zzn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/overlay/zzn;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbus;->zzfzn:Lcom/google/android/gms/ads/internal/overlay/zzn;

    return-void
.end method


# virtual methods
.method public final zzp(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbus;->zzfzn:Lcom/google/android/gms/ads/internal/overlay/zzn;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdil;

    .line 2
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzdil;->zza(Lcom/google/android/gms/ads/internal/overlay/zzn;)V

    return-void
.end method
