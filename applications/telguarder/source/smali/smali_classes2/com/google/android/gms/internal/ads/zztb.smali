.class final Lcom/google/android/gms/internal/ads/zztb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzrm;


# instance fields
.field private final synthetic zzbvc:Lcom/google/android/gms/internal/ads/zzsz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzsz;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zztb;->zzbvc:Lcom/google/android/gms/internal/ads/zzsz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzp(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zztb;->zzbvc:Lcom/google/android/gms/internal/ads/zzsz;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzsz;->zzb(Lcom/google/android/gms/internal/ads/zzsz;)V

    return-void

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zztb;->zzbvc:Lcom/google/android/gms/internal/ads/zzsz;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzsz;->zza(Lcom/google/android/gms/internal/ads/zzsz;)V

    return-void
.end method
