.class public final Loh$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcv;
.implements Lfi;
.implements Llr;
.implements Lio;
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Lwh$c;
.implements Lfh$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Loh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Loh;


# direct methods
.method public constructor <init>(Loh;)V
    .locals 0

    iput-object p1, p0, Loh$b;->a:Loh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Loh;Loh$a;)V
    .locals 0

    invoke-direct {p0, p1}, Loh$b;-><init>(Loh;)V

    return-void
.end method


# virtual methods
.method public a(Leh;)V
    .locals 0

    invoke-static {p0, p1}, Lgh;->b(Lfh$b;Leh;)V

    return-void
.end method

.method public b(F)V
    .locals 0

    iget-object p1, p0, Loh$b;->a:Loh;

    invoke-static {p1}, Loh;->j(Loh;)V

    return-void
.end method

.method public c(I)V
    .locals 2

    iget-object v0, p0, Loh$b;->a:Loh;

    invoke-virtual {v0}, Loh;->C()Z

    move-result v1

    invoke-static {v0, v1, p1}, Loh;->k(Loh;ZI)V

    return-void
.end method

.method public d(Lph;Ljava/lang/Object;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lgh;->g(Lfh$b;Lph;Ljava/lang/Object;I)V

    return-void
.end method

.method public g(Landroidx/media2/exoplayer/external/Format;)V
    .locals 2

    iget-object v0, p0, Loh$b;->a:Loh;

    invoke-static {v0, p1}, Loh;->p(Loh;Landroidx/media2/exoplayer/external/Format;)Landroidx/media2/exoplayer/external/Format;

    iget-object v0, p0, Loh$b;->a:Loh;

    invoke-static {v0}, Loh;->o(Loh;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcv;

    invoke-interface {v1, p1}, Lcv;->g(Landroidx/media2/exoplayer/external/Format;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public i(Lyi;)V
    .locals 2

    iget-object v0, p0, Loh$b;->a:Loh;

    invoke-static {v0, p1}, Loh;->s(Loh;Lyi;)Lyi;

    iget-object v0, p0, Loh$b;->a:Loh;

    invoke-static {v0}, Loh;->t(Loh;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfi;

    invoke-interface {v1, p1}, Lfi;->i(Lyi;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public l(Lyi;)V
    .locals 2

    iget-object v0, p0, Loh$b;->a:Loh;

    invoke-static {v0}, Loh;->o(Loh;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcv;

    invoke-interface {v1, p1}, Lcv;->l(Lyi;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Loh$b;->a:Loh;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Loh;->p(Loh;Landroidx/media2/exoplayer/external/Format;)Landroidx/media2/exoplayer/external/Format;

    iget-object p1, p0, Loh$b;->a:Loh;

    invoke-static {p1, v0}, Loh;->f(Loh;Lyi;)Lyi;

    return-void
.end method

.method public n(Lfg;)V
    .locals 0

    invoke-static {p0, p1}, Lgh;->c(Lfh$b;Lfg;)V

    return-void
.end method

.method public o(Lyi;)V
    .locals 2

    iget-object v0, p0, Loh$b;->a:Loh;

    invoke-static {v0, p1}, Loh;->f(Loh;Lyi;)Lyi;

    iget-object v0, p0, Loh$b;->a:Loh;

    invoke-static {v0}, Loh;->o(Loh;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcv;

    invoke-interface {v1, p1}, Lcv;->o(Lyi;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onAudioDecoderInitialized(Ljava/lang/String;JJ)V
    .locals 8

    iget-object v0, p0, Loh$b;->a:Loh;

    invoke-static {v0}, Loh;->t(Loh;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lfi;

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-interface/range {v2 .. v7}, Lfi;->onAudioDecoderInitialized(Ljava/lang/String;JJ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onAudioSessionId(I)V
    .locals 3

    iget-object v0, p0, Loh$b;->a:Loh;

    invoke-static {v0}, Loh;->u(Loh;)I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Loh$b;->a:Loh;

    invoke-static {v0, p1}, Loh;->v(Loh;I)I

    iget-object v0, p0, Loh$b;->a:Loh;

    invoke-static {v0}, Loh;->w(Loh;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lxh;

    iget-object v2, p0, Loh$b;->a:Loh;

    invoke-static {v2}, Loh;->t(Loh;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v1, p1}, Lxh;->onAudioSessionId(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Loh$b;->a:Loh;

    invoke-static {v0}, Loh;->t(Loh;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfi;

    invoke-interface {v1, p1}, Lfi;->onAudioSessionId(I)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public onAudioSinkUnderrun(IJJ)V
    .locals 8

    iget-object v0, p0, Loh$b;->a:Loh;

    invoke-static {v0}, Loh;->t(Loh;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lfi;

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-interface/range {v2 .. v7}, Lfi;->onAudioSinkUnderrun(IJJ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onDroppedFrames(IJ)V
    .locals 2

    iget-object v0, p0, Loh$b;->a:Loh;

    invoke-static {v0}, Loh;->o(Loh;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcv;

    invoke-interface {v1, p1, p2, p3}, Lcv;->onDroppedFrames(IJ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onLoadingChanged(Z)V
    .locals 2

    iget-object v0, p0, Loh$b;->a:Loh;

    invoke-static {v0}, Loh;->l(Loh;)Lbu;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object v1, p0, Loh$b;->a:Loh;

    invoke-static {v1}, Loh;->m(Loh;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p1, p0, Loh$b;->a:Loh;

    invoke-static {p1}, Loh;->l(Loh;)Lbu;

    move-result-object p1

    invoke-virtual {p1, v0}, Lbu;->a(I)V

    iget-object p1, p0, Loh$b;->a:Loh;

    const/4 v0, 0x1

    :goto_0
    invoke-static {p1, v0}, Loh;->n(Loh;Z)Z

    goto :goto_1

    :cond_0
    if-nez p1, :cond_1

    iget-object p1, p0, Loh$b;->a:Loh;

    invoke-static {p1}, Loh;->m(Loh;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Loh$b;->a:Loh;

    invoke-static {p1}, Loh;->l(Loh;)Lbu;

    move-result-object p1

    invoke-virtual {p1, v0}, Lbu;->b(I)V

    iget-object p1, p0, Loh$b;->a:Loh;

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public onPlayerStateChanged(ZI)V
    .locals 0

    invoke-static {p0, p1, p2}, Lgh;->d(Lfh$b;ZI)V

    return-void
.end method

.method public onPositionDiscontinuity(I)V
    .locals 0

    invoke-static {p0, p1}, Lgh;->e(Lfh$b;I)V

    return-void
.end method

.method public onRenderedFirstFrame(Landroid/view/Surface;)V
    .locals 2

    iget-object v0, p0, Loh$b;->a:Loh;

    invoke-static {v0}, Loh;->r(Loh;)Landroid/view/Surface;

    move-result-object v0

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Loh$b;->a:Loh;

    invoke-static {v0}, Loh;->q(Loh;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Luu;

    invoke-interface {v1}, Luu;->onRenderedFirstFrame()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Loh$b;->a:Loh;

    invoke-static {v0}, Loh;->o(Loh;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcv;

    invoke-interface {v1, p1}, Lcv;->onRenderedFirstFrame(Landroid/view/Surface;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public onSeekProcessed()V
    .locals 0

    invoke-static {p0}, Lgh;->f(Lfh$b;)V

    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 2

    iget-object v0, p0, Loh$b;->a:Loh;

    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    const/4 p1, 0x1

    invoke-static {v0, v1, p1}, Loh;->h(Loh;Landroid/view/Surface;Z)V

    iget-object p1, p0, Loh$b;->a:Loh;

    invoke-static {p1, p2, p3}, Loh;->i(Loh;II)V

    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 2

    iget-object p1, p0, Loh$b;->a:Loh;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Loh;->h(Loh;Landroid/view/Surface;Z)V

    iget-object p1, p0, Loh$b;->a:Loh;

    const/4 v0, 0x0

    invoke-static {p1, v0, v0}, Loh;->i(Loh;II)V

    return v1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    iget-object p1, p0, Loh$b;->a:Loh;

    invoke-static {p1, p2, p3}, Loh;->i(Loh;II)V

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method

.method public onVideoDecoderInitialized(Ljava/lang/String;JJ)V
    .locals 8

    iget-object v0, p0, Loh$b;->a:Loh;

    invoke-static {v0}, Loh;->o(Loh;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcv;

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-interface/range {v2 .. v7}, Lcv;->onVideoDecoderInitialized(Ljava/lang/String;JJ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onVideoSizeChanged(IIIF)V
    .locals 3

    iget-object v0, p0, Loh$b;->a:Loh;

    invoke-static {v0}, Loh;->q(Loh;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Luu;

    iget-object v2, p0, Loh$b;->a:Loh;

    invoke-static {v2}, Loh;->o(Loh;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v1, p1, p2, p3, p4}, Luu;->onVideoSizeChanged(IIIF)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Loh$b;->a:Loh;

    invoke-static {v0}, Loh;->o(Loh;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcv;

    invoke-interface {v1, p1, p2, p3, p4}, Lcv;->onVideoSizeChanged(IIIF)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public q(Landroidx/media2/exoplayer/external/metadata/Metadata;)V
    .locals 2

    iget-object v0, p0, Loh$b;->a:Loh;

    invoke-static {v0}, Loh;->g(Loh;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio;

    invoke-interface {v1, p1}, Lio;->q(Landroidx/media2/exoplayer/external/metadata/Metadata;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public r(Lyi;)V
    .locals 2

    iget-object v0, p0, Loh$b;->a:Loh;

    invoke-static {v0}, Loh;->t(Loh;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfi;

    invoke-interface {v1, p1}, Lfi;->r(Lyi;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Loh$b;->a:Loh;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Loh;->e(Loh;Landroidx/media2/exoplayer/external/Format;)Landroidx/media2/exoplayer/external/Format;

    iget-object p1, p0, Loh$b;->a:Loh;

    invoke-static {p1, v0}, Loh;->s(Loh;Lyi;)Lyi;

    iget-object p1, p0, Loh$b;->a:Loh;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Loh;->v(Loh;I)I

    return-void
.end method

.method public s(Landroidx/media2/exoplayer/external/source/TrackGroupArray;Lzr;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lgh;->h(Lfh$b;Landroidx/media2/exoplayer/external/source/TrackGroupArray;Lzr;)V

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    iget-object p1, p0, Loh$b;->a:Loh;

    invoke-static {p1, p3, p4}, Loh;->i(Loh;II)V

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2

    iget-object v0, p0, Loh$b;->a:Loh;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Loh;->h(Loh;Landroid/view/Surface;Z)V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2

    iget-object p1, p0, Loh$b;->a:Loh;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Loh;->h(Loh;Landroid/view/Surface;Z)V

    iget-object p1, p0, Loh$b;->a:Loh;

    invoke-static {p1, v1, v1}, Loh;->i(Loh;II)V

    return-void
.end method

.method public u(Landroidx/media2/exoplayer/external/Format;)V
    .locals 2

    iget-object v0, p0, Loh$b;->a:Loh;

    invoke-static {v0, p1}, Loh;->e(Loh;Landroidx/media2/exoplayer/external/Format;)Landroidx/media2/exoplayer/external/Format;

    iget-object v0, p0, Loh$b;->a:Loh;

    invoke-static {v0}, Loh;->t(Loh;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfi;

    invoke-interface {v1, p1}, Lfi;->u(Landroidx/media2/exoplayer/external/Format;)V

    goto :goto_0

    :cond_0
    return-void
.end method
