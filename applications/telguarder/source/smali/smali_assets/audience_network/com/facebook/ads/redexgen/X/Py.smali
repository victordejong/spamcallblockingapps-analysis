.class public final Lcom/facebook/ads/redexgen/X/Py;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/MediaController$MediaPlayerControl;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/HL;->A04()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/HL;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/HL;)V
    .locals 0

    .line 48775
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Py;->A00:Lcom/facebook/ads/redexgen/X/HL;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final canPause()Z
    .locals 1

    .line 48776
    const/4 v0, 0x1

    return v0
.end method

.method public final canSeekBackward()Z
    .locals 1

    .line 48777
    const/4 v0, 0x1

    return v0
.end method

.method public final canSeekForward()Z
    .locals 1

    .line 48778
    const/4 v0, 0x1

    return v0
.end method

.method public final getAudioSessionId()I
    .locals 1

    .line 48779
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Py;->A00:Lcom/facebook/ads/redexgen/X/HL;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HL;->A01(Lcom/facebook/ads/redexgen/X/HL;)Lcom/facebook/ads/redexgen/X/Pt;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Py;->A00:Lcom/facebook/ads/redexgen/X/HL;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HL;->A01(Lcom/facebook/ads/redexgen/X/HL;)Lcom/facebook/ads/redexgen/X/Pt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Pt;->A04()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getBufferPercentage()I
    .locals 1

    .line 48780
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Py;->A00:Lcom/facebook/ads/redexgen/X/HL;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HL;->A01(Lcom/facebook/ads/redexgen/X/HL;)Lcom/facebook/ads/redexgen/X/Pt;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Py;->A00:Lcom/facebook/ads/redexgen/X/HL;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HL;->A01(Lcom/facebook/ads/redexgen/X/HL;)Lcom/facebook/ads/redexgen/X/Pt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Pt;->A05()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getCurrentPosition()I
    .locals 1

    .line 48781
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Py;->A00:Lcom/facebook/ads/redexgen/X/HL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/HL;->getCurrentPosition()I

    move-result v0

    return v0
.end method

.method public final getDuration()I
    .locals 1

    .line 48782
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Py;->A00:Lcom/facebook/ads/redexgen/X/HL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/HL;->getDuration()I

    move-result v0

    return v0
.end method

.method public final isPlaying()Z
    .locals 1

    .line 48783
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Py;->A00:Lcom/facebook/ads/redexgen/X/HL;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HL;->A01(Lcom/facebook/ads/redexgen/X/HL;)Lcom/facebook/ads/redexgen/X/Pt;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Py;->A00:Lcom/facebook/ads/redexgen/X/HL;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HL;->A01(Lcom/facebook/ads/redexgen/X/HL;)Lcom/facebook/ads/redexgen/X/Pt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Pt;->A0J()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final pause()V
    .locals 1

    .line 48784
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Py;->A00:Lcom/facebook/ads/redexgen/X/HL;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HL;->A02(Lcom/facebook/ads/redexgen/X/HL;)Lcom/facebook/ads/redexgen/X/Q7;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 48785
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Py;->A00:Lcom/facebook/ads/redexgen/X/HL;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HL;->A02(Lcom/facebook/ads/redexgen/X/HL;)Lcom/facebook/ads/redexgen/X/Q7;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Q7;->AAk()V

    .line 48786
    :cond_0
    return-void
.end method

.method public final seekTo(I)V
    .locals 1

    .line 48787
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Py;->A00:Lcom/facebook/ads/redexgen/X/HL;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/HL;->seekTo(I)V

    .line 48788
    return-void
.end method

.method public final start()V
    .locals 1

    .line 48789
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Py;->A00:Lcom/facebook/ads/redexgen/X/HL;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HL;->A02(Lcom/facebook/ads/redexgen/X/HL;)Lcom/facebook/ads/redexgen/X/Q7;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 48790
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Py;->A00:Lcom/facebook/ads/redexgen/X/HL;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HL;->A02(Lcom/facebook/ads/redexgen/X/HL;)Lcom/facebook/ads/redexgen/X/Q7;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Q7;->AAl()V

    .line 48791
    :cond_0
    return-void
.end method
