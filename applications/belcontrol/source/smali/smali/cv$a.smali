.class public final Lcv$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Landroid/os/Handler;

.field public final b:Lcv;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcv;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    invoke-static {p1}, Lit;->e(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Landroid/os/Handler;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcv$a;->a:Landroid/os/Handler;

    iput-object p2, p0, Lcv$a;->b:Lcv;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;JJ)V
    .locals 9

    iget-object v0, p0, Lcv$a;->b:Lcv;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcv$a;->a:Landroid/os/Handler;

    new-instance v8, Lwu;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lwu;-><init>(Lcv$a;Ljava/lang/String;JJ)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public b(Lyi;)V
    .locals 2

    invoke-virtual {p1}, Lyi;->a()V

    iget-object v0, p0, Lcv$a;->b:Lcv;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcv$a;->a:Landroid/os/Handler;

    new-instance v1, Lbv;

    invoke-direct {v1, p0, p1}, Lbv;-><init>(Lcv$a;Lyi;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public c(IJ)V
    .locals 2

    iget-object v0, p0, Lcv$a;->b:Lcv;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcv$a;->a:Landroid/os/Handler;

    new-instance v1, Lyu;

    invoke-direct {v1, p0, p1, p2, p3}, Lyu;-><init>(Lcv$a;IJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public d(Lyi;)V
    .locals 2

    iget-object v0, p0, Lcv$a;->b:Lcv;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcv$a;->a:Landroid/os/Handler;

    new-instance v1, Lvu;

    invoke-direct {v1, p0, p1}, Lvu;-><init>(Lcv$a;Lyi;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public e(Landroidx/media2/exoplayer/external/Format;)V
    .locals 2

    iget-object v0, p0, Lcv$a;->b:Lcv;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcv$a;->a:Landroid/os/Handler;

    new-instance v1, Lxu;

    invoke-direct {v1, p0, p1}, Lxu;-><init>(Lcv$a;Landroidx/media2/exoplayer/external/Format;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final synthetic f(Ljava/lang/String;JJ)V
    .locals 6

    iget-object v0, p0, Lcv$a;->b:Lcv;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lcv;->onVideoDecoderInitialized(Ljava/lang/String;JJ)V

    return-void
.end method

.method public final synthetic g(Lyi;)V
    .locals 1

    invoke-virtual {p1}, Lyi;->a()V

    iget-object v0, p0, Lcv$a;->b:Lcv;

    invoke-interface {v0, p1}, Lcv;->l(Lyi;)V

    return-void
.end method

.method public final synthetic h(IJ)V
    .locals 1

    iget-object v0, p0, Lcv$a;->b:Lcv;

    invoke-interface {v0, p1, p2, p3}, Lcv;->onDroppedFrames(IJ)V

    return-void
.end method

.method public final synthetic i(Lyi;)V
    .locals 1

    iget-object v0, p0, Lcv$a;->b:Lcv;

    invoke-interface {v0, p1}, Lcv;->o(Lyi;)V

    return-void
.end method

.method public final synthetic j(Landroidx/media2/exoplayer/external/Format;)V
    .locals 1

    iget-object v0, p0, Lcv$a;->b:Lcv;

    invoke-interface {v0, p1}, Lcv;->g(Landroidx/media2/exoplayer/external/Format;)V

    return-void
.end method

.method public final synthetic k(Landroid/view/Surface;)V
    .locals 1

    iget-object v0, p0, Lcv$a;->b:Lcv;

    invoke-interface {v0, p1}, Lcv;->onRenderedFirstFrame(Landroid/view/Surface;)V

    return-void
.end method

.method public final synthetic l(IIIF)V
    .locals 1

    iget-object v0, p0, Lcv$a;->b:Lcv;

    invoke-interface {v0, p1, p2, p3, p4}, Lcv;->onVideoSizeChanged(IIIF)V

    return-void
.end method

.method public m(Landroid/view/Surface;)V
    .locals 2

    iget-object v0, p0, Lcv$a;->b:Lcv;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcv$a;->a:Landroid/os/Handler;

    new-instance v1, Lav;

    invoke-direct {v1, p0, p1}, Lav;-><init>(Lcv$a;Landroid/view/Surface;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public n(IIIF)V
    .locals 8

    iget-object v0, p0, Lcv$a;->b:Lcv;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcv$a;->a:Landroid/os/Handler;

    new-instance v7, Lzu;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lzu;-><init>(Lcv$a;IIIF)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
