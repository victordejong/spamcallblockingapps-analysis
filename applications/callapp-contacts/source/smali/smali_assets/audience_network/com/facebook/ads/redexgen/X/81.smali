.class public final Lcom/facebook/ads/redexgen/X/81;
.super Lcom/facebook/ads/redexgen/X/KL;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/7y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/7y;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/7y;)V
    .locals 0

    .line 16936
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/81;->A00:Lcom/facebook/ads/redexgen/X/7y;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/KL;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/KN;)V
    .locals 2

    .line 16937
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/81;->A00:Lcom/facebook/ads/redexgen/X/7y;

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/7y;->A09(Lcom/facebook/ads/redexgen/X/7y;)Lcom/facebook/ads/redexgen/X/PD;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/PD;->getDuration()I

    move-result v0

    iput v0, v1, Lcom/facebook/ads/redexgen/X/7y;->A00:I

    .line 16938
    return-void
.end method


# virtual methods
.method public final bridge synthetic A04(Lcom/facebook/ads/redexgen/X/9E;)V
    .locals 0

    .line 16939
    check-cast p1, Lcom/facebook/ads/redexgen/X/KN;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/81;->A00(Lcom/facebook/ads/redexgen/X/KN;)V

    return-void
.end method
