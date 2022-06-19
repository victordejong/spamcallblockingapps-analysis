.class public final Lcom/facebook/ads/redexgen/X/P8;
.super Lcom/facebook/ads/redexgen/X/Kd;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Oj;->ABZ(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:I

.field public final synthetic A01:I

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/Oj;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Oj;II)V
    .locals 0

    .line 47907
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/P8;->A02:Lcom/facebook/ads/redexgen/X/Oj;

    iput p2, p0, Lcom/facebook/ads/redexgen/X/P8;->A00:I

    iput p3, p0, Lcom/facebook/ads/redexgen/X/P8;->A01:I

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Kd;-><init>()V

    return-void
.end method


# virtual methods
.method public final A07()V
    .locals 4

    .line 47908
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/P8;->A02:Lcom/facebook/ads/redexgen/X/Oj;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Oj;->A0A(Lcom/facebook/ads/redexgen/X/Oj;)Lcom/facebook/ads/redexgen/X/9F;

    move-result-object v3

    iget v2, p0, Lcom/facebook/ads/redexgen/X/P8;->A00:I

    iget v1, p0, Lcom/facebook/ads/redexgen/X/P8;->A01:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/K8;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/K8;-><init>(II)V

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/9F;->A02(Lcom/facebook/ads/redexgen/X/9E;)V

    .line 47909
    return-void
.end method
