.class public final Lcom/facebook/ads/redexgen/X/YQ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/BC;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/YP;,
        Lcom/facebook/ads/redexgen/X/BN;,
        Lcom/facebook/ads/internal/exoplayer2/audio/DefaultAudioSink$StartMediaTimeState;,
        Lcom/facebook/ads/redexgen/X/YO;,
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

.field public final A0i:Lcom/facebook/ads/redexgen/X/YN;

.field public final A0j:Lcom/facebook/ads/redexgen/X/BL;

.field public final A0k:Lcom/facebook/ads/redexgen/X/YX;

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

    .line 59662
    invoke-static {}, Lcom/facebook/ads/redexgen/X/YQ;->A0P()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/YQ;->A0O()V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/facebook/ads/redexgen/X/YQ;->A0p:Z

    .line 59663
    sput-boolean v0, Lcom/facebook/ads/redexgen/X/YQ;->A0q:Z

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/As;Lcom/facebook/ads/redexgen/X/BL;Z)V
    .locals 6
    .param p1    # Lcom/facebook/ads/redexgen/X/As;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 59664
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59665
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0g:Lcom/facebook/ads/redexgen/X/As;

    .line 59666
    invoke-static {p2}, Lcom/facebook/ads/redexgen/X/Hx;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/BL;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0j:Lcom/facebook/ads/redexgen/X/BL;

    .line 59667
    iput-boolean p3, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0m:Z

    .line 59668
    const/4 v5, 0x1

    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0, v5}, Landroid/os/ConditionVariable;-><init>(Z)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0f:Landroid/os/ConditionVariable;

    .line 59669
    const/4 v0, 0x0

    new-instance v1, Lcom/facebook/ads/redexgen/X/YP;

    invoke-direct {v1, p0, v0}, Lcom/facebook/ads/redexgen/X/YP;-><init>(Lcom/facebook/ads/redexgen/X/YQ;Lcom/facebook/ads/redexgen/X/BJ;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/BI;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/BI;-><init>(Lcom/facebook/ads/redexgen/X/BG;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0h:Lcom/facebook/ads/redexgen/X/BI;

    .line 59670
    new-instance v0, Lcom/facebook/ads/redexgen/X/YN;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/YN;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0i:Lcom/facebook/ads/redexgen/X/YN;

    .line 59671
    new-instance v0, Lcom/facebook/ads/redexgen/X/YX;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/YX;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0k:Lcom/facebook/ads/redexgen/X/YX;

    .line 59672
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 59673
    .local p0, "toIntPcmAudioProcessors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/exoplayer2/audio/AudioProcessor;>;"
    const/4 v0, 0x3

    new-array v3, v0, [Lcom/facebook/ads/redexgen/X/Az;

    new-instance v0, Lcom/facebook/ads/redexgen/X/YT;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/YT;-><init>()V

    const/4 v2, 0x0

    aput-object v0, v3, v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0i:Lcom/facebook/ads/redexgen/X/YN;

    aput-object v0, v3, v5

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0k:Lcom/facebook/ads/redexgen/X/YX;

    const/4 v0, 0x2

    aput-object v1, v3, v0

    invoke-static {v4, v3}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 59674
    invoke-interface {p2}, Lcom/facebook/ads/redexgen/X/BL;->A5e()[Lcom/facebook/ads/redexgen/X/Az;

    move-result-object v0

    invoke-static {v4, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 59675
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/facebook/ads/redexgen/X/Az;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/ads/redexgen/X/Az;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0o:[Lcom/facebook/ads/redexgen/X/Az;

    .line 59676
    new-array v1, v5, [Lcom/facebook/ads/redexgen/X/Az;

    new-instance v0, Lcom/facebook/ads/redexgen/X/YR;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/YR;-><init>()V

    aput-object v0, v1, v2

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0n:[Lcom/facebook/ads/redexgen/X/Az;

    .line 59677
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/facebook/ads/redexgen/X/YQ;->A00:F

    .line 59678
    iput v2, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0D:I

    .line 59679
    sget-object v0, Lcom/facebook/ads/redexgen/X/Ar;->A04:Lcom/facebook/ads/redexgen/X/Ar;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0Q:Lcom/facebook/ads/redexgen/X/Ar;

    .line 59680
    iput v2, p0, Lcom/facebook/ads/redexgen/X/YQ;->A01:I

    .line 59681
    sget-object v0, Lcom/facebook/ads/redexgen/X/AL;->A04:Lcom/facebook/ads/redexgen/X/AL;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0P:Lcom/facebook/ads/redexgen/X/AL;

    .line 59682
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/YQ;->A04:I

    .line 59683
    new-array v0, v2, [Lcom/facebook/ads/redexgen/X/Az;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0d:[Lcom/facebook/ads/redexgen/X/Az;

    .line 59684
    new-array v0, v2, [Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0e:[Ljava/nio/ByteBuffer;

    .line 59685
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0l:Ljava/util/ArrayDeque;

    .line 59686
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/As;[Lcom/facebook/ads/redexgen/X/Az;)V
    .locals 1
    .param p1    # Lcom/facebook/ads/redexgen/X/As;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 59687
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/ads/redexgen/X/YQ;-><init>(Lcom/facebook/ads/redexgen/X/As;[Lcom/facebook/ads/redexgen/X/Az;Z)V

    .line 59688
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/As;[Lcom/facebook/ads/redexgen/X/Az;Z)V
    .locals 1
    .param p1    # Lcom/facebook/ads/redexgen/X/As;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 59689
    new-instance v0, Lcom/facebook/ads/redexgen/X/YO;

    invoke-direct {v0, p2}, Lcom/facebook/ads/redexgen/X/YO;-><init>([Lcom/facebook/ads/redexgen/X/Az;)V

    invoke-direct {p0, p1, v0, p3}, Lcom/facebook/ads/redexgen/X/YQ;-><init>(Lcom/facebook/ads/redexgen/X/As;Lcom/facebook/ads/redexgen/X/BL;Z)V

    .line 59690
    return-void
.end method

.method public static A00(ILjava/nio/ByteBuffer;)I
    .locals 4

    .line 59691
    const/4 v0, 0x7

    if-eq p0, v0, :cond_0

    const/16 v0, 0x8

    if-ne p0, v0, :cond_1

    .line 59692
    :cond_0
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/BP;->A00(Ljava/nio/ByteBuffer;)I

    move-result v0

    return v0

    .line 59693
    :cond_1
    const/4 v0, 0x5

    if-ne p0, v0, :cond_2

    .line 59694
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Ao;->A00()I

    move-result v0

    return v0

    .line 59695
    :cond_2
    const/4 v0, 0x6

    if-ne p0, v0, :cond_3

    .line 59696
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Ao;->A03(Ljava/nio/ByteBuffer;)I

    move-result v0

    return v0

    .line 59697
    :cond_3
    const/16 v0, 0xe

    if-ne p0, v0, :cond_6

    .line 59698
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Ao;->A02(Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 59699
    .local p0, "syncframeOffset":I
    const/4 v0, -0x1

    if-ne v1, v0, :cond_4

    .line 59700
    const/4 v0, 0x0

    .line 59701
    :goto_0
    return v0

    .line 59702
    :cond_4
    invoke-static {p1, v1}, Lcom/facebook/ads/redexgen/X/Ao;->A04(Ljava/nio/ByteBuffer;I)I

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/YQ;->A0s:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v2, v2, v0

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_5

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_5
    sget-object v2, Lcom/facebook/ads/redexgen/X/YQ;->A0s:[Ljava/lang/String;

    const-string v1, "Dqt88CMr8vwwAc3fZIJcRVt2XyhD8Cl"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    mul-int/lit8 v0, v3, 0x10

    goto :goto_0

    .line 59703
    .end local p0    # "syncframeOffset":I
    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x54

    const/16 v1, 0x1b

    const/16 v0, 0x78

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/YQ;->A0I(III)Ljava/lang/String;

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

    .line 59704
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

    .line 59705
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0S:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    .line 59706
    const/16 v0, 0x10

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0S:Ljava/nio/ByteBuffer;

    .line 59707
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0S:Ljava/nio/ByteBuffer;

    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 59708
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0S:Ljava/nio/ByteBuffer;

    const v0, 0x55550001

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 59709
    :cond_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/YQ;->A03:I

    const/4 v3, 0x0

    if-nez v0, :cond_1

    .line 59710
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0S:Ljava/nio/ByteBuffer;

    const/4 v0, 0x4

    invoke-virtual {v1, v0, p3}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 59711
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0S:Ljava/nio/ByteBuffer;

    const/16 v2, 0x8

    const-wide/16 v0, 0x3e8

    mul-long/2addr v0, p4

    invoke-virtual {v4, v2, v0, v1}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 59712
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0S:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 59713
    iput p3, p0, Lcom/facebook/ads/redexgen/X/YQ;->A03:I

    .line 59714
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0S:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    .line 59715
    .local p0, "avSyncHeaderBytesRemaining":I
    if-lez v2, :cond_3

    .line 59716
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0S:Ljava/nio/ByteBuffer;

    const/4 v0, 0x1

    invoke-virtual {p1, v1, v2, v0}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result v0

    .line 59717
    .local p2, "result":I
    if-gez v0, :cond_2

    .line 59718
    iput v3, p0, Lcom/facebook/ads/redexgen/X/YQ;->A03:I

    .line 59719
    return v0

    .line 59720
    :cond_2
    if-ge v0, v2, :cond_3

    .line 59721
    return v3

    .line 59722
    .end local p2    # "result":I
    :cond_3
    invoke-static {p1, p2, p3}, Lcom/facebook/ads/redexgen/X/YQ;->A01(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;I)I

    move-result v4

    sget-object v2, Lcom/facebook/ads/redexgen/X/YQ;->A0s:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/16 v0, 0x9

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_5

    .line 59723
    .restart local p2    # "result":I
    sget-object v2, Lcom/facebook/ads/redexgen/X/YQ;->A0s:[Ljava/lang/String;

    const-string v1, "EGdI4VK4aN1uiBzzsuaeFo7lQ03tB7Gh"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "vodoofn0TiYpLi76FRuwTlDh379TFVaK"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-gez v4, :cond_4

    .line 59724
    iput v3, p0, Lcom/facebook/ads/redexgen/X/YQ;->A03:I

    .line 59725
    return v4

    .line 59726
    :cond_4
    iget v0, p0, Lcom/facebook/ads/redexgen/X/YQ;->A03:I

    sub-int/2addr v0, v4

    iput v0, p0, Lcom/facebook/ads/redexgen/X/YQ;->A03:I

    .line 59727
    return v4

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A03()J
    .locals 4

    .line 59728
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0X:Z

    if-eqz v0, :cond_0

    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0J:J

    iget v0, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0B:I

    int-to-long v0, v0

    div-long/2addr v2, v0

    :goto_0
    return-wide v2

    :cond_0
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0I:J

    goto :goto_0
.end method

.method private A04()J
    .locals 4

    .line 59729
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0X:Z

    if-eqz v0, :cond_0

    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0L:J

    iget v0, p0, Lcom/facebook/ads/redexgen/X/YQ;->A09:I

    int-to-long v0, v0

    div-long/2addr v2, v0

    :goto_0
    return-wide v2

    :cond_0
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0K:J

    goto :goto_0
.end method

.method private A05(J)J
    .locals 2

    .line 59730
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0j:Lcom/facebook/ads/redexgen/X/BL;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/BL;->A7E()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/YQ;->A08(J)J

    move-result-wide v0

    add-long/2addr v0, p1

    return-wide v0
.end method

.method private A06(J)J
    .locals 5

    .line 59731
    const/4 v2, 0x0

    .line 59732
    .local p0, "checkpoint":Lcom/facebook/ads/redexgen/X/BN;
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0l:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0l:Ljava/util/ArrayDeque;

    .line 59733
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/BN;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/BN;->A00(Lcom/facebook/ads/redexgen/X/BN;)J

    move-result-wide v3

    cmp-long v0, p1, v3

    if-ltz v0, :cond_0

    .line 59734
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0l:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/BN;

    goto :goto_0

    .line 59735
    :cond_0
    if-eqz v2, :cond_1

    .line 59736
    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/BN;->A02(Lcom/facebook/ads/redexgen/X/BN;)Lcom/facebook/ads/redexgen/X/AL;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0P:Lcom/facebook/ads/redexgen/X/AL;

    .line 59737
    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/BN;->A00(Lcom/facebook/ads/redexgen/X/BN;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0G:J

    .line 59738
    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/BN;->A01(Lcom/facebook/ads/redexgen/X/BN;)J

    move-result-wide v2

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0H:J

    sub-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0F:J

    .line 59739
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0P:Lcom/facebook/ads/redexgen/X/AL;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/AL;->A01:F

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, v1, v0

    if-nez v0, :cond_2

    .line 59740
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0F:J

    add-long/2addr v2, p1

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0G:J

    sub-long/2addr v2, v0

    return-wide v2

    .line 59741
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0l:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 59742
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0F:J

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0j:Lcom/facebook/ads/redexgen/X/BL;

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0G:J

    sub-long/2addr p1, v0

    .line 59743
    invoke-interface {v2, p1, p2}, Lcom/facebook/ads/redexgen/X/BL;->A6m(J)J

    move-result-wide v0

    add-long/2addr v3, v0

    .line 59744
    return-wide v3

    .line 59745
    :cond_3
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0F:J

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0G:J

    sub-long/2addr p1, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0P:Lcom/facebook/ads/redexgen/X/AL;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/AL;->A01:F

    .line 59746
    invoke-static {p1, p2, v0}, Lcom/facebook/ads/redexgen/X/Ic;->A0C(JF)J

    move-result-wide v0

    add-long/2addr v2, v0

    .line 59747
    return-wide v2
.end method

.method private A07(J)J
    .locals 4

    .line 59748
    iget v0, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0A:I

    int-to-long v2, v0

    mul-long/2addr v2, p1

    const-wide/32 v0, 0xf4240

    div-long/2addr v2, v0

    return-wide v2
.end method

.method private A08(J)J
    .locals 4

    .line 59749
    const-wide/32 v2, 0xf4240

    mul-long/2addr v2, p1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0A:I

    int-to-long v0, v0

    div-long/2addr v2, v0

    return-wide v2
.end method

.method private A09(J)J
    .locals 4

    .line 59750
    const-wide/32 v2, 0xf4240

    mul-long/2addr v2, p1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/YQ;->A06:I

    int-to-long v0, v0

    div-long/2addr v2, v0

    return-wide v2
.end method

.method public static synthetic A0A(Lcom/facebook/ads/redexgen/X/YQ;)J
    .locals 1

    .line 59751
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0E:J

    return-wide v0
.end method

.method public static synthetic A0B(Lcom/facebook/ads/redexgen/X/YQ;)J
    .locals 1

    .line 59752
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/YQ;->A03()J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic A0C(Lcom/facebook/ads/redexgen/X/YQ;)J
    .locals 1

    .line 59753
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/YQ;->A04()J

    move-result-wide v0

    return-wide v0
.end method

.method private A0D()Landroid/media/AudioTrack;
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 59754
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0b:Z

    if-eqz v0, :cond_1

    .line 59755
    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v0, 0x3

    .line 59756
    invoke-virtual {v1, v0}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    const/16 v0, 0x10

    .line 59757
    invoke-virtual {v1, v0}, Landroid/media/AudioAttributes$Builder;->setFlags(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    const/4 v0, 0x1

    .line 59758
    invoke-virtual {v1, v0}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 59759
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v2

    .line 59760
    .local p0, "attributes":Landroid/media/AudioAttributes;
    .restart local p0    # "attributes":Landroid/media/AudioAttributes;
    :goto_0
    new-instance v1, Landroid/media/AudioFormat$Builder;

    invoke-direct {v1}, Landroid/media/AudioFormat$Builder;-><init>()V

    iget v0, p0, Lcom/facebook/ads/redexgen/X/YQ;->A07:I

    .line 59761
    invoke-virtual {v1, v0}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/YQ;->A08:I

    .line 59762
    invoke-virtual {v1, v0}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0A:I

    .line 59763
    invoke-virtual {v1, v0}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    .line 59764
    invoke-virtual {v0}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v3

    .line 59765
    .local v0, "format":Landroid/media/AudioFormat;
    iget v6, p0, Lcom/facebook/ads/redexgen/X/YQ;->A01:I

    if-eqz v6, :cond_0

    .line 59766
    .local v1, "audioSessionId":I
    :goto_1
    new-instance v1, Landroid/media/AudioTrack;

    iget v4, p0, Lcom/facebook/ads/redexgen/X/YQ;->A02:I

    const/4 v5, 0x1

    invoke-direct/range {v1 .. v6}, Landroid/media/AudioTrack;-><init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;III)V

    return-object v1

    .line 59767
    :cond_0
    const/4 v6, 0x0

    goto :goto_1

    .line 59768
    .end local p0    # "attributes":Landroid/media/AudioAttributes;
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0Q:Lcom/facebook/ads/redexgen/X/Ar;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ar;->A00()Landroid/media/AudioAttributes;

    move-result-object v2

    goto :goto_0
.end method

.method private A0E()Landroid/media/AudioTrack;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/B9;
        }
    .end annotation

    .line 59769
    sget v1, Lcom/facebook/ads/redexgen/X/Ic;->A02:I

    const/16 v0, 0x15

    if-lt v1, v0, :cond_0

    .line 59770
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/YQ;->A0D()Landroid/media/AudioTrack;

    move-result-object v2

    .line 59771
    .local p0, "audioTrack":Landroid/media/AudioTrack;
    .local p0, "audioTrack":Landroid/media/AudioTrack;
    :goto_0
    invoke-virtual {v2}, Landroid/media/AudioTrack;->getState()I

    move-result v4

    .line 59772
    .local v1, "state":I
    const/4 v0, 0x1

    if-ne v4, v0, :cond_2

    .line 59773
    return-object v2

    .line 59774
    .end local p0    # "audioTrack":Landroid/media/AudioTrack;
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0Q:Lcom/facebook/ads/redexgen/X/Ar;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Ar;->A03:I

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ic;->A03(I)I

    move-result v3

    .line 59775
    .local p0, "streamType":I
    iget v9, p0, Lcom/facebook/ads/redexgen/X/YQ;->A01:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/YQ;->A0s:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/16 v0, 0x9

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/YQ;->A0s:[Ljava/lang/String;

    const-string v1, "uEqtixTroQ47jvhgXsjygxp317gkhCVZ"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "MeWTB72qJhBmjPGmSmxXQDSK14yx53vJ"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-nez v9, :cond_1

    .line 59776
    new-instance v2, Landroid/media/AudioTrack;

    iget v4, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0A:I

    iget v5, p0, Lcom/facebook/ads/redexgen/X/YQ;->A07:I

    iget v6, p0, Lcom/facebook/ads/redexgen/X/YQ;->A08:I

    iget v7, p0, Lcom/facebook/ads/redexgen/X/YQ;->A02:I

    const/4 v8, 0x1

    invoke-direct/range {v2 .. v8}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    .local v1, "audioTrack":Landroid/media/AudioTrack;
    goto :goto_0

    .line 59777
    .end local v1    # "audioTrack":Landroid/media/AudioTrack;
    :cond_1
    new-instance v2, Landroid/media/AudioTrack;

    iget v4, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0A:I

    iget v5, p0, Lcom/facebook/ads/redexgen/X/YQ;->A07:I

    iget v6, p0, Lcom/facebook/ads/redexgen/X/YQ;->A08:I

    iget v7, p0, Lcom/facebook/ads/redexgen/X/YQ;->A02:I

    const/4 v8, 0x1

    invoke-direct/range {v2 .. v9}, Landroid/media/AudioTrack;-><init>(IIIIIII)V

    goto :goto_0

    .line 59778
    :cond_2
    :try_start_0
    invoke-virtual {v2}, Landroid/media/AudioTrack;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59779
    :catch_0
    iget v3, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0A:I

    iget v2, p0, Lcom/facebook/ads/redexgen/X/YQ;->A07:I

    iget v1, p0, Lcom/facebook/ads/redexgen/X/YQ;->A02:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/B9;

    invoke-direct {v0, v4, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/B9;-><init>(IIII)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A0F(I)Landroid/media/AudioTrack;
    .locals 8

    .line 59780
    const/16 v2, 0xfa0

    .line 59781
    .local v6, "sampleRate":I
    const/4 v3, 0x4

    .line 59782
    .local v0, "channelConfig":I
    const/4 v4, 0x2

    .line 59783
    .local v2, "encoding":I
    const/4 v5, 0x2

    .line 59784
    .local v3, "bufferSize":I
    new-instance v0, Landroid/media/AudioTrack;

    const/4 v1, 0x3

    const/4 v6, 0x0

    move v7, p1

    invoke-direct/range {v0 .. v7}, Landroid/media/AudioTrack;-><init>(IIIIIII)V

    return-object v0
.end method

.method public static synthetic A0G(Lcom/facebook/ads/redexgen/X/YQ;)Landroid/os/ConditionVariable;
    .locals 0

    .line 59785
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0f:Landroid/os/ConditionVariable;

    return-object p0
.end method

.method public static synthetic A0H(Lcom/facebook/ads/redexgen/X/YQ;)Lcom/facebook/ads/redexgen/X/BA;
    .locals 0

    .line 59786
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0R:Lcom/facebook/ads/redexgen/X/BA;

    return-object p0
.end method

.method public static A0I(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/YQ;->A0r:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x4b

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
    .locals 3

    .line 59787
    const/4 v2, 0x0

    .local p0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0d:[Lcom/facebook/ads/redexgen/X/Az;

    array-length v0, v1

    if-ge v2, v0, :cond_0

    .line 59788
    aget-object v0, v1, v2

    .line 59789
    .local v2, "audioProcessor":Lcom/facebook/ads/redexgen/X/Az;
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Az;->flush()V

    .line 59790
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0e:[Ljava/nio/ByteBuffer;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Az;->A6p()Ljava/nio/ByteBuffer;

    move-result-object v0

    aput-object v0, v1, v2

    .line 59791
    .end local v2    # "audioProcessor":Lcom/facebook/ads/redexgen/X/Az;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 59792
    .end local p0    # "i":I
    :cond_0
    return-void
.end method

.method private A0K()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/B9;
        }
    .end annotation

    .line 59793
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0f:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 59794
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/YQ;->A0E()Landroid/media/AudioTrack;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0M:Landroid/media/AudioTrack;

    .line 59795
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0M:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getAudioSessionId()I

    move-result v3

    .line 59796
    .local p0, "audioSessionId":I
    sget-boolean v0, Lcom/facebook/ads/redexgen/X/YQ;->A0p:Z

    if-eqz v0, :cond_1

    .line 59797
    sget v1, Lcom/facebook/ads/redexgen/X/Ic;->A02:I

    const/16 v0, 0x15

    if-ge v1, v0, :cond_1

    .line 59798
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0N:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    .line 59799
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getAudioSessionId()I

    move-result v4

    sget-object v2, Lcom/facebook/ads/redexgen/X/YQ;->A0s:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/16 v0, 0x9

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/YQ;->A0s:[Ljava/lang/String;

    const-string v1, "BXErtyYgJXamt9yde7CeLqS26Q9j6Dt3"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-eq v3, v4, :cond_0

    .line 59800
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/YQ;->A0L()V

    .line 59801
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0N:Landroid/media/AudioTrack;

    if-nez v0, :cond_1

    .line 59802
    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/YQ;->A0F(I)Landroid/media/AudioTrack;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0N:Landroid/media/AudioTrack;

    .line 59803
    :cond_1
    iget v0, p0, Lcom/facebook/ads/redexgen/X/YQ;->A01:I

    if-eq v0, v3, :cond_2

    .line 59804
    iput v3, p0, Lcom/facebook/ads/redexgen/X/YQ;->A01:I

    .line 59805
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0R:Lcom/facebook/ads/redexgen/X/BA;

    if-eqz v0, :cond_2

    .line 59806
    invoke-interface {v0, v3}, Lcom/facebook/ads/redexgen/X/BA;->A9W(I)V

    .line 59807
    :cond_2
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0V:Z

    if-eqz v0, :cond_3

    .line 59808
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0j:Lcom/facebook/ads/redexgen/X/BL;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0P:Lcom/facebook/ads/redexgen/X/AL;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/BL;->A3S(Lcom/facebook/ads/redexgen/X/AL;)Lcom/facebook/ads/redexgen/X/AL;

    move-result-object v0

    .line 59809
    :goto_0
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0P:Lcom/facebook/ads/redexgen/X/AL;

    .line 59810
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/YQ;->A0N()V

    .line 59811
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0h:Lcom/facebook/ads/redexgen/X/BI;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0M:Landroid/media/AudioTrack;

    iget v2, p0, Lcom/facebook/ads/redexgen/X/YQ;->A08:I

    iget v1, p0, Lcom/facebook/ads/redexgen/X/YQ;->A09:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/YQ;->A02:I

    invoke-virtual {v4, v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/BI;->A0H(Landroid/media/AudioTrack;III)V

    .line 59812
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/YQ;->A0M()V

    .line 59813
    return-void

    .line 59814
    :cond_3
    sget-object v0, Lcom/facebook/ads/redexgen/X/AL;->A04:Lcom/facebook/ads/redexgen/X/AL;

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A0L()V
    .locals 2

    .line 59815
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0N:Landroid/media/AudioTrack;

    if-nez v0, :cond_0

    .line 59816
    return-void

    .line 59817
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0N:Landroid/media/AudioTrack;

    .line 59818
    .local p0, "toRelease":Landroid/media/AudioTrack;
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0N:Landroid/media/AudioTrack;

    .line 59819
    new-instance v0, Lcom/facebook/ads/redexgen/X/BK;

    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/redexgen/X/BK;-><init>(Lcom/facebook/ads/redexgen/X/YQ;Landroid/media/AudioTrack;)V

    .line 59820
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/BK;->start()V

    .line 59821
    return-void
.end method

.method private A0M()V
    .locals 5

    .line 59822
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/YQ;->A0V()Z

    move-result v0

    if-nez v0, :cond_0

    .line 59823
    :goto_0
    return-void

    .line 59824
    :cond_0
    sget v1, Lcom/facebook/ads/redexgen/X/Ic;->A02:I

    const/16 v0, 0x15

    if-lt v1, v0, :cond_2

    .line 59825
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0M:Landroid/media/AudioTrack;

    iget v3, p0, Lcom/facebook/ads/redexgen/X/YQ;->A00:F

    sget-object v1, Lcom/facebook/ads/redexgen/X/YQ;->A0s:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1f

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/YQ;->A0s:[Ljava/lang/String;

    const-string v1, "8NL9PZoDB9Ch1WQJQaXfXaVAIVHPoweZ"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-static {v4, v3}, Lcom/facebook/ads/redexgen/X/YQ;->A0R(Landroid/media/AudioTrack;F)V

    goto :goto_0

    .line 59826
    :cond_2
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0M:Landroid/media/AudioTrack;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/YQ;->A00:F

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/YQ;->A0S(Landroid/media/AudioTrack;F)V

    goto :goto_0
.end method

.method private A0N()V
    .locals 6

    .line 59827
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 59828
    .local p0, "newAudioProcessors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/exoplayer2/audio/AudioProcessor;>;"
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/YQ;->A0W()[Lcom/facebook/ads/redexgen/X/Az;

    move-result-object v4

    array-length v3, v4

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v4, v2

    .line 59829
    .local v2, "audioProcessor":Lcom/facebook/ads/redexgen/X/Az;
    invoke-interface {v1}, Lcom/facebook/ads/redexgen/X/Az;->A7v()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59830
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59831
    .end local v2    # "audioProcessor":Lcom/facebook/ads/redexgen/X/Az;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 59832
    :cond_0
    invoke-interface {v1}, Lcom/facebook/ads/redexgen/X/Az;->flush()V

    goto :goto_1

    .line 59833
    :cond_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 59834
    .local v5, "count":I
    new-array v3, v4, [Lcom/facebook/ads/redexgen/X/Az;

    sget-object v1, Lcom/facebook/ads/redexgen/X/YQ;->A0s:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1f

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/YQ;->A0s:[Ljava/lang/String;

    const-string v1, "YRdEguSYP1wOqJMzR8T0sEbN9ru3F1GF"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "jCd7Ib2fALhdhS4xedSLoMHgXMVbMQ2Z"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/ads/redexgen/X/Az;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0d:[Lcom/facebook/ads/redexgen/X/Az;

    .line 59835
    new-array v0, v4, [Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0e:[Ljava/nio/ByteBuffer;

    .line 59836
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/YQ;->A0J()V

    .line 59837
    return-void
.end method

.method public static A0O()V
    .locals 1

    const/16 v0, 0x95

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/YQ;->A0r:[B

    return-void

    :array_0
    .array-data 1
        0x44t
        0x48t
        0xft
        0x7t
        0x1ct
        0x48t
        0x5et
        0x6at
        0x7bt
        0x76t
        0x70t
        0x4bt
        0x6dt
        0x7et
        0x7ct
        0x74t
        0x4et
        0x63t
        0x79t
        0x69t
        0x65t
        0x64t
        0x7et
        0x63t
        0x64t
        0x7ft
        0x63t
        0x7et
        0x73t
        0x2at
        0x6et
        0x6ft
        0x7et
        0x6ft
        0x69t
        0x7et
        0x6ft
        0x6et
        0x2at
        0x51t
        0x6ft
        0x72t
        0x7at
        0x6ft
        0x69t
        0x7et
        0x6ft
        0x6et
        0x2at
        0xet
        0x16t
        0x9t
        0x4t
        0x9t
        0x1t
        0x8t
        0x3ft
        0x29t
        0x3ft
        0x2et
        0x2et
        0x33t
        0x34t
        0x3dt
        0x7at
        0x29t
        0x2et
        0x3bt
        0x36t
        0x36t
        0x3ft
        0x3et
        0x7at
        0x3bt
        0x2ft
        0x3et
        0x33t
        0x35t
        0x7at
        0x2et
        0x28t
        0x3bt
        0x39t
        0x31t
        0x66t
        0x5dt
        0x56t
        0x4bt
        0x43t
        0x56t
        0x50t
        0x47t
        0x56t
        0x57t
        0x13t
        0x52t
        0x46t
        0x57t
        0x5at
        0x5ct
        0x13t
        0x56t
        0x5dt
        0x50t
        0x5ct
        0x57t
        0x5at
        0x5dt
        0x54t
        0x9t
        0x13t
        0x60t
        0x5bt
        0x46t
        0x40t
        0x45t
        0x45t
        0x5at
        0x47t
        0x41t
        0x50t
        0x51t
        0x15t
        0x56t
        0x5dt
        0x54t
        0x5bt
        0x5bt
        0x50t
        0x59t
        0x15t
        0x56t
        0x5at
        0x40t
        0x5bt
        0x41t
        0xft
        0x15t
        0x65t
        0xat
        0x3t
        0x1ft
        0x18t
        0x9t
        0x1et
        0x3bt
        0x28t
        0x3at
        0x28t
    .end array-data
.end method

.method public static A0P()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "5Nyv0guRYVcKSAuezGPcUxg9vJAOBGI4"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "vvUbbcGamjazB6O7sNKlV2Due1EGN4h1"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "bCdq7Y65nqLa7O1PpyZ9UmfFfim1tIKH"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "XSMaSGyqY735xp0uf5mX1ioiT5AfU73"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "LbuXdG3g6wlkS0wgubrQcd1EFcxL1vaW"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "BfdFnDj7fdcaZnnCNK5XWBslzsEwyMTC"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "82TROEAjyC6M053XP3PwF3IgkAnZSWb8"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "TH4S9e3rxD8emXavfeipeAwkF3kWLOvQ"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/YQ;->A0s:[Ljava/lang/String;

    return-void
.end method

.method private A0Q(J)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/BB;
        }
    .end annotation

    .line 59838
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0d:[Lcom/facebook/ads/redexgen/X/Az;

    array-length v4, v0

    .line 59839
    .local p0, "count":I
    move v3, v4

    .line 59840
    .local p1, "index":I
    :goto_0
    if-ltz v3, :cond_5

    .line 59841
    if-lez v3, :cond_3

    .line 59842
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0e:[Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v3, -0x1

    aget-object v2, v1, v0

    .line 59843
    .local v2, "input":Ljava/nio/ByteBuffer;
    :goto_1
    if-ne v3, v4, :cond_2

    .line 59844
    invoke-direct {p0, v2, p1, p2}, Lcom/facebook/ads/redexgen/X/YQ;->A0T(Ljava/nio/ByteBuffer;J)V

    .line 59845
    .end local v0
    .end local v4
    :cond_0
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 59846
    return-void

    .line 59847
    .end local v2    # "input":Ljava/nio/ByteBuffer;
    :cond_1
    add-int/lit8 v3, v3, -0x1

    .line 59848
    goto :goto_0

    .line 59849
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0d:[Lcom/facebook/ads/redexgen/X/Az;

    aget-object v0, v0, v3

    .line 59850
    .local v0, "audioProcessor":Lcom/facebook/ads/redexgen/X/Az;
    invoke-interface {v0, v2}, Lcom/facebook/ads/redexgen/X/Az;->ACi(Ljava/nio/ByteBuffer;)V

    .line 59851
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Az;->A6p()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 59852
    .local v4, "output":Ljava/nio/ByteBuffer;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0e:[Ljava/nio/ByteBuffer;

    aput-object v1, v0, v3

    .line 59853
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59854
    add-int/lit8 v3, v3, 0x1

    .line 59855
    goto :goto_0

    .line 59856
    :cond_3
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0T:Ljava/nio/ByteBuffer;

    if-eqz v2, :cond_4

    goto :goto_1

    :cond_4
    sget-object v2, Lcom/facebook/ads/redexgen/X/Az;->A00:Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 59857
    :cond_5
    return-void
.end method

.method public static A0R(Landroid/media/AudioTrack;F)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 59858
    invoke-virtual {p0, p1}, Landroid/media/AudioTrack;->setVolume(F)I

    .line 59859
    return-void
.end method

.method public static A0S(Landroid/media/AudioTrack;F)V
    .locals 0

    .line 59860
    invoke-virtual {p0, p1, p1}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    .line 59861
    return-void
.end method

.method private A0T(Ljava/nio/ByteBuffer;J)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/BB;
        }
    .end annotation

    .line 59862
    move-object v7, p1

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    .line 59863
    return-void

    .line 59864
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0U:Ljava/nio/ByteBuffer;

    const/4 v6, 0x1

    const/16 v5, 0x15

    const/4 v3, 0x0

    if-eqz v0, :cond_b

    .line 59865
    if-ne v0, v7, :cond_a

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A03(Z)V

    .line 59866
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/YQ;
    .end local v0
    :cond_1
    :goto_1
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v8

    .line 59867
    .restart local p0    # "this":Lcom/facebook/ads/redexgen/X/YQ;
    const/4 v4, 0x0

    .line 59868
    .local v0, "bytesWritten":I
    sget v0, Lcom/facebook/ads/redexgen/X/Ic;->A02:I

    if-ge v0, v5, :cond_6

    .line 59869
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0h:Lcom/facebook/ads/redexgen/X/BI;

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0L:J

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/BI;->A0C(J)I

    move-result v0

    .line 59870
    .local v7, "bytesToWrite":I
    if-lez v0, :cond_2

    .line 59871
    invoke-static {v8, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 59872
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0M:Landroid/media/AudioTrack;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0c:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0C:I

    invoke-virtual {v2, v1, v0, v3}, Landroid/media/AudioTrack;->write([BII)I

    move-result v4

    .line 59873
    if-lez v4, :cond_2

    .line 59874
    iget v0, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0C:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0C:I

    .line 59875
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/2addr v0, v4

    invoke-virtual {v7, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 59876
    :cond_2
    :goto_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0E:J

    .line 59877
    if-ltz v4, :cond_e

    .line 59878
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0X:Z

    if-eqz v0, :cond_3

    .line 59879
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0L:J

    int-to-long v0, v4

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0L:J

    .line 59880
    :cond_3
    if-ne v4, v8, :cond_5

    .line 59881
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0X:Z

    if-nez v0, :cond_4

    .line 59882
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0K:J

    iget v0, p0, Lcom/facebook/ads/redexgen/X/YQ;->A05:I

    int-to-long v0, v0

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0K:J

    .line 59883
    :cond_4
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0U:Ljava/nio/ByteBuffer;

    .line 59884
    :cond_5
    return-void

    .line 59885
    :cond_6
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0b:Z

    if-eqz v0, :cond_9

    .line 59886
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    move-wide v9, p2

    cmp-long v0, v9, v1

    if-eqz v0, :cond_7

    :goto_3
    invoke-static {v6}, Lcom/facebook/ads/redexgen/X/Hx;->A04(Z)V

    sget-object v2, Lcom/facebook/ads/redexgen/X/YQ;->A0s:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/16 v0, 0x12

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_8

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_7
    const/4 v6, 0x0

    goto :goto_3

    .line 59887
    :cond_8
    sget-object v2, Lcom/facebook/ads/redexgen/X/YQ;->A0s:[Ljava/lang/String;

    const-string v1, "uc8dsziOyfZDdpAIC1PVCulQ3xFiNwSU"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "f1kQp84DxGThwffoyoPMW5CjH544FPQd"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0M:Landroid/media/AudioTrack;

    .line 59888
    move-object v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/facebook/ads/redexgen/X/YQ;->A02(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;IJ)I

    move-result v4

    goto :goto_2

    .line 59889
    :cond_9
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0M:Landroid/media/AudioTrack;

    invoke-static {v0, v7, v8}, Lcom/facebook/ads/redexgen/X/YQ;->A01(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;I)I

    move-result v4

    goto :goto_2

    .line 59890
    :cond_a
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 59891
    :cond_b
    iput-object v7, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0U:Ljava/nio/ByteBuffer;

    .line 59892
    sget v0, Lcom/facebook/ads/redexgen/X/Ic;->A02:I

    if-ge v0, v5, :cond_1

    .line 59893
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    .line 59894
    .local p0, "bytesRemaining":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0c:[B

    if-eqz v0, :cond_c

    array-length v0, v0

    if-ge v0, v2, :cond_d

    .line 59895
    :cond_c
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0c:[B

    .line 59896
    :cond_d
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 59897
    .local v0, "originalPosition":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0c:[B

    invoke-virtual {v7, v0, v3, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 59898
    invoke-virtual {v7, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 59899
    iput v3, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0C:I

    goto/16 :goto_1

    .line 59900
    :cond_e
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

    .line 59901
    const/4 v5, 0x0

    .line 59902
    .local p0, "audioProcessorNeedsEndOfStream":Z
    iget v0, p0, Lcom/facebook/ads/redexgen/X/YQ;->A04:I

    const/4 v6, -0x1

    const/4 v8, 0x0

    if-ne v0, v6, :cond_0

    .line 59903
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0Z:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/facebook/ads/redexgen/X/YQ;->A04:I

    .line 59904
    const/4 v5, 0x1

    .line 59905
    :cond_0
    :goto_1
    iget v4, p0, Lcom/facebook/ads/redexgen/X/YQ;->A04:I

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0d:[Lcom/facebook/ads/redexgen/X/Az;

    array-length v0, v1

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v7, 0x1

    if-ge v4, v0, :cond_5

    .line 59906
    aget-object v0, v1, v4

    .line 59907
    .local v5, "audioProcessor":Lcom/facebook/ads/redexgen/X/Az;
    if-eqz v5, :cond_1

    .line 59908
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Az;->ACh()V

    .line 59909
    :cond_1
    invoke-direct {p0, v2, v3}, Lcom/facebook/ads/redexgen/X/YQ;->A0Q(J)V

    .line 59910
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Az;->A7z()Z

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/YQ;->A0s:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/16 v0, 0x9

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/YQ;->A0s:[Ljava/lang/String;

    const-string v1, "2xZTToEoCwsl8MeSQ9EIUdCBiuq4j6Lb"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "WXli42TSAlQlgSv7suJf6xw7W0hHNYE8"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-nez v3, :cond_2

    .line 59911
    return v8

    .line 59912
    :cond_2
    const/4 v5, 0x1

    .line 59913
    iget v0, p0, Lcom/facebook/ads/redexgen/X/YQ;->A04:I

    add-int/2addr v0, v7

    iput v0, p0, Lcom/facebook/ads/redexgen/X/YQ;->A04:I

    .line 59914
    .end local v5    # "audioProcessor":Lcom/facebook/ads/redexgen/X/Az;
    goto :goto_1

    .line 59915
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0d:[Lcom/facebook/ads/redexgen/X/Az;

    array-length v0, v0

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 59916
    :cond_5
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0U:Ljava/nio/ByteBuffer;

    sget-object v1, Lcom/facebook/ads/redexgen/X/YQ;->A0s:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1f

    if-eq v1, v0, :cond_6

    if-eqz v5, :cond_7

    .line 59917
    :goto_2
    invoke-direct {p0, v5, v2, v3}, Lcom/facebook/ads/redexgen/X/YQ;->A0T(Ljava/nio/ByteBuffer;J)V

    .line 59918
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0U:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_7

    .line 59919
    return v8

    :cond_6
    sget-object v4, Lcom/facebook/ads/redexgen/X/YQ;->A0s:[Ljava/lang/String;

    const-string v1, "9QdkqYSTFHb7WYiPiRp7Y6nS2TP2i0It"

    const/4 v0, 0x5

    aput-object v1, v4, v0

    const-string v1, "gIdgEUZyaZheDXAdPlxJ5YfvFSsVsGnk"

    const/4 v0, 0x2

    aput-object v1, v4, v0

    if-eqz v5, :cond_7

    goto :goto_2

    .line 59920
    :cond_7
    iput v6, p0, Lcom/facebook/ads/redexgen/X/YQ;->A04:I

    .line 59921
    return v7
.end method

.method private A0V()Z
    .locals 1

    .line 59922
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0M:Landroid/media/AudioTrack;

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

    .line 59923
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0a:Z

    if-eqz v0, :cond_0

    .line 59924
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0n:[Lcom/facebook/ads/redexgen/X/Az;

    .line 59925
    :goto_0
    return-object v0

    .line 59926
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0o:[Lcom/facebook/ads/redexgen/X/Az;

    goto :goto_0
.end method


# virtual methods
.method public final A47(IIII[III)V
    .locals 11
    .param p5    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/B8;
        }
    .end annotation

    .line 59927
    move-object v3, p0

    const/4 v10, 0x0

    .line 59928
    .local p0, "flush":Z
    iput p3, v3, Lcom/facebook/ads/redexgen/X/YQ;->A06:I

    .line 59929
    .local v1, "channelCount":I
    .local v2, "sampleRate":I
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Ic;->A0d(I)Z

    move-result v0

    iput-boolean v0, v3, Lcom/facebook/ads/redexgen/X/YQ;->A0X:Z

    .line 59930
    iget-boolean v0, v3, Lcom/facebook/ads/redexgen/X/YQ;->A0m:Z

    if-eqz v0, :cond_4

    const/high16 v0, 0x40000000    # 2.0f

    .line 59931
    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/YQ;->A7y(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 59932
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Ic;->A0c(I)Z

    move-result v4

    sget-object v2, Lcom/facebook/ads/redexgen/X/YQ;->A0s:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/16 v0, 0x9

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_16

    sget-object v2, Lcom/facebook/ads/redexgen/X/YQ;->A0s:[Ljava/lang/String;

    const-string v1, "pSgUMuqclJtR7Wll0dPjJ2zzf2ilR1Rg"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "HOjaWwZtZrcuosAAwRPsfae4433kR7Xp"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-eqz v4, :cond_4

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, v3, Lcom/facebook/ads/redexgen/X/YQ;->A0a:Z

    .line 59933
    iget-boolean v0, v3, Lcom/facebook/ads/redexgen/X/YQ;->A0X:Z

    if-eqz v0, :cond_0

    .line 59934
    invoke-static {p1, p2}, Lcom/facebook/ads/redexgen/X/Ic;->A05(II)I

    move-result v0

    iput v0, v3, Lcom/facebook/ads/redexgen/X/YQ;->A0B:I

    .line 59935
    :cond_0
    move v8, p1

    .line 59936
    .local v1, "encoding":I
    iget-boolean v0, v3, Lcom/facebook/ads/redexgen/X/YQ;->A0X:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_3

    const/4 v7, 0x1

    .line 59937
    .local p4, "processingEnabled":Z
    :goto_1
    if-eqz v7, :cond_2

    iget-boolean v0, v3, Lcom/facebook/ads/redexgen/X/YQ;->A0a:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_2
    iput-boolean v0, v3, Lcom/facebook/ads/redexgen/X/YQ;->A0V:Z

    .line 59938
    if-eqz v7, :cond_5

    .line 59939
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/YQ;->A0k:Lcom/facebook/ads/redexgen/X/YX;

    move/from16 v2, p6

    move/from16 v1, p7

    invoke-virtual {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/YX;->A01(II)V

    .line 59940
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/YQ;->A0i:Lcom/facebook/ads/redexgen/X/YN;

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/YN;->A01([I)V

    .line 59941
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/YQ;->A0W()[Lcom/facebook/ads/redexgen/X/Az;

    move-result-object v5

    array-length v4, v5

    const/4 v2, 0x0

    .end local p0    # "flush":Z
    .local v1, "flush":Z
    .local v2, "channelCount":I
    .local v1, "sampleRate":I
    .local v3, "encoding":I
    :goto_3
    if-ge v2, v4, :cond_5

    aget-object v1, v5, v2

    .line 59942
    .local p1, "audioProcessor":Lcom/facebook/ads/redexgen/X/Az;
    :try_start_0
    invoke-interface {v1, p3, p2, v8}, Lcom/facebook/ads/redexgen/X/Az;->A48(III)Z

    move-result v0
    :try_end_0
    .catch Lcom/facebook/ads/redexgen/X/Ay; {:try_start_0 .. :try_end_0} :catch_0

    or-int/2addr v10, v0

    .line 59943
    invoke-interface {v1}, Lcom/facebook/ads/redexgen/X/Az;->A7v()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 59944
    invoke-interface {v1}, Lcom/facebook/ads/redexgen/X/Az;->A6q()I

    move-result p2

    .line 59945
    invoke-interface {v1}, Lcom/facebook/ads/redexgen/X/Az;->A6s()I

    move-result p3

    .line 59946
    invoke-interface {v1}, Lcom/facebook/ads/redexgen/X/Az;->A6r()I

    move-result v8

    .line 59947
    .end local p1    # "audioProcessor":Lcom/facebook/ads/redexgen/X/Az;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 59948
    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    .line 59949
    :cond_3
    const/4 v7, 0x0

    goto :goto_1

    .line 59950
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 59951
    .restart local p1    # "audioProcessor":Lcom/facebook/ads/redexgen/X/Az;
    :catch_0
    move-exception v1

    .line 59952
    .local p0, "e":Lcom/facebook/ads/redexgen/X/Ay;
    new-instance v0, Lcom/facebook/ads/redexgen/X/B8;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/B8;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 59953
    .end local v1    # "sampleRate":I
    .restart local v3    # "encoding":I
    :cond_5
    packed-switch p2, :pswitch_data_0

    .line 59954
    .end local p0    # "e":Lcom/facebook/ads/redexgen/X/Ay;
    .end local v2    # "channelCount":I
    .local p2, "sampleRate":I
    .local v4, "flush":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x6f

    const/16 v1, 0x1b

    const/16 v0, 0x7e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/YQ;->A0I(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/B8;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/B8;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59955
    .end local v1
    :pswitch_0
    const/4 v6, 0x4

    .line 59956
    .restart local v1    # "sampleRate":I
    goto :goto_4

    .line 59957
    .end local v1    # "sampleRate":I
    :pswitch_1
    const/16 v6, 0xc

    .line 59958
    .restart local v1    # "sampleRate":I
    goto :goto_4

    .line 59959
    .end local v1    # "sampleRate":I
    :pswitch_2
    const/16 v6, 0x1c

    .line 59960
    .restart local v1    # "sampleRate":I
    goto :goto_4

    .line 59961
    .end local v1    # "sampleRate":I
    :pswitch_3
    const/16 v6, 0xcc

    .line 59962
    .restart local v1    # "sampleRate":I
    goto :goto_4

    .line 59963
    .end local v1    # "sampleRate":I
    :pswitch_4
    const/16 v6, 0xdc

    .line 59964
    .restart local v1    # "sampleRate":I
    goto :goto_4

    .line 59965
    .end local v1    # "sampleRate":I
    :pswitch_5
    const/16 v6, 0xfc

    .line 59966
    .restart local v1    # "sampleRate":I
    goto :goto_4

    .line 59967
    .end local v1    # "sampleRate":I
    :pswitch_6
    const/16 v6, 0x4fc

    .line 59968
    .restart local v1    # "sampleRate":I
    goto :goto_4

    .line 59969
    .end local p2    # "sampleRate":I
    .end local v4    # "flush":Z
    .restart local p0    # "e":Lcom/facebook/ads/redexgen/X/Ay;
    .restart local v2    # "channelCount":I
    :pswitch_7
    sget v6, Lcom/facebook/ads/redexgen/X/9u;->A00:I

    .line 59970
    .local v1, "channelConfig":I
    :goto_4
    sget v9, Lcom/facebook/ads/redexgen/X/Ic;->A02:I

    const/16 v4, 0x17

    sget-object v2, Lcom/facebook/ads/redexgen/X/YQ;->A0s:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/16 v0, 0x12

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_9

    const/4 v5, 0x5

    if-gt v9, v4, :cond_6

    :goto_5
    sget-object v4, Lcom/facebook/ads/redexgen/X/Ic;->A03:Ljava/lang/String;

    const/16 v2, 0x8b

    const/4 v1, 0x6

    const/16 v0, 0x27

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/YQ;->A0I(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v4, Lcom/facebook/ads/redexgen/X/Ic;->A05:Ljava/lang/String;

    const/16 v2, 0x31

    const/4 v1, 0x6

    const/16 v0, 0xb

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/YQ;->A0I(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 59971
    const/4 v0, 0x3

    if-eq p2, v0, :cond_8

    if-eq p2, v5, :cond_8

    const/4 v0, 0x7

    if-eq p2, v0, :cond_7

    .line 59972
    :cond_6
    :goto_6
    sget v1, Lcom/facebook/ads/redexgen/X/Ic;->A02:I

    const/16 v0, 0x19

    if-gt v1, v0, :cond_b

    sget-object v4, Lcom/facebook/ads/redexgen/X/Ic;->A03:Ljava/lang/String;

    const/16 v2, 0x91

    const/4 v1, 0x4

    const/16 v0, 0x16

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/YQ;->A0I(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-boolean v0, v3, Lcom/facebook/ads/redexgen/X/YQ;->A0X:Z

    if-nez v0, :cond_b

    const/4 v4, 0x1

    sget-object v2, Lcom/facebook/ads/redexgen/X/YQ;->A0s:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v2, v2, v0

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_a

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 59973
    :cond_7
    sget v6, Lcom/facebook/ads/redexgen/X/9u;->A00:I

    .line 59974
    goto :goto_6

    .line 59975
    :cond_8
    const/16 v6, 0xfc

    goto :goto_6

    :cond_9
    sget-object v2, Lcom/facebook/ads/redexgen/X/YQ;->A0s:[Ljava/lang/String;

    const-string v1, "YZfXt3sXT4j271kDE0ioC9OxQaOXWjH5"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "T3cPMba1o5OKtrwqBxp9YFX0amMUuBH0"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v5, 0x5

    if-gt v9, v4, :cond_6

    goto :goto_5

    :cond_a
    sget-object v2, Lcom/facebook/ads/redexgen/X/YQ;->A0s:[Ljava/lang/String;

    const-string v1, "lyxpn71WQn9dckKW56P9nO6T9wnpMgEk"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "LnPBCXPfIDTyG7NKycPeENmI65ZDVhzG"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-ne p2, v4, :cond_c

    .line 59976
    const/16 v6, 0xc

    goto :goto_7

    .line 59977
    :cond_b
    const/4 v4, 0x1

    .line 59978
    :cond_c
    :goto_7
    if-nez v10, :cond_e

    .line 59979
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/YQ;->A0V()Z

    move-result v0

    if-eqz v0, :cond_e

    iget v0, v3, Lcom/facebook/ads/redexgen/X/YQ;->A08:I

    if-ne v0, v8, :cond_e

    iget v9, v3, Lcom/facebook/ads/redexgen/X/YQ;->A0A:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/YQ;->A0s:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1f

    if-eq v1, v0, :cond_d

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_d
    sget-object v2, Lcom/facebook/ads/redexgen/X/YQ;->A0s:[Ljava/lang/String;

    const-string v1, "QJheChQOtEbeash7G8AcHOsRzFDcTJZ5"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-ne v9, p3, :cond_e

    iget v0, v3, Lcom/facebook/ads/redexgen/X/YQ;->A07:I

    if-ne v0, v6, :cond_e

    .line 59980
    return-void

    .line 59981
    :cond_e
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/YQ;->reset()V

    .line 59982
    iput-boolean v7, v3, Lcom/facebook/ads/redexgen/X/YQ;->A0Z:Z

    .line 59983
    iput p3, v3, Lcom/facebook/ads/redexgen/X/YQ;->A0A:I

    .line 59984
    iput v6, v3, Lcom/facebook/ads/redexgen/X/YQ;->A07:I

    .line 59985
    iput v8, v3, Lcom/facebook/ads/redexgen/X/YQ;->A08:I

    .line 59986
    iget-boolean v0, v3, Lcom/facebook/ads/redexgen/X/YQ;->A0X:Z

    if-eqz v0, :cond_15

    iget v0, v3, Lcom/facebook/ads/redexgen/X/YQ;->A08:I

    invoke-static {v0, p2}, Lcom/facebook/ads/redexgen/X/Ic;->A05(II)I

    move-result v0

    :goto_8
    iput v0, v3, Lcom/facebook/ads/redexgen/X/YQ;->A09:I

    .line 59987
    if-eqz p4, :cond_f

    .line 59988
    iput p4, v3, Lcom/facebook/ads/redexgen/X/YQ;->A02:I

    .line 59989
    :goto_9
    return-void

    .line 59990
    :cond_f
    iget-boolean v0, v3, Lcom/facebook/ads/redexgen/X/YQ;->A0X:Z

    if-eqz v0, :cond_11

    .line 59991
    iget v0, v3, Lcom/facebook/ads/redexgen/X/YQ;->A08:I

    invoke-static {p3, v6, v0}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v2

    .line 59992
    .local v10, "minBufferSize":I
    const/4 v0, -0x2

    if-eq v2, v0, :cond_10

    :goto_a
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/Hx;->A04(Z)V

    .line 59993
    mul-int/lit8 v9, v2, 0x4

    .line 59994
    .local p1, "multipliedBufferSize":I
    const-wide/32 v0, 0x3d090

    invoke-direct {v3, v0, v1}, Lcom/facebook/ads/redexgen/X/YQ;->A07(J)J

    move-result-wide v0

    long-to-int v8, v0

    iget v0, v3, Lcom/facebook/ads/redexgen/X/YQ;->A09:I

    mul-int/2addr v8, v0

    .line 59995
    .local p3, "minAppBufferSize":I
    .end local v2    # "channelCount":I
    .end local v1    # "channelConfig":I
    .restart local p2    # "sampleRate":I
    .local v0, "channelConfig":I
    int-to-long v6, v2

    .end local p4    # "processingEnabled":Z
    .end local v10    # "minBufferSize":I
    .local v0, "minBufferSize":I
    .local v0, "processingEnabled":Z
    const-wide/32 v0, 0xb71b0

    .line 59996
    invoke-direct {v3, v0, v1}, Lcom/facebook/ads/redexgen/X/YQ;->A07(J)J

    move-result-wide v4

    .end local p0    # "e":Lcom/facebook/ads/redexgen/X/Ay;
    .restart local v4    # "flush":Z
    iget v0, v3, Lcom/facebook/ads/redexgen/X/YQ;->A09:I

    int-to-long v0, v0

    mul-long/2addr v4, v0

    .line 59997
    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    long-to-int v0, v1

    .line 59998
    .local p0, "maxAppBufferSize":I
    invoke-static {v9, v8, v0}, Lcom/facebook/ads/redexgen/X/Ic;->A06(III)I

    move-result v0

    iput v0, v3, Lcom/facebook/ads/redexgen/X/YQ;->A02:I

    .line 59999
    .end local p0    # "maxAppBufferSize":I
    .end local p3    # "minAppBufferSize":I
    .end local p1    # "multipliedBufferSize":I
    .end local v0    # "processingEnabled":Z
    goto :goto_9

    .line 60000
    :cond_10
    const/4 v4, 0x0

    goto :goto_a

    .line 60001
    .end local p2    # "sampleRate":I
    .end local v0
    .end local v0
    .end local v4    # "flush":Z
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
    .restart local v4    # "flush":Z
    :cond_11
    iget v1, v3, Lcom/facebook/ads/redexgen/X/YQ;->A08:I

    if-eq v1, v5, :cond_12

    const/4 v0, 0x6

    if-ne v1, v0, :cond_13

    .line 60002
    :cond_12
    const/16 v0, 0x5000

    iput v0, v3, Lcom/facebook/ads/redexgen/X/YQ;->A02:I

    goto :goto_9

    .line 60003
    :cond_13
    const/4 v0, 0x7

    if-ne v1, v0, :cond_14

    .line 60004
    const v0, 0xc000

    iput v0, v3, Lcom/facebook/ads/redexgen/X/YQ;->A02:I

    goto :goto_9

    .line 60005
    :cond_14
    const v0, 0x48000

    iput v0, v3, Lcom/facebook/ads/redexgen/X/YQ;->A02:I

    goto :goto_9

    .line 60006
    :cond_15
    const/4 v0, -0x1

    goto :goto_8

    :cond_16
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

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

.method public final A4n()V
    .locals 1

    .line 60007
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0b:Z

    if-eqz v0, :cond_0

    .line 60008
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0b:Z

    .line 60009
    iput v0, p0, Lcom/facebook/ads/redexgen/X/YQ;->A01:I

    .line 60010
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/YQ;->reset()V

    .line 60011
    :cond_0
    return-void
.end method

.method public final A59(I)V
    .locals 3

    .line 60012
    sget v2, Lcom/facebook/ads/redexgen/X/Ic;->A02:I

    const/4 v1, 0x1

    const/16 v0, 0x15

    if-lt v2, v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A04(Z)V

    .line 60013
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0b:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/YQ;->A01:I

    if-eq v0, p1, :cond_1

    .line 60014
    :cond_0
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0b:Z

    .line 60015
    iput p1, p0, Lcom/facebook/ads/redexgen/X/YQ;->A01:I

    .line 60016
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/YQ;->reset()V

    .line 60017
    :cond_1
    return-void

    .line 60018
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A68(Z)J
    .locals 4

    .line 60019
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/YQ;->A0V()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0D:I

    if-nez v0, :cond_1

    .line 60020
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/YQ;
    :cond_0
    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0

    .line 60021
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0h:Lcom/facebook/ads/redexgen/X/BI;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/BI;->A0D(Z)J

    move-result-wide v2

    .line 60022
    .local p0, "positionUs":J
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/YQ;->A04()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/YQ;->A08(J)J

    move-result-wide v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 60023
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0H:J

    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/YQ;->A06(J)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/YQ;->A05(J)J

    move-result-wide v0

    add-long/2addr v2, v0

    return-wide v2
.end method

.method public final A70()Lcom/facebook/ads/redexgen/X/AL;
    .locals 1

    .line 60024
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0P:Lcom/facebook/ads/redexgen/X/AL;

    return-object v0
.end method

.method public final A7U(Ljava/nio/ByteBuffer;J)Z
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/B9;,
            Lcom/facebook/ads/redexgen/X/BB;
        }
    .end annotation

    .line 60025
    move-object/from16 v7, p0

    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/YQ;->A0T:Ljava/nio/ByteBuffer;

    const/4 v13, 0x0

    const/4 v6, 0x1

    move-object/from16 v11, p1

    if-eqz v0, :cond_0

    if-ne v11, v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A03(Z)V

    .line 60026
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/YQ;->A0V()Z

    move-result v0

    if-nez v0, :cond_1

    .line 60027
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/YQ;->A0K()V

    .line 60028
    iget-boolean v0, v7, Lcom/facebook/ads/redexgen/X/YQ;->A0Y:Z

    if-eqz v0, :cond_1

    .line 60029
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/YQ;->ACT()V

    .line 60030
    :cond_1
    iget-object v2, v7, Lcom/facebook/ads/redexgen/X/YQ;->A0h:Lcom/facebook/ads/redexgen/X/BI;

    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/YQ;->A04()J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/BI;->A0M(J)Z

    move-result v0

    if-nez v0, :cond_3

    .line 60031
    return v13

    .line 60032
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 60033
    :cond_3
    iget-object v3, v7, Lcom/facebook/ads/redexgen/X/YQ;->A0T:Ljava/nio/ByteBuffer;

    const/4 v2, 0x6

    const/16 v1, 0xa

    const/16 v0, 0x54

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/YQ;->A0I(III)Ljava/lang/String;

    move-result-object v10

    const/4 v8, 0x0

    move-wide/from16 v0, p2

    if-nez v3, :cond_6

    .line 60034
    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-nez v2, :cond_4

    .line 60035
    return v6

    .line 60036
    :cond_4
    iget-boolean v2, v7, Lcom/facebook/ads/redexgen/X/YQ;->A0X:Z

    if-nez v2, :cond_9

    iget v2, v7, Lcom/facebook/ads/redexgen/X/YQ;->A05:I

    if-nez v2, :cond_9

    .line 60037
    iget v2, v7, Lcom/facebook/ads/redexgen/X/YQ;->A08:I

    invoke-static {v2, v11}, Lcom/facebook/ads/redexgen/X/YQ;->A00(ILjava/nio/ByteBuffer;)I

    move-result v2

    iput v2, v7, Lcom/facebook/ads/redexgen/X/YQ;->A05:I

    .line 60038
    iget v2, v7, Lcom/facebook/ads/redexgen/X/YQ;->A05:I

    if-nez v2, :cond_9

    .line 60039
    return v6

    .line 60040
    .end local v7
    :cond_5
    :goto_1
    iget-boolean v2, v7, Lcom/facebook/ads/redexgen/X/YQ;->A0X:Z

    if-eqz v2, :cond_8

    .line 60041
    iget-wide v4, v7, Lcom/facebook/ads/redexgen/X/YQ;->A0J:J

    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v4, v2

    iput-wide v4, v7, Lcom/facebook/ads/redexgen/X/YQ;->A0J:J

    .line 60042
    :goto_2
    iput-object v11, v7, Lcom/facebook/ads/redexgen/X/YQ;->A0T:Ljava/nio/ByteBuffer;

    .line 60043
    :cond_6
    iget-boolean v2, v7, Lcom/facebook/ads/redexgen/X/YQ;->A0Z:Z

    if-eqz v2, :cond_7

    .line 60044
    invoke-direct {v7, v0, v1}, Lcom/facebook/ads/redexgen/X/YQ;->A0Q(J)V

    .line 60045
    :goto_3
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/YQ;->A0T:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_14

    .line 60046
    iput-object v8, v7, Lcom/facebook/ads/redexgen/X/YQ;->A0T:Ljava/nio/ByteBuffer;

    .line 60047
    return v6

    .line 60048
    :cond_7
    iget-object v2, v7, Lcom/facebook/ads/redexgen/X/YQ;->A0T:Ljava/nio/ByteBuffer;

    invoke-direct {v7, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/YQ;->A0T(Ljava/nio/ByteBuffer;J)V

    goto :goto_3

    .line 60049
    :cond_8
    iget-wide v4, v7, Lcom/facebook/ads/redexgen/X/YQ;->A0I:J

    sget-object v3, Lcom/facebook/ads/redexgen/X/YQ;->A0s:[Ljava/lang/String;

    const/4 v2, 0x7

    aget-object v3, v3, v2

    const/4 v2, 0x5

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v2, 0x76

    if-eq v3, v2, :cond_a

    sget-object v9, Lcom/facebook/ads/redexgen/X/YQ;->A0s:[Ljava/lang/String;

    const-string v3, "RMIgxhGSPUjaAJeGU8ndpU4l5tEpmaGN"

    const/4 v2, 0x7

    aput-object v3, v9, v2

    iget v2, v7, Lcom/facebook/ads/redexgen/X/YQ;->A05:I

    int-to-long v2, v2

    add-long/2addr v4, v2

    iput-wide v4, v7, Lcom/facebook/ads/redexgen/X/YQ;->A0I:J

    goto :goto_2

    .line 60050
    :cond_9
    iget-object v4, v7, Lcom/facebook/ads/redexgen/X/YQ;->A0O:Lcom/facebook/ads/redexgen/X/AL;

    const-wide/16 v2, 0x0

    if-eqz v4, :cond_d

    .line 60051
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/YQ;->A0U()Z

    move-result v12

    sget-object v9, Lcom/facebook/ads/redexgen/X/YQ;->A0s:[Ljava/lang/String;

    const/4 v4, 0x6

    aget-object v5, v9, v4

    const/4 v4, 0x0

    aget-object v9, v9, v4

    const/16 v4, 0x12

    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v9, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v5, v4, :cond_b

    :cond_a
    :goto_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_b
    sget-object v9, Lcom/facebook/ads/redexgen/X/YQ;->A0s:[Ljava/lang/String;

    const-string v5, "32G65PTM58F7sQCdfpmp6BeZ89jlEc3c"

    const/4 v4, 0x7

    aput-object v5, v9, v4

    if-nez v12, :cond_c

    .line 60052
    return v13

    .line 60053
    :cond_c
    iget-object v5, v7, Lcom/facebook/ads/redexgen/X/YQ;->A0O:Lcom/facebook/ads/redexgen/X/AL;

    .line 60054
    .local v7, "newPlaybackParameters":Lcom/facebook/ads/redexgen/X/AL;
    iput-object v8, v7, Lcom/facebook/ads/redexgen/X/YQ;->A0O:Lcom/facebook/ads/redexgen/X/AL;

    .line 60055
    iget-object v4, v7, Lcom/facebook/ads/redexgen/X/YQ;->A0j:Lcom/facebook/ads/redexgen/X/BL;

    invoke-interface {v4, v5}, Lcom/facebook/ads/redexgen/X/BL;->A3S(Lcom/facebook/ads/redexgen/X/AL;)Lcom/facebook/ads/redexgen/X/AL;

    move-result-object v13

    .line 60056
    iget-object v9, v7, Lcom/facebook/ads/redexgen/X/YQ;->A0l:Ljava/util/ArrayDeque;

    new-instance v12, Lcom/facebook/ads/redexgen/X/BN;

    .line 60057
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v14

    .line 60058
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/YQ;->A04()J

    move-result-wide v4

    invoke-direct {v7, v4, v5}, Lcom/facebook/ads/redexgen/X/YQ;->A08(J)J

    move-result-wide v16

    const/16 v18, 0x0

    move-object v4, v12

    invoke-direct/range {v12 .. v18}, Lcom/facebook/ads/redexgen/X/BN;-><init>(Lcom/facebook/ads/redexgen/X/AL;JJLcom/facebook/ads/redexgen/X/BJ;)V

    .line 60059
    invoke-virtual {v9, v4}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 60060
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/YQ;->A0N()V

    .line 60061
    .end local v7    # "newPlaybackParameters":Lcom/facebook/ads/redexgen/X/AL;
    :cond_d
    iget v12, v7, Lcom/facebook/ads/redexgen/X/YQ;->A0D:I

    sget-object v9, Lcom/facebook/ads/redexgen/X/YQ;->A0s:[Ljava/lang/String;

    const/4 v4, 0x6

    aget-object v5, v9, v4

    const/4 v4, 0x0

    aget-object v9, v9, v4

    const/16 v4, 0x12

    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v9, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v5, v4, :cond_e

    sget-object v9, Lcom/facebook/ads/redexgen/X/YQ;->A0s:[Ljava/lang/String;

    const-string v5, "fLdk8aATSmJXoquyNHeNsiC6Q5oLlXzM"

    const/4 v4, 0x5

    aput-object v5, v9, v4

    const-string v5, "ENde7HZSsZADB3fZdejE9kxAgCgEEhM2"

    const/4 v4, 0x2

    aput-object v5, v9, v4

    if-nez v12, :cond_f

    .line 60062
    :goto_5
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, v7, Lcom/facebook/ads/redexgen/X/YQ;->A0H:J

    sget-object v3, Lcom/facebook/ads/redexgen/X/YQ;->A0s:[Ljava/lang/String;

    const/4 v2, 0x3

    aget-object v2, v3, v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v2, 0x1f

    if-eq v3, v2, :cond_12

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_e
    sget-object v9, Lcom/facebook/ads/redexgen/X/YQ;->A0s:[Ljava/lang/String;

    const-string v5, "e4cnN7UP0SnjMswao4r9LHhuRWlwcAUo"

    const/4 v4, 0x7

    aput-object v5, v9, v4

    if-nez v12, :cond_f

    goto :goto_5

    .line 60063
    :cond_f
    iget-wide v4, v7, Lcom/facebook/ads/redexgen/X/YQ;->A0H:J

    .line 60064
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/YQ;->A03()J

    move-result-wide v2

    invoke-direct {v7, v2, v3}, Lcom/facebook/ads/redexgen/X/YQ;->A09(J)J

    move-result-wide v2

    add-long/2addr v4, v2

    .line 60065
    .local v7, "expectedPresentationTimeUs":J
    iget v2, v7, Lcom/facebook/ads/redexgen/X/YQ;->A0D:I

    const/4 v12, 0x2

    if-ne v2, v6, :cond_10

    sub-long v2, v4, v0

    .line 60066
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v15

    const-wide/32 v13, 0x30d40

    sget-object v3, Lcom/facebook/ads/redexgen/X/YQ;->A0s:[Ljava/lang/String;

    const/4 v2, 0x7

    aget-object v3, v3, v2

    const/4 v2, 0x5

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v2, 0x76

    if-eq v3, v2, :cond_11

    sget-object v9, Lcom/facebook/ads/redexgen/X/YQ;->A0s:[Ljava/lang/String;

    const-string v3, "Mjd2F7C7kiLCVUTRblLdSlwSo04If9jH"

    const/4 v2, 0x5

    aput-object v3, v9, v2

    const-string v3, "SFdTDB39f2uDBeT9Tbwwt5W5QdPlKJfQ"

    const/4 v2, 0x2

    aput-object v3, v9, v2

    cmp-long v2, v15, v13

    if-lez v2, :cond_10

    .line 60067
    :goto_6
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v9, 0x10

    const/16 v3, 0x21

    const/16 v2, 0x41

    invoke-static {v9, v3, v2}, Lcom/facebook/ads/redexgen/X/YQ;->A0I(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/4 v9, 0x0

    const/4 v3, 0x6

    const/16 v2, 0x23

    invoke-static {v9, v3, v2}, Lcom/facebook/ads/redexgen/X/YQ;->A0I(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v9, 0x8a

    const/4 v3, 0x1

    const/16 v2, 0x73

    invoke-static {v9, v3, v2}, Lcom/facebook/ads/redexgen/X/YQ;->A0I(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60068
    iput v12, v7, Lcom/facebook/ads/redexgen/X/YQ;->A0D:I

    .line 60069
    :cond_10
    iget v13, v7, Lcom/facebook/ads/redexgen/X/YQ;->A0D:I

    sget-object v3, Lcom/facebook/ads/redexgen/X/YQ;->A0s:[Ljava/lang/String;

    const/4 v2, 0x3

    aget-object v2, v3, v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v2, 0x1f

    if-eq v3, v2, :cond_13

    goto/16 :goto_4

    :cond_11
    sget-object v9, Lcom/facebook/ads/redexgen/X/YQ;->A0s:[Ljava/lang/String;

    const-string v3, "vGS91cAAG7hMw0xriamqCYCKlpI1kVhb"

    const/4 v2, 0x7

    aput-object v3, v9, v2

    cmp-long v2, v15, v13

    if-lez v2, :cond_10

    goto :goto_6

    .line 60070
    :cond_12
    sget-object v4, Lcom/facebook/ads/redexgen/X/YQ;->A0s:[Ljava/lang/String;

    const-string v3, "k8d1uoKGcn9oqEPcbfqEuDtWZEluvqcv"

    const/4 v2, 0x5

    aput-object v3, v4, v2

    const-string v3, "0FdbLpGzKjPPYkWO7EHSmW7ecHxpzOIE"

    const/4 v2, 0x2

    aput-object v3, v4, v2

    iput v6, v7, Lcom/facebook/ads/redexgen/X/YQ;->A0D:I

    goto/16 :goto_1

    :cond_13
    sget-object v9, Lcom/facebook/ads/redexgen/X/YQ;->A0s:[Ljava/lang/String;

    const-string v3, "1n9GuuRZsd3tbftYhBPGe0z5aHsix9eq"

    const/4 v2, 0x6

    aput-object v3, v9, v2

    const-string v3, "CrYGxTKVQxqkoEEYRaPu1U1mUEDoOHWT"

    const/4 v2, 0x0

    aput-object v3, v9, v2

    if-ne v13, v12, :cond_5

    .line 60071
    iget-wide v2, v7, Lcom/facebook/ads/redexgen/X/YQ;->A0H:J

    sub-long v12, v0, v4

    add-long/2addr v2, v12

    iput-wide v2, v7, Lcom/facebook/ads/redexgen/X/YQ;->A0H:J

    .line 60072
    iput v6, v7, Lcom/facebook/ads/redexgen/X/YQ;->A0D:I

    .line 60073
    iget-object v2, v7, Lcom/facebook/ads/redexgen/X/YQ;->A0R:Lcom/facebook/ads/redexgen/X/BA;

    if-eqz v2, :cond_5

    .line 60074
    invoke-interface {v2}, Lcom/facebook/ads/redexgen/X/BA;->ABC()V

    goto/16 :goto_1

    .line 60075
    :cond_14
    iget-object v2, v7, Lcom/facebook/ads/redexgen/X/YQ;->A0h:Lcom/facebook/ads/redexgen/X/BI;

    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/YQ;->A04()J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/BI;->A0L(J)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 60076
    const/16 v2, 0x37

    const/16 v1, 0x1d

    const/16 v0, 0x11

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/YQ;->A0I(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 60077
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/YQ;->reset()V

    .line 60078
    return v6

    .line 60079
    :cond_15
    const/4 v0, 0x0

    return v0
.end method

.method public final A7X()V
    .locals 2

    .line 60080
    iget v1, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0D:I

    const/4 v0, 0x1

    if-ne v1, v0, :cond_0

    .line 60081
    const/4 v0, 0x2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0D:I

    .line 60082
    :cond_0
    return-void
.end method

.method public final A7b()Z
    .locals 3

    .line 60083
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/YQ;->A0V()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0h:Lcom/facebook/ads/redexgen/X/BI;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/YQ;->A04()J

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

.method public final A7y(I)Z
    .locals 3

    .line 60084
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Ic;->A0d(I)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 60085
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

    .line 60086
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0g:Lcom/facebook/ads/redexgen/X/As;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/As;->A04(I)Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_1
    return v2

    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public final A7z()Z
    .locals 1

    .line 60087
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/YQ;->A0V()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0W:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/YQ;->A7b()Z

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
    .locals 4

    .line 60088
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0Y:Z

    .line 60089
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/YQ;->A0V()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 60090
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0h:Lcom/facebook/ads/redexgen/X/BI;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/BI;->A0F()V

    .line 60091
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0M:Landroid/media/AudioTrack;

    sget-object v1, Lcom/facebook/ads/redexgen/X/YQ;->A0s:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1f

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/YQ;->A0s:[Ljava/lang/String;

    const-string v1, "NrYH7da7InJYZ7DcifiCDIWgHy9XttZ"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-virtual {v3}, Landroid/media/AudioTrack;->play()V

    .line 60092
    :cond_1
    return-void
.end method

.method public final ACU()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/BB;
        }
    .end annotation

    .line 60093
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0W:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/YQ;->A0V()Z

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/YQ;->A0s:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/16 v0, 0x12

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/YQ;->A0s:[Ljava/lang/String;

    const-string v1, "potoNIjJr8c5PhhOHWP3V8xbrUltb98O"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "s7h49TBBG9Upv5zOzLPi805BwVxtpEdY"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-nez v3, :cond_2

    .line 60094
    :cond_1
    return-void

    .line 60095
    :cond_2
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/YQ;->A0U()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 60096
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0h:Lcom/facebook/ads/redexgen/X/BI;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/YQ;->A04()J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/BI;->A0G(J)V

    .line 60097
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0M:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 60098
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/YQ;->A03:I

    .line 60099
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0W:Z

    .line 60100
    :cond_3
    return-void
.end method

.method public final ACz()V
    .locals 7

    .line 60101
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/YQ;->reset()V

    .line 60102
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/YQ;->A0L()V

    .line 60103
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0o:[Lcom/facebook/ads/redexgen/X/Az;

    array-length v5, v6

    const/4 v4, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v0, v6, v3

    .line 60104
    .local v3, "audioProcessor":Lcom/facebook/ads/redexgen/X/Az;
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Az;->reset()V

    sget-object v1, Lcom/facebook/ads/redexgen/X/YQ;->A0s:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1f

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 60105
    .end local v3    # "audioProcessor":Lcom/facebook/ads/redexgen/X/Az;
    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/YQ;->A0s:[Ljava/lang/String;

    const-string v1, "qwdTDv5zTd3QZESqVqPfOIKdJj7Lz8kg"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "LbdTDWALSGuogzF76GUONHDiI7JL2ED4"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 60106
    :cond_1
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0n:[Lcom/facebook/ads/redexgen/X/Az;

    array-length v2, v3

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_2

    aget-object v0, v3, v1

    .line 60107
    .restart local v3    # "audioProcessor":Lcom/facebook/ads/redexgen/X/Az;
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Az;->reset()V

    .line 60108
    .end local v3    # "audioProcessor":Lcom/facebook/ads/redexgen/X/Az;
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 60109
    :cond_2
    iput v4, p0, Lcom/facebook/ads/redexgen/X/YQ;->A01:I

    .line 60110
    iput-boolean v4, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0Y:Z

    sget-object v1, Lcom/facebook/ads/redexgen/X/YQ;->A0s:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/4 v0, 0x5

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x76

    if-eq v1, v0, :cond_3

    .line 60111
    sget-object v2, Lcom/facebook/ads/redexgen/X/YQ;->A0s:[Ljava/lang/String;

    const-string v1, "7yJp0zMcRreZgWUPzTirOlbpECU1qPL"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    return-void

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/YQ;->A0s:[Ljava/lang/String;

    const-string v1, "IJdzF7l1OUCqcHSZRNfx63TpictB3CeC"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "IidC6PogfV1YW6p29FProDWayU60rDbu"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    return-void
.end method

.method public final ADf(Lcom/facebook/ads/redexgen/X/Ar;)V
    .locals 1

    .line 60112
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0Q:Lcom/facebook/ads/redexgen/X/Ar;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Ar;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60113
    return-void

    .line 60114
    :cond_0
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0Q:Lcom/facebook/ads/redexgen/X/Ar;

    .line 60115
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0b:Z

    if-eqz v0, :cond_1

    .line 60116
    return-void

    .line 60117
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/YQ;->reset()V

    .line 60118
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/YQ;->A01:I

    .line 60119
    return-void
.end method

.method public final ADm(Lcom/facebook/ads/redexgen/X/BA;)V
    .locals 0

    .line 60120
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0R:Lcom/facebook/ads/redexgen/X/BA;

    .line 60121
    return-void
.end method

.method public final ADq(Lcom/facebook/ads/redexgen/X/AL;)Lcom/facebook/ads/redexgen/X/AL;
    .locals 1

    .line 60122
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/YQ;->A0V()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0V:Z

    if-nez v0, :cond_0

    .line 60123
    sget-object v0, Lcom/facebook/ads/redexgen/X/AL;->A04:Lcom/facebook/ads/redexgen/X/AL;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0P:Lcom/facebook/ads/redexgen/X/AL;

    .line 60124
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0P:Lcom/facebook/ads/redexgen/X/AL;

    return-object v0

    .line 60125
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0O:Lcom/facebook/ads/redexgen/X/AL;

    if-eqz v0, :cond_3

    .line 60126
    .local p0, "lastSetPlaybackParameters":Lcom/facebook/ads/redexgen/X/AL;
    :goto_0
    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/AL;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 60127
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/YQ;->A0V()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 60128
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0O:Lcom/facebook/ads/redexgen/X/AL;

    .line 60129
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0P:Lcom/facebook/ads/redexgen/X/AL;

    return-object v0

    .line 60130
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0j:Lcom/facebook/ads/redexgen/X/BL;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/BL;->A3S(Lcom/facebook/ads/redexgen/X/AL;)Lcom/facebook/ads/redexgen/X/AL;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0P:Lcom/facebook/ads/redexgen/X/AL;

    goto :goto_1

    .line 60131
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0l:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 60132
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0l:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/BN;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/BN;->A02(Lcom/facebook/ads/redexgen/X/BN;)Lcom/facebook/ads/redexgen/X/AL;

    move-result-object v0

    goto :goto_0

    .line 60133
    :cond_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0P:Lcom/facebook/ads/redexgen/X/AL;

    goto :goto_0
.end method

.method public final pause()V
    .locals 1

    .line 60134
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0Y:Z

    .line 60135
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/YQ;->A0V()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0h:Lcom/facebook/ads/redexgen/X/BI;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/BI;->A0J()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60136
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0M:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    .line 60137
    :cond_0
    return-void
.end method

.method public final reset()V
    .locals 8

    .line 60138
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/YQ;->A0V()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 60139
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0J:J

    .line 60140
    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0I:J

    .line 60141
    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0L:J

    .line 60142
    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0K:J

    .line 60143
    const/4 v6, 0x0

    iput v6, p0, Lcom/facebook/ads/redexgen/X/YQ;->A05:I

    .line 60144
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0O:Lcom/facebook/ads/redexgen/X/AL;

    const/4 v5, 0x0

    if-eqz v0, :cond_3

    .line 60145
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0P:Lcom/facebook/ads/redexgen/X/AL;

    .line 60146
    iput-object v5, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0O:Lcom/facebook/ads/redexgen/X/AL;

    .line 60147
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0l:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 60148
    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0F:J

    .line 60149
    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0G:J

    .line 60150
    iput-object v5, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0T:Ljava/nio/ByteBuffer;

    .line 60151
    iput-object v5, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0U:Ljava/nio/ByteBuffer;

    .line 60152
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/YQ;->A0J()V

    .line 60153
    iput-boolean v6, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0W:Z

    .line 60154
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/YQ;->A04:I

    .line 60155
    iput-object v5, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0S:Ljava/nio/ByteBuffer;

    .line 60156
    iput v6, p0, Lcom/facebook/ads/redexgen/X/YQ;->A03:I

    .line 60157
    iput v6, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0D:I

    .line 60158
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0h:Lcom/facebook/ads/redexgen/X/BI;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/BI;->A0I()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 60159
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0M:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    .line 60160
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0M:Landroid/media/AudioTrack;

    .line 60161
    .local p0, "toRelease":Landroid/media/AudioTrack;
    iput-object v5, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0M:Landroid/media/AudioTrack;

    .line 60162
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0h:Lcom/facebook/ads/redexgen/X/BI;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/BI;->A0E()V

    .line 60163
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0f:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 60164
    new-instance v0, Lcom/facebook/ads/redexgen/X/BJ;

    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/redexgen/X/BJ;-><init>(Lcom/facebook/ads/redexgen/X/YQ;Landroid/media/AudioTrack;)V

    .line 60165
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/BJ;->start()V

    .line 60166
    .end local p0    # "toRelease":Landroid/media/AudioTrack;
    :cond_2
    return-void

    .line 60167
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0l:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 60168
    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0l:Ljava/util/ArrayDeque;

    sget-object v1, Lcom/facebook/ads/redexgen/X/YQ;->A0s:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/4 v0, 0x5

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x76

    if-eq v1, v0, :cond_4

    sget-object v4, Lcom/facebook/ads/redexgen/X/YQ;->A0s:[Ljava/lang/String;

    const-string v1, "7Zd0LJuJ8v1AsDIGeh9Ten8e10sO09Lx"

    const/4 v0, 0x7

    aput-object v1, v4, v0

    invoke-virtual {v7}, Ljava/util/ArrayDeque;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/BN;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/BN;->A02(Lcom/facebook/ads/redexgen/X/BN;)Lcom/facebook/ads/redexgen/X/AL;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/YQ;->A0P:Lcom/facebook/ads/redexgen/X/AL;

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final setVolume(F)V
    .locals 1

    .line 60169
    iget v0, p0, Lcom/facebook/ads/redexgen/X/YQ;->A00:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 60170
    iput p1, p0, Lcom/facebook/ads/redexgen/X/YQ;->A00:F

    .line 60171
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/YQ;->A0M()V

    .line 60172
    :cond_0
    return-void
.end method
