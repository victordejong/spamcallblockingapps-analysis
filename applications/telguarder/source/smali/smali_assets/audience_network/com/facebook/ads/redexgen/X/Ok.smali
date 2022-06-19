.class public final Lcom/facebook/ads/redexgen/X/Ok;
.super Lcom/facebook/ads/redexgen/X/Kd;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Oj;->A0Y(Lcom/facebook/ads/redexgen/X/PF;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Oj;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Oj;)V
    .locals 0

    .line 47363
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ok;->A00:Lcom/facebook/ads/redexgen/X/Oj;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Kd;-><init>()V

    return-void
.end method


# virtual methods
.method public final A07()V
    .locals 2

    .line 47364
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ok;->A00:Lcom/facebook/ads/redexgen/X/Oj;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Oj;->getEventBus()Lcom/facebook/ads/redexgen/X/9F;

    move-result-object v1

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Oj;->A0E()Lcom/facebook/ads/redexgen/X/K6;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/9F;->A02(Lcom/facebook/ads/redexgen/X/9E;)V

    .line 47365
    return-void
.end method
