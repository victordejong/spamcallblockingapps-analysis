.class public final Lcom/facebook/ads/redexgen/X/Zo;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/DU;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Zp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PmtReader"
.end annotation


# static fields
.field public static A05:[Ljava/lang/String;


# instance fields
.field public final A00:I

.field public final A01:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/facebook/ads/redexgen/X/Db;",
            ">;"
        }
    .end annotation
.end field

.field public final A02:Landroid/util/SparseIntArray;

.field public final A03:Lcom/facebook/ads/redexgen/X/IL;

.field public final synthetic A04:Lcom/facebook/ads/redexgen/X/Zp;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Zo;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Zp;I)V
    .locals 2

    .line 66042
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Zo;->A04:Lcom/facebook/ads/redexgen/X/Zp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66043
    const/4 v0, 0x5

    new-array v1, v0, [B

    new-instance v0, Lcom/facebook/ads/redexgen/X/IL;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/IL;-><init>([B)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Zo;->A03:Lcom/facebook/ads/redexgen/X/IL;

    .line 66044
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Zo;->A01:Landroid/util/SparseArray;

    .line 66045
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Zo;->A02:Landroid/util/SparseIntArray;

    .line 66046
    iput p2, p0, Lcom/facebook/ads/redexgen/X/Zo;->A00:I

    .line 66047
    return-void
.end method

.method private A00(Lcom/facebook/ads/redexgen/X/IM;I)Lcom/facebook/ads/redexgen/X/DY;
    .locals 12

    .line 66048
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IM;->A07()I

    move-result v8

    .line 66049
    .local p1, "descriptorsStartPosition":I
    add-int v9, v8, p2

    .line 66050
    .local p2, "descriptorsEndPosition":I
    const/4 v7, -0x1

    .line 66051
    .local p1, "streamType":I
    const/4 v6, 0x0

    .line 66052
    .local v8, "language":Ljava/lang/String;
    const/4 v5, 0x0

    .line 66053
    .local v9, "dvbSubtitleInfos":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/exoplayer2/extractor/ts/TsPayloadReader$DvbSubtitleInfo;>;"
    :goto_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IM;->A07()I

    move-result v0

    if-ge v0, v9, :cond_a

    .line 66054
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v3

    .line 66055
    .local v7, "descriptorTag":I
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v0

    .line 66056
    .local v6, "descriptorLength":I
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IM;->A07()I

    move-result v10

    add-int/2addr v10, v0

    .line 66057
    .local v5, "positionOfNextDescriptor":I
    const/4 v0, 0x5

    if-ne v3, v0, :cond_3

    .line 66058
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IM;->A0N()J

    move-result-wide v3

    .line 66059
    .local v0, "formatIdentifier":J
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Zp;->A06()J

    move-result-wide v1

    cmp-long v0, v3, v1

    if-nez v0, :cond_1

    .line 66060
    const/16 v7, 0x81

    .line 66061
    :cond_0
    :goto_1
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IM;->A07()I

    move-result v0

    sub-int/2addr v10, v0

    invoke-virtual {p1, v10}, Lcom/facebook/ads/redexgen/X/IM;->A0a(I)V

    .line 66062
    .end local v7    # "descriptorTag":I
    .end local v6    # "descriptorLength":I
    .end local v5    # "positionOfNextDescriptor":I
    goto :goto_0

    .line 66063
    :cond_1
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Zp;->A04()J

    move-result-wide v1

    cmp-long v0, v3, v1

    if-nez v0, :cond_2

    .line 66064
    const/16 v7, 0x87

    goto :goto_1

    .line 66065
    :cond_2
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Zp;->A05()J

    move-result-wide v1

    cmp-long v0, v3, v1

    if-nez v0, :cond_0

    .line 66066
    const/16 v7, 0x24

    goto :goto_1

    .line 66067
    :cond_3
    const/16 v4, 0x6a

    sget-object v2, Lcom/facebook/ads/redexgen/X/Zo;->A05:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_9

    sget-object v2, Lcom/facebook/ads/redexgen/X/Zo;->A05:[Ljava/lang/String;

    const-string v1, "0iRHlmeNaIWOYOZ0wuzrf"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "tRWtYFFxRJJ"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-ne v3, v4, :cond_4

    .line 66068
    const/16 v7, 0x81

    goto :goto_1

    .line 66069
    :cond_4
    const/16 v4, 0x7a

    sget-object v1, Lcom/facebook/ads/redexgen/X/Zo;->A05:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x78

    if-eq v1, v0, :cond_5

    sget-object v2, Lcom/facebook/ads/redexgen/X/Zo;->A05:[Ljava/lang/String;

    const-string v1, "1wLlXhx7j4gWLvUCKIdOcZbAVKCqpjoE"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-ne v3, v4, :cond_6

    .line 66070
    :goto_2
    const/16 v7, 0x87

    goto :goto_1

    :cond_5
    sget-object v2, Lcom/facebook/ads/redexgen/X/Zo;->A05:[Ljava/lang/String;

    const-string v1, "yxMQjgWbjbckRLnQ6dtKu"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "lY9rZIuJvHs"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-ne v3, v4, :cond_6

    goto :goto_2

    .line 66071
    :cond_6
    const/16 v0, 0x7b

    if-ne v3, v0, :cond_7

    .line 66072
    const/16 v7, 0x8a

    goto :goto_1

    .line 66073
    :cond_7
    const/16 v0, 0xa

    const/4 v11, 0x3

    if-ne v3, v0, :cond_8

    .line 66074
    invoke-virtual {p1, v11}, Lcom/facebook/ads/redexgen/X/IM;->A0T(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    .line 66075
    :cond_8
    const/16 v0, 0x59

    if-ne v3, v0, :cond_0

    .line 66076
    const/16 v7, 0x59

    .line 66077
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 66078
    :goto_3
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IM;->A07()I

    move-result v0

    if-ge v0, v10, :cond_0

    .line 66079
    invoke-virtual {p1, v11}, Lcom/facebook/ads/redexgen/X/IM;->A0T(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 66080
    .local v0, "dvbLanguage":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v3

    .line 66081
    .local v0, "dvbSubtitlingType":I
    const/4 v2, 0x4

    new-array v1, v2, [B

    .line 66082
    .local v10, "initializationData":[B
    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0, v2}, Lcom/facebook/ads/redexgen/X/IM;->A0d([BII)V

    .line 66083
    new-instance v0, Lcom/facebook/ads/redexgen/X/DX;

    invoke-direct {v0, v4, v3, v1}, Lcom/facebook/ads/redexgen/X/DX;-><init>(Ljava/lang/String;I[B)V

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66084
    .end local v0    # "dvbSubtitlingType":I
    .end local v0
    .end local v10    # "initializationData":[B
    goto :goto_3

    :cond_9
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 66085
    :cond_a
    invoke-virtual {p1, v9}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 66086
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    .line 66087
    invoke-static {v0, v8, v9}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/DY;

    invoke-direct {v0, v7, v6, v5, v1}, Lcom/facebook/ads/redexgen/X/DY;-><init>(ILjava/lang/String;Ljava/util/List;[B)V

    .line 66088
    return-object v0
.end method

.method public static A01()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "RGyTh4SpGx69CnC3uYB0gmKqWWTNP"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "iDg"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "j2BD3qxwlCatqD2Ch8dsr4SydA7XKwXL"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "m1LAn1cIXYa33UPzElI"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "cPJKdoCFMTZnGOgvNAg6pI"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "iUx5cAJ8Ufw2U1Fp6uB6P"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "qd"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "YeOgnvzSUR8"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Zo;->A05:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A49(Lcom/facebook/ads/redexgen/X/IM;)V
    .locals 14

    .line 66089
    move-object v4, p0

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v0

    .line 66090
    .local v4, "tableId":I
    const/4 v7, 0x2

    if-eq v0, v7, :cond_0

    .line 66091
    return-void

    .line 66092
    :cond_0
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Zo;->A04:Lcom/facebook/ads/redexgen/X/Zp;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Zp;->A02(Lcom/facebook/ads/redexgen/X/Zp;)I

    move-result v0

    const/4 v2, 0x0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Zo;->A04:Lcom/facebook/ads/redexgen/X/Zp;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Zp;->A02(Lcom/facebook/ads/redexgen/X/Zp;)I

    move-result v0

    if-eq v0, v7, :cond_1

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Zo;->A04:Lcom/facebook/ads/redexgen/X/Zp;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Zp;->A00(Lcom/facebook/ads/redexgen/X/Zp;)I

    move-result v0

    if-ne v0, v1, :cond_9

    .line 66093
    .end local v0
    :cond_1
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Zo;->A04:Lcom/facebook/ads/redexgen/X/Zp;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Zp;->A0E(Lcom/facebook/ads/redexgen/X/Zp;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/facebook/ads/redexgen/X/IY;

    .line 66094
    .restart local v0
    :goto_0
    invoke-virtual {p1, v7}, Lcom/facebook/ads/redexgen/X/IM;->A0a(I)V

    .line 66095
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IM;->A0J()I

    move-result v8

    .line 66096
    .local v0, "programNumber":I
    const/4 v10, 0x5

    invoke-virtual {p1, v10}, Lcom/facebook/ads/redexgen/X/IM;->A0a(I)V

    .line 66097
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Zo;->A03:Lcom/facebook/ads/redexgen/X/IL;

    invoke-virtual {p1, v0, v7}, Lcom/facebook/ads/redexgen/X/IM;->A0b(Lcom/facebook/ads/redexgen/X/IL;I)V

    .line 66098
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Zo;->A03:Lcom/facebook/ads/redexgen/X/IL;

    const/4 v5, 0x4

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/IL;->A09(I)V

    .line 66099
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Zo;->A03:Lcom/facebook/ads/redexgen/X/IL;

    const/16 v3, 0xc

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v0

    .line 66100
    .local v1, "programInfoLength":I
    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0a(I)V

    .line 66101
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Zo;->A04:Lcom/facebook/ads/redexgen/X/Zp;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Zp;->A02(Lcom/facebook/ads/redexgen/X/Zp;)I

    move-result v0

    const/16 v6, 0x2000

    const/16 v1, 0x15

    if-ne v0, v7, :cond_2

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Zo;->A04:Lcom/facebook/ads/redexgen/X/Zp;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Zp;->A0B(Lcom/facebook/ads/redexgen/X/Zp;)Lcom/facebook/ads/redexgen/X/Db;

    move-result-object v0

    if-nez v0, :cond_2

    .line 66102
    new-array v2, v2, [B

    const/4 v0, 0x0

    new-instance v11, Lcom/facebook/ads/redexgen/X/DY;

    invoke-direct {v11, v1, v0, v0, v2}, Lcom/facebook/ads/redexgen/X/DY;-><init>(ILjava/lang/String;Ljava/util/List;[B)V

    .line 66103
    .local v7, "dummyEsInfo":Lcom/facebook/ads/redexgen/X/DY;
    iget-object v2, v4, Lcom/facebook/ads/redexgen/X/Zo;->A04:Lcom/facebook/ads/redexgen/X/Zp;

    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/Zp;->A0A(Lcom/facebook/ads/redexgen/X/Zp;)Lcom/facebook/ads/redexgen/X/DZ;

    move-result-object v0

    invoke-interface {v0, v1, v11}, Lcom/facebook/ads/redexgen/X/DZ;->A4P(ILcom/facebook/ads/redexgen/X/DY;)Lcom/facebook/ads/redexgen/X/Db;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/facebook/ads/redexgen/X/Zp;->A0C(Lcom/facebook/ads/redexgen/X/Zp;Lcom/facebook/ads/redexgen/X/Db;)Lcom/facebook/ads/redexgen/X/Db;

    .line 66104
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Zo;->A04:Lcom/facebook/ads/redexgen/X/Zp;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Zp;->A0B(Lcom/facebook/ads/redexgen/X/Zp;)Lcom/facebook/ads/redexgen/X/Db;

    move-result-object v11

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Zo;->A04:Lcom/facebook/ads/redexgen/X/Zp;

    .line 66105
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Zp;->A09(Lcom/facebook/ads/redexgen/X/Zp;)Lcom/facebook/ads/redexgen/X/CI;

    move-result-object v2

    new-instance v0, Lcom/facebook/ads/redexgen/X/Da;

    invoke-direct {v0, v8, v1, v6}, Lcom/facebook/ads/redexgen/X/Da;-><init>(III)V

    .line 66106
    invoke-interface {v11, v9, v2, v0}, Lcom/facebook/ads/redexgen/X/Db;->A7s(Lcom/facebook/ads/redexgen/X/IY;Lcom/facebook/ads/redexgen/X/CI;Lcom/facebook/ads/redexgen/X/Da;)V

    .line 66107
    .end local v7    # "dummyEsInfo":Lcom/facebook/ads/redexgen/X/DY;
    :cond_2
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Zo;->A01:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 66108
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Zo;->A02:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 66109
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IM;->A05()I

    move-result v13

    .line 66110
    .local v7, "remainingEntriesLength":I
    :goto_1
    if-lez v13, :cond_c

    .line 66111
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Zo;->A03:Lcom/facebook/ads/redexgen/X/IL;

    invoke-virtual {p1, v0, v10}, Lcom/facebook/ads/redexgen/X/IM;->A0b(Lcom/facebook/ads/redexgen/X/IL;I)V

    .line 66112
    iget-object v2, v4, Lcom/facebook/ads/redexgen/X/Zo;->A03:Lcom/facebook/ads/redexgen/X/IL;

    const/16 v0, 0x8

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v11

    .line 66113
    .local v0, "streamType":I
    iget-object v2, v4, Lcom/facebook/ads/redexgen/X/Zo;->A03:Lcom/facebook/ads/redexgen/X/IL;

    const/4 v0, 0x3

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/IL;->A09(I)V

    .line 66114
    iget-object v2, v4, Lcom/facebook/ads/redexgen/X/Zo;->A03:Lcom/facebook/ads/redexgen/X/IL;

    const/16 v0, 0xd

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v10

    .line 66115
    .local v0, "elementaryPid":I
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Zo;->A03:Lcom/facebook/ads/redexgen/X/IL;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/IL;->A09(I)V

    .line 66116
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Zo;->A03:Lcom/facebook/ads/redexgen/X/IL;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v2

    .line 66117
    .local v0, "esInfoLength":I
    invoke-direct {v4, p1, v2}, Lcom/facebook/ads/redexgen/X/Zo;->A00(Lcom/facebook/ads/redexgen/X/IM;I)Lcom/facebook/ads/redexgen/X/DY;

    move-result-object v5

    .line 66118
    .local v2, "esInfo":Lcom/facebook/ads/redexgen/X/DY;
    const/4 v0, 0x6

    if-ne v11, v0, :cond_3

    .line 66119
    iget v11, v5, Lcom/facebook/ads/redexgen/X/DY;->A00:I

    .line 66120
    :cond_3
    add-int/lit8 v0, v2, 0x5

    sub-int/2addr v13, v0

    .line 66121
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Zo;->A04:Lcom/facebook/ads/redexgen/X/Zp;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Zp;->A02(Lcom/facebook/ads/redexgen/X/Zp;)I

    move-result v0

    if-ne v0, v7, :cond_8

    move v3, v11

    .line 66122
    .local v0, "trackId":I
    :goto_2
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Zo;->A04:Lcom/facebook/ads/redexgen/X/Zp;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Zp;->A08(Lcom/facebook/ads/redexgen/X/Zp;)Landroid/util/SparseBooleanArray;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 66123
    :cond_4
    :goto_3
    const/4 v10, 0x5

    const/4 v5, 0x4

    const/16 v3, 0xc

    const/16 v1, 0x15

    goto :goto_1

    .line 66124
    :cond_5
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Zo;->A04:Lcom/facebook/ads/redexgen/X/Zp;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Zp;->A02(Lcom/facebook/ads/redexgen/X/Zp;)I

    move-result v0

    if-ne v0, v7, :cond_7

    if-ne v11, v1, :cond_7

    .line 66125
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Zo;->A04:Lcom/facebook/ads/redexgen/X/Zp;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Zp;->A0B(Lcom/facebook/ads/redexgen/X/Zp;)Lcom/facebook/ads/redexgen/X/Db;

    move-result-object v5

    .line 66126
    .local v0, "reader":Lcom/facebook/ads/redexgen/X/Db;
    :goto_4
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Zo;->A04:Lcom/facebook/ads/redexgen/X/Zp;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Zp;->A02(Lcom/facebook/ads/redexgen/X/Zp;)I

    move-result v0

    if-ne v0, v7, :cond_6

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Zo;->A02:Landroid/util/SparseIntArray;

    .line 66127
    invoke-virtual {v0, v3, v6}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-ge v10, v0, :cond_4

    .line 66128
    :cond_6
    iget-object v11, v4, Lcom/facebook/ads/redexgen/X/Zo;->A02:Landroid/util/SparseIntArray;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Zo;->A05:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x11

    if-eq v1, v0, :cond_a

    sget-object v2, Lcom/facebook/ads/redexgen/X/Zo;->A05:[Ljava/lang/String;

    const-string v1, "hYuW2ZxScZvjOUyRYzD"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-virtual {v11, v3, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 66129
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Zo;->A01:Landroid/util/SparseArray;

    invoke-virtual {v0, v3, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_3

    .line 66130
    :cond_7
    iget-object v12, v4, Lcom/facebook/ads/redexgen/X/Zo;->A04:Lcom/facebook/ads/redexgen/X/Zp;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Zo;->A05:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_b

    sget-object v2, Lcom/facebook/ads/redexgen/X/Zo;->A05:[Ljava/lang/String;

    const-string v1, "uMTX0BK3hwRt9LI9TXEhN"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "Q6yhhKO6s7v"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-static {v12}, Lcom/facebook/ads/redexgen/X/Zp;->A0A(Lcom/facebook/ads/redexgen/X/Zp;)Lcom/facebook/ads/redexgen/X/DZ;

    move-result-object v0

    invoke-interface {v0, v11, v5}, Lcom/facebook/ads/redexgen/X/DZ;->A4P(ILcom/facebook/ads/redexgen/X/DY;)Lcom/facebook/ads/redexgen/X/Db;

    move-result-object v5

    goto :goto_4

    .line 66131
    :cond_8
    move v3, v10

    goto :goto_2

    .line 66132
    :cond_9
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Zo;->A04:Lcom/facebook/ads/redexgen/X/Zp;

    .line 66133
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Zp;->A0E(Lcom/facebook/ads/redexgen/X/Zp;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/IY;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IY;->A04()J

    move-result-wide v0

    new-instance v9, Lcom/facebook/ads/redexgen/X/IY;

    invoke-direct {v9, v0, v1}, Lcom/facebook/ads/redexgen/X/IY;-><init>(J)V

    .line 66134
    .local v0, "timestampAdjuster":Lcom/facebook/ads/redexgen/X/IY;
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Zo;->A04:Lcom/facebook/ads/redexgen/X/Zp;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Zp;->A0E(Lcom/facebook/ads/redexgen/X/Zp;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_a
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_b
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 66135
    :cond_c
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Zo;->A02:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v5

    .line 66136
    .local v0, "trackIdCount":I
    const/4 v3, 0x0

    .local v2, "i":I
    :goto_5
    if-ge v3, v5, :cond_f

    .line 66137
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Zo;->A02:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v10

    .line 66138
    .restart local v0    # "trackIdCount":I
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Zo;->A04:Lcom/facebook/ads/redexgen/X/Zp;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Zp;->A08(Lcom/facebook/ads/redexgen/X/Zp;)Landroid/util/SparseBooleanArray;

    move-result-object v1

    const/4 v0, 0x1

    invoke-virtual {v1, v10, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 66139
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Zo;->A01:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/Db;

    .line 66140
    .restart local v0    # "trackIdCount":I
    if-eqz v2, :cond_e

    .line 66141
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Zo;->A04:Lcom/facebook/ads/redexgen/X/Zp;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Zp;->A0B(Lcom/facebook/ads/redexgen/X/Zp;)Lcom/facebook/ads/redexgen/X/Db;

    move-result-object v0

    if-eq v2, v0, :cond_d

    .line 66142
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Zo;->A04:Lcom/facebook/ads/redexgen/X/Zp;

    .line 66143
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Zp;->A09(Lcom/facebook/ads/redexgen/X/Zp;)Lcom/facebook/ads/redexgen/X/CI;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Da;

    invoke-direct {v0, v8, v10, v6}, Lcom/facebook/ads/redexgen/X/Da;-><init>(III)V

    .line 66144
    invoke-interface {v2, v9, v1, v0}, Lcom/facebook/ads/redexgen/X/Db;->A7s(Lcom/facebook/ads/redexgen/X/IY;Lcom/facebook/ads/redexgen/X/CI;Lcom/facebook/ads/redexgen/X/Da;)V

    .line 66145
    :cond_d
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Zo;->A04:Lcom/facebook/ads/redexgen/X/Zp;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Zp;->A07(Lcom/facebook/ads/redexgen/X/Zp;)Landroid/util/SparseArray;

    move-result-object v1

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Zo;->A02:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v0

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 66146
    .end local v0    # "trackIdCount":I
    .end local v0
    :cond_e
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 66147
    .end local v2    # "i":I
    :cond_f
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Zo;->A04:Lcom/facebook/ads/redexgen/X/Zp;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Zp;->A02(Lcom/facebook/ads/redexgen/X/Zp;)I

    move-result v0

    if-ne v0, v7, :cond_11

    .line 66148
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Zo;->A04:Lcom/facebook/ads/redexgen/X/Zp;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Zp;->A0I(Lcom/facebook/ads/redexgen/X/Zp;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 66149
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Zo;->A04:Lcom/facebook/ads/redexgen/X/Zp;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Zp;->A09(Lcom/facebook/ads/redexgen/X/Zp;)Lcom/facebook/ads/redexgen/X/CI;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/CI;->A5B()V

    .line 66150
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/Zo;->A04:Lcom/facebook/ads/redexgen/X/Zp;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Zp;->A03(Lcom/facebook/ads/redexgen/X/Zp;I)I

    .line 66151
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/Zo;->A04:Lcom/facebook/ads/redexgen/X/Zp;

    const/4 v0, 0x1

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Zp;->A0J(Lcom/facebook/ads/redexgen/X/Zp;Z)Z

    .line 66152
    :cond_10
    :goto_6
    return-void

    .line 66153
    :cond_11
    const/4 v0, 0x0

    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/Zo;->A04:Lcom/facebook/ads/redexgen/X/Zp;

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/Zp;->A07(Lcom/facebook/ads/redexgen/X/Zp;)Landroid/util/SparseArray;

    move-result-object v2

    iget v1, v4, Lcom/facebook/ads/redexgen/X/Zo;->A00:I

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 66154
    iget-object v3, v4, Lcom/facebook/ads/redexgen/X/Zo;->A04:Lcom/facebook/ads/redexgen/X/Zp;

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/Zp;->A02(Lcom/facebook/ads/redexgen/X/Zp;)I

    move-result v2

    const/4 v1, 0x1

    if-ne v2, v1, :cond_12

    :goto_7
    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/Zp;->A03(Lcom/facebook/ads/redexgen/X/Zp;I)I

    .line 66155
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Zo;->A04:Lcom/facebook/ads/redexgen/X/Zp;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Zp;->A00(Lcom/facebook/ads/redexgen/X/Zp;)I

    move-result v0

    if-nez v0, :cond_10

    .line 66156
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Zo;->A04:Lcom/facebook/ads/redexgen/X/Zp;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Zp;->A09(Lcom/facebook/ads/redexgen/X/Zp;)Lcom/facebook/ads/redexgen/X/CI;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/CI;->A5B()V

    .line 66157
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/Zo;->A04:Lcom/facebook/ads/redexgen/X/Zp;

    const/4 v0, 0x1

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Zp;->A0J(Lcom/facebook/ads/redexgen/X/Zp;Z)Z

    goto :goto_6

    .line 66158
    :cond_12
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Zo;->A04:Lcom/facebook/ads/redexgen/X/Zp;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Zp;->A00(Lcom/facebook/ads/redexgen/X/Zp;)I

    move-result v0

    sub-int/2addr v0, v1

    goto :goto_7
.end method

.method public final A7s(Lcom/facebook/ads/redexgen/X/IY;Lcom/facebook/ads/redexgen/X/CI;Lcom/facebook/ads/redexgen/X/Da;)V
    .locals 0

    .line 66159
    return-void
.end method
