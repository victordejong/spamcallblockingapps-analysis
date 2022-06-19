.class public final Lcom/facebook/ads/redexgen/X/JL;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/JM;->A05(Landroid/view/View;Lcom/facebook/ads/redexgen/X/JK;Lcom/facebook/ads/redexgen/X/JJ;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/JJ;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/JK;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/JK;Lcom/facebook/ads/redexgen/X/JJ;)V
    .locals 0

    .line 40006
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/JL;->A01:Lcom/facebook/ads/redexgen/X/JK;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/JL;->A00:Lcom/facebook/ads/redexgen/X/JJ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 3

    .line 40007
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/JL;->A01:Lcom/facebook/ads/redexgen/X/JK;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/JL;->A00:Lcom/facebook/ads/redexgen/X/JJ;

    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/JK;->A02(Lcom/facebook/ads/redexgen/X/JJ;Ljava/util/Map;)V

    .line 40008
    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    .line 40009
    return-void
.end method
