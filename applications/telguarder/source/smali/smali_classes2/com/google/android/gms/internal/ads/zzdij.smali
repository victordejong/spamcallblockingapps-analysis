.class final synthetic Lcom/google/android/gms/internal/ads/zzdij;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzgzk:Lcom/google/android/gms/internal/ads/zzvg;

.field private final zzhfq:Lcom/google/android/gms/internal/ads/zzdig;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdig;Lcom/google/android/gms/internal/ads/zzvg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdij;->zzhfq:Lcom/google/android/gms/internal/ads/zzdig;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdij;->zzgzk:Lcom/google/android/gms/internal/ads/zzvg;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdij;->zzhfq:Lcom/google/android/gms/internal/ads/zzdig;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdij;->zzgzk:Lcom/google/android/gms/internal/ads/zzvg;

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdig;->zzhfp:Lcom/google/android/gms/internal/ads/zzdif;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdif;->zza(Lcom/google/android/gms/internal/ads/zzdif;)Lcom/google/android/gms/internal/ads/zzdil;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdil;->zzc(Lcom/google/android/gms/internal/ads/zzvg;)V

    return-void
.end method
