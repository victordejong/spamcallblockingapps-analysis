.class public final Lcom/facebook/ads/redexgen/X/Cz;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Cy;
    }
.end annotation


# static fields
.field public static A00:[B

.field public static A01:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Cz;->A05()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Cz;->A04()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26016
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00([B)I
    .locals 0

    .line 26017
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Cz;->A01([B)Lcom/facebook/ads/redexgen/X/Cy;

    move-result-object p0

    .line 26018
    .local p0, "parsedAtom":Lcom/facebook/ads/redexgen/X/Cy;
    if-nez p0, :cond_0

    .line 26019
    const/4 p0, -0x1

    return p0

    .line 26020
    :cond_0
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Cy;->A00(Lcom/facebook/ads/redexgen/X/Cy;)I

    move-result p0

    return p0
.end method

.method public static A01([B)Lcom/facebook/ads/redexgen/X/Cy;
    .locals 9
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 26021
    new-instance v7, Lcom/facebook/ads/redexgen/X/IM;

    invoke-direct {v7, p0}, Lcom/facebook/ads/redexgen/X/IM;-><init>([B)V

    .line 26022
    .local p0, "atomData":Lcom/facebook/ads/redexgen/X/IM;
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/IM;->A08()I

    move-result v1

    const/4 p0, 0x0

    const/16 v0, 0x20

    if-ge v1, v0, :cond_0

    .line 26023
    return-object p0

    .line 26024
    :cond_0
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 26025
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/IM;->A09()I

    move-result v1

    .line 26026
    .local p0, "atomSize":I
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/IM;->A05()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    if-eq v1, v0, :cond_1

    .line 26027
    return-object p0

    .line 26028
    :cond_1
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/IM;->A09()I

    move-result v1

    .line 26029
    .local v0, "atomType":I
    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A0s:I

    if-eq v1, v0, :cond_2

    .line 26030
    return-object p0

    .line 26031
    :cond_2
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/IM;->A09()I

    move-result v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ch;->A01(I)I

    move-result v6

    .line 26032
    .local v8, "atomVersion":I
    const/4 v2, 0x1

    if-le v6, v2, :cond_3

    .line 26033
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xc

    const/16 v1, 0x1a

    const/4 v0, 0x2

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Cz;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0xc

    const/16 v0, 0x6b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Cz;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 26034
    return-object p0

    .line 26035
    :cond_3
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/IM;->A0M()J

    move-result-wide v4

    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/IM;->A0M()J

    move-result-wide v0

    new-instance v3, Ljava/util/UUID;

    invoke-direct {v3, v4, v5, v0, v1}, Ljava/util/UUID;-><init>(JJ)V

    .line 26036
    .local v0, "uuid":Ljava/util/UUID;
    if-ne v6, v2, :cond_4

    .line 26037
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/IM;->A0I()I

    move-result v0

    .line 26038
    .local v1, "keyIdCount":I
    mul-int/lit8 v0, v0, 0x10

    invoke-virtual {v7, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0a(I)V

    .line 26039
    .end local v1    # "keyIdCount":I
    :cond_4
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/IM;->A0I()I

    move-result v2

    .line 26040
    .local v1, "dataSize":I
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/IM;->A05()I

    move-result v0

    if-eq v2, v0, :cond_5

    .line 26041
    return-object p0

    .line 26042
    :cond_5
    new-array v1, v2, [B

    .line 26043
    .local v1, "data":[B
    invoke-virtual {v7, v1, v8, v2}, Lcom/facebook/ads/redexgen/X/IM;->A0d([BII)V

    .line 26044
    new-instance v0, Lcom/facebook/ads/redexgen/X/Cy;

    invoke-direct {v0, v3, v6, v1}, Lcom/facebook/ads/redexgen/X/Cy;-><init>(Ljava/util/UUID;I[B)V

    return-object v0
.end method

.method public static A02(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/Cz;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const/4 p0, 0x0

    :goto_0
    array-length v0, v3

    if-ge p0, v0, :cond_1

    aget-byte p1, v3, p0

    xor-int/2addr p1, p2

    sget-object v2, Lcom/facebook/ads/redexgen/X/Cz;->A01:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x3

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
    sget-object v2, Lcom/facebook/ads/redexgen/X/Cz;->A01:[Ljava/lang/String;

    const-string v1, "5Xm"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "aId"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    xor-int/lit8 v0, p1, 0x5

    int-to-byte v0, v0

    aput-byte v0, v3, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A03([B)Ljava/util/UUID;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 26045
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Cz;->A01([B)Lcom/facebook/ads/redexgen/X/Cy;

    move-result-object p0

    .line 26046
    .local p0, "parsedAtom":Lcom/facebook/ads/redexgen/X/Cy;
    if-nez p0, :cond_0

    .line 26047
    const/4 p0, 0x0

    return-object p0

    .line 26048
    :cond_0
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Cy;->A01(Lcom/facebook/ads/redexgen/X/Cy;)Ljava/util/UUID;

    move-result-object p0

    return-object p0
.end method

.method public static A04()V
    .locals 1

    const/16 v0, 0x26

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Cz;->A00:[B

    return-void

    :array_0
    .array-data 1
        0x3et
        0x1dt
        0x1dt
        0x6t
        0x2ft
        0x1at
        0x1t
        0x3t
        0x3bt
        0x1at
        0x7t
        0x2t
        0x52t
        0x69t
        0x74t
        0x72t
        0x77t
        0x77t
        0x68t
        0x75t
        0x73t
        0x62t
        0x63t
        0x27t
        0x77t
        0x74t
        0x74t
        0x6ft
        0x27t
        0x71t
        0x62t
        0x75t
        0x74t
        0x6et
        0x68t
        0x69t
        0x3dt
        0x27t
    .end array-data
.end method

.method public static A05()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "2"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "a"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "OmRlwAaqnTGSDmg17v4a1u3HThHvMppp"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "UZw"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "ohLfjPm6Dh2kX7aCwU6QVDBA16Qvf3l4"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "HRj"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "dRmvkA5Xn2MpsrJiEBi4PqCp5vnsnftX"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "6SNJWLV9RUJ79V3cULo00FiuNdQfr1hG"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Cz;->A01:[Ljava/lang/String;

    return-void
.end method
