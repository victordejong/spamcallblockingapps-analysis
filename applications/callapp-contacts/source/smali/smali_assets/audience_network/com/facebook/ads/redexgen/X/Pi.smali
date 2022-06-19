.class public final Lcom/facebook/ads/redexgen/X/Pi;
.super Landroid/graphics/Paint;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Pj;-><init>(Lcom/facebook/ads/redexgen/X/XJ;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Pj;

.field public final synthetic A01:Z


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Pj;Z)V
    .locals 1

    .line 48433
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Pi;->A00:Lcom/facebook/ads/redexgen/X/Pj;

    iput-boolean p2, p0, Lcom/facebook/ads/redexgen/X/Pi;->A01:Z

    invoke-direct {p0}, Landroid/graphics/Paint;-><init>()V

    .line 48434
    sget-object v0, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Pi;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 48435
    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Pi;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 48436
    const/high16 v0, 0x40400000    # 3.0f

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Pi;->setStrokeWidth(F)V

    .line 48437
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Pi;->setAntiAlias(Z)V

    .line 48438
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Pi;->A01:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Pi;->setColor(I)V

    .line 48439
    return-void

    .line 48440
    :cond_0
    const v0, -0x99999a

    goto :goto_0
.end method
