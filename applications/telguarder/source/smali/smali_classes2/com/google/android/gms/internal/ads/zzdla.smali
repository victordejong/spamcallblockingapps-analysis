.class final synthetic Lcom/google/android/gms/internal/ads/zzdla;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzgzk:Lcom/google/android/gms/internal/ads/zzvg;

.field private final zzhhw:Lcom/google/android/gms/internal/ads/zzdkz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdkz;Lcom/google/android/gms/internal/ads/zzvg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdla;->zzhhw:Lcom/google/android/gms/internal/ads/zzdkz;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdla;->zzgzk:Lcom/google/android/gms/internal/ads/zzvg;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdla;->zzhhw:Lcom/google/android/gms/internal/ads/zzdkz;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdla;->zzgzk:Lcom/google/android/gms/internal/ads/zzvg;

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdkz;->zzhhy:Lcom/google/android/gms/internal/ads/zzdkx;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdkx;->zzb(Lcom/google/android/gms/internal/ads/zzdkx;)Lcom/google/android/gms/internal/ads/zzcxy;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcxy;->zzc(Lcom/google/android/gms/internal/ads/zzvg;)V

    return-void
.end method
