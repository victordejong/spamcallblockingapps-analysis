.class final Lcom/google/android/gms/internal/ads/zzcuk;
.super Lcom/google/android/gms/internal/ads/zzaph;
.source "com.google.android.gms:play-services-ads@@19.7.0"


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

.field private final synthetic zzgux:Lcom/google/android/gms/internal/ads/zzcui;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzcui;Lcom/google/android/gms/internal/ads/zzcrl;)V
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

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcuk;->zzgux:Lcom/google/android/gms/internal/ads/zzcui;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaph;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcuk;->zzgtu:Lcom/google/android/gms/internal/ads/zzcrl;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzcui;Lcom/google/android/gms/internal/ads/zzcrl;Lcom/google/android/gms/internal/ads/zzcuh;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzcuk;-><init>(Lcom/google/android/gms/internal/ads/zzcui;Lcom/google/android/gms/internal/ads/zzcrl;)V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzanx;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcuk;->zzgux:Lcom/google/android/gms/internal/ads/zzcui;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzcui;->zza(Lcom/google/android/gms/internal/ads/zzcui;Lcom/google/android/gms/internal/ads/zzanx;)Lcom/google/android/gms/internal/ads/zzanx;

    .line 5
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcuk;->zzgtu:Lcom/google/android/gms/internal/ads/zzcrl;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzcrl;->zzgsu:Lcom/google/android/gms/internal/ads/zzbsu;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzctd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzctd;->onAdLoaded()V

    return-void
.end method

.method public final zzdl(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcuk;->zzgtu:Lcom/google/android/gms/internal/ads/zzcrl;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzcrl;->zzgsu:Lcom/google/android/gms/internal/ads/zzbsu;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzctd;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzctd;->zzc(ILjava/lang/String;)V

    return-void
.end method

.method public final zzg(Lcom/google/android/gms/internal/ads/zzvg;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcuk;->zzgtu:Lcom/google/android/gms/internal/ads/zzcrl;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzcrl;->zzgsu:Lcom/google/android/gms/internal/ads/zzbsu;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzctd;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzctd;->zzd(Lcom/google/android/gms/internal/ads/zzvg;)V

    return-void
.end method
