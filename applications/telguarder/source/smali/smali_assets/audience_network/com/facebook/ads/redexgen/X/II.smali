.class public final Lcom/facebook/ads/redexgen/X/II;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/IG;,
        Lcom/facebook/ads/redexgen/X/IH;
    }
.end annotation


# static fields
.field public static A00:[B

.field public static A01:[I

.field public static A02:[Ljava/lang/String;

.field public static final A03:[B

.field public static final A04:[F

.field public static final A05:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 37902
    invoke-static {}, Lcom/facebook/ads/redexgen/X/II;->A09()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/II;->A08()V

    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/II;->A03:[B

    .line 37903
    const/16 v0, 0x11

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/facebook/ads/redexgen/X/II;->A04:[F

    .line 37904
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/II;->A05:Ljava/lang/Object;

    .line 37905
    const/16 v0, 0xa

    new-array v0, v0, [I

    sput-object v0, Lcom/facebook/ads/redexgen/X/II;->A01:[I

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f8ba2e9
        0x3f68ba2f
        0x3fba2e8c
        0x3f9b26ca
        0x400ba2e9
        0x3fe8ba2f
        0x403a2e8c
        0x401b26ca
        0x3fd1745d
        0x3fae8ba3
        0x3ff83e10
        0x3fcede62
        0x3faaaaab
        0x3fc00000    # 1.5f
        0x40000000    # 2.0f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 37906
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37907
    return-void
.end method

.method public static A00([BI)I
    .locals 1

    .line 37908
    add-int/lit8 v0, p1, 0x3

    aget-byte v0, p0, v0

    and-int/lit8 v0, v0, 0x7e

    shr-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static A01([BI)I
    .locals 1

    .line 37909
    add-int/lit8 v0, p1, 0x3

    aget-byte v0, p0, v0

    and-int/lit8 v0, v0, 0x1f

    return v0
.end method

.method public static A02([BI)I
    .locals 8

    .line 37910
    sget-object v7, Lcom/facebook/ads/redexgen/X/II;->A05:Ljava/lang/Object;

    monitor-enter v7

    .line 37911
    const/4 v2, 0x0

    .line 37912
    .local p1, "position":I
    const/4 v6, 0x0

    .line 37913
    .local v7, "scratchEscapeCount":I
    :cond_0
    :goto_0
    if-ge v2, p1, :cond_2

    .line 37914
    :try_start_0
    invoke-static {p0, v2, p1}, Lcom/facebook/ads/redexgen/X/II;->A03([BII)I

    move-result v2

    .line 37915
    if-ge v2, p1, :cond_0

    .line 37916
    sget-object v0, Lcom/facebook/ads/redexgen/X/II;->A01:[I

    array-length v0, v0

    if-gt v0, v6, :cond_1

    .line 37917
    sget-object v1, Lcom/facebook/ads/redexgen/X/II;->A01:[I

    sget-object v0, Lcom/facebook/ads/redexgen/X/II;->A01:[I

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    .line 37918
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/II;->A01:[I

    .line 37919
    :cond_1
    sget-object v1, Lcom/facebook/ads/redexgen/X/II;->A01:[I

    add-int/lit8 v0, v6, 0x1

    .end local v7    # "scratchEscapeCount":I
    .local v6, "scratchEscapeCount":I
    aput v2, v1, v6

    .line 37920
    add-int/lit8 v2, v2, 0x3

    move v6, v0

    goto :goto_0

    .line 37921
    .restart local p1    # "position":I
    .restart local v7    # "scratchEscapeCount":I
    :cond_2
    sub-int/2addr p1, v6

    .line 37922
    .local v2, "unescapedLength":I
    const/4 v5, 0x0

    .line 37923
    .local v6, "escapedPosition":I
    const/4 v4, 0x0

    .line 37924
    .local v2, "unescapedPosition":I
    const/4 v3, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v3, v6, :cond_3

    .line 37925
    sget-object v0, Lcom/facebook/ads/redexgen/X/II;->A01:[I

    aget v2, v0, v3

    .line 37926
    .local v0, "nextEscapePosition":I
    sub-int/2addr v2, v5

    .line 37927
    .local v1, "copyLength":I
    invoke-static {p0, v5, p0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 37928
    add-int/2addr v4, v2

    .line 37929
    add-int/lit8 v1, v4, 0x1

    .end local v2    # "unescapedPosition":I
    .local v0, "unescapedPosition":I
    const/4 v0, 0x0

    aput-byte v0, p0, v4

    .line 37930
    add-int/lit8 v4, v1, 0x1

    .end local v0    # "unescapedPosition":I
    .restart local v2    # "unescapedPosition":I
    aput-byte v0, p0, v1

    .line 37931
    add-int/lit8 v0, v2, 0x3

    add-int/2addr v5, v0

    .line 37932
    .end local v0
    .end local v1    # "copyLength":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 37933
    .end local v0
    :cond_3
    sub-int v0, p1, v4

    .line 37934
    .local v0, "remainingLength":I
    invoke-static {p0, v5, p0, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 37935
    monitor-exit v7

    return p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37936
    .end local p1    # "position":I
    .end local v6    # "escapedPosition":I
    :catchall_0
    move-exception v0

    .end local p1
    .end local v7    # "scratchEscapeCount":I
    .end local v2    # "unescapedPosition":I
    .end local v6
    .end local v2
    .end local v0    # "remainingLength":I
    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static A03([BII)I
    .locals 4

    .line 37937
    .local p0, "i":I
    :goto_0
    add-int/lit8 v0, p2, -0x2

    if-ge p1, v0, :cond_2

    .line 37938
    aget-byte v3, p0, p1

    sget-object v1, Lcom/facebook/ads/redexgen/X/II;->A02:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xb

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/II;->A02:[Ljava/lang/String;

    const-string v1, "U7PPsrYeJob"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-nez v3, :cond_1

    add-int/lit8 v0, p1, 0x1

    aget-byte v0, p0, v0

    if-nez v0, :cond_1

    add-int/lit8 v0, p1, 0x2

    aget-byte v1, p0, v0

    const/4 v0, 0x3

    if-ne v1, v0, :cond_1

    .line 37939
    return p1

    .line 37940
    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 37941
    .end local p0    # "i":I
    :cond_2
    return p2
.end method

.method public static A04([BII[Z)I
    .locals 10

    .line 37942
    sub-int v5, p2, p1

    .line 37943
    .local p0, "length":I
    const/4 v9, 0x0

    const/4 v4, 0x1

    if-ltz v5, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A04(Z)V

    .line 37944
    if-nez v5, :cond_1

    .line 37945
    return p2

    .line 37946
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 37947
    :cond_1
    const/4 v3, 0x2

    if-eqz p3, :cond_4

    .line 37948
    aget-boolean v0, p3, v9

    if-eqz v0, :cond_2

    .line 37949
    invoke-static {p3}, Lcom/facebook/ads/redexgen/X/II;->A0C([Z)V

    .line 37950
    add-int/lit8 v0, p1, -0x3

    return v0

    .line 37951
    :cond_2
    if-le v5, v4, :cond_3

    aget-boolean v0, p3, v4

    if-eqz v0, :cond_3

    aget-byte v0, p0, p1

    if-ne v0, v4, :cond_3

    .line 37952
    invoke-static {p3}, Lcom/facebook/ads/redexgen/X/II;->A0C([Z)V

    .line 37953
    add-int/lit8 v0, p1, -0x2

    return v0

    .line 37954
    :cond_3
    if-le v5, v3, :cond_4

    aget-boolean v0, p3, v3

    if-eqz v0, :cond_4

    aget-byte v0, p0, p1

    if-nez v0, :cond_4

    add-int/lit8 v0, p1, 0x1

    aget-byte v0, p0, v0

    if-ne v0, v4, :cond_4

    .line 37955
    invoke-static {p3}, Lcom/facebook/ads/redexgen/X/II;->A0C([Z)V

    .line 37956
    add-int/lit8 v0, p1, -0x1

    return v0

    .line 37957
    :cond_4
    add-int/lit8 v7, p2, -0x1

    .line 37958
    .local v5, "limit":I
    add-int/lit8 v8, p1, 0x2

    .local v9, "i":I
    :goto_1
    if-ge v8, v7, :cond_a

    .line 37959
    aget-byte v0, p0, v8

    and-int/lit16 v0, v0, 0xfe

    if-eqz v0, :cond_5

    .line 37960
    :goto_2
    add-int/lit8 v8, v8, 0x3

    goto :goto_1

    .line 37961
    :cond_5
    add-int/lit8 v0, v8, -0x2

    aget-byte v6, p0, v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/II;->A02:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x0

    if-eq v1, v0, :cond_6

    :goto_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_6
    sget-object v2, Lcom/facebook/ads/redexgen/X/II;->A02:[Ljava/lang/String;

    const-string v1, "aNLls7ixEb6"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-nez v6, :cond_9

    add-int/lit8 v0, v8, -0x1

    aget-byte v0, p0, v0

    if-nez v0, :cond_9

    aget-byte v6, p0, v8

    sget-object v2, Lcom/facebook/ads/redexgen/X/II;->A02:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_7

    goto :goto_3

    :cond_7
    sget-object v2, Lcom/facebook/ads/redexgen/X/II;->A02:[Ljava/lang/String;

    const-string v1, "egcwkByRurjaO73mzWiS24rFSzd0C33t"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "FgyNUcoNC9KXiWNAwgRrRY7Z3Iry9mzs"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-ne v6, v4, :cond_9

    .line 37962
    if-eqz p3, :cond_8

    .line 37963
    invoke-static {p3}, Lcom/facebook/ads/redexgen/X/II;->A0C([Z)V

    .line 37964
    :cond_8
    add-int/lit8 v0, v8, -0x2

    return v0

    .line 37965
    :cond_9
    add-int/lit8 v8, v8, -0x2

    goto :goto_2

    .line 37966
    .end local v9    # "i":I
    :cond_a
    if-eqz p3, :cond_10

    .line 37967
    if-le v5, v3, :cond_e

    .line 37968
    add-int/lit8 v0, p2, -0x3

    aget-byte v0, p0, v0

    if-nez v0, :cond_d

    add-int/lit8 v0, p2, -0x2

    aget-byte v6, p0, v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/II;->A02:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x14

    if-eq v1, v0, :cond_b

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_b
    sget-object v2, Lcom/facebook/ads/redexgen/X/II;->A02:[Ljava/lang/String;

    const-string v1, "8wkZtiUNB6u"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-nez v6, :cond_d

    add-int/lit8 v6, p2, -0x1

    sget-object v2, Lcom/facebook/ads/redexgen/X/II;->A02:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_c

    sget-object v2, Lcom/facebook/ads/redexgen/X/II;->A02:[Ljava/lang/String;

    const-string v1, ""

    const/4 v0, 0x6

    aput-object v1, v2, v0

    aget-byte v0, p0, v6

    if-ne v0, v4, :cond_d

    :goto_4
    const/4 v0, 0x1

    goto :goto_5

    .line 37969
    :cond_c
    sget-object v2, Lcom/facebook/ads/redexgen/X/II;->A02:[Ljava/lang/String;

    const-string v1, "agQicdGsGBPYIVkqy3Ur73QGuxUytPRj"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "mgzqXEgzDpwi1EjtsuM8tkhBzIXTfsMo"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    aget-byte v0, p0, v6

    if-ne v0, v4, :cond_d

    goto :goto_4

    .line 37970
    :cond_d
    const/4 v0, 0x0

    goto :goto_5

    .line 37971
    :cond_e
    if-ne v5, v3, :cond_17

    .line 37972
    aget-boolean v0, p3, v3

    if-eqz v0, :cond_16

    add-int/lit8 v0, p2, -0x2

    aget-byte v0, p0, v0

    if-nez v0, :cond_16

    add-int/lit8 v0, p2, -0x1

    aget-byte v0, p0, v0

    if-ne v0, v4, :cond_16

    const/4 v0, 0x1

    .line 37973
    :goto_5
    aput-boolean v0, p3, v9

    sget-object v1, Lcom/facebook/ads/redexgen/X/II;->A02:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x0

    if-eq v1, v0, :cond_13

    .line 37974
    sget-object v2, Lcom/facebook/ads/redexgen/X/II;->A02:[Ljava/lang/String;

    const-string v1, "Agz6ngPyMomWXjUjX6FfLPugMOfkPz7W"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "EgDmmiSqeU0YYYQ4MNgtFzaxDkvjR4a0"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-le v5, v4, :cond_14

    .line 37975
    :goto_6
    add-int/lit8 v0, p2, -0x2

    aget-byte v0, p0, v0

    if-nez v0, :cond_12

    add-int/lit8 v0, p2, -0x1

    aget-byte v5, p0, v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/II;->A02:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xb

    if-eq v1, v0, :cond_11

    sget-object v2, Lcom/facebook/ads/redexgen/X/II;->A02:[Ljava/lang/String;

    const-string v1, "ZBGUKdLkTpRJVgvv71j9"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-nez v5, :cond_12

    :goto_7
    const/4 v0, 0x1

    .line 37976
    :goto_8
    aput-boolean v0, p3, v4

    .line 37977
    add-int/lit8 v0, p2, -0x1

    aget-byte v0, p0, v0

    if-nez v0, :cond_f

    const/4 v9, 0x1

    :cond_f
    aput-boolean v9, p3, v3

    .line 37978
    :cond_10
    return p2

    :cond_11
    sget-object v2, Lcom/facebook/ads/redexgen/X/II;->A02:[Ljava/lang/String;

    const-string v1, "L6ZfK6Lj4MXROnNTulzt"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-nez v5, :cond_12

    goto :goto_7

    .line 37979
    :cond_12
    const/4 v0, 0x0

    goto :goto_8

    .line 37980
    :cond_13
    sget-object v2, Lcom/facebook/ads/redexgen/X/II;->A02:[Ljava/lang/String;

    const-string v1, ""

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-le v5, v4, :cond_14

    goto :goto_6

    .line 37981
    :cond_14
    aget-boolean v0, p3, v3

    if-eqz v0, :cond_15

    add-int/lit8 v0, p2, -0x1

    aget-byte v0, p0, v0

    if-nez v0, :cond_15

    const/4 v0, 0x1

    goto :goto_8

    :cond_15
    const/4 v0, 0x0

    goto :goto_8

    .line 37982
    :cond_16
    const/4 v0, 0x0

    goto :goto_5

    .line 37983
    :cond_17
    aget-boolean v0, p3, v4

    if-eqz v0, :cond_18

    add-int/lit8 v0, p2, -0x1

    aget-byte v0, p0, v0

    if-ne v0, v4, :cond_18

    const/4 v0, 0x1

    goto :goto_5

    :cond_18
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static A05([BII)Lcom/facebook/ads/redexgen/X/IG;
    .locals 2

    .line 37984
    new-instance v1, Lcom/facebook/ads/redexgen/X/IN;

    invoke-direct {v1, p0, p1, p2}, Lcom/facebook/ads/redexgen/X/IN;-><init>([BII)V

    .line 37985
    .local p0, "data":Lcom/facebook/ads/redexgen/X/IN;
    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/IN;->A08(I)V

    .line 37986
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/IN;->A05()I

    move-result p1

    .line 37987
    .local p1, "picParameterSetId":I
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/IN;->A05()I

    move-result p0

    .line 37988
    .local p2, "seqParameterSetId":I
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/IN;->A07()V

    .line 37989
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/IN;->A0B()Z

    move-result v1

    .line 37990
    .local v1, "bottomFieldPicOrderInFramePresentFlag":Z
    new-instance v0, Lcom/facebook/ads/redexgen/X/IG;

    invoke-direct {v0, p1, p0, v1}, Lcom/facebook/ads/redexgen/X/IG;-><init>(IIZ)V

    return-object v0
.end method

.method public static A06([BII)Lcom/facebook/ads/redexgen/X/IH;
    .locals 21

    .line 37991
    new-instance v7, Lcom/facebook/ads/redexgen/X/IN;

    move/from16 v0, p2

    move/from16 v1, p1

    move-object/from16 v2, p0

    invoke-direct {v7, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/IN;-><init>([BII)V

    .line 37992
    .local v2, "data":Lcom/facebook/ads/redexgen/X/IN;
    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Lcom/facebook/ads/redexgen/X/IN;->A08(I)V

    .line 37993
    invoke-virtual {v7, v8}, Lcom/facebook/ads/redexgen/X/IN;->A06(I)I

    move-result v2

    .line 37994
    .local v0, "profileIdc":I
    const/16 v0, 0x10

    invoke-virtual {v7, v0}, Lcom/facebook/ads/redexgen/X/IN;->A08(I)V

    .line 37995
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/IN;->A05()I

    move-result v14

    .line 37996
    .local v0, "seqParameterSetId":I
    const/4 v5, 0x1

    .line 37997
    .local v8, "chromaFormatIdc":I
    const/16 v18, 0x0

    .line 37998
    .local v2, "separateColorPlaneFlag":Z
    const/4 v6, 0x3

    const/16 v0, 0x64

    if-eq v2, v0, :cond_1

    const/16 v0, 0x6e

    if-eq v2, v0, :cond_1

    const/16 v4, 0x7a

    sget-object v1, Lcom/facebook/ads/redexgen/X/II;->A02:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x0

    if-eq v1, v0, :cond_0

    :goto_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v3, Lcom/facebook/ads/redexgen/X/II;->A02:[Ljava/lang/String;

    const-string v1, "R0EE7exZwtJRPY2jHexd28FTyE3yf37y"

    const/4 v0, 0x2

    aput-object v1, v3, v0

    if-eq v2, v4, :cond_1

    const/16 v0, 0xf4

    if-eq v2, v0, :cond_1

    const/16 v0, 0x2c

    if-eq v2, v0, :cond_1

    const/16 v0, 0x53

    if-eq v2, v0, :cond_1

    const/16 v0, 0x56

    if-eq v2, v0, :cond_1

    const/16 v0, 0x76

    if-eq v2, v0, :cond_1

    const/16 v0, 0x80

    if-eq v2, v0, :cond_1

    const/16 v0, 0x8a

    if-ne v2, v0, :cond_8

    .line 37999
    :cond_1
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/IN;->A05()I

    move-result v5

    .line 38000
    if-ne v5, v6, :cond_2

    .line 38001
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/IN;->A0B()Z

    move-result v18

    .line 38002
    :cond_2
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/IN;->A05()I

    .line 38003
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/IN;->A05()I

    .line 38004
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/IN;->A07()V

    .line 38005
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/IN;->A0B()Z

    move-result v0

    .line 38006
    .local v14, "seqScalingMatrixPresentFlag":Z
    if-eqz v0, :cond_6

    .line 38007
    if-eq v5, v6, :cond_5

    const/16 v2, 0x8

    .line 38008
    .local v5, "limit":I
    :goto_1
    const/4 v1, 0x0

    .local v18, "i":I
    :goto_2
    if-ge v1, v2, :cond_6

    .line 38009
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/IN;->A0B()Z

    move-result v0

    .line 38010
    .local v6, "seqScalingListPresentFlag":Z
    if-eqz v0, :cond_3

    .line 38011
    const/4 v0, 0x6

    if-ge v1, v0, :cond_4

    const/16 v0, 0x10

    :goto_3
    invoke-static {v7, v0}, Lcom/facebook/ads/redexgen/X/II;->A0A(Lcom/facebook/ads/redexgen/X/IN;I)V

    .line 38012
    .end local v6    # "seqScalingListPresentFlag":Z
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 38013
    :cond_4
    const/16 v0, 0x40

    goto :goto_3

    .line 38014
    :cond_5
    const/16 v2, 0xc

    goto :goto_1

    .line 38015
    .end local v14    # "seqScalingMatrixPresentFlag":Z
    .end local v5    # "limit":I
    .end local v18    # "i":I
    :cond_6
    sget-object v1, Lcom/facebook/ads/redexgen/X/II;->A02:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/16 v0, 0x1d

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x33

    if-eq v1, v0, :cond_7

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_7
    sget-object v2, Lcom/facebook/ads/redexgen/X/II;->A02:[Ljava/lang/String;

    const-string v1, "5nVDdMXIvKmO0E"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "ILIlnILKyKLlPS"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    .end local v8    # "chromaFormatIdc":I
    .end local v2    # "separateColorPlaneFlag":Z
    .local v0, "chromaFormatIdc":I
    .local v0, "separateColorPlaneFlag":Z
    :cond_8
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/IN;->A05()I

    move-result v0

    add-int/lit8 v20, v0, 0x4

    .line 38016
    .local v1, "frameNumLength":I
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/IN;->A05()I

    move-result v9

    .line 38017
    .local v0, "picOrderCntType":I
    const/16 p1, 0x0

    .line 38018
    .local v8, "picOrderCntLsbLength":I
    const/16 p2, 0x0

    .line 38019
    .local v2, "deltaPicOrderAlwaysZeroFlag":Z
    const/4 v4, 0x1

    if-nez v9, :cond_f

    .line 38020
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/IN;->A05()I

    move-result v0

    add-int/lit8 p1, v0, 0x4

    .line 38021
    .end local v8    # "picOrderCntLsbLength":I
    .local v5, "picOrderCntLsbLength":I
    .end local v2    # "deltaPicOrderAlwaysZeroFlag":Z
    .end local v1    # "frameNumLength":I
    .local v7, "picOrderCntLsbLength":I
    .local v0, "deltaPicOrderAlwaysZeroFlag":Z
    :cond_9
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/IN;->A05()I

    .line 38022
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/IN;->A07()V

    .line 38023
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/IN;->A05()I

    move-result v0

    add-int/lit8 v2, v0, 0x1

    .line 38024
    .local v0, "picWidthInMbs":I
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/IN;->A05()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    .line 38025
    .local v3, "picHeightInMapUnits":I
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/IN;->A0B()Z

    move-result v19

    .line 38026
    .local v1, "frameMbsOnlyFlag":Z
    rsub-int/lit8 v0, v19, 0x2

    mul-int/2addr v0, v1

    .line 38027
    .local v0, "frameHeightInMbs":I
    if-nez v19, :cond_a

    .line 38028
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/IN;->A07()V

    .line 38029
    :cond_a
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/IN;->A07()V

    .line 38030
    mul-int/lit8 v15, v2, 0x10

    .line 38031
    .local v2, "frameWidth":I
    mul-int/lit8 v16, v0, 0x10

    .line 38032
    .local v5, "frameHeight":I
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/IN;->A0B()Z

    move-result v0

    .line 38033
    .local v0, "frameCroppingFlag":Z
    if-eqz v0, :cond_b

    .line 38034
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/IN;->A05()I

    move-result v11

    .line 38035
    .local v18, "frameCropLeftOffset":I
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/IN;->A05()I

    move-result v10

    .line 38036
    .local v6, "frameCropRightOffset":I
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/IN;->A05()I

    move-result v3

    .line 38037
    .local v1, "frameCropTopOffset":I
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/IN;->A05()I

    move-result v2

    .line 38038
    .local v0, "frameCropBottomOffset":I
    if-nez v5, :cond_c

    .line 38039
    const/4 v1, 0x1

    .line 38040
    .local v0, "cropUnitX":I
    rsub-int/lit8 v0, v19, 0x2

    .line 38041
    .local v8, "cropUnitY":I
    .end local v14
    .end local v0    # "cropUnitX":I
    .restart local v8    # "cropUnitY":I
    .local v0, "cropUnitX":I
    :goto_4
    add-int/2addr v11, v10

    mul-int/2addr v11, v1

    sub-int/2addr v15, v11

    .line 38042
    add-int/2addr v3, v2

    mul-int/2addr v3, v0

    sub-int v16, v16, v3

    .line 38043
    .end local v2    # "frameWidth":I
    .end local v5    # "frameHeight":I
    .local v0, "frameWidth":I
    .local v0, "frameHeight":I
    :cond_b
    const/high16 v2, 0x3f800000    # 1.0f

    .line 38044
    .local v8, "pixelWidthHeightRatio":F
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/IN;->A0B()Z

    move-result v0

    .line 38045
    .local v0, "vuiParametersPresentFlag":Z
    if-eqz v0, :cond_14

    .line 38046
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/IN;->A0B()Z

    move-result v4

    sget-object v3, Lcom/facebook/ads/redexgen/X/II;->A02:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v3, v0

    const/4 v0, 0x7

    aget-object v0, v3, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_11

    goto/16 :goto_0

    .line 38047
    .end local v8    # "pixelWidthHeightRatio":F
    .end local v0    # "vuiParametersPresentFlag":Z
    :cond_c
    if-ne v5, v6, :cond_e

    const/4 v1, 0x1

    .line 38048
    .local v0, "subWidthC":I
    :goto_5
    if-ne v5, v4, :cond_d

    const/4 v4, 0x2

    .line 38049
    .local v14, "subHeightC":I
    .local v0, "cropUnitX":I
    :cond_d
    rsub-int/lit8 v0, v19, 0x2

    mul-int/2addr v0, v4

    goto :goto_4

    .line 38050
    :cond_e
    const/4 v1, 0x2

    goto :goto_5

    .line 38051
    .end local v5
    .restart local v8    # "pixelWidthHeightRatio":F
    :cond_f
    if-ne v9, v4, :cond_9

    .line 38052
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/IN;->A0B()Z

    move-result p2

    .line 38053
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/IN;->A04()I

    .line 38054
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/IN;->A04()I

    .line 38055
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/IN;->A05()I

    move-result v0

    int-to-long v2, v0

    .line 38056
    .local v5, "numRefFramesInPicOrderCntCycle":J
    const/4 v10, 0x0

    .local v6, "i":I
    .end local v8    # "pixelWidthHeightRatio":F
    .local v1, "picOrderCntLsbLength":I
    :goto_6
    int-to-long v0, v10

    sget-object v13, Lcom/facebook/ads/redexgen/X/II;->A02:[Ljava/lang/String;

    const/4 v11, 0x0

    aget-object v12, v13, v11

    const/4 v11, 0x7

    aget-object v11, v13, v11

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-eq v12, v11, :cond_10

    cmp-long v11, v0, v2

    if-gez v11, :cond_9

    .line 38057
    :goto_7
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/IN;->A05()I

    .line 38058
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    :cond_10
    sget-object v13, Lcom/facebook/ads/redexgen/X/II;->A02:[Ljava/lang/String;

    const-string v12, "cglXopYq1hQPDimr6C4hy6cRPriGpgs0"

    const/4 v11, 0x4

    aput-object v12, v13, v11

    const-string v12, "Yg0JgJNHwCf9donH8AMWeWwv2tnDQiyJ"

    const/4 v11, 0x5

    aput-object v12, v13, v11

    cmp-long v11, v0, v2

    if-gez v11, :cond_9

    goto :goto_7

    .line 38059
    .local v2, "aspectRatioInfoPresentFlag":Z
    :cond_11
    sget-object v3, Lcom/facebook/ads/redexgen/X/II;->A02:[Ljava/lang/String;

    const-string v1, ""

    const/4 v0, 0x6

    aput-object v1, v3, v0

    if-eqz v4, :cond_14

    .line 38060
    invoke-virtual {v7, v8}, Lcom/facebook/ads/redexgen/X/IN;->A06(I)I

    move-result v3

    .line 38061
    .local v1, "aspectRatioIdc":I
    const/16 v0, 0xff

    if-ne v3, v0, :cond_12

    .line 38062
    const/16 v0, 0x10

    invoke-virtual {v7, v0}, Lcom/facebook/ads/redexgen/X/IN;->A06(I)I

    move-result v1

    .line 38063
    .local v14, "sarWidth":I
    invoke-virtual {v7, v0}, Lcom/facebook/ads/redexgen/X/IN;->A06(I)I

    move-result v0

    .line 38064
    .local v0, "sarHeight":I
    if-eqz v1, :cond_14

    if-eqz v0, :cond_14

    .line 38065
    int-to-float v2, v1

    int-to-float v0, v0

    div-float/2addr v2, v0

    goto :goto_8

    .line 38066
    :cond_12
    sget-object v1, Lcom/facebook/ads/redexgen/X/II;->A04:[F

    array-length v0, v1

    if-ge v3, v0, :cond_13

    .line 38067
    aget v2, v1, v3

    goto :goto_8

    .line 38068
    :cond_13
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0xb

    const/16 v1, 0x23

    const/16 v0, 0xe

    invoke-static {v4, v1, v0}, Lcom/facebook/ads/redexgen/X/II;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v3, 0x0

    const/16 v1, 0xb

    const/16 v0, 0x36

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/II;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 38069
    .end local v8
    .local v1, "pixelWidthHeightRatio":F
    :cond_14
    :goto_8
    new-instance v13, Lcom/facebook/ads/redexgen/X/IH;

    .end local v0    # "sarHeight":I
    .local v0, "picOrderCntType":I
    .end local v0    # "picOrderCntType":I
    .local v0, "chromaFormatIdc":I
    move/from16 v17, v2

    move/from16 p0, v9

    invoke-direct/range {v13 .. v23}, Lcom/facebook/ads/redexgen/X/IH;-><init>(IIIFZZIIIZ)V

    return-object v13
.end method

.method public static A07(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/II;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x30

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A08()V
    .locals 1

    const/16 v0, 0x41

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/II;->A00:[B

    return-void

    :array_0
    .array-data 1
        0x48t
        0x67t
        0x6at
        0x53t
        0x68t
        0x6ft
        0x72t
        0x53t
        0x72t
        0x6ft
        0x6at
        0x6bt
        0x50t
        0x5bt
        0x46t
        0x4et
        0x5bt
        0x5dt
        0x4at
        0x5bt
        0x5at
        0x1et
        0x5ft
        0x4dt
        0x4et
        0x5bt
        0x5dt
        0x4at
        0x61t
        0x4ct
        0x5ft
        0x4at
        0x57t
        0x51t
        0x61t
        0x57t
        0x5at
        0x5dt
        0x1et
        0x48t
        0x5ft
        0x52t
        0x4bt
        0x5bt
        0x4t
        0x1et
        0x63t
        0x7ct
        0x71t
        0x70t
        0x7at
        0x3at
        0x74t
        0x63t
        0x76t
        0x66t
        0x79t
        0x74t
        0x75t
        0x7ft
        0x3ft
        0x78t
        0x75t
        0x66t
        0x73t
    .end array-data
.end method

.method public static A09()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "juERWcSPmctssu"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "pQNokjb25WDIzRarty8I"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "3eHwBW08c6AQgLfHn8xvck5x6i6f43Nj"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "VWoyfonrH3T"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "bgx20rw78uBXJaRuLUbt2GV04ujaI6Xk"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "KgHE3JJtoN5S1rsBIsEbIpcD6FplAKaQ"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "6SBcFBTqO4tMnZ"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/II;->A02:[Ljava/lang/String;

    return-void
.end method

.method public static A0A(Lcom/facebook/ads/redexgen/X/IN;I)V
    .locals 3

    .line 38070
    const/16 v2, 0x8

    .line 38071
    .local p0, "lastScale":I
    const/16 v0, 0x8

    .line 38072
    .local p1, "nextScale":I
    const/4 v1, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v1, p1, :cond_2

    .line 38073
    if-eqz v0, :cond_0

    .line 38074
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IN;->A04()I

    move-result v0

    .line 38075
    .local v0, "deltaScale":I
    add-int/2addr v0, v2

    add-int/lit16 v0, v0, 0x100

    rem-int/lit16 v0, v0, 0x100

    .line 38076
    .end local v0    # "deltaScale":I
    :cond_0
    if-nez v0, :cond_1

    .line 38077
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 38078
    :cond_1
    move v2, v0

    goto :goto_1

    .line 38079
    .end local v2    # "i":I
    :cond_2
    return-void
.end method

.method public static A0B(Ljava/nio/ByteBuffer;)V
    .locals 6

    .line 38080
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    .line 38081
    .local p0, "length":I
    const/4 v4, 0x0

    .line 38082
    .local v5, "consecutiveZeros":I
    const/4 v3, 0x0

    .line 38083
    .local v4, "offset":I
    :goto_0
    add-int/lit8 v0, v3, 0x1

    if-ge v0, v5, :cond_3

    .line 38084
    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v2, v0, 0xff

    .line 38085
    .local v3, "value":I
    const/4 v0, 0x3

    if-ne v4, v0, :cond_0

    .line 38086
    const/4 v0, 0x1

    if-ne v2, v0, :cond_1

    add-int/lit8 v0, v3, 0x1

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit8 v1, v0, 0x1f

    const/4 v0, 0x7

    if-ne v1, v0, :cond_1

    .line 38087
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 38088
    .local v0, "offsetData":Ljava/nio/ByteBuffer;
    add-int/lit8 v0, v3, -0x3

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 38089
    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 38090
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 38091
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 38092
    return-void

    .line 38093
    .end local v0    # "offsetData":Ljava/nio/ByteBuffer;
    :cond_0
    if-nez v2, :cond_1

    .line 38094
    add-int/lit8 v4, v4, 0x1

    .line 38095
    :cond_1
    if-eqz v2, :cond_2

    .line 38096
    const/4 v4, 0x0

    .line 38097
    .end local v3    # "value":I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 38098
    goto :goto_0

    .line 38099
    :cond_3
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 38100
    return-void
.end method

.method public static A0C([Z)V
    .locals 2

    .line 38101
    const/4 v1, 0x0

    aput-boolean v1, p0, v1

    .line 38102
    const/4 v0, 0x1

    aput-boolean v1, p0, v0

    .line 38103
    const/4 v0, 0x2

    aput-boolean v1, p0, v0

    .line 38104
    return-void
.end method

.method public static A0D(Ljava/lang/String;B)Z
    .locals 4

    .line 38105
    const/16 v2, 0x2e

    const/16 v1, 0x9

    const/16 v0, 0x25

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/II;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    and-int/lit8 v1, p1, 0x1f

    const/4 v0, 0x6

    if-eq v1, v0, :cond_1

    .line 38106
    :cond_0
    const/16 v2, 0x37

    const/16 v1, 0xa

    const/16 v0, 0x20

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/II;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    and-int/lit8 v1, p1, 0x7e

    shr-int/2addr v1, v3

    const/16 v0, 0x27

    if-ne v1, v0, :cond_2

    .line 38107
    :cond_1
    :goto_0
    return v3

    .line 38108
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method
