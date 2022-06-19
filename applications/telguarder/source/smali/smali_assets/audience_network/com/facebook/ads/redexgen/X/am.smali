.class public final Lcom/facebook/ads/redexgen/X/am;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/4E;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/El;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ItemAnimatorRestoreListener"
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/El;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/El;)V
    .locals 0

    .line 67654
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/am;->A00:Lcom/facebook/ads/redexgen/X/El;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67655
    return-void
.end method


# virtual methods
.method public final A9P(Lcom/facebook/ads/redexgen/X/4c;)V
    .locals 3

    .line 67656
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/4c;->A0a(Z)V

    .line 67657
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/4c;->A06:Lcom/facebook/ads/redexgen/X/4c;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/4c;->A07:Lcom/facebook/ads/redexgen/X/4c;

    if-nez v0, :cond_0

    .line 67658
    iput-object v1, p1, Lcom/facebook/ads/redexgen/X/4c;->A06:Lcom/facebook/ads/redexgen/X/4c;

    .line 67659
    :cond_0
    iput-object v1, p1, Lcom/facebook/ads/redexgen/X/4c;->A07:Lcom/facebook/ads/redexgen/X/4c;

    .line 67660
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/4c;->A0E(Lcom/facebook/ads/redexgen/X/4c;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 67661
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/am;->A00:Lcom/facebook/ads/redexgen/X/El;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/4c;->A0H:Landroid/view/View;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/El;->A20(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4c;->A0f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67662
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/am;->A00:Lcom/facebook/ads/redexgen/X/El;

    iget-object v1, p1, Lcom/facebook/ads/redexgen/X/4c;->A0H:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/El;->removeDetachedView(Landroid/view/View;Z)V

    .line 67663
    :cond_1
    return-void
.end method
