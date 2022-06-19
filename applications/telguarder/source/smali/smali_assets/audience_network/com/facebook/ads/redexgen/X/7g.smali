.class public final Lcom/facebook/ads/redexgen/X/7g;
.super Lcom/facebook/ads/redexgen/X/KN;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/IR;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/IR;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/IR;)V
    .locals 0

    .line 16830
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/7g;->A00:Lcom/facebook/ads/redexgen/X/IR;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/KN;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/KP;)V
    .locals 3

    .line 16831
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7g;->A00:Lcom/facebook/ads/redexgen/X/IR;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IR;->A0C(Lcom/facebook/ads/redexgen/X/IR;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 16832
    return-void

    .line 16833
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7g;->A00:Lcom/facebook/ads/redexgen/X/IR;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IR;->A03(Lcom/facebook/ads/redexgen/X/IR;)Lcom/facebook/ads/redexgen/X/PW;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/PW;->A02:Lcom/facebook/ads/redexgen/X/PW;

    if-eq v1, v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7g;->A00:Lcom/facebook/ads/redexgen/X/IR;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IR;->A0D(Lcom/facebook/ads/redexgen/X/IR;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 16834
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/7g;->A00:Lcom/facebook/ads/redexgen/X/IR;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/IR;->A04(Lcom/facebook/ads/redexgen/X/IR;Lcom/facebook/ads/redexgen/X/PW;)Lcom/facebook/ads/redexgen/X/PW;

    .line 16835
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7g;->A00:Lcom/facebook/ads/redexgen/X/IR;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IR;->A09(Lcom/facebook/ads/redexgen/X/IR;)V

    .line 16836
    return-void

    .line 16837
    :cond_2
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/7g;->A00:Lcom/facebook/ads/redexgen/X/IR;

    const/4 v1, 0x0

    const/16 v0, 0x8

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/IR;->A0A(Lcom/facebook/ads/redexgen/X/IR;II)V

    .line 16838
    return-void
.end method


# virtual methods
.method public final bridge synthetic A04(Lcom/facebook/ads/redexgen/X/9E;)V
    .locals 0

    .line 16839
    check-cast p1, Lcom/facebook/ads/redexgen/X/KP;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/7g;->A00(Lcom/facebook/ads/redexgen/X/KP;)V

    return-void
.end method
