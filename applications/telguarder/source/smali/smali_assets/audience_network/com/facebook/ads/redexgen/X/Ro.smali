.class public final Lcom/facebook/ads/redexgen/X/Ro;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Nd;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Rk;->A0G()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Rk;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Rk;)V
    .locals 0

    .line 50679
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ro;->A00:Lcom/facebook/ads/redexgen/X/Rk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A9q()V
    .locals 3

    .line 50680
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ro;->A00:Lcom/facebook/ads/redexgen/X/Rk;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Rk;->A04(Lcom/facebook/ads/redexgen/X/Rk;)Lcom/facebook/ads/redexgen/X/JK;

    move-result-object v2

    sget-object v1, Lcom/facebook/ads/redexgen/X/JJ;->A0I:Lcom/facebook/ads/redexgen/X/JJ;

    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/JK;->A02(Lcom/facebook/ads/redexgen/X/JJ;Ljava/util/Map;)V

    .line 50681
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ro;->A00:Lcom/facebook/ads/redexgen/X/Rk;

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/Rk;->A03(Lcom/facebook/ads/redexgen/X/Rk;)Lcom/facebook/ads/redexgen/X/0f;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/FU;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/FU;->A0G()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Rk;->A0N(Lcom/facebook/ads/redexgen/X/Rk;Ljava/lang/String;)V

    .line 50682
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ro;->A00:Lcom/facebook/ads/redexgen/X/Rk;

    const/4 v0, 0x1

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Rk;->A0O(Lcom/facebook/ads/redexgen/X/Rk;Z)V

    .line 50683
    return-void
.end method
