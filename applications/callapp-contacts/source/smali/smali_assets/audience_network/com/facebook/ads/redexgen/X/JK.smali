.class public final Lcom/facebook/ads/redexgen/X/JK;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/JL;->A04(Landroid/view/View;Lcom/facebook/ads/redexgen/X/JJ;Lcom/facebook/ads/redexgen/X/JI;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/JI;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/JJ;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/JJ;Lcom/facebook/ads/redexgen/X/JI;)V
    .locals 0

    .line 39867
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/JK;->A01:Lcom/facebook/ads/redexgen/X/JJ;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/JK;->A00:Lcom/facebook/ads/redexgen/X/JI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 3

    .line 39868
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/JK;->A01:Lcom/facebook/ads/redexgen/X/JJ;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/JK;->A00:Lcom/facebook/ads/redexgen/X/JI;

    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/JJ;->A03(Lcom/facebook/ads/redexgen/X/JI;Ljava/util/Map;)V

    .line 39869
    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    .line 39870
    return-void
.end method
