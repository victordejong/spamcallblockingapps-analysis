.class public final Lcom/facebook/ads/redexgen/X/ZH;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/6e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/ZF;->A0L(Ljava/util/List;)Lcom/facebook/ads/redexgen/X/6e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/ZF;

.field public final synthetic A01:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/ZF;Ljava/util/List;)V
    .locals 0

    .line 66213
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/ZH;->A00:Lcom/facebook/ads/redexgen/X/ZF;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/ZH;->A01:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A5D()Lcom/facebook/ads/redexgen/X/6t;
    .locals 7

    .line 66214
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 66215
    .local p0, "streamVolumeResultMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/facebook/ads/internal/botdetection/signals/library/nativesignals/AudioManagerSignalCollector$AudioStreamVolume;>;"
    const/4 v5, 0x0

    .local v4, "i":I
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZH;->A01:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v5, v0, :cond_2

    .line 66216
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZH;->A01:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/6d;

    .line 66217
    .local v5, "bundledSignalMetadata":Lcom/facebook/ads/redexgen/X/6d;
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/6d;->A03()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66218
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/6d;->A02()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 66219
    .local v0, "streamKey":I
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1c

    if-lt v1, v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZH;->A00:Lcom/facebook/ads/redexgen/X/ZF;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ZF;->A01(Lcom/facebook/ads/redexgen/X/ZF;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/media/AudioManager;->getStreamMinVolume(I)I

    move-result v3

    .line 66220
    .local v0, "minVolume":I
    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZH;->A00:Lcom/facebook/ads/redexgen/X/ZF;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ZF;->A01(Lcom/facebook/ads/redexgen/X/ZF;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    .line 66221
    .local v0, "currentVolume":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZH;->A00:Lcom/facebook/ads/redexgen/X/ZF;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ZF;->A01(Lcom/facebook/ads/redexgen/X/ZF;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    .line 66222
    .local v1, "maxVolume":I
    new-instance v1, Lcom/facebook/ads/redexgen/X/ZG;

    invoke-direct {v1, v3, v2, v0}, Lcom/facebook/ads/redexgen/X/ZG;-><init>(III)V

    .line 66223
    .local v1, "audioStreamVolume":Lcom/facebook/ads/redexgen/X/ZG;
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66224
    .end local v5    # "bundledSignalMetadata":Lcom/facebook/ads/redexgen/X/6d;
    .end local v0    # "currentVolume":I
    .end local v0
    .end local v0
    .end local v1    # "audioStreamVolume":Lcom/facebook/ads/redexgen/X/ZG;
    .end local v1
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 66225
    :cond_1
    const/4 v3, -0x1

    goto :goto_1

    .line 66226
    .end local v4    # "i":I
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZH;->A00:Lcom/facebook/ads/redexgen/X/ZF;

    invoke-static {v0, v4}, Lcom/facebook/ads/redexgen/X/ZF;->A02(Lcom/facebook/ads/redexgen/X/ZF;Ljava/util/HashMap;)Lcom/facebook/ads/redexgen/X/6t;

    move-result-object v0

    return-object v0
.end method
