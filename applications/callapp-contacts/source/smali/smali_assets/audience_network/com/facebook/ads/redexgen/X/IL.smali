.class public final Lcom/facebook/ads/redexgen/X/IL;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A04:[Ljava/lang/String;


# instance fields
.field public A00:[B

.field public A01:I

.field public A02:I

.field public A03:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/IL;->A01()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 38027
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .line 38028
    array-length v0, p1

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/IL;-><init>([BI)V

    .line 38029
    return-void
.end method

.method public constructor <init>([BI)V
    .locals 0

    .line 38030
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38031
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/IL;->A00:[B

    .line 38032
    iput p2, p0, Lcom/facebook/ads/redexgen/X/IL;->A02:I

    .line 38033
    return-void
.end method

.method private A00()V
    .locals 2

    .line 38034
    iget v1, p0, Lcom/facebook/ads/redexgen/X/IL;->A03:I

    if-ltz v1, :cond_1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/IL;->A02:I

    if-lt v1, v0, :cond_0

    if-ne v1, v0, :cond_1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/IL;->A01:I

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A04(Z)V

    .line 38035
    return-void

    .line 38036
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static A01()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "RHSjJGYddlOPzslamo8j"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "no2wrOKISs4wdINa"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "E7xZIMZbElFQthX5cbe1zXMBiqq9Oct2"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "NQ4djAykaRRiHV2nkQWoiztobM3LGBfO"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "EDikhWaymQH2jtWvDyx1vViO84FhvN"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "TllFBKS94wZfNNX6FcczOhdwmX6snrOZ"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "CS63JXje"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "QpZzHKHty24GTaxrVVV4B8DIrBZ4Gw8P"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/IL;->A04:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A02()I
    .locals 2

    .line 38037
    iget v1, p0, Lcom/facebook/ads/redexgen/X/IL;->A02:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/IL;->A03:I

    sub-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x8

    iget v0, p0, Lcom/facebook/ads/redexgen/X/IL;->A01:I

    sub-int/2addr v1, v0

    return v1
.end method

.method public final A03()I
    .locals 1

    .line 38038
    iget v0, p0, Lcom/facebook/ads/redexgen/X/IL;->A01:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A04(Z)V

    .line 38039
    iget v0, p0, Lcom/facebook/ads/redexgen/X/IL;->A03:I

    return v0

    .line 38040
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A04()I
    .locals 2

    .line 38041
    iget v0, p0, Lcom/facebook/ads/redexgen/X/IL;->A03:I

    mul-int/lit8 v1, v0, 0x8

    iget v0, p0, Lcom/facebook/ads/redexgen/X/IL;->A01:I

    add-int/2addr v1, v0

    return v1
.end method

.method public final A05(I)I
    .locals 7

    .line 38042
    const/4 v3, 0x0

    if-nez p1, :cond_0

    .line 38043
    return v3

    .line 38044
    :cond_0
    const/4 v6, 0x0

    .line 38045
    .local p1, "returnValue":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/IL;->A01:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IL;->A01:I

    .line 38046
    :goto_0
    iget v5, p0, Lcom/facebook/ads/redexgen/X/IL;->A01:I

    const/16 v4, 0x8

    if-le v5, v4, :cond_1

    .line 38047
    add-int/lit8 v0, v5, -0x8

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IL;->A01:I

    .line 38048
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/IL;->A00:[B

    iget v1, p0, Lcom/facebook/ads/redexgen/X/IL;->A03:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IL;->A03:I

    aget-byte v0, v2, v1

    and-int/lit16 v1, v0, 0xff

    iget v0, p0, Lcom/facebook/ads/redexgen/X/IL;->A01:I

    shl-int/2addr v1, v0

    or-int/2addr v6, v1

    goto :goto_0

    .line 38049
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/IL;->A00:[B

    iget v2, p0, Lcom/facebook/ads/redexgen/X/IL;->A03:I

    aget-byte v0, v0, v2

    and-int/lit16 v1, v0, 0xff

    rsub-int/lit8 v0, v5, 0x8

    shr-int/2addr v1, v0

    or-int/2addr v6, v1

    .line 38050
    const/4 v1, -0x1

    rsub-int/lit8 v0, p1, 0x20

    ushr-int/2addr v1, v0

    and-int/2addr v6, v1

    .line 38051
    if-ne v5, v4, :cond_2

    .line 38052
    iput v3, p0, Lcom/facebook/ads/redexgen/X/IL;->A01:I

    .line 38053
    add-int/lit8 v0, v2, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IL;->A03:I

    .line 38054
    :cond_2
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/IL;->A00()V

    .line 38055
    return v6
.end method

.method public final A06()V
    .locals 1

    .line 38056
    iget v0, p0, Lcom/facebook/ads/redexgen/X/IL;->A01:I

    if-nez v0, :cond_0

    .line 38057
    return-void

    .line 38058
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IL;->A01:I

    .line 38059
    iget v0, p0, Lcom/facebook/ads/redexgen/X/IL;->A03:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IL;->A03:I

    .line 38060
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/IL;->A00()V

    .line 38061
    return-void
.end method

.method public final A07()V
    .locals 2

    .line 38062
    iget v0, p0, Lcom/facebook/ads/redexgen/X/IL;->A01:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/facebook/ads/redexgen/X/IL;->A01:I

    const/16 v0, 0x8

    if-ne v1, v0, :cond_0

    .line 38063
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IL;->A01:I

    .line 38064
    iget v0, p0, Lcom/facebook/ads/redexgen/X/IL;->A03:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IL;->A03:I

    .line 38065
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/IL;->A00()V

    .line 38066
    return-void
.end method

.method public final A08(I)V
    .locals 1

    .line 38067
    div-int/lit8 v0, p1, 0x8

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IL;->A03:I

    .line 38068
    iget v0, p0, Lcom/facebook/ads/redexgen/X/IL;->A03:I

    mul-int/lit8 v0, v0, 0x8

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/facebook/ads/redexgen/X/IL;->A01:I

    .line 38069
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/IL;->A00()V

    .line 38070
    return-void
.end method

.method public final A09(I)V
    .locals 3

    .line 38071
    div-int/lit8 v2, p1, 0x8

    .line 38072
    .local p0, "numBytes":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/IL;->A03:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IL;->A03:I

    .line 38073
    iget v1, p0, Lcom/facebook/ads/redexgen/X/IL;->A01:I

    mul-int/lit8 v0, v2, 0x8

    sub-int/2addr p1, v0

    add-int/2addr v1, p1

    iput v1, p0, Lcom/facebook/ads/redexgen/X/IL;->A01:I

    .line 38074
    iget v1, p0, Lcom/facebook/ads/redexgen/X/IL;->A01:I

    const/4 v0, 0x7

    if-le v1, v0, :cond_0

    .line 38075
    iget v0, p0, Lcom/facebook/ads/redexgen/X/IL;->A03:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IL;->A03:I

    .line 38076
    add-int/lit8 v0, v1, -0x8

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IL;->A01:I

    .line 38077
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/IL;->A00()V

    .line 38078
    return-void
.end method

.method public final A0A(I)V
    .locals 1

    .line 38079
    iget v0, p0, Lcom/facebook/ads/redexgen/X/IL;->A01:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A04(Z)V

    .line 38080
    iget v0, p0, Lcom/facebook/ads/redexgen/X/IL;->A03:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IL;->A03:I

    .line 38081
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/IL;->A00()V

    .line 38082
    return-void

    .line 38083
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0B(II)V
    .locals 8

    .line 38084
    .local p0, "remainingBitsToRead":I
    const/4 v7, 0x1

    const/16 v0, 0x20

    if-ge p2, v0, :cond_0

    .line 38085
    shl-int v0, v7, p2

    sub-int/2addr v0, v7

    and-int/2addr p1, v0

    .line 38086
    :cond_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/IL;->A01:I

    const/16 v5, 0x8

    rsub-int/lit8 v0, v0, 0x8

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 38087
    .local p2, "firstByteReadSize":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/IL;->A01:I

    rsub-int/lit8 v3, v0, 0x8

    sub-int/2addr v3, v6

    .line 38088
    .local v0, "firstByteRightPaddingSize":I
    const v1, 0xff00

    shr-int/2addr v1, v0

    shl-int v0, v7, v3

    sub-int/2addr v0, v7

    or-int/2addr v1, v0

    .line 38089
    .local v7, "firstByteBitmask":I
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/IL;->A00:[B

    iget v4, p0, Lcom/facebook/ads/redexgen/X/IL;->A03:I

    aget-byte v0, v2, v4

    and-int/2addr v0, v1

    int-to-byte v0, v0

    aput-byte v0, v2, v4

    .line 38090
    sub-int v0, p2, v6

    ushr-int v1, p1, v0

    .line 38091
    .local v0, "firstByteInputBits":I
    aget-byte v0, v2, v4

    shl-int/2addr v1, v3

    or-int/2addr v0, v1

    int-to-byte v0, v0

    aput-byte v0, v2, v4

    .line 38092
    sub-int v6, p2, v6

    .line 38093
    add-int/2addr v4, v7

    .line 38094
    .local v0, "currentByteIndex":I
    :goto_0
    if-le v6, v5, :cond_1

    .line 38095
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/IL;->A00:[B

    add-int/lit8 v1, v4, 0x1

    .end local v0    # "currentByteIndex":I
    .local v5, "currentByteIndex":I
    add-int/lit8 v0, v6, -0x8

    ushr-int v0, p1, v0

    int-to-byte v0, v0

    aput-byte v0, v2, v4

    .line 38096
    add-int/lit8 v6, v6, -0x8

    move v4, v1

    goto :goto_0

    .line 38097
    .end local v5    # "currentByteIndex":I
    .restart local v0    # "currentByteIndex":I
    :cond_1
    sub-int/2addr v5, v6

    .line 38098
    .local p2, "lastByteRightPaddingSize":I
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/IL;->A00:[B

    aget-byte v1, v3, v4

    shl-int v0, v7, v5

    sub-int/2addr v0, v7

    and-int/2addr v1, v0

    int-to-byte v0, v1

    aput-byte v0, v3, v4

    .line 38099
    shl-int v0, v7, v6

    sub-int/2addr v0, v7

    and-int/2addr p1, v0

    .line 38100
    .local p1, "lastByteInput":I
    aget-byte v0, v3, v4

    shl-int/2addr p1, v5

    or-int/2addr v0, p1

    int-to-byte v5, v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/IL;->A04:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/16 v0, 0x14

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x69

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/IL;->A04:[Ljava/lang/String;

    const-string v1, "HDn8cIfTWSkx257fNKtZvpUDi4vYZW"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "YQkUGCO4"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    aput-byte v5, v3, v4

    .line 38101
    invoke-virtual {p0, p2}, Lcom/facebook/ads/redexgen/X/IL;->A09(I)V

    .line 38102
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/IL;->A00()V

    .line 38103
    return-void
.end method

.method public final A0C([B)V
    .locals 1

    .line 38104
    array-length v0, p1

    invoke-virtual {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/IL;->A0D([BI)V

    .line 38105
    return-void
.end method

.method public final A0D([BI)V
    .locals 1

    .line 38106
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/IL;->A00:[B

    .line 38107
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IL;->A03:I

    .line 38108
    iput v0, p0, Lcom/facebook/ads/redexgen/X/IL;->A01:I

    .line 38109
    iput p2, p0, Lcom/facebook/ads/redexgen/X/IL;->A02:I

    .line 38110
    return-void
.end method

.method public final A0E([BII)V
    .locals 9

    .line 38111
    shr-int/lit8 v5, p3, 0x3

    add-int/2addr v5, p2

    .line 38112
    .local p0, "to":I
    .local p1, "i":I
    :goto_0
    const/16 v6, 0xff

    const/16 v4, 0x8

    if-ge p2, v5, :cond_0

    .line 38113
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/IL;->A00:[B

    iget v1, p0, Lcom/facebook/ads/redexgen/X/IL;->A03:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IL;->A03:I

    aget-byte v0, v3, v1

    iget v2, p0, Lcom/facebook/ads/redexgen/X/IL;->A01:I

    shl-int/2addr v0, v2

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 38114
    aget-byte v1, p1, p2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/IL;->A03:I

    aget-byte v0, v3, v0

    and-int/2addr v6, v0

    sub-int/2addr v4, v2

    shr-int/2addr v6, v4

    or-int/2addr v6, v1

    int-to-byte v0, v6

    aput-byte v0, p1, p2

    .line 38115
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 38116
    .end local p1    # "i":I
    :cond_0
    and-int/lit8 v8, p3, 0x7

    .line 38117
    .local p1, "bitsLeft":I
    if-nez v8, :cond_1

    .line 38118
    return-void

    .line 38119
    :cond_1
    aget-byte v1, p1, v5

    shr-int v0, v6, v8

    and-int/2addr v1, v0

    int-to-byte v0, v1

    aput-byte v0, p1, v5

    .line 38120
    iget v7, p0, Lcom/facebook/ads/redexgen/X/IL;->A01:I

    add-int v0, v7, v8

    if-le v0, v4, :cond_2

    .line 38121
    aget-byte v3, p1, v5

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/IL;->A00:[B

    iget v1, p0, Lcom/facebook/ads/redexgen/X/IL;->A03:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IL;->A03:I

    aget-byte v0, v2, v1

    and-int/2addr v0, v6

    shl-int/2addr v0, v7

    or-int/2addr v3, v0

    int-to-byte v0, v3

    aput-byte v0, p1, v5

    .line 38122
    sub-int/2addr v7, v4

    iput v7, p0, Lcom/facebook/ads/redexgen/X/IL;->A01:I

    .line 38123
    :cond_2
    iget v0, p0, Lcom/facebook/ads/redexgen/X/IL;->A01:I

    add-int/2addr v0, v8

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IL;->A01:I

    .line 38124
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/IL;->A00:[B

    iget v3, p0, Lcom/facebook/ads/redexgen/X/IL;->A03:I

    aget-byte v0, v0, v3

    and-int/2addr v6, v0

    iget v2, p0, Lcom/facebook/ads/redexgen/X/IL;->A01:I

    rsub-int/lit8 v0, v2, 0x8

    shr-int/2addr v6, v0

    .line 38125
    .local p2, "lastDataByteTrailingBits":I
    aget-byte v1, p1, v5

    rsub-int/lit8 v0, v8, 0x8

    shl-int/2addr v6, v0

    int-to-byte v0, v6

    or-int/2addr v1, v0

    int-to-byte v0, v1

    aput-byte v0, p1, v5

    .line 38126
    if-ne v2, v4, :cond_3

    .line 38127
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IL;->A01:I

    .line 38128
    add-int/lit8 v0, v3, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IL;->A03:I

    .line 38129
    :cond_3
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/IL;->A00()V

    .line 38130
    return-void
.end method

.method public final A0F([BII)V
    .locals 2

    .line 38131
    iget v0, p0, Lcom/facebook/ads/redexgen/X/IL;->A01:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A04(Z)V

    .line 38132
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/IL;->A00:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/IL;->A03:I

    invoke-static {v1, v0, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 38133
    iget v0, p0, Lcom/facebook/ads/redexgen/X/IL;->A03:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IL;->A03:I

    .line 38134
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/IL;->A00()V

    .line 38135
    return-void

    .line 38136
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0G()Z
    .locals 3

    .line 38137
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/IL;->A00:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/IL;->A03:I

    aget-byte v2, v1, v0

    iget v1, p0, Lcom/facebook/ads/redexgen/X/IL;->A01:I

    const/16 v0, 0x80

    shr-int/2addr v0, v1

    and-int/2addr v2, v0

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 38138
    .local p0, "returnValue":Z
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IL;->A07()V

    .line 38139
    return v0

    .line 38140
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
