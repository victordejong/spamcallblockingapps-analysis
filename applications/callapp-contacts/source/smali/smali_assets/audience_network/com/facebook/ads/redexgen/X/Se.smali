.class public final Lcom/facebook/ads/redexgen/X/Se;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/1y;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Sf;->A4N(Lcom/facebook/ads/redexgen/X/1v;)Lcom/facebook/ads/redexgen/X/1y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/1v;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/Sf;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Sf;Lcom/facebook/ads/redexgen/X/1v;)V
    .locals 0

    .line 52888
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Se;->A01:Lcom/facebook/ads/redexgen/X/Sf;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Se;->A00:Lcom/facebook/ads/redexgen/X/1v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A4M(Lcom/facebook/ads/redexgen/X/1s;Lcom/facebook/ads/redexgen/X/SV;)Lcom/facebook/ads/redexgen/X/1x;
    .locals 3

    .line 52889
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Se;->A00:Lcom/facebook/ads/redexgen/X/1v;

    .line 52890
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1v;->A05()Lcom/facebook/ads/redexgen/X/XJ;

    move-result-object v2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Se;->A00:Lcom/facebook/ads/redexgen/X/1v;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Sg;

    invoke-direct {v0, v2, v1, p1, p2}, Lcom/facebook/ads/redexgen/X/Sg;-><init>(Lcom/facebook/ads/redexgen/X/XJ;Lcom/facebook/ads/redexgen/X/1v;Lcom/facebook/ads/redexgen/X/1s;Lcom/facebook/ads/redexgen/X/SV;)V

    .line 52891
    return-object v0
.end method
