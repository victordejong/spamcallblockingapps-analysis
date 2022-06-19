.class public final Lcom/facebook/ads/redexgen/X/Uz;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/DM;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/DQ;
    }
.end annotation


# static fields
.field public static A0E:[B

.field public static A0F:[Ljava/lang/String;


# instance fields
.field public A00:J

.field public A01:J

.field public A02:Lcom/facebook/ads/redexgen/X/CS;

.field public A03:Lcom/facebook/ads/redexgen/X/DQ;

.field public A04:Ljava/lang/String;

.field public A05:Z

.field public final A06:Lcom/facebook/ads/redexgen/X/DS;

.field public final A07:Lcom/facebook/ads/redexgen/X/DS;

.field public final A08:Lcom/facebook/ads/redexgen/X/DS;

.field public final A09:Lcom/facebook/ads/redexgen/X/DV;

.field public final A0A:Lcom/facebook/ads/redexgen/X/IM;

.field public final A0B:Z

.field public final A0C:Z

.field public final A0D:[Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Uz;->A02()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Uz;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/DV;ZZ)V
    .locals 3

    .line 58126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58127
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Uz;->A09:Lcom/facebook/ads/redexgen/X/DV;

    .line 58128
    iput-boolean p2, p0, Lcom/facebook/ads/redexgen/X/Uz;->A0B:Z

    .line 58129
    iput-boolean p3, p0, Lcom/facebook/ads/redexgen/X/Uz;->A0C:Z

    .line 58130
    const/4 v0, 0x3

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Uz;->A0D:[Z

    .line 58131
    const/16 v2, 0x80

    const/4 v1, 0x7

    new-instance v0, Lcom/facebook/ads/redexgen/X/DS;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/DS;-><init>(II)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Uz;->A08:Lcom/facebook/ads/redexgen/X/DS;

    .line 58132
    const/16 v1, 0x8

    new-instance v0, Lcom/facebook/ads/redexgen/X/DS;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/DS;-><init>(II)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Uz;->A06:Lcom/facebook/ads/redexgen/X/DS;

    .line 58133
    const/4 v1, 0x6

    new-instance v0, Lcom/facebook/ads/redexgen/X/DS;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/DS;-><init>(II)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Uz;->A07:Lcom/facebook/ads/redexgen/X/DS;

    .line 58134
    new-instance v0, Lcom/facebook/ads/redexgen/X/IM;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/IM;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Uz;->A0A:Lcom/facebook/ads/redexgen/X/IM;

    .line 58135
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Uz;->A0E:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x3e

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

    const/16 v0, 0x9

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Uz;->A0E:[B

    return-void

    :array_0
    .array-data 1
        0x1et
        0x11t
        0xct
        0xdt
        0x17t
        -0x29t
        0x9t
        0x1et
        0xbt
    .end array-data
.end method

.method public static A02()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "ihWvmo2iO5FG"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "SiSp9O017MJC"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "zO6rIqa1Ww7KBfoqhoINDkwAsZG4"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "K8GK5y8tLzlSJCeNP5vD"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "Q6wCrBC5VLD3X09MeOwX1OousY9ieHiU"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "hM8KxZjWM0LDkoQAVcV2feeZwy"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "j6XjyueGHsJ0BNz3T4o18kzVQ3nZ9RIg"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "cFiwLPwYYTVcgXyqBH8Yk7MMzgCs"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Uz;->A0F:[Ljava/lang/String;

    return-void
.end method

.method private A03(JIIJ)V
    .locals 24

    .line 58136
    move-object/from16 v6, p0

    iget-boolean v0, v6, Lcom/facebook/ads/redexgen/X/Uz;->A05:Z

    move/from16 v7, p4

    if-eqz v0, :cond_1

    iget-object v3, v6, Lcom/facebook/ads/redexgen/X/Uz;->A03:Lcom/facebook/ads/redexgen/X/DQ;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Uz;->A0F:[Ljava/lang/String;

    const/4 v0, 0x0

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
    sget-object v2, Lcom/facebook/ads/redexgen/X/Uz;->A0F:[Ljava/lang/String;

    const-string v1, "CHjTFpb3uVoa4vpaV7ee1b5pEM"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/DQ;->A08()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 58137
    :cond_1
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/Uz;->A08:Lcom/facebook/ads/redexgen/X/DS;

    invoke-virtual {v0, v7}, Lcom/facebook/ads/redexgen/X/DS;->A05(I)Z

    .line 58138
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/Uz;->A06:Lcom/facebook/ads/redexgen/X/DS;

    invoke-virtual {v0, v7}, Lcom/facebook/ads/redexgen/X/DS;->A05(I)Z

    .line 58139
    iget-boolean v0, v6, Lcom/facebook/ads/redexgen/X/Uz;->A05:Z

    const/4 v3, 0x3

    if-nez v0, :cond_5

    .line 58140
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/Uz;->A08:Lcom/facebook/ads/redexgen/X/DS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/DS;->A04()Z

    move-result v4

    sget-object v2, Lcom/facebook/ads/redexgen/X/Uz;->A0F:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/Uz;->A0F:[Ljava/lang/String;

    const-string v1, "0rdYSNYufJuZFc4vBBSeqBBxg6kgQjyj"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "nCqt3cKWOT8TkuA6LVSg2uwOUiWHddOS"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-eqz v4, :cond_2

    :goto_0
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/Uz;->A06:Lcom/facebook/ads/redexgen/X/DS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/DS;->A04()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 58141
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 58142
    .local v2, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/Uz;->A08:Lcom/facebook/ads/redexgen/X/DS;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/DS;->A01:[B

    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/Uz;->A08:Lcom/facebook/ads/redexgen/X/DS;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/DS;->A00:I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58143
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/Uz;->A06:Lcom/facebook/ads/redexgen/X/DS;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/DS;->A01:[B

    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/Uz;->A06:Lcom/facebook/ads/redexgen/X/DS;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/DS;->A00:I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58144
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/Uz;->A08:Lcom/facebook/ads/redexgen/X/DS;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/DS;->A01:[B

    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/Uz;->A08:Lcom/facebook/ads/redexgen/X/DS;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/DS;->A00:I

    invoke-static {v1, v3, v0}, Lcom/facebook/ads/redexgen/X/II;->A06([BII)Lcom/facebook/ads/redexgen/X/IH;

    move-result-object v4

    .line 58145
    .local v0, "spsData":Lcom/facebook/ads/redexgen/X/IH;
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/Uz;->A06:Lcom/facebook/ads/redexgen/X/DS;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/DS;->A01:[B

    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/Uz;->A06:Lcom/facebook/ads/redexgen/X/DS;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/DS;->A00:I

    invoke-static {v1, v3, v0}, Lcom/facebook/ads/redexgen/X/II;->A05([BII)Lcom/facebook/ads/redexgen/X/IG;

    move-result-object v3

    .line 58146
    .local v1, "ppsData":Lcom/facebook/ads/redexgen/X/IG;
    iget-object v2, v6, Lcom/facebook/ads/redexgen/X/Uz;->A02:Lcom/facebook/ads/redexgen/X/CS;

    iget-object v12, v6, Lcom/facebook/ads/redexgen/X/Uz;->A04:Ljava/lang/String;

    const/4 v14, 0x0

    const/4 v15, -0x1

    const/16 v16, -0x1

    iget v11, v4, Lcom/facebook/ads/redexgen/X/IH;->A06:I

    iget v10, v4, Lcom/facebook/ads/redexgen/X/IH;->A02:I

    const/high16 v19, -0x40800000    # -1.0f

    const/16 v21, -0x1

    iget v9, v4, Lcom/facebook/ads/redexgen/X/IH;->A00:F

    const/16 v23, 0x0

    .line 58147
    const/4 v8, 0x0

    const/16 v1, 0x9

    const/16 v0, 0x6a

    invoke-static {v8, v1, v0}, Lcom/facebook/ads/redexgen/X/Uz;->A00(III)Ljava/lang/String;

    move-result-object v13

    .end local v0    # "spsData":Lcom/facebook/ads/redexgen/X/IH;
    .local v2, "spsData":Lcom/facebook/ads/redexgen/X/IH;
    .local v0, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    move/from16 v22, v9

    move-object/from16 v20, v5

    move/from16 v18, v10

    move/from16 v17, v11

    invoke-static/range {v12 .. v23}, Lcom/facebook/ads/internal/exoplayer2/Format;->A03(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;IFLcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;)Lcom/facebook/ads/internal/exoplayer2/Format;

    move-result-object v0

    .line 58148
    invoke-interface {v2, v0}, Lcom/facebook/ads/redexgen/X/CS;->A5P(Lcom/facebook/ads/internal/exoplayer2/Format;)V

    .line 58149
    const/4 v0, 0x1

    iput-boolean v0, v6, Lcom/facebook/ads/redexgen/X/Uz;->A05:Z

    .line 58150
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/Uz;->A03:Lcom/facebook/ads/redexgen/X/DQ;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/DQ;->A06(Lcom/facebook/ads/redexgen/X/IH;)V

    .line 58151
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/Uz;->A03:Lcom/facebook/ads/redexgen/X/DQ;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/DQ;->A05(Lcom/facebook/ads/redexgen/X/IG;)V

    .line 58152
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/Uz;->A08:Lcom/facebook/ads/redexgen/X/DS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/DS;->A01()V

    .line 58153
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/Uz;->A06:Lcom/facebook/ads/redexgen/X/DS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/DS;->A01()V

    .line 58154
    .end local v2    # "spsData":Lcom/facebook/ads/redexgen/X/IH;
    .end local v1    # "ppsData":Lcom/facebook/ads/redexgen/X/IG;
    .end local v0    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    :cond_2
    :goto_1
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/Uz;->A07:Lcom/facebook/ads/redexgen/X/DS;

    invoke-virtual {v0, v7}, Lcom/facebook/ads/redexgen/X/DS;->A05(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 58155
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/Uz;->A07:Lcom/facebook/ads/redexgen/X/DS;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/DS;->A01:[B

    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/Uz;->A07:Lcom/facebook/ads/redexgen/X/DS;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/DS;->A00:I

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/II;->A02([BI)I

    move-result v2

    .line 58156
    .local v2, "unescapedLength":I
    iget-object v1, v6, Lcom/facebook/ads/redexgen/X/Uz;->A0A:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/Uz;->A07:Lcom/facebook/ads/redexgen/X/DS;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/DS;->A01:[B

    invoke-virtual {v1, v0, v2}, Lcom/facebook/ads/redexgen/X/IM;->A0c([BI)V

    .line 58157
    iget-object v1, v6, Lcom/facebook/ads/redexgen/X/Uz;->A0A:Lcom/facebook/ads/redexgen/X/IM;

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 58158
    iget-object v1, v6, Lcom/facebook/ads/redexgen/X/Uz;->A09:Lcom/facebook/ads/redexgen/X/DV;

    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/Uz;->A0A:Lcom/facebook/ads/redexgen/X/IM;

    move-wide/from16 v2, p5

    invoke-virtual {v1, v2, v3, v0}, Lcom/facebook/ads/redexgen/X/DV;->A03(JLcom/facebook/ads/redexgen/X/IM;)V

    .line 58159
    :cond_3
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/Uz;->A03:Lcom/facebook/ads/redexgen/X/DQ;

    move/from16 v1, p3

    move-wide/from16 v2, p1

    invoke-virtual {v0, v2, v3, v1}, Lcom/facebook/ads/redexgen/X/DQ;->A03(JI)V

    .line 58160
    return-void

    :cond_4
    sget-object v2, Lcom/facebook/ads/redexgen/X/Uz;->A0F:[Ljava/lang/String;

    const-string v1, "0O0V9DeFi1Bf"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "3TOIMChk8tvL"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-eqz v4, :cond_2

    goto/16 :goto_0

    .line 58161
    :cond_5
    iget-object v4, v6, Lcom/facebook/ads/redexgen/X/Uz;->A08:Lcom/facebook/ads/redexgen/X/DS;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Uz;->A0F:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x19

    if-eq v1, v0, :cond_6

    sget-object v2, Lcom/facebook/ads/redexgen/X/Uz;->A0F:[Ljava/lang/String;

    const-string v1, "gDWaHanRkkJt"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "0ns5XiA9VPmk"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/DS;->A04()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 58162
    :goto_2
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/Uz;->A08:Lcom/facebook/ads/redexgen/X/DS;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/DS;->A01:[B

    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/Uz;->A08:Lcom/facebook/ads/redexgen/X/DS;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/DS;->A00:I

    invoke-static {v1, v3, v0}, Lcom/facebook/ads/redexgen/X/II;->A06([BII)Lcom/facebook/ads/redexgen/X/IH;

    move-result-object v1

    .line 58163
    .restart local v2    # "unescapedLength":I
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/Uz;->A03:Lcom/facebook/ads/redexgen/X/DQ;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/DQ;->A06(Lcom/facebook/ads/redexgen/X/IH;)V

    .line 58164
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/Uz;->A08:Lcom/facebook/ads/redexgen/X/DS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/DS;->A01()V

    .end local v2    # "unescapedLength":I
    goto :goto_1

    :cond_6
    sget-object v2, Lcom/facebook/ads/redexgen/X/Uz;->A0F:[Ljava/lang/String;

    const-string v1, "IKN4aM9HLoQnDy3ijKF"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/DS;->A04()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_2

    .line 58165
    :cond_7
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/Uz;->A06:Lcom/facebook/ads/redexgen/X/DS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/DS;->A04()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 58166
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/Uz;->A06:Lcom/facebook/ads/redexgen/X/DS;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/DS;->A01:[B

    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/Uz;->A06:Lcom/facebook/ads/redexgen/X/DS;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/DS;->A00:I

    invoke-static {v1, v3, v0}, Lcom/facebook/ads/redexgen/X/II;->A05([BII)Lcom/facebook/ads/redexgen/X/IG;

    move-result-object v1

    .line 58167
    .local v2, "ppsData":Lcom/facebook/ads/redexgen/X/IG;
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/Uz;->A03:Lcom/facebook/ads/redexgen/X/DQ;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/DQ;->A05(Lcom/facebook/ads/redexgen/X/IG;)V

    .line 58168
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/Uz;->A06:Lcom/facebook/ads/redexgen/X/DS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/DS;->A01()V

    goto/16 :goto_1
.end method

.method private A04(JIJ)V
    .locals 7

    .line 58169
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Uz;->A05:Z

    move v4, p3

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Uz;->A03:Lcom/facebook/ads/redexgen/X/DQ;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Uz;->A0F:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x19

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/Uz;->A0F:[Ljava/lang/String;

    const-string v1, "aYHjr9THxD0jKQp8B"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/DQ;->A08()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 58170
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uz;->A08:Lcom/facebook/ads/redexgen/X/DS;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/DS;->A02(I)V

    .line 58171
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uz;->A06:Lcom/facebook/ads/redexgen/X/DS;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/DS;->A02(I)V

    .line 58172
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uz;->A07:Lcom/facebook/ads/redexgen/X/DS;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/DS;->A02(I)V

    .line 58173
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Uz;->A03:Lcom/facebook/ads/redexgen/X/DQ;

    move-wide v5, p4

    move-wide v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/facebook/ads/redexgen/X/DQ;->A04(JIJ)V

    .line 58174
    return-void

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A05([BII)V
    .locals 4

    .line 58175
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Uz;->A05:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uz;->A03:Lcom/facebook/ads/redexgen/X/DQ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/DQ;->A08()Z

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Uz;->A0F:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v2, v2, v0

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/Uz;->A0F:[Ljava/lang/String;

    const-string v1, "LXl4pII12twP"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "NJAveITnuIUq"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-eqz v3, :cond_1

    .line 58176
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uz;->A08:Lcom/facebook/ads/redexgen/X/DS;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/DS;->A03([BII)V

    .line 58177
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Uz;->A06:Lcom/facebook/ads/redexgen/X/DS;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Uz;->A0F:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v2, v2, v0

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/Uz;->A0F:[Ljava/lang/String;

    const-string v1, "taLlowgig4fCLgy20g6UHGGYqabkESNB"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "ZmKSfcDQBKPkz1XLqinMFK3zGGPxr7WS"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-virtual {v3, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/DS;->A03([BII)V

    .line 58178
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uz;->A07:Lcom/facebook/ads/redexgen/X/DS;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/DS;->A03([BII)V

    .line 58179
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uz;->A03:Lcom/facebook/ads/redexgen/X/DQ;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/DQ;->A07([BII)V

    .line 58180
    return-void

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method


# virtual methods
.method public final A45(Lcom/facebook/ads/redexgen/X/IM;)V
    .locals 16

    .line 58181
    move-object/from16 v5, p0

    move-object/from16 v2, p1

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/IM;->A07()I

    move-result v8

    .line 58182
    .local p0, "offset":I
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/IM;->A08()I

    move-result v4

    .line 58183
    .local v0, "limit":I
    iget-object v3, v2, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    .line 58184
    .local v0, "dataArray":[B
    iget-wide v6, v5, Lcom/facebook/ads/redexgen/X/Uz;->A01:J

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/IM;->A05()I

    move-result v0

    int-to-long v0, v0

    add-long/2addr v6, v0

    iput-wide v6, v5, Lcom/facebook/ads/redexgen/X/Uz;->A01:J

    .line 58185
    iget-object v1, v5, Lcom/facebook/ads/redexgen/X/Uz;->A02:Lcom/facebook/ads/redexgen/X/CS;

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/IM;->A05()I

    move-result v0

    invoke-interface {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/CS;->ADS(Lcom/facebook/ads/redexgen/X/IM;I)V

    .line 58186
    .end local p0    # "offset":I
    .local v11, "offset":I
    :goto_0
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/Uz;->A0D:[Z

    invoke-static {v3, v8, v4, v0}, Lcom/facebook/ads/redexgen/X/II;->A04([BII[Z)I

    move-result v2

    .line 58187
    .local v6, "nalUnitOffset":I
    if-ne v2, v4, :cond_0

    .line 58188
    invoke-direct {v5, v3, v8, v4}, Lcom/facebook/ads/redexgen/X/Uz;->A05([BII)V

    .line 58189
    return-void

    .line 58190
    :cond_0
    invoke-static {v3, v2}, Lcom/facebook/ads/redexgen/X/II;->A01([BI)I

    move-result v13

    .line 58191
    .local v13, "nalUnitType":I
    sub-int v6, v2, v8

    .line 58192
    .local v1, "lengthToNalUnit":I
    if-lez v6, :cond_1

    .line 58193
    invoke-direct {v5, v3, v8, v2}, Lcom/facebook/ads/redexgen/X/Uz;->A05([BII)V

    .line 58194
    :cond_1
    sub-int v9, v4, v2

    .line 58195
    .local v0, "bytesWrittenPastPosition":I
    iget-wide v7, v5, Lcom/facebook/ads/redexgen/X/Uz;->A01:J

    int-to-long v0, v9

    sub-long/2addr v7, v0

    .line 58196
    .local v8, "absolutePosition":J
    if-gez v6, :cond_2

    neg-int v10, v6

    sget-object v1, Lcom/facebook/ads/redexgen/X/Uz;->A0F:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xc

    if-eq v1, v0, :cond_3

    sget-object v6, Lcom/facebook/ads/redexgen/X/Uz;->A0F:[Ljava/lang/String;

    const-string v1, "9ua44"

    const/4 v0, 0x3

    aput-object v1, v6, v0

    :goto_1
    iget-wide v11, v5, Lcom/facebook/ads/redexgen/X/Uz;->A00:J

    .line 58197
    move-object/from16 v6, p0

    invoke-direct/range {v6 .. v12}, Lcom/facebook/ads/redexgen/X/Uz;->A03(JIIJ)V

    .line 58198
    iget-wide v0, v5, Lcom/facebook/ads/redexgen/X/Uz;->A00:J

    move-object v10, v6

    move-wide v11, v7

    move-wide v14, v0

    invoke-direct/range {v10 .. v15}, Lcom/facebook/ads/redexgen/X/Uz;->A04(JIJ)V

    .line 58199
    add-int/lit8 v8, v2, 0x3

    .line 58200
    .end local v6    # "nalUnitOffset":I
    .end local v13    # "nalUnitType":I
    .end local v1    # "lengthToNalUnit":I
    .end local v0    # "bytesWrittenPastPosition":I
    .end local v8    # "absolutePosition":J
    goto :goto_0

    .line 58201
    :cond_2
    const/4 v10, 0x0

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A4S(Lcom/facebook/ads/redexgen/X/CI;Lcom/facebook/ads/redexgen/X/Da;)V
    .locals 4

    .line 58202
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Da;->A05()V

    .line 58203
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Da;->A04()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Uz;->A04:Ljava/lang/String;

    .line 58204
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Da;->A03()I

    move-result v1

    const/4 v0, 0x2

    invoke-interface {p1, v1, v0}, Lcom/facebook/ads/redexgen/X/CI;->AEO(II)Lcom/facebook/ads/redexgen/X/CS;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Uz;->A02:Lcom/facebook/ads/redexgen/X/CS;

    .line 58205
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Uz;->A02:Lcom/facebook/ads/redexgen/X/CS;

    iget-boolean v2, p0, Lcom/facebook/ads/redexgen/X/Uz;->A0B:Z

    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Uz;->A0C:Z

    new-instance v0, Lcom/facebook/ads/redexgen/X/DQ;

    invoke-direct {v0, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/DQ;-><init>(Lcom/facebook/ads/redexgen/X/CS;ZZ)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Uz;->A03:Lcom/facebook/ads/redexgen/X/DQ;

    .line 58206
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uz;->A09:Lcom/facebook/ads/redexgen/X/DV;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/DV;->A04(Lcom/facebook/ads/redexgen/X/CI;Lcom/facebook/ads/redexgen/X/Da;)V

    .line 58207
    return-void
.end method

.method public final ACI()V
    .locals 0

    .line 58208
    return-void
.end method

.method public final ACJ(JZ)V
    .locals 0

    .line 58209
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/Uz;->A00:J

    .line 58210
    return-void
.end method

.method public final ADW()V
    .locals 2

    .line 58211
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uz;->A0D:[Z

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/II;->A0C([Z)V

    .line 58212
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uz;->A08:Lcom/facebook/ads/redexgen/X/DS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/DS;->A01()V

    .line 58213
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uz;->A06:Lcom/facebook/ads/redexgen/X/DS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/DS;->A01()V

    .line 58214
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uz;->A07:Lcom/facebook/ads/redexgen/X/DS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/DS;->A01()V

    .line 58215
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uz;->A03:Lcom/facebook/ads/redexgen/X/DQ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/DQ;->A02()V

    .line 58216
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Uz;->A01:J

    .line 58217
    return-void
.end method
