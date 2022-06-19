.class public final Lcom/facebook/ads/redexgen/X/AP;
.super Lcom/facebook/ads/redexgen/X/KQ;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/ah;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/ah;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/ah;)V
    .locals 0

    .line 21316
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/AP;->A00:Lcom/facebook/ads/redexgen/X/ah;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/KQ;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/KU;)V
    .locals 2

    .line 21317
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AP;->A00:Lcom/facebook/ads/redexgen/X/ah;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ah;->A0m(Lcom/facebook/ads/redexgen/X/ah;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 21318
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AP;->A00:Lcom/facebook/ads/redexgen/X/ah;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ah;->A0D(Lcom/facebook/ads/redexgen/X/ah;)Lcom/facebook/ads/redexgen/X/QE;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/QE;->A0V()V

    .line 21319
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/AP;->A00:Lcom/facebook/ads/redexgen/X/ah;

    const/4 v0, 0x1

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/ah;->A0o(Lcom/facebook/ads/redexgen/X/ah;Z)Z

    .line 21320
    :cond_0
    return-void
.end method


# virtual methods
.method public final bridge synthetic A04(Lcom/facebook/ads/redexgen/X/9E;)V
    .locals 0

    .line 21321
    check-cast p1, Lcom/facebook/ads/redexgen/X/KU;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/AP;->A00(Lcom/facebook/ads/redexgen/X/KU;)V

    return-void
.end method
