.class public final Lcom/facebook/ads/redexgen/X/Iq;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Ip;,
        Lcom/facebook/ads/redexgen/X/Io;
    }
.end annotation


# static fields
.field public static A0C:[B

.field public static A0D:[Ljava/lang/String;


# instance fields
.field public A00:J

.field public A01:J

.field public A02:J

.field public A03:J

.field public A04:J

.field public A05:J

.field public A06:J

.field public A07:J

.field public A08:Z

.field public final A09:Landroid/view/WindowManager;

.field public final A0A:Lcom/facebook/ads/redexgen/X/Io;

.field public final A0B:Lcom/facebook/ads/redexgen/X/Ip;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Iq;->A05()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Iq;->A04()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 39139
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Iq;-><init>(Landroid/content/Context;)V

    .line 39140
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 39141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39142
    const/4 v3, 0x0

    if-eqz p1, :cond_2

    .line 39143
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 39144
    const/4 v2, 0x7

    const/4 v1, 0x6

    const/16 v0, 0x69

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Iq;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Iq;->A09:Landroid/view/WindowManager;

    .line 39145
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Iq;->A09:Landroid/view/WindowManager;

    if-eqz v0, :cond_1

    .line 39146
    sget v1, Lcom/facebook/ads/redexgen/X/Ic;->A02:I

    const/16 v0, 0x11

    if-lt v1, v0, :cond_0

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Iq;->A01(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/Io;

    move-result-object v3

    :cond_0
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/Iq;->A0A:Lcom/facebook/ads/redexgen/X/Io;

    .line 39147
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Ip;->A00()Lcom/facebook/ads/redexgen/X/Ip;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Iq;->A0B:Lcom/facebook/ads/redexgen/X/Ip;

    .line 39148
    :goto_1
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Iq;->A06:J

    .line 39149
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Iq;->A07:J

    .line 39150
    return-void

    .line 39151
    :cond_1
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/Iq;->A0A:Lcom/facebook/ads/redexgen/X/Io;

    .line 39152
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/Iq;->A0B:Lcom/facebook/ads/redexgen/X/Ip;

    goto :goto_1

    .line 39153
    :cond_2
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/Iq;->A09:Landroid/view/WindowManager;

    goto :goto_0
.end method

.method public static A00(JJJ)J
    .locals 5

    .line 39154
    sub-long v2, p0, p2

    div-long/2addr v2, p4

    .line 39155
    .local p0, "vsyncCount":J
    mul-long v0, p4, v2

    add-long/2addr p2, v0

    .line 39156
    .local p2, "snappedTimeNs":J
    cmp-long v0, p0, p2

    if-gtz v0, :cond_1

    .line 39157
    sub-long v3, p2, p4

    .line 39158
    .local p4, "snappedBeforeNs":J
    .local v2, "snappedAfterNs":J
    .restart local v2    # "snappedAfterNs":J
    :goto_0
    sub-long v1, p2, p0

    .line 39159
    .local v2, "snappedAfterDiff":J
    sub-long/2addr p0, v3

    .line 39160
    .local v0, "snappedBeforeDiff":J
    cmp-long v0, v1, p0

    if-gez v0, :cond_0

    :goto_1
    return-wide p2

    :cond_0
    move-wide p2, v3

    goto :goto_1

    .line 39161
    .end local p4    # "snappedBeforeNs":J
    .end local v2    # "snappedAfterDiff":J
    :cond_1
    move-wide v3, p2

    .line 39162
    .restart local p4    # "snappedBeforeNs":J
    add-long/2addr p2, p4

    goto :goto_0
.end method

.method private A01(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/Io;
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .line 39163
    const/4 v2, 0x0

    const/4 v1, 0x7

    const/16 v0, 0x39

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Iq;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    .line 39164
    .local p0, "manager":Landroid/hardware/display/DisplayManager;
    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/Io;

    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/redexgen/X/Io;-><init>(Lcom/facebook/ads/redexgen/X/Iq;Landroid/hardware/display/DisplayManager;)V

    goto :goto_0
.end method

.method public static A02(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Iq;->A0C:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x3

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A03()V
    .locals 4

    .line 39165
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Iq;->A09:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 39166
    .local p0, "defaultDisplay":Landroid/view/Display;
    if-eqz v0, :cond_0

    .line 39167
    invoke-virtual {v0}, Landroid/view/Display;->getRefreshRate()F

    move-result v0

    float-to-double v0, v0

    .line 39168
    .local v0, "defaultDisplayRefreshRate":D
    const-wide v2, 0x41cdcd6500000000L    # 1.0E9

    div-double/2addr v2, v0

    double-to-long v0, v2

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Iq;->A06:J

    .line 39169
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/Iq;->A06:J

    const-wide/16 v0, 0x50

    mul-long/2addr v2, v0

    const-wide/16 v0, 0x64

    div-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/Iq;->A07:J

    .line 39170
    .end local v0    # "defaultDisplayRefreshRate":D
    :cond_0
    return-void
.end method

.method public static A04()V
    .locals 1

    const/16 v0, 0xd

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Iq;->A0C:[B

    return-void

    :array_0
    .array-data 1
        0x5et
        0x53t
        0x49t
        0x4at
        0x56t
        0x5bt
        0x43t
        0x1dt
        0x3t
        0x4t
        0xet
        0x5t
        0x1dt
    .end array-data
.end method

.method public static A05()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "kHPpounmioxIeuVYIiBtlgYcpKqKMeYo"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "1EvE5ecZ6oq1"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "1xFPLgZM03zEYwCrfvPbGkRIUzIzkRyI"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "xtQoIGHQm30TqWp44ZVtRTrgGTAXjyY4"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "lorHvLutxJB7MNpb6L7umUiSbW7w4VUu"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "Dggv9CQc87eQXHOiXcGQyZHMOhynYuU2"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "gCbi6u2H2f8ZOtrM26hpxJkDdOtQKAOQ"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "0AsfHDQbzLLl82WXIGKzH0sU5NFMTON7"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Iq;->A0D:[Ljava/lang/String;

    return-void
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/Iq;)V
    .locals 0

    .line 39171
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Iq;->A03()V

    return-void
.end method

.method private A07(JJ)Z
    .locals 5

    .line 39172
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Iq;->A04:J

    sub-long/2addr p1, v0

    .line 39173
    .local p0, "elapsedFrameTimeNs":J
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Iq;->A05:J

    sub-long/2addr p3, v0

    .line 39174
    .local v2, "elapsedReleaseTimeNs":J
    sub-long/2addr p3, p1

    invoke-static {p3, p4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    const-wide/32 v1, 0x1312d00

    cmp-long v0, v3, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final A08(JJ)J
    .locals 19

    .line 39175
    move-object/from16 v12, p0

    const-wide/16 v6, 0x3e8

    move-wide/from16 v10, p1

    mul-long/2addr v6, v10

    .line 39176
    .local v12, "framePresentationTimeNs":J
    move-wide v14, v6

    .line 39177
    .local v7, "adjustedFrameTimeNs":J
    move-wide/from16 v8, p3

    move-wide v2, v8

    .line 39178
    .local v9, "adjustedReleaseTimeNs":J
    iget-boolean v0, v12, Lcom/facebook/ads/redexgen/X/Iq;->A08:Z

    if-eqz v0, :cond_1

    .line 39179
    iget-wide v0, v12, Lcom/facebook/ads/redexgen/X/Iq;->A02:J

    cmp-long v4, v10, v0

    if-eqz v4, :cond_0

    .line 39180
    iget-wide v0, v12, Lcom/facebook/ads/redexgen/X/Iq;->A01:J

    const-wide/16 v4, 0x1

    add-long/2addr v0, v4

    iput-wide v0, v12, Lcom/facebook/ads/redexgen/X/Iq;->A01:J

    .line 39181
    iget-wide v0, v12, Lcom/facebook/ads/redexgen/X/Iq;->A03:J

    iput-wide v0, v12, Lcom/facebook/ads/redexgen/X/Iq;->A00:J

    .line 39182
    :cond_0
    iget-wide v0, v12, Lcom/facebook/ads/redexgen/X/Iq;->A01:J

    const-wide/16 v16, 0x6

    const/4 v13, 0x0

    cmp-long v4, v0, v16

    if-ltz v4, :cond_5

    .line 39183
    iget-wide v4, v12, Lcom/facebook/ads/redexgen/X/Iq;->A04:J

    sub-long v16, v6, v4

    div-long v16, v16, v0

    .line 39184
    .local v13, "averageFrameDurationNs":J
    iget-wide v4, v12, Lcom/facebook/ads/redexgen/X/Iq;->A00:J

    add-long v4, v4, v16

    .line 39185
    .local v11, "candidateAdjustedFrameTimeNs":J
    invoke-direct {v12, v4, v5, v8, v9}, Lcom/facebook/ads/redexgen/X/Iq;->A07(JJ)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 39186
    iput-boolean v13, v12, Lcom/facebook/ads/redexgen/X/Iq;->A08:Z

    .line 39187
    .end local v9    # "adjustedReleaseTimeNs":J
    .restart local v2
    :cond_1
    :goto_0
    iget-boolean v0, v12, Lcom/facebook/ads/redexgen/X/Iq;->A08:Z

    if-nez v0, :cond_2

    .line 39188
    iput-wide v6, v12, Lcom/facebook/ads/redexgen/X/Iq;->A04:J

    .line 39189
    iput-wide v8, v12, Lcom/facebook/ads/redexgen/X/Iq;->A05:J

    .line 39190
    const-wide/16 v0, 0x0

    iput-wide v0, v12, Lcom/facebook/ads/redexgen/X/Iq;->A01:J

    .line 39191
    const/4 v0, 0x1

    iput-boolean v0, v12, Lcom/facebook/ads/redexgen/X/Iq;->A08:Z

    .line 39192
    :cond_2
    iput-wide v10, v12, Lcom/facebook/ads/redexgen/X/Iq;->A02:J

    .line 39193
    iput-wide v14, v12, Lcom/facebook/ads/redexgen/X/Iq;->A03:J

    .line 39194
    iget-object v1, v12, Lcom/facebook/ads/redexgen/X/Iq;->A0B:Lcom/facebook/ads/redexgen/X/Ip;

    if-eqz v1, :cond_3

    iget-wide v6, v12, Lcom/facebook/ads/redexgen/X/Iq;->A06:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v6, v4

    if-nez v0, :cond_6

    .line 39195
    .end local v9
    .end local p1    # null:J
    :cond_3
    return-wide v2

    .line 39196
    .end local v9
    .local v2, "adjustedReleaseTimeNs":J
    :cond_4
    iget-wide v2, v12, Lcom/facebook/ads/redexgen/X/Iq;->A05:J

    add-long/2addr v2, v4

    .end local v7    # "adjustedFrameTimeNs":J
    .local v0, "adjustedFrameTimeNs":J
    iget-wide v0, v12, Lcom/facebook/ads/redexgen/X/Iq;->A04:J

    sub-long/2addr v2, v0

    move-wide v14, v4

    goto :goto_0

    .line 39197
    .end local v9
    .restart local v2    # "adjustedReleaseTimeNs":J
    :cond_5
    invoke-direct {v12, v6, v7, v8, v9}, Lcom/facebook/ads/redexgen/X/Iq;->A07(JJ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 39198
    iput-boolean v13, v12, Lcom/facebook/ads/redexgen/X/Iq;->A08:Z

    goto :goto_0

    .line 39199
    :cond_6
    iget-wide v6, v1, Lcom/facebook/ads/redexgen/X/Ip;->A04:J

    .line 39200
    .local v14, "sampledVsyncTimeNs":J
    cmp-long v0, v6, v4

    if-nez v0, :cond_7

    .line 39201
    return-wide v2

    .line 39202
    :cond_7
    iget-wide v4, v12, Lcom/facebook/ads/redexgen/X/Iq;->A06:J

    .end local v14    # "sampledVsyncTimeNs":J
    .local p1, "sampledVsyncTimeNs":J
    sget-object v1, Lcom/facebook/ads/redexgen/X/Iq;->A0D:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/4 v0, 0x7

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x5a

    if-eq v1, v0, :cond_8

    sget-object v8, Lcom/facebook/ads/redexgen/X/Iq;->A0D:[Ljava/lang/String;

    const-string v1, "0SxWinLVEquF0VXQn6lA6UFKsPHSaa3f"

    const/4 v0, 0x2

    aput-object v1, v8, v0

    move-wide/from16 v17, v4

    move-wide v13, v2

    move-wide v15, v6

    invoke-static/range {v13 .. v18}, Lcom/facebook/ads/redexgen/X/Iq;->A00(JJJ)J

    move-result-wide v2

    .line 39203
    .local v9, "snappedTimeNs":J
    iget-wide v0, v12, Lcom/facebook/ads/redexgen/X/Iq;->A07:J

    sub-long/2addr v2, v0

    return-wide v2

    :cond_8
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A09()V
    .locals 1

    .line 39204
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Iq;->A09:Landroid/view/WindowManager;

    if-eqz v0, :cond_1

    .line 39205
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Iq;->A0A:Lcom/facebook/ads/redexgen/X/Io;

    if-eqz v0, :cond_0

    .line 39206
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Io;->A01()V

    .line 39207
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Iq;->A0B:Lcom/facebook/ads/redexgen/X/Ip;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ip;->A08()V

    .line 39208
    :cond_1
    return-void
.end method

.method public final A0A()V
    .locals 1

    .line 39209
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Iq;->A08:Z

    .line 39210
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Iq;->A09:Landroid/view/WindowManager;

    if-eqz v0, :cond_1

    .line 39211
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Iq;->A0B:Lcom/facebook/ads/redexgen/X/Ip;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ip;->A07()V

    .line 39212
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Iq;->A0A:Lcom/facebook/ads/redexgen/X/Io;

    if-eqz v0, :cond_0

    .line 39213
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Io;->A00()V

    .line 39214
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Iq;->A03()V

    .line 39215
    :cond_1
    return-void
.end method
