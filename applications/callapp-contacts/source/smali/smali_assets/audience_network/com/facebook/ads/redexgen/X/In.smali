.class public final Lcom/facebook/ads/redexgen/X/In;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/media/MediaCodec$OnFrameRenderedListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x17
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/21;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "OnFrameRenderedListenerV23"
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/21;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/21;Landroid/media/MediaCodec;)V
    .locals 1

    .line 39001
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/In;->A00:Lcom/facebook/ads/redexgen/X/21;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39002
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-virtual {p2, p0, v0}, Landroid/media/MediaCodec;->setOnFrameRenderedListener(Landroid/media/MediaCodec$OnFrameRenderedListener;Landroid/os/Handler;)V

    .line 39003
    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/21;Landroid/media/MediaCodec;Lcom/facebook/ads/redexgen/X/Il;)V
    .locals 0

    .line 39004
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/In;-><init>(Lcom/facebook/ads/redexgen/X/21;Landroid/media/MediaCodec;)V

    return-void
.end method


# virtual methods
.method public final onFrameRendered(Landroid/media/MediaCodec;JJ)V
    .locals 1
    .param p1    # Landroid/media/MediaCodec;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 39005
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/In;->A00:Lcom/facebook/ads/redexgen/X/21;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/21;->A00:Lcom/facebook/ads/redexgen/X/In;

    if-eq p0, v0, :cond_0

    .line 39006
    return-void

    .line 39007
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/In;->A00:Lcom/facebook/ads/redexgen/X/21;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/21;->A1T()V

    .line 39008
    return-void
.end method
