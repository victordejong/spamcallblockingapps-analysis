.class public final Lcom/facebook/ads/redexgen/X/PQ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/QY;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/P5;->A05()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/P5;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/P5;)V
    .locals 0

    .line 48321
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/PQ;->A00:Lcom/facebook/ads/redexgen/X/P5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ACb()V
    .locals 2

    .line 48322
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PQ;->A00:Lcom/facebook/ads/redexgen/X/P5;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/P5;->A00(Lcom/facebook/ads/redexgen/X/P5;)Lcom/facebook/ads/redexgen/X/M7;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 48323
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PQ;->A00:Lcom/facebook/ads/redexgen/X/P5;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/P5;->A00(Lcom/facebook/ads/redexgen/X/P5;)Lcom/facebook/ads/redexgen/X/M7;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PQ;->A00:Lcom/facebook/ads/redexgen/X/P5;

    .line 48324
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/P5;->A01(Lcom/facebook/ads/redexgen/X/P5;)Lcom/facebook/ads/redexgen/X/MZ;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/MZ;->A7C()Ljava/lang/String;

    move-result-object v0

    .line 48325
    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/M7;->A3p(Ljava/lang/String;)V

    .line 48326
    :cond_0
    return-void
.end method

.method public final ACd(Lcom/facebook/ads/redexgen/X/Qa;)V
    .locals 2

    .line 48327
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PQ;->A00:Lcom/facebook/ads/redexgen/X/P5;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/P5;->A00(Lcom/facebook/ads/redexgen/X/P5;)Lcom/facebook/ads/redexgen/X/M7;

    move-result-object v0

    if-nez v0, :cond_0

    .line 48328
    return-void

    .line 48329
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Qa;->A00()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 48330
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PQ;->A00:Lcom/facebook/ads/redexgen/X/P5;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/P5;->A00(Lcom/facebook/ads/redexgen/X/P5;)Lcom/facebook/ads/redexgen/X/M7;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PQ;->A00:Lcom/facebook/ads/redexgen/X/P5;

    .line 48331
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/P5;->A01(Lcom/facebook/ads/redexgen/X/P5;)Lcom/facebook/ads/redexgen/X/MZ;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/MZ;->A7D()Ljava/lang/String;

    move-result-object v0

    .line 48332
    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/M7;->A3p(Ljava/lang/String;)V

    .line 48333
    :goto_0
    return-void

    .line 48334
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PQ;->A00:Lcom/facebook/ads/redexgen/X/P5;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/P5;->A00(Lcom/facebook/ads/redexgen/X/P5;)Lcom/facebook/ads/redexgen/X/M7;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PQ;->A00:Lcom/facebook/ads/redexgen/X/P5;

    .line 48335
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/P5;->A01(Lcom/facebook/ads/redexgen/X/P5;)Lcom/facebook/ads/redexgen/X/MZ;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/MZ;->A7C()Ljava/lang/String;

    move-result-object v0

    .line 48336
    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/M7;->A3p(Ljava/lang/String;)V

    goto :goto_0
.end method
