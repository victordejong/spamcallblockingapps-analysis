.class public final Lcom/facebook/ads/redexgen/X/ap;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/4j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/El;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/El;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/El;)V
    .locals 0

    .line 67748
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/ap;->A00:Lcom/facebook/ads/redexgen/X/El;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ACa(Lcom/facebook/ads/redexgen/X/4c;Lcom/facebook/ads/redexgen/X/4F;Lcom/facebook/ads/redexgen/X/4F;)V
    .locals 1

    .line 67749
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ap;->A00:Lcom/facebook/ads/redexgen/X/El;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/El;->A1o(Lcom/facebook/ads/redexgen/X/4c;Lcom/facebook/ads/redexgen/X/4F;Lcom/facebook/ads/redexgen/X/4F;)V

    .line 67750
    return-void
.end method

.method public final ACc(Lcom/facebook/ads/redexgen/X/4c;Lcom/facebook/ads/redexgen/X/4F;Lcom/facebook/ads/redexgen/X/4F;)V
    .locals 1
    .param p2    # Lcom/facebook/ads/redexgen/X/4F;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/facebook/ads/redexgen/X/4F;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 67751
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ap;->A00:Lcom/facebook/ads/redexgen/X/El;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/El;->A0r:Lcom/facebook/ads/redexgen/X/4S;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/4S;->A0d(Lcom/facebook/ads/redexgen/X/4c;)V

    .line 67752
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ap;->A00:Lcom/facebook/ads/redexgen/X/El;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/El;->A1p(Lcom/facebook/ads/redexgen/X/4c;Lcom/facebook/ads/redexgen/X/4F;Lcom/facebook/ads/redexgen/X/4F;)V

    .line 67753
    return-void
.end method

.method public final ACe(Lcom/facebook/ads/redexgen/X/4c;Lcom/facebook/ads/redexgen/X/4F;Lcom/facebook/ads/redexgen/X/4F;)V
    .locals 1
    .param p2    # Lcom/facebook/ads/redexgen/X/4F;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/facebook/ads/redexgen/X/4F;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 67754
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/4c;->A0a(Z)V

    .line 67755
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ap;->A00:Lcom/facebook/ads/redexgen/X/El;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/El;->A0C:Z

    if-eqz v0, :cond_1

    .line 67756
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ap;->A00:Lcom/facebook/ads/redexgen/X/El;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/El;->A05:Lcom/facebook/ads/redexgen/X/4G;

    invoke-virtual {v0, p1, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/4G;->A0L(Lcom/facebook/ads/redexgen/X/4c;Lcom/facebook/ads/redexgen/X/4c;Lcom/facebook/ads/redexgen/X/4F;Lcom/facebook/ads/redexgen/X/4F;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67757
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ap;->A00:Lcom/facebook/ads/redexgen/X/El;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/El;->A1O()V

    .line 67758
    :cond_0
    :goto_0
    return-void

    .line 67759
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ap;->A00:Lcom/facebook/ads/redexgen/X/El;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/El;->A05:Lcom/facebook/ads/redexgen/X/4G;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/4G;->A0K(Lcom/facebook/ads/redexgen/X/4c;Lcom/facebook/ads/redexgen/X/4F;Lcom/facebook/ads/redexgen/X/4F;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67760
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ap;->A00:Lcom/facebook/ads/redexgen/X/El;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/El;->A1O()V

    goto :goto_0
.end method

.method public final AET(Lcom/facebook/ads/redexgen/X/4c;)V
    .locals 3

    .line 67761
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ap;->A00:Lcom/facebook/ads/redexgen/X/El;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/El;->A06:Lcom/facebook/ads/redexgen/X/4K;

    iget-object v1, p1, Lcom/facebook/ads/redexgen/X/4c;->A0H:Landroid/view/View;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ap;->A00:Lcom/facebook/ads/redexgen/X/El;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/El;->A0r:Lcom/facebook/ads/redexgen/X/4S;

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4K;->A1E(Landroid/view/View;Lcom/facebook/ads/redexgen/X/4S;)V

    .line 67762
    return-void
.end method
