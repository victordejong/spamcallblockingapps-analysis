.class public final Lcom/google/android/gms/internal/ads/zzme;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzmc;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# instance fields
.field private final zzbdf:I

.field private zzbdg:[Landroid/media/MediaCodecInfo;


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzme;->zzbdf:I

    return-void
.end method

.method private final zzhm()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzme;->zzbdg:[Landroid/media/MediaCodecInfo;

    if-nez v0, :cond_0

    new-instance v0, Landroid/media/MediaCodecList;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzme;->zzbdf:I

    invoke-direct {v0, v1}, Landroid/media/MediaCodecList;-><init>(I)V

    invoke-virtual {v0}, Landroid/media/MediaCodecList;->getCodecInfos()[Landroid/media/MediaCodecInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzme;->zzbdg:[Landroid/media/MediaCodecInfo;

    :cond_0
    return-void
.end method


# virtual methods
.method public final getCodecCount()I
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzme;->zzhm()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzme;->zzbdg:[Landroid/media/MediaCodecInfo;

    array-length v0, v0

    return v0
.end method

.method public final getCodecInfoAt(I)Landroid/media/MediaCodecInfo;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzme;->zzhm()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzme;->zzbdg:[Landroid/media/MediaCodecInfo;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final zza(Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z
    .locals 0

    const-string p1, "secure-playback"

    invoke-virtual {p2, p1}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureSupported(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final zzhl()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
