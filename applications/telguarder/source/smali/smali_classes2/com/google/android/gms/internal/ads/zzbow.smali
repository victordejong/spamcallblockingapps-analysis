.class final synthetic Lcom/google/android/gms/internal/ads/zzbow;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdyu;


# instance fields
.field private final zzfxj:Lcom/google/android/gms/internal/ads/zzbou;

.field private final zzfxk:Lcom/google/android/gms/internal/ads/zzdpf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbou;Lcom/google/android/gms/internal/ads/zzdpf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbow;->zzfxj:Lcom/google/android/gms/internal/ads/zzbou;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbow;->zzfxk:Lcom/google/android/gms/internal/ads/zzdpf;

    return-void
.end method


# virtual methods
.method public final zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdzw;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbow;->zzfxj:Lcom/google/android/gms/internal/ads/zzbou;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbow;->zzfxk:Lcom/google/android/gms/internal/ads/zzdpf;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzatq;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzbou;->zza(Lcom/google/android/gms/internal/ads/zzdpf;Lcom/google/android/gms/internal/ads/zzatq;)Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object p1

    return-object p1
.end method
