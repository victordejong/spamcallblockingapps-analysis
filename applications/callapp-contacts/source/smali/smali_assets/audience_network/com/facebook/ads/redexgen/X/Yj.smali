.class public final Lcom/facebook/ads/redexgen/X/Yj;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/C1;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation


# instance fields
.field public final A00:Landroid/media/MediaCrypto;

.field public final A01:Z


# virtual methods
.method public final A00()Landroid/media/MediaCrypto;
    .locals 1

    .line 61387
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yj;->A00:Landroid/media/MediaCrypto;

    return-object v0
.end method

.method public final A01(Ljava/lang/String;)Z
    .locals 1

    .line 61388
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Yj;->A01:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yj;->A00:Landroid/media/MediaCrypto;

    .line 61389
    invoke-virtual {v0, p1}, Landroid/media/MediaCrypto;->requiresSecureDecoderComponent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 61390
    :goto_0
    return v0

    .line 61391
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
