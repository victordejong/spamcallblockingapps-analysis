.class public final Lcom/facebook/ads/redexgen/X/Si;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/LQ;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/LS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WindowLineProcessor"
.end annotation


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/LP;

.field public final A01:Lcom/facebook/ads/redexgen/X/LQ;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/LQ;II)V
    .locals 1

    .line 52740
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52741
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Si;->A01:Lcom/facebook/ads/redexgen/X/LQ;

    .line 52742
    new-instance v0, Lcom/facebook/ads/redexgen/X/LP;

    invoke-direct {v0, p2, p3}, Lcom/facebook/ads/redexgen/X/LP;-><init>(II)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Si;->A00:Lcom/facebook/ads/redexgen/X/LP;

    .line 52743
    return-void
.end method


# virtual methods
.method public final ACZ(Ljava/lang/String;)V
    .locals 2

    .line 52744
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Si;->A00:Lcom/facebook/ads/redexgen/X/LP;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/LP;->A04(Ljava/lang/String;)V

    .line 52745
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Si;->A00:Lcom/facebook/ads/redexgen/X/LP;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/LP;->A02()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Si;->A00:Lcom/facebook/ads/redexgen/X/LP;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LS;->A0A(Lcom/facebook/ads/redexgen/X/LP;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52746
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Si;->A01:Lcom/facebook/ads/redexgen/X/LQ;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Si;->A00:Lcom/facebook/ads/redexgen/X/LP;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/LP;->A02()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/LQ;->ACZ(Ljava/lang/String;)V

    .line 52747
    :cond_0
    return-void
.end method

.method public final flush()V
    .locals 2

    .line 52748
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Si;->A00:Lcom/facebook/ads/redexgen/X/LP;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/LP;->A03()V

    .line 52749
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Si;->A00:Lcom/facebook/ads/redexgen/X/LP;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/LP;->A02()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 52750
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Si;->A00:Lcom/facebook/ads/redexgen/X/LP;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LS;->A0A(Lcom/facebook/ads/redexgen/X/LP;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52751
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Si;->A01:Lcom/facebook/ads/redexgen/X/LQ;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Si;->A00:Lcom/facebook/ads/redexgen/X/LP;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/LP;->A02()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/LQ;->ACZ(Ljava/lang/String;)V

    .line 52752
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Si;->A00:Lcom/facebook/ads/redexgen/X/LP;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/LP;->A03()V

    goto :goto_0

    .line 52753
    :cond_1
    return-void
.end method
