.class final Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaCodec$OnFrameRenderedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;


# direct methods
.method private constructor <init>(Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;Landroid/media/MediaCodec;)V
    .locals 0

    .line 1713
    iput-object p1, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer$b;->a:Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1714
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-virtual {p2, p0, p1}, Landroid/media/MediaCodec;->setOnFrameRenderedListener(Landroid/media/MediaCodec$OnFrameRenderedListener;Landroid/os/Handler;)V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;Landroid/media/MediaCodec;Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer$1;)V
    .locals 0

    .line 1711
    invoke-direct {p0, p1, p2}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer$b;-><init>(Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;Landroid/media/MediaCodec;)V

    return-void
.end method


# virtual methods
.method public final onFrameRendered(Landroid/media/MediaCodec;JJ)V
    .locals 0

    .line 1719
    iget-object p1, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer$b;->a:Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;

    iget-object p1, p1, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->b:Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer$b;

    if-eq p0, p1, :cond_0

    return-void

    .line 1723
    :cond_0
    iget-object p1, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer$b;->a:Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;

    invoke-virtual {p1, p2, p3}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->e(J)V

    return-void
.end method
