.class public final Lcom/facebook/ads/redexgen/X/bG;
.super Lcom/facebook/ads/redexgen/X/20;
.source ""

# interfaces
.implements Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;


# static fields
.field public static A02:[B


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/bN;

.field public final A01:Lcom/facebook/ads/redexgen/X/1z;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/bG;->A01()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/22;Lcom/facebook/ads/redexgen/X/bN;Lcom/facebook/ads/redexgen/X/1z;)V
    .locals 0

    .line 69247
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/20;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/22;)V

    .line 69248
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/bG;->A00:Lcom/facebook/ads/redexgen/X/bN;

    .line 69249
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/bG;->A01:Lcom/facebook/ads/redexgen/X/1z;

    .line 69250
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/bG;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x4

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .locals 1

    const/16 v0, 0x5a

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/bG;->A02:[B

    return-void

    :array_0
    .array-data 1
        -0x39t
        -0x34t
        -0x2et
        -0x23t
        -0x3dt
        -0x30t
        -0x30t
        -0x33t
        -0x30t
        -0x23t
        -0x3ft
        -0x33t
        -0x3et
        -0x3dt
        -0x23t
        -0x37t
        -0x3dt
        -0x29t
        -0x49t
        -0x44t
        -0x3et
        -0x33t
        -0x40t
        -0x3ct
        -0x33t
        -0x3ct
        -0x49t
        -0x4et
        -0x4dt
        -0x43t
        -0x33t
        -0x4et
        -0x3dt
        -0x40t
        -0x51t
        -0x3et
        -0x49t
        -0x43t
        -0x44t
        -0x33t
        -0x47t
        -0x4dt
        -0x39t
        0x72t
        0x75t
        0x74t
        0x6dt
        -0x7bt
        0x6ft
        0x74t
        0x7ct
        0x67t
        0x72t
        0x6ft
        0x6at
        0x67t
        0x7at
        0x6ft
        0x75t
        0x74t
        -0x7bt
        0x7at
        0x6ft
        0x73t
        0x6bt
        -0x7bt
        0x71t
        0x6bt
        0x7ft
        -0x6bt
        -0x6at
        -0x6ct
        -0x5ft
        -0x79t
        -0x6ct
        -0x6ct
        -0x6ft
        -0x6ct
        -0x5ft
        -0x71t
        -0x79t
        -0x6bt
        -0x6bt
        -0x7dt
        -0x77t
        -0x79t
        -0x5ft
        -0x73t
        -0x79t
        -0x65t
    .end array-data
.end method


# virtual methods
.method public final onAdClicked(Lcom/facebook/ads/Ad;)V
    .locals 4

    .line 69251
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/20;->A00:Lcom/facebook/ads/redexgen/X/22;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/20;->A01:Ljava/lang/String;

    const/16 v1, 0x838

    const/4 v0, 0x0

    invoke-interface {v3, v1, v2, v0}, Lcom/facebook/ads/redexgen/X/22;->AAq(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 69252
    return-void
.end method

.method public final onAdLoaded(Lcom/facebook/ads/Ad;)V
    .locals 6

    .line 69253
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 69254
    .local p0, "extraData":Landroid/os/Bundle;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bG;->A00:Lcom/facebook/ads/redexgen/X/bN;

    .line 69255
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/bN;->A0B()J

    move-result-wide v2

    .line 69256
    const/16 v5, 0x2b

    const/16 v1, 0x1a

    const/16 v0, 0x22

    invoke-static {v5, v1, v0}, Lcom/facebook/ads/redexgen/X/bG;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 69257
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bG;->A01:Lcom/facebook/ads/redexgen/X/1z;

    iget v3, v0, Lcom/facebook/ads/redexgen/X/1z;->A00:I

    const/16 v2, 0x12

    const/16 v1, 0x19

    const/16 v0, 0x6a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bG;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 69258
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/20;->A00:Lcom/facebook/ads/redexgen/X/22;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/20;->A01:Ljava/lang/String;

    const/16 v0, 0x834

    invoke-interface {v2, v0, v1, v4}, Lcom/facebook/ads/redexgen/X/22;->AAq(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 69259
    return-void
.end method

.method public final onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V
    .locals 5

    .line 69260
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 69261
    .local p0, "extraData":Landroid/os/Bundle;
    invoke-virtual {p2}, Lcom/facebook/ads/AdError;->getErrorMessage()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x45

    const/16 v1, 0x15

    const/16 v0, 0x3e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bG;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 69262
    invoke-virtual {p2}, Lcom/facebook/ads/AdError;->getErrorCode()I

    move-result v3

    const/4 v2, 0x0

    const/16 v1, 0x12

    const/16 v0, 0x7a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bG;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 69263
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/20;->A00:Lcom/facebook/ads/redexgen/X/22;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/20;->A01:Ljava/lang/String;

    const/16 v0, 0x837

    invoke-interface {v2, v0, v1, v4}, Lcom/facebook/ads/redexgen/X/22;->AAq(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 69264
    return-void
.end method

.method public final onLoggingImpression(Lcom/facebook/ads/Ad;)V
    .locals 4

    .line 69265
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/20;->A00:Lcom/facebook/ads/redexgen/X/22;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/20;->A01:Ljava/lang/String;

    const/16 v1, 0x839

    const/4 v0, 0x0

    invoke-interface {v3, v1, v2, v0}, Lcom/facebook/ads/redexgen/X/22;->AAq(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 69266
    return-void
.end method

.method public final onRewardServerFailed()V
    .locals 4

    .line 69267
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/20;->A00:Lcom/facebook/ads/redexgen/X/22;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/20;->A01:Ljava/lang/String;

    const/16 v1, 0xbba

    const/4 v0, 0x0

    invoke-interface {v3, v1, v2, v0}, Lcom/facebook/ads/redexgen/X/22;->AAq(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 69268
    return-void
.end method

.method public final onRewardServerSuccess()V
    .locals 4

    .line 69269
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/20;->A00:Lcom/facebook/ads/redexgen/X/22;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/20;->A01:Ljava/lang/String;

    const/16 v1, 0xbb9

    const/4 v0, 0x0

    invoke-interface {v3, v1, v2, v0}, Lcom/facebook/ads/redexgen/X/22;->AAq(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 69270
    return-void
.end method

.method public final onRewardedVideoActivityDestroyed()V
    .locals 4

    .line 69271
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/20;->A00:Lcom/facebook/ads/redexgen/X/22;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/20;->A01:Ljava/lang/String;

    const/16 v1, 0x83a

    const/4 v0, 0x0

    invoke-interface {v3, v1, v2, v0}, Lcom/facebook/ads/redexgen/X/22;->AAq(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 69272
    return-void
.end method

.method public final onRewardedVideoClosed()V
    .locals 4

    .line 69273
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/20;->A00:Lcom/facebook/ads/redexgen/X/22;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/20;->A01:Ljava/lang/String;

    const/16 v1, 0x83e

    const/4 v0, 0x0

    invoke-interface {v3, v1, v2, v0}, Lcom/facebook/ads/redexgen/X/22;->AAq(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 69274
    return-void
.end method

.method public final onRewardedVideoCompleted()V
    .locals 4

    .line 69275
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/20;->A00:Lcom/facebook/ads/redexgen/X/22;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/20;->A01:Ljava/lang/String;

    const/16 v1, 0xbb8

    const/4 v0, 0x0

    invoke-interface {v3, v1, v2, v0}, Lcom/facebook/ads/redexgen/X/22;->AAq(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 69276
    return-void
.end method
