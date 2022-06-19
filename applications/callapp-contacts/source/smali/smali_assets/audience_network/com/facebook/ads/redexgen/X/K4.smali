.class public final Lcom/facebook/ads/redexgen/X/K4;
.super Lcom/facebook/ads/redexgen/X/9E;
.source ""


# instance fields
.field public final A00:Landroid/view/MotionEvent;

.field public final A01:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 0

    .line 40595
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/9E;-><init>()V

    .line 40596
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/K4;->A01:Landroid/view/View;

    .line 40597
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/K4;->A00:Landroid/view/MotionEvent;

    .line 40598
    return-void
.end method


# virtual methods
.method public final A00()Landroid/view/MotionEvent;
    .locals 1

    .line 40599
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/K4;->A00:Landroid/view/MotionEvent;

    return-object v0
.end method
