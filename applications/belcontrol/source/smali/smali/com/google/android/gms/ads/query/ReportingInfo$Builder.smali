.class public final Lcom/google/android/gms/ads/query/ReportingInfo$Builder;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/query/ReportingInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final zzhsc:Lcom/google/android/gms/internal/ads/zzasr;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzasr;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzasr;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/query/ReportingInfo$Builder;->zzhsc:Lcom/google/android/gms/internal/ads/zzasr;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzasr;->zzk(Landroid/view/View;)Lcom/google/android/gms/internal/ads/zzasr;

    return-void
.end method

.method public static synthetic zza(Lcom/google/android/gms/ads/query/ReportingInfo$Builder;)Lcom/google/android/gms/internal/ads/zzasr;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/ads/query/ReportingInfo$Builder;->zzhsc:Lcom/google/android/gms/internal/ads/zzasr;

    return-object p0
.end method


# virtual methods
.method public final build()Lcom/google/android/gms/ads/query/ReportingInfo;
    .locals 2
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    new-instance v0, Lcom/google/android/gms/ads/query/ReportingInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/ads/query/ReportingInfo;-><init>(Lcom/google/android/gms/ads/query/ReportingInfo$Builder;Lcom/google/android/gms/ads/query/zza;)V

    return-object v0
.end method

.method public final setAssetViews(Ljava/util/Map;)Lcom/google/android/gms/ads/query/ReportingInfo$Builder;
    .locals 1
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)",
            "Lcom/google/android/gms/ads/query/ReportingInfo$Builder;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/query/ReportingInfo$Builder;->zzhsc:Lcom/google/android/gms/internal/ads/zzasr;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzasr;->zzh(Ljava/util/Map;)Lcom/google/android/gms/internal/ads/zzasr;

    return-object p0
.end method
