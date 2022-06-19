.class public final Lcom/facebook/ads/redexgen/X/BI;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/exoplayer2/audio/AudioTrackPositionTracker$PlayState;,
        Lcom/facebook/ads/redexgen/X/BG;
    }
.end annotation


# static fields
.field public static A0P:[B

.field public static A0Q:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:I

.field public A05:J

.field public A06:J

.field public A07:J

.field public A08:J

.field public A09:J

.field public A0A:J

.field public A0B:J

.field public A0C:J

.field public A0D:J

.field public A0E:J

.field public A0F:J

.field public A0G:J

.field public A0H:Landroid/media/AudioTrack;

.field public A0I:Lcom/facebook/ads/redexgen/X/BF;

.field public A0J:Ljava/lang/reflect/Method;

.field public A0K:Z

.field public A0L:Z

.field public A0M:Z

.field public final A0N:Lcom/facebook/ads/redexgen/X/BG;

.field public final A0O:[J


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/BI;->A07()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/BI;->A06()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/BG;)V
    .locals 4

    .line 22863
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22864
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Hx;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/BG;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/BI;->A0N:Lcom/facebook/ads/redexgen/X/BG;

    .line 22865
    sget v1, Lcom/facebook/ads/redexgen/X/Ic;->A02:I

    const/16 v0, 0x12

    if-lt v1, v0, :cond_0

    .line 22866
    :try_start_0
    const-class v3, Landroid/media/AudioTrack;

    const/4 v2, 0x0

    const/16 v1, 0xa

    const/16 v0, 0x36

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/BI;->A03(III)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Class;

    invoke-virtual {v3, v1, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/BI;->A0J:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22867
    :catch_0
    :cond_0
    const/16 v0, 0xa

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/BI;->A0O:[J

    .line 22868
    return-void
.end method

.method private A00()J
    .locals 11

    .line 22869
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/BI;->A0G:J

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v1, v6

    if-eqz v0, :cond_0

    .line 22870
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v0, 0x3e8

    mul-long/2addr v2, v0

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/BI;->A0G:J

    sub-long/2addr v2, v0

    .line 22871
    .local p0, "elapsedTimeSinceStopUs":J
    iget v0, p0, Lcom/facebook/ads/redexgen/X/BI;->A03:I

    int-to-long v4, v0

    mul-long/2addr v4, v2

    const-wide/32 v0, 0xf4240

    div-long/2addr v4, v0

    .line 22872
    .local v2, "framesSinceStop":J
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/BI;->A06:J

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/BI;->A0F:J

    add-long/2addr v0, v4

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0

    .line 22873
    .end local p0    # "elapsedTimeSinceStopUs":J
    .end local v2    # "framesSinceStop":J
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BI;->A0H:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v3

    .line 22874
    .local p0, "state":I
    const/4 v0, 0x1

    const-wide/16 v9, 0x0

    if-ne v3, v0, :cond_1

    .line 22875
    return-wide v9

    .line 22876
    :cond_1
    const-wide v4, 0xffffffffL

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BI;->A0H:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlaybackHeadPosition()I

    move-result v0

    int-to-long v0, v0

    and-long/2addr v4, v0

    .line 22877
    .local v2, "rawPlaybackHeadPosition":J
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/BI;->A0M:Z

    if-eqz v0, :cond_4

    .line 22878
    const/4 v8, 0x2

    sget-object v2, Lcom/facebook/ads/redexgen/X/BI;->A0Q:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/BI;->A0Q:[Ljava/lang/String;

    const-string v1, ""

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-ne v3, v8, :cond_3

    cmp-long v0, v4, v9

    if-nez v0, :cond_3

    .line 22879
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/BI;->A0A:J

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/BI;->A0C:J

    .line 22880
    :cond_3
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/BI;->A0C:J

    add-long/2addr v4, v0

    .line 22881
    :cond_4
    sget v1, Lcom/facebook/ads/redexgen/X/Ic;->A02:I

    const/16 v0, 0x1c

    if-gt v1, v0, :cond_7

    .line 22882
    cmp-long v0, v4, v9

    if-nez v0, :cond_6

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/BI;->A0A:J

    cmp-long v0, v1, v9

    if-lez v0, :cond_6

    const/4 v0, 0x3

    if-ne v3, v0, :cond_6

    .line 22883
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/BI;->A07:J

    cmp-long v0, v1, v6

    if-nez v0, :cond_5

    .line 22884
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/BI;->A07:J

    .line 22885
    :cond_5
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/BI;->A0A:J

    return-wide v0

    .line 22886
    :cond_6
    iput-wide v6, p0, Lcom/facebook/ads/redexgen/X/BI;->A07:J

    .line 22887
    :cond_7
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/BI;->A0A:J

    cmp-long v0, v1, v4

    if-lez v0, :cond_8

    .line 22888
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/BI;->A0D:J

    const-wide/16 v0, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/BI;->A0D:J

    .line 22889
    :cond_8
    iput-wide v4, p0, Lcom/facebook/ads/redexgen/X/BI;->A0A:J

    .line 22890
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/BI;->A0D:J

    const/16 v0, 0x20

    shl-long/2addr v1, v0

    add-long/2addr v1, v4

    return-wide v1
.end method

.method private A01()J
    .locals 2

    .line 22891
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/BI;->A00()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/BI;->A02(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private A02(J)J
    .locals 4

    .line 22892
    const-wide/32 v2, 0xf4240

    mul-long/2addr v2, p1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/BI;->A03:I

    int-to-long v0, v0

    div-long/2addr v2, v0

    return-wide v2
.end method

.method public static A03(III)Ljava/lang/String;
    .locals 3

    sget-object v1, Lcom/facebook/ads/redexgen/X/BI;->A0P:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 p1, 0x0

    :goto_0
    array-length v0, p0

    if-ge p1, v0, :cond_1

    aget-byte v0, p0, p1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x72

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    sget-object v2, Lcom/facebook/ads/redexgen/X/BI;->A0Q:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x4

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
    sget-object v2, Lcom/facebook/ads/redexgen/X/BI;->A0Q:[Ljava/lang/String;

    const-string v1, "JHNnaOdpL9rZ5VZWZH"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A04()V
    .locals 12

    .line 22893
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/BI;->A01()J

    move-result-wide v4

    .line 22894
    .local p0, "playbackPositionUs":J
    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-nez v0, :cond_0

    .line 22895
    return-void

    .line 22896
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    const-wide/16 v0, 0x3e8

    div-long/2addr v2, v0

    .line 22897
    .local v4, "systemTimeUs":J
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/BI;->A09:J

    sub-long v10, v2, v0

    const-wide/16 v8, 0x7530

    cmp-long v0, v10, v8

    if-ltz v0, :cond_2

    .line 22898
    iget-object v9, p0, Lcom/facebook/ads/redexgen/X/BI;->A0O:[J

    iget v8, p0, Lcom/facebook/ads/redexgen/X/BI;->A01:I

    sub-long v0, v4, v2

    aput-wide v0, v9, v8

    .line 22899
    add-int/lit8 v0, v8, 0x1

    const/16 v1, 0xa

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/BI;->A01:I

    .line 22900
    iget v0, p0, Lcom/facebook/ads/redexgen/X/BI;->A04:I

    if-ge v0, v1, :cond_1

    .line 22901
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/BI;->A04:I

    .line 22902
    :cond_1
    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/BI;->A09:J

    .line 22903
    iput-wide v6, p0, Lcom/facebook/ads/redexgen/X/BI;->A0E:J

    .line 22904
    const/4 v10, 0x0

    .local v2, "i":I
    :goto_0
    iget v1, p0, Lcom/facebook/ads/redexgen/X/BI;->A04:I

    if-ge v10, v1, :cond_2

    .line 22905
    iget-wide v8, p0, Lcom/facebook/ads/redexgen/X/BI;->A0E:J

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BI;->A0O:[J

    aget-wide v6, v0, v10

    int-to-long v0, v1

    div-long/2addr v6, v0

    add-long/2addr v8, v6

    iput-wide v8, p0, Lcom/facebook/ads/redexgen/X/BI;->A0E:J

    .line 22906
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 22907
    .end local v2    # "i":I
    :cond_2
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/BI;->A0M:Z

    if-eqz v0, :cond_3

    .line 22908
    return-void

    .line 22909
    :cond_3
    invoke-direct {p0, v2, v3, v4, v5}, Lcom/facebook/ads/redexgen/X/BI;->A09(JJ)V

    .line 22910
    invoke-direct {p0, v2, v3}, Lcom/facebook/ads/redexgen/X/BI;->A08(J)V

    .line 22911
    return-void
.end method

.method private A05()V
    .locals 3

    .line 22912
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/facebook/ads/redexgen/X/BI;->A0E:J

    .line 22913
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/BI;->A04:I

    .line 22914
    iput v0, p0, Lcom/facebook/ads/redexgen/X/BI;->A01:I

    .line 22915
    iput-wide v1, p0, Lcom/facebook/ads/redexgen/X/BI;->A09:J

    .line 22916
    return-void
.end method

.method public static A06()V
    .locals 1

    const/16 v0, 0xa

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/BI;->A0P:[B

    return-void

    :array_0
    .array-data 1
        0xft
        0xdt
        0x1ct
        -0xct
        0x9t
        0x1ct
        0xdt
        0x16t
        0xbt
        0x21t
    .end array-data
.end method

.method public static A07()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "1jB8jXCuJuD0jOKXb6Z11mcMXFpnmnpF"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "slIJOMbcin0vK9L8nMuBN8NQSQur0Anw"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "qbynunUeVo"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "osTWfB2IrH"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "1JEXboQayPc7XYzYSmX"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "Y78wzoee34ud8n4PmiUQPIU5XCqoZsH9"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "5aXhxrU3NiP3nqtOffk"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, ""

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/BI;->A0Q:[Ljava/lang/String;

    return-void
.end method

.method private A08(J)V
    .locals 8

    .line 22917
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/BI;->A0L:Z

    if-eqz v0, :cond_1

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/BI;->A0J:Ljava/lang/reflect/Method;

    if-eqz v5, :cond_1

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/BI;->A08:J

    sub-long v3, p1, v0

    const-wide/32 v1, 0x7a120

    cmp-long v0, v3, v1

    if-ltz v0, :cond_1

    .line 22918
    const/4 v7, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/BI;->A0H:Landroid/media/AudioTrack;

    move-object v0, v7

    check-cast v0, [Ljava/lang/Object;

    .line 22919
    invoke-virtual {v5, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v2, v0

    const-wide/16 v0, 0x3e8

    mul-long/2addr v2, v0

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/BI;->A05:J

    sub-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/BI;->A0B:J

    .line 22920
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/BI;->A0B:J

    const-wide/16 v3, 0x0

    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/BI;->A0B:J

    .line 22921
    iget-wide v5, p0, Lcom/facebook/ads/redexgen/X/BI;->A0B:J

    const-wide/32 v1, 0x4c4b40

    cmp-long v0, v5, v1

    if-lez v0, :cond_0

    .line 22922
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/BI;->A0N:Lcom/facebook/ads/redexgen/X/BG;

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/BI;->A0B:J

    invoke-interface {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/BG;->AAW(J)V

    .line 22923
    iput-wide v3, p0, Lcom/facebook/ads/redexgen/X/BI;->A0B:J

    goto :goto_0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22924
    .local p0, "e":Ljava/lang/Exception;
    :catch_0
    iput-object v7, p0, Lcom/facebook/ads/redexgen/X/BI;->A0J:Ljava/lang/reflect/Method;

    .line 22925
    .end local p0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/BI;->A08:J

    .line 22926
    :cond_1
    return-void
.end method

.method private A09(JJ)V
    .locals 15

    .line 22927
    move-object v3, p0

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/BI;->A0I:Lcom/facebook/ads/redexgen/X/BF;

    move-wide/from16 v11, p1

    invoke-virtual {v0, v11, v12}, Lcom/facebook/ads/redexgen/X/BF;->A09(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 22928
    return-void

    .line 22929
    :cond_0
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/BI;->A0I:Lcom/facebook/ads/redexgen/X/BF;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/BF;->A03()J

    move-result-wide v9

    .line 22930
    .local v12, "audioTimestampSystemTimeUs":J
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/BI;->A0I:Lcom/facebook/ads/redexgen/X/BF;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/BF;->A02()J

    move-result-wide v7

    .line 22931
    .local v7, "audioTimestampPositionFrames":J
    sub-long v0, v9, v11

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/32 v5, 0x4c4b40

    cmp-long v4, v0, v5

    sget-object v2, Lcom/facebook/ads/redexgen/X/BI;->A0Q:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x4

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
    sget-object v2, Lcom/facebook/ads/redexgen/X/BI;->A0Q:[Ljava/lang/String;

    const-string v1, "85aGB2CvPZsm4rFUEtg"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "zECLaHgUf6OJVn6zUJy"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    move-wide/from16 v13, p3

    if-lez v4, :cond_2

    .line 22932
    iget-object v6, v3, Lcom/facebook/ads/redexgen/X/BI;->A0N:Lcom/facebook/ads/redexgen/X/BG;

    invoke-interface/range {v6 .. v14}, Lcom/facebook/ads/redexgen/X/BG;->ABm(JJJJ)V

    .line 22933
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/BI;->A0I:Lcom/facebook/ads/redexgen/X/BF;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/BF;->A05()V

    .line 22934
    :goto_0
    return-void

    .line 22935
    :cond_2
    invoke-direct {v3, v7, v8}, Lcom/facebook/ads/redexgen/X/BI;->A02(J)J

    move-result-wide v0

    sub-long/2addr v0, v13

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    cmp-long v0, v1, v5

    if-lez v0, :cond_3

    .line 22936
    iget-object v6, v3, Lcom/facebook/ads/redexgen/X/BI;->A0N:Lcom/facebook/ads/redexgen/X/BG;

    invoke-interface/range {v6 .. v14}, Lcom/facebook/ads/redexgen/X/BG;->ABE(JJJJ)V

    .line 22937
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/BI;->A0I:Lcom/facebook/ads/redexgen/X/BF;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/BF;->A05()V

    goto :goto_0

    .line 22938
    :cond_3
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/BI;->A0I:Lcom/facebook/ads/redexgen/X/BF;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/BF;->A04()V

    goto :goto_0
.end method

.method private A0A()Z
    .locals 5

    .line 22939
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/BI;->A0M:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BI;->A0H:Landroid/media/AudioTrack;

    .line 22940
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/BI;->A0Q:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x2

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
    sget-object v2, Lcom/facebook/ads/redexgen/X/BI;->A0Q:[Ljava/lang/String;

    const-string v1, "9xZBQrq3sXjEbFrM0Hh"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "VbhQ4nU7DR4cSNh6eVb"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const/4 v0, 0x2

    if-ne v3, v0, :cond_1

    .line 22941
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/BI;->A00()J

    move-result-wide v3

    const-wide/16 v1, 0x0

    cmp-long v0, v3, v1

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 22942
    :goto_0
    return v0
.end method

.method public static A0B(I)Z
    .locals 2

    .line 22943
    sget v1, Lcom/facebook/ads/redexgen/X/Ic;->A02:I

    const/16 v0, 0x17

    if-ge v1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 v0, 0x6

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final A0C(J)I
    .locals 4

    .line 22944
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/BI;->A00()J

    move-result-wide v2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/BI;->A02:I

    int-to-long v0, v0

    mul-long/2addr v2, v0

    sub-long/2addr p1, v2

    long-to-int v1, p1

    .line 22945
    .local p1, "bytesPending":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/BI;->A00:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final A0D(Z)J
    .locals 7

    .line 22946
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BI;->A0H:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v1

    const/4 v0, 0x3

    if-ne v1, v0, :cond_0

    .line 22947
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/BI;->A04()V

    .line 22948
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    const-wide/16 v0, 0x3e8

    div-long/2addr v5, v0

    .line 22949
    .local p0, "systemTimeUs":J
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BI;->A0I:Lcom/facebook/ads/redexgen/X/BF;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/BF;->A07()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 22950
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BI;->A0I:Lcom/facebook/ads/redexgen/X/BF;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/BF;->A02()J

    move-result-wide v0

    .line 22951
    .local v0, "timestampPositionFrames":J
    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/BI;->A02(J)J

    move-result-wide v2

    .line 22952
    .local v0, "timestampPositionUs":J
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BI;->A0I:Lcom/facebook/ads/redexgen/X/BF;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/BF;->A08()Z

    move-result v0

    if-nez v0, :cond_1

    .line 22953
    return-wide v2

    .line 22954
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BI;->A0I:Lcom/facebook/ads/redexgen/X/BF;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/BF;->A03()J

    move-result-wide v0

    sub-long/2addr v5, v0

    .line 22955
    .local v6, "elapsedSinceTimestampUs":J
    add-long/2addr v2, v5

    return-wide v2

    .line 22956
    .end local v0    # "timestampPositionUs":J
    .end local v0
    .end local v6    # "elapsedSinceTimestampUs":J
    :cond_2
    iget v0, p0, Lcom/facebook/ads/redexgen/X/BI;->A04:I

    if-nez v0, :cond_4

    .line 22957
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/BI;->A01()J

    move-result-wide v2

    .line 22958
    .local v0, "positionUs":J
    .restart local v0    # "positionUs":J
    :goto_0
    if-nez p1, :cond_3

    .line 22959
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/BI;->A0B:J

    sub-long/2addr v2, v0

    .line 22960
    :cond_3
    return-wide v2

    .line 22961
    .end local v0    # "positionUs":J
    :cond_4
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/BI;->A0E:J

    sget-object v4, Lcom/facebook/ads/redexgen/X/BI;->A0Q:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v4, v0

    const/4 v0, 0x4

    aget-object v0, v4, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_5

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_5
    sget-object v4, Lcom/facebook/ads/redexgen/X/BI;->A0Q:[Ljava/lang/String;

    const-string v1, "Ro052MAeoy"

    const/4 v0, 0x3

    aput-object v1, v4, v0

    const-string v1, "OpWFat8evW"

    const/4 v0, 0x2

    aput-object v1, v4, v0

    add-long/2addr v2, v5

    goto :goto_0
.end method

.method public final A0E()V
    .locals 1

    .line 22962
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/BI;->A05()V

    .line 22963
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/BI;->A0H:Landroid/media/AudioTrack;

    .line 22964
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/BI;->A0I:Lcom/facebook/ads/redexgen/X/BF;

    .line 22965
    return-void
.end method

.method public final A0F()V
    .locals 1

    .line 22966
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BI;->A0I:Lcom/facebook/ads/redexgen/X/BF;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/BF;->A06()V

    .line 22967
    return-void
.end method

.method public final A0G(J)V
    .locals 4

    .line 22968
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/BI;->A00()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/BI;->A0F:J

    .line 22969
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v0, 0x3e8

    mul-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/BI;->A0G:J

    .line 22970
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/BI;->A06:J

    .line 22971
    return-void
.end method

.method public final A0H(Landroid/media/AudioTrack;III)V
    .locals 5

    .line 22972
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/BI;->A0H:Landroid/media/AudioTrack;

    .line 22973
    iput p3, p0, Lcom/facebook/ads/redexgen/X/BI;->A02:I

    .line 22974
    iput p4, p0, Lcom/facebook/ads/redexgen/X/BI;->A00:I

    .line 22975
    new-instance v0, Lcom/facebook/ads/redexgen/X/BF;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/BF;-><init>(Landroid/media/AudioTrack;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/BI;->A0I:Lcom/facebook/ads/redexgen/X/BF;

    .line 22976
    invoke-virtual {p1}, Landroid/media/AudioTrack;->getSampleRate()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/BI;->A03:I

    .line 22977
    invoke-static {p2}, Lcom/facebook/ads/redexgen/X/BI;->A0B(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/BI;->A0M:Z

    .line 22978
    invoke-static {p2}, Lcom/facebook/ads/redexgen/X/Ic;->A0d(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/BI;->A0L:Z

    .line 22979
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/BI;->A0L:Z

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v0, :cond_1

    div-int/2addr p4, p3

    sget-object v1, Lcom/facebook/ads/redexgen/X/BI;->A0Q:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/BI;->A0Q:[Ljava/lang/String;

    const-string v1, "DuF8DvO9TLnykAAVutI1Gql56rbfrrRq"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    int-to-long v0, p4

    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/BI;->A02(J)J

    move-result-wide v0

    goto :goto_0

    :cond_1
    move-wide v0, v3

    :goto_0
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/BI;->A05:J

    .line 22980
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/facebook/ads/redexgen/X/BI;->A0A:J

    .line 22981
    iput-wide v1, p0, Lcom/facebook/ads/redexgen/X/BI;->A0D:J

    .line 22982
    iput-wide v1, p0, Lcom/facebook/ads/redexgen/X/BI;->A0C:J

    .line 22983
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/BI;->A0K:Z

    .line 22984
    iput-wide v3, p0, Lcom/facebook/ads/redexgen/X/BI;->A0G:J

    .line 22985
    iput-wide v3, p0, Lcom/facebook/ads/redexgen/X/BI;->A07:J

    .line 22986
    iput-wide v1, p0, Lcom/facebook/ads/redexgen/X/BI;->A0B:J

    .line 22987
    return-void
.end method

.method public final A0I()Z
    .locals 2

    .line 22988
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BI;->A0H:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v1

    const/4 v0, 0x3

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0J()Z
    .locals 5

    .line 22989
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/BI;->A05()V

    .line 22990
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/BI;->A0G:J

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v3, v1

    if-nez v0, :cond_1

    .line 22991
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BI;->A0I:Lcom/facebook/ads/redexgen/X/BF;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/BF;->A06()V

    .line 22992
    const/4 v3, 0x1

    sget-object v2, Lcom/facebook/ads/redexgen/X/BI;->A0Q:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x2

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
    sget-object v2, Lcom/facebook/ads/redexgen/X/BI;->A0Q:[Ljava/lang/String;

    const-string v1, ""

    const/4 v0, 0x7

    aput-object v1, v2, v0

    return v3

    .line 22993
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final A0K(J)Z
    .locals 3

    .line 22994
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/BI;->A00()J

    move-result-wide v1

    cmp-long v0, p1, v1

    if-gtz v0, :cond_0

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/BI;->A0A()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0L(J)Z
    .locals 5

    .line 22995
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/BI;->A07:J

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v3, v1

    if-eqz v0, :cond_0

    const-wide/16 v1, 0x0

    cmp-long v0, p1, v1

    if-lez v0, :cond_0

    .line 22996
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/BI;->A07:J

    sub-long/2addr v3, v0

    const-wide/16 v1, 0xc8

    cmp-long v0, v3, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    .line 22997
    :goto_0
    return v0

    .line 22998
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0M(J)Z
    .locals 8

    .line 22999
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BI;->A0H:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v5

    .line 23000
    .local p0, "playState":I
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/BI;->A0M:Z

    const/4 v4, 0x1

    if-eqz v0, :cond_1

    .line 23001
    const/4 v0, 0x2

    const/4 v3, 0x0

    if-ne v5, v0, :cond_0

    .line 23002
    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/BI;->A0K:Z

    .line 23003
    return v3

    .line 23004
    :cond_0
    if-ne v5, v4, :cond_1

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/BI;->A00()J

    move-result-wide v6

    const-wide/16 v1, 0x0

    cmp-long v0, v6, v1

    if-nez v0, :cond_1

    .line 23005
    return v3

    .line 23006
    :cond_1
    iget-boolean v6, p0, Lcom/facebook/ads/redexgen/X/BI;->A0K:Z

    .line 23007
    .local p1, "hadData":Z
    invoke-virtual {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/BI;->A0K(J)Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/BI;->A0Q:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/16 v0, 0x17

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x35

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/BI;->A0Q:[Ljava/lang/String;

    const-string v1, "HfD5C4eYVBnPTRKQJeti2Ul5K5JU9p95"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/BI;->A0K:Z

    .line 23008
    if-eqz v6, :cond_3

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/BI;->A0K:Z

    if-nez v0, :cond_3

    if-eq v5, v4, :cond_3

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/BI;->A0N:Lcom/facebook/ads/redexgen/X/BG;

    if-eqz v3, :cond_3

    .line 23009
    iget v2, p0, Lcom/facebook/ads/redexgen/X/BI;->A00:I

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/BI;->A05:J

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/9u;->A01(J)J

    move-result-wide v0

    invoke-interface {v3, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/BG;->ABt(IJ)V

    .line 23010
    :cond_3
    return v4
.end method
