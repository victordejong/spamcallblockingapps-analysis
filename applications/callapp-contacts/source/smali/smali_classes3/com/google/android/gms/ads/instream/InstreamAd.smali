.class public abstract Lcom/google/android/gms/ads/instream/InstreamAd;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/instream/InstreamAd$InstreamAdLoadCallback;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static load(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/AdRequest;ILcom/google/android/gms/ads/instream/InstreamAd$InstreamAdLoadCallback;)V
    .locals 2

    const/4 v0, 0x2

    if-eq p3, v0, :cond_1

    const/4 v0, 0x3

    if-ne p3, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const-string v1, "Instream ads only support Landscape and Portrait media aspect ratios"

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/o;->b(ZLjava/lang/Object;)V

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/jo;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/jo;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, p4}, Lcom/google/android/gms/internal/ads/jo;->a(Lcom/google/android/gms/ads/instream/InstreamAd$InstreamAdLoadCallback;)Lcom/google/android/gms/internal/ads/jo;

    move-result-object p0

    new-instance p1, Lcom/google/android/gms/internal/ads/jj;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/jj;-><init>(I)V

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/jo;->a(Lcom/google/android/gms/internal/ads/jj;)Lcom/google/android/gms/internal/ads/jo;

    move-result-object p0

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/jo;->a()Lcom/google/android/gms/internal/ads/jl;

    move-result-object p0

    .line 1015
    invoke-virtual {p2}, Lcom/google/android/gms/ads/AdRequest;->zzdt()Lcom/google/android/gms/internal/ads/emr;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/jl;->a(Lcom/google/android/gms/internal/ads/emr;)V

    return-void
.end method

.method public static load(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/instream/InstreamAd$InstreamAdLoadCallback;)V
    .locals 2

    .line 9
    new-instance v0, Lcom/google/android/gms/internal/ads/jo;

    const-string v1, ""

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/jo;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 10
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/jo;->a(Lcom/google/android/gms/ads/instream/InstreamAd$InstreamAdLoadCallback;)Lcom/google/android/gms/internal/ads/jo;

    move-result-object p0

    new-instance p2, Lcom/google/android/gms/internal/ads/jj;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/jj;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/jo;->a(Lcom/google/android/gms/internal/ads/jj;)Lcom/google/android/gms/internal/ads/jo;

    move-result-object p0

    .line 12
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/jo;->a()Lcom/google/android/gms/internal/ads/jl;

    move-result-object p0

    new-instance p1, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;

    invoke-direct {p1}, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;-><init>()V

    .line 13
    invoke-virtual {p1}, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;->build()Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;

    move-result-object p1

    .line 1017
    invoke-virtual {p1}, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;->zzdt()Lcom/google/android/gms/internal/ads/emr;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/jl;->a(Lcom/google/android/gms/internal/ads/emr;)V

    return-void
.end method


# virtual methods
.method public abstract destroy()V
.end method

.method public abstract getAspectRatio()F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getMediaContent()Lcom/google/android/gms/ads/MediaContent;
.end method

.method public abstract getVideoController()Lcom/google/android/gms/ads/VideoController;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getVideoCurrentTime()F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getVideoDuration()F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method protected abstract zza(Lcom/google/android/gms/ads/instream/InstreamAdView;)V
.end method
