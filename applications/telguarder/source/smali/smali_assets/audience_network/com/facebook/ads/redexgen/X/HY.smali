.class public final Lcom/facebook/ads/redexgen/X/HY;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Ir;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Pt;->A0H(Lcom/facebook/ads/redexgen/X/Ps;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Ps;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/Pt;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Pt;Lcom/facebook/ads/redexgen/X/Ps;)V
    .locals 0

    .line 36632
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/HY;->A01:Lcom/facebook/ads/redexgen/X/Pt;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/HY;->A00:Lcom/facebook/ads/redexgen/X/Ps;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final AC7(IIIF)V
    .locals 1

    .line 36633
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HY;->A00:Lcom/facebook/ads/redexgen/X/Ps;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/Ps;->AC7(IIIF)V

    .line 36634
    return-void
.end method
