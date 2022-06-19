.class public final Lcom/google/android/gms/internal/ads/zzaei;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/ads/zzaei;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final versionCode:I

.field public final zzboc:I

.field public final zzbod:I

.field public final zzboe:Z

.field public final zzbof:I

.field public final zzboh:Z

.field public final zzdgx:Z

.field public final zzdgy:Lcom/google/android/gms/internal/ads/zzaaz;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 75
    new-instance v0, Lcom/google/android/gms/internal/ads/dk;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/dk;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzaei;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IZIZILcom/google/android/gms/internal/ads/zzaaz;ZI)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 25
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaei;->versionCode:I

    .line 26
    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzaei;->zzdgx:Z

    .line 27
    iput p3, p0, Lcom/google/android/gms/internal/ads/zzaei;->zzboc:I

    .line 28
    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/zzaei;->zzboe:Z

    .line 29
    iput p5, p0, Lcom/google/android/gms/internal/ads/zzaei;->zzbof:I

    .line 30
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzaei;->zzdgy:Lcom/google/android/gms/internal/ads/zzaaz;

    .line 31
    iput-boolean p7, p0, Lcom/google/android/gms/internal/ads/zzaei;->zzboh:Z

    .line 32
    iput p8, p0, Lcom/google/android/gms/internal/ads/zzaei;->zzbod:I

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/ads/formats/NativeAdOptions;)V
    .locals 9

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/NativeAdOptions;->shouldReturnUrlsForImageAssets()Z

    move-result v2

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/NativeAdOptions;->getImageOrientation()I

    move-result v3

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/NativeAdOptions;->shouldRequestMultipleImages()Z

    move-result v4

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/NativeAdOptions;->getAdChoicesPlacement()I

    move-result v5

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/NativeAdOptions;->getVideoOptions()Lcom/google/android/gms/ads/VideoOptions;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaaz;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/NativeAdOptions;->getVideoOptions()Lcom/google/android/gms/ads/VideoOptions;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzaaz;-><init>(Lcom/google/android/gms/ads/VideoOptions;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v6, v0

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/NativeAdOptions;->zzjx()Z

    move-result v7

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/NativeAdOptions;->getMediaAspectRatio()I

    move-result v8

    const/4 v1, 0x4

    move-object v0, p0

    .line 11
    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/ads/zzaei;-><init>(IZIZILcom/google/android/gms/internal/ads/zzaaz;ZI)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/ads/nativead/NativeAdOptions;)V
    .locals 9

    .line 14
    invoke-virtual {p1}, Lcom/google/android/gms/ads/nativead/NativeAdOptions;->shouldReturnUrlsForImageAssets()Z

    move-result v2

    .line 15
    invoke-virtual {p1}, Lcom/google/android/gms/ads/nativead/NativeAdOptions;->shouldRequestMultipleImages()Z

    move-result v4

    .line 16
    invoke-virtual {p1}, Lcom/google/android/gms/ads/nativead/NativeAdOptions;->getAdChoicesPlacement()I

    move-result v5

    .line 17
    invoke-virtual {p1}, Lcom/google/android/gms/ads/nativead/NativeAdOptions;->getVideoOptions()Lcom/google/android/gms/ads/VideoOptions;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 18
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaaz;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/nativead/NativeAdOptions;->getVideoOptions()Lcom/google/android/gms/ads/VideoOptions;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzaaz;-><init>(Lcom/google/android/gms/ads/VideoOptions;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v6, v0

    .line 20
    invoke-virtual {p1}, Lcom/google/android/gms/ads/nativead/NativeAdOptions;->zzjx()Z

    move-result v7

    .line 21
    invoke-virtual {p1}, Lcom/google/android/gms/ads/nativead/NativeAdOptions;->getMediaAspectRatio()I

    move-result v8

    const/4 v1, 0x4

    const/4 v3, -0x1

    move-object v0, p0

    .line 22
    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/ads/zzaei;-><init>(IZIZILcom/google/android/gms/internal/ads/zzaaz;ZI)V

    return-void
.end method

.method public static zzb(Lcom/google/android/gms/internal/ads/zzaei;)Lcom/google/android/gms/ads/nativead/NativeAdOptions;
    .locals 3

    .line 46
    new-instance v0, Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;-><init>()V

    if-nez p0, :cond_0

    .line 48
    invoke-virtual {v0}, Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;->build()Lcom/google/android/gms/ads/nativead/NativeAdOptions;

    move-result-object p0

    return-object p0

    .line 49
    :cond_0
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzaei;->versionCode:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 50
    :cond_1
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzaei;->zzboh:Z

    .line 51
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;->setRequestCustomMuteThisAd(Z)Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzaei;->zzbod:I

    .line 52
    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;->setMediaAspectRatio(I)Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;

    .line 53
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaei;->zzdgy:Lcom/google/android/gms/internal/ads/zzaaz;

    if-eqz v1, :cond_3

    .line 54
    new-instance v2, Lcom/google/android/gms/ads/VideoOptions;

    invoke-direct {v2, v1}, Lcom/google/android/gms/ads/VideoOptions;-><init>(Lcom/google/android/gms/internal/ads/zzaaz;)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;->setVideoOptions(Lcom/google/android/gms/ads/VideoOptions;)Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;

    .line 55
    :cond_3
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzaei;->zzbof:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;->setAdChoicesPlacement(I)Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;

    .line 56
    :goto_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzaei;->zzdgx:Z

    .line 57
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;->setReturnUrlsForImageAssets(Z)Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;

    move-result-object v1

    iget-boolean p0, p0, Lcom/google/android/gms/internal/ads/zzaei;->zzboe:Z

    .line 58
    invoke-virtual {v1, p0}, Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;->setRequestMultipleImages(Z)Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;

    .line 59
    invoke-virtual {v0}, Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;->build()Lcom/google/android/gms/ads/nativead/NativeAdOptions;

    move-result-object p0

    return-object p0
.end method

.method public static zzc(Lcom/google/android/gms/internal/ads/zzaei;)Lcom/google/android/gms/ads/formats/NativeAdOptions;
    .locals 3

    .line 60
    new-instance v0, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;-><init>()V

    if-nez p0, :cond_0

    .line 62
    invoke-virtual {v0}, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->build()Lcom/google/android/gms/ads/formats/NativeAdOptions;

    move-result-object p0

    return-object p0

    .line 63
    :cond_0
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzaei;->versionCode:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 64
    :cond_1
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzaei;->zzboh:Z

    .line 65
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->setRequestCustomMuteThisAd(Z)Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzaei;->zzbod:I

    .line 66
    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->setMediaAspectRatio(I)Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;

    .line 67
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaei;->zzdgy:Lcom/google/android/gms/internal/ads/zzaaz;

    if-eqz v1, :cond_3

    .line 68
    new-instance v2, Lcom/google/android/gms/ads/VideoOptions;

    invoke-direct {v2, v1}, Lcom/google/android/gms/ads/VideoOptions;-><init>(Lcom/google/android/gms/internal/ads/zzaaz;)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->setVideoOptions(Lcom/google/android/gms/ads/VideoOptions;)Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;

    .line 69
    :cond_3
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzaei;->zzbof:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->setAdChoicesPlacement(I)Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;

    .line 70
    :goto_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzaei;->zzdgx:Z

    .line 71
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->setReturnUrlsForImageAssets(Z)Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzaei;->zzboc:I

    .line 72
    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->setImageOrientation(I)Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;

    move-result-object v1

    iget-boolean p0, p0, Lcom/google/android/gms/internal/ads/zzaei;->zzboe:Z

    .line 73
    invoke-virtual {v1, p0}, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->setRequestMultipleImages(Z)Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;

    .line 74
    invoke-virtual {v0}, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->build()Lcom/google/android/gms/ads/formats/NativeAdOptions;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const/16 v0, 0x4f45

    .line 1001
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;I)I

    move-result v0

    .line 36
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzaei;->versionCode:I

    const/4 v2, 0x1

    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;II)V

    .line 37
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzaei;->zzdgx:Z

    const/4 v2, 0x2

    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;IZ)V

    .line 38
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzaei;->zzboc:I

    const/4 v2, 0x3

    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;II)V

    .line 39
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzaei;->zzboe:Z

    const/4 v2, 0x4

    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;IZ)V

    .line 40
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzaei;->zzbof:I

    const/4 v2, 0x5

    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;II)V

    .line 41
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaei;->zzdgy:Lcom/google/android/gms/internal/ads/zzaaz;

    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 42
    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzaei;->zzboh:Z

    const/4 v1, 0x7

    invoke-static {p1, v1, p2}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;IZ)V

    .line 43
    iget p2, p0, Lcom/google/android/gms/internal/ads/zzaei;->zzbod:I

    const/16 v1, 0x8

    invoke-static {p1, v1, p2}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;II)V

    .line 2001
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V

    return-void
.end method
