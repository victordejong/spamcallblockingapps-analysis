.class public final Lcom/facebook/ads/redexgen/X/9s;
.super Lcom/facebook/ads/redexgen/X/Le;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/9o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/9o;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/9o;)V
    .locals 0

    .line 20611
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/9s;->A00:Lcom/facebook/ads/redexgen/X/9o;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Le;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/7w;)V
    .locals 3

    .line 20612
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9s;->A00:Lcom/facebook/ads/redexgen/X/9o;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/9o;->A05(Lcom/facebook/ads/redexgen/X/9o;)V

    .line 20613
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9s;->A00:Lcom/facebook/ads/redexgen/X/9o;

    const v0, -0x5f000010

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/9o;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    .line 20614
    .local p0, "tag":Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 20615
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9s;->A00:Lcom/facebook/ads/redexgen/X/9o;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/9o;->A07:Lcom/facebook/ads/redexgen/X/RH;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/RH;->A0P()Lcom/facebook/ads/redexgen/X/OD;

    move-result-object v1

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/OD;->ABw(I)V

    .line 20616
    :cond_0
    return-void
.end method


# virtual methods
.method public final bridge synthetic A04(Lcom/facebook/ads/redexgen/X/9E;)V
    .locals 0

    .line 20617
    check-cast p1, Lcom/facebook/ads/redexgen/X/7w;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/9s;->A00(Lcom/facebook/ads/redexgen/X/7w;)V

    return-void
.end method
