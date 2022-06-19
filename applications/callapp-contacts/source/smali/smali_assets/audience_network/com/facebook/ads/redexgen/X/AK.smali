.class public final Lcom/facebook/ads/redexgen/X/AK;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final A00:I

.field public final A01:J

.field public final A02:J

.field public final A03:Lcom/facebook/ads/redexgen/X/Af;

.field public final A04:Lcom/facebook/ads/redexgen/X/FC;

.field public final A05:Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;

.field public final A06:Lcom/facebook/ads/redexgen/X/H8;

.field public final A07:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A08:Z

.field public volatile A09:J

.field public volatile A0A:J


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Af;JLcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;Lcom/facebook/ads/redexgen/X/H8;)V
    .locals 12

    .line 21210
    const/4 v0, 0x0

    new-instance v3, Lcom/facebook/ads/redexgen/X/FC;

    invoke-direct {v3, v0}, Lcom/facebook/ads/redexgen/X/FC;-><init>(I)V

    const/4 v2, 0x0

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v0, p0

    move-wide v4, p2

    move-object v1, p1

    move-object/from16 v11, p5

    move-object/from16 v10, p4

    invoke-direct/range {v0 .. v11}, Lcom/facebook/ads/redexgen/X/AK;-><init>(Lcom/facebook/ads/redexgen/X/Af;Ljava/lang/Object;Lcom/facebook/ads/redexgen/X/FC;JJIZLcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;Lcom/facebook/ads/redexgen/X/H8;)V

    .line 21211
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Af;Ljava/lang/Object;Lcom/facebook/ads/redexgen/X/FC;JJIZLcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;Lcom/facebook/ads/redexgen/X/H8;)V
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 21212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21213
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/AK;->A03:Lcom/facebook/ads/redexgen/X/Af;

    .line 21214
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/AK;->A07:Ljava/lang/Object;

    .line 21215
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/AK;->A04:Lcom/facebook/ads/redexgen/X/FC;

    .line 21216
    iput-wide p4, p0, Lcom/facebook/ads/redexgen/X/AK;->A02:J

    .line 21217
    iput-wide p6, p0, Lcom/facebook/ads/redexgen/X/AK;->A01:J

    .line 21218
    iput-wide p4, p0, Lcom/facebook/ads/redexgen/X/AK;->A0A:J

    .line 21219
    iput-wide p4, p0, Lcom/facebook/ads/redexgen/X/AK;->A09:J

    .line 21220
    iput p8, p0, Lcom/facebook/ads/redexgen/X/AK;->A00:I

    .line 21221
    iput-boolean p9, p0, Lcom/facebook/ads/redexgen/X/AK;->A08:Z

    .line 21222
    iput-object p10, p0, Lcom/facebook/ads/redexgen/X/AK;->A05:Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;

    .line 21223
    iput-object p11, p0, Lcom/facebook/ads/redexgen/X/AK;->A06:Lcom/facebook/ads/redexgen/X/H8;

    .line 21224
    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/AK;Lcom/facebook/ads/redexgen/X/AK;)V
    .locals 2

    .line 21225
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/AK;->A0A:J

    iput-wide v0, p1, Lcom/facebook/ads/redexgen/X/AK;->A0A:J

    .line 21226
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/AK;->A09:J

    iput-wide v0, p1, Lcom/facebook/ads/redexgen/X/AK;->A09:J

    .line 21227
    return-void
.end method


# virtual methods
.method public final A01(I)Lcom/facebook/ads/redexgen/X/AK;
    .locals 13

    .line 21228
    new-instance v1, Lcom/facebook/ads/redexgen/X/AK;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/AK;->A03:Lcom/facebook/ads/redexgen/X/Af;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/AK;->A07:Ljava/lang/Object;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AK;->A04:Lcom/facebook/ads/redexgen/X/FC;

    .line 21229
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/FC;->A01(I)Lcom/facebook/ads/redexgen/X/FC;

    move-result-object v4

    iget-wide v5, p0, Lcom/facebook/ads/redexgen/X/AK;->A02:J

    iget-wide v7, p0, Lcom/facebook/ads/redexgen/X/AK;->A01:J

    iget v9, p0, Lcom/facebook/ads/redexgen/X/AK;->A00:I

    iget-boolean v10, p0, Lcom/facebook/ads/redexgen/X/AK;->A08:Z

    iget-object v11, p0, Lcom/facebook/ads/redexgen/X/AK;->A05:Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;

    iget-object v12, p0, Lcom/facebook/ads/redexgen/X/AK;->A06:Lcom/facebook/ads/redexgen/X/H8;

    invoke-direct/range {v1 .. v12}, Lcom/facebook/ads/redexgen/X/AK;-><init>(Lcom/facebook/ads/redexgen/X/Af;Ljava/lang/Object;Lcom/facebook/ads/redexgen/X/FC;JJIZLcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;Lcom/facebook/ads/redexgen/X/H8;)V

    .line 21230
    .local p0, "playbackInfo":Lcom/facebook/ads/redexgen/X/AK;
    invoke-static {p0, v1}, Lcom/facebook/ads/redexgen/X/AK;->A00(Lcom/facebook/ads/redexgen/X/AK;Lcom/facebook/ads/redexgen/X/AK;)V

    .line 21231
    return-object v1
.end method

.method public final A02(I)Lcom/facebook/ads/redexgen/X/AK;
    .locals 12

    .line 21232
    new-instance v0, Lcom/facebook/ads/redexgen/X/AK;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/AK;->A03:Lcom/facebook/ads/redexgen/X/Af;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/AK;->A07:Ljava/lang/Object;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/AK;->A04:Lcom/facebook/ads/redexgen/X/FC;

    iget-wide v4, p0, Lcom/facebook/ads/redexgen/X/AK;->A02:J

    iget-wide v6, p0, Lcom/facebook/ads/redexgen/X/AK;->A01:J

    iget-boolean v9, p0, Lcom/facebook/ads/redexgen/X/AK;->A08:Z

    iget-object v10, p0, Lcom/facebook/ads/redexgen/X/AK;->A05:Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;

    iget-object v11, p0, Lcom/facebook/ads/redexgen/X/AK;->A06:Lcom/facebook/ads/redexgen/X/H8;

    move v8, p1

    invoke-direct/range {v0 .. v11}, Lcom/facebook/ads/redexgen/X/AK;-><init>(Lcom/facebook/ads/redexgen/X/Af;Ljava/lang/Object;Lcom/facebook/ads/redexgen/X/FC;JJIZLcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;Lcom/facebook/ads/redexgen/X/H8;)V

    .line 21233
    .local p0, "playbackInfo":Lcom/facebook/ads/redexgen/X/AK;
    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/AK;->A00(Lcom/facebook/ads/redexgen/X/AK;Lcom/facebook/ads/redexgen/X/AK;)V

    .line 21234
    return-object v0
.end method

.method public final A03(Lcom/facebook/ads/redexgen/X/Af;Ljava/lang/Object;)Lcom/facebook/ads/redexgen/X/AK;
    .locals 12

    .line 21235
    new-instance v0, Lcom/facebook/ads/redexgen/X/AK;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/AK;->A04:Lcom/facebook/ads/redexgen/X/FC;

    iget-wide v4, p0, Lcom/facebook/ads/redexgen/X/AK;->A02:J

    iget-wide v6, p0, Lcom/facebook/ads/redexgen/X/AK;->A01:J

    iget v8, p0, Lcom/facebook/ads/redexgen/X/AK;->A00:I

    iget-boolean v9, p0, Lcom/facebook/ads/redexgen/X/AK;->A08:Z

    iget-object v10, p0, Lcom/facebook/ads/redexgen/X/AK;->A05:Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;

    iget-object v11, p0, Lcom/facebook/ads/redexgen/X/AK;->A06:Lcom/facebook/ads/redexgen/X/H8;

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v11}, Lcom/facebook/ads/redexgen/X/AK;-><init>(Lcom/facebook/ads/redexgen/X/Af;Ljava/lang/Object;Lcom/facebook/ads/redexgen/X/FC;JJIZLcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;Lcom/facebook/ads/redexgen/X/H8;)V

    .line 21236
    .local p0, "playbackInfo":Lcom/facebook/ads/redexgen/X/AK;
    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/AK;->A00(Lcom/facebook/ads/redexgen/X/AK;Lcom/facebook/ads/redexgen/X/AK;)V

    .line 21237
    return-object v0
.end method

.method public final A04(Lcom/facebook/ads/redexgen/X/FC;JJ)Lcom/facebook/ads/redexgen/X/AK;
    .locals 14

    move-wide/from16 v8, p4

    .line 21238
    move-object v1, p0

    new-instance v2, Lcom/facebook/ads/redexgen/X/AK;

    iget-object v3, v1, Lcom/facebook/ads/redexgen/X/AK;->A03:Lcom/facebook/ads/redexgen/X/Af;

    iget-object v4, v1, Lcom/facebook/ads/redexgen/X/AK;->A07:Ljava/lang/Object;

    .line 21239
    move-object v5, p1

    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/FC;->A02()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    iget v10, v1, Lcom/facebook/ads/redexgen/X/AK;->A00:I

    iget-boolean v11, v1, Lcom/facebook/ads/redexgen/X/AK;->A08:Z

    iget-object v12, v1, Lcom/facebook/ads/redexgen/X/AK;->A05:Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;

    iget-object v13, v1, Lcom/facebook/ads/redexgen/X/AK;->A06:Lcom/facebook/ads/redexgen/X/H8;

    move-wide/from16 v6, p2

    invoke-direct/range {v2 .. v13}, Lcom/facebook/ads/redexgen/X/AK;-><init>(Lcom/facebook/ads/redexgen/X/Af;Ljava/lang/Object;Lcom/facebook/ads/redexgen/X/FC;JJIZLcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;Lcom/facebook/ads/redexgen/X/H8;)V

    .line 21240
    return-object v2

    .line 21241
    :cond_0
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_0
.end method

.method public final A05(Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;Lcom/facebook/ads/redexgen/X/H8;)Lcom/facebook/ads/redexgen/X/AK;
    .locals 12

    .line 21242
    new-instance v0, Lcom/facebook/ads/redexgen/X/AK;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/AK;->A03:Lcom/facebook/ads/redexgen/X/Af;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/AK;->A07:Ljava/lang/Object;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/AK;->A04:Lcom/facebook/ads/redexgen/X/FC;

    iget-wide v4, p0, Lcom/facebook/ads/redexgen/X/AK;->A02:J

    iget-wide v6, p0, Lcom/facebook/ads/redexgen/X/AK;->A01:J

    iget v8, p0, Lcom/facebook/ads/redexgen/X/AK;->A00:I

    iget-boolean v9, p0, Lcom/facebook/ads/redexgen/X/AK;->A08:Z

    move-object v10, p1

    move-object v11, p2

    invoke-direct/range {v0 .. v11}, Lcom/facebook/ads/redexgen/X/AK;-><init>(Lcom/facebook/ads/redexgen/X/Af;Ljava/lang/Object;Lcom/facebook/ads/redexgen/X/FC;JJIZLcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;Lcom/facebook/ads/redexgen/X/H8;)V

    .line 21243
    .local p0, "playbackInfo":Lcom/facebook/ads/redexgen/X/AK;
    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/AK;->A00(Lcom/facebook/ads/redexgen/X/AK;Lcom/facebook/ads/redexgen/X/AK;)V

    .line 21244
    return-object v0
.end method

.method public final A06(Z)Lcom/facebook/ads/redexgen/X/AK;
    .locals 12

    .line 21245
    new-instance v0, Lcom/facebook/ads/redexgen/X/AK;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/AK;->A03:Lcom/facebook/ads/redexgen/X/Af;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/AK;->A07:Ljava/lang/Object;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/AK;->A04:Lcom/facebook/ads/redexgen/X/FC;

    iget-wide v4, p0, Lcom/facebook/ads/redexgen/X/AK;->A02:J

    iget-wide v6, p0, Lcom/facebook/ads/redexgen/X/AK;->A01:J

    iget v8, p0, Lcom/facebook/ads/redexgen/X/AK;->A00:I

    iget-object v10, p0, Lcom/facebook/ads/redexgen/X/AK;->A05:Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;

    iget-object v11, p0, Lcom/facebook/ads/redexgen/X/AK;->A06:Lcom/facebook/ads/redexgen/X/H8;

    move v9, p1

    invoke-direct/range {v0 .. v11}, Lcom/facebook/ads/redexgen/X/AK;-><init>(Lcom/facebook/ads/redexgen/X/Af;Ljava/lang/Object;Lcom/facebook/ads/redexgen/X/FC;JJIZLcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;Lcom/facebook/ads/redexgen/X/H8;)V

    .line 21246
    .local p0, "playbackInfo":Lcom/facebook/ads/redexgen/X/AK;
    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/AK;->A00(Lcom/facebook/ads/redexgen/X/AK;Lcom/facebook/ads/redexgen/X/AK;)V

    .line 21247
    return-object v0
.end method
