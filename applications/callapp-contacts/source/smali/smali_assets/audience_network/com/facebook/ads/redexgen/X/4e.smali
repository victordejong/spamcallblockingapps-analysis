.class public final Lcom/facebook/ads/redexgen/X/4e;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/4h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BoundFlags"
.end annotation


# static fields
.field public static A05:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/4e;->A01()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 11985
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11986
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4e;->A00:I

    return-void
.end method

.method private final A00(II)I
    .locals 1

    .line 11987
    if-le p1, p2, :cond_0

    .line 11988
    const/4 v0, 0x1

    return v0

    .line 11989
    :cond_0
    if-ne p1, p2, :cond_1

    .line 11990
    const/4 v0, 0x2

    return v0

    .line 11991
    :cond_1
    const/4 v0, 0x4

    return v0
.end method

.method public static A01()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "IS69BmVCyt3r7rCL06vW"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "i2lfi3JYyaWanuhNA9EoVixSZwQkBGPJ"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "IP2snh2DbdtJP84nmUNUnat"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "M7qM02aMAAjP0VsgCoHzcI67snq6Xoz6"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "g2Y2aWNGMjfm3AzRUQfTQ"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "z59QBS9AE5GFtdBn17xV89BNaNN5ntVX"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "icRlwMXc031dCVyQa9g0z"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "JdVLDxEugZkBcdzJI35N90WET0E7DRJI"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/4e;->A05:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A02()V
    .locals 1

    .line 11992
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4e;->A00:I

    .line 11993
    return-void
.end method

.method public final A03(I)V
    .locals 1

    .line 11994
    iget v0, p0, Lcom/facebook/ads/redexgen/X/4e;->A00:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4e;->A00:I

    .line 11995
    return-void
.end method

.method public final A04(IIII)V
    .locals 0

    .line 11996
    iput p1, p0, Lcom/facebook/ads/redexgen/X/4e;->A04:I

    .line 11997
    iput p2, p0, Lcom/facebook/ads/redexgen/X/4e;->A03:I

    .line 11998
    iput p3, p0, Lcom/facebook/ads/redexgen/X/4e;->A02:I

    .line 11999
    iput p4, p0, Lcom/facebook/ads/redexgen/X/4e;->A01:I

    .line 12000
    return-void
.end method

.method public final A05()Z
    .locals 6

    .line 12001
    iget v2, p0, Lcom/facebook/ads/redexgen/X/4e;->A00:I

    and-int/lit8 v0, v2, 0x7

    const/4 v5, 0x0

    if-eqz v0, :cond_0

    .line 12002
    iget v1, p0, Lcom/facebook/ads/redexgen/X/4e;->A02:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/4e;->A04:I

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/4e;->A00(II)I

    move-result v0

    shl-int/2addr v0, v5

    and-int/2addr v2, v0

    if-nez v2, :cond_0

    .line 12003
    return v5

    .line 12004
    :cond_0
    iget v3, p0, Lcom/facebook/ads/redexgen/X/4e;->A00:I

    and-int/lit8 v4, v3, 0x70

    sget-object v2, Lcom/facebook/ads/redexgen/X/4e;->A05:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v2, v2, v0

    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/4e;->A05:[Ljava/lang/String;

    const-string v1, "xw0gZhFc6GA1WyK2bJob"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-eqz v4, :cond_2

    .line 12005
    iget v1, p0, Lcom/facebook/ads/redexgen/X/4e;->A02:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/4e;->A03:I

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/4e;->A00(II)I

    move-result v0

    shl-int/lit8 v0, v0, 0x4

    and-int/2addr v3, v0

    if-nez v3, :cond_2

    .line 12006
    return v5

    .line 12007
    :cond_2
    iget v2, p0, Lcom/facebook/ads/redexgen/X/4e;->A00:I

    and-int/lit16 v0, v2, 0x700

    if-eqz v0, :cond_3

    .line 12008
    iget v1, p0, Lcom/facebook/ads/redexgen/X/4e;->A01:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/4e;->A04:I

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/4e;->A00(II)I

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    and-int/2addr v2, v0

    if-nez v2, :cond_3

    .line 12009
    return v5

    .line 12010
    :cond_3
    iget v2, p0, Lcom/facebook/ads/redexgen/X/4e;->A00:I

    and-int/lit16 v0, v2, 0x7000

    if-eqz v0, :cond_4

    .line 12011
    iget v1, p0, Lcom/facebook/ads/redexgen/X/4e;->A01:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/4e;->A03:I

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/4e;->A00(II)I

    move-result v0

    shl-int/lit8 v0, v0, 0xc

    and-int/2addr v2, v0

    if-nez v2, :cond_4

    .line 12012
    return v5

    .line 12013
    :cond_4
    const/4 v0, 0x1

    return v0
.end method
