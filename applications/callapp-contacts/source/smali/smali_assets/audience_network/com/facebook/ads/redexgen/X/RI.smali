.class public final Lcom/facebook/ads/redexgen/X/RI;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/OE;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/RH;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/RH;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/RH;)V
    .locals 0

    .line 50082
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/RI;->A00:Lcom/facebook/ads/redexgen/X/RH;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final AC3(Landroid/view/View;)V
    .locals 2

    .line 50083
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RI;->A00:Lcom/facebook/ads/redexgen/X/RH;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/RH;->A09:Z

    if-eqz v0, :cond_0

    .line 50084
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/RI;->A00:Lcom/facebook/ads/redexgen/X/RH;

    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/facebook/ads/redexgen/X/RH;->A07:Z

    .line 50085
    :cond_0
    return-void
.end method

.method public final AC5(Landroid/view/View;)V
    .locals 2

    .line 50086
    check-cast p1, Lcom/facebook/ads/redexgen/X/YM;

    .line 50087
    .local p0, "cardLayout":Lcom/facebook/ads/redexgen/X/YM;
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/YM;->A0e()V

    .line 50088
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RI;->A00:Lcom/facebook/ads/redexgen/X/RH;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/RH;->A09:Z

    if-eqz v0, :cond_0

    .line 50089
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/RI;->A00:Lcom/facebook/ads/redexgen/X/RH;

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/facebook/ads/redexgen/X/RH;->A07:Z

    .line 50090
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RI;->A00:Lcom/facebook/ads/redexgen/X/RH;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/RH;->A04:Lcom/facebook/ads/redexgen/X/QE;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/QE;->A0a()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, -0x5f000010

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/YM;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_1

    .line 50091
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RI;->A00:Lcom/facebook/ads/redexgen/X/RH;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/RH;->A04:Lcom/facebook/ads/redexgen/X/QE;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/QE;->A0V()V

    .line 50092
    :cond_1
    return-void
.end method
