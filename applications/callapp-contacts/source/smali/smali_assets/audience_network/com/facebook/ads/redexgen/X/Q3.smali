.class public final Lcom/facebook/ads/redexgen/X/Q3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/MediaController$MediaPlayerControl;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/HQ;->A04()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A01:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/HQ;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Q3;->A00()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/HQ;)V
    .locals 0

    .line 48739
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Q3;->A00:Lcom/facebook/ads/redexgen/X/HQ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "T46fCpiGc88W2sm67KitVw29EyPc3"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "CnzVRlVQiaWVzZBS"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "ndpW2a6BPo0GfPTTlqn3VUL3zbZB353"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "6dBvfVqLyh6nhF4N5m"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "imXeYKfRY50epxOYIoCDJpdee5DGPOn9"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "a2YCts1Ck8i"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "mjIxnllGj7l0AybsaVU42LegCoMqgA9"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "OPSSIwvLFtyh4B3JmayX8W92hCUnvGiN"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Q3;->A01:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final canPause()Z
    .locals 1

    .line 48740
    const/4 v0, 0x1

    return v0
.end method

.method public final canSeekBackward()Z
    .locals 1

    .line 48741
    const/4 v0, 0x1

    return v0
.end method

.method public final canSeekForward()Z
    .locals 1

    .line 48742
    const/4 v0, 0x1

    return v0
.end method

.method public final getAudioSessionId()I
    .locals 1

    .line 48743
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Q3;->A00:Lcom/facebook/ads/redexgen/X/HQ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HQ;->A01(Lcom/facebook/ads/redexgen/X/HQ;)Lcom/facebook/ads/redexgen/X/Py;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Q3;->A00:Lcom/facebook/ads/redexgen/X/HQ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HQ;->A01(Lcom/facebook/ads/redexgen/X/HQ;)Lcom/facebook/ads/redexgen/X/Py;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Py;->A05()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getBufferPercentage()I
    .locals 1

    .line 48744
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Q3;->A00:Lcom/facebook/ads/redexgen/X/HQ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HQ;->A01(Lcom/facebook/ads/redexgen/X/HQ;)Lcom/facebook/ads/redexgen/X/Py;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Q3;->A00:Lcom/facebook/ads/redexgen/X/HQ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HQ;->A01(Lcom/facebook/ads/redexgen/X/HQ;)Lcom/facebook/ads/redexgen/X/Py;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Py;->A06()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getCurrentPosition()I
    .locals 1

    .line 48745
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Q3;->A00:Lcom/facebook/ads/redexgen/X/HQ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/HQ;->getCurrentPosition()I

    move-result v0

    return v0
.end method

.method public final getDuration()I
    .locals 1

    .line 48746
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Q3;->A00:Lcom/facebook/ads/redexgen/X/HQ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/HQ;->getDuration()I

    move-result v0

    return v0
.end method

.method public final isPlaying()Z
    .locals 1

    .line 48747
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Q3;->A00:Lcom/facebook/ads/redexgen/X/HQ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HQ;->A01(Lcom/facebook/ads/redexgen/X/HQ;)Lcom/facebook/ads/redexgen/X/Py;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Q3;->A00:Lcom/facebook/ads/redexgen/X/HQ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HQ;->A01(Lcom/facebook/ads/redexgen/X/HQ;)Lcom/facebook/ads/redexgen/X/Py;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Py;->A0K()Z

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
    .locals 4

    .line 48748
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Q3;->A00:Lcom/facebook/ads/redexgen/X/HQ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HQ;->A02(Lcom/facebook/ads/redexgen/X/HQ;)Lcom/facebook/ads/redexgen/X/QC;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 48749
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Q3;->A00:Lcom/facebook/ads/redexgen/X/HQ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HQ;->A02(Lcom/facebook/ads/redexgen/X/HQ;)Lcom/facebook/ads/redexgen/X/QC;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Q3;->A01:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Q3;->A01:[Ljava/lang/String;

    const-string v1, "BHfWGVDMvGTMo8ZI3A6S5KtrLH6Ee"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-interface {v3}, Lcom/facebook/ads/redexgen/X/QC;->AAk()V

    .line 48750
    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final seekTo(I)V
    .locals 1

    .line 48751
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Q3;->A00:Lcom/facebook/ads/redexgen/X/HQ;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/HQ;->seekTo(I)V

    .line 48752
    return-void
.end method

.method public final start()V
    .locals 1

    .line 48753
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Q3;->A00:Lcom/facebook/ads/redexgen/X/HQ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HQ;->A02(Lcom/facebook/ads/redexgen/X/HQ;)Lcom/facebook/ads/redexgen/X/QC;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 48754
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Q3;->A00:Lcom/facebook/ads/redexgen/X/HQ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HQ;->A02(Lcom/facebook/ads/redexgen/X/HQ;)Lcom/facebook/ads/redexgen/X/QC;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/QC;->AAl()V

    .line 48755
    :cond_0
    return-void
.end method
