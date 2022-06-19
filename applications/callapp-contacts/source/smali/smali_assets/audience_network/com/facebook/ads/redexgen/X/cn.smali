.class public final Lcom/facebook/ads/redexgen/X/cn;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/NM;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/cp;-><init>(Lcom/facebook/ads/redexgen/X/50;Lcom/facebook/ads/redexgen/X/XJ;Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/M9;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/M9;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/cp;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/cp;Lcom/facebook/ads/redexgen/X/M9;)V
    .locals 0

    .line 73273
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/cn;->A01:Lcom/facebook/ads/redexgen/X/cp;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/cn;->A00:Lcom/facebook/ads/redexgen/X/M9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final AAz(Ljava/lang/String;)V
    .locals 2

    .line 73274
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cn;->A01:Lcom/facebook/ads/redexgen/X/cp;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/cp;->A01(Lcom/facebook/ads/redexgen/X/cp;)Lcom/facebook/ads/redexgen/X/NF;

    move-result-object v1

    const/16 v0, 0x64

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/NF;->setProgress(I)V

    .line 73275
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/cn;->A01:Lcom/facebook/ads/redexgen/X/cp;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/cp;->A07(Lcom/facebook/ads/redexgen/X/cp;Z)Z

    .line 73276
    return-void
.end method

.method public final AB1(Ljava/lang/String;)V
    .locals 2

    .line 73277
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/cn;->A01:Lcom/facebook/ads/redexgen/X/cp;

    const/4 v0, 0x1

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/cp;->A07(Lcom/facebook/ads/redexgen/X/cp;Z)Z

    .line 73278
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cn;->A01:Lcom/facebook/ads/redexgen/X/cp;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/cp;->A00(Lcom/facebook/ads/redexgen/X/cp;)Lcom/facebook/ads/redexgen/X/NE;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/NE;->setUrl(Ljava/lang/String;)V

    .line 73279
    return-void
.end method

.method public final ABI(I)V
    .locals 1

    .line 73280
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cn;->A01:Lcom/facebook/ads/redexgen/X/cp;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/cp;->A06(Lcom/facebook/ads/redexgen/X/cp;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73281
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cn;->A01:Lcom/facebook/ads/redexgen/X/cp;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/cp;->A01(Lcom/facebook/ads/redexgen/X/cp;)Lcom/facebook/ads/redexgen/X/NF;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/NF;->setProgress(I)V

    .line 73282
    :cond_0
    return-void
.end method

.method public final ABN(Ljava/lang/String;)V
    .locals 1

    .line 73283
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cn;->A01:Lcom/facebook/ads/redexgen/X/cp;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/cp;->A00(Lcom/facebook/ads/redexgen/X/cp;)Lcom/facebook/ads/redexgen/X/NE;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/NE;->setTitle(Ljava/lang/String;)V

    .line 73284
    return-void
.end method

.method public final ABP()V
    .locals 2

    .line 73285
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/cn;->A00:Lcom/facebook/ads/redexgen/X/M9;

    const/16 v0, 0xe

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/M9;->A9e(I)V

    .line 73286
    return-void
.end method
