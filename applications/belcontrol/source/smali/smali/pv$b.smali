.class public final Lpv$b;
.super Lfh$a;
.source ""

# interfaces
.implements Lcv;
.implements Lxh;
.implements Luv$c;
.implements Lio;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Lpv;


# direct methods
.method public constructor <init>(Lpv;)V
    .locals 0

    iput-object p1, p0, Lpv$b;->a:Lpv;

    invoke-direct {p0}, Lfh$a;-><init>()V

    return-void
.end method


# virtual methods
.method public b([BJ)V
    .locals 1

    iget-object v0, p0, Lpv$b;->a:Lpv;

    invoke-virtual {v0, p1, p2, p3}, Lpv;->y([BJ)V

    return-void
.end method

.method public c(II)V
    .locals 1

    iget-object v0, p0, Lpv$b;->a:Lpv;

    invoke-virtual {v0, p1, p2}, Lpv;->z(II)V

    return-void
.end method

.method public g(Landroidx/media2/exoplayer/external/Format;)V
    .locals 3

    iget-object v0, p1, Landroidx/media2/exoplayer/external/Format;->k:Ljava/lang/String;

    invoke-static {v0}, Lvt;->m(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lpv$b;->a:Lpv;

    iget v1, p1, Landroidx/media2/exoplayer/external/Format;->p:I

    iget v2, p1, Landroidx/media2/exoplayer/external/Format;->q:I

    iget p1, p1, Landroidx/media2/exoplayer/external/Format;->t:F

    invoke-virtual {v0, v1, v2, p1}, Lpv;->A(IIF)V

    :cond_0
    return-void
.end method

.method public k(Luh;)V
    .locals 0

    return-void
.end method

.method public l(Lyi;)V
    .locals 0

    return-void
.end method

.method public m(F)V
    .locals 0

    return-void
.end method

.method public n(Lfg;)V
    .locals 1

    iget-object v0, p0, Lpv$b;->a:Lpv;

    invoke-virtual {v0, p1}, Lpv;->s(Lfg;)V

    return-void
.end method

.method public o(Lyi;)V
    .locals 0

    return-void
.end method

.method public onAudioSessionId(I)V
    .locals 1

    iget-object v0, p0, Lpv$b;->a:Lpv;

    invoke-virtual {v0, p1}, Lpv;->q(I)V

    return-void
.end method

.method public onDroppedFrames(IJ)V
    .locals 0

    return-void
.end method

.method public onPlayerStateChanged(ZI)V
    .locals 1

    iget-object v0, p0, Lpv$b;->a:Lpv;

    invoke-virtual {v0, p1, p2}, Lpv;->t(ZI)V

    return-void
.end method

.method public onPositionDiscontinuity(I)V
    .locals 1

    iget-object v0, p0, Lpv$b;->a:Lpv;

    invoke-virtual {v0, p1}, Lpv;->v(I)V

    return-void
.end method

.method public onRenderedFirstFrame(Landroid/view/Surface;)V
    .locals 0

    iget-object p1, p0, Lpv$b;->a:Lpv;

    invoke-virtual {p1}, Lpv;->w()V

    return-void
.end method

.method public onSeekProcessed()V
    .locals 1

    iget-object v0, p0, Lpv$b;->a:Lpv;

    invoke-virtual {v0}, Lpv;->x()V

    return-void
.end method

.method public onVideoDecoderInitialized(Ljava/lang/String;JJ)V
    .locals 0

    return-void
.end method

.method public onVideoSizeChanged(IIIF)V
    .locals 0

    iget-object p3, p0, Lpv$b;->a:Lpv;

    invoke-virtual {p3, p1, p2, p4}, Lpv;->A(IIF)V

    return-void
.end method

.method public q(Landroidx/media2/exoplayer/external/metadata/Metadata;)V
    .locals 1

    iget-object v0, p0, Lpv$b;->a:Lpv;

    invoke-virtual {v0, p1}, Lpv;->r(Landroidx/media2/exoplayer/external/metadata/Metadata;)V

    return-void
.end method

.method public s(Landroidx/media2/exoplayer/external/source/TrackGroupArray;Lzr;)V
    .locals 0

    iget-object p1, p0, Lpv$b;->a:Lpv;

    invoke-virtual {p1}, Lpv;->u()V

    return-void
.end method
