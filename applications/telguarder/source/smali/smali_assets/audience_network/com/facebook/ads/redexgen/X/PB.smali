.class public final Lcom/facebook/ads/redexgen/X/PB;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Oj;
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

    .line 47937
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/PB;->A00:Lcom/facebook/ads/redexgen/X/Oj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 47938
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PB;->A00:Lcom/facebook/ads/redexgen/X/Oj;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Oj;->A0A(Lcom/facebook/ads/redexgen/X/Oj;)Lcom/facebook/ads/redexgen/X/9F;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/K4;

    invoke-direct {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/K4;-><init>(Landroid/view/View;Landroid/view/MotionEvent;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/9F;->A02(Lcom/facebook/ads/redexgen/X/9E;)V

    .line 47939
    const/4 v0, 0x0

    return v0
.end method
