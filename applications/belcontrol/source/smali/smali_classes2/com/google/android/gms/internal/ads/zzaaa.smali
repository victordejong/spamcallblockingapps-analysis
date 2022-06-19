.class public final Lcom/google/android/gms/internal/ads/zzaaa;
.super Lcom/google/android/gms/internal/ads/zzxg;
.source ""


# instance fields
.field public final synthetic zzclj:Lcom/google/android/gms/internal/ads/zzzy;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzzy;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaaa;->zzclj:Lcom/google/android/gms/internal/ads/zzzy;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzxg;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzzy;Lcom/google/android/gms/internal/ads/zzaab;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzaaa;-><init>(Lcom/google/android/gms/internal/ads/zzzy;)V

    return-void
.end method


# virtual methods
.method public final getMediationAdapterClassName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final isLoading()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzvl;I)V
    .locals 0

    const-string p1, "This app is using a lightweight version of the Google Mobile Ads SDK that requires the latest Google Play services to be installed, but Google Play services is either missing or out of date."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzazk;->zzev(Ljava/lang/String;)V

    sget-object p1, Lcom/google/android/gms/internal/ads/zzaza;->zzaac:Landroid/os/Handler;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzaad;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/ads/zzaad;-><init>(Lcom/google/android/gms/internal/ads/zzaaa;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzvl;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzaaa;->zza(Lcom/google/android/gms/internal/ads/zzvl;I)V

    return-void
.end method

.method public final zzkh()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
