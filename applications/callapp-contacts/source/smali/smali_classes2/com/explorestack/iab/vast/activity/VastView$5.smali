.class final Lcom/explorestack/iab/vast/activity/VastView$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/iab/vast/activity/VastView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/explorestack/iab/vast/activity/VastView;


# direct methods
.method constructor <init>(Lcom/explorestack/iab/vast/activity/VastView;)V
    .locals 0

    .line 1505
    iput-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView$5;->a:Lcom/explorestack/iab/vast/activity/VastView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    .line 1508
    iget-object p2, p0, Lcom/explorestack/iab/vast/activity/VastView$5;->a:Lcom/explorestack/iab/vast/activity/VastView;

    invoke-static {p2}, Lcom/explorestack/iab/vast/activity/VastView;->k(Lcom/explorestack/iab/vast/activity/VastView;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "onSurfaceTextureAvailable"

    invoke-static {p2, p3}, Lcom/explorestack/iab/vast/VastLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1509
    iget-object p2, p0, Lcom/explorestack/iab/vast/activity/VastView$5;->a:Lcom/explorestack/iab/vast/activity/VastView;

    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p2, Lcom/explorestack/iab/vast/activity/VastView;->c:Landroid/view/Surface;

    .line 1510
    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView$5;->a:Lcom/explorestack/iab/vast/activity/VastView;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/explorestack/iab/vast/activity/VastView;->a(Lcom/explorestack/iab/vast/activity/VastView;Z)Z

    .line 1511
    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView$5;->a:Lcom/explorestack/iab/vast/activity/VastView;

    invoke-static {p1}, Lcom/explorestack/iab/vast/activity/VastView;->s(Lcom/explorestack/iab/vast/activity/VastView;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1512
    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView$5;->a:Lcom/explorestack/iab/vast/activity/VastView;

    invoke-static {p1}, Lcom/explorestack/iab/vast/activity/VastView;->t(Lcom/explorestack/iab/vast/activity/VastView;)Z

    .line 1513
    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView$5;->a:Lcom/explorestack/iab/vast/activity/VastView;

    invoke-static {p1, p3}, Lcom/explorestack/iab/vast/activity/VastView;->a(Lcom/explorestack/iab/vast/activity/VastView;Ljava/lang/String;)V

    return-void

    .line 1514
    :cond_0
    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView$5;->a:Lcom/explorestack/iab/vast/activity/VastView;

    invoke-virtual {p1}, Lcom/explorestack/iab/vast/activity/VastView;->b()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1515
    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView$5;->a:Lcom/explorestack/iab/vast/activity/VastView;

    iget-object p1, p1, Lcom/explorestack/iab/vast/activity/VastView;->l:Landroid/media/MediaPlayer;

    iget-object p2, p0, Lcom/explorestack/iab/vast/activity/VastView$5;->a:Lcom/explorestack/iab/vast/activity/VastView;

    iget-object p2, p2, Lcom/explorestack/iab/vast/activity/VastView;->c:Landroid/view/Surface;

    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 1516
    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView$5;->a:Lcom/explorestack/iab/vast/activity/VastView;

    invoke-static {p1}, Lcom/explorestack/iab/vast/activity/VastView;->u(Lcom/explorestack/iab/vast/activity/VastView;)V

    :cond_1
    return-void
.end method

.method public final onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 2

    .line 1527
    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView$5;->a:Lcom/explorestack/iab/vast/activity/VastView;

    invoke-static {p1}, Lcom/explorestack/iab/vast/activity/VastView;->k(Lcom/explorestack/iab/vast/activity/VastView;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "onSurfaceTextureDestroyed"

    invoke-static {p1, v0}, Lcom/explorestack/iab/vast/VastLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1528
    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView$5;->a:Lcom/explorestack/iab/vast/activity/VastView;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/explorestack/iab/vast/activity/VastView;->c:Landroid/view/Surface;

    .line 1529
    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView$5;->a:Lcom/explorestack/iab/vast/activity/VastView;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/explorestack/iab/vast/activity/VastView;->a(Lcom/explorestack/iab/vast/activity/VastView;Z)Z

    .line 1530
    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView$5;->a:Lcom/explorestack/iab/vast/activity/VastView;

    invoke-virtual {p1}, Lcom/explorestack/iab/vast/activity/VastView;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1531
    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView$5;->a:Lcom/explorestack/iab/vast/activity/VastView;

    iget-object p1, p1, Lcom/explorestack/iab/vast/activity/VastView;->l:Landroid/media/MediaPlayer;

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 1532
    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView$5;->a:Lcom/explorestack/iab/vast/activity/VastView;

    invoke-static {p1}, Lcom/explorestack/iab/vast/activity/VastView;->v(Lcom/explorestack/iab/vast/activity/VastView;)V

    :cond_0
    return v1
.end method

.method public final onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 2

    .line 1522
    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView$5;->a:Lcom/explorestack/iab/vast/activity/VastView;

    invoke-static {p1}, Lcom/explorestack/iab/vast/activity/VastView;->k(Lcom/explorestack/iab/vast/activity/VastView;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onSurfaceTextureSizeChanged: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/explorestack/iab/vast/VastLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method
