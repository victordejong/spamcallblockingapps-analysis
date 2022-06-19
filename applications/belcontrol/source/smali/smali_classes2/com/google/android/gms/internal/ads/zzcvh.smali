.class public final Lcom/google/android/gms/internal/ads/zzcvh;
.super Lcom/google/android/gms/internal/ads/zzapi;
.source ""


# instance fields
.field private zzgtu:Lcom/google/android/gms/internal/ads/zzcrl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzcrl<",
            "Lcom/google/android/gms/internal/ads/zzapk;",
            "Lcom/google/android/gms/internal/ads/zzctd;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzcvf;Lcom/google/android/gms/internal/ads/zzcrl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzcrl<",
            "Lcom/google/android/gms/internal/ads/zzapk;",
            "Lcom/google/android/gms/internal/ads/zzctd;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzapi;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcvh;->zzgtu:Lcom/google/android/gms/internal/ads/zzcrl;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzcvf;Lcom/google/android/gms/internal/ads/zzcrl;Lcom/google/android/gms/internal/ads/zzcvi;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzcvh;-><init>(Lcom/google/android/gms/internal/ads/zzcvf;Lcom/google/android/gms/internal/ads/zzcrl;)V

    return-void
.end method


# virtual methods
.method public final zzdl(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcvh;->zzgtu:Lcom/google/android/gms/internal/ads/zzcrl;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzcrl;->zzgsu:Lcom/google/android/gms/internal/ads/zzbsu;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzctd;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzctd;->zzc(ILjava/lang/String;)V

    return-void
.end method

.method public final zzg(Lcom/google/android/gms/internal/ads/zzvg;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcvh;->zzgtu:Lcom/google/android/gms/internal/ads/zzcrl;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzcrl;->zzgsu:Lcom/google/android/gms/internal/ads/zzbsu;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzctd;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzctd;->zzd(Lcom/google/android/gms/internal/ads/zzvg;)V

    return-void
.end method

.method public final zzvn()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcvh;->zzgtu:Lcom/google/android/gms/internal/ads/zzcrl;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzcrl;->zzgsu:Lcom/google/android/gms/internal/ads/zzbsu;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzctd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzctd;->onAdLoaded()V

    return-void
.end method
