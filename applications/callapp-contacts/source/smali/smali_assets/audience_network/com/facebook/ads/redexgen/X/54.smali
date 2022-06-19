.class public final Lcom/facebook/ads/redexgen/X/54;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Ta;->A0D(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Ta;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/Na;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Ta;Lcom/facebook/ads/redexgen/X/Na;)V
    .locals 0

    .line 12820
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/54;->A00:Lcom/facebook/ads/redexgen/X/Ta;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/54;->A01:Lcom/facebook/ads/redexgen/X/Na;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 5

    .line 12821
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/54;->A00:Lcom/facebook/ads/redexgen/X/Ta;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ta;->A00(Lcom/facebook/ads/redexgen/X/Ta;)Landroid/view/View;

    move-result-object v0

    const/4 v4, 0x1

    if-eqz v0, :cond_0

    .line 12822
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/54;->A01:Lcom/facebook/ads/redexgen/X/Na;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/54;->A00:Lcom/facebook/ads/redexgen/X/Ta;

    .line 12823
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ta;->A00(Lcom/facebook/ads/redexgen/X/Ta;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/54;->A00:Lcom/facebook/ads/redexgen/X/Ta;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ta;->A00(Lcom/facebook/ads/redexgen/X/Ta;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 12824
    const/4 v0, 0x0

    invoke-virtual {v3, v0, v0, v2, v1}, Lcom/facebook/ads/redexgen/X/Na;->setBounds(IIII)V

    .line 12825
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/54;->A01:Lcom/facebook/ads/redexgen/X/Na;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Na;->A0F()Z

    move-result v0

    xor-int/2addr v0, v4

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Na;->A0E(Z)V

    .line 12826
    :cond_0
    return v4
.end method
