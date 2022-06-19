.class public final Lcom/facebook/ads/redexgen/X/ST;
.super Lcom/facebook/ads/redexgen/X/KO;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/SV;->AAq(ILjava/lang/String;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Landroid/os/Message;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/SV;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/SV;Landroid/os/Message;)V
    .locals 0

    .line 52614
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/ST;->A01:Lcom/facebook/ads/redexgen/X/SV;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/ST;->A00:Landroid/os/Message;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/KO;-><init>()V

    return-void
.end method


# virtual methods
.method public final A01()V
    .locals 2

    .line 52615
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ST;->A01:Lcom/facebook/ads/redexgen/X/SV;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/SV;->A01(Lcom/facebook/ads/redexgen/X/SV;)Lcom/facebook/ads/redexgen/X/1x;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ST;->A00:Landroid/os/Message;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/1x;->A7Z(Landroid/os/Message;)V

    .line 52616
    return-void
.end method
