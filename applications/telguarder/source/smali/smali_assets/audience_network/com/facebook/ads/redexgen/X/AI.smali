.class public final Lcom/facebook/ads/redexgen/X/AI;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A0C:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:J

.field public A03:J

.field public A04:Lcom/facebook/ads/redexgen/X/AG;

.field public A05:Lcom/facebook/ads/redexgen/X/AG;

.field public A06:Lcom/facebook/ads/redexgen/X/AG;

.field public A07:Lcom/facebook/ads/redexgen/X/Af;

.field public A08:Ljava/lang/Object;

.field public A09:Z

.field public final A0A:Lcom/facebook/ads/redexgen/X/Ad;

.field public final A0B:Lcom/facebook/ads/redexgen/X/Ae;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/AI;->A08()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 20998
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20999
    new-instance v0, Lcom/facebook/ads/redexgen/X/Ad;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Ad;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/AI;->A0A:Lcom/facebook/ads/redexgen/X/Ad;

    .line 21000
    new-instance v0, Lcom/facebook/ads/redexgen/X/Ae;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Ae;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/AI;->A0B:Lcom/facebook/ads/redexgen/X/Ae;

    .line 21001
    return-void
.end method

.method private A00(I)J
    .locals 6

    .line 21002
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/AI;->A07:Lcom/facebook/ads/redexgen/X/Af;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/AI;->A0A:Lcom/facebook/ads/redexgen/X/Ad;

    const/4 v0, 0x1

    invoke-virtual {v2, p1, v1, v0}, Lcom/facebook/ads/redexgen/X/Af;->A0A(ILcom/facebook/ads/redexgen/X/Ad;Z)Lcom/facebook/ads/redexgen/X/Ad;

    move-result-object v0

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/Ad;->A03:Ljava/lang/Object;

    .line 21003
    .local p0, "periodUid":Ljava/lang/Object;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AI;->A0A:Lcom/facebook/ads/redexgen/X/Ad;

    iget v5, v0, Lcom/facebook/ads/redexgen/X/Ad;->A00:I

    .line 21004
    .local p1, "windowIndex":I
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/AI;->A08:Ljava/lang/Object;

    const/4 v4, -0x1

    if-eqz v1, :cond_0

    .line 21005
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AI;->A07:Lcom/facebook/ads/redexgen/X/Af;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Af;->A04(Ljava/lang/Object;)I

    move-result v2

    .line 21006
    .local v2, "oldFrontPeriodIndex":I
    if-eq v2, v4, :cond_0

    .line 21007
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/AI;->A07:Lcom/facebook/ads/redexgen/X/Af;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AI;->A0A:Lcom/facebook/ads/redexgen/X/Ad;

    invoke-virtual {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/Af;->A09(ILcom/facebook/ads/redexgen/X/Ad;)Lcom/facebook/ads/redexgen/X/Ad;

    move-result-object v0

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Ad;->A00:I

    .line 21008
    .local v0, "oldFrontWindowIndex":I
    if-ne v0, v5, :cond_0

    .line 21009
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/AI;->A03:J

    return-wide v0

    .line 21010
    .end local v2    # "oldFrontPeriodIndex":I
    .end local v0    # "oldFrontWindowIndex":I
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/AI;->A0F()Lcom/facebook/ads/redexgen/X/AG;

    move-result-object v1

    .line 21011
    .local v2, "mediaPeriodHolder":Lcom/facebook/ads/redexgen/X/AG;
    :goto_0
    if-eqz v1, :cond_3

    .line 21012
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/AG;->A09:Ljava/lang/Object;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 21013
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/AG;->A02:Lcom/facebook/ads/redexgen/X/AH;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/AH;->A04:Lcom/facebook/ads/redexgen/X/FC;

    iget-wide v3, v0, Lcom/facebook/ads/redexgen/X/FC;->A03:J

    sget-object v1, Lcom/facebook/ads/redexgen/X/AI;->A0C:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6c

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/AI;->A0C:[Ljava/lang/String;

    const-string v1, "7rz7u1iPskWeyEz5w0YxbmTh7wjrHYEn"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    return-wide v3

    .line 21014
    :cond_1
    iget-object v1, v1, Lcom/facebook/ads/redexgen/X/AG;->A01:Lcom/facebook/ads/redexgen/X/AG;

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 21015
    :cond_3
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/AI;->A0F()Lcom/facebook/ads/redexgen/X/AG;

    move-result-object v3

    .line 21016
    :goto_1
    if-eqz v3, :cond_5

    .line 21017
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/AI;->A07:Lcom/facebook/ads/redexgen/X/Af;

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/AG;->A09:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Af;->A04(Ljava/lang/Object;)I

    move-result v2

    .line 21018
    .local v0, "indexOfHolderInTimeline":I
    if-eq v2, v4, :cond_4

    .line 21019
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/AI;->A07:Lcom/facebook/ads/redexgen/X/Af;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AI;->A0A:Lcom/facebook/ads/redexgen/X/Ad;

    invoke-virtual {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/Af;->A09(ILcom/facebook/ads/redexgen/X/Ad;)Lcom/facebook/ads/redexgen/X/Ad;

    move-result-object v0

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Ad;->A00:I

    .line 21020
    .local v0, "holderWindowIndex":I
    if-ne v0, v5, :cond_4

    .line 21021
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/AG;->A02:Lcom/facebook/ads/redexgen/X/AH;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/AH;->A04:Lcom/facebook/ads/redexgen/X/FC;

    iget-wide v0, v0, Lcom/facebook/ads/redexgen/X/FC;->A03:J

    return-wide v0

    .line 21022
    .end local v0    # "holderWindowIndex":I
    :cond_4
    iget-object v3, v3, Lcom/facebook/ads/redexgen/X/AG;->A01:Lcom/facebook/ads/redexgen/X/AG;

    .line 21023
    .end local v0
    goto :goto_1

    .line 21024
    :cond_5
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/AI;->A02:J

    const-wide/16 v0, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/AI;->A02:J

    return-wide v2
.end method

.method private A01(IIIJJ)Lcom/facebook/ads/redexgen/X/AH;
    .locals 17

    .line 21025
    move-object/from16 v3, p0

    new-instance v6, Lcom/facebook/ads/redexgen/X/FC;

    move/from16 v4, p3

    move/from16 v5, p2

    move-wide/from16 v10, p6

    move/from16 v7, p1

    move-object v6, v6

    move v8, v5

    move v9, v4

    invoke-direct/range {v6 .. v11}, Lcom/facebook/ads/redexgen/X/FC;-><init>(IIIJ)V

    .line 21026
    .local v7, "id":Lcom/facebook/ads/redexgen/X/FC;
    const-wide/high16 v0, -0x8000000000000000L

    invoke-direct {v3, v6, v0, v1}, Lcom/facebook/ads/redexgen/X/AI;->A0B(Lcom/facebook/ads/redexgen/X/FC;J)Z

    move-result v15

    .line 21027
    .local v5, "isLastInPeriod":Z
    invoke-direct {v3, v6, v15}, Lcom/facebook/ads/redexgen/X/AI;->A0C(Lcom/facebook/ads/redexgen/X/FC;Z)Z

    move-result v16

    .line 21028
    .local v4, "isLastInTimeline":Z
    iget-object v2, v3, Lcom/facebook/ads/redexgen/X/AI;->A07:Lcom/facebook/ads/redexgen/X/Af;

    iget v1, v6, Lcom/facebook/ads/redexgen/X/FC;->A02:I

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/AI;->A0A:Lcom/facebook/ads/redexgen/X/Ad;

    .line 21029
    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Af;->A09(ILcom/facebook/ads/redexgen/X/Ad;)Lcom/facebook/ads/redexgen/X/Ad;

    move-result-object v2

    iget v1, v6, Lcom/facebook/ads/redexgen/X/FC;->A00:I

    iget v0, v6, Lcom/facebook/ads/redexgen/X/FC;->A01:I

    .line 21030
    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ad;->A0A(II)J

    move-result-wide v13

    .line 21031
    .local v11, "durationUs":J
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/AI;->A0A:Lcom/facebook/ads/redexgen/X/Ad;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/Ad;->A02(I)I

    move-result v0

    if-ne v4, v0, :cond_0

    .line 21032
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/AI;->A0A:Lcom/facebook/ads/redexgen/X/Ad;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ad;->A06()J

    move-result-wide v7

    .line 21033
    .local v6, "startPositionUs":J
    :goto_0
    new-instance v5, Lcom/facebook/ads/redexgen/X/AH;

    const-wide/high16 v9, -0x8000000000000000L

    move-wide/from16 v11, p4

    invoke-direct/range {v5 .. v16}, Lcom/facebook/ads/redexgen/X/AH;-><init>(Lcom/facebook/ads/redexgen/X/FC;JJJJZZ)V

    return-object v5

    .line 21034
    :cond_0
    const-wide/16 v7, 0x0

    goto :goto_0
.end method

.method private A02(IJJ)Lcom/facebook/ads/redexgen/X/AH;
    .locals 16

    .line 21035
    move-object/from16 v4, p0

    new-instance v5, Lcom/facebook/ads/redexgen/X/FC;

    move-wide/from16 v0, p4

    move/from16 v2, p1

    invoke-direct {v5, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/FC;-><init>(IJ)V

    .line 21036
    .local v2, "id":Lcom/facebook/ads/redexgen/X/FC;
    iget-object v2, v4, Lcom/facebook/ads/redexgen/X/AI;->A07:Lcom/facebook/ads/redexgen/X/Af;

    iget v1, v5, Lcom/facebook/ads/redexgen/X/FC;->A02:I

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/AI;->A0A:Lcom/facebook/ads/redexgen/X/Ad;

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Af;->A09(ILcom/facebook/ads/redexgen/X/Ad;)Lcom/facebook/ads/redexgen/X/Ad;

    .line 21037
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/AI;->A0A:Lcom/facebook/ads/redexgen/X/Ad;

    move-wide/from16 v6, p2

    invoke-virtual {v0, v6, v7}, Lcom/facebook/ads/redexgen/X/Ad;->A04(J)I

    move-result v3

    .line 21038
    .local v6, "nextAdGroupIndex":I
    const-wide/high16 v1, -0x8000000000000000L

    const/4 v0, -0x1

    if-ne v3, v0, :cond_1

    .line 21039
    move-wide v8, v1

    .line 21040
    .local v9, "endUs":J
    :goto_0
    invoke-direct {v4, v5, v8, v9}, Lcom/facebook/ads/redexgen/X/AI;->A0B(Lcom/facebook/ads/redexgen/X/FC;J)Z

    move-result v14

    .line 21041
    .local v2, "isLastInPeriod":Z
    invoke-direct {v4, v5, v14}, Lcom/facebook/ads/redexgen/X/AI;->A0C(Lcom/facebook/ads/redexgen/X/FC;Z)Z

    move-result v15

    .line 21042
    .local v3, "isLastInTimeline":Z
    cmp-long v0, v8, v1

    if-nez v0, :cond_0

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/AI;->A0A:Lcom/facebook/ads/redexgen/X/Ad;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ad;->A07()J

    move-result-wide v12

    .line 21043
    .local v0, "durationUs":J
    :goto_1
    new-instance v4, Lcom/facebook/ads/redexgen/X/AH;

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    .end local v2    # "isLastInPeriod":Z
    .local v8, "isLastInPeriod":Z
    .end local v9    # "endUs":J
    .local p6, "endUs":J
    .end local v6    # "nextAdGroupIndex":I
    .local p3, "nextAdGroupIndex":I
    invoke-direct/range {v4 .. v15}, Lcom/facebook/ads/redexgen/X/AH;-><init>(Lcom/facebook/ads/redexgen/X/FC;JJJJZZ)V

    return-object v4

    .line 21044
    :cond_0
    move-wide v12, v8

    goto :goto_1

    .line 21045
    :cond_1
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/AI;->A0A:Lcom/facebook/ads/redexgen/X/Ad;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/Ad;->A09(I)J

    move-result-wide v8

    goto :goto_0
.end method

.method private A03(Lcom/facebook/ads/redexgen/X/AG;J)Lcom/facebook/ads/redexgen/X/AH;
    .locals 14
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 21046
    move-object v0, p0

    iget-object v2, p1, Lcom/facebook/ads/redexgen/X/AG;->A02:Lcom/facebook/ads/redexgen/X/AH;

    .line 21047
    .local v5, "mediaPeriodInfo":Lcom/facebook/ads/redexgen/X/AH;
    iget-boolean v1, v2, Lcom/facebook/ads/redexgen/X/AH;->A06:Z

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_4

    .line 21048
    iget-object v5, v0, Lcom/facebook/ads/redexgen/X/AI;->A07:Lcom/facebook/ads/redexgen/X/Af;

    iget-object v1, v2, Lcom/facebook/ads/redexgen/X/AH;->A04:Lcom/facebook/ads/redexgen/X/FC;

    iget v6, v1, Lcom/facebook/ads/redexgen/X/FC;->A02:I

    iget-object v7, v0, Lcom/facebook/ads/redexgen/X/AI;->A0A:Lcom/facebook/ads/redexgen/X/Ad;

    iget-object v8, v0, Lcom/facebook/ads/redexgen/X/AI;->A0B:Lcom/facebook/ads/redexgen/X/Ae;

    iget v9, v0, Lcom/facebook/ads/redexgen/X/AI;->A01:I

    iget-boolean v10, v0, Lcom/facebook/ads/redexgen/X/AI;->A09:Z

    .line 21049
    invoke-virtual/range {v5 .. v10}, Lcom/facebook/ads/redexgen/X/Af;->A03(ILcom/facebook/ads/redexgen/X/Ad;Lcom/facebook/ads/redexgen/X/Ae;IZ)I

    move-result v7

    .line 21050
    .local p0, "nextPeriodIndex":I
    if-ne v7, v3, :cond_0

    .line 21051
    return-object v4

    .line 21052
    :cond_0
    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/AI;->A07:Lcom/facebook/ads/redexgen/X/Af;

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/AI;->A0A:Lcom/facebook/ads/redexgen/X/Ad;

    .line 21053
    const/4 v1, 0x1

    invoke-virtual {v4, v7, v3, v1}, Lcom/facebook/ads/redexgen/X/Af;->A0A(ILcom/facebook/ads/redexgen/X/Ad;Z)Lcom/facebook/ads/redexgen/X/Ad;

    move-result-object v1

    iget v9, v1, Lcom/facebook/ads/redexgen/X/Ad;->A00:I

    .line 21054
    .local v2, "nextWindowIndex":I
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/AI;->A0A:Lcom/facebook/ads/redexgen/X/Ad;

    iget-object v5, v1, Lcom/facebook/ads/redexgen/X/Ad;->A03:Ljava/lang/Object;

    .line 21055
    .local v1, "nextPeriodUid":Ljava/lang/Object;
    iget-object v1, v2, Lcom/facebook/ads/redexgen/X/AH;->A04:Lcom/facebook/ads/redexgen/X/FC;

    iget-wide v10, v1, Lcom/facebook/ads/redexgen/X/FC;->A03:J

    .line 21056
    .local v3, "windowSequenceNumber":J
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/AI;->A07:Lcom/facebook/ads/redexgen/X/Af;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/AI;->A0B:Lcom/facebook/ads/redexgen/X/Ae;

    invoke-virtual {v3, v9, v1}, Lcom/facebook/ads/redexgen/X/Af;->A0B(ILcom/facebook/ads/redexgen/X/Ae;)Lcom/facebook/ads/redexgen/X/Ae;

    move-result-object v1

    iget v1, v1, Lcom/facebook/ads/redexgen/X/Ae;->A00:I

    if-ne v1, v7, :cond_3

    .line 21057
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/AG;->A08()J

    move-result-wide v3

    iget-wide v1, v2, Lcom/facebook/ads/redexgen/X/AH;->A01:J

    add-long/2addr v3, v1

    sub-long v3, v3, p2

    .line 21058
    .local v8, "defaultPositionProjectionUs":J
    iget-object v6, v0, Lcom/facebook/ads/redexgen/X/AI;->A07:Lcom/facebook/ads/redexgen/X/Af;

    iget-object v7, v0, Lcom/facebook/ads/redexgen/X/AI;->A0B:Lcom/facebook/ads/redexgen/X/Ae;

    iget-object v8, v0, Lcom/facebook/ads/redexgen/X/AI;->A0A:Lcom/facebook/ads/redexgen/X/Ad;

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    .end local v3    # "windowSequenceNumber":J
    .local v4, "windowSequenceNumber":J
    const-wide/16 v1, 0x0

    .line 21059
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    .line 21060
    .end local v8    # "defaultPositionProjectionUs":J
    .local v3, "defaultPositionProjectionUs":J
    invoke-virtual/range {v6 .. v13}, Lcom/facebook/ads/redexgen/X/Af;->A08(Lcom/facebook/ads/redexgen/X/Ae;Lcom/facebook/ads/redexgen/X/Ad;IJJ)Landroid/util/Pair;

    move-result-object v2

    .line 21061
    .local p1, "defaultPosition":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Long;>;"
    if-nez v2, :cond_1

    .line 21062
    const/4 v0, 0x0

    return-object v0

    .line 21063
    :cond_1
    iget-object v1, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 21064
    iget-object v1, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 21065
    .local v1, "startPositionUs":J
    iget-object v1, p1, Lcom/facebook/ads/redexgen/X/AG;->A01:Lcom/facebook/ads/redexgen/X/AG;

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/facebook/ads/redexgen/X/AG;->A01:Lcom/facebook/ads/redexgen/X/AG;

    iget-object v1, v1, Lcom/facebook/ads/redexgen/X/AG;->A09:Ljava/lang/Object;

    invoke-virtual {v1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 21066
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/AG;->A01:Lcom/facebook/ads/redexgen/X/AG;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/AG;->A02:Lcom/facebook/ads/redexgen/X/AH;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/AH;->A04:Lcom/facebook/ads/redexgen/X/FC;

    iget-wide v10, v0, Lcom/facebook/ads/redexgen/X/FC;->A03:J

    .end local v4    # "windowSequenceNumber":J
    .local v7, "windowSequenceNumber":J
    goto :goto_0

    .line 21067
    .end local v7    # "windowSequenceNumber":J
    .restart local v4    # "windowSequenceNumber":J
    :cond_2
    iget-wide v10, v0, Lcom/facebook/ads/redexgen/X/AI;->A02:J

    const-wide/16 v3, 0x1

    .end local p0    # "nextPeriodIndex":I
    .end local p1    # "defaultPosition":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Long;>;"
    .local p2, "defaultPosition":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Long;>;"
    .local p1, "nextPeriodIndex":I
    add-long v1, v10, v3

    iput-wide v1, v0, Lcom/facebook/ads/redexgen/X/AI;->A02:J

    goto :goto_0

    .line 21068
    .end local p1    # "nextPeriodIndex":I
    .end local v1    # "startPositionUs":J
    .end local v7
    .restart local p0    # "nextPeriodIndex":I
    .local v3, "windowSequenceNumber":J
    .end local v3    # "windowSequenceNumber":J
    .restart local v4    # "windowSequenceNumber":J
    :cond_3
    const-wide/16 v8, 0x0

    .line 21069
    .end local p0    # "nextPeriodIndex":I
    .local v1, "nextPeriodIndex":I
    .local v6, "startPositionUs":J
    :goto_0
    move-object v6, p0

    invoke-direct/range {v6 .. v11}, Lcom/facebook/ads/redexgen/X/AI;->A07(IJJ)Lcom/facebook/ads/redexgen/X/FC;

    move-result-object v7

    .line 21070
    .local v8, "periodId":Lcom/facebook/ads/redexgen/X/FC;
    move-wide v10, v8

    invoke-direct/range {v6 .. v11}, Lcom/facebook/ads/redexgen/X/AI;->A06(Lcom/facebook/ads/redexgen/X/FC;JJ)Lcom/facebook/ads/redexgen/X/AH;

    move-result-object v0

    return-object v0

    .line 21071
    .end local v2    # "nextWindowIndex":I
    .end local v1    # "nextPeriodIndex":I
    .end local v1
    .end local v6    # "startPositionUs":J
    .end local v8    # "periodId":Lcom/facebook/ads/redexgen/X/FC;
    .end local v4    # "windowSequenceNumber":J
    :cond_4
    iget-object v1, v2, Lcom/facebook/ads/redexgen/X/AH;->A04:Lcom/facebook/ads/redexgen/X/FC;

    .line 21072
    .local v1, "currentPeriodId":Lcom/facebook/ads/redexgen/X/FC;
    iget-object v6, v0, Lcom/facebook/ads/redexgen/X/AI;->A07:Lcom/facebook/ads/redexgen/X/Af;

    iget v5, v1, Lcom/facebook/ads/redexgen/X/FC;->A02:I

    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/AI;->A0A:Lcom/facebook/ads/redexgen/X/Ad;

    invoke-virtual {v6, v5, v4}, Lcom/facebook/ads/redexgen/X/Af;->A09(ILcom/facebook/ads/redexgen/X/Ad;)Lcom/facebook/ads/redexgen/X/Ad;

    .line 21073
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/FC;->A01()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 21074
    iget v6, v1, Lcom/facebook/ads/redexgen/X/FC;->A00:I

    .line 21075
    .local v6, "adGroupIndex":I
    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/AI;->A0A:Lcom/facebook/ads/redexgen/X/Ad;

    invoke-virtual {v4, v6}, Lcom/facebook/ads/redexgen/X/Ad;->A01(I)I

    move-result v5

    .line 21076
    .local v7, "adCountInCurrentAdGroup":I
    if-ne v5, v3, :cond_5

    .line 21077
    const/4 v0, 0x0

    return-object v0

    .line 21078
    :cond_5
    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/AI;->A0A:Lcom/facebook/ads/redexgen/X/Ad;

    iget v3, v1, Lcom/facebook/ads/redexgen/X/FC;->A01:I

    .line 21079
    invoke-virtual {v4, v6, v3}, Lcom/facebook/ads/redexgen/X/Ad;->A03(II)I

    move-result v7

    .line 21080
    .local v8, "nextAdIndexInAdGroup":I
    if-ge v7, v5, :cond_7

    .line 21081
    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/AI;->A0A:Lcom/facebook/ads/redexgen/X/Ad;

    invoke-virtual {v0, v6, v7}, Lcom/facebook/ads/redexgen/X/Ad;->A0E(II)Z

    move-result v0

    if-nez v0, :cond_6

    .line 21082
    const/4 v0, 0x0

    .line 21083
    :goto_1
    return-object v0

    .line 21084
    :cond_6
    iget v5, v1, Lcom/facebook/ads/redexgen/X/FC;->A02:I

    iget-wide v8, v2, Lcom/facebook/ads/redexgen/X/AH;->A00:J

    iget-wide v10, v1, Lcom/facebook/ads/redexgen/X/FC;->A03:J

    move-object v4, p0

    invoke-direct/range {v4 .. v11}, Lcom/facebook/ads/redexgen/X/AI;->A01(IIIJJ)Lcom/facebook/ads/redexgen/X/AH;

    move-result-object v0

    goto :goto_1

    .line 21085
    :cond_7
    iget v3, v1, Lcom/facebook/ads/redexgen/X/FC;->A02:I

    iget-wide v4, v2, Lcom/facebook/ads/redexgen/X/AH;->A00:J

    iget-wide v6, v1, Lcom/facebook/ads/redexgen/X/FC;->A03:J

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/facebook/ads/redexgen/X/AI;->A02(IJJ)Lcom/facebook/ads/redexgen/X/AH;

    move-result-object v0

    return-object v0

    .line 21086
    .end local v6    # "adGroupIndex":I
    .end local v7    # "adCountInCurrentAdGroup":I
    .end local v8    # "nextAdIndexInAdGroup":I
    :cond_8
    iget-wide v5, v2, Lcom/facebook/ads/redexgen/X/AH;->A02:J

    const-wide/high16 v7, -0x8000000000000000L

    cmp-long v4, v5, v7

    if-eqz v4, :cond_b

    .line 21087
    iget-object v6, v0, Lcom/facebook/ads/redexgen/X/AI;->A0A:Lcom/facebook/ads/redexgen/X/Ad;

    iget-wide v4, v2, Lcom/facebook/ads/redexgen/X/AH;->A02:J

    invoke-virtual {v6, v4, v5}, Lcom/facebook/ads/redexgen/X/Ad;->A05(J)I

    move-result v4

    .line 21088
    .local v6, "nextAdGroupIndex":I
    if-ne v4, v3, :cond_9

    .line 21089
    iget v3, v1, Lcom/facebook/ads/redexgen/X/FC;->A02:I

    iget-wide v4, v2, Lcom/facebook/ads/redexgen/X/AH;->A02:J

    iget-wide v6, v1, Lcom/facebook/ads/redexgen/X/FC;->A03:J

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/facebook/ads/redexgen/X/AI;->A02(IJJ)Lcom/facebook/ads/redexgen/X/AH;

    move-result-object v0

    return-object v0

    .line 21090
    :cond_9
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/AI;->A0A:Lcom/facebook/ads/redexgen/X/Ad;

    invoke-virtual {v3, v4}, Lcom/facebook/ads/redexgen/X/Ad;->A02(I)I

    move-result v5

    .line 21091
    .local v7, "adIndexInAdGroup":I
    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/AI;->A0A:Lcom/facebook/ads/redexgen/X/Ad;

    invoke-virtual {v0, v4, v5}, Lcom/facebook/ads/redexgen/X/Ad;->A0E(II)Z

    move-result v0

    if-nez v0, :cond_a

    .line 21092
    const/4 v0, 0x0

    .line 21093
    :goto_2
    return-object v0

    .line 21094
    :cond_a
    iget v3, v1, Lcom/facebook/ads/redexgen/X/FC;->A02:I

    iget-wide v6, v2, Lcom/facebook/ads/redexgen/X/AH;->A02:J

    iget-wide v8, v1, Lcom/facebook/ads/redexgen/X/FC;->A03:J

    move-object v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/facebook/ads/redexgen/X/AI;->A01(IIIJJ)Lcom/facebook/ads/redexgen/X/AH;

    move-result-object v0

    goto :goto_2

    .line 21095
    .end local v6    # "nextAdGroupIndex":I
    .end local v7    # "adIndexInAdGroup":I
    :cond_b
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/AI;->A0A:Lcom/facebook/ads/redexgen/X/Ad;

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Ad;->A00()I

    move-result v2

    .line 21096
    .local v6, "adGroupCount":I
    if-nez v2, :cond_c

    .line 21097
    const/4 v3, 0x0

    sget-object v2, Lcom/facebook/ads/redexgen/X/AI;->A0C:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/16 v0, 0x1f

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_d

    :goto_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 21098
    :cond_c
    add-int/lit8 v6, v2, -0x1

    .line 21099
    .local v7, "adGroupIndex":I
    iget-object v5, v0, Lcom/facebook/ads/redexgen/X/AI;->A0A:Lcom/facebook/ads/redexgen/X/Ad;

    sget-object v3, Lcom/facebook/ads/redexgen/X/AI;->A0C:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v3, v3, v2

    const/16 v2, 0x14

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v2, 0x4c

    if-eq v3, v2, :cond_e

    goto :goto_3

    :cond_d
    sget-object v2, Lcom/facebook/ads/redexgen/X/AI;->A0C:[Ljava/lang/String;

    const-string v1, "WsQM9ifSqAWrxnLdkyGfKDAbsMX"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    return-object v3

    :cond_e
    sget-object v4, Lcom/facebook/ads/redexgen/X/AI;->A0C:[Ljava/lang/String;

    const-string v3, "TMQo4w2xpIQlLuek8zKzpXQ9s3hyvPcZ"

    const/4 v2, 0x2

    aput-object v3, v4, v2

    const-string v3, "Jx1ivKMimQCgid9RqMW6xg7MPxrHW0RZ"

    const/4 v2, 0x0

    aput-object v3, v4, v2

    invoke-virtual {v5, v6}, Lcom/facebook/ads/redexgen/X/Ad;->A09(I)J

    move-result-wide v3

    cmp-long v2, v3, v7

    if-nez v2, :cond_f

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/AI;->A0A:Lcom/facebook/ads/redexgen/X/Ad;

    .line 21100
    invoke-virtual {v2, v6}, Lcom/facebook/ads/redexgen/X/Ad;->A0D(I)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 21101
    .end local v8
    .end local v9
    :cond_f
    const/4 v0, 0x0

    return-object v0

    .line 21102
    :cond_10
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/AI;->A0A:Lcom/facebook/ads/redexgen/X/Ad;

    invoke-virtual {v2, v6}, Lcom/facebook/ads/redexgen/X/Ad;->A02(I)I

    move-result v7

    .line 21103
    .local v8, "adIndexInAdGroup":I
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/AI;->A0A:Lcom/facebook/ads/redexgen/X/Ad;

    invoke-virtual {v2, v6, v7}, Lcom/facebook/ads/redexgen/X/Ad;->A0E(II)Z

    move-result v2

    if-nez v2, :cond_11

    .line 21104
    const/4 v0, 0x0

    return-object v0

    .line 21105
    :cond_11
    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/AI;->A0A:Lcom/facebook/ads/redexgen/X/Ad;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ad;->A07()J

    move-result-wide v8

    .line 21106
    .local v9, "contentDurationUs":J
    iget v5, v1, Lcom/facebook/ads/redexgen/X/FC;->A02:I

    iget-wide v10, v1, Lcom/facebook/ads/redexgen/X/FC;->A03:J

    move-object v4, p0

    invoke-direct/range {v4 .. v11}, Lcom/facebook/ads/redexgen/X/AI;->A01(IIIJJ)Lcom/facebook/ads/redexgen/X/AH;

    move-result-object v0

    return-object v0
.end method

.method private A04(Lcom/facebook/ads/redexgen/X/AH;Lcom/facebook/ads/redexgen/X/FC;)Lcom/facebook/ads/redexgen/X/AH;
    .locals 19

    .line 21107
    move-object/from16 v5, p0

    move-object/from16 v3, p1

    iget-wide v9, v3, Lcom/facebook/ads/redexgen/X/AH;->A03:J

    .line 21108
    .local v4, "startPositionUs":J
    iget-wide v11, v3, Lcom/facebook/ads/redexgen/X/AH;->A02:J

    .line 21109
    .local v11, "endPositionUs":J
    move-object/from16 v8, p2

    invoke-direct {v5, v8, v11, v12}, Lcom/facebook/ads/redexgen/X/AI;->A0B(Lcom/facebook/ads/redexgen/X/FC;J)Z

    move-result v2

    .line 21110
    .local v0, "isLastInPeriod":Z
    invoke-direct {v5, v8, v2}, Lcom/facebook/ads/redexgen/X/AI;->A0C(Lcom/facebook/ads/redexgen/X/FC;Z)Z

    move-result v18

    .line 21111
    .local v4, "isLastInTimeline":Z
    iget-object v4, v5, Lcom/facebook/ads/redexgen/X/AI;->A07:Lcom/facebook/ads/redexgen/X/Af;

    iget v1, v8, Lcom/facebook/ads/redexgen/X/FC;->A02:I

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/AI;->A0A:Lcom/facebook/ads/redexgen/X/Ad;

    invoke-virtual {v4, v1, v0}, Lcom/facebook/ads/redexgen/X/Af;->A09(ILcom/facebook/ads/redexgen/X/Ad;)Lcom/facebook/ads/redexgen/X/Ad;

    .line 21112
    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/FC;->A01()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 21113
    iget-object v4, v5, Lcom/facebook/ads/redexgen/X/AI;->A0A:Lcom/facebook/ads/redexgen/X/Ad;

    iget v1, v8, Lcom/facebook/ads/redexgen/X/FC;->A00:I

    iget v0, v8, Lcom/facebook/ads/redexgen/X/FC;->A01:I

    invoke-virtual {v4, v1, v0}, Lcom/facebook/ads/redexgen/X/Ad;->A0A(II)J

    move-result-wide v15

    .line 21114
    .local v2, "durationUs":J
    :goto_0
    new-instance v7, Lcom/facebook/ads/redexgen/X/AH;

    iget-wide v13, v3, Lcom/facebook/ads/redexgen/X/AH;->A00:J

    .end local v11    # "endPositionUs":J
    .local p1, "endPositionUs":J
    .end local v4    # "isLastInTimeline":Z
    .local v0, "startPositionUs":J
    move/from16 v17, v2

    invoke-direct/range {v7 .. v18}, Lcom/facebook/ads/redexgen/X/AH;-><init>(Lcom/facebook/ads/redexgen/X/FC;JJJJZZ)V

    return-object v7

    .line 21115
    :cond_0
    const-wide/high16 v6, -0x8000000000000000L

    sget-object v4, Lcom/facebook/ads/redexgen/X/AI;->A0C:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v4, v0

    const/4 v0, 0x0

    aget-object v4, v4, v0

    const/16 v0, 0x1f

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v4, Lcom/facebook/ads/redexgen/X/AI;->A0C:[Ljava/lang/String;

    const-string v1, "HObwU1bCytT144ySGTgxVNrzDzn5BC0Z"

    const/4 v0, 0x2

    aput-object v1, v4, v0

    const-string v1, "3TAkPElpBrxeM9OtVLVnhmAt5Pc5msVZ"

    const/4 v0, 0x0

    aput-object v1, v4, v0

    cmp-long v0, v11, v6

    if-nez v0, :cond_2

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/AI;->A0A:Lcom/facebook/ads/redexgen/X/Ad;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ad;->A07()J

    move-result-wide v15

    goto :goto_0

    :cond_2
    move-wide v15, v11

    goto :goto_0
.end method

.method private A05(Lcom/facebook/ads/redexgen/X/AK;)Lcom/facebook/ads/redexgen/X/AH;
    .locals 6

    .line 21116
    iget-object v1, p1, Lcom/facebook/ads/redexgen/X/AK;->A04:Lcom/facebook/ads/redexgen/X/FC;

    iget-wide v2, p1, Lcom/facebook/ads/redexgen/X/AK;->A01:J

    iget-wide v4, p1, Lcom/facebook/ads/redexgen/X/AK;->A02:J

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/AI;->A06(Lcom/facebook/ads/redexgen/X/FC;JJ)Lcom/facebook/ads/redexgen/X/AH;

    move-result-object v0

    return-object v0
.end method

.method private A06(Lcom/facebook/ads/redexgen/X/FC;JJ)Lcom/facebook/ads/redexgen/X/AH;
    .locals 8

    .line 21117
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/AI;->A07:Lcom/facebook/ads/redexgen/X/Af;

    iget v1, p1, Lcom/facebook/ads/redexgen/X/FC;->A02:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AI;->A0A:Lcom/facebook/ads/redexgen/X/Ad;

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Af;->A09(ILcom/facebook/ads/redexgen/X/Ad;)Lcom/facebook/ads/redexgen/X/Ad;

    .line 21118
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/FC;->A01()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 21119
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/AI;->A0A:Lcom/facebook/ads/redexgen/X/Ad;

    sget-object v1, Lcom/facebook/ads/redexgen/X/AI;->A0C:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0x14

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x4c

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/AI;->A0C:[Ljava/lang/String;

    const-string v1, "3JBvK2"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    iget v1, p1, Lcom/facebook/ads/redexgen/X/FC;->A00:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/FC;->A01:I

    invoke-virtual {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/Ad;->A0E(II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 21120
    const/4 v0, 0x0

    return-object v0

    .line 21121
    :cond_1
    iget v1, p1, Lcom/facebook/ads/redexgen/X/FC;->A02:I

    iget v2, p1, Lcom/facebook/ads/redexgen/X/FC;->A00:I

    iget v3, p1, Lcom/facebook/ads/redexgen/X/FC;->A01:I

    iget-wide v6, p1, Lcom/facebook/ads/redexgen/X/FC;->A03:J

    move-object v0, p0

    move-wide v4, p2

    invoke-direct/range {v0 .. v7}, Lcom/facebook/ads/redexgen/X/AI;->A01(IIIJJ)Lcom/facebook/ads/redexgen/X/AH;

    move-result-object v0

    return-object v0

    .line 21122
    :cond_2
    iget v1, p1, Lcom/facebook/ads/redexgen/X/FC;->A02:I

    iget-wide v4, p1, Lcom/facebook/ads/redexgen/X/FC;->A03:J

    move-object v0, p0

    move-wide v2, p4

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/AI;->A02(IJJ)Lcom/facebook/ads/redexgen/X/AH;

    move-result-object v0

    return-object v0
.end method

.method private A07(IJJ)Lcom/facebook/ads/redexgen/X/FC;
    .locals 7

    .line 21123
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/AI;->A07:Lcom/facebook/ads/redexgen/X/Af;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AI;->A0A:Lcom/facebook/ads/redexgen/X/Ad;

    move v2, p1

    invoke-virtual {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/Af;->A09(ILcom/facebook/ads/redexgen/X/Ad;)Lcom/facebook/ads/redexgen/X/Ad;

    .line 21124
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AI;->A0A:Lcom/facebook/ads/redexgen/X/Ad;

    invoke-virtual {v0, p2, p3}, Lcom/facebook/ads/redexgen/X/Ad;->A05(J)I

    move-result v3

    .line 21125
    .local p0, "adGroupIndex":I
    const/4 v0, -0x1

    move-wide v5, p4

    if-ne v3, v0, :cond_0

    .line 21126
    new-instance v0, Lcom/facebook/ads/redexgen/X/FC;

    invoke-direct {v0, v2, v5, v6}, Lcom/facebook/ads/redexgen/X/FC;-><init>(IJ)V

    return-object v0

    .line 21127
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AI;->A0A:Lcom/facebook/ads/redexgen/X/Ad;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/Ad;->A02(I)I

    move-result v4

    .line 21128
    .local v0, "adIndexInAdGroup":I
    new-instance v1, Lcom/facebook/ads/redexgen/X/FC;

    invoke-direct/range {v1 .. v6}, Lcom/facebook/ads/redexgen/X/FC;-><init>(IIIJ)V

    return-object v1
.end method

.method public static A08()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "bEYrQcjIlR9VeVjxwaTg0uDcNHwEyAOZ"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "4oGIv7j6CV9C8v5F2xOZLP9FSIC9eyYe"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "B9Zw6xUwyDL2lfYXJA4DZwUPpX0gJPFZ"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "oC7"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "W2J"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "CiHt"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "OQWIlGGefpP5l4MGnEpmsCb71sUYvhnr"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "d5JPn6QHw3I6YCLECg9fBZ9m"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/AI;->A0C:[Ljava/lang/String;

    return-void
.end method

.method private A09()Z
    .locals 11

    .line 21129
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/AI;->A0F()Lcom/facebook/ads/redexgen/X/AG;

    move-result-object v3

    .line 21130
    .local p0, "lastValidPeriodHolder":Lcom/facebook/ads/redexgen/X/AG;
    const/4 v4, 0x1

    if-nez v3, :cond_0

    .line 21131
    return v4

    .line 21132
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/AI;->A07:Lcom/facebook/ads/redexgen/X/Af;

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/AG;->A02:Lcom/facebook/ads/redexgen/X/AH;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/AH;->A04:Lcom/facebook/ads/redexgen/X/FC;

    iget v6, v0, Lcom/facebook/ads/redexgen/X/FC;->A02:I

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/AI;->A0A:Lcom/facebook/ads/redexgen/X/Ad;

    iget-object v8, p0, Lcom/facebook/ads/redexgen/X/AI;->A0B:Lcom/facebook/ads/redexgen/X/Ae;

    iget v9, p0, Lcom/facebook/ads/redexgen/X/AI;->A01:I

    iget-boolean v10, p0, Lcom/facebook/ads/redexgen/X/AI;->A09:Z

    .line 21133
    invoke-virtual/range {v5 .. v10}, Lcom/facebook/ads/redexgen/X/Af;->A03(ILcom/facebook/ads/redexgen/X/Ad;Lcom/facebook/ads/redexgen/X/Ae;IZ)I

    move-result v1

    .line 21134
    .local v4, "nextPeriodIndex":I
    :goto_1
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/AG;->A01:Lcom/facebook/ads/redexgen/X/AG;

    if-eqz v0, :cond_1

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/AG;->A02:Lcom/facebook/ads/redexgen/X/AH;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/AH;->A06:Z

    if-nez v0, :cond_1

    .line 21135
    iget-object v3, v3, Lcom/facebook/ads/redexgen/X/AG;->A01:Lcom/facebook/ads/redexgen/X/AG;

    goto :goto_1

    .line 21136
    :cond_1
    const/4 v0, -0x1

    if-eq v1, v0, :cond_2

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/AG;->A01:Lcom/facebook/ads/redexgen/X/AG;

    if-eqz v0, :cond_2

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/AG;->A01:Lcom/facebook/ads/redexgen/X/AG;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/AG;->A02:Lcom/facebook/ads/redexgen/X/AH;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/AH;->A04:Lcom/facebook/ads/redexgen/X/FC;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/FC;->A02:I

    if-eq v0, v1, :cond_5

    .line 21137
    :cond_2
    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/AI;->A0T(Lcom/facebook/ads/redexgen/X/AG;)Z

    move-result v2

    .line 21138
    .local v4, "readingPeriodRemoved":Z
    iget-object v1, v3, Lcom/facebook/ads/redexgen/X/AG;->A02:Lcom/facebook/ads/redexgen/X/AH;

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/AG;->A02:Lcom/facebook/ads/redexgen/X/AH;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/AH;->A04:Lcom/facebook/ads/redexgen/X/FC;

    .line 21139
    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/AI;->A04(Lcom/facebook/ads/redexgen/X/AH;Lcom/facebook/ads/redexgen/X/FC;)Lcom/facebook/ads/redexgen/X/AH;

    move-result-object v0

    iput-object v0, v3, Lcom/facebook/ads/redexgen/X/AG;->A02:Lcom/facebook/ads/redexgen/X/AH;

    .line 21140
    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/AI;->A0Q()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    :goto_2
    return v4

    :cond_4
    const/4 v4, 0x0

    goto :goto_2

    .line 21141
    :cond_5
    iget-object v3, v3, Lcom/facebook/ads/redexgen/X/AG;->A01:Lcom/facebook/ads/redexgen/X/AG;

    .line 21142
    .end local v4    # "readingPeriodRemoved":Z
    goto :goto_0
.end method

.method private A0A(Lcom/facebook/ads/redexgen/X/AG;Lcom/facebook/ads/redexgen/X/AH;)Z
    .locals 6

    .line 21143
    iget-object v5, p1, Lcom/facebook/ads/redexgen/X/AG;->A02:Lcom/facebook/ads/redexgen/X/AH;

    .line 21144
    .local p0, "periodHolderInfo":Lcom/facebook/ads/redexgen/X/AH;
    iget-wide v3, v5, Lcom/facebook/ads/redexgen/X/AH;->A03:J

    iget-wide v1, p2, Lcom/facebook/ads/redexgen/X/AH;->A03:J

    cmp-long v0, v3, v1

    if-nez v0, :cond_0

    iget-wide v3, v5, Lcom/facebook/ads/redexgen/X/AH;->A02:J

    iget-wide v1, p2, Lcom/facebook/ads/redexgen/X/AH;->A02:J

    cmp-long v0, v3, v1

    if-nez v0, :cond_0

    iget-object v1, v5, Lcom/facebook/ads/redexgen/X/AH;->A04:Lcom/facebook/ads/redexgen/X/FC;

    iget-object v0, p2, Lcom/facebook/ads/redexgen/X/AH;->A04:Lcom/facebook/ads/redexgen/X/FC;

    .line 21145
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/FC;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 21146
    :goto_0
    return v0

    .line 21147
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private A0B(Lcom/facebook/ads/redexgen/X/FC;J)Z
    .locals 10

    .line 21148
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/AI;->A07:Lcom/facebook/ads/redexgen/X/Af;

    iget v1, p1, Lcom/facebook/ads/redexgen/X/FC;->A02:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AI;->A0A:Lcom/facebook/ads/redexgen/X/Ad;

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Af;->A09(ILcom/facebook/ads/redexgen/X/Ad;)Lcom/facebook/ads/redexgen/X/Ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ad;->A00()I

    move-result v0

    .line 21149
    .local p0, "adGroupCount":I
    const/4 v9, 0x1

    if-nez v0, :cond_0

    .line 21150
    return v9

    .line 21151
    :cond_0
    add-int/lit8 v3, v0, -0x1

    .line 21152
    .local p2, "lastAdGroupIndex":I
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/FC;->A01()Z

    move-result v8

    .line 21153
    .local v3, "isAd":Z
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AI;->A0A:Lcom/facebook/ads/redexgen/X/Ad;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/Ad;->A09(I)J

    move-result-wide v6

    const-wide/high16 v4, -0x8000000000000000L

    const/4 v1, 0x0

    cmp-long v0, v6, v4

    if-eqz v0, :cond_2

    .line 21154
    if-nez v8, :cond_1

    cmp-long v0, p2, v4

    if-nez v0, :cond_1

    :goto_0
    return v9

    :cond_1
    const/4 v9, 0x0

    goto :goto_0

    .line 21155
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AI;->A0A:Lcom/facebook/ads/redexgen/X/Ad;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/Ad;->A01(I)I

    move-result v2

    .line 21156
    .local v2, "postrollAdCount":I
    const/4 v0, -0x1

    if-ne v2, v0, :cond_3

    .line 21157
    return v1

    .line 21158
    :cond_3
    if-eqz v8, :cond_6

    iget v0, p1, Lcom/facebook/ads/redexgen/X/FC;->A00:I

    if-ne v0, v3, :cond_6

    iget v1, p1, Lcom/facebook/ads/redexgen/X/FC;->A01:I

    add-int/lit8 v0, v2, -0x1

    if-ne v1, v0, :cond_6

    const/4 v0, 0x1

    .line 21159
    .local v1, "isLastAd":Z
    :goto_1
    if-nez v0, :cond_4

    if-nez v8, :cond_5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AI;->A0A:Lcom/facebook/ads/redexgen/X/Ad;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/Ad;->A02(I)I

    move-result v0

    if-ne v0, v2, :cond_5

    :cond_4
    :goto_2
    return v9

    :cond_5
    const/4 v9, 0x0

    goto :goto_2

    .line 21160
    :cond_6
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private A0C(Lcom/facebook/ads/redexgen/X/FC;Z)Z
    .locals 6

    .line 21161
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/AI;->A07:Lcom/facebook/ads/redexgen/X/Af;

    iget v1, p1, Lcom/facebook/ads/redexgen/X/FC;->A02:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AI;->A0A:Lcom/facebook/ads/redexgen/X/Ad;

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Af;->A09(ILcom/facebook/ads/redexgen/X/Ad;)Lcom/facebook/ads/redexgen/X/Ad;

    move-result-object v0

    iget v2, v0, Lcom/facebook/ads/redexgen/X/Ad;->A00:I

    .line 21162
    .local p0, "windowIndex":I
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/AI;->A07:Lcom/facebook/ads/redexgen/X/Af;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AI;->A0B:Lcom/facebook/ads/redexgen/X/Ae;

    invoke-virtual {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/Af;->A0B(ILcom/facebook/ads/redexgen/X/Ae;)Lcom/facebook/ads/redexgen/X/Ae;

    move-result-object v0

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/Ae;->A08:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AI;->A07:Lcom/facebook/ads/redexgen/X/Af;

    iget v1, p1, Lcom/facebook/ads/redexgen/X/FC;->A02:I

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/AI;->A0A:Lcom/facebook/ads/redexgen/X/Ad;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/AI;->A0B:Lcom/facebook/ads/redexgen/X/Ae;

    iget v4, p0, Lcom/facebook/ads/redexgen/X/AI;->A01:I

    iget-boolean v5, p0, Lcom/facebook/ads/redexgen/X/AI;->A09:Z

    .line 21163
    invoke-virtual/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/Af;->A0F(ILcom/facebook/ads/redexgen/X/Ad;Lcom/facebook/ads/redexgen/X/Ae;IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    .line 21164
    :goto_0
    return v0

    .line 21165
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final A0D()Lcom/facebook/ads/redexgen/X/AG;
    .locals 4

    .line 21166
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/AI;->A05:Lcom/facebook/ads/redexgen/X/AG;

    if-eqz v1, :cond_2

    .line 21167
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AI;->A06:Lcom/facebook/ads/redexgen/X/AG;

    if-ne v1, v0, :cond_0

    .line 21168
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/AG;->A01:Lcom/facebook/ads/redexgen/X/AG;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/AI;->A06:Lcom/facebook/ads/redexgen/X/AG;

    .line 21169
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AI;->A05:Lcom/facebook/ads/redexgen/X/AG;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/AG;->A0E()V

    .line 21170
    iget v0, p0, Lcom/facebook/ads/redexgen/X/AI;->A00:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/AI;->A00:I

    .line 21171
    iget v0, p0, Lcom/facebook/ads/redexgen/X/AI;->A00:I

    if-nez v0, :cond_1

    .line 21172
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/AI;->A04:Lcom/facebook/ads/redexgen/X/AG;

    .line 21173
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AI;->A05:Lcom/facebook/ads/redexgen/X/AG;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/AG;->A09:Ljava/lang/Object;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/AI;->A08:Ljava/lang/Object;

    .line 21174
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AI;->A05:Lcom/facebook/ads/redexgen/X/AG;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/AG;->A02:Lcom/facebook/ads/redexgen/X/AH;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/AH;->A04:Lcom/facebook/ads/redexgen/X/FC;

    iget-wide v0, v0, Lcom/facebook/ads/redexgen/X/FC;->A03:J

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/AI;->A03:J

    .line 21175
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AI;->A05:Lcom/facebook/ads/redexgen/X/AG;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/AG;->A01:Lcom/facebook/ads/redexgen/X/AG;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/AI;->A05:Lcom/facebook/ads/redexgen/X/AG;

    .line 21176
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AI;->A05:Lcom/facebook/ads/redexgen/X/AG;

    return-object v0

    .line 21177
    :cond_2
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/AI;->A04:Lcom/facebook/ads/redexgen/X/AG;

    sget-object v1, Lcom/facebook/ads/redexgen/X/AI;->A0C:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x13

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/AI;->A0C:[Ljava/lang/String;

    const-string v1, "8pYscKVbr67nw5uKL9pTL1KUX2733IaG"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/AI;->A05:Lcom/facebook/ads/redexgen/X/AG;

    .line 21178
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/AI;->A06:Lcom/facebook/ads/redexgen/X/AG;

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A0E()Lcom/facebook/ads/redexgen/X/AG;
    .locals 4

    .line 21179
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AI;->A06:Lcom/facebook/ads/redexgen/X/AG;

    if-eqz v0, :cond_0

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/AG;->A01:Lcom/facebook/ads/redexgen/X/AG;

    sget-object v1, Lcom/facebook/ads/redexgen/X/AI;->A0C:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x13

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/AI;->A0C:[Ljava/lang/String;

    const-string v1, "xWuw4CrqhbONIUuvj"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A04(Z)V

    sget-object v1, Lcom/facebook/ads/redexgen/X/AI;->A0C:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6c

    if-eq v1, v0, :cond_1

    .line 21180
    sget-object v2, Lcom/facebook/ads/redexgen/X/AI;->A0C:[Ljava/lang/String;

    const-string v1, "9XjiiNJcemcnD222WMkkLQCFiEe00fOl"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AI;->A06:Lcom/facebook/ads/redexgen/X/AG;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/AG;->A01:Lcom/facebook/ads/redexgen/X/AG;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/AI;->A06:Lcom/facebook/ads/redexgen/X/AG;

    .line 21181
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AI;->A06:Lcom/facebook/ads/redexgen/X/AG;

    return-object v0

    .line 21182
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A0F()Lcom/facebook/ads/redexgen/X/AG;
    .locals 1

    .line 21183
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/AI;->A0Q()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AI;->A05:Lcom/facebook/ads/redexgen/X/AG;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AI;->A04:Lcom/facebook/ads/redexgen/X/AG;

    goto :goto_0
.end method

.method public final A0G()Lcom/facebook/ads/redexgen/X/AG;
    .locals 1

    .line 21184
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AI;->A04:Lcom/facebook/ads/redexgen/X/AG;

    return-object v0
.end method

.method public final A0H()Lcom/facebook/ads/redexgen/X/AG;
    .locals 1

    .line 21185
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AI;->A05:Lcom/facebook/ads/redexgen/X/AG;

    return-object v0
.end method

.method public final A0I()Lcom/facebook/ads/redexgen/X/AG;
    .locals 1

    .line 21186
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AI;->A06:Lcom/facebook/ads/redexgen/X/AG;

    return-object v0
.end method

.method public final A0J(JLcom/facebook/ads/redexgen/X/AK;)Lcom/facebook/ads/redexgen/X/AH;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 21187
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AI;->A04:Lcom/facebook/ads/redexgen/X/AG;

    if-nez v0, :cond_0

    .line 21188
    invoke-direct {p0, p3}, Lcom/facebook/ads/redexgen/X/AI;->A05(Lcom/facebook/ads/redexgen/X/AK;)Lcom/facebook/ads/redexgen/X/AH;

    move-result-object v0

    .line 21189
    :goto_0
    return-object v0

    .line 21190
    :cond_0
    invoke-direct {p0, v0, p1, p2}, Lcom/facebook/ads/redexgen/X/AI;->A03(Lcom/facebook/ads/redexgen/X/AG;J)Lcom/facebook/ads/redexgen/X/AH;

    move-result-object v0

    goto :goto_0
.end method

.method public final A0K(Lcom/facebook/ads/redexgen/X/AH;I)Lcom/facebook/ads/redexgen/X/AH;
    .locals 1

    .line 21191
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/AH;->A04:Lcom/facebook/ads/redexgen/X/FC;

    .line 21192
    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/FC;->A00(I)Lcom/facebook/ads/redexgen/X/FC;

    move-result-object v0

    .line 21193
    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/AI;->A04(Lcom/facebook/ads/redexgen/X/AH;Lcom/facebook/ads/redexgen/X/FC;)Lcom/facebook/ads/redexgen/X/AH;

    move-result-object v0

    return-object v0
.end method

.method public final A0L([Lcom/facebook/ads/redexgen/X/AY;Lcom/facebook/ads/redexgen/X/H7;Lcom/facebook/ads/redexgen/X/HA;Lcom/facebook/ads/redexgen/X/FE;Ljava/lang/Object;Lcom/facebook/ads/redexgen/X/AH;)Lcom/facebook/ads/redexgen/X/UN;
    .locals 13

    .line 21194
    move-object v3, p0

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/AI;->A04:Lcom/facebook/ads/redexgen/X/AG;

    move-object/from16 v12, p6

    if-nez v0, :cond_1

    .line 21195
    sget-object v2, Lcom/facebook/ads/redexgen/X/AI;->A0C:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/16 v0, 0x1f

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    :goto_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/AI;->A0C:[Ljava/lang/String;

    const-string v1, "2xV2g0tElH2HFInUqKEHJV"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    iget-wide v6, v12, Lcom/facebook/ads/redexgen/X/AH;->A03:J

    goto :goto_1

    .line 21196
    :cond_1
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/AG;->A08()J

    move-result-wide v6

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/AI;->A04:Lcom/facebook/ads/redexgen/X/AG;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/AG;->A02:Lcom/facebook/ads/redexgen/X/AH;

    iget-wide v0, v0, Lcom/facebook/ads/redexgen/X/AH;->A01:J

    add-long/2addr v6, v0

    .line 21197
    .local v10, "rendererPositionOffsetUs":J
    :goto_1
    new-instance v4, Lcom/facebook/ads/redexgen/X/AG;

    move-object/from16 v11, p5

    move-object/from16 v10, p4

    move-object/from16 v9, p3

    move-object v8, p2

    move-object v5, p1

    invoke-direct/range {v4 .. v12}, Lcom/facebook/ads/redexgen/X/AG;-><init>([Lcom/facebook/ads/redexgen/X/AY;JLcom/facebook/ads/redexgen/X/H7;Lcom/facebook/ads/redexgen/X/HA;Lcom/facebook/ads/redexgen/X/FE;Ljava/lang/Object;Lcom/facebook/ads/redexgen/X/AH;)V

    .line 21198
    .local v5, "newPeriodHolder":Lcom/facebook/ads/redexgen/X/AG;
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/AI;->A04:Lcom/facebook/ads/redexgen/X/AG;

    if-eqz v0, :cond_3

    .line 21199
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/AI;->A0Q()Z

    move-result v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A04(Z)V

    sget-object v1, Lcom/facebook/ads/redexgen/X/AI;->A0C:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0x14

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x4c

    if-eq v1, v0, :cond_2

    goto :goto_0

    .line 21200
    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/AI;->A0C:[Ljava/lang/String;

    const-string v1, "Vbl5120yO9E2DqFXjEj4olGb2LCa2dL7"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/AI;->A04:Lcom/facebook/ads/redexgen/X/AG;

    iput-object v4, v0, Lcom/facebook/ads/redexgen/X/AG;->A01:Lcom/facebook/ads/redexgen/X/AG;

    .line 21201
    :cond_3
    const/4 v0, 0x0

    iput-object v0, v3, Lcom/facebook/ads/redexgen/X/AI;->A08:Ljava/lang/Object;

    .line 21202
    iput-object v4, v3, Lcom/facebook/ads/redexgen/X/AI;->A04:Lcom/facebook/ads/redexgen/X/AG;

    .line 21203
    iget v0, v3, Lcom/facebook/ads/redexgen/X/AI;->A00:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v3, Lcom/facebook/ads/redexgen/X/AI;->A00:I

    .line 21204
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/AG;->A08:Lcom/facebook/ads/redexgen/X/UN;

    return-object v0
.end method

.method public final A0M(IJ)Lcom/facebook/ads/redexgen/X/FC;
    .locals 6

    .line 21205
    move v1, p1

    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/AI;->A00(I)J

    move-result-wide v4

    .line 21206
    .local v0, "windowSequenceNumber":J
    move-object v0, p0

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/AI;->A07(IJJ)Lcom/facebook/ads/redexgen/X/FC;

    move-result-object v0

    return-object v0
.end method

.method public final A0N(J)V
    .locals 1

    .line 21207
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AI;->A04:Lcom/facebook/ads/redexgen/X/AG;

    if-eqz v0, :cond_0

    .line 21208
    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/AG;->A0H(J)V

    .line 21209
    :cond_0
    return-void
.end method

.method public final A0O(Lcom/facebook/ads/redexgen/X/Af;)V
    .locals 0

    .line 21210
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/AI;->A07:Lcom/facebook/ads/redexgen/X/Af;

    .line 21211
    return-void
.end method

.method public final A0P(Z)V
    .locals 4

    .line 21212
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/AI;->A0F()Lcom/facebook/ads/redexgen/X/AG;

    move-result-object v3

    .line 21213
    .local p0, "front":Lcom/facebook/ads/redexgen/X/AG;
    const/4 v2, 0x0

    if-eqz v3, :cond_2

    .line 21214
    if-eqz p1, :cond_1

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/AG;->A09:Ljava/lang/Object;

    :goto_0
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/AI;->A08:Ljava/lang/Object;

    .line 21215
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/AG;->A02:Lcom/facebook/ads/redexgen/X/AH;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/AH;->A04:Lcom/facebook/ads/redexgen/X/FC;

    iget-wide v0, v0, Lcom/facebook/ads/redexgen/X/FC;->A03:J

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/AI;->A03:J

    .line 21216
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/AG;->A0E()V

    .line 21217
    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/AI;->A0T(Lcom/facebook/ads/redexgen/X/AG;)Z

    .line 21218
    :cond_0
    :goto_1
    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/AI;->A05:Lcom/facebook/ads/redexgen/X/AG;

    .line 21219
    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/AI;->A04:Lcom/facebook/ads/redexgen/X/AG;

    .line 21220
    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/AI;->A06:Lcom/facebook/ads/redexgen/X/AG;

    .line 21221
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/AI;->A00:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/AI;->A0C:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0x14

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x4c

    if-eq v1, v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 21222
    :cond_1
    move-object v0, v2

    goto :goto_0

    .line 21223
    :cond_2
    if-nez p1, :cond_0

    .line 21224
    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/AI;->A08:Ljava/lang/Object;

    goto :goto_1

    .line 21225
    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/AI;->A0C:[Ljava/lang/String;

    const-string v1, "c17"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "v7RL"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    return-void
.end method

.method public final A0Q()Z
    .locals 1

    .line 21226
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AI;->A05:Lcom/facebook/ads/redexgen/X/AG;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0R()Z
    .locals 5

    .line 21227
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AI;->A04:Lcom/facebook/ads/redexgen/X/AG;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/AG;->A02:Lcom/facebook/ads/redexgen/X/AH;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/AH;->A05:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AI;->A04:Lcom/facebook/ads/redexgen/X/AG;

    .line 21228
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/AG;->A0I()Z

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/AI;->A0C:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/AI;->A0C:[Ljava/lang/String;

    const-string v1, "6wg"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "8G1h"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-eqz v3, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AI;->A04:Lcom/facebook/ads/redexgen/X/AG;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/AG;->A02:Lcom/facebook/ads/redexgen/X/AH;

    iget-wide v3, v0, Lcom/facebook/ads/redexgen/X/AH;->A01:J

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v3, v1

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/facebook/ads/redexgen/X/AI;->A00:I

    const/16 v0, 0x64

    if-ge v1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 21229
    :goto_0
    return v0

    .line 21230
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A0S(I)Z
    .locals 1

    .line 21231
    iput p1, p0, Lcom/facebook/ads/redexgen/X/AI;->A01:I

    .line 21232
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/AI;->A09()Z

    move-result v0

    return v0
.end method

.method public final A0T(Lcom/facebook/ads/redexgen/X/AG;)Z
    .locals 4

    .line 21233
    const/4 v3, 0x1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A04(Z)V

    sget-object v1, Lcom/facebook/ads/redexgen/X/AI;->A0C:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0x14

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x4c

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 21234
    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/AI;->A0C:[Ljava/lang/String;

    const-string v1, "jdSpWdiokXPYNaEh021EL8BLRlMRnuSO"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v2, 0x0

    .line 21235
    .local p1, "removedReading":Z
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/AI;->A04:Lcom/facebook/ads/redexgen/X/AG;

    .line 21236
    :goto_1
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/AG;->A01:Lcom/facebook/ads/redexgen/X/AG;

    if-eqz v0, :cond_3

    .line 21237
    iget-object p1, p1, Lcom/facebook/ads/redexgen/X/AG;->A01:Lcom/facebook/ads/redexgen/X/AG;

    .line 21238
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AI;->A06:Lcom/facebook/ads/redexgen/X/AG;

    if-ne p1, v0, :cond_2

    .line 21239
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AI;->A05:Lcom/facebook/ads/redexgen/X/AG;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/AI;->A06:Lcom/facebook/ads/redexgen/X/AG;

    .line 21240
    const/4 v2, 0x1

    .line 21241
    :cond_2
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/AG;->A0E()V

    .line 21242
    iget v0, p0, Lcom/facebook/ads/redexgen/X/AI;->A00:I

    sub-int/2addr v0, v3

    iput v0, p0, Lcom/facebook/ads/redexgen/X/AI;->A00:I

    goto :goto_1

    .line 21243
    :cond_3
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/AI;->A04:Lcom/facebook/ads/redexgen/X/AG;

    const/4 v0, 0x0

    iput-object v0, v1, Lcom/facebook/ads/redexgen/X/AG;->A01:Lcom/facebook/ads/redexgen/X/AG;

    .line 21244
    return v2
.end method

.method public final A0U(Lcom/facebook/ads/redexgen/X/UN;)Z
    .locals 1

    .line 21245
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AI;->A04:Lcom/facebook/ads/redexgen/X/AG;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/AG;->A08:Lcom/facebook/ads/redexgen/X/UN;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0V(Lcom/facebook/ads/redexgen/X/FC;J)Z
    .locals 12

    .line 21246
    iget v7, p1, Lcom/facebook/ads/redexgen/X/FC;->A02:I

    .line 21247
    .local p0, "periodIndex":I
    const/4 v4, 0x0

    .line 21248
    .local p1, "previousPeriodHolder":Lcom/facebook/ads/redexgen/X/AG;
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/AI;->A0F()Lcom/facebook/ads/redexgen/X/AG;

    move-result-object v2

    .line 21249
    .local p2, "periodHolder":Lcom/facebook/ads/redexgen/X/AG;
    :goto_0
    const/4 v3, 0x1

    if-eqz v2, :cond_9

    .line 21250
    if-nez v4, :cond_2

    .line 21251
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/AG;->A02:Lcom/facebook/ads/redexgen/X/AH;

    invoke-virtual {p0, v0, v7}, Lcom/facebook/ads/redexgen/X/AI;->A0K(Lcom/facebook/ads/redexgen/X/AH;I)Lcom/facebook/ads/redexgen/X/AH;

    move-result-object v0

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/AG;->A02:Lcom/facebook/ads/redexgen/X/AH;

    .line 21252
    .end local v7
    :cond_0
    iget-object v4, v2, Lcom/facebook/ads/redexgen/X/AG;->A02:Lcom/facebook/ads/redexgen/X/AH;

    sget-object v1, Lcom/facebook/ads/redexgen/X/AI;->A0C:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1f

    if-eq v1, v0, :cond_8

    sget-object v3, Lcom/facebook/ads/redexgen/X/AI;->A0C:[Ljava/lang/String;

    const-string v1, "3G71Bu9A0RkToxstqNHP"

    const/4 v0, 0x3

    aput-object v1, v3, v0

    iget-boolean v0, v4, Lcom/facebook/ads/redexgen/X/AH;->A06:Z

    if-eqz v0, :cond_1

    .line 21253
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/AI;->A07:Lcom/facebook/ads/redexgen/X/Af;

    iget-object v8, p0, Lcom/facebook/ads/redexgen/X/AI;->A0A:Lcom/facebook/ads/redexgen/X/Ad;

    iget-object v9, p0, Lcom/facebook/ads/redexgen/X/AI;->A0B:Lcom/facebook/ads/redexgen/X/Ae;

    iget v10, p0, Lcom/facebook/ads/redexgen/X/AI;->A01:I

    iget-boolean v11, p0, Lcom/facebook/ads/redexgen/X/AI;->A09:Z

    .line 21254
    invoke-virtual/range {v6 .. v11}, Lcom/facebook/ads/redexgen/X/Af;->A03(ILcom/facebook/ads/redexgen/X/Ad;Lcom/facebook/ads/redexgen/X/Ae;IZ)I

    move-result v7

    .line 21255
    :cond_1
    move-object v4, v2

    .line 21256
    iget-object v2, v2, Lcom/facebook/ads/redexgen/X/AG;->A01:Lcom/facebook/ads/redexgen/X/AG;

    goto :goto_0

    .line 21257
    :cond_2
    const/4 v6, -0x1

    sget-object v1, Lcom/facebook/ads/redexgen/X/AI;->A0C:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x13

    if-eq v1, v0, :cond_8

    sget-object v5, Lcom/facebook/ads/redexgen/X/AI;->A0C:[Ljava/lang/String;

    const-string v1, "Ch946DMB9dsICbr36HCOJYkfWHMccdnw"

    const/4 v0, 0x6

    aput-object v1, v5, v0

    if-eq v7, v6, :cond_3

    iget-object v5, v2, Lcom/facebook/ads/redexgen/X/AG;->A09:Ljava/lang/Object;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/AI;->A07:Lcom/facebook/ads/redexgen/X/Af;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AI;->A0A:Lcom/facebook/ads/redexgen/X/Ad;

    .line 21258
    invoke-virtual {v1, v7, v0, v3}, Lcom/facebook/ads/redexgen/X/Af;->A0A(ILcom/facebook/ads/redexgen/X/Ad;Z)Lcom/facebook/ads/redexgen/X/Ad;

    move-result-object v0

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Ad;->A03:Ljava/lang/Object;

    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 21259
    :cond_3
    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/AI;->A0T(Lcom/facebook/ads/redexgen/X/AG;)Z

    move-result v0

    xor-int/2addr v3, v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/AI;->A0C:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1f

    if-eq v1, v0, :cond_6

    sget-object v2, Lcom/facebook/ads/redexgen/X/AI;->A0C:[Ljava/lang/String;

    const-string v1, "slx89Xyfv4ik3rfuyRaeLpJLeWMcmFG2"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    return v3

    .line 21260
    :cond_4
    invoke-direct {p0, v4, p2, p3}, Lcom/facebook/ads/redexgen/X/AI;->A03(Lcom/facebook/ads/redexgen/X/AG;J)Lcom/facebook/ads/redexgen/X/AH;

    move-result-object v1

    .line 21261
    .local v7, "periodInfo":Lcom/facebook/ads/redexgen/X/AH;
    if-nez v1, :cond_5

    .line 21262
    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/AI;->A0T(Lcom/facebook/ads/redexgen/X/AG;)Z

    move-result v4

    sget-object v1, Lcom/facebook/ads/redexgen/X/AI;->A0C:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x13

    if-eq v1, v0, :cond_8

    sget-object v2, Lcom/facebook/ads/redexgen/X/AI;->A0C:[Ljava/lang/String;

    const-string v1, "8zhzAAxJtXgL1vPqbok21pDEUs2kDxAr"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    xor-int/2addr v3, v4

    return v3

    .line 21263
    :cond_5
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/AG;->A02:Lcom/facebook/ads/redexgen/X/AH;

    invoke-virtual {p0, v0, v7}, Lcom/facebook/ads/redexgen/X/AI;->A0K(Lcom/facebook/ads/redexgen/X/AH;I)Lcom/facebook/ads/redexgen/X/AH;

    move-result-object v0

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/AG;->A02:Lcom/facebook/ads/redexgen/X/AH;

    .line 21264
    invoke-direct {p0, v2, v1}, Lcom/facebook/ads/redexgen/X/AI;->A0A(Lcom/facebook/ads/redexgen/X/AG;Lcom/facebook/ads/redexgen/X/AH;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 21265
    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/AI;->A0T(Lcom/facebook/ads/redexgen/X/AG;)Z

    move-result v0

    xor-int/2addr v3, v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/AI;->A0C:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0x14

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x4c

    if-eq v1, v0, :cond_7

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_6
    sget-object v2, Lcom/facebook/ads/redexgen/X/AI;->A0C:[Ljava/lang/String;

    const-string v1, "8Q7t3ud5ustFgSTwUfnBSS"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    return v3

    :cond_7
    sget-object v2, Lcom/facebook/ads/redexgen/X/AI;->A0C:[Ljava/lang/String;

    const-string v1, "8jppWzHrTDuREl36GBNavpt129s8vsE0"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    return v3

    :cond_8
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 21266
    :cond_9
    return v3
.end method

.method public final A0W(Z)Z
    .locals 1

    .line 21267
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/AI;->A09:Z

    .line 21268
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/AI;->A09()Z

    move-result v0

    return v0
.end method
