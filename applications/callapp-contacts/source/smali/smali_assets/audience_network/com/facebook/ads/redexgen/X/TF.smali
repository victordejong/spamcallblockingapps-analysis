.class public final Lcom/facebook/ads/redexgen/X/TF;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/4j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Eq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Eq;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Eq;)V
    .locals 0

    .line 54588
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/TF;->A00:Lcom/facebook/ads/redexgen/X/Eq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ACa(Lcom/facebook/ads/redexgen/X/4c;Lcom/facebook/ads/redexgen/X/4F;Lcom/facebook/ads/redexgen/X/4F;)V
    .locals 1

    .line 54589
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TF;->A00:Lcom/facebook/ads/redexgen/X/Eq;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Eq;->A1o(Lcom/facebook/ads/redexgen/X/4c;Lcom/facebook/ads/redexgen/X/4F;Lcom/facebook/ads/redexgen/X/4F;)V

    .line 54590
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

    .line 54591
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TF;->A00:Lcom/facebook/ads/redexgen/X/Eq;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Eq;->A0r:Lcom/facebook/ads/redexgen/X/4S;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/4S;->A0d(Lcom/facebook/ads/redexgen/X/4c;)V

    .line 54592
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TF;->A00:Lcom/facebook/ads/redexgen/X/Eq;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Eq;->A1p(Lcom/facebook/ads/redexgen/X/4c;Lcom/facebook/ads/redexgen/X/4F;Lcom/facebook/ads/redexgen/X/4F;)V

    .line 54593
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

    .line 54594
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/4c;->A0a(Z)V

    .line 54595
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TF;->A00:Lcom/facebook/ads/redexgen/X/Eq;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/Eq;->A0C:Z

    if-eqz v0, :cond_1

    .line 54596
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TF;->A00:Lcom/facebook/ads/redexgen/X/Eq;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Eq;->A05:Lcom/facebook/ads/redexgen/X/4G;

    invoke-virtual {v0, p1, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/4G;->A0L(Lcom/facebook/ads/redexgen/X/4c;Lcom/facebook/ads/redexgen/X/4c;Lcom/facebook/ads/redexgen/X/4F;Lcom/facebook/ads/redexgen/X/4F;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54597
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TF;->A00:Lcom/facebook/ads/redexgen/X/Eq;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Eq;->A1O()V

    .line 54598
    :cond_0
    :goto_0
    return-void

    .line 54599
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TF;->A00:Lcom/facebook/ads/redexgen/X/Eq;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Eq;->A05:Lcom/facebook/ads/redexgen/X/4G;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/4G;->A0K(Lcom/facebook/ads/redexgen/X/4c;Lcom/facebook/ads/redexgen/X/4F;Lcom/facebook/ads/redexgen/X/4F;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54600
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TF;->A00:Lcom/facebook/ads/redexgen/X/Eq;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Eq;->A1O()V

    goto :goto_0
.end method

.method public final AER(Lcom/facebook/ads/redexgen/X/4c;)V
    .locals 3

    .line 54601
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TF;->A00:Lcom/facebook/ads/redexgen/X/Eq;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Eq;->A06:Lcom/facebook/ads/redexgen/X/4K;

    iget-object v1, p1, Lcom/facebook/ads/redexgen/X/4c;->A0H:Landroid/view/View;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TF;->A00:Lcom/facebook/ads/redexgen/X/Eq;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Eq;->A0r:Lcom/facebook/ads/redexgen/X/4S;

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4K;->A1E(Landroid/view/View;Lcom/facebook/ads/redexgen/X/4S;)V

    .line 54602
    return-void
.end method
