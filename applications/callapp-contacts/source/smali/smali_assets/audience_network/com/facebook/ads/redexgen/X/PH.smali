.class public final Lcom/facebook/ads/redexgen/X/PH;
.super Lcom/facebook/ads/redexgen/X/Kb;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/PD;->A0X(Lcom/facebook/ads/redexgen/X/PK;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/PD;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/PD;)V
    .locals 0

    .line 47946
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/PH;->A00:Lcom/facebook/ads/redexgen/X/PD;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Kb;-><init>()V

    return-void
.end method


# virtual methods
.method public final A07()V
    .locals 2

    .line 47947
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PH;->A00:Lcom/facebook/ads/redexgen/X/PD;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/PD;->getEventBus()Lcom/facebook/ads/redexgen/X/9F;

    move-result-object v1

    invoke-static {}, Lcom/facebook/ads/redexgen/X/PD;->A0D()Lcom/facebook/ads/redexgen/X/K6;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/9F;->A03(Lcom/facebook/ads/redexgen/X/9E;)V

    .line 47948
    return-void
.end method
