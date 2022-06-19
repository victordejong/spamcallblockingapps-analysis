.class public final Lcom/google/android/gms/internal/ads/doz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Z

.field public final c:Z

.field public final d:Z

.field private final e:Ljava/lang/String;

.field private final f:Landroid/media/MediaCodecInfo$CodecCapabilities;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZ)V
    .locals 5

    .prologue
    const/16 v4, 0x15

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/drz;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/doz;->a:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/doz;->e:Ljava/lang/String;

    .line 6
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/doz;->f:Landroid/media/MediaCodecInfo$CodecCapabilities;

    .line 7
    if-nez p4, :cond_3

    if-eqz p3, :cond_3

    .line 8
    sget v0, Lcom/google/android/gms/internal/ads/dsn;->a:I

    const/16 v3, 0x13

    if-lt v0, v3, :cond_2

    .line 9
    const-string/jumbo v0, "adaptive-playback"

    invoke-virtual {p3, v0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v0

    .line 10
    if-eqz v0, :cond_2

    move v0, v1

    .line 11
    :goto_0
    if-eqz v0, :cond_3

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/doz;->b:Z

    .line 12
    if-eqz p3, :cond_5

    .line 13
    sget v0, Lcom/google/android/gms/internal/ads/dsn;->a:I

    if-lt v0, v4, :cond_4

    .line 14
    const-string/jumbo v0, "tunneled-playback"

    invoke-virtual {p3, v0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v0

    .line 15
    if-eqz v0, :cond_4

    move v0, v1

    .line 16
    :goto_2
    if-eqz v0, :cond_5

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/doz;->c:Z

    .line 17
    if-nez p5, :cond_0

    if-eqz p3, :cond_1

    .line 18
    sget v0, Lcom/google/android/gms/internal/ads/dsn;->a:I

    if-lt v0, v4, :cond_6

    .line 19
    const-string/jumbo v0, "secure-playback"

    invoke-virtual {p3, v0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v0

    .line 20
    if-eqz v0, :cond_6

    move v0, v1

    .line 21
    :goto_4
    if-eqz v0, :cond_1

    :cond_0
    move v2, v1

    :cond_1
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/doz;->d:Z

    .line 22
    return-void

    :cond_2
    move v0, v2

    .line 10
    goto :goto_0

    :cond_3
    move v0, v2

    .line 11
    goto :goto_1

    :cond_4
    move v0, v2

    .line 15
    goto :goto_2

    :cond_5
    move v0, v2

    .line 16
    goto :goto_3

    :cond_6
    move v0, v2

    .line 20
    goto :goto_4
.end method

.method public static a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/doz;
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/doz;

    move-object v1, p0

    move-object v3, v2

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/doz;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZ)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZ)Lcom/google/android/gms/internal/ads/doz;
    .locals 6

    .prologue
    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/doz;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/doz;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZ)V

    return-object v0
.end method

.method private static a(Landroid/media/MediaCodecInfo$VideoCapabilities;IID)Z
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 121
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    cmpl-double v0, p3, v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    cmpg-double v0, p3, v0

    if-gtz v0, :cond_1

    .line 122
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/media/MediaCodecInfo$VideoCapabilities;->isSizeSupported(II)Z

    move-result v0

    .line 124
    :goto_0
    return v0

    .line 123
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/media/MediaCodecInfo$VideoCapabilities;->areSizeAndRateSupported(IID)Z

    move-result v0

    goto :goto_0
.end method

.method private final c(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 119
    const-string/jumbo v0, "MediaCodecInfo"

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/doz;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/doz;->e:Ljava/lang/String;

    sget-object v3, Lcom/google/android/gms/internal/ads/dsn;->e:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x14

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v4, "NoSupport ["

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "] ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    return-void
.end method


# virtual methods
.method public final a(II)Landroid/graphics/Point;
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 85
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/doz;->f:Landroid/media/MediaCodecInfo$CodecCapabilities;

    if-nez v1, :cond_0

    .line 86
    const-string/jumbo v1, "align.caps"

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/doz;->c(Ljava/lang/String;)V

    .line 96
    :goto_0
    return-object v0

    .line 88
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/doz;->f:Landroid/media/MediaCodecInfo$CodecCapabilities;

    invoke-virtual {v1}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object v1

    .line 89
    if-nez v1, :cond_1

    .line 90
    const-string/jumbo v1, "align.vCaps"

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/doz;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 92
    :cond_1
    invoke-virtual {v1}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getWidthAlignment()I

    move-result v2

    .line 93
    invoke-virtual {v1}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getHeightAlignment()I

    move-result v1

    .line 94
    new-instance v0, Landroid/graphics/Point;

    invoke-static {p1, v2}, Lcom/google/android/gms/internal/ads/dsn;->a(II)I

    move-result v3

    mul-int/2addr v2, v3

    .line 95
    invoke-static {p2, v1}, Lcom/google/android/gms/internal/ads/dsn;->a(II)I

    move-result v3

    mul-int/2addr v1, v3

    invoke-direct {v0, v2, v1}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_0
.end method

.method public final a(I)Z
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 97
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/doz;->f:Landroid/media/MediaCodecInfo$CodecCapabilities;

    if-nez v1, :cond_0

    .line 98
    const-string/jumbo v1, "sampleRate.caps"

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/doz;->c(Ljava/lang/String;)V

    .line 107
    :goto_0
    return v0

    .line 100
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/doz;->f:Landroid/media/MediaCodecInfo$CodecCapabilities;

    invoke-virtual {v1}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getAudioCapabilities()Landroid/media/MediaCodecInfo$AudioCapabilities;

    move-result-object v1

    .line 101
    if-nez v1, :cond_1

    .line 102
    const-string/jumbo v1, "sampleRate.aCaps"

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/doz;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 104
    :cond_1
    invoke-virtual {v1, p1}, Landroid/media/MediaCodecInfo$AudioCapabilities;->isSampleRateSupported(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 105
    const/16 v1, 0x1f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v1, "sampleRate.support, "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/doz;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 107
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final a(IID)Z
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    const/16 v3, 0x45

    const/4 v0, 0x0

    .line 70
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/doz;->f:Landroid/media/MediaCodecInfo$CodecCapabilities;

    if-nez v1, :cond_0

    .line 71
    const-string/jumbo v1, "sizeAndRate.caps"

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/doz;->c(Ljava/lang/String;)V

    .line 84
    :goto_0
    return v0

    .line 73
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/doz;->f:Landroid/media/MediaCodecInfo$CodecCapabilities;

    invoke-virtual {v1}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object v1

    .line 74
    if-nez v1, :cond_1

    .line 75
    const-string/jumbo v1, "sizeAndRate.vCaps"

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/doz;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 77
    :cond_1
    invoke-static {v1, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/doz;->a(Landroid/media/MediaCodecInfo$VideoCapabilities;IID)Z

    move-result v2

    if-nez v2, :cond_4

    .line 78
    if-ge p1, p2, :cond_2

    .line 79
    invoke-static {v1, p2, p1, p3, p4}, Lcom/google/android/gms/internal/ads/doz;->a(Landroid/media/MediaCodecInfo$VideoCapabilities;IID)Z

    move-result v1

    if-nez v1, :cond_3

    .line 80
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v2, "sizeAndRate.support, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/doz;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 82
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v1, "sizeAndRate.rotated, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 83
    const-string/jumbo v1, "MediaCodecInfo"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/doz;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/doz;->e:Ljava/lang/String;

    sget-object v4, Lcom/google/android/gms/internal/ads/dsn;->e:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x19

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v5, "AssumedSupport ["

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v5, "] ["

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "] ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_4
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public final a()[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/doz;->f:Landroid/media/MediaCodecInfo$CodecCapabilities;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/doz;->f:Landroid/media/MediaCodecInfo$CodecCapabilities;

    iget-object v0, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/media/MediaCodecInfo$CodecProfileLevel;

    .line 25
    :goto_0
    return-object v0

    .line 24
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/doz;->f:Landroid/media/MediaCodecInfo$CodecCapabilities;

    iget-object v0, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    goto :goto_0
.end method

.method public final b(I)Z
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 108
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/doz;->f:Landroid/media/MediaCodecInfo$CodecCapabilities;

    if-nez v1, :cond_0

    .line 109
    const-string/jumbo v1, "channelCount.caps"

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/doz;->c(Ljava/lang/String;)V

    .line 118
    :goto_0
    return v0

    .line 111
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/doz;->f:Landroid/media/MediaCodecInfo$CodecCapabilities;

    invoke-virtual {v1}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getAudioCapabilities()Landroid/media/MediaCodecInfo$AudioCapabilities;

    move-result-object v1

    .line 112
    if-nez v1, :cond_1

    .line 113
    const-string/jumbo v1, "channelCount.aCaps"

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/doz;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 115
    :cond_1
    invoke-virtual {v1}, Landroid/media/MediaCodecInfo$AudioCapabilities;->getMaxInputChannelCount()I

    move-result v1

    if-ge v1, p1, :cond_2

    .line 116
    const/16 v1, 0x21

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v1, "channelCount.support, "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/doz;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 118
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)Z
    .locals 10

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 26
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/doz;->e:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    move v0, v1

    .line 69
    :goto_0
    return v0

    .line 29
    :cond_1
    if-eqz p1, :cond_12

    .line 30
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 31
    const-string/jumbo v3, "avc1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, "avc3"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 32
    :cond_2
    const-string/jumbo v0, "video/avc"

    move-object v4, v0

    .line 55
    :goto_1
    if-nez v4, :cond_13

    move v0, v1

    .line 56
    goto :goto_0

    .line 33
    :cond_3
    const-string/jumbo v3, "hev1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string/jumbo v3, "hvc1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 34
    :cond_4
    const-string/jumbo v0, "video/hevc"

    move-object v4, v0

    goto :goto_1

    .line 35
    :cond_5
    const-string/jumbo v3, "vp9"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 36
    const-string/jumbo v0, "video/x-vnd.on2.vp9"

    move-object v4, v0

    goto :goto_1

    .line 37
    :cond_6
    const-string/jumbo v3, "vp8"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 38
    const-string/jumbo v0, "video/x-vnd.on2.vp8"

    move-object v4, v0

    goto :goto_1

    .line 39
    :cond_7
    const-string/jumbo v3, "mp4a"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 40
    const-string/jumbo v0, "audio/mp4a-latm"

    move-object v4, v0

    goto :goto_1

    .line 41
    :cond_8
    const-string/jumbo v3, "ac-3"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    const-string/jumbo v3, "dac3"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 42
    :cond_9
    const-string/jumbo v0, "audio/ac3"

    move-object v4, v0

    goto :goto_1

    .line 43
    :cond_a
    const-string/jumbo v3, "ec-3"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_b

    const-string/jumbo v3, "dec3"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 44
    :cond_b
    const-string/jumbo v0, "audio/eac3"

    move-object v4, v0

    goto :goto_1

    .line 45
    :cond_c
    const-string/jumbo v3, "dtsc"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_d

    const-string/jumbo v3, "dtse"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 46
    :cond_d
    const-string/jumbo v0, "audio/vnd.dts"

    move-object v4, v0

    goto/16 :goto_1

    .line 47
    :cond_e
    const-string/jumbo v3, "dtsh"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_f

    const-string/jumbo v3, "dtsl"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 48
    :cond_f
    const-string/jumbo v0, "audio/vnd.dts.hd"

    move-object v4, v0

    goto/16 :goto_1

    .line 49
    :cond_10
    const-string/jumbo v3, "opus"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 50
    const-string/jumbo v0, "audio/opus"

    move-object v4, v0

    goto/16 :goto_1

    .line 51
    :cond_11
    const-string/jumbo v3, "vorbis"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 52
    const-string/jumbo v0, "audio/vorbis"

    move-object v4, v0

    goto/16 :goto_1

    .line 53
    :cond_12
    const/4 v0, 0x0

    move-object v4, v0

    goto/16 :goto_1

    .line 57
    :cond_13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/doz;->e:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 58
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0xd

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v0, "codec.mime "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/doz;->c(Ljava/lang/String;)V

    move v0, v2

    .line 59
    goto/16 :goto_0

    .line 60
    :cond_14
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/dpb;->a(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v5

    .line 61
    if-nez v5, :cond_15

    move v0, v1

    .line 62
    goto/16 :goto_0

    .line 63
    :cond_15
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/doz;->a()[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    move-result-object v6

    array-length v7, v6

    move v3, v2

    :goto_2
    if-ge v3, v7, :cond_17

    aget-object v8, v6, v3

    .line 64
    iget v9, v8, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    iget-object v0, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v9, v0, :cond_16

    iget v8, v8, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    iget-object v0, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    .line 65
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lt v8, v0, :cond_16

    move v0, v1

    .line 66
    goto/16 :goto_0

    .line 67
    :cond_16
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    .line 68
    :cond_17
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x16

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v0, "codec.profileLevel, "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/doz;->c(Ljava/lang/String;)V

    move v0, v2

    .line 69
    goto/16 :goto_0
.end method
