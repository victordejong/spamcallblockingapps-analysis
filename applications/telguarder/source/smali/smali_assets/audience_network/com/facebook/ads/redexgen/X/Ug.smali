.class public final Lcom/facebook/ads/redexgen/X/Ug;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Do;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Dp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MediaCodecListCompatV21"
.end annotation


# static fields
.field public static A02:[B


# instance fields
.field public A00:[Landroid/media/MediaCodecInfo;

.field public final A01:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Ug;->A02()V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 57010
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57011
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Ug;->A01:I

    .line 57012
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ug;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x49

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A01()V
    .locals 2

    .line 57013
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ug;->A00:[Landroid/media/MediaCodecInfo;

    if-nez v0, :cond_0

    .line 57014
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Ug;->A01:I

    new-instance v0, Landroid/media/MediaCodecList;

    invoke-direct {v0, v1}, Landroid/media/MediaCodecList;-><init>(I)V

    invoke-virtual {v0}, Landroid/media/MediaCodecList;->getCodecInfos()[Landroid/media/MediaCodecInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ug;->A00:[Landroid/media/MediaCodecInfo;

    .line 57015
    :cond_0
    return-void
.end method

.method public static A02()V
    .locals 1

    const/16 v0, 0xf

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Ug;->A02:[B

    return-void

    :array_0
    .array-data 1
        0x9t
        -0x5t
        -0x7t
        0xbt
        0x8t
        -0x5t
        -0x3dt
        0x6t
        0x2t
        -0x9t
        0xft
        -0x8t
        -0x9t
        -0x7t
        0x1t
    .end array-data
.end method


# virtual methods
.method public final A5y()I
    .locals 1

    .line 57016
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ug;->A01()V

    .line 57017
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ug;->A00:[Landroid/media/MediaCodecInfo;

    array-length v0, v0

    return v0
.end method

.method public final A5z(I)Landroid/media/MediaCodecInfo;
    .locals 1

    .line 57018
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ug;->A01()V

    .line 57019
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ug;->A00:[Landroid/media/MediaCodecInfo;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public final A8E(Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z
    .locals 3

    .line 57020
    const/4 v2, 0x0

    const/16 v1, 0xf

    const/16 v0, 0x4d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ug;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final ADV()Z
    .locals 1

    .line 57021
    const/4 v0, 0x1

    return v0
.end method
