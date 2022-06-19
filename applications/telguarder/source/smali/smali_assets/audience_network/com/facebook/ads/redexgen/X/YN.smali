.class public final Lcom/facebook/ads/redexgen/X/YN;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/6e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/YM;->A0H()Lcom/facebook/ads/redexgen/X/6e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A01:[B

.field public static A02:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/YM;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/YN;->A02()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/YN;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/YM;)V
    .locals 0

    .line 65812
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/YN;->A00:Lcom/facebook/ads/redexgen/X/YM;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/YN;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const/4 p0, 0x0

    :goto_0
    array-length p1, v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/YN;->A02:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/YN;->A02:[Ljava/lang/String;

    const-string v1, "XYBmJRO79x5dVfRohVG1ntNloHVhg7uh"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "mSFtMpmT65Nl7ZnNeJvxRhpwK7yo6x3L"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-ge p0, p1, :cond_1

    aget-byte v0, v3, p0

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x6f

    int-to-byte v0, v0

    aput-byte v0, v3, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .locals 1

    const/16 v0, 0x11

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/YN;->A01:[B

    return-void

    :array_0
    .array-data 1
        0x4dt
        0x5dt
        0x4ct
        0x5bt
        0x5bt
        0x50t
        0x61t
        0x5ct
        0x4ct
        0x57t
        0x59t
        0x56t
        0x4at
        0x50t
        0x5bt
        0x4dt
        0x4dt
    .end array-data
.end method

.method public static A02()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "pS4rZoUlHC3yal1giSoBdrJObREsymbO"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "j94CWvgfLhWvYOU5sJ35r13ZP"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "ykPmmRmFbdzOd3019AeKIXYIiVRmS7Jp"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "tfsRSNb4L6ldxP7mpZOEtEC4qVvjs2vN"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "FP9GpBDpBfuVOZy441mAjHVcI"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "Kxm0RoadEpXvfkRD7RaTLDXfQJwyIHIx"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "H4YsDQEQEx77QLWUMxrvleaolJgCAgJE"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "jc4tqQlcfiJAU2qA4G1tXPF1OOcl91Gk"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/YN;->A02:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A5D()Lcom/facebook/ads/redexgen/X/6t;
    .locals 5

    .line 65813
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/YN;->A00:Lcom/facebook/ads/redexgen/X/YM;

    iget-object v3, v4, Lcom/facebook/ads/redexgen/X/YM;->A00:Landroid/content/ContentResolver;

    .line 65814
    const/4 v2, 0x0

    const/16 v1, 0x11

    const/16 v0, 0x51

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/YN;->A00(III)Ljava/lang/String;

    move-result-object v1

    const/4 v0, -0x1

    invoke-static {v3, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    int-to-float v1, v0

    const/high16 v0, 0x437f0000    # 255.0f

    div-float/2addr v1, v0

    .line 65815
    invoke-virtual {v4, v1}, Lcom/facebook/ads/redexgen/X/6V;->A04(F)Lcom/facebook/ads/redexgen/X/6t;

    move-result-object v0

    return-object v0
.end method
