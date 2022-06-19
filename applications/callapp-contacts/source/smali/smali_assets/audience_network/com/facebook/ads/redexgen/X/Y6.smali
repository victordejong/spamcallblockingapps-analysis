.class public final Lcom/facebook/ads/redexgen/X/Y6;
.super Lcom/facebook/ads/redexgen/X/Kb;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Y4;->A8E()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Y4;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Y4;)V
    .locals 0

    .line 58816
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Y6;->A00:Lcom/facebook/ads/redexgen/X/Y4;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Kb;-><init>()V

    return-void
.end method


# virtual methods
.method public final A07()V
    .locals 3

    .line 58817
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y6;->A00:Lcom/facebook/ads/redexgen/X/Y4;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Y4;->A06(Lcom/facebook/ads/redexgen/X/Y4;)Lcom/facebook/ads/redexgen/X/M9;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y6;->A00:Lcom/facebook/ads/redexgen/X/Y4;

    .line 58818
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Y4;->A00(Lcom/facebook/ads/redexgen/X/Y4;)Lcom/facebook/ads/redexgen/X/16;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0T()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y6;->A00:Lcom/facebook/ads/redexgen/X/Y4;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Y4;->A00(Lcom/facebook/ads/redexgen/X/Y4;)Lcom/facebook/ads/redexgen/X/16;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0Q()Lcom/facebook/ads/redexgen/X/1S;

    move-result-object v0

    .line 58819
    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/M9;->A8F(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/1S;)V

    .line 58820
    return-void
.end method
