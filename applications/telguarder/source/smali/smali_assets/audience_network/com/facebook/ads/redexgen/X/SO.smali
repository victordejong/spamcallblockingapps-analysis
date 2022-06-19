.class public final Lcom/facebook/ads/redexgen/X/SO;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/M5;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/SK;->A05()Lcom/facebook/ads/redexgen/X/M6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/SK;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/SK;)V
    .locals 0

    .line 52259
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/SO;->A00:Lcom/facebook/ads/redexgen/X/SK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A9j()V
    .locals 3

    .line 52260
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SO;->A00:Lcom/facebook/ads/redexgen/X/SK;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/SK;->A0a(Lcom/facebook/ads/redexgen/X/SK;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SO;->A00:Lcom/facebook/ads/redexgen/X/SK;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/SK;->A0E(Lcom/facebook/ads/redexgen/X/SK;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SO;->A00:Lcom/facebook/ads/redexgen/X/SK;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/SK;->A0b(Lcom/facebook/ads/redexgen/X/SK;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52261
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SO;->A00:Lcom/facebook/ads/redexgen/X/SK;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/SK;->A0P:Lcom/facebook/ads/redexgen/X/M6;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/M6;->setToolbarActionMode(I)V

    .line 52262
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SO;->A00:Lcom/facebook/ads/redexgen/X/SK;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/SK;->A0T(Lcom/facebook/ads/redexgen/X/SK;)V

    .line 52263
    :goto_0
    return-void

    .line 52264
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SO;->A00:Lcom/facebook/ads/redexgen/X/SK;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/SK;->A04(Lcom/facebook/ads/redexgen/X/SK;)Lcom/facebook/ads/redexgen/X/JK;

    move-result-object v2

    sget-object v1, Lcom/facebook/ads/redexgen/X/JJ;->A06:Lcom/facebook/ads/redexgen/X/JJ;

    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/JK;->A02(Lcom/facebook/ads/redexgen/X/JJ;Ljava/util/Map;)V

    .line 52265
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SO;->A00:Lcom/facebook/ads/redexgen/X/SK;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/SK;->A06(Lcom/facebook/ads/redexgen/X/SK;)Lcom/facebook/ads/redexgen/X/M7;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SO;->A00:Lcom/facebook/ads/redexgen/X/SK;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/SK;->A07(Lcom/facebook/ads/redexgen/X/SK;)Lcom/facebook/ads/redexgen/X/MZ;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/MZ;->A6L()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/M7;->A3p(Ljava/lang/String;)V

    goto :goto_0
.end method
