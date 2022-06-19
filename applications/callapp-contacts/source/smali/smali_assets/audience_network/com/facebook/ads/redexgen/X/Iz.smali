.class public final Lcom/facebook/ads/redexgen/X/Iz;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/J0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EventDispatcher"
.end annotation


# instance fields
.field public final A00:Landroid/os/Handler;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A01:Lcom/facebook/ads/redexgen/X/J0;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/facebook/ads/redexgen/X/J0;)V
    .locals 1
    .param p1    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/facebook/ads/redexgen/X/J0;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 39155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39156
    if-eqz p2, :cond_0

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Hx;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    :goto_0
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Iz;->A00:Landroid/os/Handler;

    .line 39157
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Iz;->A01:Lcom/facebook/ads/redexgen/X/J0;

    .line 39158
    return-void

    .line 39159
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/Iz;)Lcom/facebook/ads/redexgen/X/J0;
    .locals 0

    .line 39160
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Iz;->A01:Lcom/facebook/ads/redexgen/X/J0;

    return-object p0
.end method


# virtual methods
.method public final A01(IIIF)V
    .locals 7

    .line 39161
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Iz;->A01:Lcom/facebook/ads/redexgen/X/J0;

    if-eqz v0, :cond_0

    .line 39162
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Iz;->A00:Landroid/os/Handler;

    new-instance v1, Lcom/facebook/ads/redexgen/X/Iw;

    move-object v2, p0

    move v4, p2

    move v3, p1

    move v6, p4

    move v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/facebook/ads/redexgen/X/Iw;-><init>(Lcom/facebook/ads/redexgen/X/Iz;IIIF)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 39163
    :cond_0
    return-void
.end method

.method public final A02(IJ)V
    .locals 2

    .line 39164
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Iz;->A01:Lcom/facebook/ads/redexgen/X/J0;

    if-eqz v0, :cond_0

    .line 39165
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Iz;->A00:Landroid/os/Handler;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Iv;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Iv;-><init>(Lcom/facebook/ads/redexgen/X/Iz;IJ)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 39166
    :cond_0
    return-void
.end method

.method public final A03(Landroid/view/Surface;)V
    .locals 2

    .line 39167
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Iz;->A01:Lcom/facebook/ads/redexgen/X/J0;

    if-eqz v0, :cond_0

    .line 39168
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Iz;->A00:Landroid/os/Handler;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ix;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/Ix;-><init>(Lcom/facebook/ads/redexgen/X/Iz;Landroid/view/Surface;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 39169
    :cond_0
    return-void
.end method

.method public final A04(Lcom/facebook/ads/internal/exoplayer2/Format;)V
    .locals 2

    .line 39170
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Iz;->A01:Lcom/facebook/ads/redexgen/X/J0;

    if-eqz v0, :cond_0

    .line 39171
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Iz;->A00:Landroid/os/Handler;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Iu;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/Iu;-><init>(Lcom/facebook/ads/redexgen/X/Iz;Lcom/facebook/ads/internal/exoplayer2/Format;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 39172
    :cond_0
    return-void
.end method

.method public final A05(Lcom/facebook/ads/redexgen/X/Ba;)V
    .locals 2

    .line 39173
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Iz;->A01:Lcom/facebook/ads/redexgen/X/J0;

    if-eqz v0, :cond_0

    .line 39174
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Iz;->A00:Landroid/os/Handler;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Iy;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/Iy;-><init>(Lcom/facebook/ads/redexgen/X/Iz;Lcom/facebook/ads/redexgen/X/Ba;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 39175
    :cond_0
    return-void
.end method

.method public final A06(Lcom/facebook/ads/redexgen/X/Ba;)V
    .locals 2

    .line 39176
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Iz;->A01:Lcom/facebook/ads/redexgen/X/J0;

    if-eqz v0, :cond_0

    .line 39177
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Iz;->A00:Landroid/os/Handler;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Is;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/Is;-><init>(Lcom/facebook/ads/redexgen/X/Iz;Lcom/facebook/ads/redexgen/X/Ba;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 39178
    :cond_0
    return-void
.end method

.method public final A07(Ljava/lang/String;JJ)V
    .locals 8

    .line 39179
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Iz;->A01:Lcom/facebook/ads/redexgen/X/J0;

    if-eqz v0, :cond_0

    .line 39180
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Iz;->A00:Landroid/os/Handler;

    new-instance v1, Lcom/facebook/ads/redexgen/X/It;

    move-object v2, p0

    move-wide v4, p2

    move-wide v6, p4

    move-object v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/facebook/ads/redexgen/X/It;-><init>(Lcom/facebook/ads/redexgen/X/Iz;Ljava/lang/String;JJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 39181
    :cond_0
    return-void
.end method
