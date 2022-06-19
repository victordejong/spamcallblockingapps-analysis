.class public final Lcom/facebook/ads/redexgen/X/2H;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/2K;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/2K;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/2K;Landroid/os/Looper;)V
    .locals 0

    .line 4804
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/2H;->A00:Lcom/facebook/ads/redexgen/X/2K;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 4805
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq v1, v0, :cond_0

    .line 4806
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 4807
    :goto_0
    return-void

    .line 4808
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2H;->A00:Lcom/facebook/ads/redexgen/X/2K;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/2K;->A05(Lcom/facebook/ads/redexgen/X/2K;)V

    .line 4809
    goto :goto_0
.end method
