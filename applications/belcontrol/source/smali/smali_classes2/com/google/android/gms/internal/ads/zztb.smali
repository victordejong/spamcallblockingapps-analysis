.class public final Lcom/google/android/gms/internal/ads/zztb;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzrm;


# instance fields
.field private final synthetic zzbvc:Lcom/google/android/gms/internal/ads/zzsz;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzsz;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zztb;->zzbvc:Lcom/google/android/gms/internal/ads/zzsz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzp(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zztb;->zzbvc:Lcom/google/android/gms/internal/ads/zzsz;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzsz;->zzb(Lcom/google/android/gms/internal/ads/zzsz;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zztb;->zzbvc:Lcom/google/android/gms/internal/ads/zzsz;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzsz;->zza(Lcom/google/android/gms/internal/ads/zzsz;)V

    return-void
.end method
