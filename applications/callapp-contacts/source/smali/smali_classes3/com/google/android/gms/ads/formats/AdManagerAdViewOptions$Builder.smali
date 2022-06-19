.class public final Lcom/google/android/gms/ads/formats/AdManagerAdViewOptions$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/formats/AdManagerAdViewOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private zzbns:Z

.field private zzbnu:Lcom/google/android/gms/ads/formats/ShouldDelayBannerRenderingListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/google/android/gms/ads/formats/AdManagerAdViewOptions$Builder;->zzbns:Z

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/ads/formats/AdManagerAdViewOptions$Builder;)Z
    .locals 0

    .line 8
    iget-boolean p0, p0, Lcom/google/android/gms/ads/formats/AdManagerAdViewOptions$Builder;->zzbns:Z

    return p0
.end method

.method static synthetic zzb(Lcom/google/android/gms/ads/formats/AdManagerAdViewOptions$Builder;)Lcom/google/android/gms/ads/formats/ShouldDelayBannerRenderingListener;
    .locals 0

    .line 9
    iget-object p0, p0, Lcom/google/android/gms/ads/formats/AdManagerAdViewOptions$Builder;->zzbnu:Lcom/google/android/gms/ads/formats/ShouldDelayBannerRenderingListener;

    return-object p0
.end method


# virtual methods
.method public final build()Lcom/google/android/gms/ads/formats/AdManagerAdViewOptions;
    .locals 2

    .line 7
    new-instance v0, Lcom/google/android/gms/ads/formats/AdManagerAdViewOptions;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/ads/formats/AdManagerAdViewOptions;-><init>(Lcom/google/android/gms/ads/formats/AdManagerAdViewOptions$Builder;Lcom/google/android/gms/ads/formats/zza;)V

    return-object v0
.end method

.method public final setManualImpressionsEnabled(Z)Lcom/google/android/gms/ads/formats/AdManagerAdViewOptions$Builder;
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/google/android/gms/ads/formats/AdManagerAdViewOptions$Builder;->zzbns:Z

    return-object p0
.end method

.method public final setShouldDelayBannerRenderingListener(Lcom/google/android/gms/ads/formats/ShouldDelayBannerRenderingListener;)Lcom/google/android/gms/ads/formats/AdManagerAdViewOptions$Builder;
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/google/android/gms/ads/formats/AdManagerAdViewOptions$Builder;->zzbnu:Lcom/google/android/gms/ads/formats/ShouldDelayBannerRenderingListener;

    return-object p0
.end method
