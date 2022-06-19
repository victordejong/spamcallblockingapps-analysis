.class public final Lcom/facebook/ads/redexgen/X/aH;
.super Lcom/facebook/ads/redexgen/X/QD;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/aD;-><init>(Lcom/facebook/ads/redexgen/X/XJ;Ljava/lang/ref/WeakReference;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/aD;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/aD;)V
    .locals 0

    .line 67151
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/aH;->A00:Lcom/facebook/ads/redexgen/X/aD;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/QD;-><init>()V

    return-void
.end method


# virtual methods
.method public final A04()V
    .locals 1

    .line 67152
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aH;->A00:Lcom/facebook/ads/redexgen/X/aD;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/aD;->A01(Lcom/facebook/ads/redexgen/X/aD;)Lcom/facebook/ads/redexgen/X/XJ;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/J4;->A19(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 67153
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aH;->A00:Lcom/facebook/ads/redexgen/X/aD;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/aD;->A0B(Lcom/facebook/ads/redexgen/X/aD;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aH;->A00:Lcom/facebook/ads/redexgen/X/aD;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/aD;->A02(Lcom/facebook/ads/redexgen/X/aD;)Lcom/facebook/ads/redexgen/X/La;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/La;->A08()Z

    move-result v0

    if-nez v0, :cond_1

    .line 67154
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aH;->A00:Lcom/facebook/ads/redexgen/X/aD;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/aD;->A02(Lcom/facebook/ads/redexgen/X/aD;)Lcom/facebook/ads/redexgen/X/La;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/La;->A06()V

    .line 67155
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aH;->A00:Lcom/facebook/ads/redexgen/X/aD;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/aD;->A05(Lcom/facebook/ads/redexgen/X/aD;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 67156
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aH;->A00:Lcom/facebook/ads/redexgen/X/aD;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/aD;->A05(Lcom/facebook/ads/redexgen/X/aD;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/NV;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/NV;->AAL()V

    .line 67157
    :cond_2
    :goto_0
    return-void

    .line 67158
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aH;->A00:Lcom/facebook/ads/redexgen/X/aD;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/aD;->A0B(Lcom/facebook/ads/redexgen/X/aD;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aH;->A00:Lcom/facebook/ads/redexgen/X/aD;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/aD;->A02(Lcom/facebook/ads/redexgen/X/aD;)Lcom/facebook/ads/redexgen/X/La;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/La;->A08()Z

    move-result v0

    if-nez v0, :cond_2

    .line 67159
    :cond_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aH;->A00:Lcom/facebook/ads/redexgen/X/aD;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/aD;->A05(Lcom/facebook/ads/redexgen/X/aD;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 67160
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aH;->A00:Lcom/facebook/ads/redexgen/X/aD;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/aD;->A02(Lcom/facebook/ads/redexgen/X/aD;)Lcom/facebook/ads/redexgen/X/La;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/La;->A06()V

    .line 67161
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aH;->A00:Lcom/facebook/ads/redexgen/X/aD;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/aD;->A05(Lcom/facebook/ads/redexgen/X/aD;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/NV;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/NV;->AAL()V

    goto :goto_0
.end method
