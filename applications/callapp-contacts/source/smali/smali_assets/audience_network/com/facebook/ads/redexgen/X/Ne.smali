.class public final Lcom/facebook/ads/redexgen/X/Ne;
.super Lcom/facebook/ads/redexgen/X/9G;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/7y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/ads/redexgen/X/9G<",
        "Lcom/facebook/ads/redexgen/X/7s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/7y;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/7y;)V
    .locals 0

    .line 45510
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ne;->A00:Lcom/facebook/ads/redexgen/X/7y;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/9G;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/7s;)V
    .locals 3

    .line 45511
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Lf;->A00()I

    move-result v2

    .line 45512
    .local p0, "currentPositionMS":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ne;->A00:Lcom/facebook/ads/redexgen/X/7y;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/7y;->A00:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ne;->A00:Lcom/facebook/ads/redexgen/X/7y;

    .line 45513
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7y;->A09(Lcom/facebook/ads/redexgen/X/7y;)Lcom/facebook/ads/redexgen/X/PD;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/PD;->getDuration()I

    move-result v0

    if-ne v2, v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ne;->A00:Lcom/facebook/ads/redexgen/X/7y;

    .line 45514
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7y;->A09(Lcom/facebook/ads/redexgen/X/7y;)Lcom/facebook/ads/redexgen/X/PD;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/PD;->getDuration()I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ne;->A00:Lcom/facebook/ads/redexgen/X/7y;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/7y;->A00:I

    if-le v1, v0, :cond_0

    .line 45515
    return-void

    .line 45516
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ne;->A00:Lcom/facebook/ads/redexgen/X/7y;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/MQ;->A0d(I)V

    .line 45517
    return-void
.end method


# virtual methods
.method public final A01()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/facebook/ads/redexgen/X/7s;",
            ">;"
        }
    .end annotation

    .line 45518
    const-class v0, Lcom/facebook/ads/redexgen/X/7s;

    return-object v0
.end method

.method public final bridge synthetic A04(Lcom/facebook/ads/redexgen/X/9E;)V
    .locals 0

    .line 45519
    check-cast p1, Lcom/facebook/ads/redexgen/X/7s;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Ne;->A00(Lcom/facebook/ads/redexgen/X/7s;)V

    return-void
.end method
