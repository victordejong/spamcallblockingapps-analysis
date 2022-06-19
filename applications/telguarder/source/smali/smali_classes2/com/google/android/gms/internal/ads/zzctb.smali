.class final Lcom/google/android/gms/internal/ads/zzctb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdzl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdzl<",
        "Lcom/google/android/gms/internal/ads/zzblv;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzgue:Lcom/google/android/gms/internal/ads/zzcta;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcta;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzctb;->zzgue:Lcom/google/android/gms/internal/ads/zzcta;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 7
    check-cast p1, Lcom/google/android/gms/internal/ads/zzblv;

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbnt;->zzakb()V

    return-void
.end method

.method public final zzb(Ljava/lang/Throwable;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzctb;->zzgue:Lcom/google/android/gms/internal/ads/zzcta;

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcta;->zza(Lcom/google/android/gms/internal/ads/zzcta;)Lcom/google/android/gms/internal/ads/zzbmr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbmr;->zzagj()Lcom/google/android/gms/internal/ads/zzbou;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbou;->zze(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzvg;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzctb;->zzgue:Lcom/google/android/gms/internal/ads/zzcta;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzcta;->zzb(Lcom/google/android/gms/internal/ads/zzcta;)Lcom/google/android/gms/internal/ads/zzbrp;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbrp;->zzc(Lcom/google/android/gms/internal/ads/zzvg;)V

    .line 5
    iget v0, v0, Lcom/google/android/gms/internal/ads/zzvg;->errorCode:I

    const-string v1, "DelayedBannerAd.onFailure"

    invoke-static {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzdod;->zza(ILjava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method
