.class public final Lcom/facebook/ads/redexgen/X/B6;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/B7;
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

.field public final A01:Lcom/facebook/ads/redexgen/X/B7;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/facebook/ads/redexgen/X/B7;)V
    .locals 1
    .param p1    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/facebook/ads/redexgen/X/B7;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 22088
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22089
    if-eqz p2, :cond_0

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Hx;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    :goto_0
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/B6;->A00:Landroid/os/Handler;

    .line 22090
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/B6;->A01:Lcom/facebook/ads/redexgen/X/B7;

    .line 22091
    return-void

    .line 22092
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/B6;)Lcom/facebook/ads/redexgen/X/B7;
    .locals 0

    .line 22093
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/B6;->A01:Lcom/facebook/ads/redexgen/X/B7;

    return-object p0
.end method


# virtual methods
.method public final A01(I)V
    .locals 2

    .line 22094
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/B6;->A01:Lcom/facebook/ads/redexgen/X/B7;

    if-eqz v0, :cond_0

    .line 22095
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/B6;->A00:Landroid/os/Handler;

    new-instance v0, Lcom/facebook/ads/redexgen/X/B5;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/B5;-><init>(Lcom/facebook/ads/redexgen/X/B6;I)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 22096
    :cond_0
    return-void
.end method

.method public final A02(IJJ)V
    .locals 8

    .line 22097
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/B6;->A01:Lcom/facebook/ads/redexgen/X/B7;

    if-eqz v0, :cond_0

    .line 22098
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/B6;->A00:Landroid/os/Handler;

    new-instance v1, Lcom/facebook/ads/redexgen/X/B3;

    move-object v2, p0

    move-wide v4, p2

    move-wide v6, p4

    move v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/facebook/ads/redexgen/X/B3;-><init>(Lcom/facebook/ads/redexgen/X/B6;IJJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 22099
    :cond_0
    return-void
.end method

.method public final A03(Lcom/facebook/ads/internal/exoplayer2/Format;)V
    .locals 2

    .line 22100
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/B6;->A01:Lcom/facebook/ads/redexgen/X/B7;

    if-eqz v0, :cond_0

    .line 22101
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/B6;->A00:Landroid/os/Handler;

    new-instance v0, Lcom/facebook/ads/redexgen/X/B2;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/B2;-><init>(Lcom/facebook/ads/redexgen/X/B6;Lcom/facebook/ads/internal/exoplayer2/Format;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 22102
    :cond_0
    return-void
.end method

.method public final A04(Lcom/facebook/ads/redexgen/X/Ba;)V
    .locals 2

    .line 22103
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/B6;->A01:Lcom/facebook/ads/redexgen/X/B7;

    if-eqz v0, :cond_0

    .line 22104
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/B6;->A00:Landroid/os/Handler;

    new-instance v0, Lcom/facebook/ads/redexgen/X/B4;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/B4;-><init>(Lcom/facebook/ads/redexgen/X/B6;Lcom/facebook/ads/redexgen/X/Ba;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 22105
    :cond_0
    return-void
.end method

.method public final A05(Lcom/facebook/ads/redexgen/X/Ba;)V
    .locals 2

    .line 22106
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/B6;->A01:Lcom/facebook/ads/redexgen/X/B7;

    if-eqz v0, :cond_0

    .line 22107
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/B6;->A00:Landroid/os/Handler;

    new-instance v0, Lcom/facebook/ads/redexgen/X/B0;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/B0;-><init>(Lcom/facebook/ads/redexgen/X/B6;Lcom/facebook/ads/redexgen/X/Ba;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 22108
    :cond_0
    return-void
.end method

.method public final A06(Ljava/lang/String;JJ)V
    .locals 8

    .line 22109
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/B6;->A01:Lcom/facebook/ads/redexgen/X/B7;

    if-eqz v0, :cond_0

    .line 22110
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/B6;->A00:Landroid/os/Handler;

    new-instance v1, Lcom/facebook/ads/redexgen/X/B1;

    move-object v2, p0

    move-wide v4, p2

    move-wide v6, p4

    move-object v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/facebook/ads/redexgen/X/B1;-><init>(Lcom/facebook/ads/redexgen/X/B6;Ljava/lang/String;JJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 22111
    :cond_0
    return-void
.end method
