.class final Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "d"
.end annotation


# instance fields
.field private final a:I

.field private b:[Landroid/media/MediaCodecInfo;


# direct methods
.method public constructor <init>(ZZ)V
    .locals 0

    .line 944
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 948
    :goto_1
    iput p1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$d;->a:I

    return-void
.end method

.method private c()V
    .locals 2

    .line 981
    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$d;->b:[Landroid/media/MediaCodecInfo;

    if-nez v0, :cond_0

    .line 982
    new-instance v0, Landroid/media/MediaCodecList;

    iget v1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$d;->a:I

    invoke-direct {v0, v1}, Landroid/media/MediaCodecList;-><init>(I)V

    invoke-virtual {v0}, Landroid/media/MediaCodecList;->getCodecInfos()[Landroid/media/MediaCodecInfo;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$d;->b:[Landroid/media/MediaCodecInfo;

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 953
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$d;->c()V

    .line 954
    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$d;->b:[Landroid/media/MediaCodecInfo;

    array-length v0, v0

    return v0
.end method

.method public final a(I)Landroid/media/MediaCodecInfo;
    .locals 1

    .line 959
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$d;->c()V

    .line 960
    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$d;->b:[Landroid/media/MediaCodecInfo;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z
    .locals 0

    .line 977
    invoke-virtual {p2, p1}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureRequired(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z
    .locals 0

    .line 971
    invoke-virtual {p3, p1}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureSupported(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
