.class public final Lcom/facebook/ads/redexgen/X/7o;
.super Lcom/facebook/ads/redexgen/X/KN;
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

    .line 16922
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/7o;->A00:Lcom/facebook/ads/redexgen/X/JG;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/KN;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/KP;)V
    .locals 4

    .line 16923
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7o;->A00:Lcom/facebook/ads/redexgen/X/JG;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/JG;->A08(Lcom/facebook/ads/redexgen/X/JG;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7o;->A00:Lcom/facebook/ads/redexgen/X/JG;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/JG;->A09(Lcom/facebook/ads/redexgen/X/JG;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 16924
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7o;->A00:Lcom/facebook/ads/redexgen/X/JG;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/facebook/ads/redexgen/X/JG;->A0C(Lcom/facebook/ads/redexgen/X/JG;Z)Z

    .line 16925
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/7o;->A00:Lcom/facebook/ads/redexgen/X/JG;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Pf;->A03:Lcom/facebook/ads/redexgen/X/Pf;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/JG;->A0B(Lcom/facebook/ads/redexgen/X/JG;Lcom/facebook/ads/redexgen/X/Pf;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7o;->A00:Lcom/facebook/ads/redexgen/X/JG;

    .line 16926
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/JG;->A0A(Lcom/facebook/ads/redexgen/X/JG;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 16927
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7o;->A00:Lcom/facebook/ads/redexgen/X/JG;

    invoke-static {v0, v2}, Lcom/facebook/ads/redexgen/X/JG;->A0D(Lcom/facebook/ads/redexgen/X/JG;Z)Z

    .line 16928
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7o;->A00:Lcom/facebook/ads/redexgen/X/JG;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/JG;->A01(Lcom/facebook/ads/redexgen/X/JG;)Landroid/os/Handler;

    move-result-object v3

    new-instance v2, Lcom/facebook/ads/redexgen/X/Jl;

    invoke-direct {v2, p0}, Lcom/facebook/ads/redexgen/X/Jl;-><init>(Lcom/facebook/ads/redexgen/X/7o;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7o;->A00:Lcom/facebook/ads/redexgen/X/JG;

    .line 16929
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/JG;->A00(Lcom/facebook/ads/redexgen/X/JG;)I

    move-result v0

    int-to-long v0, v0

    .line 16930
    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 16931
    :cond_1
    :goto_0
    return-void

    .line 16932
    :cond_2
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/7o;->A00:Lcom/facebook/ads/redexgen/X/JG;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Pf;->A02:Lcom/facebook/ads/redexgen/X/Pf;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/JG;->A0B(Lcom/facebook/ads/redexgen/X/JG;Lcom/facebook/ads/redexgen/X/Pf;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 16933
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7o;->A00:Lcom/facebook/ads/redexgen/X/JG;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/JG;->A05(Lcom/facebook/ads/redexgen/X/JG;)V

    .line 16934
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/7o;->A00:Lcom/facebook/ads/redexgen/X/JG;

    const/4 v0, 0x1

    invoke-static {v1, v0, v0}, Lcom/facebook/ads/redexgen/X/JG;->A06(Lcom/facebook/ads/redexgen/X/JG;ZZ)V

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic A04(Lcom/facebook/ads/redexgen/X/9E;)V
    .locals 0

    .line 16935
    check-cast p1, Lcom/facebook/ads/redexgen/X/KP;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/7o;->A00(Lcom/facebook/ads/redexgen/X/KP;)V

    return-void
.end method
