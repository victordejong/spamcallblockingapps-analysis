.class public final Lcom/facebook/ads/redexgen/X/SS;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/L7;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/SR;->A0X(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:I

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/SR;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/SR;I)V
    .locals 0

    .line 52390
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/SS;->A01:Lcom/facebook/ads/redexgen/X/SR;

    iput p2, p0, Lcom/facebook/ads/redexgen/X/SS;->A00:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A9m()V
    .locals 2

    .line 52391
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SS;->A01:Lcom/facebook/ads/redexgen/X/SR;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/SR;->A0V(Lcom/facebook/ads/redexgen/X/SR;Z)Z

    .line 52392
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SS;->A01:Lcom/facebook/ads/redexgen/X/SR;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SR;->A0W()V

    .line 52393
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SS;->A01:Lcom/facebook/ads/redexgen/X/SR;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/SR;->A0D:Lcom/facebook/ads/redexgen/X/M6;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SS;->A01:Lcom/facebook/ads/redexgen/X/SR;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SR;->getCloseButtonStyle()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/M6;->setToolbarActionMode(I)V

    .line 52394
    return-void
.end method

.method public final ABH(F)V
    .locals 3

    .line 52395
    iget v0, p0, Lcom/facebook/ads/redexgen/X/SS;->A00:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, p1

    .line 52396
    .local p1, "percentage":F
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SS;->A01:Lcom/facebook/ads/redexgen/X/SR;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/SR;->A0D:Lcom/facebook/ads/redexgen/X/M6;

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr v0, v2

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/M6;->setProgress(F)V

    .line 52397
    return-void
.end method
