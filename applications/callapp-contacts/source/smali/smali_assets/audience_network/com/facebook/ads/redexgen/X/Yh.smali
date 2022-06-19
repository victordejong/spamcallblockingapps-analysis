.class public final Lcom/facebook/ads/redexgen/X/Yh;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Ni;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/YV;->A0G()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/YV;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/YV;)V
    .locals 0

    .line 61378
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Yh;->A00:Lcom/facebook/ads/redexgen/X/YV;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A9r()V
    .locals 3

    .line 61379
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yh;->A00:Lcom/facebook/ads/redexgen/X/YV;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YV;->A04(Lcom/facebook/ads/redexgen/X/YV;)Lcom/facebook/ads/redexgen/X/JJ;

    move-result-object v2

    sget-object v1, Lcom/facebook/ads/redexgen/X/JI;->A0J:Lcom/facebook/ads/redexgen/X/JI;

    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/JJ;->A03(Lcom/facebook/ads/redexgen/X/JI;Ljava/util/Map;)V

    .line 61380
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Yh;->A00:Lcom/facebook/ads/redexgen/X/YV;

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/YV;->A03(Lcom/facebook/ads/redexgen/X/YV;)Lcom/facebook/ads/redexgen/X/0f;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Fg;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Fg;->A0G()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/YV;->A0N(Lcom/facebook/ads/redexgen/X/YV;Ljava/lang/String;)V

    .line 61381
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Yh;->A00:Lcom/facebook/ads/redexgen/X/YV;

    const/4 v0, 0x1

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/YV;->A0O(Lcom/facebook/ads/redexgen/X/YV;Z)V

    .line 61382
    return-void
.end method
