.class public final Lcom/facebook/ads/redexgen/X/Gg;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A02:[B

.field public static A03:[Ljava/lang/String;

.field public static final A04:Ljava/util/regex/Pattern;


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/IM;

.field public final A01:Ljava/lang/StringBuilder;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 35068
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Gg;->A08()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Gg;->A07()V

    const/16 v2, 0xb

    const/16 v1, 0x13

    const/16 v0, 0xf

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Gg;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Gg;->A04:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 35069
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35070
    new-instance v0, Lcom/facebook/ads/redexgen/X/IM;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/IM;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Gg;->A00:Lcom/facebook/ads/redexgen/X/IM;

    .line 35071
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Gg;->A01:Ljava/lang/StringBuilder;

    .line 35072
    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/IM;I)C
    .locals 0

    .line 35073
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    aget-byte p0, p0, p1

    int-to-char p0, p0

    return p0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Gg;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x43

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A02(Lcom/facebook/ads/redexgen/X/IM;)Ljava/lang/String;
    .locals 5

    .line 35074
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A07()I

    move-result v1

    .line 35075
    .local p0, "position":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A08()I

    move-result v3

    .line 35076
    .local v1, "limit":I
    const/4 v0, 0x0

    .line 35077
    .local v3, "cueTargetEndFound":Z
    :goto_0
    if-ge v1, v3, :cond_1

    if-nez v0, :cond_1

    .line 35078
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    add-int/lit8 v2, v1, 0x1

    .end local p0    # "position":I
    .local v0, "position":I
    aget-byte v0, v0, v1

    int-to-char v1, v0

    .line 35079
    .local p0, "c":C
    const/16 v0, 0x29

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    .line 35080
    .end local p0    # "c":C
    :goto_1
    move v1, v2

    goto :goto_0

    .line 35081
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 35082
    .end local v0    # "position":I
    .local p0, "position":I
    :cond_1
    add-int/lit8 v4, v1, -0x1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A07()I

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/Gg;->A03:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xd

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/Gg;->A03:[Ljava/lang/String;

    const-string v1, "U7AFvzjh0eXniKwRbsxjJjXnVtjSsLM4"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "DVXWei8LM9QEIP14jtN8vJDD4qB1WCRy"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    sub-int/2addr v4, v3

    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/IM;->A0T(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A03(Lcom/facebook/ads/redexgen/X/IM;Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 8

    .line 35083
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 35084
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A07()I

    move-result v3

    .line 35085
    .local p0, "position":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A08()I

    move-result v5

    .line 35086
    .local p1, "limit":I
    const/4 v7, 0x0

    .line 35087
    .local v0, "identifierEndFound":Z
    :goto_0
    if-ge v3, v5, :cond_9

    if-nez v7, :cond_9

    .line 35088
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    aget-byte v0, v0, v3

    int-to-char v4, v0

    .line 35089
    .local v3, "c":C
    const/16 v0, 0x41

    if-lt v4, v0, :cond_0

    const/16 v0, 0x5a

    if-le v4, v0, :cond_6

    :cond_0
    const/16 v0, 0x61

    if-lt v4, v0, :cond_1

    const/16 v6, 0x7a

    sget-object v1, Lcom/facebook/ads/redexgen/X/Gg;->A03:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x72

    if-eq v1, v0, :cond_a

    sget-object v2, Lcom/facebook/ads/redexgen/X/Gg;->A03:[Ljava/lang/String;

    const-string v1, "DKHIdCN0VVIbuvGgJwHMUu8PvLEvuByS"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-le v4, v6, :cond_6

    :cond_1
    const/16 v6, 0x30

    sget-object v1, Lcom/facebook/ads/redexgen/X/Gg;->A03:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x72

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/Gg;->A03:[Ljava/lang/String;

    const-string v1, "dfuRlJF1VPzeTdshOyI8eIUivwWdqS2h"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "RJrGurHnJgg7N6rkX4lEdxOdBBvgTlj7"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-lt v4, v6, :cond_2

    :goto_1
    const/16 v6, 0x39

    sget-object v1, Lcom/facebook/ads/redexgen/X/Gg;->A03:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0x9

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x56

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Gg;->A03:[Ljava/lang/String;

    const-string v1, "bIwDi0Rp1YRSPQGD1BT81BJBCvK28hFj"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-le v4, v6, :cond_6

    :cond_2
    :goto_2
    const/16 v0, 0x23

    if-eq v4, v0, :cond_6

    const/16 v0, 0x2d

    if-eq v4, v0, :cond_6

    const/16 v0, 0x2e

    if-eq v4, v0, :cond_6

    const/16 v6, 0x5f

    sget-object v1, Lcom/facebook/ads/redexgen/X/Gg;->A03:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0x9

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x56

    if-eq v1, v0, :cond_5

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 35090
    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/Gg;->A03:[Ljava/lang/String;

    const-string v1, "Ye2Zprl9C2svkzYxGoVb6FjojZSaHkFm"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-le v4, v6, :cond_6

    goto :goto_2

    :cond_4
    sget-object v2, Lcom/facebook/ads/redexgen/X/Gg;->A03:[Ljava/lang/String;

    const-string v1, "w5kZrImtmzzj4Kikab7IqF21t10C4Hvv"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-lt v4, v6, :cond_2

    goto :goto_1

    .line 35091
    :cond_5
    sget-object v2, Lcom/facebook/ads/redexgen/X/Gg;->A03:[Ljava/lang/String;

    const-string v1, "FUfIiP6R3UODZ52Nqmf6UxQABPpS4N"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "EoNPBzphO2TRkVptMAQJMCnBQwid3u"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-ne v4, v6, :cond_7

    .line 35092
    :cond_6
    add-int/lit8 v3, v3, 0x1

    sget-object v1, Lcom/facebook/ads/redexgen/X/Gg;->A03:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x72

    if-eq v1, v0, :cond_8

    .line 35093
    sget-object v2, Lcom/facebook/ads/redexgen/X/Gg;->A03:[Ljava/lang/String;

    const-string v1, "MUneWXNcdAlNSRowmfvR1IxGYiDWc9sb"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "spbQLZInTj0TiAjfjFjRwJz0UWgh41nK"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 35094
    :cond_7
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 35095
    :cond_8
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 35096
    :cond_9
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A07()I

    move-result v0

    sub-int/2addr v3, v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/Gg;->A03:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x72

    if-eq v1, v0, :cond_a

    sget-object v2, Lcom/facebook/ads/redexgen/X/Gg;->A03:[Ljava/lang/String;

    const-string v1, "QGhzXG7i6Gf0GmpIuCXB3Grw891Iscrv"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/IM;->A0a(I)V

    .line 35097
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_a
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A04(Lcom/facebook/ads/redexgen/X/IM;Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 4

    .line 35098
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Gg;->A0B(Lcom/facebook/ads/redexgen/X/IM;)V

    .line 35099
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A05()I

    move-result v0

    if-nez v0, :cond_1

    .line 35100
    const/4 v3, 0x0

    sget-object v1, Lcom/facebook/ads/redexgen/X/Gg;->A03:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/4 v0, 0x5

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x71

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/Gg;->A03:[Ljava/lang/String;

    const-string v1, "UJDSzyzHIq3JQb6193A"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    return-object v3

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 35101
    :cond_1
    invoke-static {p0, p1}, Lcom/facebook/ads/redexgen/X/Gg;->A03(Lcom/facebook/ads/redexgen/X/IM;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v3

    .line 35102
    .local p0, "identifier":Ljava/lang/String;
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x3b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Gg;->A01(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 35103
    return-object v3

    .line 35104
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v0

    int-to-char v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static A05(Lcom/facebook/ads/redexgen/X/IM;Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 8

    .line 35105
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 35106
    .local p0, "expressionBuilder":Ljava/lang/StringBuilder;
    const/4 v7, 0x0

    .line 35107
    .local p1, "expressionEndFound":Z
    :goto_0
    if-nez v7, :cond_0

    .line 35108
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A07()I

    move-result v4

    .line 35109
    .local v5, "position":I
    invoke-static {p0, p1}, Lcom/facebook/ads/redexgen/X/Gg;->A04(Lcom/facebook/ads/redexgen/X/IM;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v3

    .line 35110
    .local v7, "token":Ljava/lang/String;
    if-nez v3, :cond_1

    .line 35111
    const/4 v0, 0x0

    return-object v0

    .line 35112
    .end local v5    # "position":I
    .end local v7    # "token":Ljava/lang/String;
    :cond_0
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/Gg;->A03:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0x9

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x56

    if-eq v1, v0, :cond_5

    goto :goto_1

    .line 35113
    :cond_1
    const/16 v6, 0x76

    sget-object v2, Lcom/facebook/ads/redexgen/X/Gg;->A03:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    :goto_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/Gg;->A03:[Ljava/lang/String;

    const-string v1, "nkMWfJrW6OJ076plzBjdeduX964j9I"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "UajezwrgOUWU88B2qwdJwv7AhPUqca"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const/4 v1, 0x1

    const/16 v0, 0x26

    invoke-static {v6, v1, v0}, Lcom/facebook/ads/redexgen/X/Gg;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const/16 v2, 0x8

    const/4 v1, 0x1

    const/16 v0, 0x1c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Gg;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 35114
    :cond_3
    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 35115
    const/4 v7, 0x1

    goto :goto_0

    .line 35116
    :cond_4
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_5
    sget-object v2, Lcom/facebook/ads/redexgen/X/Gg;->A03:[Ljava/lang/String;

    const-string v1, "IZD"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    return-object v3
.end method

.method public static A06(Lcom/facebook/ads/redexgen/X/IM;Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 6

    .line 35117
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Gg;->A0B(Lcom/facebook/ads/redexgen/X/IM;)V

    .line 35118
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A05()I

    move-result v1

    const/4 v0, 0x5

    const/4 v5, 0x0

    if-ge v1, v0, :cond_0

    .line 35119
    return-object v5

    .line 35120
    :cond_0
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0T(I)Ljava/lang/String;

    move-result-object v4

    .line 35121
    .local p0, "cueSelector":Ljava/lang/String;
    const/4 v3, 0x3

    sget-object v1, Lcom/facebook/ads/redexgen/X/Gg;->A03:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x72

    if-eq v1, v0, :cond_7

    sget-object v2, Lcom/facebook/ads/redexgen/X/Gg;->A03:[Ljava/lang/String;

    const-string v1, "2RVeug3vzvmohEQGnfVzdz1jaZ5H5Qkr"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const/4 v1, 0x5

    const/16 v0, 0x55

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/Gg;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 35122
    return-object v5

    .line 35123
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A07()I

    move-result v4

    .line 35124
    .local p1, "position":I
    invoke-static {p0, p1}, Lcom/facebook/ads/redexgen/X/Gg;->A04(Lcom/facebook/ads/redexgen/X/IM;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v3

    .line 35125
    .local v0, "token":Ljava/lang/String;
    if-nez v3, :cond_2

    .line 35126
    return-object v5

    .line 35127
    :cond_2
    const/16 v2, 0x75

    const/4 v1, 0x1

    const/16 v0, 0x6e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Gg;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 35128
    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 35129
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x3b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Gg;->A01(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 35130
    :cond_3
    const/4 v4, 0x0

    .line 35131
    .local v5, "target":Ljava/lang/String;
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v0, 0x75

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Gg;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 35132
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Gg;->A02(Lcom/facebook/ads/redexgen/X/IM;)Ljava/lang/String;

    move-result-object v4

    .line 35133
    :cond_4
    invoke-static {p0, p1}, Lcom/facebook/ads/redexgen/X/Gg;->A04(Lcom/facebook/ads/redexgen/X/IM;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v3

    .line 35134
    const/4 v2, 0x1

    const/4 v1, 0x1

    const/16 v0, 0x41

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Gg;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    if-nez v3, :cond_6

    .line 35135
    :cond_5
    return-object v5

    .line 35136
    :cond_6
    return-object v4

    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A07()V
    .locals 1

    const/16 v0, 0x77

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Gg;->A02:[B

    return-void

    :array_0
    .array-data 1
        0x1et
        0x2bt
        0x13t
        0x2ct
        0x2ct
        0x75t
        0x63t
        0x73t
        0x64t
        0x23t
        0x51t
        0x10t
        0x17t
        0x3at
        0x23t
        0x25t
        0x2ft
        0x29t
        0x71t
        0x6et
        0x64t
        0x17t
        0x12t
        0x6et
        0x11t
        0x66t
        0x65t
        0x6et
        0x10t
        0x11t
        0x4t
        0x7t
        0x5t
        0xdt
        0x1t
        0x14t
        0x9t
        0x13t
        0x8t
        0x2t
        0x4bt
        0x5t
        0x9t
        0xat
        0x9t
        0x14t
        0x15t
        0x18t
        0x1bt
        0x13t
        0x6bt
        0x67t
        0x64t
        0x67t
        0x7at
        0x59t
        0x50t
        0x51t
        0x4bt
        0x12t
        0x59t
        0x5et
        0x52t
        0x56t
        0x53t
        0x46t
        0x7bt
        0x72t
        0x73t
        0x69t
        0x30t
        0x6et
        0x69t
        0x64t
        0x71t
        0x78t
        0x6ft
        0x66t
        0x67t
        0x7dt
        0x24t
        0x7et
        0x6ct
        0x60t
        0x6et
        0x61t
        0x7dt
        0x11t
        0xct
        0x19t
        0x14t
        0x11t
        0x1bt
        0x1bt
        0xat
        0x17t
        0x1bt
        0x42t
        0xbt
        0xat
        0xct
        0x0t
        0x1dt
        0xet
        0x1bt
        0x6t
        0x0t
        0x1t
        0x43t
        0x58t
        0x52t
        0x53t
        0x44t
        0x5at
        0x5ft
        0x58t
        0x53t
        0x56t
        0x18t
    .end array-data
.end method

.method public static A08()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "nkk8BWYgoU5hiJGtcjQiHrzZoFshJWXq"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "b8vm7ffdNVbehoVTAD0oDhI3pNh1roOm"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "GlL6Htb15SNMpYrK3w3NTg"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "AHpCnHI4uAMx4puOjfzpclZJUIxcyY"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "DorhWHRI40RrXbDjAOpfSGjzNwyMPNvh"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "zgDHLZQsimrRQRiJ0qYkMEKqfvJwxo"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "aD0y8HCzF81m5uG1IeNvrxUoMBTuvpeD"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "oaZfQ7P9CaFEh3MSo011PF0k0SGzOJQw"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Gg;->A03:[Ljava/lang/String;

    return-void
.end method

.method private A09(Lcom/facebook/ads/redexgen/X/Gk;Ljava/lang/String;)V
    .locals 9

    .line 35137
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x3b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Gg;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35138
    return-void

    .line 35139
    :cond_0
    const/16 v0, 0x5b

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 35140
    .local p0, "voiceStartIndex":I
    const/4 v8, -0x1

    const/4 v5, 0x0

    const/4 v3, 0x1

    if-eq v4, v8, :cond_4

    .line 35141
    sget-object v6, Lcom/facebook/ads/redexgen/X/Gg;->A04:Ljava/util/regex/Pattern;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Gg;->A03:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0x9

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x56

    if-eq v1, v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/Gg;->A03:[Ljava/lang/String;

    const-string v1, "hb2tRPpzJ5Lfs6fqlvQruNIUdAFkzL"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "mjgbhqrUa0e9SnEXctav0y14Kzsb2I"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-virtual {p2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 35142
    .local v1, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 35143
    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/Gk;->A0L(Ljava/lang/String;)V

    .line 35144
    :cond_3
    invoke-virtual {p2, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 35145
    .end local v1    # "matcher":Ljava/util/regex/Matcher;
    :cond_4
    const/16 v2, 0x9

    const/4 v1, 0x2

    const/16 v0, 0x3c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Gg;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/facebook/ads/redexgen/X/Ic;->A0m(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 35146
    .local v1, "classDivision":[Ljava/lang/String;
    aget-object v7, v4, v5

    .line 35147
    .local v0, "tagAndIdDivision":Ljava/lang/String;
    const/16 v0, 0x23

    invoke-virtual {v7, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 35148
    .local v0, "idPrefixIndex":I
    if-eq v6, v8, :cond_6

    .line 35149
    invoke-virtual {v7, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    sget-object v1, Lcom/facebook/ads/redexgen/X/Gg;->A03:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x72

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Gg;->A03:[Ljava/lang/String;

    const-string v1, "YFvTi1fIKVjNgPzZpXUHRRPIrmJ6VSjn"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-virtual {p1, v5}, Lcom/facebook/ads/redexgen/X/Gk;->A0K(Ljava/lang/String;)V

    .line 35150
    add-int/lit8 v0, v6, 0x1

    invoke-virtual {v7, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/Gk;->A0J(Ljava/lang/String;)V

    .line 35151
    :goto_0
    array-length v0, v4

    if-le v0, v3, :cond_5

    .line 35152
    array-length v0, v4

    invoke-static {v4, v3, v0}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/Gk;->A0M([Ljava/lang/String;)V

    .line 35153
    :cond_5
    return-void

    .line 35154
    :cond_6
    invoke-virtual {p1, v7}, Lcom/facebook/ads/redexgen/X/Gk;->A0K(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static A0A(Lcom/facebook/ads/redexgen/X/IM;)V
    .locals 1

    .line 35155
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A0Q()Ljava/lang/String;

    move-result-object v0

    .line 35156
    .local p0, "line":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35157
    return-void
.end method

.method public static A0B(Lcom/facebook/ads/redexgen/X/IM;)V
    .locals 2

    .line 35158
    const/4 v0, 0x1

    .line 35159
    .local p0, "skipping":Z
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A05()I

    move-result v1

    if-lez v1, :cond_2

    if-eqz v0, :cond_2

    .line 35160
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Gg;->A0E(Lcom/facebook/ads/redexgen/X/IM;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Gg;->A0D(Lcom/facebook/ads/redexgen/X/IM;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 35161
    :cond_2
    return-void
.end method

.method public static A0C(Lcom/facebook/ads/redexgen/X/IM;Lcom/facebook/ads/redexgen/X/Gk;Ljava/lang/StringBuilder;)V
    .locals 7

    .line 35162
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Gg;->A0B(Lcom/facebook/ads/redexgen/X/IM;)V

    .line 35163
    invoke-static {p0, p2}, Lcom/facebook/ads/redexgen/X/Gg;->A03(Lcom/facebook/ads/redexgen/X/IM;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v5

    .line 35164
    .local p0, "property":Ljava/lang/String;
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x3b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Gg;->A01(III)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35165
    return-void

    .line 35166
    :cond_0
    invoke-static {p0, p2}, Lcom/facebook/ads/redexgen/X/Gg;->A04(Lcom/facebook/ads/redexgen/X/IM;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x2

    const/4 v1, 0x1

    const/16 v0, 0x6a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Gg;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 35167
    return-void

    .line 35168
    :cond_1
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Gg;->A0B(Lcom/facebook/ads/redexgen/X/IM;)V

    .line 35169
    invoke-static {p0, p2}, Lcom/facebook/ads/redexgen/X/Gg;->A05(Lcom/facebook/ads/redexgen/X/IM;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v3

    .line 35170
    .local p2, "value":Ljava/lang/String;
    if-eqz v3, :cond_2

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 35171
    .end local p1    # null:Lcom/facebook/ads/redexgen/X/Gk;
    .end local v5
    :cond_2
    return-void

    .line 35172
    :cond_3
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A07()I

    move-result v4

    .line 35173
    .local p1, "position":I
    invoke-static {p0, p2}, Lcom/facebook/ads/redexgen/X/Gg;->A04(Lcom/facebook/ads/redexgen/X/IM;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v6

    .line 35174
    .local v5, "token":Ljava/lang/String;
    const/16 v2, 0x8

    const/4 v1, 0x1

    const/16 v0, 0x1c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Gg;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 35175
    :goto_0
    const/16 v2, 0x32

    const/4 v1, 0x5

    const/16 v0, 0x4b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Gg;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 35176
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/I2;->A02(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/Gk;->A0D(I)Lcom/facebook/ads/redexgen/X/Gk;

    .line 35177
    :cond_4
    :goto_1
    return-void

    .line 35178
    :cond_5
    const/16 v2, 0x1e

    const/16 v1, 0x10

    const/16 v0, 0x25

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Gg;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 35179
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/I2;->A02(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/Gk;->A0C(I)Lcom/facebook/ads/redexgen/X/Gk;

    goto :goto_1

    .line 35180
    :cond_6
    const/16 v2, 0x5d

    const/16 v1, 0xf

    const/16 v0, 0x2c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Gg;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v4, 0x1

    if-eqz v0, :cond_7

    .line 35181
    const/16 v2, 0x6c

    const/16 v1, 0x9

    const/16 v0, 0x75

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Gg;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 35182
    invoke-virtual {p1, v4}, Lcom/facebook/ads/redexgen/X/Gk;->A0H(Z)Lcom/facebook/ads/redexgen/X/Gk;

    goto :goto_1

    .line 35183
    :cond_7
    const/16 v2, 0x37

    const/16 v1, 0xb

    const/16 v0, 0x7c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Gg;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 35184
    invoke-virtual {p1, v3}, Lcom/facebook/ads/redexgen/X/Gk;->A0E(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Gk;

    goto :goto_1

    .line 35185
    :cond_8
    const/16 p0, 0x4c

    const/16 v6, 0xb

    sget-object v2, Lcom/facebook/ads/redexgen/X/Gg;->A03:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v2, v2, v0

    const/16 v0, 0xe

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_b

    sget-object v2, Lcom/facebook/ads/redexgen/X/Gg;->A03:[Ljava/lang/String;

    const-string v1, "sT3BRFiuuvD8DdSG"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const/16 v0, 0x4a

    invoke-static {p0, v6, v0}, Lcom/facebook/ads/redexgen/X/Gg;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 35186
    const/16 v2, 0x2e

    const/4 v1, 0x4

    const/16 v0, 0x34

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Gg;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 35187
    invoke-virtual {p1, v4}, Lcom/facebook/ads/redexgen/X/Gk;->A0F(Z)Lcom/facebook/ads/redexgen/X/Gk;

    goto/16 :goto_1

    .line 35188
    :cond_9
    const/16 v2, 0x42

    const/16 v1, 0xa

    const/16 v0, 0x5e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Gg;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 35189
    const/16 v2, 0x57

    const/4 v1, 0x6

    const/16 v0, 0x3b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Gg;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 35190
    invoke-virtual {p1, v4}, Lcom/facebook/ads/redexgen/X/Gk;->A0G(Z)Lcom/facebook/ads/redexgen/X/Gk;

    goto/16 :goto_1

    .line 35191
    :cond_a
    const/16 v2, 0x76

    const/4 v1, 0x1

    const/16 v0, 0x26

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Gg;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 35192
    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    goto/16 :goto_0

    :cond_b
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 35193
    :cond_c
    return-void
.end method

.method public static A0D(Lcom/facebook/ads/redexgen/X/IM;)Z
    .locals 7

    .line 35194
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A07()I

    move-result v3

    .line 35195
    .local p0, "position":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A08()I

    move-result v1

    .line 35196
    .local v3, "limit":I
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    .line 35197
    .local v1, "data":[B
    add-int/lit8 v0, v3, 0x2

    if-gt v0, v1, :cond_2

    add-int/lit8 v2, v3, 0x1

    .end local p0    # "position":I
    .local v6, "position":I
    aget-byte v0, v6, v3

    const/16 v5, 0x2f

    if-ne v0, v5, :cond_2

    add-int/lit8 v4, v2, 0x1

    .end local v6    # "position":I
    .restart local p0    # "position":I
    aget-byte v0, v6, v2

    const/16 v3, 0x2a

    if-ne v0, v3, :cond_2

    .line 35198
    :goto_0
    add-int/lit8 v0, v4, 0x1

    if-ge v0, v1, :cond_1

    .line 35199
    add-int/lit8 v2, v4, 0x1

    .end local p0    # "position":I
    .restart local v6    # "position":I
    aget-byte v0, v6, v4

    int-to-char v0, v0

    .line 35200
    .local p0, "skippedChar":C
    if-ne v0, v3, :cond_0

    .line 35201
    aget-byte v0, v6, v2

    int-to-char v0, v0

    if-ne v0, v5, :cond_0

    .line 35202
    add-int/lit8 v1, v2, 0x1

    .line 35203
    move v4, v1

    goto :goto_0

    .line 35204
    .end local p0    # "skippedChar":C
    :cond_0
    move v4, v2

    goto :goto_0

    .line 35205
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A07()I

    move-result v0

    sub-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/IM;->A0a(I)V

    .line 35206
    const/4 v0, 0x1

    return v0

    .line 35207
    .end local v6    # "position":I
    .restart local p0    # "skippedChar":C
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public static A0E(Lcom/facebook/ads/redexgen/X/IM;)Z
    .locals 2

    .line 35208
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A07()I

    move-result v0

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/Gg;->A00(Lcom/facebook/ads/redexgen/X/IM;I)C

    move-result v1

    const/16 v0, 0x9

    if-eq v1, v0, :cond_0

    const/16 v0, 0xa

    if-eq v1, v0, :cond_0

    const/16 v0, 0xc

    if-eq v1, v0, :cond_0

    const/16 v0, 0xd

    if-eq v1, v0, :cond_0

    const/16 v0, 0x20

    if-eq v1, v0, :cond_0

    .line 35209
    const/4 v0, 0x0

    return v0

    .line 35210
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0a(I)V

    .line 35211
    return v0
.end method


# virtual methods
.method public final A0F(Lcom/facebook/ads/redexgen/X/IM;)Lcom/facebook/ads/redexgen/X/Gk;
    .locals 8

    .line 35212
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Gg;->A01:Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 35213
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IM;->A07()I

    move-result v3

    .line 35214
    .local p0, "initialInputPosition":I
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Gg;->A0A(Lcom/facebook/ads/redexgen/X/IM;)V

    .line 35215
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Gg;->A00:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v1, p1, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IM;->A07()I

    move-result v0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0c([BI)V

    .line 35216
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gg;->A00:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 35217
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Gg;->A00:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gg;->A01:Ljava/lang/StringBuilder;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Gg;->A06(Lcom/facebook/ads/redexgen/X/IM;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v4

    .line 35218
    .local v1, "selector":Ljava/lang/String;
    const/4 v7, 0x0

    if-eqz v4, :cond_0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Gg;->A00:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gg;->A01:Ljava/lang/StringBuilder;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Gg;->A04(Lcom/facebook/ads/redexgen/X/IM;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x75

    const/4 v1, 0x1

    const/16 v0, 0x6e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Gg;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 35219
    .end local v3
    .end local v2
    .end local v1    # "selector":Ljava/lang/String;
    :cond_0
    return-object v7

    .line 35220
    :cond_1
    new-instance v5, Lcom/facebook/ads/redexgen/X/Gk;

    invoke-direct {v5}, Lcom/facebook/ads/redexgen/X/Gk;-><init>()V

    .line 35221
    .local v3, "style":Lcom/facebook/ads/redexgen/X/Gk;
    invoke-direct {p0, v5, v4}, Lcom/facebook/ads/redexgen/X/Gg;->A09(Lcom/facebook/ads/redexgen/X/Gk;Ljava/lang/String;)V

    .line 35222
    const/4 v6, 0x0

    .line 35223
    .local v2, "token":Ljava/lang/String;
    const/4 v2, 0x0

    .line 35224
    .local v1, "blockEndFound":Z
    :cond_2
    :goto_0
    const/16 v3, 0x76

    const/4 v1, 0x1

    const/16 v0, 0x26

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/Gg;->A01(III)Ljava/lang/String;

    move-result-object v4

    if-nez v2, :cond_5

    .line 35225
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gg;->A00:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A07()I

    move-result v3

    .line 35226
    .local v0, "position":I
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Gg;->A00:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gg;->A01:Ljava/lang/StringBuilder;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Gg;->A04(Lcom/facebook/ads/redexgen/X/IM;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v6

    .line 35227
    if-eqz v6, :cond_3

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    const/4 v2, 0x1

    .line 35228
    :goto_1
    if-nez v2, :cond_2

    .line 35229
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gg;->A00:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 35230
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Gg;->A00:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gg;->A01:Ljava/lang/StringBuilder;

    invoke-static {v1, v5, v0}, Lcom/facebook/ads/redexgen/X/Gg;->A0C(Lcom/facebook/ads/redexgen/X/IM;Lcom/facebook/ads/redexgen/X/Gk;Ljava/lang/StringBuilder;)V

    goto :goto_0

    .line 35231
    :cond_4
    const/4 v2, 0x0

    goto :goto_1

    .line 35232
    :cond_5
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    move-object v7, v5

    :cond_6
    return-object v7
.end method
