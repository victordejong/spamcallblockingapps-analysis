.class public final Lcom/facebook/ads/redexgen/X/EI;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/exoplayer2/metadata/scte35/SpliceScheduleCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Event"
.end annotation


# static fields
.field public static A0B:[Ljava/lang/String;


# instance fields
.field public final A00:I

.field public final A01:I

.field public final A02:I

.field public final A03:J

.field public final A04:J

.field public final A05:J

.field public final A06:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/EH;",
            ">;"
        }
    .end annotation
.end field

.field public final A07:Z

.field public final A08:Z

.field public final A09:Z

.field public final A0A:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/EI;->A04()V

    return-void
.end method

.method public constructor <init>(JZZZLjava/util/List;JZJIII)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZZZ",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/EH;",
            ">;JZJIII)V"
        }
    .end annotation

    .line 29286
    .local p7, "componentSpliceList":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/exoplayer2/metadata/scte35/SpliceScheduleCommand$ComponentSplice;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29287
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/EI;->A04:J

    .line 29288
    iput-boolean p3, p0, Lcom/facebook/ads/redexgen/X/EI;->A0A:Z

    .line 29289
    iput-boolean p4, p0, Lcom/facebook/ads/redexgen/X/EI;->A08:Z

    .line 29290
    iput-boolean p5, p0, Lcom/facebook/ads/redexgen/X/EI;->A09:Z

    .line 29291
    invoke-static {p6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/EI;->A06:Ljava/util/List;

    .line 29292
    iput-wide p7, p0, Lcom/facebook/ads/redexgen/X/EI;->A05:J

    .line 29293
    iput-boolean p9, p0, Lcom/facebook/ads/redexgen/X/EI;->A07:Z

    .line 29294
    iput-wide p10, p0, Lcom/facebook/ads/redexgen/X/EI;->A03:J

    .line 29295
    iput p12, p0, Lcom/facebook/ads/redexgen/X/EI;->A02:I

    .line 29296
    iput p13, p0, Lcom/facebook/ads/redexgen/X/EI;->A00:I

    .line 29297
    iput p14, p0, Lcom/facebook/ads/redexgen/X/EI;->A01:I

    .line 29298
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 6

    .line 29299
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29300
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/EI;->A04:J

    .line 29301
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v5, 0x0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_2

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/EI;->A0A:Z

    .line 29302
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v4, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/EI;->A08:Z

    .line 29303
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v4, :cond_0

    const/4 v0, 0x1

    :goto_2
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/EI;->A09:Z

    .line 29304
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 29305
    .local p0, "componentSpliceListLength":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 29306
    .local v3, "componentSpliceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/exoplayer2/metadata/scte35/SpliceScheduleCommand$ComponentSplice;>;"
    const/4 v1, 0x0

    .local v0, "i":I
    :goto_3
    if-ge v1, v3, :cond_3

    .line 29307
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/EH;->A01(Landroid/os/Parcel;)Lcom/facebook/ads/redexgen/X/EH;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29308
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 29309
    :cond_0
    const/4 v0, 0x0

    goto :goto_2

    .line 29310
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 29311
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 29312
    .end local v0    # "i":I
    :cond_3
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/EI;->A06:Ljava/util/List;

    .line 29313
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/EI;->A05:J

    .line 29314
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v4, :cond_4

    const/4 v5, 0x1

    :cond_4
    iput-boolean v5, p0, Lcom/facebook/ads/redexgen/X/EI;->A07:Z

    .line 29315
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/EI;->A03:J

    .line 29316
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/EI;->A02:I

    .line 29317
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/EI;->A00:I

    .line 29318
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/EI;->A01:I

    .line 29319
    return-void
.end method

.method public static A00(Landroid/os/Parcel;)Lcom/facebook/ads/redexgen/X/EI;
    .locals 1

    .line 29320
    new-instance v0, Lcom/facebook/ads/redexgen/X/EI;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/EI;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public static synthetic A01(Landroid/os/Parcel;)Lcom/facebook/ads/redexgen/X/EI;
    .locals 0

    .line 29321
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/EI;->A00(Landroid/os/Parcel;)Lcom/facebook/ads/redexgen/X/EI;

    move-result-object p0

    return-object p0
.end method

.method public static A02(Lcom/facebook/ads/redexgen/X/IM;)Lcom/facebook/ads/redexgen/X/EI;
    .locals 22

    .line 29322
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/IM;->A0N()J

    move-result-wide v8

    .line 29323
    .local v16, "spliceEventId":J
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v0

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_4

    const/4 v10, 0x1

    .line 29324
    .local v17, "spliceEventCancelIndicator":Z
    :goto_0
    const/4 v11, 0x0

    .line 29325
    .local p0, "outOfNetworkIndicator":Z
    const/4 v12, 0x0

    .line 29326
    .local v0, "programSpliceFlag":Z
    const-wide v14, -0x7fffffffffffffffL    # -4.9E-324

    .line 29327
    .local v0, "utcSpliceTime":J
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 29328
    .local v10, "componentSplices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/exoplayer2/metadata/scte35/SpliceScheduleCommand$ComponentSplice;>;"
    const/16 v19, 0x0

    .line 29329
    .local v11, "uniqueProgramId":I
    const/16 v20, 0x0

    .line 29330
    .local v12, "availNum":I
    const/16 v21, 0x0

    .line 29331
    .local v14, "availsExpected":I
    const/16 v16, 0x0

    .line 29332
    .local v10, "autoReturn":Z
    const-wide v17, -0x7fffffffffffffffL    # -4.9E-324

    .line 29333
    .local v13, "breakDurationUs":J
    if-nez v10, :cond_9

    .line 29334
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v1

    .line 29335
    .local v20, "headerByte":I
    and-int/lit16 v0, v1, 0x80

    if-eqz v0, :cond_3

    const/4 v11, 0x1

    .line 29336
    :goto_1
    and-int/lit8 v0, v1, 0x40

    if-eqz v0, :cond_2

    const/4 v12, 0x1

    .line 29337
    :goto_2
    and-int/lit8 v0, v1, 0x20

    if-eqz v0, :cond_1

    const/4 v7, 0x1

    .line 29338
    .local v21, "durationFlag":Z
    :goto_3
    if-eqz v12, :cond_0

    .line 29339
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/IM;->A0N()J

    move-result-wide v14

    .line 29340
    :cond_0
    if-nez v12, :cond_5

    .line 29341
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v4

    .line 29342
    .local v8, "componentCount":I
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 29343
    const/4 v3, 0x0

    .local v2, "i":I
    :goto_4
    if-ge v3, v4, :cond_5

    .line 29344
    .end local p0    # "outOfNetworkIndicator":Z
    .local v11, "outOfNetworkIndicator":Z
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v6

    .line 29345
    .local p0, "componentTag":I
    .end local v0    # "utcSpliceTime":J
    .end local v0
    .local v11, "programSpliceFlag":Z
    .local v0, "utcSpliceTime":J
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/IM;->A0N()J

    move-result-wide v0

    .line 29346
    .local v0, "componentUtcSpliceTime":J
    .end local v8    # "componentCount":I
    .local v12, "componentCount":I
    const/4 v5, 0x0

    new-instance v2, Lcom/facebook/ads/redexgen/X/EH;

    invoke-direct {v2, v6, v0, v1, v5}, Lcom/facebook/ads/redexgen/X/EH;-><init>(IJLcom/facebook/ads/redexgen/X/EG;)V

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29347
    .end local p0    # "componentTag":I
    .end local v0    # "componentUtcSpliceTime":J
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 29348
    :cond_1
    const/4 v7, 0x0

    goto :goto_3

    .line 29349
    :cond_2
    const/4 v12, 0x0

    goto :goto_2

    .line 29350
    :cond_3
    const/4 v11, 0x0

    goto :goto_1

    .line 29351
    :cond_4
    const/4 v10, 0x0

    goto :goto_0

    .line 29352
    .end local p0
    .end local v0
    .end local v0
    .restart local v11    # "programSpliceFlag":Z
    .restart local v11    # "programSpliceFlag":Z
    .restart local v0    # "componentUtcSpliceTime":J
    :cond_5
    if-eqz v7, :cond_6

    .line 29353
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v0

    int-to-long v0, v0

    .line 29354
    .local p0, "firstByte":J
    const-wide/16 v5, 0x80

    and-long/2addr v5, v0

    const-wide/16 v3, 0x0

    cmp-long v2, v5, v3

    if-eqz v2, :cond_7

    const/16 v16, 0x1

    .line 29355
    :goto_5
    const-wide/16 v2, 0x1

    and-long/2addr v2, v0

    const/16 v0, 0x20

    shl-long/2addr v2, v0

    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/IM;->A0N()J

    move-result-wide v0

    or-long/2addr v2, v0

    .line 29356
    .local v2, "breakDuration90khz":J
    const-wide/16 v17, 0x3e8

    mul-long v17, v17, v2

    const-wide/16 v0, 0x5a

    div-long v17, v17, v0

    .line 29357
    .end local p0    # "firstByte":J
    .end local v2    # "breakDuration90khz":J
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/IM;->A0J()I

    move-result v19

    .line 29358
    .end local v11    # "programSpliceFlag":Z
    .local p0, "uniqueProgramId":I
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v20

    .line 29359
    .end local v12    # "componentCount":I
    .local v8, "availNum":I
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v21

    sget-object v1, Lcom/facebook/ads/redexgen/X/EI;->A0B:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x18

    if-eq v1, v0, :cond_8

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 29360
    :cond_7
    const/16 v16, 0x0

    goto :goto_5

    :cond_8
    sget-object v2, Lcom/facebook/ads/redexgen/X/EI;->A0B:[Ljava/lang/String;

    const-string v1, "p8rqA1jswkwLXxdZELIdi0wYFdsYij83"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "UcxqtsBRhsULCc3zX6YSb1D3PL6tFocO"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    .end local v14    # "availsExpected":I
    .local v2, "availsExpected":I
    goto :goto_6

    .line 29361
    .end local v8    # "availNum":I
    .end local v2    # "availsExpected":I
    .end local v20    # "headerByte":I
    .end local v21    # "durationFlag":Z
    .end local v11
    .end local v11
    .end local v0    # "componentUtcSpliceTime":J
    .local p0, "outOfNetworkIndicator":Z
    .restart local v0    # "componentUtcSpliceTime":J
    .restart local v0    # "componentUtcSpliceTime":J
    .restart local v11    # "programSpliceFlag":Z
    .restart local v12    # "componentCount":I
    .restart local v14    # "availsExpected":I
    :cond_9
    sget-object v1, Lcom/facebook/ads/redexgen/X/EI;->A0B:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x74

    if-eq v1, v0, :cond_a

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_a
    sget-object v2, Lcom/facebook/ads/redexgen/X/EI;->A0B:[Ljava/lang/String;

    const-string v1, "ZZ1fL2NEFujbYEEjBLvbjR6eYWGM4n2l"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    .line 29362
    .end local p0    # "outOfNetworkIndicator":Z
    .end local v0    # "componentUtcSpliceTime":J
    .end local v0
    .end local v10    # "autoReturn":Z
    .end local v11    # "programSpliceFlag":Z
    .end local v12    # "componentCount":I
    .end local v14    # "availsExpected":I
    .end local v10
    .end local v13    # "breakDurationUs":J
    .local v1, "componentSplices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/exoplayer2/metadata/scte35/SpliceScheduleCommand$ComponentSplice;>;"
    .local v0, "autoReturn":Z
    .restart local v11    # "programSpliceFlag":Z
    .restart local v11    # "programSpliceFlag":Z
    .restart local v0    # "autoReturn":Z
    .local v12, "breakDurationUs":J
    .local v7, "uniqueProgramId":I
    .local v4, "availNum":I
    .local v13, "availsExpected":I
    :goto_6
    new-instance v7, Lcom/facebook/ads/redexgen/X/EI;

    invoke-direct/range {v7 .. v21}, Lcom/facebook/ads/redexgen/X/EI;-><init>(JZZZLjava/util/List;JZJIII)V

    return-object v7
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/IM;)Lcom/facebook/ads/redexgen/X/EI;
    .locals 0

    .line 29363
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/EI;->A02(Lcom/facebook/ads/redexgen/X/IM;)Lcom/facebook/ads/redexgen/X/EI;

    move-result-object p0

    return-object p0
.end method

.method public static A04()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "reAb1d6yEf6qP43PRd4QaEW5cbmqvuHi"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "arGpkAuI5"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "oNi6abtWtKfudCYWO0d74x2eNjpKSw5b"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "pBu7pBdV6dgumLdLaALfWQYTSw"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "UbDn3DUgGnVMItwp1gTZi06m8PX70y2w"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "k"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "6nPaYU6dr0ChAUIjK6RGfwLR"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "4DKU33lfGuVuizLB5Qhy8pL0u4QkubIx"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/EI;->A0B:[Ljava/lang/String;

    return-void
.end method

.method private A05(Landroid/os/Parcel;)V
    .locals 3

    .line 29364
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/EI;->A04:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 29365
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/EI;->A0A:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 29366
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/EI;->A08:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 29367
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/EI;->A09:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 29368
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EI;->A06:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 29369
    .local p0, "componentSpliceListSize":I
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 29370
    const/4 v1, 0x0

    .local p1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 29371
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EI;->A06:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/EH;

    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/EH;->A03(Lcom/facebook/ads/redexgen/X/EH;Landroid/os/Parcel;)V

    .line 29372
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 29373
    .end local p1    # "i":I
    :cond_0
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/EI;->A05:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 29374
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/EI;->A07:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 29375
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/EI;->A03:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 29376
    iget v0, p0, Lcom/facebook/ads/redexgen/X/EI;->A02:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 29377
    iget v0, p0, Lcom/facebook/ads/redexgen/X/EI;->A00:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 29378
    iget v0, p0, Lcom/facebook/ads/redexgen/X/EI;->A01:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 29379
    return-void
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/EI;Landroid/os/Parcel;)V
    .locals 0

    .line 29380
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/EI;->A05(Landroid/os/Parcel;)V

    return-void
.end method
