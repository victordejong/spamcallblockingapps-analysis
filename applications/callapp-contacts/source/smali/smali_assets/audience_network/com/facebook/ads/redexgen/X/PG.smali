.class public final Lcom/facebook/ads/redexgen/X/PG;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/PD;
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

    .line 47943
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/PG;->A00:Lcom/facebook/ads/redexgen/X/PD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 47944
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PG;->A00:Lcom/facebook/ads/redexgen/X/PD;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/PD;->A09(Lcom/facebook/ads/redexgen/X/PD;)Lcom/facebook/ads/redexgen/X/9F;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/K4;

    invoke-direct {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/K4;-><init>(Landroid/view/View;Landroid/view/MotionEvent;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/9F;->A03(Lcom/facebook/ads/redexgen/X/9E;)V

    .line 47945
    const/4 v0, 0x0

    return v0
.end method
