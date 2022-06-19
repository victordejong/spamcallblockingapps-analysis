.class public final Lcom/facebook/ads/redexgen/X/Sd;
.super Lcom/facebook/ads/redexgen/X/Kd;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Lw;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Landroid/content/DialogInterface;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/Lw;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Lw;Landroid/content/DialogInterface;)V
    .locals 0

    .line 52566
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Sd;->A01:Lcom/facebook/ads/redexgen/X/Lw;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Sd;->A00:Landroid/content/DialogInterface;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Kd;-><init>()V

    return-void
.end method


# virtual methods
.method public final A07()V
    .locals 5

    .line 52567
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sd;->A01:Lcom/facebook/ads/redexgen/X/Lw;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Lw;->A01:Lcom/facebook/ads/redexgen/X/Sc;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Sc;->A00(Lcom/facebook/ads/redexgen/X/Sc;)Lcom/facebook/ads/redexgen/X/QF;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 52568
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sd;->A01:Lcom/facebook/ads/redexgen/X/Lw;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Lw;->A01:Lcom/facebook/ads/redexgen/X/Sc;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Sc;->A00(Lcom/facebook/ads/redexgen/X/Sc;)Lcom/facebook/ads/redexgen/X/QF;

    move-result-object v4

    .line 52569
    invoke-static {}, Lcom/facebook/ads/redexgen/X/KK;->A01()Ljava/lang/String;

    move-result-object v3

    new-instance v2, Lcom/facebook/ads/redexgen/X/QT;

    invoke-direct {v2}, Lcom/facebook/ads/redexgen/X/QT;-><init>()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sd;->A01:Lcom/facebook/ads/redexgen/X/Lw;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Lw;->A01:Lcom/facebook/ads/redexgen/X/Sc;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sd;->A01:Lcom/facebook/ads/redexgen/X/Lw;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Lw;->A00:Landroid/widget/EditText;

    .line 52570
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Sc;->A02(Lcom/facebook/ads/redexgen/X/Sc;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/QT;->A06(Ljava/util/Map;)Lcom/facebook/ads/redexgen/X/QT;

    move-result-object v0

    .line 52571
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/QT;->A09()[B

    move-result-object v0

    .line 52572
    invoke-interface {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/QF;->ACQ(Ljava/lang/String;[B)Lcom/facebook/ads/redexgen/X/QE;

    .line 52573
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sd;->A00:Landroid/content/DialogInterface;

    invoke-interface {v0}, Landroid/content/DialogInterface;->cancel()V

    .line 52574
    return-void
.end method
