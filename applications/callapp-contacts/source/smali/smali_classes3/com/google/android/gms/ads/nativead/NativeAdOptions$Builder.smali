.class public final Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/nativead/NativeAdOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private zzbob:Z

.field private zzbod:I

.field private zzboe:Z

.field private zzbof:I

.field private zzbog:Lcom/google/android/gms/ads/VideoOptions;

.field private zzboh:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;->zzbob:Z

    .line 3
    iput v0, p0, Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;->zzbod:I

    .line 4
    iput-boolean v0, p0, Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;->zzboe:Z

    const/4 v1, 0x1

    .line 5
    iput v1, p0, Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;->zzbof:I

    .line 6
    iput-boolean v0, p0, Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;->zzboh:Z

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;)Z
    .locals 0

    .line 20
    iget-boolean p0, p0, Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;->zzbob:Z

    return p0
.end method

.method static synthetic zzb(Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;)I
    .locals 0

    .line 21
    iget p0, p0, Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;->zzbod:I

    return p0
.end method

.method static synthetic zzc(Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;)Z
    .locals 0

    .line 22
    iget-boolean p0, p0, Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;->zzboe:Z

    return p0
.end method

.method static synthetic zzd(Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;)I
    .locals 0

    .line 23
    iget p0, p0, Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;->zzbof:I

    return p0
.end method

.method static synthetic zze(Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;)Lcom/google/android/gms/ads/VideoOptions;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;->zzbog:Lcom/google/android/gms/ads/VideoOptions;

    return-object p0
.end method

.method static synthetic zzf(Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;)Z
    .locals 0

    .line 25
    iget-boolean p0, p0, Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;->zzboh:Z

    return p0
.end method


# virtual methods
.method public final build()Lcom/google/android/gms/ads/nativead/NativeAdOptions;
    .locals 2

    .line 19
    new-instance v0, Lcom/google/android/gms/ads/nativead/NativeAdOptions;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/ads/nativead/NativeAdOptions;-><init>(Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;Lcom/google/android/gms/ads/nativead/zza;)V

    return-object v0
.end method

.method public final setAdChoicesPlacement(I)Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;
    .locals 0

    .line 13
    iput p1, p0, Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;->zzbof:I

    return-object p0
.end method

.method public final setMediaAspectRatio(I)Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;
    .locals 0

    .line 9
    iput p1, p0, Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;->zzbod:I

    return-object p0
.end method

.method public final setRequestCustomMuteThisAd(Z)Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;
    .locals 0

    .line 17
    iput-boolean p1, p0, Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;->zzboh:Z

    return-object p0
.end method

.method public final setRequestMultipleImages(Z)Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;
    .locals 0

    .line 11
    iput-boolean p1, p0, Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;->zzboe:Z

    return-object p0
.end method

.method public final setReturnUrlsForImageAssets(Z)Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;
    .locals 0

    .line 7
    iput-boolean p1, p0, Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;->zzbob:Z

    return-object p0
.end method

.method public final setVideoOptions(Lcom/google/android/gms/ads/VideoOptions;)Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;->zzbog:Lcom/google/android/gms/ads/VideoOptions;

    return-object p0
.end method
