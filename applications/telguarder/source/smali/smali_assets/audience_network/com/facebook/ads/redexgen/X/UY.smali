.class public final Lcom/facebook/ads/redexgen/X/UY;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Du;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/IY;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A01:Lcom/facebook/ads/redexgen/X/IL;

.field public final A02:Lcom/facebook/ads/redexgen/X/IM;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 56549
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56550
    new-instance v0, Lcom/facebook/ads/redexgen/X/IM;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/IM;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/UY;->A02:Lcom/facebook/ads/redexgen/X/IM;

    .line 56551
    new-instance v0, Lcom/facebook/ads/redexgen/X/IL;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/IL;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/UY;->A01:Lcom/facebook/ads/redexgen/X/IL;

    .line 56552
    return-void
.end method


# virtual methods
.method public final A4e(Lcom/facebook/ads/redexgen/X/Cv;)Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/Dv;
        }
    .end annotation

    .line 56553
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UY;->A00:Lcom/facebook/ads/redexgen/X/IY;

    if-eqz v0, :cond_0

    iget-wide v3, p1, Lcom/facebook/ads/redexgen/X/Cv;->A00:J

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UY;->A00:Lcom/facebook/ads/redexgen/X/IY;

    .line 56554
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IY;->A06()J

    move-result-wide v1

    cmp-long v0, v3, v1

    if-eqz v0, :cond_1

    .line 56555
    :cond_0
    iget-wide v1, p1, Lcom/facebook/ads/redexgen/X/Vt;->A00:J

    new-instance v0, Lcom/facebook/ads/redexgen/X/IY;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/IY;-><init>(J)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/UY;->A00:Lcom/facebook/ads/redexgen/X/IY;

    .line 56556
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/UY;->A00:Lcom/facebook/ads/redexgen/X/IY;

    iget-wide v2, p1, Lcom/facebook/ads/redexgen/X/Vt;->A00:J

    iget-wide v0, p1, Lcom/facebook/ads/redexgen/X/Cv;->A00:J

    sub-long/2addr v2, v0

    invoke-virtual {v4, v2, v3}, Lcom/facebook/ads/redexgen/X/IY;->A07(J)J

    .line 56557
    :cond_1
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/Vt;->A01:Ljava/nio/ByteBuffer;

    .line 56558
    .local p0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    .line 56559
    .local p1, "data":[B
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    .line 56560
    .local v0, "size":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UY;->A02:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/IM;->A0c([BI)V

    .line 56561
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UY;->A01:Lcom/facebook/ads/redexgen/X/IL;

    invoke-virtual {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/IL;->A0D([BI)V

    .line 56562
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/UY;->A01:Lcom/facebook/ads/redexgen/X/IL;

    const/16 v0, 0x27

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/IL;->A09(I)V

    .line 56563
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UY;->A01:Lcom/facebook/ads/redexgen/X/IL;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v0

    int-to-long v1, v0

    .line 56564
    .local v0, "ptsAdjustment":J
    const/16 v3, 0x20

    shl-long/2addr v1, v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UY;->A01:Lcom/facebook/ads/redexgen/X/IL;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v0

    int-to-long v5, v0

    or-long/2addr v1, v5

    .line 56565
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/UY;->A01:Lcom/facebook/ads/redexgen/X/IL;

    const/16 v0, 0x14

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/IL;->A09(I)V

    .line 56566
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/UY;->A01:Lcom/facebook/ads/redexgen/X/IL;

    const/16 v0, 0xc

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v7

    .line 56567
    .local v3, "spliceCommandLength":I
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/UY;->A01:Lcom/facebook/ads/redexgen/X/IL;

    const/16 v0, 0x8

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v6

    .line 56568
    .local v7, "spliceCommandType":I
    const/4 v0, 0x0

    .line 56569
    .local v0, "command":Lcom/facebook/ads/internal/exoplayer2/metadata/scte35/SpliceCommand;
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/UY;->A02:Lcom/facebook/ads/redexgen/X/IM;

    const/16 v3, 0xe

    invoke-virtual {v5, v3}, Lcom/facebook/ads/redexgen/X/IM;->A0a(I)V

    .line 56570
    if-eqz v6, :cond_7

    const/16 v3, 0xff

    if-eq v6, v3, :cond_6

    const/4 v3, 0x4

    if-eq v6, v3, :cond_5

    const/4 v3, 0x5

    if-eq v6, v3, :cond_4

    const/4 v3, 0x6

    if-eq v6, v3, :cond_3

    .line 56571
    :goto_0
    const/4 v2, 0x0

    if-nez v0, :cond_2

    new-array v1, v2, [Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata$Entry;

    new-instance v0, Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata;

    invoke-direct {v0, v1}, Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata;-><init>([Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata$Entry;)V

    :goto_1
    return-object v0

    :cond_2
    new-array v1, v4, [Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata$Entry;

    aput-object v0, v1, v2

    new-instance v0, Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata;

    invoke-direct {v0, v1}, Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata;-><init>([Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata$Entry;)V

    goto :goto_1

    .line 56572
    :cond_3
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/UY;->A02:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UY;->A00:Lcom/facebook/ads/redexgen/X/IY;

    invoke-static {v3, v1, v2, v0}, Lcom/facebook/ads/internal/exoplayer2/metadata/scte35/TimeSignalCommand;->A01(Lcom/facebook/ads/redexgen/X/IM;JLcom/facebook/ads/redexgen/X/IY;)Lcom/facebook/ads/internal/exoplayer2/metadata/scte35/TimeSignalCommand;

    move-result-object v0

    .line 56573
    goto :goto_0

    .line 56574
    :cond_4
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/UY;->A02:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UY;->A00:Lcom/facebook/ads/redexgen/X/IY;

    .line 56575
    invoke-static {v3, v1, v2, v0}, Lcom/facebook/ads/internal/exoplayer2/metadata/scte35/SpliceInsertCommand;->A00(Lcom/facebook/ads/redexgen/X/IM;JLcom/facebook/ads/redexgen/X/IY;)Lcom/facebook/ads/internal/exoplayer2/metadata/scte35/SpliceInsertCommand;

    move-result-object v0

    .line 56576
    goto :goto_0

    .line 56577
    :cond_5
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UY;->A02:Lcom/facebook/ads/redexgen/X/IM;

    invoke-static {v0}, Lcom/facebook/ads/internal/exoplayer2/metadata/scte35/SpliceScheduleCommand;->A00(Lcom/facebook/ads/redexgen/X/IM;)Lcom/facebook/ads/internal/exoplayer2/metadata/scte35/SpliceScheduleCommand;

    move-result-object v0

    .line 56578
    goto :goto_0

    .line 56579
    :cond_6
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UY;->A02:Lcom/facebook/ads/redexgen/X/IM;

    invoke-static {v0, v7, v1, v2}, Lcom/facebook/ads/internal/exoplayer2/metadata/scte35/PrivateCommand;->A00(Lcom/facebook/ads/redexgen/X/IM;IJ)Lcom/facebook/ads/internal/exoplayer2/metadata/scte35/PrivateCommand;

    move-result-object v0

    .line 56580
    goto :goto_0

    .line 56581
    :cond_7
    new-instance v0, Lcom/facebook/ads/internal/exoplayer2/metadata/scte35/SpliceNullCommand;

    invoke-direct {v0}, Lcom/facebook/ads/internal/exoplayer2/metadata/scte35/SpliceNullCommand;-><init>()V

    .line 56582
    goto :goto_0
.end method
