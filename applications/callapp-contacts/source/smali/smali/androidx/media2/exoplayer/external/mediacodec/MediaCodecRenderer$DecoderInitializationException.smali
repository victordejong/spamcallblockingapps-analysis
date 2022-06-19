.class public Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer$DecoderInitializationException;
.super Ljava/lang/Exception;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DecoderInitializationException"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Z

.field public final c:Landroidx/media2/exoplayer/external/mediacodec/a;

.field public final d:Ljava/lang/String;

.field public final e:Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer$DecoderInitializationException;


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/Format;Ljava/lang/Throwable;ZI)V
    .locals 11

    .line 106
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x24

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Decoder init failed: ["

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "], "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v6, p1, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    if-gez p4, :cond_0

    const-string p1, "neg_"

    goto :goto_0

    :cond_0
    const-string p1, ""

    .line 1172
    :goto_0
    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result p4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x4c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "androidx.media2.exoplayer.external.mediacodec.MediaCodecRenderer_"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    move-object v5, p2

    move v7, p3

    .line 106
    invoke-direct/range {v3 .. v10}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer$DecoderInitializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;ZLandroidx/media2/exoplayer/external/mediacodec/a;Ljava/lang/String;Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer$DecoderInitializationException;)V

    return-void
.end method

.method public constructor <init>(Landroidx/media2/exoplayer/external/Format;Ljava/lang/Throwable;ZLandroidx/media2/exoplayer/external/mediacodec/a;)V
    .locals 8

    .line 121
    iget-object v0, p4, Landroidx/media2/exoplayer/external/mediacodec/a;->a:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x17

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Decoder init failed: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p1, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    .line 127
    sget v0, Landroidx/media2/exoplayer/external/util/ac;->a:I

    const/4 v4, 0x0

    const/16 v6, 0x15

    if-lt v0, v6, :cond_0

    .line 2162
    instance-of v0, p2, Landroid/media/MediaCodec$CodecException;

    if-eqz v0, :cond_0

    .line 2163
    move-object v0, p2

    check-cast v0, Landroid/media/MediaCodec$CodecException;

    invoke-virtual {v0}, Landroid/media/MediaCodec$CodecException;->getDiagnosticInfo()Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    goto :goto_0

    :cond_0
    move-object v6, v4

    :goto_0
    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p2

    move v4, p3

    move-object v5, p4

    .line 121
    invoke-direct/range {v0 .. v7}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer$DecoderInitializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;ZLandroidx/media2/exoplayer/external/mediacodec/a;Ljava/lang/String;Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer$DecoderInitializationException;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;ZLandroidx/media2/exoplayer/external/mediacodec/a;Ljava/lang/String;Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer$DecoderInitializationException;)V
    .locals 0

    .line 139
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 140
    iput-object p3, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer$DecoderInitializationException;->a:Ljava/lang/String;

    .line 141
    iput-boolean p4, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer$DecoderInitializationException;->b:Z

    .line 142
    iput-object p5, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer$DecoderInitializationException;->c:Landroidx/media2/exoplayer/external/mediacodec/a;

    .line 143
    iput-object p6, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer$DecoderInitializationException;->d:Ljava/lang/String;

    .line 144
    iput-object p7, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer$DecoderInitializationException;->e:Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    return-void
.end method

.method static synthetic a(Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer$DecoderInitializationException;Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer$DecoderInitializationException;)Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer$DecoderInitializationException;
    .locals 9

    .line 3150
    new-instance v8, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    .line 3151
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer$DecoderInitializationException;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 3152
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer$DecoderInitializationException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    iget-object v3, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer$DecoderInitializationException;->a:Ljava/lang/String;

    iget-boolean v4, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer$DecoderInitializationException;->b:Z

    iget-object v5, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer$DecoderInitializationException;->c:Landroidx/media2/exoplayer/external/mediacodec/a;

    iget-object v6, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer$DecoderInitializationException;->d:Ljava/lang/String;

    move-object v0, v8

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer$DecoderInitializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;ZLandroidx/media2/exoplayer/external/mediacodec/a;Ljava/lang/String;Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer$DecoderInitializationException;)V

    return-object v8
.end method
