.class public final Lcom/google/android/gms/ads/nativead/NativeAdOptions;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;,
        Lcom/google/android/gms/ads/nativead/NativeAdOptions$AdChoicesPlacement;,
        Lcom/google/android/gms/ads/nativead/NativeAdOptions$NativeMediaAspectRatio;
    }
.end annotation


# static fields
.field public static final ADCHOICES_BOTTOM_LEFT:I = 0x3

.field public static final ADCHOICES_BOTTOM_RIGHT:I = 0x2

.field public static final ADCHOICES_TOP_LEFT:I = 0x0

.field public static final ADCHOICES_TOP_RIGHT:I = 0x1

.field public static final NATIVE_MEDIA_ASPECT_RATIO_ANY:I = 0x1

.field public static final NATIVE_MEDIA_ASPECT_RATIO_LANDSCAPE:I = 0x2

.field public static final NATIVE_MEDIA_ASPECT_RATIO_PORTRAIT:I = 0x3

.field public static final NATIVE_MEDIA_ASPECT_RATIO_SQUARE:I = 0x4

.field public static final NATIVE_MEDIA_ASPECT_RATIO_UNKNOWN:I


# instance fields
.field private final zzbnr:Z

.field private final zzbnt:I

.field private final zzbnu:Z

.field private final zzbnv:I

.field private final zzbnw:Lcom/google/android/gms/ads/VideoOptions;

.field private final zzbnx:Z


# direct methods
.method private constructor <init>(Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;->zza(Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/nativead/NativeAdOptions;->zzbnr:Z

    invoke-static {p1}, Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;->zzb(Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/ads/nativead/NativeAdOptions;->zzbnt:I

    invoke-static {p1}, Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;->zzc(Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/nativead/NativeAdOptions;->zzbnu:Z

    invoke-static {p1}, Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;->zzd(Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/ads/nativead/NativeAdOptions;->zzbnv:I

    invoke-static {p1}, Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;->zze(Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;)Lcom/google/android/gms/ads/VideoOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/nativead/NativeAdOptions;->zzbnw:Lcom/google/android/gms/ads/VideoOptions;

    invoke-static {p1}, Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;->zzf(Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/ads/nativead/NativeAdOptions;->zzbnx:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;Lcom/google/android/gms/ads/nativead/zza;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/ads/nativead/NativeAdOptions;-><init>(Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;)V

    return-void
.end method


# virtual methods
.method public final getAdChoicesPlacement()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/ads/nativead/NativeAdOptions;->zzbnv:I

    return v0
.end method

.method public final getMediaAspectRatio()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/ads/nativead/NativeAdOptions;->zzbnt:I

    return v0
.end method

.method public final getVideoOptions()Lcom/google/android/gms/ads/VideoOptions;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/nativead/NativeAdOptions;->zzbnw:Lcom/google/android/gms/ads/VideoOptions;

    return-object v0
.end method

.method public final shouldRequestMultipleImages()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/ads/nativead/NativeAdOptions;->zzbnu:Z

    return v0
.end method

.method public final shouldReturnUrlsForImageAssets()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/ads/nativead/NativeAdOptions;->zzbnr:Z

    return v0
.end method

.method public final zzjt()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/ads/nativead/NativeAdOptions;->zzbnx:Z

    return v0
.end method
