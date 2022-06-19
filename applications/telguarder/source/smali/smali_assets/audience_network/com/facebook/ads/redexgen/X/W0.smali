.class public final Lcom/facebook/ads/redexgen/X/W0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/BC;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/W1;,
        Lcom/facebook/ads/redexgen/X/BN;,
        Lcom/facebook/ads/internal/exoplayer2/audio/DefaultAudioSink$StartMediaTimeState;,
        Lcom/facebook/ads/redexgen/X/W2;,
        Lcom/facebook/ads/redexgen/X/BL;,
        Lcom/facebook/ads/redexgen/X/BM;
    }
.end annotation


# static fields
.field public static A0p:Z

.field public static A0q:Z

.field public static A0r:[B

.field public static A0s:[Ljava/lang/String;


# instance fields
.field public A00:F

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:I

.field public A05:I

.field public A06:I

.field public A07:I

.field public A08:I

.field public A09:I

.field public A0A:I

.field public A0B:I

.field public A0C:I

.field public A0D:I

.field public A0E:J

.field public A0F:J

.field public A0G:J

.field public A0H:J

.field public A0I:J

.field public A0J:J

.field public A0K:J

.field public A0L:J

.field public A0M:Landroid/media/AudioTrack;

.field public A0N:Landroid/media/AudioTrack;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A0O:Lcom/facebook/ads/redexgen/X/AL;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A0P:Lcom/facebook/ads/redexgen/X/AL;

.field public A0Q:Lcom/facebook/ads/redexgen/X/Ar;

.field public A0R:Lcom/facebook/ads/redexgen/X/BA;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A0S:Ljava/nio/ByteBuffer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A0T:Ljava/nio/ByteBuffer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A0U:Ljava/nio/ByteBuffer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A0V:Z

.field public A0W:Z

.field public A0X:Z

.field public A0Y:Z

.field public A0Z:Z

.field public A0a:Z

.field public A0b:Z

.field public A0c:[B

.field public A0d:[Lcom/facebook/ads/redexgen/X/Az;

.field public A0e:[Ljava/nio/ByteBuffer;

.field public final A0f:Landroid/os/ConditionVariable;

.field public final A0g:Lcom/facebook/ads/redexgen/X/As;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A0h:Lcom/facebook/ads/redexgen/X/BI;

.field public final A0i:Lcom/facebook/ads/redexgen/X/W3;

.field public final A0j:Lcom/facebook/ads/redexgen/X/BL;

.field public final A0k:Lcom/facebook/ads/redexgen/X/Vu;

.field public final A0l:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/facebook/ads/redexgen/X/BN;",
            ">;"
        }
    .end annotation
.end field

.field public final A0m:Z

.field public final A0n:[Lcom/facebook/ads/redexgen/X/Az;

.field public final A0o:[Lcom/facebook/ads/redexgen/X/Az;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 62532
    invoke-static {}, Lcom/facebook/ads/redexgen/X/W0;->A0P()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/W0;->A0O()V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/facebook/ads/redexgen/X/W0;->A0p:Z

    .line 62533
    sput-boolean v0, Lcom/facebook/ads/redexgen/X/W0;->A0q:Z

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/As;Lcom/facebook/ads/redexgen/X/BL;Z)V
    .locals 6
    .param p1    # Lcom/facebook/ads/redexgen/X/As;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 62534
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62535
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/W0;->A0g:Lcom/facebook/ads/redexgen/X/As;

    .line 62536
    invoke-static {p2}, Lcom/facebook/ads/redexgen/X/Hx;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/BL;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/W0;->A0j:Lcom/facebook/ads/redexgen/X/BL;

    .line 62537
    iput-boolean p3, p0, Lcom/facebook/ads/redexgen/X/W0;->A0m:Z

    .line 62538
    const/4 v5, 0x1

    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0, v5}, Landroid/os/ConditionVariable;-><init>(Z)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/W0;->A0f:Landroid/os/ConditionVariable;

    .line 62539
    const/4 v0, 0x0

    new-instance v1, Lcom/facebook/ads/redexgen/X/W1;

    invoke-direct {v1, p0, v0}, Lcom/facebook/ads/redexgen/X/W1;-><init>(Lcom/facebook/ads/redexgen/X/W0;Lcom/facebook/ads/redexgen/X/BJ;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/BI;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/BI;-><init>(Lcom/facebook/ads/redexgen/X/BG;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/W0;->A0h:Lcom/facebook/ads/redexgen/X/BI;

    .line 62540
    new-instance v0, Lcom/facebook/ads/redexgen/X/W3;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/W3;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/W0;->A0i:Lcom/facebook/ads/redexgen/X/W3;

    .line 62541
    new-instance v0, Lcom/facebook/ads/redexgen/X/Vu;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Vu;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/W0;->A0k:Lcom/facebook/ads/redexgen/X/Vu;

    .line 62542
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 62543
    .local p0, "toIntPcmAudioProcessors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/exoplayer2/audio/AudioProcessor;>;"
    const/4 v0, 0x3

    new-array v3, v0, [Lcom/facebook/ads/redexgen/X/Az;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Vx;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Vx;-><init>()V

    const/4 v2, 0x0

    aput-object v0, v3, v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W0;->A0i:Lcom/facebook/ads/redexgen/X/W3;

    aput-object v0, v3, v5

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/W0;->A0k:Lcom/facebook/ads/redexgen/X/Vu;

    const/4 v0, 0x2

    aput-object v1, v3, v0

    invoke-static {v4, v3}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 62544
    invoke-interface {p2}, Lcom/facebook/ads/redexgen/X/BL;->A5e()[Lcom/facebook/ads/redexgen/X/Az;

    move-result-object v0

    invoke-static {v4, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 62545
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/facebook/ads/redexgen/X/Az;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/ads/redexgen/X/Az;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/W0;->A0o:[Lcom/facebook/ads/redexgen/X/Az;

    .line 62546
    new-array v1, v5, [Lcom/facebook/ads/redexgen/X/Az;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Vz;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Vz;-><init>()V

    aput-object v0, v1, v2

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/W0;->A0n:[Lcom/facebook/ads/redexgen/X/Az;

    .line 62547
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/facebook/ads/redexgen/X/W0;->A00:F

    .line 62548
    iput v2, p0, Lcom/facebook/ads/redexgen/X/W0;->A0D:I

    .line 62549
    sget-object v0, Lcom/facebook/ads/redexgen/X/Ar;->A05:Lcom/facebook/ads/redexgen/X/Ar;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/W0;->A0Q:Lcom/facebook/ads/redexgen/X/Ar;

    .line 62550
    iput v2, p0, Lcom/facebook/ads/redexgen/X/W0;->A01:I

    .line 62551
    sget-object v0, Lcom/facebook/ads/redexgen/X/AL;->A05:Lcom/facebook/ads/redexgen/X/AL;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/W0;->A0P:Lcom/facebook/ads/redexgen/X/AL;

    .line 62552
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/W0;->A04:I

    .line 62553
    new-array v0, v2, [Lcom/facebook/ads/redexgen/X/Az;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/W0;->A0d:[Lcom/facebook/ads/redexgen/X/Az;

    .line 62554
    new-array v0, v2, [Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/W0;->A0e:[Ljava/nio/ByteBuffer;

    .line 62555
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/W0;->A0l:Ljava/util/ArrayDeque;

    .line 62556
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/As;[Lcom/facebook/ads/redexgen/X/Az;)V
    .locals 1
    .param p1    # Lcom/facebook/ads/redexgen/X/As;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 62557
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/ads/redexgen/X/W0;-><init>(Lcom/facebook/ads/redexgen/X/As;[Lcom/facebook/ads/redexgen/X/Az;Z)V

    .line 62558
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/As;[Lcom/facebook/ads/redexgen/X/Az;Z)V
    .locals 1
    .param p1    # Lcom/facebook/ads/redexgen/X/As;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 62559
    new-instance v0, Lcom/facebook/ads/redexgen/X/W2;

    invoke-direct {v0, p2}, Lcom/facebook/ads/redexgen/X/W2;-><init>([Lcom/facebook/ads/redexgen/X/Az;)V

    invoke-direct {p0, p1, v0, p3}, Lcom/facebook/ads/redexgen/X/W0;-><init>(Lcom/facebook/ads/redexgen/X/As;Lcom/facebook/ads/redexgen/X/BL;Z)V

    .line 62560
    return-void
.end method

.method public static A00(ILjava/nio/ByteBuffer;)I
    .locals 4

    .line 62561
    const/4 v0, 0x7

    if-eq p0, v0, :cond_0

    const/16 v0, 0x8

    if-ne p0, v0, :cond_1

    .line 62562
    :cond_0
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/BP;->A00(Ljava/nio/ByteBuffer;)I

    move-result v0

    return v0

    .line 62563
    :cond_1
    const/4 v0, 0x5

    if-ne p0, v0, :cond_2

    .line 62564
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Ao;->A00()I

    move-result v0

    return v0

    .line 62565
    :cond_2
    const/4 v0, 0x6

    if-ne p0, v0, :cond_3

    .line 62566
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Ao;->A03(Ljava/nio/ByteBuffer;)I

    move-result v0

    return v0

    .line 62567
    :cond_3
    const/16 v0, 0xe

    if-ne p0, v0, :cond_5

    .line 62568
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Ao;->A02(Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 62569
    .local p0, "syncframeOffset":I
    const/4 v0, -0x1

    if-ne v1, v0, :cond_4

    .line 62570
    const/4 v0, 0x0

    .line 62571
    :goto_0
    return v0

    .line 62572
    :cond_4
    invoke-static {p1, v1}, Lcom/facebook/ads/redexgen/X/Ao;->A04(Ljava/nio/ByteBuffer;I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x10

    goto :goto_0

    .line 62573
    .end local p0    # "syncframeOffset":I
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x54

    const/16 v1, 0x1b

    const/16 v0, 0x4e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/W0;->A0I(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static A01(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;I)I
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 62574
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result v0

    return v0
.end method

.method private A02(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;IJ)I
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 62575
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W0;->A0S:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    .line 62576
    const/16 v0, 0x10

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/W0;->A0S:Ljava/nio/ByteBuffer;

    .line 62577
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/W0;->A0S:Ljava/nio/ByteBuffer;

    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 62578
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/W0;->A0S:Ljava/nio/ByteBuffer;

    const v0, 0x55550001

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 62579
    :cond_0
    iget v4, p0, Lcom/facebook/ads/redexgen/X/W0;->A03:I

    const/4 v3, 0x0

    sget-object v2, Lcom/facebook/ads/redexgen/X/W0;->A0s:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v2, v2, v0

    const/16 v0, 0x1f

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_5

    sget-object v2, Lcom/facebook/ads/redexgen/X/W0;->A0s:[Ljava/lang/String;

    const-string v1, "uWc"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "8dyx4klJGvupF4uRQFsiO4vx"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-nez v4, :cond_1

    .line 62580
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/W0;->A0S:Ljava/nio/ByteBuffer;

    const/4 v0, 0x4

    invoke-virtual {v1, v0, p3}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 62581
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/W0;->A0S:Ljava/nio/ByteBuffer;

    const/16 v2, 0x8

    const-wide/16 v0, 0x3e8

    mul-long/2addr v0, p4

    invoke-virtual {v4, v2, v0, v1}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 62582
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W0;->A0S:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 62583
    iput p3, p0, Lcom/facebook/ads/redexgen/X/W0;->A03:I

    .line 62584
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W0;->A0S:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    .line 62585
    .local p0, "avSyncHeaderBytesRemaining":I
    if-lez v2, :cond_3

    .line 62586
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/W0;->A0S:Ljava/nio/ByteBuffer;

    const/4 v0, 0x1

    invoke-virtual {p1, v1, v2, v0}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result v0

    .line 62587
    .local p2, "result":I
    if-gez v0, :cond_2

    .line 62588
    iput v3, p0, Lcom/facebook/ads/redexgen/X/W0;->A03:I

    .line 62589
    return v0

    .line 62590
    :cond_2
    if-ge v0, v2, :cond_3

    .line 62591
    return v3

    .line 62592
    .end local p2    # "result":I
    :cond_3
    invoke-static {p1, p2, p3}, Lcom/facebook/ads/redexgen/X/W0;->A01(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;I)I

    move-result v1

    .line 62593
    .restart local p2    # "result":I
    if-gez v1, :cond_4

    .line 62594
    iput v3, p0, Lcom/facebook/ads/redexgen/X/W0;->A03:I

    .line 62595
    return v1

    .line 62596
    :cond_4
    iget v0, p0, Lcom/facebook/ads/redexgen/X/W0;->A03:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/W0;->A03:I

    .line 62597
    return v1

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A03()J
    .locals 4

    .line 62598
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/W0;->A0X:Z

    if-eqz v0, :cond_0

    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/W0;->A0J:J

    iget v0, p0, Lcom/facebook/ads/redexgen/X/W0;->A0B:I

    int-to-long v0, v0

    div-long/2addr v2, v0

    :goto_0
    return-wide v2

    :cond_0
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/W0;->A0I:J

    goto :goto_0
.end method

.method private A04()J
    .locals 4

    .line 62599
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/W0;->A0X:Z

    if-eqz v0, :cond_0

    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/W0;->A0L:J

    iget v0, p0, Lcom/facebook/ads/redexgen/X/W0;->A09:I

    int-to-long v0, v0

    div-long/2addr v2, v0

    :goto_0
    return-wide v2

    :cond_0
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/W0;->A0K:J

    goto :goto_0
.end method

.method private A05(J)J
    .locals 2

    .line 62600
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W0;->A0j:Lcom/facebook/ads/redexgen/X/BL;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/BL;->A7G()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/W0;->A08(J)J

    move-result-wide v0

    add-long/2addr v0, p1

    return-wide v0
.end method

.method private A06(J)J
    .locals 5

    .line 62601
    const/4 v2, 0x0

    .line 62602
    .local p0, "checkpoint":Lcom/facebook/ads/redexgen/X/BN;
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W0;->A0l:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W0;->A0l:Ljava/util/ArrayDeque;

    .line 62603
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/BN;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/BN;->A00(Lcom/facebook/ads/redexgen/X/BN;)J

    move-result-wide v3

    cmp-long v0, p1, v3

    if-ltz v0, :cond_0

    .line 62604
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W0;->A0l:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/BN;

    goto :goto_0

    .line 62605
    :cond_0
    if-eqz v2, :cond_1

    .line 62606
    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/BN;->A02(Lcom/facebook/ads/redexgen/X/BN;)Lcom/facebook/ads/redexgen/X/AL;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/W0;->A0P:Lcom/facebook/ads/redexgen/X/AL;

    .line 62607
    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/BN;->A00(Lcom/facebook/ads/redexgen/X/BN;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/W0;->A0G:J

    .line 62608
    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/BN;->A01(Lcom/facebook/ads/redexgen/X/BN;)J

    move-result-wide v2

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/W0;->A0H:J

    sub-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/W0;->A0F:J

    .line 62609
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W0;->A0P:Lcom/facebook/ads/redexgen/X/AL;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/AL;->A01:F

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, v1, v0

    if-nez v0, :cond_2

    .line 62610
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/W0;->A0F:J

    add-long/2addr v2, p1

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/W0;->A0G:J

    sub-long/2addr v2, v0

    return-wide v2

    .line 62611
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W0;->A0l:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 62612
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/W0;->A0F:J

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/W0;->A0j:Lcom/facebook/ads/redexgen/X/BL;

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/W0;->A0G:J

    sub-long/2addr p1, v0

    .line 62613
    invoke-interface {v2, p1, p2}, Lcom/facebook/ads/redexgen/X/BL;->A6m(J)J

    move-result-wide v0

    add-long/2addr v3, v0

    .line 62614
    return-wide v3

    .line 62615
    :cond_3
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/W0;->A0F:J

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/W0;->A0G:J

    sub-long/2addr p1, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W0;->A0P:Lcom/facebook/ads/redexgen/X/AL;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/AL;->A01:F

    .line 62616
    invoke-static {p1, p2, v0}, Lcom/facebook/ads/redexgen/X/Ic;->A0C(JF)J

    move-result-wide v0

    add-long/2addr v2, v0

    .line 62617
    return-wide v2
.end method

.method private A07(J)J
    .locals 4

    .line 62618
    iget v0, p0, Lcom/facebook/ads/redexgen/X/W0;->A0A:I

    int-to-long v2, v0

    mul-long/2addr v2, p1

    const-wide/32 v0, 0xf4240

    div-long/2addr v2, v0

    return-wide v2
.end method

.method private A08(J)J
    .locals 4

    .line 62619
    const-wide/32 v2, 0xf4240

    mul-long/2addr v2, p1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/W0;->A0A:I

    int-to-long v0, v0

    div-long/2addr v2, v0

    return-wide v2
.end method

.method private A09(J)J
    .locals 4

    .line 62620
    const-wide/32 v2, 0xf4240

    mul-long/2addr v2, p1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/W0;->A06:I

    int-to-long v0, v0

    div-long/2addr v2, v0

    return-wide v2
.end method

.method public static synthetic A0A(Lcom/facebook/ads/redexgen/X/W0;)J
    .locals 1

    .line 62621
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/W0;->A0E:J

    return-wide v0
.end method

.method public static synthetic A0B(Lcom/facebook/ads/redexgen/X/W0;)J
    .locals 1

    .line 62622
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/W0;->A03()J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic A0C(Lcom/facebook/ads/redexgen/X/W0;)J
    .locals 1

    .line 62623
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/W0;->A04()J

    move-result-wide v0

    return-wide v0
.end method

.method private A0D()Landroid/media/AudioTrack;
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 62624
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/W0;->A0b:Z

    if-eqz v0, :cond_1

    .line 62625
    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v0, 0x3

    .line 62626
    invoke-virtual {v1, v0}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    const/16 v0, 0x10

    .line 62627
    invoke-virtual {v1, v0}, Landroid/media/AudioAttributes$Builder;->setFlags(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    const/4 v0, 0x1

    .line 62628
    invoke-virtual {v1, v0}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 62629
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v2

    .line 62630
    .local p0, "attributes":Landroid/media/AudioAttributes;
    .restart local p0    # "attributes":Landroid/media/AudioAttributes;
    :goto_0
    new-instance v1, Landroid/media/AudioFormat$Builder;

    invoke-direct {v1}, Landroid/media/AudioFormat$Builder;-><init>()V

    iget v0, p0, Lcom/facebook/ads/redexgen/X/W0;->A07:I

    .line 62631
    invoke-virtual {v1, v0}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/W0;->A08:I

    .line 62632
    invoke-virtual {v1, v0}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/W0;->A0A:I

    .line 62633
    invoke-virtual {v1, v0}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    .line 62634
    invoke-virtual {v0}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v3

    .line 62635
    .local v0, "format":Landroid/media/AudioFormat;
    iget v6, p0, Lcom/facebook/ads/redexgen/X/W0;->A01:I

    if-eqz v6, :cond_0

    .line 62636
    .local v1, "audioSessionId":I
    :goto_1
    new-instance v1, Landroid/media/AudioTrack;

    iget v4, p0, Lcom/facebook/ads/redexgen/X/W0;->A02:I

    const/4 v5, 0x1

    invoke-direct/range {v1 .. v6}, Landroid/media/AudioTrack;-><init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;III)V

    return-object v1

    .line 62637
    :cond_0
    const/4 v6, 0x0

    goto :goto_1

    .line 62638
    .end local p0    # "attributes":Landroid/media/AudioAttributes;
    :cond_1
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/W0;->A0Q:Lcom/facebook/ads/redexgen/X/Ar;

    sget-object v2, Lcom/facebook/ads/redexgen/X/W0;->A0s:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v2, v2, v0

    const/16 v0, 0x1f

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/W0;->A0s:[Ljava/lang/String;

    const-string v1, "pUH4k8DI7OwsUvzFqvYgEO7A6sw4DQlW"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "idMBrQhHnKOePq4EMC8GCn38ABFscyX5"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Ar;->A01()Landroid/media/AudioAttributes;

    move-result-object v2

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A0E()Landroid/media/AudioTrack;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/B9;
        }
    .end annotation

    .line 62639
    sget v1, Lcom/facebook/ads/redexgen/X/Ic;->A02:I

    const/16 v0, 0x15

    if-lt v1, v0, :cond_0

    .line 62640
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/W0;->A0D()Landroid/media/AudioTrack;

    move-result-object v1

    .line 62641
    .local p0, "audioTrack":Landroid/media/AudioTrack;
    .local p0, "audioTrack":Landroid/media/AudioTrack;
    :goto_0
    invoke-virtual {v1}, Landroid/media/AudioTrack;->getState()I

    move-result v4

    .line 62642
    .local v1, "state":I
    const/4 v0, 0x1

    if-ne v4, v0, :cond_2

    .line 62643
    return-object v1

    .line 62644
    .end local p0    # "audioTrack":Landroid/media/AudioTrack;
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W0;->A0Q:Lcom/facebook/ads/redexgen/X/Ar;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Ar;->A03:I

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ic;->A03(I)I

    move-result v2

    .line 62645
    .local p0, "streamType":I
    iget v8, p0, Lcom/facebook/ads/redexgen/X/W0;->A01:I

    if-nez v8, :cond_1

    .line 62646
    new-instance v1, Landroid/media/AudioTrack;

    iget v3, p0, Lcom/facebook/ads/redexgen/X/W0;->A0A:I

    iget v4, p0, Lcom/facebook/ads/redexgen/X/W0;->A07:I

    iget v5, p0, Lcom/facebook/ads/redexgen/X/W0;->A08:I

    iget v6, p0, Lcom/facebook/ads/redexgen/X/W0;->A02:I

    const/4 v7, 0x1

    invoke-direct/range {v1 .. v7}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    .local v1, "audioTrack":Landroid/media/AudioTrack;
    goto :goto_0

    .line 62647
    .end local v1    # "audioTrack":Landroid/media/AudioTrack;
    :cond_1
    new-instance v1, Landroid/media/AudioTrack;

    iget v3, p0, Lcom/facebook/ads/redexgen/X/W0;->A0A:I

    iget v4, p0, Lcom/facebook/ads/redexgen/X/W0;->A07:I

    iget v5, p0, Lcom/facebook/ads/redexgen/X/W0;->A08:I

    iget v6, p0, Lcom/facebook/ads/redexgen/X/W0;->A02:I

    const/4 v7, 0x1

    invoke-direct/range {v1 .. v8}, Landroid/media/AudioTrack;-><init>(IIIIIII)V

    goto :goto_0

    .line 62648
    :cond_2
    :try_start_0
    invoke-virtual {v1}, Landroid/media/AudioTrack;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62649
    :catch_0
    iget v3, p0, Lcom/facebook/ads/redexgen/X/W0;->A0A:I

    iget v2, p0, Lcom/facebook/ads/redexgen/X/W0;->A07:I

    iget v1, p0, Lcom/facebook/ads/redexgen/X/W0;->A02:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/B9;

    invoke-direct {v0, v4, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/B9;-><init>(IIII)V

    throw v0
.end method

.method private A0F(I)Landroid/media/AudioTrack;
    .locals 8

    .line 62650
    const/16 v2, 0xfa0

    .line 62651
    .local v6, "sampleRate":I
    const/4 v3, 0x4

    .line 62652
    .local v0, "channelConfig":I
    const/4 v4, 0x2

    .line 62653
    .local v2, "encoding":I
    const/4 v5, 0x2

    .line 62654
    .local v3, "bufferSize":I
    new-instance v0, Landroid/media/AudioTrack;

    const/4 v1, 0x3

    const/4 v6, 0x0

    move v7, p1

    invoke-direct/range {v0 .. v7}, Landroid/media/AudioTrack;-><init>(IIIIIII)V

    return-object v0
.end method

.method public static synthetic A0G(Lcom/facebook/ads/redexgen/X/W0;)Landroid/os/ConditionVariable;
    .locals 0

    .line 62655
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/W0;->A0f:Landroid/os/ConditionVariable;

    return-object p0
.end method

.method public static synthetic A0H(Lcom/facebook/ads/redexgen/X/W0;)Lcom/facebook/ads/redexgen/X/BA;
    .locals 0

    .line 62656
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/W0;->A0R:Lcom/facebook/ads/redexgen/X/BA;

    return-object p0
.end method

.method public static A0I(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/W0;->A0r:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x1

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A0J()V
    .locals 6

    .line 62657
    const/4 v3, 0x0

    .local p0, "i":I
    :goto_0
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/W0;->A0d:[Lcom/facebook/ads/redexgen/X/Az;

    array-length v4, v5

    sget-object v2, Lcom/facebook/ads/redexgen/X/W0;->A0s:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v2, v2, v0

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/W0;->A0s:[Ljava/lang/String;

    const-string v1, "sFdZXPHB0D7V4slX8"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "XDlY7o5lK2VK00gfw"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-ge v3, v4, :cond_0

    .line 62658
    aget-object v0, v5, v3

    .line 62659
    .local v3, "audioProcessor":Lcom/facebook/ads/redexgen/X/Az;
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Az;->flush()V

    .line 62660
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/W0;->A0e:[Ljava/nio/ByteBuffer;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Az;->A6p()Ljava/nio/ByteBuffer;

    move-result-object v0

    aput-object v0, v1, v3

    .line 62661
    .end local v3    # "audioProcessor":Lcom/facebook/ads/redexgen/X/Az;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 62662
    .end local p0    # "i":I
    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A0K()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/B9;
        }
    .end annotation

    .line 62663
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W0;->A0f:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 62664
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/W0;->A0E()Landroid/media/AudioTrack;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/W0;->A0M:Landroid/media/AudioTrack;

    .line 62665
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W0;->A0M:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getAudioSessionId()I

    move-result v2

    .line 62666
    .local p0, "audioSessionId":I
    sget-boolean v0, Lcom/facebook/ads/redexgen/X/W0;->A0p:Z

    if-eqz v0, :cond_1

    .line 62667
    sget v1, Lcom/facebook/ads/redexgen/X/Ic;->A02:I

    const/16 v0, 0x15

    if-ge v1, v0, :cond_1

    .line 62668
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W0;->A0N:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    .line 62669
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getAudioSessionId()I

    move-result v0

    if-eq v2, v0, :cond_0

    .line 62670
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/W0;->A0L()V

    .line 62671
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W0;->A0N:Landroid/media/AudioTrack;

    if-nez v0, :cond_1

    .line 62672
    invoke-direct {p0, v2}, Lcom/facebook/ads/redexgen/X/W0;->A0F(I)Landroid/media/AudioTrack;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/W0;->A0N:Landroid/media/AudioTrack;

    .line 62673
    :cond_1
    iget v0, p0, Lcom/facebook/ads/redexgen/X/W0;->A01:I

    if-eq v0, v2, :cond_2

    .line 62674
    iput v2, p0, Lcom/facebook/ads/redexgen/X/W0;->A01:I

    .line 62675
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W0;->A0R:Lcom/facebook/ads/redexgen/X/BA;

    if-eqz v0, :cond_2

    .line 62676
    invoke-interface {v0, v2}, Lcom/facebook/ads/redexgen/X/BA;->A9W(I)V

    .line 62677
    :cond_2
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/W0;->A0V:Z

    if-eqz v0, :cond_3

    .line 62678
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/W0;->A0j:Lcom/facebook/ads/redexgen/X/BL;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W0;->A0P:Lcom/facebook/ads/redexgen/X/AL;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/BL;->A3O(Lcom/facebook/ads/redexgen/X/AL;)Lcom/facebook/ads/redexgen/X/AL;

    move-result-object v0

    .line 62679
    :goto_0
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/W0;->A0P:Lcom/facebook/ads/redexgen/X/AL;

    .line 62680
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/W0;->A0N()V

    .line 62681
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/W0;->A0h:Lcom/facebook/ads/redexgen/X/BI;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/W0;->A0M:Landroid/media/AudioTrack;

    iget v2, p0, Lcom/facebook/ads/redexgen/X/W0;->A08:I

    iget v1, p0, Lcom/facebook/ads/redexgen/X/W0;->A09:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/W0;->A02:I

    invoke-virtual {v4, v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/BI;->A0H(Landroid/media/AudioTrack;III)V

    .line 62682
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/W0;->A0M()V

    .line 62683
    return-void

    .line 62684
    :cond_3
    sget-object v0, Lcom/facebook/ads/redexgen/X/AL;->A05:Lcom/facebook/ads/redexgen/X/AL;

    goto :goto_0
.end method

.method private A0L()V
    .locals 2

    .line 62685
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W0;->A0N:Landroid/media/AudioTrack;

    if-nez v0, :cond_0

    .line 62686
    return-void

    .line 62687
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/W0;->A0N:Landroid/media/AudioTrack;

    .line 62688
    .local p0, "toRelease":Landroid/media/AudioTrack;
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/W0;->A0N:Landroid/media/AudioTrack;

    .line 62689
    new-instance v0, Lcom/facebook/ads/redexgen/X/BK;

    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/redexgen/X/BK;-><init>(Lcom/facebook/ads/redexgen/X/W0;Landroid/media/AudioTrack;)V

    .line 62690
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/BK;->start()V

    .line 62691
    return-void
.end method

.method private A0M()V
    .locals 5

    .line 62692
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/W0;->A0V()Z

    move-result v0

    if-nez v0, :cond_0

    .line 62693
    :goto_0
    return-void

    .line 62694
    :cond_0
    sget v1, Lcom/facebook/ads/redexgen/X/Ic;->A02:I

    const/16 v0, 0x15

    if-lt v1, v0, :cond_1

    .line 62695
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/W0;->A0M:Landroid/media/AudioTrack;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/W0;->A00:F

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/W0;->A0R(Landroid/media/AudioTrack;F)V

    goto :goto_0

    .line 62696
    :cond_1
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/W0;->A0M:Landroid/media/AudioTrack;

    iget v3, p0, Lcom/facebook/ads/redexgen/X/W0;->A00:F

    sget-object v2, Lcom/facebook/ads/redexgen/X/W0;->A0s:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x6

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
    sget-object v2, Lcom/facebook/ads/redexgen/X/W0;->A0s:[Ljava/lang/String;

    const-string v1, "bG3"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "N2q1Lv4CiVMeoE4QaQfXwzQY"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-static {v4, v3}, Lcom/facebook/ads/redexgen/X/W0;->A0S(Landroid/media/AudioTrack;F)V

    goto :goto_0
.end method

.method private A0N()V
    .locals 6

    .line 62697
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 62698
    .local p0, "newAudioProcessors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/exoplayer2/audio/AudioProcessor;>;"
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/W0;->A0W()[Lcom/facebook/ads/redexgen/X/Az;

    move-result-object v4

    array-length v3, v4

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v4, v2

    .line 62699
    .local v2, "audioProcessor":Lcom/facebook/ads/redexgen/X/Az;
    invoke-interface {v1}, Lcom/facebook/ads/redexgen/X/Az;->A7x()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62700
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62701
    .end local v2    # "audioProcessor":Lcom/facebook/ads/redexgen/X/Az;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 62702
    :cond_0
    invoke-interface {v1}, Lcom/facebook/ads/redexgen/X/Az;->flush()V

    goto :goto_1

    .line 62703
    :cond_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 62704
    .local v5, "count":I
    new-array v0, v1, [Lcom/facebook/ads/redexgen/X/Az;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/ads/redexgen/X/Az;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/W0;->A0d:[Lcom/facebook/ads/redexgen/X/Az;

    .line 62705
    new-array v0, v1, [Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/W0;->A0e:[Ljava/nio/ByteBuffer;

    .line 62706
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/W0;->A0J()V

    sget-object v2, Lcom/facebook/ads/redexgen/X/W0;->A0s:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 62707
    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/W0;->A0s:[Ljava/lang/String;

    const-string v1, "fnVfCTkXLOVscA0OnZEXMzKxvIzYMLTb"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "38h9bEGUXkHwa7CT58Y3sPHfKxDWYuA3"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    return-void
.end method

.method public static A0O()V
    .locals 1

    const/16 v0, 0x95

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/W0;->A0r:[B

    return-void

    :array_0
    .array-data 1
        -0x6dt
        -0x79t
        -0x32t
        -0x2at
        -0x25t
        -0x79t
        -0x7ft
        -0x4bt
        -0x5ct
        -0x57t
        -0x51t
        -0x6ct
        -0x4et
        -0x5ft
        -0x5dt
        -0x55t
        0x5ft
        -0x7ct
        -0x72t
        0x7et
        -0x76t
        -0x77t
        -0x71t
        -0x7ct
        -0x77t
        -0x70t
        -0x7ct
        -0x71t
        -0x6ct
        0x3bt
        0x7ft
        -0x80t
        -0x71t
        -0x80t
        0x7et
        -0x71t
        -0x80t
        0x7ft
        0x3bt
        0x76t
        -0x80t
        -0x6dt
        -0x75t
        -0x80t
        0x7et
        -0x71t
        -0x80t
        0x7ft
        0x3bt
        -0x4at
        -0x42t
        -0x4ft
        -0x54t
        -0x4ft
        -0x57t
        -0x6bt
        -0x58t
        -0x4at
        -0x58t
        -0x49t
        -0x49t
        -0x54t
        -0x4ft
        -0x56t
        0x63t
        -0x4at
        -0x49t
        -0x5ct
        -0x51t
        -0x51t
        -0x58t
        -0x59t
        0x63t
        -0x5ct
        -0x48t
        -0x59t
        -0x54t
        -0x4et
        0x63t
        -0x49t
        -0x4bt
        -0x5ct
        -0x5at
        -0x52t
        -0x5ct
        -0x43t
        -0x4ct
        -0x39t
        -0x41t
        -0x4ct
        -0x4et
        -0x3dt
        -0x4ct
        -0x4dt
        0x6ft
        -0x50t
        -0x3ct
        -0x4dt
        -0x48t
        -0x42t
        0x6ft
        -0x4ct
        -0x43t
        -0x4et
        -0x42t
        -0x4dt
        -0x48t
        -0x43t
        -0x4at
        -0x77t
        0x6ft
        -0x3at
        -0x21t
        -0x1ct
        -0x1at
        -0x1ft
        -0x1ft
        -0x20t
        -0x1dt
        -0x1bt
        -0x2at
        -0x2bt
        -0x6ft
        -0x2ct
        -0x27t
        -0x2et
        -0x21t
        -0x21t
        -0x2at
        -0x23t
        -0x6ft
        -0x2ct
        -0x20t
        -0x1at
        -0x21t
        -0x1bt
        -0x55t
        -0x6ft
        -0x50t
        0x6et
        0x77t
        0x7bt
        0x7ct
        0x6dt
        0x7at
        -0x76t
        -0x67t
        -0x75t
        -0x67t
    .end array-data
.end method

.method public static A0P()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "SEA1lcrroxhlQXnLsVje9Fow"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "uw70ERzfuYuu3ZUSfjhwQhVyzH7n4PY8"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "dp1iTVwgaCSEgylHT6mamyt3p46eBdUf"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "2z7B8qXVGqbZiBhHa"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "EAyX6upYt7HJe5yiTDkHk9lCOZujY755"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "SUZSvlNHSC6a3K63zCgqwLKrgGJvbpdO"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "eqvAWi11hcfbOXjW0"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "RsA"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/W0;->A0s:[Ljava/lang/String;

    return-void
.end method

.method private A0Q(J)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/BB;
        }
    .end annotation

    .line 62708
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W0;->A0d:[Lcom/facebook/ads/redexgen/X/Az;

    array-length v4, v0

    .line 62709
    .local p0, "count":I
    move v3, v4

    .line 62710
    .local p1, "index":I
    :goto_0
    if-ltz v3, :cond_6

    .line 62711
    if-lez v3, :cond_3

    .line 62712
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/W0;->A0e:[Ljava/nio/ByteBuffer;

    add-int/lit8 v6, v3, -0x1

    sget-object v2, Lcom/facebook/ads/redexgen/X/W0;->A0s:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_5

    sget-object v2, Lcom/facebook/ads/redexgen/X/W0;->A0s:[Ljava/lang/String;

    const-string v1, "Qxnf2Sdn9wLzBwuwT"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "Du6g1bH39CJ7eSRDe"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    aget-object v2, v5, v6

    .line 62713
    .local v2, "input":Ljava/nio/ByteBuffer;
    :goto_1
    if-ne v3, v4, :cond_2

    .line 62714
    invoke-direct {p0, v2, p1, p2}, Lcom/facebook/ads/redexgen/X/W0;->A0T(Ljava/nio/ByteBuffer;J)V

    .line 62715
    .end local v0
    .end local v4
    :cond_0
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62716
    return-void

    .line 62717
    .end local v2    # "input":Ljava/nio/ByteBuffer;
    :cond_1
    add-int/lit8 v3, v3, -0x1

    .line 62718
    goto :goto_0

    .line 62719
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W0;->A0d:[Lcom/facebook/ads/redexgen/X/Az;

    aget-object v0, v0, v3

    .line 62720
    .local v0, "audioProcessor":Lcom/facebook/ads/redexgen/X/Az;
    invoke-interface {v0, v2}, Lcom/facebook/ads/redexgen/X/Az;->ACi(Ljava/nio/ByteBuffer;)V

    .line 62721
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Az;->A6p()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 62722
    .local v4, "output":Ljava/nio/ByteBuffer;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W0;->A0e:[Ljava/nio/ByteBuffer;

    aput-object v1, v0, v3

    .line 62723
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62724
    add-int/lit8 v3, v3, 0x1

    .line 62725
    goto :goto_0

    .line 62726
    :cond_3
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/W0;->A0T:Ljava/nio/ByteBuffer;

    if-eqz v2, :cond_4

    goto :goto_1

    :cond_4
    sget-object v2, Lcom/facebook/ads/redexgen/X/Az;->A00:Ljava/nio/ByteBuffer;

    goto :goto_1

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 62727
    :cond_6
    return-void
.end method

.method public static A0R(Landroid/media/AudioTrack;F)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 62728
    invoke-virtual {p0, p1}, Landroid/media/AudioTrack;->setVolume(F)I

    .line 62729
    return-void
.end method

.method public static A0S(Landroid/media/AudioTrack;F)V
    .locals 0

    .line 62730
    invoke-virtual {p0, p1, p1}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    .line 62731
    return-void
.end method

.method private A0T(Ljava/nio/ByteBuffer;J)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/BB;
        }
    .end annotation

    .line 62732
    move-object v7, p1

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    .line 62733
    return-void

    .line 62734
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W0;->A0U:Ljava/nio/ByteBuffer;

    const/4 v6, 0x1

    const/16 v3, 0x15

    const/4 v4, 0x0

    if-eqz v0, :cond_3

    .line 62735
    if-ne v0, v7, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A03(Z)V

    .line 62736
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/W0;
    .end local v0
    :cond_1
    :goto_1
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v8

    .line 62737
    .restart local p0    # "this":Lcom/facebook/ads/redexgen/X/W0;
    const/4 v4, 0x0

    .line 62738
    .local v0, "bytesWritten":I
    sget v5, Lcom/facebook/ads/redexgen/X/Ic;->A02:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/W0;->A0s:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_6

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 62739
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 62740
    :cond_3
    iput-object v7, p0, Lcom/facebook/ads/redexgen/X/W0;->A0U:Ljava/nio/ByteBuffer;

    .line 62741
    sget v0, Lcom/facebook/ads/redexgen/X/Ic;->A02:I

    if-ge v0, v3, :cond_1

    .line 62742
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    .line 62743
    .local p0, "bytesRemaining":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W0;->A0c:[B

    if-eqz v0, :cond_4

    array-length v0, v0

    if-ge v0, v2, :cond_5

    .line 62744
    :cond_4
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/W0;->A0c:[B

    .line 62745
    :cond_5
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 62746
    .local v0, "originalPosition":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W0;->A0c:[B

    invoke-virtual {v7, v0, v4, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 62747
    invoke-virtual {v7, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 62748
    iput v4, p0, Lcom/facebook/ads/redexgen/X/W0;->A0C:I

    goto :goto_1

    :cond_6
    sget-object v2, Lcom/facebook/ads/redexgen/X/W0;->A0s:[Ljava/lang/String;

    const-string v1, "Hdo3jzuLjZwq1LqoAAIPAAITjPFs44Hc"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "yAxQqYNCvSu84E4vGXJcaWUtn2rptGLd"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-ge v5, v3, :cond_b

    .line 62749
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/W0;->A0h:Lcom/facebook/ads/redexgen/X/BI;

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/W0;->A0L:J

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/BI;->A0C(J)I

    move-result v0

    .line 62750
    .local v7, "bytesToWrite":I
    if-lez v0, :cond_7

    .line 62751
    invoke-static {v8, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 62752
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/W0;->A0M:Landroid/media/AudioTrack;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/W0;->A0c:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/W0;->A0C:I

    invoke-virtual {v2, v1, v0, v3}, Landroid/media/AudioTrack;->write([BII)I

    move-result v4

    .line 62753
    if-lez v4, :cond_7

    .line 62754
    iget v0, p0, Lcom/facebook/ads/redexgen/X/W0;->A0C:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/facebook/ads/redexgen/X/W0;->A0C:I

    .line 62755
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/2addr v0, v4

    invoke-virtual {v7, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 62756
    :cond_7
    :goto_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/W0;->A0E:J

    .line 62757
    if-ltz v4, :cond_f

    .line 62758
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/W0;->A0X:Z

    if-eqz v0, :cond_8

    .line 62759
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/W0;->A0L:J

    int-to-long v0, v4

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/W0;->A0L:J

    .line 62760
    :cond_8
    if-ne v4, v8, :cond_a

    .line 62761
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/W0;->A0X:Z

    if-nez v0, :cond_9

    .line 62762
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/W0;->A0K:J

    iget v0, p0, Lcom/facebook/ads/redexgen/X/W0;->A05:I

    int-to-long v0, v0

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/W0;->A0K:J

    .line 62763
    :cond_9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/W0;->A0U:Ljava/nio/ByteBuffer;

    .line 62764
    :cond_a
    return-void

    .line 62765
    :cond_b
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/W0;->A0b:Z

    if-eqz v0, :cond_e

    .line 62766
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    move-wide v9, p2

    cmp-long v0, v9, v1

    if-eqz v0, :cond_c

    :goto_3
    invoke-static {v6}, Lcom/facebook/ads/redexgen/X/Hx;->A04(Z)V

    .line 62767
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/W0;->A0M:Landroid/media/AudioTrack;

    sget-object v2, Lcom/facebook/ads/redexgen/X/W0;->A0s:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v2, v2, v0

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_d

    .line 62768
    sget-object v2, Lcom/facebook/ads/redexgen/X/W0;->A0s:[Ljava/lang/String;

    const-string v1, "4Ux7Ys9QK6ObRJv2n5FzL4k9xCyx39Es"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "jOV2F3kT7rgR6CIlK6ys9PgcXG8ELDvM"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    move-object v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/facebook/ads/redexgen/X/W0;->A02(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;IJ)I

    move-result v4

    goto :goto_2

    .line 62769
    :cond_c
    const/4 v6, 0x0

    goto :goto_3

    .line 62770
    :cond_d
    move-object v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/facebook/ads/redexgen/X/W0;->A02(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;IJ)I

    move-result v4

    goto :goto_2

    .line 62771
    :cond_e
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W0;->A0M:Landroid/media/AudioTrack;

    invoke-static {v0, v7, v8}, Lcom/facebook/ads/redexgen/X/W0;->A01(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;I)I

    move-result v4

    goto :goto_2

    .line 62772
    :cond_f
    new-instance v0, Lcom/facebook/ads/redexgen/X/BB;

    invoke-direct {v0, v4}, Lcom/facebook/ads/redexgen/X/BB;-><init>(I)V

    throw v0
.end method

.method private A0U()Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/BB;
        }
    .end annotation

    .line 62773
    const/4 v8, 0x0

    .line 62774
    .local p0, "audioProcessorNeedsEndOfStream":Z
    iget v0, p0, Lcom/facebook/ads/redexgen/X/W0;->A04:I

    const/4 v6, -0x1

    const/4 v7, 0x0

    if-ne v0, v6, :cond_0

    .line 62775
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/W0;->A0Z:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/facebook/ads/redexgen/X/W0;->A04:I

    .line 62776
    const/4 v8, 0x1

    .line 62777
    :cond_0
    :goto_1
    iget v5, p0, Lcom/facebook/ads/redexgen/X/W0;->A04:I

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/W0;->A0d:[Lcom/facebook/ads/redexgen/X/Az;

    array-length v0, v4

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v1, 0x1

    if-ge v5, v0, :cond_4

    .line 62778
    aget-object v0, v4, v5

    .line 62779
    .local v8, "audioProcessor":Lcom/facebook/ads/redexgen/X/Az;
    if-eqz v8, :cond_1

    .line 62780
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Az;->ACh()V

    .line 62781
    :cond_1
    invoke-direct {p0, v2, v3}, Lcom/facebook/ads/redexgen/X/W0;->A0Q(J)V

    .line 62782
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Az;->A81()Z

    move-result v0

    if-nez v0, :cond_2

    .line 62783
    return v7

    .line 62784
    :cond_2
    const/4 v8, 0x1

    .line 62785
    iget v0, p0, Lcom/facebook/ads/redexgen/X/W0;->A04:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/W0;->A04:I

    .line 62786
    .end local v8    # "audioProcessor":Lcom/facebook/ads/redexgen/X/Az;
    goto :goto_1

    .line 62787
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W0;->A0d:[Lcom/facebook/ads/redexgen/X/Az;

    array-length v0, v0

    goto :goto_0

    .line 62788
    :cond_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W0;->A0U:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_5

    .line 62789
    invoke-direct {p0, v0, v2, v3}, Lcom/facebook/ads/redexgen/X/W0;->A0T(Ljava/nio/ByteBuffer;J)V

    .line 62790
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W0;->A0U:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_5

    .line 62791
    return v7

    .line 62792
    :cond_5
    iput v6, p0, Lcom/facebook/ads/redexgen/X/W0;->A04:I

    .line 62793
    return v1
.end method

.method private A0V()Z
    .locals 1

    .line 62794
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W0;->A0M:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private A0W()[Lcom/facebook/ads/redexgen/X/Az;
    .locals 1

    .line 62795
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/W0;->A0a:Z

    if-eqz v0, :cond_0

    .line 62796
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W0;->A0n:[Lcom/facebook/ads/redexgen/X/Az;

    .line 62797
    :goto_0
    return-object v0

    .line 62798
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W0;->A0o:[Lcom/facebook/ads/redexgen/X/Az;

    goto :goto_0
.end method


# virtual methods
.method public final A43(IIII[III)V
    .locals 10
    .param p5    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/B8;
        }
    .end annotation

    .line 62799
    move-object v3, p0

    const/4 v9, 0x0

    .line 62800
    .local p0, "flush":Z
    iput p3, v3, Lcom/facebook/ads/redexgen/X/W0;->A06:I

    .line 62801
    .local p5, "channelCount":I
    .local v2, "sampleRate":I
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Ic;->A0d(I)Z

    move-result v0

    iput-boolean v0, v3, Lcom/facebook/ads/redexgen/X/W0;->A0X:Z

    .line 62802
    iget-boolean v0, v3, Lcom/facebook/ads/redexgen/X/W0;->A0m:Z

    if-eqz v0, :cond_3

    const/high16 v0, 0x40000000    # 2.0f

    .line 62803
    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/W0;->A80(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 62804
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Ic;->A0c(I)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, v3, Lcom/facebook/ads/redexgen/X/W0;->A0a:Z

    .line 62805
    iget-boolean v0, v3, Lcom/facebook/ads/redexgen/X/W0;->A0X:Z

    if-eqz v0, :cond_0

    .line 62806
    invoke-static {p1, p2}, Lcom/facebook/ads/redexgen/X/Ic;->A05(II)I

    move-result v0

    iput v0, v3, Lcom/facebook/ads/redexgen/X/W0;->A0B:I

    .line 62807
    :cond_0
    move v7, p1

    .line 62808
    .local v1, "encoding":I
    iget-boolean v0, v3, Lcom/facebook/ads/redexgen/X/W0;->A0X:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/4 v6, 0x1

    .line 62809
    .local p4, "processingEnabled":Z
    :goto_1
    if-eqz v6, :cond_1

    iget-boolean v0, v3, Lcom/facebook/ads/redexgen/X/W0;->A0a:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_2
    iput-boolean v0, v3, Lcom/facebook/ads/redexgen/X/W0;->A0V:Z

    sget-object v2, Lcom/facebook/ads/redexgen/X/W0;->A0s:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_4

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    .line 62810
    :cond_2
    const/4 v6, 0x0

    goto :goto_1

    .line 62811
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 62812
    :cond_4
    sget-object v2, Lcom/facebook/ads/redexgen/X/W0;->A0s:[Ljava/lang/String;

    const-string v1, "wvQ"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "EVCRDkSgRWis3G9N82TNcaeq"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-eqz v6, :cond_6

    .line 62813
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/W0;->A0k:Lcom/facebook/ads/redexgen/X/Vu;

    move/from16 v1, p7

    move/from16 v2, p6

    invoke-virtual {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/Vu;->A01(II)V

    .line 62814
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/W0;->A0i:Lcom/facebook/ads/redexgen/X/W3;

    invoke-virtual {v0, p5}, Lcom/facebook/ads/redexgen/X/W3;->A01([I)V

    .line 62815
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/W0;->A0W()[Lcom/facebook/ads/redexgen/X/Az;

    move-result-object v5

    array-length v4, v5

    const/4 v2, 0x0

    .end local p0    # "flush":Z
    .local p5, "flush":Z
    .local v2, "channelCount":I
    .local v1, "sampleRate":I
    .local v3, "encoding":I
    :goto_3
    if-ge v2, v4, :cond_6

    aget-object v1, v5, v2

    .line 62816
    .local p1, "audioProcessor":Lcom/facebook/ads/redexgen/X/Az;
    :try_start_0
    invoke-interface {v1, p3, p2, v7}, Lcom/facebook/ads/redexgen/X/Az;->A44(III)Z

    move-result v0
    :try_end_0
    .catch Lcom/facebook/ads/redexgen/X/Ay; {:try_start_0 .. :try_end_0} :catch_0

    or-int/2addr v9, v0

    .line 62817
    invoke-interface {v1}, Lcom/facebook/ads/redexgen/X/Az;->A7x()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 62818
    invoke-interface {v1}, Lcom/facebook/ads/redexgen/X/Az;->A6q()I

    move-result p2

    .line 62819
    invoke-interface {v1}, Lcom/facebook/ads/redexgen/X/Az;->A6s()I

    move-result p3

    .line 62820
    invoke-interface {v1}, Lcom/facebook/ads/redexgen/X/Az;->A6r()I

    move-result v7

    .line 62821
    .end local p1    # "audioProcessor":Lcom/facebook/ads/redexgen/X/Az;
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 62822
    .restart local p1    # "audioProcessor":Lcom/facebook/ads/redexgen/X/Az;
    :catch_0
    move-exception v1

    .line 62823
    .local p0, "e":Lcom/facebook/ads/redexgen/X/Ay;
    new-instance v0, Lcom/facebook/ads/redexgen/X/B8;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/B8;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 62824
    .end local v1    # "sampleRate":I
    .restart local v3    # "encoding":I
    :cond_6
    packed-switch p2, :pswitch_data_0

    .line 62825
    .end local p0    # "e":Lcom/facebook/ads/redexgen/X/Ay;
    .end local v2    # "channelCount":I
    .local p2, "sampleRate":I
    .local v0, "flush":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x6f

    const/16 v1, 0x1b

    const/16 v0, 0x70

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/W0;->A0I(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/B8;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/B8;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62826
    .end local v1
    :pswitch_0
    const/4 v5, 0x4

    .line 62827
    .restart local v1    # "sampleRate":I
    goto :goto_4

    .line 62828
    .end local v1    # "sampleRate":I
    :pswitch_1
    const/16 v5, 0xc

    .line 62829
    .restart local v1    # "sampleRate":I
    goto :goto_4

    .line 62830
    .end local v1    # "sampleRate":I
    :pswitch_2
    const/16 v5, 0x1c

    .line 62831
    .restart local v1    # "sampleRate":I
    goto :goto_4

    .line 62832
    .end local v1    # "sampleRate":I
    :pswitch_3
    const/16 v5, 0xcc

    .line 62833
    .restart local v1    # "sampleRate":I
    goto :goto_4

    .line 62834
    .end local v1    # "sampleRate":I
    :pswitch_4
    const/16 v5, 0xdc

    .line 62835
    .restart local v1    # "sampleRate":I
    goto :goto_4

    .line 62836
    .end local v1    # "sampleRate":I
    :pswitch_5
    const/16 v5, 0xfc

    .line 62837
    .restart local v1    # "sampleRate":I
    goto :goto_4

    .line 62838
    .end local v1    # "sampleRate":I
    :pswitch_6
    const/16 v5, 0x4fc

    .line 62839
    .restart local v1    # "sampleRate":I
    goto :goto_4

    .line 62840
    .end local p2    # "sampleRate":I
    .end local v0    # "flush":Z
    .restart local p0    # "e":Lcom/facebook/ads/redexgen/X/Ay;
    .restart local v2    # "channelCount":I
    :pswitch_7
    sget v5, Lcom/facebook/ads/redexgen/X/9u;->A00:I

    .line 62841
    .local v1, "channelConfig":I
    :goto_4
    sget v1, Lcom/facebook/ads/redexgen/X/Ic;->A02:I

    const/16 v0, 0x17

    const/4 v2, 0x5

    if-gt v1, v0, :cond_7

    sget-object v8, Lcom/facebook/ads/redexgen/X/Ic;->A03:Ljava/lang/String;

    const/16 v4, 0x8b

    const/4 v1, 0x6

    const/4 v0, 0x7

    invoke-static {v4, v1, v0}, Lcom/facebook/ads/redexgen/X/W0;->A0I(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v8, Lcom/facebook/ads/redexgen/X/Ic;->A05:Ljava/lang/String;

    const/16 v4, 0x31

    const/4 v1, 0x6

    const/16 v0, 0x67

    invoke-static {v4, v1, v0}, Lcom/facebook/ads/redexgen/X/W0;->A0I(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 62842
    const/4 v0, 0x3

    if-eq p2, v0, :cond_b

    if-eq p2, v2, :cond_b

    const/4 v0, 0x7

    if-eq p2, v0, :cond_a

    .line 62843
    :cond_7
    :goto_5
    sget v1, Lcom/facebook/ads/redexgen/X/Ic;->A02:I

    const/16 v0, 0x19

    if-gt v1, v0, :cond_9

    sget-object v8, Lcom/facebook/ads/redexgen/X/Ic;->A03:Ljava/lang/String;

    const/16 v4, 0x91

    const/4 v1, 0x4

    const/16 v0, 0x23

    invoke-static {v4, v1, v0}, Lcom/facebook/ads/redexgen/X/W0;->A0I(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-boolean v0, v3, Lcom/facebook/ads/redexgen/X/W0;->A0X:Z

    if-nez v0, :cond_9

    const/4 v4, 0x1

    if-ne p2, v4, :cond_8

    .line 62844
    const/16 v5, 0xc

    .line 62845
    :cond_8
    :goto_6
    if-nez v9, :cond_d

    .line 62846
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/W0;->A0V()Z

    move-result v0

    if-eqz v0, :cond_d

    iget v9, v3, Lcom/facebook/ads/redexgen/X/W0;->A08:I

    sget-object v8, Lcom/facebook/ads/redexgen/X/W0;->A0s:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v8, v0

    const/4 v0, 0x0

    aget-object v0, v8, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_c

    sget-object v8, Lcom/facebook/ads/redexgen/X/W0;->A0s:[Ljava/lang/String;

    const-string v1, "teVIeh3OPsOetSxEZ"

    const/4 v0, 0x3

    aput-object v1, v8, v0

    const-string v1, "anY50gokCzwXnCn1B"

    const/4 v0, 0x6

    aput-object v1, v8, v0

    if-ne v9, v7, :cond_d

    iget v0, v3, Lcom/facebook/ads/redexgen/X/W0;->A0A:I

    if-ne v0, p3, :cond_d

    iget v0, v3, Lcom/facebook/ads/redexgen/X/W0;->A07:I

    if-ne v0, v5, :cond_d

    .line 62847
    return-void

    .line 62848
    :cond_9
    const/4 v4, 0x1

    goto :goto_6

    .line 62849
    :cond_a
    sget v5, Lcom/facebook/ads/redexgen/X/9u;->A00:I

    .line 62850
    goto :goto_5

    .line 62851
    :cond_b
    const/16 v5, 0xfc

    goto :goto_5

    :cond_c
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 62852
    :cond_d
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/W0;->reset()V

    .line 62853
    iput-boolean v6, v3, Lcom/facebook/ads/redexgen/X/W0;->A0Z:Z

    .line 62854
    iput p3, v3, Lcom/facebook/ads/redexgen/X/W0;->A0A:I

    .line 62855
    iput v5, v3, Lcom/facebook/ads/redexgen/X/W0;->A07:I

    .line 62856
    iput v7, v3, Lcom/facebook/ads/redexgen/X/W0;->A08:I

    .line 62857
    iget-boolean v0, v3, Lcom/facebook/ads/redexgen/X/W0;->A0X:Z

    if-eqz v0, :cond_14

    iget v0, v3, Lcom/facebook/ads/redexgen/X/W0;->A08:I

    invoke-static {v0, p2}, Lcom/facebook/ads/redexgen/X/Ic;->A05(II)I

    move-result v0

    :goto_7
    iput v0, v3, Lcom/facebook/ads/redexgen/X/W0;->A09:I

    .line 62858
    if-eqz p4, :cond_e

    .line 62859
    iput p4, v3, Lcom/facebook/ads/redexgen/X/W0;->A02:I

    .line 62860
    :goto_8
    return-void

    .line 62861
    :cond_e
    iget-boolean v0, v3, Lcom/facebook/ads/redexgen/X/W0;->A0X:Z

    if-eqz v0, :cond_10

    .line 62862
    iget v0, v3, Lcom/facebook/ads/redexgen/X/W0;->A08:I

    invoke-static {p3, v5, v0}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v2

    .line 62863
    .local v9, "minBufferSize":I
    const/4 v0, -0x2

    if-eq v2, v0, :cond_f

    :goto_9
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/Hx;->A04(Z)V

    .line 62864
    mul-int/lit8 v9, v2, 0x4

    .line 62865
    .local p1, "multipliedBufferSize":I
    const-wide/32 v0, 0x3d090

    invoke-direct {v3, v0, v1}, Lcom/facebook/ads/redexgen/X/W0;->A07(J)J

    move-result-wide v0

    long-to-int v8, v0

    iget v0, v3, Lcom/facebook/ads/redexgen/X/W0;->A09:I

    mul-int/2addr v8, v0

    .line 62866
    .local p3, "minAppBufferSize":I
    .end local v2    # "channelCount":I
    .end local v1    # "channelConfig":I
    .restart local p2    # "sampleRate":I
    .local v0, "channelConfig":I
    int-to-long v6, v2

    .end local p4    # "processingEnabled":Z
    .end local v9    # "minBufferSize":I
    .local v0, "minBufferSize":I
    .local v0, "processingEnabled":Z
    const-wide/32 v0, 0xb71b0

    .line 62867
    invoke-direct {v3, v0, v1}, Lcom/facebook/ads/redexgen/X/W0;->A07(J)J

    move-result-wide v4

    .end local p0    # "e":Lcom/facebook/ads/redexgen/X/Ay;
    .restart local v0    # "processingEnabled":Z
    iget v0, v3, Lcom/facebook/ads/redexgen/X/W0;->A09:I

    int-to-long v0, v0

    mul-long/2addr v4, v0

    .line 62868
    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    long-to-int v0, v1

    .line 62869
    .local p0, "maxAppBufferSize":I
    invoke-static {v9, v8, v0}, Lcom/facebook/ads/redexgen/X/Ic;->A06(III)I

    move-result v0

    iput v0, v3, Lcom/facebook/ads/redexgen/X/W0;->A02:I

    .line 62870
    .end local p0    # "maxAppBufferSize":I
    .end local p3    # "minAppBufferSize":I
    .end local p1    # "multipliedBufferSize":I
    .end local v0    # "processingEnabled":Z
    goto :goto_8

    .line 62871
    :cond_f
    const/4 v4, 0x0

    goto :goto_9

    .line 62872
    .end local p2    # "sampleRate":I
    .end local v0
    .end local v0
    .end local v0
    .local p0, "flush":Z
    .restart local v2    # "channelCount":I
    .restart local v1    # "channelConfig":I
    .restart local p4    # "processingEnabled":Z
    .end local p0    # "flush":Z
    .end local v2    # "channelCount":I
    .end local v1    # "channelConfig":I
    .end local p4    # "processingEnabled":Z
    .restart local p2    # "sampleRate":I
    .restart local v0    # "processingEnabled":Z
    .restart local v0    # "processingEnabled":Z
    .restart local v0    # "processingEnabled":Z
    :cond_10
    iget v1, v3, Lcom/facebook/ads/redexgen/X/W0;->A08:I

    if-eq v1, v2, :cond_11

    const/4 v0, 0x6

    if-ne v1, v0, :cond_12

    .line 62873
    :cond_11
    const/16 v0, 0x5000

    iput v0, v3, Lcom/facebook/ads/redexgen/X/W0;->A02:I

    goto :goto_8

    .line 62874
    :cond_12
    const/4 v0, 0x7

    if-ne v1, v0, :cond_13

    .line 62875
    const v0, 0xc000

    iput v0, v3, Lcom/facebook/ads/redexgen/X/W0;->A02:I

    goto :goto_8

    .line 62876
    :cond_13
    const v0, 0x48000

    iput v0, v3, Lcom/facebook/ads/redexgen/X/W0;->A02:I

    goto :goto_8

    .line 62877
    :cond_14
    const/4 v0, -0x1

    goto :goto_7

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public final A4l()V
    .locals 1

    .line 62878
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/W0;->A0b:Z

    if-eqz v0, :cond_0

    .line 62879
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/W0;->A0b:Z

    .line 62880
    iput v0, p0, Lcom/facebook/ads/redexgen/X/W0;->A01:I

    .line 62881
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/W0;->reset()V

    .line 62882
    :cond_0
    return-void
.end method

.method public final A57(I)V
    .locals 5

    .line 62883
    sget v1, Lcom/facebook/ads/redexgen/X/Ic;->A02:I

    const/4 v3, 0x1

    const/16 v0, 0x15

    if-lt v1, v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A04(Z)V

    .line 62884
    iget-boolean v4, p0, Lcom/facebook/ads/redexgen/X/W0;->A0b:Z

    sget-object v2, Lcom/facebook/ads/redexgen/X/W0;->A0s:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/W0;->A0s:[Ljava/lang/String;

    const-string v1, "osHErH3YvYRvMV4qV8FcRZT4FEtIKGwy"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "nQiiHwRUCu9U9A2qr7g6qZhHWEP0x11D"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-eqz v4, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/W0;->A01:I

    if-eq v0, p1, :cond_1

    .line 62885
    :cond_0
    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/W0;->A0b:Z

    .line 62886
    iput p1, p0, Lcom/facebook/ads/redexgen/X/W0;->A01:I

    .line 62887
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/W0;->reset()V

    .line 62888
    :cond_1
    return-void

    .line 62889
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A68(Z)J
    .locals 4

    .line 62890
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/W0;->A0V()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/W0;->A0D:I

    if-nez v0, :cond_1

    .line 62891
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/W0;
    :cond_0
    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0

    .line 62892
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W0;->A0h:Lcom/facebook/ads/redexgen/X/BI;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/BI;->A0D(Z)J

    move-result-wide v2

    .line 62893
    .local p0, "positionUs":J
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/W0;->A04()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/W0;->A08(J)J

    move-result-wide v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 62894
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/W0;->A0H:J

    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/W0;->A06(J)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/W0;->A05(J)J

    move-result-wide v0

    add-long/2addr v2, v0

    return-wide v2
.end method

.method public final A70()Lcom/facebook/ads/redexgen/X/AL;
    .locals 1

    .line 62895
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W0;->A0P:Lcom/facebook/ads/redexgen/X/AL;

    return-object v0
.end method

.method public final A7W(Ljava/nio/ByteBuffer;J)Z
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/B9;,
            Lcom/facebook/ads/redexgen/X/BB;
        }
    .end annotation

    .line 62896
    move-object/from16 v7, p0

    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/W0;->A0T:Ljava/nio/ByteBuffer;

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object/from16 v11, p1

    if-eqz v0, :cond_0

    if-ne v11, v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A03(Z)V

    .line 62897
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/W0;->A0V()Z

    move-result v0

    if-nez v0, :cond_1

    .line 62898
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/W0;->A0K()V

    .line 62899
    iget-boolean v0, v7, Lcom/facebook/ads/redexgen/X/W0;->A0Y:Z

    if-eqz v0, :cond_1

    .line 62900
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/W0;->ACT()V

    .line 62901
    :cond_1
    iget-object v3, v7, Lcom/facebook/ads/redexgen/X/W0;->A0h:Lcom/facebook/ads/redexgen/X/BI;

    sget-object v2, Lcom/facebook/ads/redexgen/X/W0;->A0s:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_10

    sget-object v2, Lcom/facebook/ads/redexgen/X/W0;->A0s:[Ljava/lang/String;

    const-string v1, "shPJjSe5xPZuk5bPA"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "f3ASl8noBqZijaId0"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/W0;->A04()J

    move-result-wide v0

    invoke-virtual {v3, v0, v1}, Lcom/facebook/ads/redexgen/X/BI;->A0M(J)Z

    move-result v0

    if-nez v0, :cond_3

    .line 62902
    return v5

    .line 62903
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 62904
    :cond_3
    iget-object v3, v7, Lcom/facebook/ads/redexgen/X/W0;->A0T:Ljava/nio/ByteBuffer;

    const/4 v2, 0x6

    const/16 v1, 0xa

    const/16 v0, 0x3f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/W0;->A0I(III)Ljava/lang/String;

    move-result-object v10

    const/4 v8, 0x0

    move-wide/from16 v0, p2

    if-nez v3, :cond_9

    .line 62905
    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-nez v2, :cond_4

    .line 62906
    return v6

    .line 62907
    :cond_4
    iget-boolean v2, v7, Lcom/facebook/ads/redexgen/X/W0;->A0X:Z

    if-nez v2, :cond_5

    iget v2, v7, Lcom/facebook/ads/redexgen/X/W0;->A05:I

    if-nez v2, :cond_5

    .line 62908
    iget v2, v7, Lcom/facebook/ads/redexgen/X/W0;->A08:I

    invoke-static {v2, v11}, Lcom/facebook/ads/redexgen/X/W0;->A00(ILjava/nio/ByteBuffer;)I

    move-result v2

    iput v2, v7, Lcom/facebook/ads/redexgen/X/W0;->A05:I

    .line 62909
    iget v2, v7, Lcom/facebook/ads/redexgen/X/W0;->A05:I

    if-nez v2, :cond_5

    .line 62910
    return v6

    .line 62911
    :cond_5
    iget-object v4, v7, Lcom/facebook/ads/redexgen/X/W0;->A0O:Lcom/facebook/ads/redexgen/X/AL;

    const-wide/16 v2, 0x0

    if-eqz v4, :cond_7

    .line 62912
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/W0;->A0U()Z

    move-result v4

    if-nez v4, :cond_6

    .line 62913
    return v5

    .line 62914
    :cond_6
    iget-object v5, v7, Lcom/facebook/ads/redexgen/X/W0;->A0O:Lcom/facebook/ads/redexgen/X/AL;

    .line 62915
    .local v7, "newPlaybackParameters":Lcom/facebook/ads/redexgen/X/AL;
    iput-object v8, v7, Lcom/facebook/ads/redexgen/X/W0;->A0O:Lcom/facebook/ads/redexgen/X/AL;

    .line 62916
    iget-object v4, v7, Lcom/facebook/ads/redexgen/X/W0;->A0j:Lcom/facebook/ads/redexgen/X/BL;

    invoke-interface {v4, v5}, Lcom/facebook/ads/redexgen/X/BL;->A3O(Lcom/facebook/ads/redexgen/X/AL;)Lcom/facebook/ads/redexgen/X/AL;

    move-result-object v13

    .line 62917
    iget-object v9, v7, Lcom/facebook/ads/redexgen/X/W0;->A0l:Ljava/util/ArrayDeque;

    new-instance v12, Lcom/facebook/ads/redexgen/X/BN;

    .line 62918
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v14

    .line 62919
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/W0;->A04()J

    move-result-wide v4

    invoke-direct {v7, v4, v5}, Lcom/facebook/ads/redexgen/X/W0;->A08(J)J

    move-result-wide v16

    const/16 v18, 0x0

    move-object v4, v12

    invoke-direct/range {v12 .. v18}, Lcom/facebook/ads/redexgen/X/BN;-><init>(Lcom/facebook/ads/redexgen/X/AL;JJLcom/facebook/ads/redexgen/X/BJ;)V

    .line 62920
    invoke-virtual {v9, v4}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 62921
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/W0;->A0N()V

    .line 62922
    .end local v7    # "newPlaybackParameters":Lcom/facebook/ads/redexgen/X/AL;
    :cond_7
    iget v4, v7, Lcom/facebook/ads/redexgen/X/W0;->A0D:I

    if-nez v4, :cond_c

    .line 62923
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, v7, Lcom/facebook/ads/redexgen/X/W0;->A0H:J

    .line 62924
    iput v6, v7, Lcom/facebook/ads/redexgen/X/W0;->A0D:I

    .line 62925
    .end local v7
    :cond_8
    :goto_1
    iget-boolean v2, v7, Lcom/facebook/ads/redexgen/X/W0;->A0X:Z

    if-eqz v2, :cond_b

    .line 62926
    iget-wide v4, v7, Lcom/facebook/ads/redexgen/X/W0;->A0J:J

    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v4, v2

    iput-wide v4, v7, Lcom/facebook/ads/redexgen/X/W0;->A0J:J

    .line 62927
    :goto_2
    iput-object v11, v7, Lcom/facebook/ads/redexgen/X/W0;->A0T:Ljava/nio/ByteBuffer;

    .line 62928
    :cond_9
    iget-boolean v2, v7, Lcom/facebook/ads/redexgen/X/W0;->A0Z:Z

    if-eqz v2, :cond_a

    .line 62929
    invoke-direct {v7, v0, v1}, Lcom/facebook/ads/redexgen/X/W0;->A0Q(J)V

    .line 62930
    :goto_3
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/W0;->A0T:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_e

    .line 62931
    iput-object v8, v7, Lcom/facebook/ads/redexgen/X/W0;->A0T:Ljava/nio/ByteBuffer;

    .line 62932
    return v6

    .line 62933
    :cond_a
    iget-object v2, v7, Lcom/facebook/ads/redexgen/X/W0;->A0T:Ljava/nio/ByteBuffer;

    invoke-direct {v7, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/W0;->A0T(Ljava/nio/ByteBuffer;J)V

    goto :goto_3

    .line 62934
    :cond_b
    iget-wide v4, v7, Lcom/facebook/ads/redexgen/X/W0;->A0I:J

    iget v2, v7, Lcom/facebook/ads/redexgen/X/W0;->A05:I

    int-to-long v2, v2

    add-long/2addr v4, v2

    iput-wide v4, v7, Lcom/facebook/ads/redexgen/X/W0;->A0I:J

    goto :goto_2

    .line 62935
    :cond_c
    iget-wide v4, v7, Lcom/facebook/ads/redexgen/X/W0;->A0H:J

    .line 62936
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/W0;->A03()J

    move-result-wide v2

    invoke-direct {v7, v2, v3}, Lcom/facebook/ads/redexgen/X/W0;->A09(J)J

    move-result-wide v2

    add-long/2addr v4, v2

    .line 62937
    .local v7, "expectedPresentationTimeUs":J
    iget v2, v7, Lcom/facebook/ads/redexgen/X/W0;->A0D:I

    const/4 v12, 0x2

    if-ne v2, v6, :cond_d

    sub-long v2, v4, v0

    .line 62938
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v15

    const-wide/32 v13, 0x30d40

    sget-object v9, Lcom/facebook/ads/redexgen/X/W0;->A0s:[Ljava/lang/String;

    const/4 v2, 0x5

    aget-object v3, v9, v2

    const/4 v2, 0x4

    aget-object v9, v9, v2

    const/16 v2, 0x1f

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v9, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v3, v2, :cond_10

    sget-object v9, Lcom/facebook/ads/redexgen/X/W0;->A0s:[Ljava/lang/String;

    const-string v3, "FbKjkIwdcaMBPT2szS0OmSVwGhtfzjwX"

    const/4 v2, 0x1

    aput-object v3, v9, v2

    const-string v3, "oBeG9leFQWVgy3fJyHJ1GN1EkuPAgCHp"

    const/4 v2, 0x2

    aput-object v3, v9, v2

    cmp-long v2, v15, v13

    if-lez v2, :cond_d

    .line 62939
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v9, 0x10

    const/16 v3, 0x21

    const/16 v2, 0x1a

    invoke-static {v9, v3, v2}, Lcom/facebook/ads/redexgen/X/W0;->A0I(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/4 v9, 0x0

    const/4 v3, 0x6

    const/16 v2, 0x66

    invoke-static {v9, v3, v2}, Lcom/facebook/ads/redexgen/X/W0;->A0I(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v9, 0x8a

    const/4 v3, 0x1

    const/16 v2, 0x52

    invoke-static {v9, v3, v2}, Lcom/facebook/ads/redexgen/X/W0;->A0I(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62940
    iput v12, v7, Lcom/facebook/ads/redexgen/X/W0;->A0D:I

    .line 62941
    :cond_d
    iget v2, v7, Lcom/facebook/ads/redexgen/X/W0;->A0D:I

    if-ne v2, v12, :cond_8

    .line 62942
    iget-wide v2, v7, Lcom/facebook/ads/redexgen/X/W0;->A0H:J

    sub-long v12, v0, v4

    add-long/2addr v2, v12

    iput-wide v2, v7, Lcom/facebook/ads/redexgen/X/W0;->A0H:J

    .line 62943
    iput v6, v7, Lcom/facebook/ads/redexgen/X/W0;->A0D:I

    .line 62944
    iget-object v2, v7, Lcom/facebook/ads/redexgen/X/W0;->A0R:Lcom/facebook/ads/redexgen/X/BA;

    if-eqz v2, :cond_8

    .line 62945
    invoke-interface {v2}, Lcom/facebook/ads/redexgen/X/BA;->ABC()V

    goto/16 :goto_1

    .line 62946
    :cond_e
    iget-object v2, v7, Lcom/facebook/ads/redexgen/X/W0;->A0h:Lcom/facebook/ads/redexgen/X/BI;

    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/W0;->A04()J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/BI;->A0L(J)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 62947
    const/16 v2, 0x37

    const/16 v1, 0x1d

    const/16 v0, 0x42

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/W0;->A0I(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 62948
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/W0;->reset()V

    .line 62949
    return v6

    .line 62950
    :cond_f
    const/4 v0, 0x0

    return v0

    :cond_10
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A7Z()V
    .locals 2

    .line 62951
    iget v1, p0, Lcom/facebook/ads/redexgen/X/W0;->A0D:I

    const/4 v0, 0x1

    if-ne v1, v0, :cond_0

    .line 62952
    const/4 v0, 0x2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/W0;->A0D:I

    .line 62953
    :cond_0
    return-void
.end method

.method public final A7d()Z
    .locals 3

    .line 62954
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/W0;->A0V()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/W0;->A0h:Lcom/facebook/ads/redexgen/X/BI;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/W0;->A04()J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/BI;->A0K(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A80(I)Z
    .locals 3

    .line 62955
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Ic;->A0d(I)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 62956
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    sget v1, Lcom/facebook/ads/redexgen/X/Ic;->A02:I

    const/16 v0, 0x15

    if-lt v1, v0, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 62957
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W0;->A0g:Lcom/facebook/ads/redexgen/X/As;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/As;->A05(I)Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_1
    return v2

    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public final A81()Z
    .locals 1

    .line 62958
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/W0;->A0V()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/W0;->A0W:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/W0;->A7d()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final ACT()V
    .locals 1

    .line 62959
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/W0;->A0Y:Z

    .line 62960
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/W0;->A0V()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62961
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W0;->A0h:Lcom/facebook/ads/redexgen/X/BI;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/BI;->A0F()V

    .line 62962
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W0;->A0M:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    .line 62963
    :cond_0
    return-void
.end method

.method public final ACU()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/BB;
        }
    .end annotation

    .line 62964
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/W0;->A0W:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/W0;->A0V()Z

    move-result v0

    if-nez v0, :cond_1

    .line 62965
    :cond_0
    return-void

    .line 62966
    :cond_1
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/W0;->A0U()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 62967
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/W0;->A0h:Lcom/facebook/ads/redexgen/X/BI;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/W0;->A04()J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/BI;->A0G(J)V

    .line 62968
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W0;->A0M:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 62969
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/W0;->A03:I

    .line 62970
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/W0;->A0W:Z

    .line 62971
    :cond_2
    return-void
.end method

.method public final ACz()V
    .locals 5

    .line 62972
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/W0;->reset()V

    .line 62973
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/W0;->A0L()V

    .line 62974
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/W0;->A0o:[Lcom/facebook/ads/redexgen/X/Az;

    array-length v2, v3

    const/4 v4, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v0, v3, v1

    .line 62975
    .local v1, "audioProcessor":Lcom/facebook/ads/redexgen/X/Az;
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Az;->reset()V

    .line 62976
    .end local v1    # "audioProcessor":Lcom/facebook/ads/redexgen/X/Az;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 62977
    :cond_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/W0;->A0n:[Lcom/facebook/ads/redexgen/X/Az;

    array-length v2, v3

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_1

    aget-object v0, v3, v1

    .line 62978
    .restart local v1    # "audioProcessor":Lcom/facebook/ads/redexgen/X/Az;
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Az;->reset()V

    .line 62979
    .end local v1    # "audioProcessor":Lcom/facebook/ads/redexgen/X/Az;
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 62980
    :cond_1
    iput v4, p0, Lcom/facebook/ads/redexgen/X/W0;->A01:I

    .line 62981
    iput-boolean v4, p0, Lcom/facebook/ads/redexgen/X/W0;->A0Y:Z

    .line 62982
    return-void
.end method

.method public final ADg(Lcom/facebook/ads/redexgen/X/Ar;)V
    .locals 1

    .line 62983
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W0;->A0Q:Lcom/facebook/ads/redexgen/X/Ar;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Ar;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62984
    return-void

    .line 62985
    :cond_0
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/W0;->A0Q:Lcom/facebook/ads/redexgen/X/Ar;

    .line 62986
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/W0;->A0b:Z

    if-eqz v0, :cond_1

    .line 62987
    return-void

    .line 62988
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/W0;->reset()V

    .line 62989
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/W0;->A01:I

    .line 62990
    return-void
.end method

.method public final ADn(Lcom/facebook/ads/redexgen/X/BA;)V
    .locals 0

    .line 62991
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/W0;->A0R:Lcom/facebook/ads/redexgen/X/BA;

    .line 62992
    return-void
.end method

.method public final ADr(Lcom/facebook/ads/redexgen/X/AL;)Lcom/facebook/ads/redexgen/X/AL;
    .locals 1

    .line 62993
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/W0;->A0V()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/W0;->A0V:Z

    if-nez v0, :cond_0

    .line 62994
    sget-object v0, Lcom/facebook/ads/redexgen/X/AL;->A05:Lcom/facebook/ads/redexgen/X/AL;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/W0;->A0P:Lcom/facebook/ads/redexgen/X/AL;

    .line 62995
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W0;->A0P:Lcom/facebook/ads/redexgen/X/AL;

    return-object v0

    .line 62996
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W0;->A0O:Lcom/facebook/ads/redexgen/X/AL;

    if-eqz v0, :cond_3

    .line 62997
    .local p0, "lastSetPlaybackParameters":Lcom/facebook/ads/redexgen/X/AL;
    :goto_0
    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/AL;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 62998
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/W0;->A0V()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 62999
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/W0;->A0O:Lcom/facebook/ads/redexgen/X/AL;

    .line 63000
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W0;->A0P:Lcom/facebook/ads/redexgen/X/AL;

    return-object v0

    .line 63001
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W0;->A0j:Lcom/facebook/ads/redexgen/X/BL;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/BL;->A3O(Lcom/facebook/ads/redexgen/X/AL;)Lcom/facebook/ads/redexgen/X/AL;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/W0;->A0P:Lcom/facebook/ads/redexgen/X/AL;

    goto :goto_1

    .line 63002
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W0;->A0l:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 63003
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W0;->A0l:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/BN;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/BN;->A02(Lcom/facebook/ads/redexgen/X/BN;)Lcom/facebook/ads/redexgen/X/AL;

    move-result-object v0

    goto :goto_0

    .line 63004
    :cond_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W0;->A0P:Lcom/facebook/ads/redexgen/X/AL;

    goto :goto_0
.end method

.method public final pause()V
    .locals 4

    .line 63005
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/W0;->A0Y:Z

    .line 63006
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/W0;->A0V()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W0;->A0h:Lcom/facebook/ads/redexgen/X/BI;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/BI;->A0J()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63007
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/W0;->A0M:Landroid/media/AudioTrack;

    sget-object v2, Lcom/facebook/ads/redexgen/X/W0;->A0s:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v2, v2, v0

    const/16 v0, 0x1f

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/W0;->A0s:[Ljava/lang/String;

    const-string v1, "FfMuQ26dtjbmcqbBnjKZSM1KrRCo3tW2"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "c8IjgDb9r5WznHl4Hq0LTg4hSS5EP44d"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-virtual {v3}, Landroid/media/AudioTrack;->pause()V

    .line 63008
    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final reset()V
    .locals 5

    .line 63009
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/W0;->A0V()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 63010
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/facebook/ads/redexgen/X/W0;->A0J:J

    .line 63011
    iput-wide v1, p0, Lcom/facebook/ads/redexgen/X/W0;->A0I:J

    .line 63012
    iput-wide v1, p0, Lcom/facebook/ads/redexgen/X/W0;->A0L:J

    .line 63013
    iput-wide v1, p0, Lcom/facebook/ads/redexgen/X/W0;->A0K:J

    .line 63014
    const/4 v4, 0x0

    iput v4, p0, Lcom/facebook/ads/redexgen/X/W0;->A05:I

    .line 63015
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W0;->A0O:Lcom/facebook/ads/redexgen/X/AL;

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    .line 63016
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/W0;->A0P:Lcom/facebook/ads/redexgen/X/AL;

    .line 63017
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/W0;->A0O:Lcom/facebook/ads/redexgen/X/AL;

    .line 63018
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W0;->A0l:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 63019
    iput-wide v1, p0, Lcom/facebook/ads/redexgen/X/W0;->A0F:J

    .line 63020
    iput-wide v1, p0, Lcom/facebook/ads/redexgen/X/W0;->A0G:J

    .line 63021
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/W0;->A0T:Ljava/nio/ByteBuffer;

    .line 63022
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/W0;->A0U:Ljava/nio/ByteBuffer;

    .line 63023
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/W0;->A0J()V

    .line 63024
    iput-boolean v4, p0, Lcom/facebook/ads/redexgen/X/W0;->A0W:Z

    .line 63025
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/W0;->A04:I

    .line 63026
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/W0;->A0S:Ljava/nio/ByteBuffer;

    .line 63027
    iput v4, p0, Lcom/facebook/ads/redexgen/X/W0;->A03:I

    .line 63028
    iput v4, p0, Lcom/facebook/ads/redexgen/X/W0;->A0D:I

    .line 63029
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W0;->A0h:Lcom/facebook/ads/redexgen/X/BI;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/BI;->A0I()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63030
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W0;->A0M:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    .line 63031
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/W0;->A0M:Landroid/media/AudioTrack;

    .line 63032
    .local p0, "toRelease":Landroid/media/AudioTrack;
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/W0;->A0M:Landroid/media/AudioTrack;

    .line 63033
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W0;->A0h:Lcom/facebook/ads/redexgen/X/BI;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/BI;->A0E()V

    .line 63034
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W0;->A0f:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 63035
    new-instance v0, Lcom/facebook/ads/redexgen/X/BJ;

    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/redexgen/X/BJ;-><init>(Lcom/facebook/ads/redexgen/X/W0;Landroid/media/AudioTrack;)V

    .line 63036
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/BJ;->start()V

    .line 63037
    .end local p0    # "toRelease":Landroid/media/AudioTrack;
    :cond_2
    return-void

    .line 63038
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W0;->A0l:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 63039
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W0;->A0l:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/BN;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/BN;->A02(Lcom/facebook/ads/redexgen/X/BN;)Lcom/facebook/ads/redexgen/X/AL;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/W0;->A0P:Lcom/facebook/ads/redexgen/X/AL;

    goto :goto_0
.end method

.method public final setVolume(F)V
    .locals 1

    .line 63040
    iget v0, p0, Lcom/facebook/ads/redexgen/X/W0;->A00:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 63041
    iput p1, p0, Lcom/facebook/ads/redexgen/X/W0;->A00:F

    .line 63042
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/W0;->A0M()V

    .line 63043
    :cond_0
    return-void
.end method
