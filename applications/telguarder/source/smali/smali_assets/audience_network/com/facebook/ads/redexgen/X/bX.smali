.class public final Lcom/facebook/ads/redexgen/X/bX;
.super Lcom/facebook/ads/redexgen/X/KQ;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/bV;->AAq(ILjava/lang/String;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Landroid/os/Message;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/bV;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/bV;Landroid/os/Message;)V
    .locals 0

    .line 69715
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/bX;->A01:Lcom/facebook/ads/redexgen/X/bV;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/bX;->A00:Landroid/os/Message;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/KQ;-><init>()V

    return-void
.end method


# virtual methods
.method public final A02()V
    .locals 2

    .line 69716
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bX;->A01:Lcom/facebook/ads/redexgen/X/bV;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/bV;->A02(Lcom/facebook/ads/redexgen/X/bV;)Lcom/facebook/ads/redexgen/X/1x;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bX;->A00:Landroid/os/Message;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/1x;->A7b(Landroid/os/Message;)V

    .line 69717
    return-void
.end method
