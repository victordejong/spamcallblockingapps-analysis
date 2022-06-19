.class public final Lcom/facebook/ads/redexgen/X/bM;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/1y;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/bL;->A4K(Lcom/facebook/ads/redexgen/X/1v;)Lcom/facebook/ads/redexgen/X/1y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/1v;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/bL;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/bL;Lcom/facebook/ads/redexgen/X/1v;)V
    .locals 0

    .line 69440
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/bM;->A01:Lcom/facebook/ads/redexgen/X/bL;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/bM;->A00:Lcom/facebook/ads/redexgen/X/1v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A4J(Lcom/facebook/ads/redexgen/X/1s;Lcom/facebook/ads/redexgen/X/bV;)Lcom/facebook/ads/redexgen/X/1x;
    .locals 3

    .line 69441
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bM;->A00:Lcom/facebook/ads/redexgen/X/1v;

    .line 69442
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1v;->A05()Lcom/facebook/ads/redexgen/X/Wm;

    move-result-object v2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bM;->A00:Lcom/facebook/ads/redexgen/X/1v;

    new-instance v0, Lcom/facebook/ads/redexgen/X/bK;

    invoke-direct {v0, v2, v1, p1, p2}, Lcom/facebook/ads/redexgen/X/bK;-><init>(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/1v;Lcom/facebook/ads/redexgen/X/1s;Lcom/facebook/ads/redexgen/X/bV;)V

    .line 69443
    return-object v0
.end method
