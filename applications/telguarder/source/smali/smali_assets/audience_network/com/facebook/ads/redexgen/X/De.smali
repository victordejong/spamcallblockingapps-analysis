.class public final Lcom/facebook/ads/redexgen/X/De;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation


# static fields
.field public static A07:[B

.field public static A08:[Ljava/lang/String;


# instance fields
.field public final A00:Landroid/media/MediaCodecInfo$CodecCapabilities;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A01:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A02:Ljava/lang/String;

.field public final A03:Z

.field public final A04:Z

.field public final A05:Z

.field public final A06:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/De;->A05()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/De;->A04()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZZ)V
    .locals 2
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/media/MediaCodecInfo$CodecCapabilities;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 28248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28249
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Hx;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/De;->A02:Ljava/lang/String;

    .line 28250
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/De;->A01:Ljava/lang/String;

    .line 28251
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/De;->A00:Landroid/media/MediaCodecInfo$CodecCapabilities;

    .line 28252
    iput-boolean p4, p0, Lcom/facebook/ads/redexgen/X/De;->A04:Z

    .line 28253
    const/4 v1, 0x1

    if-nez p5, :cond_3

    if-eqz p3, :cond_3

    invoke-static {p3}, Lcom/facebook/ads/redexgen/X/De;->A08(Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/De;->A03:Z

    .line 28254
    if-eqz p3, :cond_2

    invoke-static {p3}, Lcom/facebook/ads/redexgen/X/De;->A0C(Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/De;->A06:Z

    .line 28255
    if-nez p6, :cond_0

    if-eqz p3, :cond_1

    invoke-static {p3}, Lcom/facebook/ads/redexgen/X/De;->A0A(Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_2
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/De;->A05:Z

    .line 28256
    return-void

    .line 28257
    :cond_1
    const/4 v1, 0x0

    goto :goto_2

    .line 28258
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 28259
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static A00(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 5

    .line 28260
    const/4 v0, 0x1

    if-gt p2, v0, :cond_0

    sget v1, Lcom/facebook/ads/redexgen/X/Ic;->A02:I

    const/16 v0, 0x1a

    if-lt v1, v0, :cond_1

    if-lez p2, :cond_1

    .line 28261
    :cond_0
    return p2

    .line 28262
    :cond_1
    const/16 v2, 0xe2

    const/16 v1, 0xa

    const/16 v0, 0x1a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/De;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 28263
    const/16 v2, 0x79

    const/16 v1, 0xa

    const/4 v0, 0x1

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/De;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 28264
    const/16 v2, 0x8c

    const/16 v1, 0xc

    const/4 v0, 0x2

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/De;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 28265
    const/16 v2, 0xd3

    const/16 v1, 0xf

    const/16 v0, 0x7a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/De;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 28266
    const/16 v2, 0xff

    const/16 v1, 0xc

    const/16 v0, 0x62

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/De;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 28267
    const/16 v2, 0xec

    const/16 v1, 0xa

    const/16 v0, 0x3b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/De;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 28268
    const/16 v2, 0xf6

    const/16 v1, 0x9

    const/16 v0, 0x66

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/De;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 28269
    const/16 v2, 0xa2

    const/16 v1, 0xa

    const/16 v0, 0x61

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/De;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 28270
    const/16 v2, 0xac

    const/16 v1, 0xf

    const/16 v0, 0x8

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/De;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 28271
    const/16 v2, 0xbb

    const/16 v1, 0xf

    const/16 v0, 0x3c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/De;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 28272
    const/16 v2, 0xca

    const/16 v1, 0x9

    const/16 v0, 0x39

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/De;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 28273
    .end local p0    # null:Ljava/lang/String;
    :cond_2
    return p2

    .line 28274
    :cond_3
    const/16 v2, 0x83

    const/16 v1, 0x9

    const/16 v0, 0x1c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/De;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 28275
    const/4 v4, 0x6

    .line 28276
    .local p0, "assumedMaxChannelCount":I
    .restart local p0    # "assumedMaxChannelCount":I
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x9

    const/16 v1, 0x1d

    const/16 v0, 0x47

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/De;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x6

    const/4 v1, 0x3

    const/16 v0, 0x7e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/De;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    const/4 v1, 0x4

    const/16 v0, 0x40

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/De;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x4f

    const/4 v1, 0x1

    const/16 v0, 0x25

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/De;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x36

    const/16 v1, 0xe

    const/16 v0, 0x71

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/De;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 28277
    return v4

    .line 28278
    .end local p0    # "assumedMaxChannelCount":I
    :cond_4
    const/16 v2, 0x98

    const/16 v1, 0xa

    const/16 v0, 0x65

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/De;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 28279
    const/16 v4, 0x10

    .restart local p0    # "assumedMaxChannelCount":I
    goto :goto_0

    .line 28280
    .end local p0    # "assumedMaxChannelCount":I
    :cond_5
    const/16 v4, 0x1e

    goto :goto_0
.end method

.method public static A01(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/De;
    .locals 7

    .line 28281
    new-instance v0, Lcom/facebook/ads/redexgen/X/De;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/facebook/ads/redexgen/X/De;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZZ)V

    return-object v0
.end method

.method public static A02(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZ)Lcom/facebook/ads/redexgen/X/De;
    .locals 7

    .line 28282
    new-instance v0, Lcom/facebook/ads/redexgen/X/De;

    const/4 v4, 0x0

    move v6, p4

    move v5, p3

    move-object v3, p2

    move-object v2, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/facebook/ads/redexgen/X/De;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZZ)V

    return-object v0
.end method

.method public static A03(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/De;->A07:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x4c

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A04()V
    .locals 1

    const/16 v0, 0x202

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/De;->A07:[B

    return-void

    :array_0
    .array-data 1
        0x2ct
        0x78t
        0x63t
        0x2ct
        0x66t
        0x6at
        0x1et
        0x12t
        0x69t
        0x4at
        0x78t
        0x78t
        0x7et
        0x66t
        0x6et
        0x6ft
        0x46t
        0x6at
        0x73t
        0x48t
        0x63t
        0x6at
        0x65t
        0x65t
        0x6et
        0x67t
        0x4at
        0x6ft
        0x61t
        0x7et
        0x78t
        0x7ft
        0x66t
        0x6et
        0x65t
        0x7ft
        0x31t
        0x2bt
        0x3bt
        0x9t
        0x9t
        0xft
        0x17t
        0x1ft
        0x1et
        0x29t
        0xft
        0xat
        0xat
        0x15t
        0x8t
        0xet
        0x5at
        0x21t
        0x70t
        0x58t
        0x59t
        0x54t
        0x5ct
        0x7et
        0x52t
        0x59t
        0x58t
        0x5et
        0x74t
        0x53t
        0x5bt
        0x52t
        0x37t
        0x16t
        0x2at
        0xct
        0x9t
        0x9t
        0x16t
        0xbt
        0xdt
        0x59t
        0x22t
        0x34t
        0x72t
        0xft
        0x74t
        0x59t
        0x5ct
        0x59t
        0x48t
        0x4ct
        0x51t
        0x4et
        0x5dt
        0x15t
        0x48t
        0x54t
        0x59t
        0x41t
        0x5at
        0x59t
        0x5bt
        0x53t
        0x9t
        0x4t
        0x1t
        0xft
        0x6t
        0x46t
        0xbt
        0x9t
        0x18t
        0x1bt
        0x75t
        0x78t
        0x7dt
        0x73t
        0x7at
        0x3at
        0x62t
        0x57t
        0x75t
        0x64t
        0x67t
        0x2ct
        0x38t
        0x29t
        0x24t
        0x22t
        0x62t
        0x7et
        0x2at
        0x3dt
        0x3dt
        0x31t
        0x25t
        0x34t
        0x39t
        0x3ft
        0x7ft
        0x31t
        0x33t
        0x63t
        0x2ft
        0x3bt
        0x2at
        0x27t
        0x21t
        0x61t
        0x2ft
        0x23t
        0x3ct
        0x63t
        0x39t
        0x2ct
        0x48t
        0x5ct
        0x4dt
        0x40t
        0x46t
        0x6t
        0x4ct
        0x48t
        0x4at
        0x1at
        0x4ct
        0x58t
        0x49t
        0x44t
        0x42t
        0x2t
        0x4bt
        0x41t
        0x4ct
        0x4et
        0x25t
        0x31t
        0x20t
        0x2dt
        0x2bt
        0x6bt
        0x23t
        0x73t
        0x75t
        0x75t
        0x69t
        0x25t
        0x28t
        0x25t
        0x33t
        0x11t
        0x5t
        0x14t
        0x19t
        0x1ft
        0x5ft
        0x17t
        0x47t
        0x41t
        0x41t
        0x5dt
        0x1dt
        0x1ct
        0x11t
        0x7t
        0x14t
        0x0t
        0x11t
        0x1ct
        0x1at
        0x5at
        0x12t
        0x6t
        0x18t
        0x57t
        0x43t
        0x52t
        0x5ft
        0x59t
        0x19t
        0x5bt
        0x46t
        0x2t
        0x57t
        0x1bt
        0x5at
        0x57t
        0x42t
        0x5bt
        0x37t
        0x23t
        0x32t
        0x3ft
        0x39t
        0x79t
        0x3bt
        0x26t
        0x33t
        0x31t
        0x16t
        0x2t
        0x13t
        0x1et
        0x18t
        0x58t
        0x18t
        0x7t
        0x2t
        0x4t
        0x4bt
        0x5ft
        0x4et
        0x43t
        0x45t
        0x5t
        0x58t
        0x4bt
        0x5dt
        0x4ft
        0x5bt
        0x4at
        0x47t
        0x41t
        0x1t
        0x58t
        0x41t
        0x5ct
        0x4ct
        0x47t
        0x5dt
        0x71t
        0x7at
        0x73t
        0x7ct
        0x7ct
        0x77t
        0x7et
        0x51t
        0x7dt
        0x67t
        0x7ct
        0x66t
        0x3ct
        0x73t
        0x51t
        0x73t
        0x62t
        0x61t
        0x10t
        0x1bt
        0x12t
        0x1dt
        0x1dt
        0x16t
        0x1ft
        0x30t
        0x1ct
        0x6t
        0x1dt
        0x7t
        0x5dt
        0x10t
        0x12t
        0x3t
        0x0t
        0x6dt
        0x66t
        0x6ft
        0x60t
        0x60t
        0x6bt
        0x62t
        0x4dt
        0x61t
        0x7bt
        0x60t
        0x7at
        0x20t
        0x7dt
        0x7bt
        0x7et
        0x7et
        0x61t
        0x7ct
        0x7at
        0x22t
        0x2et
        0x36t
        0x3at
        0x31t
        0x30t
        0x36t
        0x7bt
        0x38t
        0x3ct
        0x38t
        0x30t
        0x75t
        0x6t
        0xat
        0x1t
        0x0t
        0x6t
        0x4bt
        0x15t
        0x17t
        0xat
        0x3t
        0xct
        0x9t
        0x0t
        0x29t
        0x0t
        0x13t
        0x0t
        0x9t
        0x49t
        0x45t
        0x23t
        0x31t
        0x3dt
        0x20t
        0x3ct
        0x35t
        0x2t
        0x31t
        0x24t
        0x35t
        0x7et
        0x31t
        0x13t
        0x31t
        0x20t
        0x23t
        0x4dt
        0x5ft
        0x53t
        0x4et
        0x52t
        0x5bt
        0x6ct
        0x5ft
        0x4at
        0x5bt
        0x10t
        0x5dt
        0x5ft
        0x4et
        0x4dt
        0x3ct
        0x2et
        0x22t
        0x3ft
        0x23t
        0x2at
        0x1dt
        0x2et
        0x3bt
        0x2at
        0x61t
        0x3ct
        0x3at
        0x3ft
        0x3ft
        0x20t
        0x3dt
        0x3bt
        0x63t
        0x6ft
        0x19t
        0xft
        0x9t
        0x1ft
        0x18t
        0xft
        0x47t
        0x1at
        0x6t
        0xbt
        0x13t
        0x8t
        0xbt
        0x9t
        0x1t
        0xet
        0x14t
        0x7t
        0x18t
        0x3ct
        0x13t
        0x19t
        0x2ft
        0x1ct
        0x9t
        0x18t
        0x53t
        0x1et
        0x1ct
        0xdt
        0xet
        0x57t
        0x4dt
        0x5et
        0x41t
        0x65t
        0x4at
        0x40t
        0x76t
        0x45t
        0x50t
        0x41t
        0xat
        0x56t
        0x4bt
        0x50t
        0x45t
        0x50t
        0x41t
        0x40t
        0x8t
        0x4t
        0x26t
        0x3ct
        0x2ft
        0x30t
        0x14t
        0x3bt
        0x31t
        0x7t
        0x34t
        0x21t
        0x30t
        0x7bt
        0x26t
        0x20t
        0x25t
        0x25t
        0x3at
        0x27t
        0x21t
        0x79t
        0x75t
        0x21t
        0x3bt
        0x28t
        0x37t
        0x13t
        0x3ct
        0x36t
        0x0t
        0x33t
        0x26t
        0x37t
        0x7ct
        0x24t
        0x11t
        0x33t
        0x22t
        0x21t
        0x3bt
        0x3at
        0x21t
        0x21t
        0x2at
        0x23t
        0x2at
        0x2bt
        0x62t
        0x3ft
        0x23t
        0x2et
        0x36t
        0x2dt
        0x2et
        0x2ct
        0x24t
        0x1et
    .end array-data
.end method

.method public static A05()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "ZpUXI3ud7dcsZwTNsHIm92UjsiH1Miz7"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "aD4KKgg65ZeuyepDjE43AprZxfnsWFxr"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "3c"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "TB7YAOSE3jbc2Q39xbi6uJdRxfVD35Jb"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "C1yrqqQX3OBU3uyiKGbHubCDgI"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "nePU3g0H"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "1sUUrYB5yYLTHcIKpt53xJhANJfU0rSB"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "So"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/De;->A08:[Ljava/lang/String;

    return-void
.end method

.method private A06(Ljava/lang/String;)V
    .locals 5

    .line 28283
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x26

    const/16 v1, 0x10

    const/16 v0, 0x36

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/De;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x50

    const/4 v1, 0x3

    const/16 v0, 0x63

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/De;->A03(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/De;->A02:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    const/4 v1, 0x2

    const/4 v0, 0x6

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/De;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/De;->A01:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Ic;->A04:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x4f

    const/4 v1, 0x1

    const/16 v0, 0x25

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/De;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28284
    return-void
.end method

.method private A07(Ljava/lang/String;)V
    .locals 5

    .line 28285
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x44

    const/16 v1, 0xb

    const/16 v0, 0x35

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/De;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x50

    const/4 v1, 0x3

    const/16 v0, 0x63

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/De;->A03(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/De;->A02:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    const/4 v1, 0x2

    const/4 v0, 0x6

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/De;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/De;->A01:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Ic;->A04:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x4f

    const/4 v1, 0x1

    const/16 v0, 0x25

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/De;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28286
    return-void
.end method

.method public static A08(Landroid/media/MediaCodecInfo$CodecCapabilities;)Z
    .locals 2

    .line 28287
    sget v1, Lcom/facebook/ads/redexgen/X/Ic;->A02:I

    const/16 v0, 0x13

    if-lt v1, v0, :cond_0

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/De;->A09(Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static A09(Landroid/media/MediaCodecInfo$CodecCapabilities;)Z
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .line 28288
    const/16 v2, 0x53

    const/16 v1, 0x11

    const/16 v0, 0x74

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/De;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static A0A(Landroid/media/MediaCodecInfo$CodecCapabilities;)Z
    .locals 2

    .line 28289
    sget v1, Lcom/facebook/ads/redexgen/X/Ic;->A02:I

    const/16 v0, 0x15

    if-lt v1, v0, :cond_0

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/De;->A0B(Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static A0B(Landroid/media/MediaCodecInfo$CodecCapabilities;)Z
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 28290
    const/16 v2, 0x196

    const/16 v1, 0xf

    const/16 v0, 0x26

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/De;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static A0C(Landroid/media/MediaCodecInfo$CodecCapabilities;)Z
    .locals 2

    .line 28291
    sget v1, Lcom/facebook/ads/redexgen/X/Ic;->A02:I

    const/16 v0, 0x15

    if-lt v1, v0, :cond_0

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/De;->A0D(Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static A0D(Landroid/media/MediaCodecInfo$CodecCapabilities;)Z
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 28292
    const/16 v2, 0x1f0

    const/16 v1, 0x11

    const/4 v0, 0x3

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/De;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static A0E(Landroid/media/MediaCodecInfo$VideoCapabilities;IID)Z
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 28293
    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    cmpl-double v0, p3, v1

    if-eqz v0, :cond_0

    const-wide/16 v1, 0x0

    cmpg-double v0, p3, v1

    if-gtz v0, :cond_1

    .line 28294
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/media/MediaCodecInfo$VideoCapabilities;->isSizeSupported(II)Z

    move-result v0

    .line 28295
    :goto_0
    return v0

    .line 28296
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/media/MediaCodecInfo$VideoCapabilities;->areSizeAndRateSupported(IID)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public final A0F(II)Landroid/graphics/Point;
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 28297
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/De;->A00:Landroid/media/MediaCodecInfo$CodecCapabilities;

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 28298
    const/16 v2, 0x64

    const/16 v1, 0xa

    const/16 v0, 0x24

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/De;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/De;->A07(Ljava/lang/String;)V

    .line 28299
    return-object v3

    .line 28300
    :cond_0
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object v0

    .line 28301
    .local p0, "videoCapabilities":Landroid/media/MediaCodecInfo$VideoCapabilities;
    if-nez v0, :cond_1

    .line 28302
    const/16 v2, 0x6e

    const/16 v1, 0xb

    const/16 v0, 0x58

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/De;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/De;->A07(Ljava/lang/String;)V

    .line 28303
    return-object v3

    .line 28304
    :cond_1
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getWidthAlignment()I

    move-result v1

    .line 28305
    .local p1, "widthAlignment":I
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getHeightAlignment()I

    move-result v0

    .line 28306
    .local p2, "heightAlignment":I
    invoke-static {p1, v1}, Lcom/facebook/ads/redexgen/X/Ic;->A04(II)I

    move-result v2

    mul-int/2addr v2, v1

    .line 28307
    invoke-static {p2, v0}, Lcom/facebook/ads/redexgen/X/Ic;->A04(II)I

    move-result v1

    mul-int/2addr v1, v0

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v2, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 28308
    return-object v0
.end method

.method public final A0G(I)Z
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 28309
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/De;->A00:Landroid/media/MediaCodecInfo$CodecCapabilities;

    const/4 v4, 0x0

    if-nez v0, :cond_0

    .line 28310
    const/16 v2, 0x11d

    const/16 v1, 0x11

    const/16 v0, 0x3f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/De;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/De;->A07(Ljava/lang/String;)V

    .line 28311
    return v4

    .line 28312
    :cond_0
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getAudioCapabilities()Landroid/media/MediaCodecInfo$AudioCapabilities;

    move-result-object v0

    .line 28313
    .local p0, "audioCapabilities":Landroid/media/MediaCodecInfo$AudioCapabilities;
    if-nez v0, :cond_2

    .line 28314
    const/16 v2, 0x10b

    const/16 v1, 0x12

    const/16 v0, 0x5e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/De;->A03(III)Ljava/lang/String;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/De;->A08:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v2, v2, v0

    const/16 v0, 0x19

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/De;->A08:[Ljava/lang/String;

    const-string v1, "UX"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "YP"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/De;->A07(Ljava/lang/String;)V

    .line 28315
    return v4

    .line 28316
    :cond_2
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/De;->A02:Ljava/lang/String;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/De;->A01:Ljava/lang/String;

    .line 28317
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo$AudioCapabilities;->getMaxInputChannelCount()I

    move-result v0

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/De;->A00(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 28318
    .local v0, "maxInputChannelCount":I
    if-ge v0, p1, :cond_3

    .line 28319
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x12e

    const/16 v1, 0x16

    const/16 v0, 0x42

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/De;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/De;->A07(Ljava/lang/String;)V

    .line 28320
    return v4

    .line 28321
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public final A0H(I)Z
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 28322
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/De;->A00:Landroid/media/MediaCodecInfo$CodecCapabilities;

    const/4 v4, 0x0

    if-nez v0, :cond_0

    .line 28323
    const/16 v2, 0x173

    const/16 v1, 0xf

    const/16 v0, 0x72

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/De;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/De;->A07(Ljava/lang/String;)V

    .line 28324
    return v4

    .line 28325
    :cond_0
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getAudioCapabilities()Landroid/media/MediaCodecInfo$AudioCapabilities;

    move-result-object v0

    .line 28326
    .local p0, "audioCapabilities":Landroid/media/MediaCodecInfo$AudioCapabilities;
    if-nez v0, :cond_1

    .line 28327
    const/16 v2, 0x163

    const/16 v1, 0x10

    const/16 v0, 0x1c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/De;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/De;->A07(Ljava/lang/String;)V

    .line 28328
    return v4

    .line 28329
    :cond_1
    invoke-virtual {v0, p1}, Landroid/media/MediaCodecInfo$AudioCapabilities;->isSampleRateSupported(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 28330
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x182

    const/16 v1, 0x14

    const/4 v0, 0x3

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/De;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/De;->A07(Ljava/lang/String;)V

    .line 28331
    return v4

    .line 28332
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public final A0I(IID)Z
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 28333
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/De;->A00:Landroid/media/MediaCodecInfo$CodecCapabilities;

    const/4 v5, 0x0

    if-nez v0, :cond_0

    .line 28334
    const/16 v2, 0x1a5

    const/16 v1, 0x10

    const/16 v0, 0x31

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/De;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/De;->A07(Ljava/lang/String;)V

    .line 28335
    return v5

    .line 28336
    :cond_0
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object v3

    .line 28337
    .local p0, "videoCapabilities":Landroid/media/MediaCodecInfo$VideoCapabilities;
    if-nez v3, :cond_1

    .line 28338
    const/16 v2, 0x1df

    const/16 v1, 0x11

    const/16 v0, 0x1e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/De;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/De;->A07(Ljava/lang/String;)V

    .line 28339
    return v5

    .line 28340
    :cond_1
    invoke-static {v3, p1, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/De;->A0E(Landroid/media/MediaCodecInfo$VideoCapabilities;IID)Z

    move-result v0

    if-nez v0, :cond_4

    .line 28341
    const/16 v2, 0x201

    const/4 v1, 0x1

    const/16 v0, 0x2a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/De;->A03(III)Ljava/lang/String;

    move-result-object v4

    if-ge p1, p2, :cond_2

    .line 28342
    invoke-static {v3, p2, p1, p3, p4}, Lcom/facebook/ads/redexgen/X/De;->A0E(Landroid/media/MediaCodecInfo$VideoCapabilities;IID)Z

    move-result v0

    if-nez v0, :cond_3

    .line 28343
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x1ca

    const/16 v1, 0x15

    const/16 v0, 0x19

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/De;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/De;->A07(Ljava/lang/String;)V

    .line 28344
    return v5

    .line 28345
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x1b5

    const/16 v1, 0x15

    const/16 v0, 0x68

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/De;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/De;->A06(Ljava/lang/String;)V

    .line 28346
    :cond_4
    const/4 v0, 0x1

    return v0
.end method

.method public final A0J(Ljava/lang/String;)Z
    .locals 11

    .line 28347
    const/4 v10, 0x1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/De;->A01:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 28348
    .end local p1    # null:Ljava/lang/String;
    .end local v10
    :cond_0
    return v10

    .line 28349
    :cond_1
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/IF;->A05(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 28350
    .local p1, "codecMimeType":Ljava/lang/String;
    if-nez v5, :cond_2

    .line 28351
    return v10

    .line 28352
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/De;->A01:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v2, 0x4

    const/4 v1, 0x2

    const/4 v0, 0x6

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/De;->A03(III)Ljava/lang/String;

    move-result-object v4

    const/4 v9, 0x0

    if-nez v3, :cond_3

    .line 28353
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x144

    const/16 v1, 0xb

    const/16 v0, 0x19

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/De;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/De;->A07(Ljava/lang/String;)V

    .line 28354
    return v9

    .line 28355
    :cond_3
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Dp;->A02(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v8

    .line 28356
    .local v10, "codecProfileAndLevel":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-nez v8, :cond_4

    .line 28357
    return v10

    .line 28358
    :cond_4
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/De;->A0K()[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    move-result-object v7

    array-length v6, v7

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v6, :cond_6

    aget-object v2, v7, v3

    .line 28359
    .local v1, "capabilities":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    iget v1, v2, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    iget-object v0, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v1, v0, :cond_5

    iget v1, v2, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    iget-object v0, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    .line 28360
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lt v1, v0, :cond_5

    .line 28361
    return v10

    .line 28362
    .end local v1    # "capabilities":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 28363
    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x14f

    const/16 v1, 0x14

    const/16 v0, 0x29

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/De;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/De;->A07(Ljava/lang/String;)V

    .line 28364
    return v9
.end method

.method public final A0K()[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .locals 4

    .line 28365
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/De;->A00:Landroid/media/MediaCodecInfo$CodecCapabilities;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    if-nez v0, :cond_2

    .line 28366
    :cond_0
    const/4 v3, 0x0

    sget-object v2, Lcom/facebook/ads/redexgen/X/De;->A08:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v2, v2, v0

    const/16 v0, 0x19

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/De;->A08:[Ljava/lang/String;

    const-string v1, "lJLweTP5"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "vw7miUgHIhbu1jbESlXufd5z9M"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    new-array v0, v3, [Landroid/media/MediaCodecInfo$CodecProfileLevel;

    goto :goto_0

    .line 28367
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/De;->A00:Landroid/media/MediaCodecInfo$CodecCapabilities;

    iget-object v0, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    .line 28368
    :goto_0
    return-object v0
.end method
