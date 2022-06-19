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

    .line 21275
    const/4 v0, 0x0

    new-instance v3, Lcom/facebook/ads/redexgen/X/FC;

    invoke-direct {v3, v0}, Lcom/facebook/ads/redexgen/X/FC;-><init>(I)V

    const/4 v2, 0x0

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v0, p0

    move-object/from16 v11, p5

    move-object/from16 v10, p4

    move-wide v4, p2

    move-object v1, p1

    invoke-direct/range {v0 .. v11}, Lcom/facebook/ads/redexgen/X/AK;-><init>(Lcom/facebook/ads/redexgen/X/Af;Ljava/lang/Object;Lcom/facebook/ads/redexgen/X/FC;JJIZLcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;Lcom/facebook/ads/redexgen/X/H8;)V

    .line 21276
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Af;Ljava/lang/Object;Lcom/facebook/ads/redexgen/X/FC;JJIZLcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;Lcom/facebook/ads/redexgen/X/H8;)V
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 21277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21278
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/AK;->A03:Lcom/facebook/ads/redexgen/X/Af;

    .line 21279
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/AK;->A07:Ljava/lang/Object;

    .line 21280
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/AK;->A04:Lcom/facebook/ads/redexgen/X/FC;

    .line 21281
    iput-wide p4, p0, Lcom/facebook/ads/redexgen/X/AK;->A02:J

    .line 21282
    iput-wide p6, p0, Lcom/facebook/ads/redexgen/X/AK;->A01:J

    .line 21283
    iput-wide p4, p0, Lcom/facebook/ads/redexgen/X/AK;->A0A:J

    .line 21284
    iput-wide p4, p0, Lcom/facebook/ads/redexgen/X/AK;->A09:J

    .line 21285
    iput p8, p0, Lcom/facebook/ads/redexgen/X/AK;->A00:I

    .line 21286
    iput-boolean p9, p0, Lcom/facebook/ads/redexgen/X/AK;->A08:Z

    .line 21287
    iput-object p10, p0, Lcom/facebook/ads/redexgen/X/AK;->A05:Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;

    .line 21288
    iput-object p11, p0, Lcom/facebook/ads/redexgen/X/AK;->A06:Lcom/facebook/ads/redexgen/X/H8;

    .line 21289
    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/AK;Lcom/facebook/ads/redexgen/X/AK;)V
    .locals 2

    .line 21290
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/AK;->A0A:J

    iput-wide v0, p1, Lcom/facebook/ads/redexgen/X/AK;->A0A:J

    .line 21291
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/AK;->A09:J

    iput-wide v0, p1, Lcom/facebook/ads/redexgen/X/AK;->A09:J

    .line 21292
    return-void
.end method


# virtual methods
.method public final A01(I)Lcom/facebook/ads/redexgen/X/AK;
    .locals 13

    .line 21293
    new-instance v1, Lcom/facebook/ads/redexgen/X/AK;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/AK;->A03:Lcom/facebook/ads/redexgen/X/Af;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/AK;->A07:Ljava/lang/Object;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AK;->A04:Lcom/facebook/ads/redexgen/X/FC;

    .line 21294
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/FC;->A00(I)Lcom/facebook/ads/redexgen/X/FC;

    move-result-object v4

    iget-wide v5, p0, Lcom/facebook/ads/redexgen/X/AK;->A02:J

    iget-wide v7, p0, Lcom/facebook/ads/redexgen/X/AK;->A01:J

    iget v9, p0, Lcom/facebook/ads/redexgen/X/AK;->A00:I

    iget-boolean v10, p0, Lcom/facebook/ads/redexgen/X/AK;->A08:Z

    iget-object v11, p0, Lcom/facebook/ads/redexgen/X/AK;->A05:Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;

    iget-object v12, p0, Lcom/facebook/ads/redexgen/X/AK;->A06:Lcom/facebook/ads/redexgen/X/H8;

    invoke-direct/range {v1 .. v12}, Lcom/facebook/ads/redexgen/X/AK;-><init>(Lcom/facebook/ads/redexgen/X/Af;Ljava/lang/Object;Lcom/facebook/ads/redexgen/X/FC;JJIZLcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;Lcom/facebook/ads/redexgen/X/H8;)V

    .line 21295
    .local p0, "playbackInfo":Lcom/facebook/ads/redexgen/X/AK;
    invoke-static {p0, v1}, Lcom/facebook/ads/redexgen/X/AK;->A00(Lcom/facebook/ads/redexgen/X/AK;Lcom/facebook/ads/redexgen/X/AK;)V

    .line 21296
    return-object v1
.end method

.method public final A02(I)Lcom/facebook/ads/redexgen/X/AK;
    .locals 12

    .line 21297
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

    .line 21298
    .local p0, "playbackInfo":Lcom/facebook/ads/redexgen/X/AK;
    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/AK;->A00(Lcom/facebook/ads/redexgen/X/AK;Lcom/facebook/ads/redexgen/X/AK;)V

    .line 21299
    return-object v0
.end method

.method public final A03(Lcom/facebook/ads/redexgen/X/Af;Ljava/lang/Object;)Lcom/facebook/ads/redexgen/X/AK;
    .locals 12

    .line 21300
    new-instance v0, Lcom/facebook/ads/redexgen/X/AK;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/AK;->A04:Lcom/facebook/ads/redexgen/X/FC;

    iget-wide v4, p0, Lcom/facebook/ads/redexgen/X/AK;->A02:J

    iget-wide v6, p0, Lcom/facebook/ads/redexgen/X/AK;->A01:J

    iget v8, p0, Lcom/facebook/ads/redexgen/X/AK;->A00:I

    iget-boolean v9, p0, Lcom/facebook/ads/redexgen/X/AK;->A08:Z

    iget-object v10, p0, Lcom/facebook/ads/redexgen/X/AK;->A05:Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;

    iget-object v11, p0, Lcom/facebook/ads/redexgen/X/AK;->A06:Lcom/facebook/ads/redexgen/X/H8;

    move-object v2, p2

    move-object v1, p1

    invoke-direct/range {v0 .. v11}, Lcom/facebook/ads/redexgen/X/AK;-><init>(Lcom/facebook/ads/redexgen/X/Af;Ljava/lang/Object;Lcom/facebook/ads/redexgen/X/FC;JJIZLcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;Lcom/facebook/ads/redexgen/X/H8;)V

    .line 21301
    .local p0, "playbackInfo":Lcom/facebook/ads/redexgen/X/AK;
    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/AK;->A00(Lcom/facebook/ads/redexgen/X/AK;Lcom/facebook/ads/redexgen/X/AK;)V

    .line 21302
    return-object v0
.end method

.method public final A04(Lcom/facebook/ads/redexgen/X/FC;JJ)Lcom/facebook/ads/redexgen/X/AK;
    .locals 14

    move-wide/from16 v8, p4

    .line 21303
    move-object v1, p0

    new-instance v2, Lcom/facebook/ads/redexgen/X/AK;

    iget-object v3, v1, Lcom/facebook/ads/redexgen/X/AK;->A03:Lcom/facebook/ads/redexgen/X/Af;

    iget-object v4, v1, Lcom/facebook/ads/redexgen/X/AK;->A07:Ljava/lang/Object;

    .line 21304
    move-object v5, p1

    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/FC;->A01()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    iget v10, v1, Lcom/facebook/ads/redexgen/X/AK;->A00:I

    iget-boolean v11, v1, Lcom/facebook/ads/redexgen/X/AK;->A08:Z

    iget-object v12, v1, Lcom/facebook/ads/redexgen/X/AK;->A05:Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;

    iget-object v13, v1, Lcom/facebook/ads/redexgen/X/AK;->A06:Lcom/facebook/ads/redexgen/X/H8;

    move-wide/from16 v6, p2

    invoke-direct/range {v2 .. v13}, Lcom/facebook/ads/redexgen/X/AK;-><init>(Lcom/facebook/ads/redexgen/X/Af;Ljava/lang/Object;Lcom/facebook/ads/redexgen/X/FC;JJIZLcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;Lcom/facebook/ads/redexgen/X/H8;)V

    .line 21305
    return-object v2

    .line 21306
    :cond_0
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_0
.end method

.method public final A05(Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;Lcom/facebook/ads/redexgen/X/H8;)Lcom/facebook/ads/redexgen/X/AK;
    .locals 12

    .line 21307
    new-instance v0, Lcom/facebook/ads/redexgen/X/AK;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/AK;->A03:Lcom/facebook/ads/redexgen/X/Af;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/AK;->A07:Ljava/lang/Object;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/AK;->A04:Lcom/facebook/ads/redexgen/X/FC;

    iget-wide v4, p0, Lcom/facebook/ads/redexgen/X/AK;->A02:J

    iget-wide v6, p0, Lcom/facebook/ads/redexgen/X/AK;->A01:J

    iget v8, p0, Lcom/facebook/ads/redexgen/X/AK;->A00:I

    iget-boolean v9, p0, Lcom/facebook/ads/redexgen/X/AK;->A08:Z

    move-object v11, p2

    move-object v10, p1

    invoke-direct/range {v0 .. v11}, Lcom/facebook/ads/redexgen/X/AK;-><init>(Lcom/facebook/ads/redexgen/X/Af;Ljava/lang/Object;Lcom/facebook/ads/redexgen/X/FC;JJIZLcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;Lcom/facebook/ads/redexgen/X/H8;)V

    .line 21308
    .local p0, "playbackInfo":Lcom/facebook/ads/redexgen/X/AK;
    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/AK;->A00(Lcom/facebook/ads/redexgen/X/AK;Lcom/facebook/ads/redexgen/X/AK;)V

    .line 21309
    return-object v0
.end method

.method public final A06(Z)Lcom/facebook/ads/redexgen/X/AK;
    .locals 12

    .line 21310
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

    .line 21311
    .local p0, "playbackInfo":Lcom/facebook/ads/redexgen/X/AK;
    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/AK;->A00(Lcom/facebook/ads/redexgen/X/AK;Lcom/facebook/ads/redexgen/X/AK;)V

    .line 21312
    return-object v0
.end method
