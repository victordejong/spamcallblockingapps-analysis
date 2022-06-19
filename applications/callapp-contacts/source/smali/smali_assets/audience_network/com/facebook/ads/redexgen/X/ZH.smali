.class public final Lcom/facebook/ads/redexgen/X/ZH;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/CG;
.implements Lcom/facebook/ads/redexgen/X/CP;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Cw;,
        Lcom/facebook/ads/internal/exoplayer2/extractor/mp4/Mp4Extractor$State;,
        Lcom/facebook/ads/internal/exoplayer2/extractor/mp4/Mp4Extractor$Flags;
    }
.end annotation


# static fields
.field public static A0J:[B

.field public static A0K:[Ljava/lang/String;

.field public static final A0L:Lcom/facebook/ads/redexgen/X/CJ;

.field public static final A0M:I


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:I

.field public A05:I

.field public A06:I

.field public A07:J

.field public A08:J

.field public A09:Lcom/facebook/ads/redexgen/X/CI;

.field public A0A:Lcom/facebook/ads/redexgen/X/IM;

.field public A0B:Z

.field public A0C:[Lcom/facebook/ads/redexgen/X/Cw;

.field public A0D:[[J

.field public final A0E:I

.field public final A0F:Lcom/facebook/ads/redexgen/X/IM;

.field public final A0G:Lcom/facebook/ads/redexgen/X/IM;

.field public final A0H:Lcom/facebook/ads/redexgen/X/IM;

.field public final A0I:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/facebook/ads/redexgen/X/Z9;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 63919
    invoke-static {}, Lcom/facebook/ads/redexgen/X/ZH;->A08()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/ZH;->A07()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/ZG;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/ZG;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/ZH;->A0L:Lcom/facebook/ads/redexgen/X/CJ;

    .line 63920
    const/16 v2, 0x30

    const/4 v1, 0x4

    const/16 v0, 0x69

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ZH;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ic;->A08(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/facebook/ads/redexgen/X/ZH;->A0M:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 63921
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/ZH;-><init>(I)V

    .line 63922
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 63923
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63924
    iput p1, p0, Lcom/facebook/ads/redexgen/X/ZH;->A0E:I

    .line 63925
    const/16 v1, 0x10

    new-instance v0, Lcom/facebook/ads/redexgen/X/IM;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/IM;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/ZH;->A0F:Lcom/facebook/ads/redexgen/X/IM;

    .line 63926
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/ZH;->A0I:Ljava/util/ArrayDeque;

    .line 63927
    sget-object v1, Lcom/facebook/ads/redexgen/X/II;->A03:[B

    new-instance v0, Lcom/facebook/ads/redexgen/X/IM;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/IM;-><init>([B)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/ZH;->A0H:Lcom/facebook/ads/redexgen/X/IM;

    .line 63928
    const/4 v1, 0x4

    new-instance v0, Lcom/facebook/ads/redexgen/X/IM;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/IM;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/ZH;->A0G:Lcom/facebook/ads/redexgen/X/IM;

    .line 63929
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/ZH;->A06:I

    .line 63930
    return-void
.end method

.method private A00(J)I
    .locals 19

    .line 63931
    move-object/from16 v7, p0

    const-wide v17, 0x7fffffffffffffffL

    .line 63932
    .local p1, "preferredSkipAmount":J
    const/4 v6, 0x1

    .line 63933
    .local v7, "preferredRequiresReload":Z
    const/16 v16, -0x1

    .line 63934
    .local v17, "preferredTrackIndex":I
    const-wide v14, 0x7fffffffffffffffL

    .line 63935
    .local v5, "preferredAccumulatedBytes":J
    const-wide v12, 0x7fffffffffffffffL

    .line 63936
    .local v16, "minAccumulatedBytes":J
    const/4 v11, 0x1

    .line 63937
    .local v9, "minAccumulatedBytesRequiresReload":Z
    const/4 v10, -0x1

    .line 63938
    .local v12, "minAccumulatedBytesTrackIndex":I
    const/4 v5, 0x0

    .local v11, "trackIndex":I
    :goto_0
    iget-object v1, v7, Lcom/facebook/ads/redexgen/X/ZH;->A0C:[Lcom/facebook/ads/redexgen/X/Cw;

    array-length v0, v1

    if-ge v5, v0, :cond_7

    .line 63939
    aget-object v2, v1, v5

    .line 63940
    .local v11, "track":Lcom/facebook/ads/redexgen/X/Cw;
    iget v1, v2, Lcom/facebook/ads/redexgen/X/Cw;->A00:I

    .line 63941
    .local v10, "sampleIndex":I
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Cw;->A03:Lcom/facebook/ads/redexgen/X/D5;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/D5;->A01:I

    if-ne v1, v0, :cond_1

    .line 63942
    .end local v11    # "track":Lcom/facebook/ads/redexgen/X/Cw;
    .end local v10    # "sampleIndex":I
    .end local v5    # "preferredAccumulatedBytes":J
    .end local v1
    .end local v2
    .end local v0
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 63943
    :cond_1
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Cw;->A03:Lcom/facebook/ads/redexgen/X/D5;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/D5;->A06:[J

    aget-wide v8, v0, v1

    .line 63944
    .local v1, "sampleOffset":J
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/ZH;->A0D:[[J

    aget-object v0, v0, v5

    aget-wide v3, v0, v1

    .line 63945
    .local v2, "sampleAccumulatedBytes":J
    sub-long v8, v8, p1

    .line 63946
    .local v0, "skipAmount":J
    const-wide/16 v1, 0x0

    cmp-long v0, v8, v1

    if-ltz v0, :cond_2

    const-wide/32 v1, 0x40000

    cmp-long v0, v8, v1

    if-ltz v0, :cond_6

    :cond_2
    const/4 v1, 0x1

    .line 63947
    .local v5, "requiresReload":Z
    :goto_2
    if-nez v1, :cond_3

    if-nez v6, :cond_4

    :cond_3
    if-ne v1, v6, :cond_5

    cmp-long v0, v8, v17

    if-gez v0, :cond_5

    .line 63948
    :cond_4
    move v6, v1

    .line 63949
    move-wide/from16 v17, v8

    .line 63950
    move/from16 v16, v5

    .line 63951
    move-wide v14, v3

    .line 63952
    :cond_5
    cmp-long v0, v3, v12

    if-gez v0, :cond_0

    .line 63953
    move-wide v12, v3

    .line 63954
    move v11, v1

    .line 63955
    move v10, v5

    goto :goto_1

    .line 63956
    :cond_6
    const/4 v1, 0x0

    goto :goto_2

    .line 63957
    .end local v11
    :cond_7
    const-wide v0, 0x7fffffffffffffffL

    cmp-long v3, v12, v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/ZH;->A0K:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/16 v0, 0x1c

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6c

    if-eq v1, v0, :cond_8

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_8
    sget-object v2, Lcom/facebook/ads/redexgen/X/ZH;->A0K:[Ljava/lang/String;

    const-string v1, "2rf3IkD44HipF2iEZWYVpECLVHr0uALb"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "2zlrhAiZVnIklu1FhIrlCsqVaSaq97eM"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-eqz v3, :cond_9

    if-eqz v11, :cond_9

    const-wide/32 v1, 0xa00000

    add-long/2addr v1, v12

    cmp-long v0, v14, v1

    if-gez v0, :cond_a

    .line 63958
    :cond_9
    :goto_3
    return v16

    .line 63959
    :cond_a
    move/from16 v16, v10

    goto :goto_3
.end method

.method private A01(Lcom/facebook/ads/redexgen/X/CH;Lcom/facebook/ads/redexgen/X/CN;)I
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 63960
    move-object/from16 v8, p0

    move-object/from16 v10, p1

    invoke-interface {v10}, Lcom/facebook/ads/redexgen/X/CH;->A71()J

    move-result-wide v5

    .line 63961
    .local v0, "inputPosition":J
    iget v0, v8, Lcom/facebook/ads/redexgen/X/ZH;->A06:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 63962
    invoke-direct {v8, v5, v6}, Lcom/facebook/ads/redexgen/X/ZH;->A00(J)I

    move-result v0

    iput v0, v8, Lcom/facebook/ads/redexgen/X/ZH;->A06:I

    .line 63963
    iget v0, v8, Lcom/facebook/ads/redexgen/X/ZH;->A06:I

    if-ne v0, v1, :cond_0

    .line 63964
    return v1

    .line 63965
    :cond_0
    iget-object v1, v8, Lcom/facebook/ads/redexgen/X/ZH;->A0C:[Lcom/facebook/ads/redexgen/X/Cw;

    iget v0, v8, Lcom/facebook/ads/redexgen/X/ZH;->A06:I

    aget-object v7, v1, v0

    .line 63966
    .local v10, "track":Lcom/facebook/ads/redexgen/X/Cw;
    iget-object v13, v7, Lcom/facebook/ads/redexgen/X/Cw;->A01:Lcom/facebook/ads/redexgen/X/CS;

    .line 63967
    .local v7, "trackOutput":Lcom/facebook/ads/redexgen/X/CS;
    iget v9, v7, Lcom/facebook/ads/redexgen/X/Cw;->A00:I

    .line 63968
    .local v13, "sampleIndex":I
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/Cw;->A03:Lcom/facebook/ads/redexgen/X/D5;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/D5;->A06:[J

    aget-wide v3, v0, v9

    .line 63969
    .local v1, "position":J
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/Cw;->A03:Lcom/facebook/ads/redexgen/X/D5;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/D5;->A05:[I

    aget v2, v0, v9

    .line 63970
    .local v6, "sampleSize":I
    sub-long v0, v3, v5

    iget v5, v8, Lcom/facebook/ads/redexgen/X/ZH;->A04:I

    int-to-long v5, v5

    add-long/2addr v0, v5

    .line 63971
    .local v0, "skipAmount":J
    const-wide/16 v11, 0x0

    const/4 v5, 0x1

    cmp-long v6, v0, v11

    if-ltz v6, :cond_1

    const-wide/32 v11, 0x40000

    cmp-long v6, v0, v11

    if-ltz v6, :cond_2

    .line 63972
    .end local v0    # "skipAmount":J
    .end local v1    # "position":J
    .restart local v3
    .restart local v2
    .end local v2
    .local v0, "position":J
    :cond_1
    move-object/from16 v0, p2

    iput-wide v3, v0, Lcom/facebook/ads/redexgen/X/CN;->A00:J

    .line 63973
    const/4 v0, 0x1

    return v0

    .line 63974
    :cond_2
    iget-object v3, v7, Lcom/facebook/ads/redexgen/X/Cw;->A02:Lcom/facebook/ads/redexgen/X/D2;

    iget v3, v3, Lcom/facebook/ads/redexgen/X/D2;->A02:I

    if-ne v3, v5, :cond_3

    .line 63975
    const-wide/16 v3, 0x8

    add-long/2addr v0, v3

    .line 63976
    add-int/lit8 v2, v2, -0x8

    .line 63977
    .end local v0    # "position":J
    .local v0, "skipAmount":J
    :cond_3
    long-to-int v3, v0

    invoke-interface {v10, v3}, Lcom/facebook/ads/redexgen/X/CH;->AE3(I)V

    .line 63978
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/Cw;->A02:Lcom/facebook/ads/redexgen/X/D2;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/D2;->A01:I

    const/4 v3, 0x0

    if-eqz v0, :cond_5

    .line 63979
    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/ZH;->A0G:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    .line 63980
    .local v0, "nalLengthData":[B
    aput-byte v3, v1, v3

    .line 63981
    aput-byte v3, v1, v5

    .line 63982
    const/4 v0, 0x2

    aput-byte v3, v1, v0

    .line 63983
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/Cw;->A02:Lcom/facebook/ads/redexgen/X/D2;

    iget v4, v0, Lcom/facebook/ads/redexgen/X/D2;->A01:I

    .line 63984
    .local v5, "nalUnitLengthFieldLength":I
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/Cw;->A02:Lcom/facebook/ads/redexgen/X/D2;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/D2;->A01:I

    rsub-int/lit8 v3, v0, 0x4

    .line 63985
    .local v9, "nalUnitLengthFieldLengthDiff":I
    :goto_0
    iget v0, v8, Lcom/facebook/ads/redexgen/X/ZH;->A04:I

    if-ge v0, v2, :cond_7

    .line 63986
    iget v1, v8, Lcom/facebook/ads/redexgen/X/ZH;->A05:I

    if-nez v1, :cond_4

    .line 63987
    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/ZH;->A0G:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    invoke-interface {v10, v0, v3, v4}, Lcom/facebook/ads/redexgen/X/CH;->readFully([BII)V

    .line 63988
    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/ZH;->A0G:Lcom/facebook/ads/redexgen/X/IM;

    const/4 v1, 0x0

    .end local v0    # "nalLengthData":[B
    .local v3, "inputPosition":J
    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 63989
    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/ZH;->A0G:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A0I()I

    move-result v0

    iput v0, v8, Lcom/facebook/ads/redexgen/X/ZH;->A05:I

    .line 63990
    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/ZH;->A0H:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 63991
    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/ZH;->A0H:Lcom/facebook/ads/redexgen/X/IM;

    const/4 v1, 0x4

    invoke-interface {v13, v0, v1}, Lcom/facebook/ads/redexgen/X/CS;->ADR(Lcom/facebook/ads/redexgen/X/IM;I)V

    .line 63992
    iget v0, v8, Lcom/facebook/ads/redexgen/X/ZH;->A04:I

    add-int/2addr v0, v1

    iput v0, v8, Lcom/facebook/ads/redexgen/X/ZH;->A04:I

    .line 63993
    add-int/2addr v2, v3

    goto :goto_0

    .line 63994
    .end local v3    # "inputPosition":J
    .restart local v0    # "nalLengthData":[B
    .end local v0    # "nalLengthData":[B
    .restart local v3    # "inputPosition":J
    :cond_4
    const/4 v0, 0x0

    invoke-interface {v13, v10, v1, v0}, Lcom/facebook/ads/redexgen/X/CS;->ADQ(Lcom/facebook/ads/redexgen/X/CH;IZ)I

    move-result v1

    .line 63995
    .local v1, "writtenBytes":I
    iget v0, v8, Lcom/facebook/ads/redexgen/X/ZH;->A04:I

    add-int/2addr v0, v1

    iput v0, v8, Lcom/facebook/ads/redexgen/X/ZH;->A04:I

    .line 63996
    iget v0, v8, Lcom/facebook/ads/redexgen/X/ZH;->A05:I

    sub-int/2addr v0, v1

    iput v0, v8, Lcom/facebook/ads/redexgen/X/ZH;->A05:I

    .line 63997
    .end local v1    # "writtenBytes":I
    goto :goto_0

    .line 63998
    .end local v0
    .restart local v3    # "inputPosition":J
    :cond_5
    :goto_1
    iget v0, v8, Lcom/facebook/ads/redexgen/X/ZH;->A04:I

    if-ge v0, v2, :cond_6

    .line 63999
    sub-int v1, v2, v0

    const/4 v0, 0x0

    invoke-interface {v13, v10, v1, v0}, Lcom/facebook/ads/redexgen/X/CS;->ADQ(Lcom/facebook/ads/redexgen/X/CH;IZ)I

    move-result v1

    .line 64000
    .local v0, "writtenBytes":I
    iget v0, v8, Lcom/facebook/ads/redexgen/X/ZH;->A04:I

    add-int/2addr v0, v1

    iput v0, v8, Lcom/facebook/ads/redexgen/X/ZH;->A04:I

    .line 64001
    iget v0, v8, Lcom/facebook/ads/redexgen/X/ZH;->A05:I

    sub-int/2addr v0, v1

    iput v0, v8, Lcom/facebook/ads/redexgen/X/ZH;->A05:I

    .line 64002
    .end local v0    # "writtenBytes":I
    goto :goto_1

    .line 64003
    :cond_6
    const/4 v3, 0x0

    goto :goto_2

    .line 64004
    .end local v3    # "inputPosition":J
    .restart local v0    # "writtenBytes":I
    .end local v0    # "writtenBytes":I
    .end local v5    # "nalUnitLengthFieldLength":I
    .end local v0
    .end local v9    # "nalUnitLengthFieldLengthDiff":I
    .restart local v3    # "inputPosition":J
    :cond_7
    const/4 v3, 0x0

    .line 64005
    .end local v6    # "sampleSize":I
    .local v0, "sampleSize":I
    :goto_2
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/Cw;->A03:Lcom/facebook/ads/redexgen/X/D5;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/D5;->A07:[J

    aget-wide v14, v0, v9

    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/Cw;->A03:Lcom/facebook/ads/redexgen/X/D5;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/D5;->A04:[I

    aget v16, v0, v9

    const/16 v18, 0x0

    const/16 v19, 0x0

    .end local v0    # "sampleSize":I
    .local v0, "skipAmount":J
    .end local v1
    .local v2, "position":J
    move/from16 v17, v2

    invoke-interface/range {v13 .. v19}, Lcom/facebook/ads/redexgen/X/CS;->ADS(JIIILcom/facebook/ads/redexgen/X/CR;)V

    .line 64006
    iget v1, v7, Lcom/facebook/ads/redexgen/X/Cw;->A00:I

    const/4 v0, 0x1

    add-int/2addr v1, v0

    iput v1, v7, Lcom/facebook/ads/redexgen/X/Cw;->A00:I

    .line 64007
    const/4 v0, -0x1

    iput v0, v8, Lcom/facebook/ads/redexgen/X/ZH;->A06:I

    .line 64008
    iput v3, v8, Lcom/facebook/ads/redexgen/X/ZH;->A04:I

    .line 64009
    iput v3, v8, Lcom/facebook/ads/redexgen/X/ZH;->A05:I

    .line 64010
    return v3
.end method

.method public static A02(Lcom/facebook/ads/redexgen/X/D5;J)I
    .locals 2

    .line 64011
    invoke-virtual {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/D5;->A00(J)I

    move-result v1

    .line 64012
    .local p0, "sampleIndex":I
    const/4 v0, -0x1

    if-ne v1, v0, :cond_0

    .line 64013
    invoke-virtual {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/D5;->A01(J)I

    move-result v1

    .line 64014
    :cond_0
    return v1
.end method

.method public static A03(Lcom/facebook/ads/redexgen/X/D5;JJ)J
    .locals 2

    .line 64015
    invoke-static {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/ZH;->A02(Lcom/facebook/ads/redexgen/X/D5;J)I

    move-result v1

    .line 64016
    .local p0, "sampleIndex":I
    const/4 v0, -0x1

    if-ne v1, v0, :cond_0

    .line 64017
    return-wide p3

    .line 64018
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D5;->A06:[J

    aget-wide v0, v0, v1

    .line 64019
    .local p0, "sampleOffset":J
    invoke-static {v0, v1, p3, p4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static A04(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/ZH;->A0J:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x1c

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A05(Lcom/facebook/ads/redexgen/X/Z9;Lcom/facebook/ads/redexgen/X/CK;Z)Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/Z9;",
            "Lcom/facebook/ads/redexgen/X/CK;",
            "Z)",
            "Ljava/util/ArrayList<",
            "Lcom/facebook/ads/redexgen/X/D5;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/AJ;
        }
    .end annotation

    .line 64020
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 64021
    .local p0, "trackSampleTables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/exoplayer2/extractor/mp4/TrackSampleTable;>;"
    const/4 v2, 0x0

    .local p1, "i":I
    :goto_0
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/Z9;->A01:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    sget-object v4, Lcom/facebook/ads/redexgen/X/ZH;->A0K:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v4, v0

    const/4 v0, 0x3

    aget-object v0, v4, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v4, Lcom/facebook/ads/redexgen/X/ZH;->A0K:[Ljava/lang/String;

    const-string v1, "cCqXKTxpaVHnB5xhxhubewm2proDizNi"

    const/4 v0, 0x7

    aput-object v1, v4, v0

    const-string v1, "XNMFZPcuybbaYtAFLaJvO7GLnY5oO3YZ"

    const/4 v0, 0x0

    aput-object v1, v4, v0

    if-ge v2, v5, :cond_4

    .line 64022
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/Z9;->A01:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/ads/redexgen/X/Z9;

    .line 64023
    .local p2, "atom":Lcom/facebook/ads/redexgen/X/Z9;
    iget v1, v5, Lcom/facebook/ads/redexgen/X/Ch;->A00:I

    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A1L:I

    if-eq v1, v0, :cond_1

    .line 64024
    .end local p2    # "atom":Lcom/facebook/ads/redexgen/X/Z9;
    .end local v10
    .end local v3
    .end local v2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 64025
    :cond_1
    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A0n:I

    .line 64026
    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/Z9;->A07(I)Lcom/facebook/ads/redexgen/X/ZA;

    move-result-object v6

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v9, 0x0

    iget-boolean v11, p0, Lcom/facebook/ads/redexgen/X/ZH;->A0B:Z

    .line 64027
    move v10, p3

    invoke-static/range {v5 .. v11}, Lcom/facebook/ads/redexgen/X/Cm;->A0C(Lcom/facebook/ads/redexgen/X/Z9;Lcom/facebook/ads/redexgen/X/ZA;JLcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;ZZ)Lcom/facebook/ads/redexgen/X/D2;

    move-result-object v4

    .line 64028
    .local v10, "track":Lcom/facebook/ads/redexgen/X/D2;
    if-nez v4, :cond_2

    goto :goto_1

    .line 64029
    :cond_2
    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A0d:I

    .line 64030
    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/Z9;->A06(I)Lcom/facebook/ads/redexgen/X/Z9;

    move-result-object v1

    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A0h:I

    .line 64031
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Z9;->A06(I)Lcom/facebook/ads/redexgen/X/Z9;

    move-result-object v1

    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A16:I

    .line 64032
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Z9;->A06(I)Lcom/facebook/ads/redexgen/X/Z9;

    move-result-object v0

    .line 64033
    .local v3, "stblAtom":Lcom/facebook/ads/redexgen/X/Z9;
    invoke-static {v4, v0, p2}, Lcom/facebook/ads/redexgen/X/Cm;->A0E(Lcom/facebook/ads/redexgen/X/D2;Lcom/facebook/ads/redexgen/X/Z9;Lcom/facebook/ads/redexgen/X/CK;)Lcom/facebook/ads/redexgen/X/D5;

    move-result-object v1

    .line 64034
    .local v2, "trackSampleTable":Lcom/facebook/ads/redexgen/X/D5;
    iget v0, v1, Lcom/facebook/ads/redexgen/X/D5;->A01:I

    if-nez v0, :cond_3

    goto :goto_1

    .line 64035
    :cond_3
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 64036
    .end local p1    # "i":I
    :cond_4
    return-object v3
.end method

.method private A06()V
    .locals 1

    .line 64037
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/ZH;->A03:I

    .line 64038
    iput v0, p0, Lcom/facebook/ads/redexgen/X/ZH;->A00:I

    .line 64039
    return-void
.end method

.method public static A07()V
    .locals 1

    const/16 v0, 0x34

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/ZH;->A0J:[B

    return-void

    :array_0
    .array-data 1
        0x39t
        0xct
        0x17t
        0x15t
        0x58t
        0xbt
        0x11t
        0x2t
        0x1dt
        0x58t
        0x14t
        0x1dt
        0xbt
        0xbt
        0x58t
        0xct
        0x10t
        0x19t
        0x16t
        0x58t
        0x10t
        0x1dt
        0x19t
        0x1ct
        0x1dt
        0xat
        0x58t
        0x14t
        0x1dt
        0x16t
        0x1ft
        0xct
        0x10t
        0x58t
        0x50t
        0xdt
        0x16t
        0xbt
        0xdt
        0x8t
        0x8t
        0x17t
        0xat
        0xct
        0x1dt
        0x1ct
        0x51t
        0x56t
        0x4t
        0x1t
        0x55t
        0x55t
    .end array-data
.end method

.method public static A08()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "0jSfxoXEMfCjtmnyDugkNcQJRjSOySMa"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "bnCyjA5DcUmWUqivzOXdDI"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "awYt8cnKxKdhDKIItvFTiUYUED9yM0q1"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "Luabopmg5NHaS5SoCXeHIbwAQFsLRvJ0"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "odfzLqPoxtdmNhQ8QVXSS2"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "Wo8IxRBaFRXe4oQbEdt7BomqryNllMGC"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "1wQy"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "sEQm6Nsu4XqoPKwwi3EdYrJfunZcOKFC"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/ZH;->A0K:[Ljava/lang/String;

    return-void
.end method

.method private A09(J)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/AJ;
        }
    .end annotation

    .line 64040
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZH;->A0I:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    const/4 v3, 0x2

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZH;->A0I:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Z9;

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/Z9;->A00:J

    cmp-long v0, v1, p1

    if-nez v0, :cond_2

    .line 64041
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZH;->A0I:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/Z9;

    .line 64042
    .local p0, "containerAtom":Lcom/facebook/ads/redexgen/X/Z9;
    iget v1, v2, Lcom/facebook/ads/redexgen/X/Ch;->A00:I

    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A0j:I

    if-ne v1, v0, :cond_1

    .line 64043
    invoke-direct {p0, v2}, Lcom/facebook/ads/redexgen/X/ZH;->A0B(Lcom/facebook/ads/redexgen/X/Z9;)V

    .line 64044
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZH;->A0I:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 64045
    iput v3, p0, Lcom/facebook/ads/redexgen/X/ZH;->A03:I

    goto :goto_0

    .line 64046
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZH;->A0I:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 64047
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZH;->A0I:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Z9;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/Z9;->A08(Lcom/facebook/ads/redexgen/X/Z9;)V

    goto :goto_0

    .line 64048
    :cond_2
    iget v0, p0, Lcom/facebook/ads/redexgen/X/ZH;->A03:I

    if-eq v0, v3, :cond_3

    .line 64049
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/ZH;->A06()V

    .line 64050
    :cond_3
    return-void
.end method

.method private A0A(J)V
    .locals 7

    .line 64051
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/ZH;->A0C:[Lcom/facebook/ads/redexgen/X/Cw;

    array-length v5, v6

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v3, v6, v4

    .line 64052
    .local v6, "track":Lcom/facebook/ads/redexgen/X/Cw;
    iget-object v2, v3, Lcom/facebook/ads/redexgen/X/Cw;->A03:Lcom/facebook/ads/redexgen/X/D5;

    .line 64053
    .local v5, "sampleTable":Lcom/facebook/ads/redexgen/X/D5;
    invoke-virtual {v2, p1, p2}, Lcom/facebook/ads/redexgen/X/D5;->A00(J)I

    move-result v1

    .line 64054
    .local v4, "sampleIndex":I
    const/4 v0, -0x1

    if-ne v1, v0, :cond_0

    .line 64055
    invoke-virtual {v2, p1, p2}, Lcom/facebook/ads/redexgen/X/D5;->A01(J)I

    move-result v1

    .line 64056
    :cond_0
    iput v1, v3, Lcom/facebook/ads/redexgen/X/Cw;->A00:I

    .line 64057
    .end local v6    # "track":Lcom/facebook/ads/redexgen/X/Cw;
    .end local v5    # "sampleTable":Lcom/facebook/ads/redexgen/X/D5;
    .end local v4    # "sampleIndex":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 64058
    :cond_1
    return-void
.end method

.method private A0B(Lcom/facebook/ads/redexgen/X/Z9;)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/AJ;
        }
    .end annotation

    .line 64059
    move-object/from16 v5, p0

    const/4 v12, -0x1

    .line 64060
    .local v2, "firstVideoTrackIndex":I
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 64061
    .local v12, "durationUs":J
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 64062
    .local v6, "tracks":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;>;"
    const/4 v11, 0x0

    .line 64063
    .local p0, "metadata":Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata;
    new-instance v8, Lcom/facebook/ads/redexgen/X/CK;

    invoke-direct {v8}, Lcom/facebook/ads/redexgen/X/CK;-><init>()V

    .line 64064
    .local v10, "gaplessInfoHolder":Lcom/facebook/ads/redexgen/X/CK;
    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A1P:I

    move-object/from16 v2, p1

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/Z9;->A07(I)Lcom/facebook/ads/redexgen/X/ZA;

    move-result-object v1

    .line 64065
    .local v10, "udta":Lcom/facebook/ads/redexgen/X/ZA;
    if-eqz v1, :cond_0

    .line 64066
    iget-boolean v0, v5, Lcom/facebook/ads/redexgen/X/ZH;->A0B:Z

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Cm;->A0F(Lcom/facebook/ads/redexgen/X/ZA;Z)Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata;

    move-result-object v11

    .line 64067
    if-eqz v11, :cond_0

    .line 64068
    invoke-virtual {v8, v11}, Lcom/facebook/ads/redexgen/X/CK;->A06(Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata;)Z

    .line 64069
    .end local p0    # "metadata":Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata;
    .local v11, "metadata":Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata;
    :cond_0
    iget v0, v5, Lcom/facebook/ads/redexgen/X/ZH;->A0E:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 64070
    .local v0, "ignoreEditLists":Z
    :goto_0
    :try_start_0
    invoke-direct {v5, v2, v8, v0}, Lcom/facebook/ads/redexgen/X/ZH;->A05(Lcom/facebook/ads/redexgen/X/Z9;Lcom/facebook/ads/redexgen/X/CK;Z)Ljava/util/ArrayList;

    move-result-object v9

    goto :goto_1
    :try_end_0
    .catch Lcom/facebook/ads/redexgen/X/ZD; {:try_start_0 .. :try_end_0} :catch_0

    .line 64071
    .end local p0
    .local p0, "e":Lcom/facebook/ads/redexgen/X/ZD;
    :catch_0
    new-instance v8, Lcom/facebook/ads/redexgen/X/CK;

    invoke-direct {v8}, Lcom/facebook/ads/redexgen/X/CK;-><init>()V

    .line 64072
    invoke-direct {v5, v2, v8, v1}, Lcom/facebook/ads/redexgen/X/ZH;->A05(Lcom/facebook/ads/redexgen/X/Z9;Lcom/facebook/ads/redexgen/X/CK;Z)Ljava/util/ArrayList;

    move-result-object v9

    .line 64073
    .local p0, "trackSampleTables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/exoplayer2/extractor/mp4/TrackSampleTable;>;"
    :goto_1
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 64074
    .local v1, "trackCount":I
    const/4 v6, 0x0

    .local v0, "i":I
    :goto_2
    if-ge v6, v7, :cond_6

    .line 64075
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/facebook/ads/redexgen/X/D5;

    .line 64076
    .local v11, "trackSampleTable":Lcom/facebook/ads/redexgen/X/D5;
    iget-object v13, v15, Lcom/facebook/ads/redexgen/X/D5;->A03:Lcom/facebook/ads/redexgen/X/D2;

    .line 64077
    .local v11, "track":Lcom/facebook/ads/redexgen/X/D2;
    .end local p0    # "trackSampleTables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/exoplayer2/extractor/mp4/TrackSampleTable;>;"
    .local v0, "trackSampleTables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/exoplayer2/extractor/mp4/TrackSampleTable;>;"
    iget-object v1, v5, Lcom/facebook/ads/redexgen/X/ZH;->A09:Lcom/facebook/ads/redexgen/X/CI;

    iget v0, v13, Lcom/facebook/ads/redexgen/X/D2;->A03:I

    .line 64078
    invoke-interface {v1, v6, v0}, Lcom/facebook/ads/redexgen/X/CI;->AEM(II)Lcom/facebook/ads/redexgen/X/CS;

    move-result-object v0

    new-instance v2, Lcom/facebook/ads/redexgen/X/Cw;

    invoke-direct {v2, v13, v15, v0}, Lcom/facebook/ads/redexgen/X/Cw;-><init>(Lcom/facebook/ads/redexgen/X/D2;Lcom/facebook/ads/redexgen/X/D5;Lcom/facebook/ads/redexgen/X/CS;)V

    .line 64079
    .local p0, "mp4Track":Lcom/facebook/ads/redexgen/X/Cw;
    iget v0, v15, Lcom/facebook/ads/redexgen/X/D5;->A00:I

    add-int/lit8 v1, v0, 0x1e

    .line 64080
    .local v5, "maxInputSize":I
    iget-object v0, v13, Lcom/facebook/ads/redexgen/X/D2;->A07:Lcom/facebook/ads/internal/exoplayer2/Format;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/exoplayer2/Format;->A0G(I)Lcom/facebook/ads/internal/exoplayer2/Format;

    move-result-object v1

    .line 64081
    .local v8, "format":Lcom/facebook/ads/internal/exoplayer2/Format;
    .end local v5    # "maxInputSize":I
    .local v1, "maxInputSize":I
    iget v14, v13, Lcom/facebook/ads/redexgen/X/D2;->A03:I

    const/4 v0, 0x1

    .end local v10    # "udta":Lcom/facebook/ads/redexgen/X/ZA;
    .local v0, "udta":Lcom/facebook/ads/redexgen/X/ZA;
    if-ne v14, v0, :cond_3

    .line 64082
    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/CK;->A04()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 64083
    iget v14, v8, Lcom/facebook/ads/redexgen/X/CK;->A00:I

    iget v0, v8, Lcom/facebook/ads/redexgen/X/CK;->A01:I

    .line 64084
    invoke-virtual {v1, v14, v0}, Lcom/facebook/ads/internal/exoplayer2/Format;->A0H(II)Lcom/facebook/ads/internal/exoplayer2/Format;

    move-result-object v1

    .line 64085
    :cond_2
    if-eqz v11, :cond_3

    .line 64086
    invoke-virtual {v1, v11}, Lcom/facebook/ads/internal/exoplayer2/Format;->A0K(Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata;)Lcom/facebook/ads/internal/exoplayer2/Format;

    move-result-object v1

    .line 64087
    :cond_3
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Cw;->A01:Lcom/facebook/ads/redexgen/X/CS;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/CS;->A5P(Lcom/facebook/ads/internal/exoplayer2/Format;)V

    .line 64088
    .end local v10
    .local v5, "gaplessInfoHolder":Lcom/facebook/ads/redexgen/X/CK;
    iget-wide v0, v13, Lcom/facebook/ads/redexgen/X/D2;->A04:J

    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v14, v0, v16

    if-eqz v14, :cond_5

    iget-wide v0, v13, Lcom/facebook/ads/redexgen/X/D2;->A04:J

    .line 64089
    :goto_3
    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    .line 64090
    iget v1, v13, Lcom/facebook/ads/redexgen/X/D2;->A03:I

    const/4 v0, 0x2

    if-ne v1, v0, :cond_4

    const/4 v0, -0x1

    if-ne v12, v0, :cond_4

    .line 64091
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v12

    .line 64092
    :cond_4
    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64093
    .end local p0    # "mp4Track":Lcom/facebook/ads/redexgen/X/Cw;
    .end local v8    # "format":Lcom/facebook/ads/internal/exoplayer2/Format;
    .end local v11    # "track":Lcom/facebook/ads/redexgen/X/D2;
    .end local v11
    .end local v1    # "maxInputSize":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 64094
    :cond_5
    iget-wide v0, v15, Lcom/facebook/ads/redexgen/X/D5;->A02:J

    goto :goto_3

    .line 64095
    .end local v5    # "gaplessInfoHolder":Lcom/facebook/ads/redexgen/X/CK;
    .end local v0    # "udta":Lcom/facebook/ads/redexgen/X/ZA;
    .end local v0
    .local p0, "trackSampleTables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/exoplayer2/extractor/mp4/TrackSampleTable;>;"
    .restart local v10    # "udta":Lcom/facebook/ads/redexgen/X/ZA;
    .restart local v10    # "udta":Lcom/facebook/ads/redexgen/X/ZA;
    .end local p0    # "trackSampleTables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/exoplayer2/extractor/mp4/TrackSampleTable;>;"
    .end local v0
    .restart local v0    # "udta":Lcom/facebook/ads/redexgen/X/ZA;
    :cond_6
    iput v12, v5, Lcom/facebook/ads/redexgen/X/ZH;->A02:I

    .line 64096
    iput-wide v3, v5, Lcom/facebook/ads/redexgen/X/ZH;->A08:J

    .line 64097
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/facebook/ads/redexgen/X/Cw;

    invoke-interface {v10, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/ads/redexgen/X/Cw;

    iput-object v0, v5, Lcom/facebook/ads/redexgen/X/ZH;->A0C:[Lcom/facebook/ads/redexgen/X/Cw;

    .line 64098
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/ZH;->A0C:[Lcom/facebook/ads/redexgen/X/Cw;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ZH;->A0H([Lcom/facebook/ads/redexgen/X/Cw;)[[J

    move-result-object v0

    iput-object v0, v5, Lcom/facebook/ads/redexgen/X/ZH;->A0D:[[J

    .line 64099
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/ZH;->A09:Lcom/facebook/ads/redexgen/X/CI;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/CI;->A5B()V

    .line 64100
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/ZH;->A09:Lcom/facebook/ads/redexgen/X/CI;

    invoke-interface {v0, v5}, Lcom/facebook/ads/redexgen/X/CI;->ADX(Lcom/facebook/ads/redexgen/X/CP;)V

    .line 64101
    return-void
.end method

.method public static A0C(I)Z
    .locals 4

    .line 64102
    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A0j:I

    if-eq p0, v0, :cond_0

    sget v3, Lcom/facebook/ads/redexgen/X/Ch;->A1L:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/ZH;->A0K:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/ZH;->A0K:[Ljava/lang/String;

    const-string v1, "xHWkCkmm9lwx55Xb6ilKRbCBaMi3tx91"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "ufwmFaOIh4ETn2yFiF4b2v05oMaexVS8"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-eq p0, v3, :cond_0

    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A0d:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A0h:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A16:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A0N:I

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A0D(I)Z
    .locals 4

    .line 64103
    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A0c:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A0n:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A0V:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A1A:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A1D:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A1B:I

    if-eq p0, v0, :cond_1

    sget v3, Lcom/facebook/ads/redexgen/X/Ch;->A0C:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/ZH;->A0K:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x16

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/ZH;->A0K:[Ljava/lang/String;

    const-string v1, "WjfYMB7jPbcUwDvfNOpuH1"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-eq p0, v3, :cond_1

    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A0O:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A19:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A1C:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A1E:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A17:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A0B:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A1J:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A0U:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A1P:I

    if-ne p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private A0E(Lcom/facebook/ads/redexgen/X/CH;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 64104
    iget v0, p0, Lcom/facebook/ads/redexgen/X/ZH;->A00:I

    const/16 v6, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_1

    .line 64105
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZH;->A0F:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    invoke-interface {p1, v0, v4, v6, v5}, Lcom/facebook/ads/redexgen/X/CH;->ACp([BIIZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 64106
    return v4

    .line 64107
    :cond_0
    iput v6, p0, Lcom/facebook/ads/redexgen/X/ZH;->A00:I

    .line 64108
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZH;->A0F:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 64109
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZH;->A0F:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A0N()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/ZH;->A07:J

    .line 64110
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZH;->A0F:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A09()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/ZH;->A01:I

    .line 64111
    :cond_1
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/ZH;->A07:J

    const-wide/16 v7, 0x1

    cmp-long v2, v0, v7

    if-nez v2, :cond_8

    .line 64112
    const/16 v1, 0x8

    .line 64113
    .local p0, "headerBytesRemaining":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZH;->A0F:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    invoke-interface {p1, v0, v6, v1}, Lcom/facebook/ads/redexgen/X/CH;->readFully([BII)V

    .line 64114
    iget v0, p0, Lcom/facebook/ads/redexgen/X/ZH;->A00:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/ZH;->A00:I

    .line 64115
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZH;->A0F:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A0O()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/ZH;->A07:J

    .line 64116
    .end local p0    # "headerBytesRemaining":I
    :cond_2
    :goto_0
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/ZH;->A07:J

    iget v0, p0, Lcom/facebook/ads/redexgen/X/ZH;->A00:I

    int-to-long v0, v0

    cmp-long v7, v2, v0

    if-ltz v7, :cond_a

    .line 64117
    iget v0, p0, Lcom/facebook/ads/redexgen/X/ZH;->A01:I

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ZH;->A0C(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 64118
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/CH;->A71()J

    move-result-wide v3

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/ZH;->A07:J

    add-long/2addr v3, v0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/ZH;->A00:I

    int-to-long v0, v0

    sub-long/2addr v3, v0

    .line 64119
    .local p0, "endPosition":J
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/ZH;->A0I:Ljava/util/ArrayDeque;

    iget v1, p0, Lcom/facebook/ads/redexgen/X/ZH;->A01:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/Z9;

    invoke-direct {v0, v1, v3, v4}, Lcom/facebook/ads/redexgen/X/Z9;-><init>(IJ)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 64120
    iget-wide v6, p0, Lcom/facebook/ads/redexgen/X/ZH;->A07:J

    iget v0, p0, Lcom/facebook/ads/redexgen/X/ZH;->A00:I

    int-to-long v1, v0

    cmp-long v0, v6, v1

    if-nez v0, :cond_3

    .line 64121
    invoke-direct {p0, v3, v4}, Lcom/facebook/ads/redexgen/X/ZH;->A09(J)V

    .line 64122
    :goto_1
    return v5

    .line 64123
    :cond_3
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/ZH;->A06()V

    goto :goto_1

    .line 64124
    :cond_4
    iget v0, p0, Lcom/facebook/ads/redexgen/X/ZH;->A01:I

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ZH;->A0D(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 64125
    iget v0, p0, Lcom/facebook/ads/redexgen/X/ZH;->A00:I

    if-ne v0, v6, :cond_6

    const/4 v0, 0x1

    :goto_2
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A04(Z)V

    .line 64126
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/ZH;->A07:J

    const-wide/32 v7, 0x7fffffff

    cmp-long v0, v1, v7

    if-gtz v0, :cond_5

    const/4 v0, 0x1

    :goto_3
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A04(Z)V

    .line 64127
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/ZH;->A07:J

    long-to-int v1, v2

    new-instance v0, Lcom/facebook/ads/redexgen/X/IM;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/IM;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/ZH;->A0A:Lcom/facebook/ads/redexgen/X/IM;

    .line 64128
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZH;->A0F:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZH;->A0A:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    invoke-static {v1, v4, v0, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 64129
    iput v5, p0, Lcom/facebook/ads/redexgen/X/ZH;->A03:I

    goto :goto_1

    .line 64130
    :cond_5
    const/4 v0, 0x0

    goto :goto_3

    .line 64131
    :cond_6
    const/4 v0, 0x0

    goto :goto_2

    .line 64132
    :cond_7
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/ZH;->A0A:Lcom/facebook/ads/redexgen/X/IM;

    .line 64133
    iput v5, p0, Lcom/facebook/ads/redexgen/X/ZH;->A03:I

    goto :goto_1

    .line 64134
    :cond_8
    const-wide/16 v7, 0x0

    cmp-long v2, v0, v7

    if-nez v2, :cond_2

    .line 64135
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/CH;->A6i()J

    move-result-wide v2

    .line 64136
    .local v5, "endPosition":J
    const-wide/16 v7, -0x1

    cmp-long v0, v2, v7

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZH;->A0I:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 64137
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZH;->A0I:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Z9;

    iget-wide v2, v0, Lcom/facebook/ads/redexgen/X/Z9;->A00:J

    .line 64138
    :cond_9
    cmp-long v0, v2, v7

    if-eqz v0, :cond_2

    .line 64139
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/CH;->A71()J

    move-result-wide v0

    sub-long/2addr v2, v0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/ZH;->A00:I

    int-to-long v0, v0

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/ZH;->A07:J

    goto/16 :goto_0

    .line 64140
    :cond_a
    const/4 v2, 0x0

    const/16 v1, 0x30

    const/16 v0, 0x64

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ZH;->A04(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/AJ;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/AJ;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private A0F(Lcom/facebook/ads/redexgen/X/CH;Lcom/facebook/ads/redexgen/X/CN;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 64141
    iget-wide v4, p0, Lcom/facebook/ads/redexgen/X/ZH;->A07:J

    iget v0, p0, Lcom/facebook/ads/redexgen/X/ZH;->A00:I

    int-to-long v0, v0

    sub-long/2addr v4, v0

    .line 64142
    .local p0, "atomPayloadSize":J
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/CH;->A71()J

    move-result-wide v2

    add-long/2addr v2, v4

    .line 64143
    .local p2, "atomEndPosition":J
    const/4 v8, 0x0

    .line 64144
    .local v4, "seekRequired":Z
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZH;->A0A:Lcom/facebook/ads/redexgen/X/IM;

    if-eqz v0, :cond_3

    .line 64145
    iget-object v6, v0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    iget v1, p0, Lcom/facebook/ads/redexgen/X/ZH;->A00:I

    long-to-int v0, v4

    invoke-interface {p1, v6, v1, v0}, Lcom/facebook/ads/redexgen/X/CH;->readFully([BII)V

    .line 64146
    iget v1, p0, Lcom/facebook/ads/redexgen/X/ZH;->A01:I

    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A0U:I

    if-ne v1, v0, :cond_2

    .line 64147
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZH;->A0A:Lcom/facebook/ads/redexgen/X/IM;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ZH;->A0G(Lcom/facebook/ads/redexgen/X/IM;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/ZH;->A0B:Z

    .line 64148
    :cond_0
    :goto_0
    invoke-direct {p0, v2, v3}, Lcom/facebook/ads/redexgen/X/ZH;->A09(J)V

    .line 64149
    if-eqz v8, :cond_1

    iget v1, p0, Lcom/facebook/ads/redexgen/X/ZH;->A03:I

    const/4 v0, 0x2

    if-eq v1, v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 64150
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZH;->A0I:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 64151
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZH;->A0I:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/ads/redexgen/X/Z9;

    iget v4, p0, Lcom/facebook/ads/redexgen/X/ZH;->A01:I

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ZH;->A0A:Lcom/facebook/ads/redexgen/X/IM;

    new-instance v0, Lcom/facebook/ads/redexgen/X/ZA;

    invoke-direct {v0, v4, v1}, Lcom/facebook/ads/redexgen/X/ZA;-><init>(ILcom/facebook/ads/redexgen/X/IM;)V

    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/Z9;->A09(Lcom/facebook/ads/redexgen/X/ZA;)V

    goto :goto_0

    .line 64152
    :cond_3
    const-wide/32 v6, 0x40000

    cmp-long v0, v4, v6

    if-gez v0, :cond_4

    .line 64153
    long-to-int v0, v4

    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/CH;->AE3(I)V

    goto :goto_0

    .line 64154
    :cond_4
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/CH;->A71()J

    move-result-wide v0

    add-long/2addr v0, v4

    iput-wide v0, p2, Lcom/facebook/ads/redexgen/X/CN;->A00:J

    .line 64155
    const/4 v8, 0x1

    goto :goto_0
.end method

.method public static A0G(Lcom/facebook/ads/redexgen/X/IM;)Z
    .locals 3

    .line 64156
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 64157
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A09()I

    move-result v1

    .line 64158
    .local p0, "majorBrand":I
    sget v0, Lcom/facebook/ads/redexgen/X/ZH;->A0M:I

    const/4 v2, 0x1

    if-ne v1, v0, :cond_0

    .line 64159
    return v2

    .line 64160
    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0a(I)V

    .line 64161
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A05()I

    move-result v0

    if-lez v0, :cond_2

    .line 64162
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A09()I

    move-result v1

    sget v0, Lcom/facebook/ads/redexgen/X/ZH;->A0M:I

    if-ne v1, v0, :cond_1

    .line 64163
    return v2

    .line 64164
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public static A0H([Lcom/facebook/ads/redexgen/X/Cw;)[[J
    .locals 14

    .line 64165
    array-length v0, p0

    new-array v6, v0, [[J

    .line 64166
    .local p0, "accumulatedSampleSizes":[[J
    array-length v0, p0

    new-array v5, v0, [I

    .line 64167
    .local v0, "nextSampleIndex":[I
    array-length v0, p0

    new-array v4, v0, [J

    .line 64168
    .local v6, "nextSampleTimesUs":[J
    array-length v0, p0

    new-array v3, v0, [Z

    .line 64169
    .local v0, "tracksFinished":[Z
    const/4 v2, 0x0

    .local v5, "i":I
    :goto_0
    array-length v0, p0

    if-ge v2, v0, :cond_0

    .line 64170
    aget-object v0, p0, v2

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Cw;->A03:Lcom/facebook/ads/redexgen/X/D5;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/D5;->A01:I

    new-array v0, v0, [J

    aput-object v0, v6, v2

    .line 64171
    aget-object v0, p0, v2

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Cw;->A03:Lcom/facebook/ads/redexgen/X/D5;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/D5;->A07:[J

    const/4 v0, 0x0

    aget-wide v0, v1, v0

    aput-wide v0, v4, v2

    .line 64172
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 64173
    .end local v5    # "i":I
    :cond_0
    const-wide/16 v12, 0x0

    .line 64174
    .local v5, "accumulatedSampleSize":J
    const/4 v2, 0x0

    .line 64175
    .local v4, "finishedTracks":I
    :goto_1
    array-length v0, p0

    if-ge v2, v0, :cond_4

    .line 64176
    const-wide v10, 0x7fffffffffffffffL

    .line 64177
    .local v0, "minTimeUs":J
    const/4 v9, -0x1

    .line 64178
    .local v2, "minTimeTrackIndex":I
    const/4 v1, 0x0

    .local v0, "i":I
    :goto_2
    array-length v0, p0

    if-ge v1, v0, :cond_2

    .line 64179
    aget-boolean v0, v3, v1

    if-nez v0, :cond_1

    aget-wide v7, v4, v1

    cmp-long v0, v7, v10

    if-gtz v0, :cond_1

    .line 64180
    move v9, v1

    .line 64181
    aget-wide v10, v4, v1

    .line 64182
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 64183
    .end local v0    # "i":I
    :cond_2
    aget v7, v5, v9

    .line 64184
    .local v0, "trackSampleIndex":I
    aget-object v0, v6, v9

    aput-wide v12, v0, v7

    .line 64185
    aget-object v0, p0, v9

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Cw;->A03:Lcom/facebook/ads/redexgen/X/D5;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/D5;->A05:[I

    aget v0, v0, v7

    int-to-long v0, v0

    add-long/2addr v12, v0

    .line 64186
    const/4 v1, 0x1

    add-int/2addr v7, v1

    aput v7, v5, v9

    .line 64187
    aget-object v0, v6, v9

    array-length v0, v0

    if-ge v7, v0, :cond_3

    .line 64188
    aget-object v0, p0, v9

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Cw;->A03:Lcom/facebook/ads/redexgen/X/D5;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/D5;->A07:[J

    aget-wide v0, v0, v7

    aput-wide v0, v4, v9

    goto :goto_1

    .line 64189
    :cond_3
    aput-boolean v1, v3, v9

    .line 64190
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 64191
    :cond_4
    return-object v6
.end method


# virtual methods
.method public final A6J()J
    .locals 2

    .line 64192
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/ZH;->A08:J

    return-wide v0
.end method

.method public final A77(J)Lcom/facebook/ads/redexgen/X/CO;
    .locals 18

    .line 64193
    move-object/from16 v11, p0

    iget-object v1, v11, Lcom/facebook/ads/redexgen/X/ZH;->A0C:[Lcom/facebook/ads/redexgen/X/Cw;

    array-length v0, v1

    if-nez v0, :cond_0

    .line 64194
    sget-object v1, Lcom/facebook/ads/redexgen/X/CQ;->A04:Lcom/facebook/ads/redexgen/X/CQ;

    new-instance v0, Lcom/facebook/ads/redexgen/X/CO;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/CO;-><init>(Lcom/facebook/ads/redexgen/X/CQ;)V

    return-object v0

    .line 64195
    :cond_0
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 64196
    .local v8, "secondTimeUs":J
    const-wide/16 v4, -0x1

    .line 64197
    .local v1, "secondOffset":J
    iget v0, v11, Lcom/facebook/ads/redexgen/X/ZH;->A02:I

    const/4 v14, -0x1

    move-wide/from16 v8, p1

    if-eq v0, v14, :cond_1

    .line 64198
    aget-object v0, v1, v0

    iget-object v13, v0, Lcom/facebook/ads/redexgen/X/Cw;->A03:Lcom/facebook/ads/redexgen/X/D5;

    .line 64199
    .local v11, "sampleTable":Lcom/facebook/ads/redexgen/X/D5;
    invoke-static {v13, v8, v9}, Lcom/facebook/ads/redexgen/X/ZH;->A02(Lcom/facebook/ads/redexgen/X/D5;J)I

    move-result v12

    .line 64200
    .local v1, "sampleIndex":I
    if-ne v12, v14, :cond_4

    .line 64201
    sget-object v1, Lcom/facebook/ads/redexgen/X/CQ;->A04:Lcom/facebook/ads/redexgen/X/CQ;

    new-instance v0, Lcom/facebook/ads/redexgen/X/CO;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/CO;-><init>(Lcom/facebook/ads/redexgen/X/CQ;)V

    return-object v0

    .line 64202
    .end local v13
    .end local v14
    :cond_1
    move-wide v0, v8

    .line 64203
    .restart local v13
    const-wide v2, 0x7fffffffffffffffL

    goto :goto_0

    .line 64204
    :cond_2
    sget-object v16, Lcom/facebook/ads/redexgen/X/ZH;->A0K:[Ljava/lang/String;

    const-string v15, "wZC6PUUkwbL39FGS7qgHi4"

    const/4 v10, 0x4

    aput-object v15, v16, v10

    const-string v15, "ISWp"

    const/4 v10, 0x6

    aput-object v15, v16, v10

    move/from16 v10, v17

    if-ge v12, v10, :cond_3

    .line 64205
    invoke-virtual {v13, v8, v9}, Lcom/facebook/ads/redexgen/X/D5;->A01(J)I

    move-result v8

    .line 64206
    .local v6, "secondSampleIndex":I
    if-eq v8, v14, :cond_3

    if-eq v8, v12, :cond_3

    .line 64207
    iget-object v4, v13, Lcom/facebook/ads/redexgen/X/D5;->A07:[J

    aget-wide v6, v4, v8

    .line 64208
    iget-object v4, v13, Lcom/facebook/ads/redexgen/X/D5;->A06:[J

    aget-wide v4, v4, v8

    .line 64209
    .restart local v14
    :cond_3
    :goto_0
    const/4 v10, 0x0

    .end local v14
    .local v11, "i":I
    .local v1, "firstOffset":J
    .local v1, "secondOffset":J
    :goto_1
    iget-object v9, v11, Lcom/facebook/ads/redexgen/X/ZH;->A0C:[Lcom/facebook/ads/redexgen/X/Cw;

    sget-object v12, Lcom/facebook/ads/redexgen/X/ZH;->A0K:[Ljava/lang/String;

    const/4 v8, 0x5

    aget-object v12, v12, v8

    const/16 v8, 0x1c

    invoke-virtual {v12, v8}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/16 v8, 0x6c

    if-eq v12, v8, :cond_5

    goto :goto_2

    .line 64210
    :cond_4
    iget-object v0, v13, Lcom/facebook/ads/redexgen/X/D5;->A07:[J

    aget-wide v0, v0, v12

    .line 64211
    .local v11, "sampleTimeUs":J
    .local v13, "firstTimeUs":J
    iget-object v2, v13, Lcom/facebook/ads/redexgen/X/D5;->A06:[J

    aget-wide v2, v2, v12

    .line 64212
    .local v14, "firstOffset":J
    cmp-long v10, v0, v8

    if-gez v10, :cond_3

    iget v10, v13, Lcom/facebook/ads/redexgen/X/D5;->A01:I

    add-int/lit8 v17, v10, -0x1

    sget-object v15, Lcom/facebook/ads/redexgen/X/ZH;->A0K:[Ljava/lang/String;

    const/4 v10, 0x5

    aget-object v15, v15, v10

    const/16 v10, 0x1c

    invoke-virtual {v15, v10}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const/16 v10, 0x6c

    if-eq v15, v10, :cond_2

    :goto_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_5
    sget-object v13, Lcom/facebook/ads/redexgen/X/ZH;->A0K:[Ljava/lang/String;

    const-string v12, "HuKpkwhwNffVsg1qOYm34WvQGcpzf7CA"

    const/4 v8, 0x2

    aput-object v12, v13, v8

    const-string v12, "OpSxQ7AB5KpfVVm82hohcPrOWAs1xSas"

    const/4 v8, 0x3

    aput-object v12, v13, v8

    array-length v8, v9

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    if-ge v10, v8, :cond_7

    .line 64213
    iget v8, v11, Lcom/facebook/ads/redexgen/X/ZH;->A02:I

    if-eq v10, v8, :cond_6

    .line 64214
    aget-object v8, v9, v10

    iget-object v9, v8, Lcom/facebook/ads/redexgen/X/Cw;->A03:Lcom/facebook/ads/redexgen/X/D5;

    .line 64215
    .local v6, "sampleTable":Lcom/facebook/ads/redexgen/X/D5;
    invoke-static {v9, v0, v1, v2, v3}, Lcom/facebook/ads/redexgen/X/ZH;->A03(Lcom/facebook/ads/redexgen/X/D5;JJ)J

    move-result-wide v2

    .line 64216
    cmp-long v8, v6, v12

    if-eqz v8, :cond_6

    .line 64217
    invoke-static {v9, v6, v7, v4, v5}, Lcom/facebook/ads/redexgen/X/ZH;->A03(Lcom/facebook/ads/redexgen/X/D5;JJ)J

    move-result-wide v4

    .line 64218
    .end local v6    # "sampleTable":Lcom/facebook/ads/redexgen/X/D5;
    :cond_6
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 64219
    .end local v11    # "sampleTimeUs":J
    :cond_7
    new-instance v8, Lcom/facebook/ads/redexgen/X/CQ;

    invoke-direct {v8, v0, v1, v2, v3}, Lcom/facebook/ads/redexgen/X/CQ;-><init>(JJ)V

    .line 64220
    .local v11, "firstSeekPoint":Lcom/facebook/ads/redexgen/X/CQ;
    cmp-long v0, v6, v12

    if-nez v0, :cond_8

    .line 64221
    new-instance v0, Lcom/facebook/ads/redexgen/X/CO;

    invoke-direct {v0, v8}, Lcom/facebook/ads/redexgen/X/CO;-><init>(Lcom/facebook/ads/redexgen/X/CQ;)V

    return-object v0

    .line 64222
    :cond_8
    new-instance v1, Lcom/facebook/ads/redexgen/X/CQ;

    invoke-direct {v1, v6, v7, v4, v5}, Lcom/facebook/ads/redexgen/X/CQ;-><init>(JJ)V

    .line 64223
    .local v6, "secondSeekPoint":Lcom/facebook/ads/redexgen/X/CQ;
    new-instance v0, Lcom/facebook/ads/redexgen/X/CO;

    invoke-direct {v0, v8, v1}, Lcom/facebook/ads/redexgen/X/CO;-><init>(Lcom/facebook/ads/redexgen/X/CQ;Lcom/facebook/ads/redexgen/X/CQ;)V

    return-object v0
.end method

.method public final A7q(Lcom/facebook/ads/redexgen/X/CI;)V
    .locals 0

    .line 64224
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/ZH;->A09:Lcom/facebook/ads/redexgen/X/CI;

    .line 64225
    return-void
.end method

.method public final A8D()Z
    .locals 1

    .line 64226
    const/4 v0, 0x1

    return v0
.end method

.method public final ACk(Lcom/facebook/ads/redexgen/X/CH;Lcom/facebook/ads/redexgen/X/CN;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 64227
    :cond_0
    iget v3, p0, Lcom/facebook/ads/redexgen/X/ZH;->A03:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/ZH;->A0K:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/ZH;->A0K:[Ljava/lang/String;

    const-string v1, "qJxbwGisfZf9YKIw0pjhTsx78598m8MK"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "kX2rligkfJBBB9teOSCW5LaSmFhGBJWo"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-eqz v3, :cond_3

    const/4 v1, 0x1

    if-eq v3, v1, :cond_2

    const/4 v0, 0x2

    if-ne v3, v0, :cond_4

    .line 64228
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/ZH;->A01(Lcom/facebook/ads/redexgen/X/CH;Lcom/facebook/ads/redexgen/X/CN;)I

    move-result v0

    return v0

    .line 64229
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/ZH;->A0F(Lcom/facebook/ads/redexgen/X/CH;Lcom/facebook/ads/redexgen/X/CN;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64230
    return v1

    .line 64231
    :cond_3
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/ZH;->A0E(Lcom/facebook/ads/redexgen/X/CH;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 64232
    const/4 v0, -0x1

    return v0

    .line 64233
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public final ADW(JJ)V
    .locals 3

    .line 64234
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZH;->A0I:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 64235
    const/4 v1, 0x0

    iput v1, p0, Lcom/facebook/ads/redexgen/X/ZH;->A00:I

    .line 64236
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/ZH;->A06:I

    .line 64237
    iput v1, p0, Lcom/facebook/ads/redexgen/X/ZH;->A04:I

    .line 64238
    iput v1, p0, Lcom/facebook/ads/redexgen/X/ZH;->A05:I

    .line 64239
    const-wide/16 v1, 0x0

    cmp-long v0, p1, v1

    if-nez v0, :cond_1

    .line 64240
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/ZH;->A06()V

    .line 64241
    :cond_0
    :goto_0
    return-void

    .line 64242
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZH;->A0C:[Lcom/facebook/ads/redexgen/X/Cw;

    if-eqz v0, :cond_0

    .line 64243
    invoke-direct {p0, p3, p4}, Lcom/facebook/ads/redexgen/X/ZH;->A0A(J)V

    goto :goto_0
.end method

.method public final AE4(Lcom/facebook/ads/redexgen/X/CH;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 64244
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/D0;->A05(Lcom/facebook/ads/redexgen/X/CH;)Z

    move-result v0

    return v0
.end method
