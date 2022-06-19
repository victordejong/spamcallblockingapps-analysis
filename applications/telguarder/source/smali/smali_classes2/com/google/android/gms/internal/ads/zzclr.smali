.class final synthetic Lcom/google/android/gms/internal/ads/zzclr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzgmp:Lcom/google/android/gms/internal/ads/zzclq;

.field private final zzgna:Lcom/google/android/gms/internal/ads/zzbaa;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzclq;Lcom/google/android/gms/internal/ads/zzbaa;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzclr;->zzgmp:Lcom/google/android/gms/internal/ads/zzclq;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzclr;->zzgna:Lcom/google/android/gms/internal/ads/zzbaa;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclr;->zzgmp:Lcom/google/android/gms/internal/ads/zzclq;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzclr;->zzgna:Lcom/google/android/gms/internal/ads/zzbaa;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzclq;->zza(Lcom/google/android/gms/internal/ads/zzbaa;)V

    return-void
.end method
