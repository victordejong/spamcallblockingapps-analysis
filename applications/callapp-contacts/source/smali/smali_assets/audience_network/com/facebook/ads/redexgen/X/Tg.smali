.class public final Lcom/facebook/ads/redexgen/X/Tg;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/MH;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Th;->setListener(Lcom/facebook/ads/MediaViewListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/MediaViewListener;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/Th;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Th;Lcom/facebook/ads/MediaViewListener;)V
    .locals 0

    .line 55054
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Tg;->A01:Lcom/facebook/ads/redexgen/X/Th;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Tg;->A00:Lcom/facebook/ads/MediaViewListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A9l()V
    .locals 2

    .line 55055
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Tg;->A00:Lcom/facebook/ads/MediaViewListener;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tg;->A01:Lcom/facebook/ads/redexgen/X/Th;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Th;->A00(Lcom/facebook/ads/redexgen/X/Th;)Lcom/facebook/ads/MediaView;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/MediaViewListener;->onComplete(Lcom/facebook/ads/MediaView;)V

    .line 55056
    return-void
.end method

.method public final AA4()V
    .locals 2

    .line 55057
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Tg;->A00:Lcom/facebook/ads/MediaViewListener;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tg;->A01:Lcom/facebook/ads/redexgen/X/Th;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Th;->A00(Lcom/facebook/ads/redexgen/X/Th;)Lcom/facebook/ads/MediaView;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/MediaViewListener;->onEnterFullscreen(Lcom/facebook/ads/MediaView;)V

    .line 55058
    return-void
.end method

.method public final AAA()V
    .locals 2

    .line 55059
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Tg;->A00:Lcom/facebook/ads/MediaViewListener;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tg;->A01:Lcom/facebook/ads/redexgen/X/Th;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Th;->A00(Lcom/facebook/ads/redexgen/X/Th;)Lcom/facebook/ads/MediaView;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/MediaViewListener;->onExitFullscreen(Lcom/facebook/ads/MediaView;)V

    .line 55060
    return-void
.end method

.method public final AAE()V
    .locals 2

    .line 55061
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Tg;->A00:Lcom/facebook/ads/MediaViewListener;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tg;->A01:Lcom/facebook/ads/redexgen/X/Th;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Th;->A00(Lcom/facebook/ads/redexgen/X/Th;)Lcom/facebook/ads/MediaView;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/MediaViewListener;->onFullscreenBackground(Lcom/facebook/ads/MediaView;)V

    .line 55062
    return-void
.end method

.method public final AAF()V
    .locals 2

    .line 55063
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Tg;->A00:Lcom/facebook/ads/MediaViewListener;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tg;->A01:Lcom/facebook/ads/redexgen/X/Th;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Th;->A00(Lcom/facebook/ads/redexgen/X/Th;)Lcom/facebook/ads/MediaView;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/MediaViewListener;->onFullscreenForeground(Lcom/facebook/ads/MediaView;)V

    .line 55064
    return-void
.end method

.method public final AB4()V
    .locals 2

    .line 55065
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Tg;->A00:Lcom/facebook/ads/MediaViewListener;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tg;->A01:Lcom/facebook/ads/redexgen/X/Th;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Th;->A00(Lcom/facebook/ads/redexgen/X/Th;)Lcom/facebook/ads/MediaView;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/MediaViewListener;->onPlay(Lcom/facebook/ads/MediaView;)V

    .line 55066
    return-void
.end method

.method public final AC9()V
    .locals 3

    .line 55067
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Tg;->A00:Lcom/facebook/ads/MediaViewListener;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tg;->A01:Lcom/facebook/ads/redexgen/X/Th;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Th;->A00(Lcom/facebook/ads/redexgen/X/Th;)Lcom/facebook/ads/MediaView;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tg;->A01:Lcom/facebook/ads/redexgen/X/Th;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Th;->A01(Lcom/facebook/ads/redexgen/X/Th;)Lcom/facebook/ads/MediaViewVideoRenderer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->getVolume()F

    move-result v0

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/MediaViewListener;->onVolumeChange(Lcom/facebook/ads/MediaView;F)V

    .line 55068
    return-void
.end method

.method public final onPause()V
    .locals 2

    .line 55069
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Tg;->A00:Lcom/facebook/ads/MediaViewListener;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tg;->A01:Lcom/facebook/ads/redexgen/X/Th;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Th;->A00(Lcom/facebook/ads/redexgen/X/Th;)Lcom/facebook/ads/MediaView;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/MediaViewListener;->onPause(Lcom/facebook/ads/MediaView;)V

    .line 55070
    return-void
.end method
