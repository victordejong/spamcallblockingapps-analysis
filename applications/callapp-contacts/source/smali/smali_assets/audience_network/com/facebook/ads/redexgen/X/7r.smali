.class public final Lcom/facebook/ads/redexgen/X/7r;
.super Lcom/facebook/ads/redexgen/X/KW;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Jj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Jj;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Jj;)V
    .locals 0

    .line 16839
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/7r;->A00:Lcom/facebook/ads/redexgen/X/Jj;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/KW;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/7v;)V
    .locals 3

    .line 16840
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7r;->A00:Lcom/facebook/ads/redexgen/X/Jj;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Jj;->A01(Lcom/facebook/ads/redexgen/X/Jj;)Landroid/os/Handler;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 16841
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/7r;->A00:Lcom/facebook/ads/redexgen/X/Jj;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Pk;->A05:Lcom/facebook/ads/redexgen/X/Pk;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Jj;->A0B(Lcom/facebook/ads/redexgen/X/Jj;Lcom/facebook/ads/redexgen/X/Pk;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 16842
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7r;->A00:Lcom/facebook/ads/redexgen/X/Jj;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Jj;->A05(Lcom/facebook/ads/redexgen/X/Jj;)V

    .line 16843
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/7r;->A00:Lcom/facebook/ads/redexgen/X/Jj;

    const/4 v0, 0x0

    invoke-static {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/Jj;->A06(Lcom/facebook/ads/redexgen/X/Jj;ZZ)V

    .line 16844
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7r;->A00:Lcom/facebook/ads/redexgen/X/Jj;

    invoke-static {v0, v2}, Lcom/facebook/ads/redexgen/X/Jj;->A0C(Lcom/facebook/ads/redexgen/X/Jj;Z)Z

    .line 16845
    return-void
.end method


# virtual methods
.method public final bridge synthetic A04(Lcom/facebook/ads/redexgen/X/9E;)V
    .locals 0

    .line 16846
    check-cast p1, Lcom/facebook/ads/redexgen/X/7v;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/7r;->A00(Lcom/facebook/ads/redexgen/X/7v;)V

    return-void
.end method
