.class public final Lcom/facebook/ads/redexgen/X/7r;
.super Lcom/facebook/ads/redexgen/X/KS;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/JG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/JG;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/JG;)V
    .locals 0

    .line 16942
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/7r;->A00:Lcom/facebook/ads/redexgen/X/JG;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/KS;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/7v;)V
    .locals 3

    .line 16943
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7r;->A00:Lcom/facebook/ads/redexgen/X/JG;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/JG;->A01(Lcom/facebook/ads/redexgen/X/JG;)Landroid/os/Handler;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 16944
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/7r;->A00:Lcom/facebook/ads/redexgen/X/JG;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Pf;->A04:Lcom/facebook/ads/redexgen/X/Pf;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/JG;->A0B(Lcom/facebook/ads/redexgen/X/JG;Lcom/facebook/ads/redexgen/X/Pf;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 16945
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7r;->A00:Lcom/facebook/ads/redexgen/X/JG;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/JG;->A05(Lcom/facebook/ads/redexgen/X/JG;)V

    .line 16946
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/7r;->A00:Lcom/facebook/ads/redexgen/X/JG;

    const/4 v0, 0x0

    invoke-static {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/JG;->A06(Lcom/facebook/ads/redexgen/X/JG;ZZ)V

    .line 16947
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7r;->A00:Lcom/facebook/ads/redexgen/X/JG;

    invoke-static {v0, v2}, Lcom/facebook/ads/redexgen/X/JG;->A0C(Lcom/facebook/ads/redexgen/X/JG;Z)Z

    .line 16948
    return-void
.end method


# virtual methods
.method public final bridge synthetic A04(Lcom/facebook/ads/redexgen/X/9E;)V
    .locals 0

    .line 16949
    check-cast p1, Lcom/facebook/ads/redexgen/X/7v;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/7r;->A00(Lcom/facebook/ads/redexgen/X/7v;)V

    return-void
.end method
