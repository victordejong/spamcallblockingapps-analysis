.class public final Lcom/facebook/ads/redexgen/X/S5;
.super Lcom/facebook/ads/redexgen/X/Q8;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/S1;-><init>(Lcom/facebook/ads/redexgen/X/Wm;Ljava/lang/ref/WeakReference;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/S1;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/S1;)V
    .locals 0

    .line 51254
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/S5;->A00:Lcom/facebook/ads/redexgen/X/S1;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Q8;-><init>()V

    return-void
.end method


# virtual methods
.method public final A04()V
    .locals 1

    .line 51255
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S5;->A00:Lcom/facebook/ads/redexgen/X/S1;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/S1;->A01(Lcom/facebook/ads/redexgen/X/S1;)Lcom/facebook/ads/redexgen/X/Wm;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/J4;->A1A(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 51256
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S5;->A00:Lcom/facebook/ads/redexgen/X/S1;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/S1;->A0C(Lcom/facebook/ads/redexgen/X/S1;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S5;->A00:Lcom/facebook/ads/redexgen/X/S1;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/S1;->A02(Lcom/facebook/ads/redexgen/X/S1;)Lcom/facebook/ads/redexgen/X/Lc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Lc;->A08()Z

    move-result v0

    if-nez v0, :cond_1

    .line 51257
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S5;->A00:Lcom/facebook/ads/redexgen/X/S1;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/S1;->A02(Lcom/facebook/ads/redexgen/X/S1;)Lcom/facebook/ads/redexgen/X/Lc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Lc;->A06()V

    .line 51258
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S5;->A00:Lcom/facebook/ads/redexgen/X/S1;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/S1;->A06(Lcom/facebook/ads/redexgen/X/S1;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 51259
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S5;->A00:Lcom/facebook/ads/redexgen/X/S1;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/S1;->A06(Lcom/facebook/ads/redexgen/X/S1;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/NQ;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/NQ;->AAK()V

    .line 51260
    :cond_2
    :goto_0
    return-void

    .line 51261
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S5;->A00:Lcom/facebook/ads/redexgen/X/S1;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/S1;->A0C(Lcom/facebook/ads/redexgen/X/S1;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S5;->A00:Lcom/facebook/ads/redexgen/X/S1;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/S1;->A02(Lcom/facebook/ads/redexgen/X/S1;)Lcom/facebook/ads/redexgen/X/Lc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Lc;->A08()Z

    move-result v0

    if-nez v0, :cond_2

    .line 51262
    :cond_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S5;->A00:Lcom/facebook/ads/redexgen/X/S1;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/S1;->A06(Lcom/facebook/ads/redexgen/X/S1;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 51263
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S5;->A00:Lcom/facebook/ads/redexgen/X/S1;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/S1;->A02(Lcom/facebook/ads/redexgen/X/S1;)Lcom/facebook/ads/redexgen/X/Lc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Lc;->A06()V

    .line 51264
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S5;->A00:Lcom/facebook/ads/redexgen/X/S1;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/S1;->A06(Lcom/facebook/ads/redexgen/X/S1;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/NQ;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/NQ;->AAK()V

    goto :goto_0
.end method
