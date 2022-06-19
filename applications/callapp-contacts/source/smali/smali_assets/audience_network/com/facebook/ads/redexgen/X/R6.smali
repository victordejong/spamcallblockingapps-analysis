.class public final Lcom/facebook/ads/redexgen/X/R6;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/4y;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/83;->A8J(Landroid/content/Intent;Landroid/os/Bundle;Lcom/facebook/ads/redexgen/X/50;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/50;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/83;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/83;Lcom/facebook/ads/redexgen/X/50;)V
    .locals 0

    .line 49732
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/R6;->A01:Lcom/facebook/ads/redexgen/X/83;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/R6;->A00:Lcom/facebook/ads/redexgen/X/50;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A7u()Z
    .locals 3

    .line 49733
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R6;->A01:Lcom/facebook/ads/redexgen/X/83;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/bb;->A0c()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 49734
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/R6;->A01:Lcom/facebook/ads/redexgen/X/83;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R6;->A00:Lcom/facebook/ads/redexgen/X/50;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/bb;->A0b(Lcom/facebook/ads/redexgen/X/50;)V

    .line 49735
    return v2

    .line 49736
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R6;->A01:Lcom/facebook/ads/redexgen/X/83;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/83;->A0I(Lcom/facebook/ads/redexgen/X/83;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 49737
    return v2

    .line 49738
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R6;->A01:Lcom/facebook/ads/redexgen/X/83;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/83;->A0J(Lcom/facebook/ads/redexgen/X/83;)Z

    move-result v0

    return v0
.end method
