.class public final Lcom/facebook/ads/redexgen/X/Pd;
.super Landroid/graphics/Paint;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Pe;-><init>(Lcom/facebook/ads/redexgen/X/Wm;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Pe;

.field public final synthetic A01:Z


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Pe;Z)V
    .locals 1

    .line 48468
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Pd;->A00:Lcom/facebook/ads/redexgen/X/Pe;

    iput-boolean p2, p0, Lcom/facebook/ads/redexgen/X/Pd;->A01:Z

    invoke-direct {p0}, Landroid/graphics/Paint;-><init>()V

    .line 48469
    sget-object v0, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Pd;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 48470
    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Pd;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 48471
    const/high16 v0, 0x40400000    # 3.0f

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Pd;->setStrokeWidth(F)V

    .line 48472
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Pd;->setAntiAlias(Z)V

    .line 48473
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Pd;->A01:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Pd;->setColor(I)V

    .line 48474
    return-void

    .line 48475
    :cond_0
    const v0, -0x99999a

    goto :goto_0
.end method
