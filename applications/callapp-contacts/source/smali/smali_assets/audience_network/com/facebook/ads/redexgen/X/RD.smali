.class public final Lcom/facebook/ads/redexgen/X/RD;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/4y;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/84;->A8J(Landroid/content/Intent;Landroid/os/Bundle;Lcom/facebook/ads/redexgen/X/50;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/50;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/84;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/84;Lcom/facebook/ads/redexgen/X/50;)V
    .locals 0

    .line 49853
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/RD;->A01:Lcom/facebook/ads/redexgen/X/84;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/RD;->A00:Lcom/facebook/ads/redexgen/X/50;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A7u()Z
    .locals 3

    .line 49854
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RD;->A01:Lcom/facebook/ads/redexgen/X/84;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/bb;->A0c()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 49855
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/RD;->A01:Lcom/facebook/ads/redexgen/X/84;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RD;->A00:Lcom/facebook/ads/redexgen/X/50;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/bb;->A0b(Lcom/facebook/ads/redexgen/X/50;)V

    .line 49856
    return v2

    .line 49857
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RD;->A01:Lcom/facebook/ads/redexgen/X/84;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/84;->A0L(Lcom/facebook/ads/redexgen/X/84;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 49858
    return v2

    .line 49859
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RD;->A01:Lcom/facebook/ads/redexgen/X/84;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/84;->A0M(Lcom/facebook/ads/redexgen/X/84;)Z

    move-result v0

    return v0
.end method
