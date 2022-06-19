.class public final Lcom/facebook/ads/redexgen/X/Ee;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Eb;,
        Lcom/facebook/ads/redexgen/X/Ed;,
        Lcom/facebook/ads/redexgen/X/EX;
    }
.end annotation


# static fields
.field public static A0F:[B


# instance fields
.field public A00:I

.field public A01:Z

.field public A02:Z

.field public A03:Z

.field public final A04:I

.field public final A05:I

.field public final A06:Landroid/os/Handler;

.field public final A07:Landroid/os/Handler;

.field public final A08:Landroid/os/HandlerThread;

.field public final A09:Lcom/facebook/ads/redexgen/X/EK;

.field public final A0A:Lcom/facebook/ads/redexgen/X/Ej;

.field public final A0B:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/facebook/ads/redexgen/X/Eb;",
            ">;"
        }
    .end annotation
.end field

.field public final A0C:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/facebook/ads/redexgen/X/Eb;",
            ">;"
        }
    .end annotation
.end field

.field public final A0D:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/facebook/ads/redexgen/X/EX;",
            ">;"
        }
    .end annotation
.end field

.field public final A0E:[Lcom/facebook/ads/internal/exoplayer2/offline/DownloadAction$Deserializer;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Ee;->A0C()V

    return-void
.end method

.method public varargs constructor <init>(Lcom/facebook/ads/redexgen/X/Ej;IILjava/io/File;[Lcom/facebook/ads/internal/exoplayer2/offline/DownloadAction$Deserializer;)V
    .locals 5

    .line 29603
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29604
    array-length v0, p5

    const/4 v4, 0x1

    if-lez v0, :cond_1

    const/4 v3, 0x1

    :goto_0
    const/16 v2, 0x10

    const/16 v1, 0x26

    const/16 v0, 0x39

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ee;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/Hx;->A05(ZLjava/lang/Object;)V

    .line 29605
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ee;->A0A:Lcom/facebook/ads/redexgen/X/Ej;

    .line 29606
    iput p2, p0, Lcom/facebook/ads/redexgen/X/Ee;->A04:I

    .line 29607
    iput p3, p0, Lcom/facebook/ads/redexgen/X/Ee;->A05:I

    .line 29608
    new-instance v0, Lcom/facebook/ads/redexgen/X/EK;

    invoke-direct {v0, p4}, Lcom/facebook/ads/redexgen/X/EK;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ee;->A09:Lcom/facebook/ads/redexgen/X/EK;

    .line 29609
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/Ee;->A0E:[Lcom/facebook/ads/internal/exoplayer2/offline/DownloadAction$Deserializer;

    .line 29610
    iput-boolean v4, p0, Lcom/facebook/ads/redexgen/X/Ee;->A01:Z

    .line 29611
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ee;->A0C:Ljava/util/ArrayList;

    .line 29612
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ee;->A0B:Ljava/util/ArrayList;

    .line 29613
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    .line 29614
    .local p0, "looper":Landroid/os/Looper;
    if-nez v1, :cond_0

    .line 29615
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    .line 29616
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ee;->A07:Landroid/os/Handler;

    .line 29617
    const/16 v2, 0x36

    const/16 v1, 0x18

    const/16 v0, 0x5a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ee;->A05(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Landroid/os/HandlerThread;

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ee;->A08:Landroid/os/HandlerThread;

    .line 29618
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ee;->A08:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 29619
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ee;->A08:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ee;->A06:Landroid/os/Handler;

    .line 29620
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ee;->A0D:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 29621
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ee;->A08()V

    .line 29622
    return-void

    .line 29623
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/Ee;)Landroid/os/Handler;
    .locals 0

    .line 29624
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Ee;->A07:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/Ee;)Lcom/facebook/ads/redexgen/X/EK;
    .locals 0

    .line 29625
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Ee;->A09:Lcom/facebook/ads/redexgen/X/EK;

    return-object p0
.end method

.method private A02(Lcom/facebook/ads/internal/exoplayer2/offline/DownloadAction;)Lcom/facebook/ads/redexgen/X/Eb;
    .locals 9

    .line 29626
    new-instance v3, Lcom/facebook/ads/redexgen/X/Eb;

    iget v4, p0, Lcom/facebook/ads/redexgen/X/Ee;->A00:I

    add-int/lit8 v0, v4, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ee;->A00:I

    iget v7, p0, Lcom/facebook/ads/redexgen/X/Ee;->A05:I

    const/4 v8, 0x0

    move-object v5, p0

    move-object v6, p1

    invoke-direct/range {v3 .. v8}, Lcom/facebook/ads/redexgen/X/Eb;-><init>(ILcom/facebook/ads/redexgen/X/Ee;Lcom/facebook/ads/internal/exoplayer2/offline/DownloadAction;ILcom/facebook/ads/redexgen/X/ET;)V

    .line 29627
    .local p0, "task":Lcom/facebook/ads/redexgen/X/Eb;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ee;->A0C:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29628
    const/16 v2, 0x4e

    const/16 v1, 0xd

    const/16 v0, 0x3d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ee;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/Ee;->A0J(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Eb;)V

    .line 29629
    return-object v3
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/Ee;Lcom/facebook/ads/internal/exoplayer2/offline/DownloadAction;)Lcom/facebook/ads/redexgen/X/Eb;
    .locals 0

    .line 29630
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Ee;->A02(Lcom/facebook/ads/internal/exoplayer2/offline/DownloadAction;)Lcom/facebook/ads/redexgen/X/Eb;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/Ee;)Lcom/facebook/ads/redexgen/X/Ej;
    .locals 0

    .line 29631
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Ee;->A0A:Lcom/facebook/ads/redexgen/X/Ej;

    return-object p0
.end method

.method public static A05(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ee;->A0F:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x5d

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/Ee;)Ljava/util/ArrayList;
    .locals 0

    .line 29632
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Ee;->A0C:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static synthetic A07(Lcom/facebook/ads/redexgen/X/Ee;)Ljava/util/concurrent/CopyOnWriteArraySet;
    .locals 0

    .line 29633
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Ee;->A0D:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-object p0
.end method

.method private A08()V
    .locals 2

    .line 29634
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ee;->A06:Landroid/os/Handler;

    new-instance v0, Lcom/facebook/ads/redexgen/X/EV;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/EV;-><init>(Lcom/facebook/ads/redexgen/X/Ee;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 29635
    return-void
.end method

.method private A09()V
    .locals 2

    .line 29636
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ee;->A0R()Z

    move-result v0

    if-nez v0, :cond_0

    .line 29637
    return-void

    .line 29638
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ee;->A0D:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/EX;

    .line 29639
    .local v0, "listener":Lcom/facebook/ads/redexgen/X/EX;
    invoke-interface {v0, p0}, Lcom/facebook/ads/redexgen/X/EX;->AAH(Lcom/facebook/ads/redexgen/X/Ee;)V

    .line 29640
    .end local v0    # "listener":Lcom/facebook/ads/redexgen/X/EX;
    goto :goto_0

    .line 29641
    :cond_1
    return-void
.end method

.method private A0A()V
    .locals 12

    .line 29642
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ee;->A02:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ee;->A03:Z

    if-eqz v0, :cond_1

    .line 29643
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/Ee;
    :cond_0
    return-void

    .line 29644
    :cond_1
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ee;->A01:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ee;->A0B:Ljava/util/ArrayList;

    .line 29645
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ee;->A04:I

    if-ne v1, v0, :cond_a

    :cond_2
    const/4 v0, 0x1

    .line 29646
    .local p0, "skipDownloadActions":Z
    :goto_0
    const/4 v5, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ee;->A0C:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v5, v1, :cond_b

    .line 29647
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ee;->A0C:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/facebook/ads/redexgen/X/Eb;

    .line 29648
    .local v0, "task":Lcom/facebook/ads/redexgen/X/Eb;
    invoke-static {v8}, Lcom/facebook/ads/redexgen/X/Eb;->A0I(Lcom/facebook/ads/redexgen/X/Eb;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 29649
    .end local v0    # "task":Lcom/facebook/ads/redexgen/X/Eb;
    .end local v1
    .end local v0
    .end local v0
    :cond_3
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 29650
    :cond_4
    invoke-static {v8}, Lcom/facebook/ads/redexgen/X/Eb;->A06(Lcom/facebook/ads/redexgen/X/Eb;)Lcom/facebook/ads/internal/exoplayer2/offline/DownloadAction;

    move-result-object v9

    .line 29651
    .local v1, "action":Lcom/facebook/ads/internal/exoplayer2/offline/DownloadAction;
    iget-boolean v7, v9, Lcom/facebook/ads/internal/exoplayer2/offline/DownloadAction;->A03:Z

    .line 29652
    .local v0, "isRemoveAction":Z
    if-nez v7, :cond_5

    if-eqz v0, :cond_5

    goto :goto_2

    .line 29653
    :cond_5
    const/4 v11, 0x1

    .line 29654
    .local v0, "canStartTask":Z
    const/4 v6, 0x0

    .local v5, "j":I
    :goto_3
    if-ge v6, v5, :cond_8

    .line 29655
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ee;->A0C:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/facebook/ads/redexgen/X/Eb;

    .line 29656
    .local v1, "otherTask":Lcom/facebook/ads/redexgen/X/Eb;
    invoke-static {v10}, Lcom/facebook/ads/redexgen/X/Eb;->A06(Lcom/facebook/ads/redexgen/X/Eb;)Lcom/facebook/ads/internal/exoplayer2/offline/DownloadAction;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/facebook/ads/internal/exoplayer2/offline/DownloadAction;->A0A(Lcom/facebook/ads/internal/exoplayer2/offline/DownloadAction;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 29657
    if-eqz v7, :cond_7

    .line 29658
    const/4 v11, 0x0

    .line 29659
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    const/16 v2, 0xe

    const/4 v1, 0x4

    invoke-static {v3, v2, v1}, Lcom/facebook/ads/redexgen/X/Ee;->A05(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29660
    invoke-static {v10}, Lcom/facebook/ads/redexgen/X/Eb;->A0D(Lcom/facebook/ads/redexgen/X/Eb;)V

    .line 29661
    .end local v1    # "otherTask":Lcom/facebook/ads/redexgen/X/Eb;
    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 29662
    :cond_7
    invoke-static {v10}, Lcom/facebook/ads/redexgen/X/Eb;->A06(Lcom/facebook/ads/redexgen/X/Eb;)Lcom/facebook/ads/internal/exoplayer2/offline/DownloadAction;

    move-result-object v1

    iget-boolean v1, v1, Lcom/facebook/ads/internal/exoplayer2/offline/DownloadAction;->A03:Z

    if-eqz v1, :cond_6

    .line 29663
    const/4 v11, 0x0

    .line 29664
    const/4 v0, 0x1

    .line 29665
    .end local v5    # "j":I
    :cond_8
    if-eqz v11, :cond_3

    .line 29666
    invoke-static {v8}, Lcom/facebook/ads/redexgen/X/Eb;->A0E(Lcom/facebook/ads/redexgen/X/Eb;)V

    .line 29667
    if-nez v7, :cond_3

    .line 29668
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ee;->A0B:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29669
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ee;->A0B:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ee;->A04:I

    if-ne v1, v0, :cond_9

    const/4 v0, 0x1

    goto :goto_2

    :cond_9
    const/4 v0, 0x0

    goto :goto_2

    .line 29670
    :cond_a
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 29671
    .end local v0    # "canStartTask":Z
    :cond_b
    return-void
.end method

.method private A0B()V
    .locals 3

    .line 29672
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ee;->A03:Z

    if-eqz v0, :cond_0

    .line 29673
    return-void

    .line 29674
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ee;->A0C:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v2, v0, [Lcom/facebook/ads/internal/exoplayer2/offline/DownloadAction;

    .line 29675
    .local p0, "actions":[Lcom/facebook/ads/internal/exoplayer2/offline/DownloadAction;
    const/4 v1, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ee;->A0C:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 29676
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ee;->A0C:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Eb;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Eb;->A06(Lcom/facebook/ads/redexgen/X/Eb;)Lcom/facebook/ads/internal/exoplayer2/offline/DownloadAction;

    move-result-object v0

    aput-object v0, v2, v1

    .line 29677
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 29678
    .end local v0    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ee;->A06:Landroid/os/Handler;

    new-instance v0, Lcom/facebook/ads/redexgen/X/EW;

    invoke-direct {v0, p0, v2}, Lcom/facebook/ads/redexgen/X/EW;-><init>(Lcom/facebook/ads/redexgen/X/Ee;[Lcom/facebook/ads/internal/exoplayer2/offline/DownloadAction;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 29679
    return-void
.end method

.method public static A0C()V
    .locals 1

    const/16 v0, 0x70

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Ee;->A0F:[B

    return-void

    :array_0
    .array-data 1
        -0x7ft
        -0x3ct
        -0x33t
        -0x3et
        -0x2ct
        -0x37t
        -0x3at
        -0x2ct
        -0x7ft
        -0x28t
        -0x36t
        -0x2bt
        -0x37t
        -0x7ft
        -0x20t
        -0x3at
        -0x29t
        0xat
        -0x4at
        0x2t
        -0x5t
        -0x9t
        0x9t
        0xat
        -0x4at
        0x5t
        0x4t
        -0x5t
        -0x4at
        -0x26t
        -0x5t
        0x9t
        -0x5t
        0x8t
        -0x1t
        -0x9t
        0x2t
        -0x1t
        0x10t
        -0x5t
        0x8t
        -0x4at
        -0x1t
        0x9t
        -0x4at
        0x8t
        -0x5t
        0x7t
        0xbt
        -0x1t
        0x8t
        -0x5t
        -0x6t
        -0x3ct
        -0x5t
        0x26t
        0x2et
        0x25t
        0x23t
        0x26t
        0x18t
        0x1bt
        0x4t
        0x18t
        0x25t
        0x18t
        0x1et
        0x1ct
        0x29t
        -0x29t
        0x1dt
        0x20t
        0x23t
        0x1ct
        -0x29t
        0x20t
        -0x1at
        0x26t
        -0x12t
        -0x5t
        0xdt
        0x5t
        -0x46t
        0x3t
        0xdt
        -0x46t
        -0x5t
        -0x2t
        -0x2t
        -0x1t
        -0x2t
        -0x1at
        -0xdt
        0x5t
        -0x3t
        -0x4et
        0x5t
        0x6t
        -0xdt
        0x6t
        -0x9t
        -0x4et
        -0x5t
        0x5t
        -0x4et
        -0xbt
        -0x6t
        -0xdt
        0x0t
        -0x7t
        -0x9t
        -0xat
    .end array-data
.end method

.method private A0D(Lcom/facebook/ads/redexgen/X/Eb;)V
    .locals 3

    .line 29680
    const/16 v2, 0x5b

    const/16 v1, 0x15

    const/16 v0, 0x35

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ee;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/Ee;->A0J(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Eb;)V

    .line 29681
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Eb;->A0L()Lcom/facebook/ads/redexgen/X/Ed;

    move-result-object v2

    .line 29682
    .local p0, "taskState":Lcom/facebook/ads/redexgen/X/Ed;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ee;->A0D:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/EX;

    .line 29683
    .local v2, "listener":Lcom/facebook/ads/redexgen/X/EX;
    invoke-interface {v0, p0, v2}, Lcom/facebook/ads/redexgen/X/EX;->ABn(Lcom/facebook/ads/redexgen/X/Ee;Lcom/facebook/ads/redexgen/X/Ed;)V

    .line 29684
    .end local v2    # "listener":Lcom/facebook/ads/redexgen/X/EX;
    goto :goto_0

    .line 29685
    :cond_0
    return-void
.end method

.method private A0E(Lcom/facebook/ads/redexgen/X/Eb;)V
    .locals 2

    .line 29686
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ee;->A03:Z

    if-eqz v0, :cond_0

    .line 29687
    return-void

    .line 29688
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Eb;->A0M()Z

    move-result v0

    xor-int/lit8 v1, v0, 0x1

    .line 29689
    .local p0, "stopped":Z
    if-eqz v1, :cond_1

    .line 29690
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ee;->A0B:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 29691
    :cond_1
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Ee;->A0D(Lcom/facebook/ads/redexgen/X/Eb;)V

    .line 29692
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Eb;->A0N()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 29693
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ee;->A0C:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 29694
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ee;->A0B()V

    .line 29695
    :cond_2
    if-eqz v1, :cond_3

    .line 29696
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ee;->A0A()V

    .line 29697
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ee;->A09()V

    .line 29698
    :cond_3
    return-void
.end method

.method public static synthetic A0F(Lcom/facebook/ads/redexgen/X/Ee;)V
    .locals 0

    .line 29699
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ee;->A0B()V

    return-void
.end method

.method public static synthetic A0G(Lcom/facebook/ads/redexgen/X/Ee;)V
    .locals 0

    .line 29700
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ee;->A0A()V

    return-void
.end method

.method public static synthetic A0H(Lcom/facebook/ads/redexgen/X/Ee;Lcom/facebook/ads/redexgen/X/Eb;)V
    .locals 0

    .line 29701
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Ee;->A0D(Lcom/facebook/ads/redexgen/X/Eb;)V

    return-void
.end method

.method public static synthetic A0I(Lcom/facebook/ads/redexgen/X/Ee;Lcom/facebook/ads/redexgen/X/Eb;)V
    .locals 0

    .line 29702
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Ee;->A0E(Lcom/facebook/ads/redexgen/X/Eb;)V

    return-void
.end method

.method public static A0J(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Eb;)V
    .locals 4

    .line 29703
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xe

    const/4 v1, 0x2

    const/16 v0, 0x49

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ee;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29704
    return-void
.end method

.method public static synthetic A0K(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Eb;)V
    .locals 0

    .line 29705
    invoke-static {p0, p1}, Lcom/facebook/ads/redexgen/X/Ee;->A0J(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Eb;)V

    return-void
.end method

.method public static synthetic A0L(Lcom/facebook/ads/redexgen/X/Ee;)Z
    .locals 0

    .line 29706
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/Ee;->A03:Z

    return p0
.end method

.method public static synthetic A0M(Lcom/facebook/ads/redexgen/X/Ee;Z)Z
    .locals 0

    .line 29707
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/Ee;->A02:Z

    return p1
.end method

.method public static synthetic A0N(Lcom/facebook/ads/redexgen/X/Ee;)[Lcom/facebook/ads/internal/exoplayer2/offline/DownloadAction$Deserializer;
    .locals 0

    .line 29708
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Ee;->A0E:[Lcom/facebook/ads/internal/exoplayer2/offline/DownloadAction$Deserializer;

    return-object p0
.end method


# virtual methods
.method public final A0O(Lcom/facebook/ads/internal/exoplayer2/offline/DownloadAction;)I
    .locals 2

    .line 29709
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ee;->A03:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A04(Z)V

    .line 29710
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Ee;->A02(Lcom/facebook/ads/internal/exoplayer2/offline/DownloadAction;)Lcom/facebook/ads/redexgen/X/Eb;

    move-result-object v1

    .line 29711
    .local p0, "task":Lcom/facebook/ads/redexgen/X/Eb;
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ee;->A02:Z

    if-eqz v0, :cond_0

    .line 29712
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ee;->A0B()V

    .line 29713
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ee;->A0A()V

    .line 29714
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/Eb;->A03(Lcom/facebook/ads/redexgen/X/Eb;)I

    move-result v0

    if-nez v0, :cond_0

    .line 29715
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/Ee;->A0D(Lcom/facebook/ads/redexgen/X/Eb;)V

    .line 29716
    :cond_0
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/Eb;->A04(Lcom/facebook/ads/redexgen/X/Eb;)I

    move-result v0

    return v0
.end method

.method public final A0P()V
    .locals 1

    .line 29717
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ee;->A03:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A04(Z)V

    .line 29718
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ee;->A01:Z

    if-eqz v0, :cond_0

    .line 29719
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ee;->A01:Z

    .line 29720
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ee;->A0A()V

    .line 29721
    :cond_0
    return-void
.end method

.method public final A0Q(Lcom/facebook/ads/redexgen/X/EX;)V
    .locals 1

    .line 29722
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ee;->A0D:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 29723
    return-void
.end method

.method public final A0R()Z
    .locals 4

    .line 29724
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ee;->A03:Z

    const/4 v3, 0x1

    xor-int/2addr v0, v3

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A04(Z)V

    .line 29725
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ee;->A02:Z

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 29726
    return v2

    .line 29727
    :cond_0
    const/4 v1, 0x0

    .local p0, "i":I
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ee;->A0C:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 29728
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ee;->A0C:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Eb;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Eb;->A0M()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 29729
    return v2

    .line 29730
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 29731
    .end local p0    # "i":I
    :cond_2
    return v3
.end method

.method public final A0S()[Lcom/facebook/ads/redexgen/X/Ed;
    .locals 3

    .line 29732
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ee;->A03:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A04(Z)V

    .line 29733
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ee;->A0C:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v2, v0, [Lcom/facebook/ads/redexgen/X/Ed;

    .line 29734
    .local p0, "states":[Lcom/facebook/ads/redexgen/X/Ed;
    const/4 v1, 0x0

    .local v0, "i":I
    :goto_0
    array-length v0, v2

    if-ge v1, v0, :cond_0

    .line 29735
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ee;->A0C:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Eb;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Eb;->A0L()Lcom/facebook/ads/redexgen/X/Ed;

    move-result-object v0

    aput-object v0, v2, v1

    .line 29736
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 29737
    .end local v0    # "i":I
    :cond_0
    return-object v2
.end method
