.class public final Lcom/facebook/ads/redexgen/X/aP;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/MF;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/aO;->setListener(Lcom/facebook/ads/MediaViewListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/MediaViewListener;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/aO;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/aO;Lcom/facebook/ads/MediaViewListener;)V
    .locals 0

    .line 67287
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/aP;->A01:Lcom/facebook/ads/redexgen/X/aO;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/aP;->A00:Lcom/facebook/ads/MediaViewListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A9k()V
    .locals 2

    .line 67288
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/aP;->A00:Lcom/facebook/ads/MediaViewListener;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aP;->A01:Lcom/facebook/ads/redexgen/X/aO;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/aO;->A00(Lcom/facebook/ads/redexgen/X/aO;)Lcom/facebook/ads/MediaView;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/MediaViewListener;->onComplete(Lcom/facebook/ads/MediaView;)V

    .line 67289
    return-void
.end method

.method public final AA3()V
    .locals 2

    .line 67290
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/aP;->A00:Lcom/facebook/ads/MediaViewListener;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aP;->A01:Lcom/facebook/ads/redexgen/X/aO;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/aO;->A00(Lcom/facebook/ads/redexgen/X/aO;)Lcom/facebook/ads/MediaView;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/MediaViewListener;->onEnterFullscreen(Lcom/facebook/ads/MediaView;)V

    .line 67291
    return-void
.end method

.method public final AA9()V
    .locals 2

    .line 67292
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/aP;->A00:Lcom/facebook/ads/MediaViewListener;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aP;->A01:Lcom/facebook/ads/redexgen/X/aO;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/aO;->A00(Lcom/facebook/ads/redexgen/X/aO;)Lcom/facebook/ads/MediaView;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/MediaViewListener;->onExitFullscreen(Lcom/facebook/ads/MediaView;)V

    .line 67293
    return-void
.end method

.method public final AAD()V
    .locals 2

    .line 67294
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/aP;->A00:Lcom/facebook/ads/MediaViewListener;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aP;->A01:Lcom/facebook/ads/redexgen/X/aO;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/aO;->A00(Lcom/facebook/ads/redexgen/X/aO;)Lcom/facebook/ads/MediaView;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/MediaViewListener;->onFullscreenBackground(Lcom/facebook/ads/MediaView;)V

    .line 67295
    return-void
.end method

.method public final AAE()V
    .locals 2

    .line 67296
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/aP;->A00:Lcom/facebook/ads/MediaViewListener;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aP;->A01:Lcom/facebook/ads/redexgen/X/aO;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/aO;->A00(Lcom/facebook/ads/redexgen/X/aO;)Lcom/facebook/ads/MediaView;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/MediaViewListener;->onFullscreenForeground(Lcom/facebook/ads/MediaView;)V

    .line 67297
    return-void
.end method

.method public final AB4()V
    .locals 2

    .line 67298
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/aP;->A00:Lcom/facebook/ads/MediaViewListener;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aP;->A01:Lcom/facebook/ads/redexgen/X/aO;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/aO;->A00(Lcom/facebook/ads/redexgen/X/aO;)Lcom/facebook/ads/MediaView;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/MediaViewListener;->onPlay(Lcom/facebook/ads/MediaView;)V

    .line 67299
    return-void
.end method

.method public final AC9()V
    .locals 3

    .line 67300
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/aP;->A00:Lcom/facebook/ads/MediaViewListener;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aP;->A01:Lcom/facebook/ads/redexgen/X/aO;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/aO;->A00(Lcom/facebook/ads/redexgen/X/aO;)Lcom/facebook/ads/MediaView;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aP;->A01:Lcom/facebook/ads/redexgen/X/aO;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/aO;->A01(Lcom/facebook/ads/redexgen/X/aO;)Lcom/facebook/ads/MediaViewVideoRenderer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->getVolume()F

    move-result v0

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/MediaViewListener;->onVolumeChange(Lcom/facebook/ads/MediaView;F)V

    .line 67301
    return-void
.end method

.method public final onPause()V
    .locals 2

    .line 67302
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/aP;->A00:Lcom/facebook/ads/MediaViewListener;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aP;->A01:Lcom/facebook/ads/redexgen/X/aO;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/aO;->A00(Lcom/facebook/ads/redexgen/X/aO;)Lcom/facebook/ads/MediaView;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/MediaViewListener;->onPause(Lcom/facebook/ads/MediaView;)V

    .line 67303
    return-void
.end method
