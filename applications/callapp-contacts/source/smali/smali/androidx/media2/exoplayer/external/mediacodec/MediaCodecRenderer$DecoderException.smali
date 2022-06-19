.class public Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer$DecoderException;
.super Ljava/lang/Exception;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DecoderException"
.end annotation


# instance fields
.field public final a:Landroidx/media2/exoplayer/external/mediacodec/a;

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;Landroidx/media2/exoplayer/external/mediacodec/a;)V
    .locals 4

    const/4 v0, 0x0

    if-nez p2, :cond_0

    move-object v1, v0

    goto :goto_0

    .line 186
    :cond_0
    iget-object v1, p2, Landroidx/media2/exoplayer/external/mediacodec/a;->a:Ljava/lang/String;

    :goto_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "Decoder failed: "

    if-eqz v2, :cond_1

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-direct {p0, v1, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 187
    iput-object p2, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer$DecoderException;->a:Landroidx/media2/exoplayer/external/mediacodec/a;

    .line 188
    sget p2, Landroidx/media2/exoplayer/external/util/ac;->a:I

    const/16 v1, 0x15

    if-lt p2, v1, :cond_2

    .line 1193
    instance-of p2, p1, Landroid/media/MediaCodec$CodecException;

    if-eqz p2, :cond_2

    .line 1194
    check-cast p1, Landroid/media/MediaCodec$CodecException;

    invoke-virtual {p1}, Landroid/media/MediaCodec$CodecException;->getDiagnosticInfo()Ljava/lang/String;

    move-result-object v0

    .line 188
    :cond_2
    iput-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer$DecoderException;->b:Ljava/lang/String;

    return-void
.end method
