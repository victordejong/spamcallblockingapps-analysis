.class public final Lcom/facebook/ads/redexgen/X/AR;
.super Lcom/facebook/ads/redexgen/X/KL;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/ah;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/ah;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/ah;)V
    .locals 0

    .line 21322
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/AR;->A00:Lcom/facebook/ads/redexgen/X/ah;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/KL;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/KN;)V
    .locals 2

    .line 21323
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AR;->A00:Lcom/facebook/ads/redexgen/X/ah;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ah;->A0A(Lcom/facebook/ads/redexgen/X/ah;)Lcom/facebook/ads/redexgen/X/PD;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 21324
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/AR;->A00:Lcom/facebook/ads/redexgen/X/ah;

    const/4 v0, 0x1

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/ah;->A0n(Lcom/facebook/ads/redexgen/X/ah;Z)Z

    .line 21325
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AR;->A00:Lcom/facebook/ads/redexgen/X/ah;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ah;->A04(Lcom/facebook/ads/redexgen/X/ah;)Lcom/facebook/ads/redexgen/X/S5;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0N()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0P()Z

    move-result v0

    if-nez v0, :cond_0

    .line 21326
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AR;->A00:Lcom/facebook/ads/redexgen/X/ah;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ah;->A0a(Lcom/facebook/ads/redexgen/X/ah;)V

    .line 21327
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AR;->A00:Lcom/facebook/ads/redexgen/X/ah;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ah;->A0F(Lcom/facebook/ads/redexgen/X/ah;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AR;->A00:Lcom/facebook/ads/redexgen/X/ah;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ah;->A0A(Lcom/facebook/ads/redexgen/X/ah;)Lcom/facebook/ads/redexgen/X/PD;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/PD;->A0d()Z

    move-result v0

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 21328
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AR;->A00:Lcom/facebook/ads/redexgen/X/ah;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ah;->A0b(Lcom/facebook/ads/redexgen/X/ah;)V

    .line 21329
    :cond_1
    return-void
.end method


# virtual methods
.method public final bridge synthetic A04(Lcom/facebook/ads/redexgen/X/9E;)V
    .locals 0

    .line 21330
    check-cast p1, Lcom/facebook/ads/redexgen/X/KN;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/AR;->A00(Lcom/facebook/ads/redexgen/X/KN;)V

    return-void
.end method
