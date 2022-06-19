.class public final Lcom/facebook/ads/redexgen/X/Zc;
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

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Zc;->A02()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Zc;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/DV;ZZ)V
    .locals 3

    .line 65184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65185
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Zc;->A09:Lcom/facebook/ads/redexgen/X/DV;

    .line 65186
    iput-boolean p2, p0, Lcom/facebook/ads/redexgen/X/Zc;->A0B:Z

    .line 65187
    iput-boolean p3, p0, Lcom/facebook/ads/redexgen/X/Zc;->A0C:Z

    .line 65188
    const/4 v0, 0x3

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Zc;->A0D:[Z

    .line 65189
    const/16 v2, 0x80

    const/4 v1, 0x7

    new-instance v0, Lcom/facebook/ads/redexgen/X/DS;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/DS;-><init>(II)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Zc;->A08:Lcom/facebook/ads/redexgen/X/DS;

    .line 65190
    const/16 v1, 0x8

    new-instance v0, Lcom/facebook/ads/redexgen/X/DS;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/DS;-><init>(II)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Zc;->A06:Lcom/facebook/ads/redexgen/X/DS;

    .line 65191
    const/4 v1, 0x6

    new-instance v0, Lcom/facebook/ads/redexgen/X/DS;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/DS;-><init>(II)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Zc;->A07:Lcom/facebook/ads/redexgen/X/DS;

    .line 65192
    new-instance v0, Lcom/facebook/ads/redexgen/X/IM;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/IM;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Zc;->A0A:Lcom/facebook/ads/redexgen/X/IM;

    .line 65193
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Zc;->A0E:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x34

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

    sput-object v0, Lcom/facebook/ads/redexgen/X/Zc;->A0E:[B

    return-void

    :array_0
    .array-data 1
        0x25t
        0x3at
        0x37t
        0x36t
        0x3ct
        0x7ct
        0x32t
        0x25t
        0x30t
    .end array-data
.end method

.method public static A02()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "OaAtDjibDffMS"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "aj2yyuicdEn8dhTDbWTrD1WtuleVGPEx"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "a3NvGU2CXdpQvxvcysdReyA6yUgKGJjf"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "4BBSavRiCGZis8TiCNo6nDJqjRzxnCkr"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "3Isw3BGBXoN1VbjlJcagr5xDVNXHwLpI"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "HfhncQp7sGaDAl"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "zNtUp"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "pzzsrx2QpEHePoyNV"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Zc;->A0F:[Ljava/lang/String;

    return-void
.end method

.method private A03(JIIJ)V
    .locals 24

    .line 65194
    move-object/from16 v6, p0

    iget-boolean v0, v6, Lcom/facebook/ads/redexgen/X/Zc;->A05:Z

    move/from16 v7, p4

    if-eqz v0, :cond_0

    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/Zc;->A03:Lcom/facebook/ads/redexgen/X/DQ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/DQ;->A08()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 65195
    :cond_0
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/Zc;->A08:Lcom/facebook/ads/redexgen/X/DS;

    invoke-virtual {v0, v7}, Lcom/facebook/ads/redexgen/X/DS;->A05(I)Z

    .line 65196
    iget-object v3, v6, Lcom/facebook/ads/redexgen/X/Zc;->A06:Lcom/facebook/ads/redexgen/X/DS;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Zc;->A0F:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_7

    sget-object v2, Lcom/facebook/ads/redexgen/X/Zc;->A0F:[Ljava/lang/String;

    const-string v1, "yEUIS2SJoSKiyXNZ5S9V3xqSna0x8qYs"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-virtual {v3, v7}, Lcom/facebook/ads/redexgen/X/DS;->A05(I)Z

    .line 65197
    iget-boolean v0, v6, Lcom/facebook/ads/redexgen/X/Zc;->A05:Z

    const/4 v3, 0x3

    if-nez v0, :cond_4

    .line 65198
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/Zc;->A08:Lcom/facebook/ads/redexgen/X/DS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/DS;->A04()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/Zc;->A06:Lcom/facebook/ads/redexgen/X/DS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/DS;->A04()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 65199
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 65200
    .local v2, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/Zc;->A08:Lcom/facebook/ads/redexgen/X/DS;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/DS;->A01:[B

    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/Zc;->A08:Lcom/facebook/ads/redexgen/X/DS;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/DS;->A00:I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65201
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/Zc;->A06:Lcom/facebook/ads/redexgen/X/DS;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/DS;->A01:[B

    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/Zc;->A06:Lcom/facebook/ads/redexgen/X/DS;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/DS;->A00:I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65202
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/Zc;->A08:Lcom/facebook/ads/redexgen/X/DS;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/DS;->A01:[B

    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/Zc;->A08:Lcom/facebook/ads/redexgen/X/DS;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/DS;->A00:I

    invoke-static {v1, v3, v0}, Lcom/facebook/ads/redexgen/X/II;->A06([BII)Lcom/facebook/ads/redexgen/X/IH;

    move-result-object v4

    .line 65203
    .local v0, "spsData":Lcom/facebook/ads/redexgen/X/IH;
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/Zc;->A06:Lcom/facebook/ads/redexgen/X/DS;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/DS;->A01:[B

    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/Zc;->A06:Lcom/facebook/ads/redexgen/X/DS;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/DS;->A00:I

    invoke-static {v1, v3, v0}, Lcom/facebook/ads/redexgen/X/II;->A05([BII)Lcom/facebook/ads/redexgen/X/IG;

    move-result-object v3

    .line 65204
    .local v1, "ppsData":Lcom/facebook/ads/redexgen/X/IG;
    iget-object v2, v6, Lcom/facebook/ads/redexgen/X/Zc;->A02:Lcom/facebook/ads/redexgen/X/CS;

    iget-object v12, v6, Lcom/facebook/ads/redexgen/X/Zc;->A04:Ljava/lang/String;

    const/4 v14, 0x0

    const/4 v15, -0x1

    const/16 v16, -0x1

    iget v11, v4, Lcom/facebook/ads/redexgen/X/IH;->A06:I

    iget v10, v4, Lcom/facebook/ads/redexgen/X/IH;->A02:I

    const/high16 v19, -0x40800000    # -1.0f

    const/16 v21, -0x1

    iget v9, v4, Lcom/facebook/ads/redexgen/X/IH;->A00:F

    const/16 v23, 0x0

    .line 65205
    const/4 v8, 0x0

    const/16 v1, 0x9

    const/16 v0, 0x67

    invoke-static {v8, v1, v0}, Lcom/facebook/ads/redexgen/X/Zc;->A00(III)Ljava/lang/String;

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

    .line 65206
    invoke-interface {v2, v0}, Lcom/facebook/ads/redexgen/X/CS;->A5P(Lcom/facebook/ads/internal/exoplayer2/Format;)V

    .line 65207
    const/4 v0, 0x1

    iput-boolean v0, v6, Lcom/facebook/ads/redexgen/X/Zc;->A05:Z

    .line 65208
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/Zc;->A03:Lcom/facebook/ads/redexgen/X/DQ;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/DQ;->A06(Lcom/facebook/ads/redexgen/X/IH;)V

    .line 65209
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/Zc;->A03:Lcom/facebook/ads/redexgen/X/DQ;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/DQ;->A05(Lcom/facebook/ads/redexgen/X/IG;)V

    .line 65210
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/Zc;->A08:Lcom/facebook/ads/redexgen/X/DS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/DS;->A01()V

    .line 65211
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/Zc;->A06:Lcom/facebook/ads/redexgen/X/DS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/DS;->A01()V

    .line 65212
    .end local v2    # "spsData":Lcom/facebook/ads/redexgen/X/IH;
    .end local v1    # "ppsData":Lcom/facebook/ads/redexgen/X/IG;
    .end local v0    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    :cond_1
    :goto_0
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/Zc;->A07:Lcom/facebook/ads/redexgen/X/DS;

    invoke-virtual {v0, v7}, Lcom/facebook/ads/redexgen/X/DS;->A05(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 65213
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/Zc;->A07:Lcom/facebook/ads/redexgen/X/DS;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/DS;->A01:[B

    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/Zc;->A07:Lcom/facebook/ads/redexgen/X/DS;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/DS;->A00:I

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/II;->A02([BI)I

    move-result v7

    .line 65214
    .local v2, "unescapedLength":I
    iget-object v5, v6, Lcom/facebook/ads/redexgen/X/Zc;->A0A:Lcom/facebook/ads/redexgen/X/IM;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Zc;->A0F:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v2, v2, v0

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    move-wide/from16 v2, p5

    if-eq v1, v0, :cond_3

    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/Zc;->A07:Lcom/facebook/ads/redexgen/X/DS;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/DS;->A01:[B

    invoke-virtual {v5, v0, v7}, Lcom/facebook/ads/redexgen/X/IM;->A0c([BI)V

    .line 65215
    iget-object v1, v6, Lcom/facebook/ads/redexgen/X/Zc;->A0A:Lcom/facebook/ads/redexgen/X/IM;

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 65216
    iget-object v1, v6, Lcom/facebook/ads/redexgen/X/Zc;->A09:Lcom/facebook/ads/redexgen/X/DV;

    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/Zc;->A0A:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v1, v2, v3, v0}, Lcom/facebook/ads/redexgen/X/DV;->A02(JLcom/facebook/ads/redexgen/X/IM;)V

    .line 65217
    :cond_2
    :goto_1
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/Zc;->A03:Lcom/facebook/ads/redexgen/X/DQ;

    move/from16 v1, p3

    move-wide/from16 v2, p1

    invoke-virtual {v0, v2, v3, v1}, Lcom/facebook/ads/redexgen/X/DQ;->A03(JI)V

    .line 65218
    return-void

    :cond_3
    sget-object v4, Lcom/facebook/ads/redexgen/X/Zc;->A0F:[Ljava/lang/String;

    const-string v1, "yBxIEmyTXmgFp9YnTDwoZpE0n0h2mQL3"

    const/4 v0, 0x4

    aput-object v1, v4, v0

    const-string v1, "tg7t9oBRXzMr4c01fdI6E0npLzJKU9lY"

    const/4 v0, 0x2

    aput-object v1, v4, v0

    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/Zc;->A07:Lcom/facebook/ads/redexgen/X/DS;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/DS;->A01:[B

    invoke-virtual {v5, v0, v7}, Lcom/facebook/ads/redexgen/X/IM;->A0c([BI)V

    .line 65219
    iget-object v1, v6, Lcom/facebook/ads/redexgen/X/Zc;->A0A:Lcom/facebook/ads/redexgen/X/IM;

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 65220
    iget-object v1, v6, Lcom/facebook/ads/redexgen/X/Zc;->A09:Lcom/facebook/ads/redexgen/X/DV;

    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/Zc;->A0A:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v1, v2, v3, v0}, Lcom/facebook/ads/redexgen/X/DV;->A02(JLcom/facebook/ads/redexgen/X/IM;)V

    goto :goto_1

    .line 65221
    :cond_4
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/Zc;->A08:Lcom/facebook/ads/redexgen/X/DS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/DS;->A04()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 65222
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/Zc;->A08:Lcom/facebook/ads/redexgen/X/DS;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/DS;->A01:[B

    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/Zc;->A08:Lcom/facebook/ads/redexgen/X/DS;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/DS;->A00:I

    invoke-static {v1, v3, v0}, Lcom/facebook/ads/redexgen/X/II;->A06([BII)Lcom/facebook/ads/redexgen/X/IH;

    move-result-object v1

    .line 65223
    .restart local v2    # "unescapedLength":I
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/Zc;->A03:Lcom/facebook/ads/redexgen/X/DQ;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/DQ;->A06(Lcom/facebook/ads/redexgen/X/IH;)V

    .line 65224
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/Zc;->A08:Lcom/facebook/ads/redexgen/X/DS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/DS;->A01()V

    .end local v2    # "unescapedLength":I
    goto/16 :goto_0

    .line 65225
    :cond_5
    iget-object v4, v6, Lcom/facebook/ads/redexgen/X/Zc;->A06:Lcom/facebook/ads/redexgen/X/DS;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Zc;->A0F:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_6

    sget-object v2, Lcom/facebook/ads/redexgen/X/Zc;->A0F:[Ljava/lang/String;

    const-string v1, "4gS5xwJzfuuPxe9g1"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "PKV4Z"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/DS;->A04()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 65226
    :goto_2
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/Zc;->A06:Lcom/facebook/ads/redexgen/X/DS;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/DS;->A01:[B

    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/Zc;->A06:Lcom/facebook/ads/redexgen/X/DS;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/DS;->A00:I

    invoke-static {v1, v3, v0}, Lcom/facebook/ads/redexgen/X/II;->A05([BII)Lcom/facebook/ads/redexgen/X/IG;

    move-result-object v1

    .line 65227
    .local v2, "ppsData":Lcom/facebook/ads/redexgen/X/IG;
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/Zc;->A03:Lcom/facebook/ads/redexgen/X/DQ;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/DQ;->A05(Lcom/facebook/ads/redexgen/X/IG;)V

    .line 65228
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/Zc;->A06:Lcom/facebook/ads/redexgen/X/DS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/DS;->A01()V

    goto/16 :goto_0

    :cond_6
    sget-object v2, Lcom/facebook/ads/redexgen/X/Zc;->A0F:[Ljava/lang/String;

    const-string v1, "kGyV9pF87NOcG7T4L"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "bhPwg"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/DS;->A04()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A04(JIJ)V
    .locals 6

    .line 65229
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Zc;->A05:Z

    move v3, p3

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zc;->A03:Lcom/facebook/ads/redexgen/X/DQ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/DQ;->A08()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 65230
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zc;->A08:Lcom/facebook/ads/redexgen/X/DS;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/DS;->A02(I)V

    .line 65231
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zc;->A06:Lcom/facebook/ads/redexgen/X/DS;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/DS;->A02(I)V

    .line 65232
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zc;->A07:Lcom/facebook/ads/redexgen/X/DS;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/DS;->A02(I)V

    sget-object v2, Lcom/facebook/ads/redexgen/X/Zc;->A0F:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v2, v2, v0

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 65233
    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/Zc;->A0F:[Ljava/lang/String;

    const-string v1, "7DOfm1dA88ob89"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "yqrgSqZS2XcB9"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zc;->A03:Lcom/facebook/ads/redexgen/X/DQ;

    move-wide v4, p4

    move-wide v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/DQ;->A04(JIJ)V

    .line 65234
    return-void
.end method

.method private A05([BII)V
    .locals 1

    .line 65235
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Zc;->A05:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zc;->A03:Lcom/facebook/ads/redexgen/X/DQ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/DQ;->A08()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 65236
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zc;->A08:Lcom/facebook/ads/redexgen/X/DS;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/DS;->A03([BII)V

    .line 65237
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zc;->A06:Lcom/facebook/ads/redexgen/X/DS;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/DS;->A03([BII)V

    .line 65238
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zc;->A07:Lcom/facebook/ads/redexgen/X/DS;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/DS;->A03([BII)V

    .line 65239
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zc;->A03:Lcom/facebook/ads/redexgen/X/DQ;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/DQ;->A07([BII)V

    .line 65240
    return-void
.end method


# virtual methods
.method public final A49(Lcom/facebook/ads/redexgen/X/IM;)V
    .locals 17

    .line 65241
    move-object/from16 v6, p0

    move-object/from16 v8, p1

    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/IM;->A07()I

    move-result v7

    .line 65242
    .local p0, "offset":I
    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/IM;->A08()I

    move-result v5

    .line 65243
    .local v0, "limit":I
    iget-object v4, v8, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    .line 65244
    .local v0, "dataArray":[B
    iget-wide v2, v6, Lcom/facebook/ads/redexgen/X/Zc;->A01:J

    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/IM;->A05()I

    move-result v0

    int-to-long v0, v0

    add-long/2addr v2, v0

    iput-wide v2, v6, Lcom/facebook/ads/redexgen/X/Zc;->A01:J

    .line 65245
    iget-object v1, v6, Lcom/facebook/ads/redexgen/X/Zc;->A02:Lcom/facebook/ads/redexgen/X/CS;

    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/IM;->A05()I

    move-result v0

    invoke-interface {v1, v8, v0}, Lcom/facebook/ads/redexgen/X/CS;->ADR(Lcom/facebook/ads/redexgen/X/IM;I)V

    .line 65246
    .end local p0    # "offset":I
    .local v11, "offset":I
    :goto_0
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/Zc;->A0D:[Z

    invoke-static {v4, v7, v5, v0}, Lcom/facebook/ads/redexgen/X/II;->A04([BII[Z)I

    move-result v3

    .line 65247
    .local v2, "nalUnitOffset":I
    if-ne v3, v5, :cond_0

    .line 65248
    invoke-direct {v6, v4, v7, v5}, Lcom/facebook/ads/redexgen/X/Zc;->A05([BII)V

    .line 65249
    return-void

    .line 65250
    :cond_0
    invoke-static {v4, v3}, Lcom/facebook/ads/redexgen/X/II;->A01([BI)I

    move-result v14

    .line 65251
    .local v13, "nalUnitType":I
    sub-int v2, v3, v7

    .line 65252
    .local v1, "lengthToNalUnit":I
    if-lez v2, :cond_1

    .line 65253
    invoke-direct {v6, v4, v7, v3}, Lcom/facebook/ads/redexgen/X/Zc;->A05([BII)V

    .line 65254
    :cond_1
    sub-int v10, v5, v3

    .line 65255
    .local v0, "bytesWrittenPastPosition":I
    iget-wide v8, v6, Lcom/facebook/ads/redexgen/X/Zc;->A01:J

    int-to-long v0, v10

    sub-long/2addr v8, v0

    .line 65256
    .local v7, "absolutePosition":J
    if-gez v2, :cond_2

    neg-int v11, v2

    :goto_1
    iget-wide v12, v6, Lcom/facebook/ads/redexgen/X/Zc;->A00:J

    .line 65257
    move-object/from16 v7, p0

    invoke-direct/range {v7 .. v13}, Lcom/facebook/ads/redexgen/X/Zc;->A03(JIIJ)V

    .line 65258
    iget-wide v0, v6, Lcom/facebook/ads/redexgen/X/Zc;->A00:J

    move-object v11, v7

    move-wide v12, v8

    move-wide v15, v0

    invoke-direct/range {v11 .. v16}, Lcom/facebook/ads/redexgen/X/Zc;->A04(JIJ)V

    .line 65259
    add-int/lit8 v7, v3, 0x3

    .line 65260
    .end local v2    # "nalUnitOffset":I
    .end local v13    # "nalUnitType":I
    .end local v1    # "lengthToNalUnit":I
    .end local v0    # "bytesWrittenPastPosition":I
    .end local v7    # "absolutePosition":J
    goto :goto_0

    .line 65261
    :cond_2
    const/4 v11, 0x0

    goto :goto_1
.end method

.method public final A4V(Lcom/facebook/ads/redexgen/X/CI;Lcom/facebook/ads/redexgen/X/Da;)V
    .locals 4

    .line 65262
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Da;->A06()V

    .line 65263
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Da;->A05()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Zc;->A04:Ljava/lang/String;

    .line 65264
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Da;->A04()I

    move-result v1

    const/4 v0, 0x2

    invoke-interface {p1, v1, v0}, Lcom/facebook/ads/redexgen/X/CI;->AEM(II)Lcom/facebook/ads/redexgen/X/CS;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Zc;->A02:Lcom/facebook/ads/redexgen/X/CS;

    .line 65265
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Zc;->A02:Lcom/facebook/ads/redexgen/X/CS;

    iget-boolean v2, p0, Lcom/facebook/ads/redexgen/X/Zc;->A0B:Z

    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Zc;->A0C:Z

    new-instance v0, Lcom/facebook/ads/redexgen/X/DQ;

    invoke-direct {v0, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/DQ;-><init>(Lcom/facebook/ads/redexgen/X/CS;ZZ)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Zc;->A03:Lcom/facebook/ads/redexgen/X/DQ;

    .line 65266
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zc;->A09:Lcom/facebook/ads/redexgen/X/DV;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/DV;->A03(Lcom/facebook/ads/redexgen/X/CI;Lcom/facebook/ads/redexgen/X/Da;)V

    .line 65267
    return-void
.end method

.method public final ACI()V
    .locals 0

    .line 65268
    return-void
.end method

.method public final ACJ(JZ)V
    .locals 0

    .line 65269
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/Zc;->A00:J

    .line 65270
    return-void
.end method

.method public final ADV()V
    .locals 2

    .line 65271
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zc;->A0D:[Z

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/II;->A0C([Z)V

    .line 65272
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zc;->A08:Lcom/facebook/ads/redexgen/X/DS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/DS;->A01()V

    .line 65273
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zc;->A06:Lcom/facebook/ads/redexgen/X/DS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/DS;->A01()V

    .line 65274
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zc;->A07:Lcom/facebook/ads/redexgen/X/DS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/DS;->A01()V

    .line 65275
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zc;->A03:Lcom/facebook/ads/redexgen/X/DQ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/DQ;->A02()V

    .line 65276
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Zc;->A01:J

    .line 65277
    return-void
.end method
