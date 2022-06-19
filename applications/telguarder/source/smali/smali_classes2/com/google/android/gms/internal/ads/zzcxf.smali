.class final Lcom/google/android/gms/internal/ads/zzcxf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Lcom/google/android/gms/ads/internal/zzg;


# instance fields
.field private final synthetic zzgxg:Lcom/google/android/gms/internal/ads/zzbza;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcxe;Lcom/google/android/gms/internal/ads/zzbza;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcxf;->zzgxg:Lcom/google/android/gms/internal/ads/zzbza;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzh(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public final zzkc()V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcxf;->zzgxg:Lcom/google/android/gms/internal/ads/zzbza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbnv;->zzagp()Lcom/google/android/gms/internal/ads/zzbrl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbrl;->onAdClicked()V

    return-void
.end method

.method public final zzkd()V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcxf;->zzgxg:Lcom/google/android/gms/internal/ads/zzbza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbnv;->zzagq()Lcom/google/android/gms/internal/ads/zzbsd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbsd;->onAdImpression()V

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcxf;->zzgxg:Lcom/google/android/gms/internal/ads/zzbza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbnv;->zzagr()Lcom/google/android/gms/internal/ads/zzbye;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbye;->zzamr()V

    return-void
.end method
