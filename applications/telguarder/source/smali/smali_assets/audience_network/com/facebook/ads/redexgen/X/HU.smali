.class public final Lcom/facebook/ads/redexgen/X/HU;
.super Landroid/os/Handler;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Tn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "LoadTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/facebook/ads/redexgen/X/HV;",
        ">",
        "Landroid/os/Handler;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field public static A0A:[B

.field public static A0B:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:Lcom/facebook/ads/redexgen/X/HT;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/HT<",
            "TT;>;"
        }
    .end annotation
.end field

.field public A02:Ljava/io/IOException;

.field public final A03:I

.field public final A04:J

.field public final A05:Lcom/facebook/ads/redexgen/X/HV;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public volatile A06:Ljava/lang/Thread;

.field public volatile A07:Z

.field public volatile A08:Z

.field public final synthetic A09:Lcom/facebook/ads/redexgen/X/Tn;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/HU;->A05()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/HU;->A04()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Tn;Landroid/os/Looper;Lcom/facebook/ads/redexgen/X/HV;Lcom/facebook/ads/redexgen/X/HT;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "TT;",
            "Lcom/facebook/ads/redexgen/X/HT<",
            "TT;>;IJ)V"
        }
    .end annotation

    .line 36528
    .local p0, "this":Lcom/facebook/ads/redexgen/X/HU;, "Lcom/facebook/ads/internal/exoplayer2/upstream/Loader$LoadTask<TT;>;"
    .local p3, "loadable":Lcom/facebook/ads/redexgen/X/HV;, "TT;"
    .local p4, "callback":Lcom/facebook/ads/redexgen/X/HT;, "Lcom/facebook/ads/internal/exoplayer2/upstream/Loader$Callback<TT;>;"
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/HU;->A09:Lcom/facebook/ads/redexgen/X/Tn;

    .line 36529
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 36530
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/HU;->A05:Lcom/facebook/ads/redexgen/X/HV;

    .line 36531
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/HU;->A01:Lcom/facebook/ads/redexgen/X/HT;

    .line 36532
    iput p5, p0, Lcom/facebook/ads/redexgen/X/HU;->A03:I

    .line 36533
    iput-wide p6, p0, Lcom/facebook/ads/redexgen/X/HU;->A04:J

    .line 36534
    return-void
.end method

.method private A00()J
    .locals 2

    .line 36535
    .local v0, "this":Lcom/facebook/ads/redexgen/X/HU;, "Lcom/facebook/ads/internal/exoplayer2/upstream/Loader$LoadTask<TT;>;"
    iget v0, p0, Lcom/facebook/ads/redexgen/X/HU;->A00:I

    add-int/lit8 v0, v0, -0x1

    mul-int/lit16 v1, v0, 0x3e8

    const/16 v0, 0x1388

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/HU;->A0A:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x8

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A02()V
    .locals 2

    .line 36536
    .local v0, "this":Lcom/facebook/ads/redexgen/X/HU;, "Lcom/facebook/ads/internal/exoplayer2/upstream/Loader$LoadTask<TT;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/HU;->A02:Ljava/io/IOException;

    .line 36537
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HU;->A09:Lcom/facebook/ads/redexgen/X/Tn;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Tn;->A03(Lcom/facebook/ads/redexgen/X/Tn;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HU;->A09:Lcom/facebook/ads/redexgen/X/Tn;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Tn;->A00(Lcom/facebook/ads/redexgen/X/Tn;)Lcom/facebook/ads/redexgen/X/HU;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 36538
    return-void
.end method

.method private A03()V
    .locals 2

    .line 36539
    .local v0, "this":Lcom/facebook/ads/redexgen/X/HU;, "Lcom/facebook/ads/internal/exoplayer2/upstream/Loader$LoadTask<TT;>;"
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/HU;->A09:Lcom/facebook/ads/redexgen/X/Tn;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Tn;->A01(Lcom/facebook/ads/redexgen/X/Tn;Lcom/facebook/ads/redexgen/X/HU;)Lcom/facebook/ads/redexgen/X/HU;

    .line 36540
    return-void
.end method

.method public static A04()V
    .locals 1

    const/16 v0, 0x9b

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/HU;->A0A:[B

    return-void

    :array_0
    .array-data 1
        -0x53t
        -0x30t
        -0x3et
        -0x3bt
        -0x4bt
        -0x3et
        -0x2ct
        -0x34t
        -0x2ft
        -0x9t
        -0xat
        -0x2ft
        -0x18t
        -0x31t
        -0x19t
        -0x11t
        -0xft
        -0xct
        -0x5t
        -0x5et
        -0x19t
        -0xct
        -0xct
        -0xft
        -0xct
        -0x5et
        -0x12t
        -0xft
        -0x1dt
        -0x1at
        -0x15t
        -0x10t
        -0x17t
        -0x5et
        -0xbt
        -0xat
        -0xct
        -0x19t
        -0x1dt
        -0x11t
        -0x4dt
        -0x34t
        -0x3dt
        -0x2at
        -0x32t
        -0x3dt
        -0x3ft
        -0x2et
        -0x3dt
        -0x3et
        0x7et
        -0x3dt
        -0x30t
        -0x30t
        -0x33t
        -0x30t
        0x7et
        -0x36t
        -0x33t
        -0x41t
        -0x3et
        -0x39t
        -0x34t
        -0x3bt
        0x7et
        -0x2ft
        -0x2et
        -0x30t
        -0x3dt
        -0x41t
        -0x35t
        -0x29t
        -0x10t
        -0x19t
        -0x6t
        -0xet
        -0x19t
        -0x1bt
        -0xat
        -0x19t
        -0x1at
        -0x5et
        -0x19t
        -0x6t
        -0x1bt
        -0x19t
        -0xet
        -0xat
        -0x15t
        -0xft
        -0x10t
        -0x5et
        -0x16t
        -0x1dt
        -0x10t
        -0x1at
        -0x12t
        -0x15t
        -0x10t
        -0x17t
        -0x5et
        -0x12t
        -0xft
        -0x1dt
        -0x1at
        -0x5et
        -0x1bt
        -0xft
        -0x11t
        -0xet
        -0x12t
        -0x19t
        -0xat
        -0x19t
        -0x1at
        -0x24t
        -0xbt
        -0x14t
        -0x1t
        -0x9t
        -0x14t
        -0x16t
        -0x5t
        -0x14t
        -0x15t
        -0x59t
        -0x14t
        -0x1t
        -0x16t
        -0x14t
        -0x9t
        -0x5t
        -0x10t
        -0xat
        -0xbt
        -0x59t
        -0xdt
        -0xat
        -0x18t
        -0x15t
        -0x10t
        -0xbt
        -0x12t
        -0x59t
        -0x6t
        -0x5t
        -0x7t
        -0x14t
        -0x18t
        -0xct
        0x77t
        0x7at
        0x6ct
        0x6ft
        0x45t
    .end array-data
.end method

.method public static A05()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "WydTn5SsWKolo4qgiawW5wR68Z7QIrMi"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "qWco13JX8JPKvKt7l3PWsxN50xzvCiGS"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "DeXXhgimlqh2fuI6enOAIJvBWsGsoTSw"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "nPmwVljodJInUuF2VMh8JEI"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "ZcD4XQWNjtGnAjmgfK22qPRmHWwQO"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "7mFrk5jUpvjpVMDidEvR6yJYzEGTqVPa"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "OjyJYo2fGItl1rCFLmEsvVe5THjk1Hu2"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "stDFFnSHGkDrxhRJprFbr6FkfUuT0DFj"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/HU;->A0B:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A06(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 36541
    .local v1, "this":Lcom/facebook/ads/redexgen/X/HU;, "Lcom/facebook/ads/internal/exoplayer2/upstream/Loader$LoadTask<TT;>;"
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/HU;->A02:Ljava/io/IOException;

    if-eqz v1, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/HU;->A00:I

    if-gt v0, p1, :cond_1

    .line 36542
    :cond_0
    return-void

    .line 36543
    :cond_1
    throw v1
.end method

.method public final A07(J)V
    .locals 4

    .line 36544
    .local v0, "this":Lcom/facebook/ads/redexgen/X/HU;, "Lcom/facebook/ads/internal/exoplayer2/upstream/Loader$LoadTask<TT;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HU;->A09:Lcom/facebook/ads/redexgen/X/Tn;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Tn;->A00(Lcom/facebook/ads/redexgen/X/Tn;)Lcom/facebook/ads/redexgen/X/HU;

    move-result-object v0

    const/4 v3, 0x0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A04(Z)V

    .line 36545
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HU;->A09:Lcom/facebook/ads/redexgen/X/Tn;

    invoke-static {v0, p0}, Lcom/facebook/ads/redexgen/X/Tn;->A01(Lcom/facebook/ads/redexgen/X/Tn;Lcom/facebook/ads/redexgen/X/HU;)Lcom/facebook/ads/redexgen/X/HU;

    .line 36546
    const-wide/16 v1, 0x0

    cmp-long v0, p1, v1

    if-lez v0, :cond_0

    .line 36547
    invoke-virtual {p0, v3, p1, p2}, Lcom/facebook/ads/redexgen/X/HU;->sendEmptyMessageDelayed(IJ)Z

    .line 36548
    :goto_1
    return-void

    .line 36549
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/HU;->A02()V

    goto :goto_1

    .line 36550
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A08(Z)V
    .locals 10

    .line 36551
    .local p1, "this":Lcom/facebook/ads/redexgen/X/HU;, "Lcom/facebook/ads/internal/exoplayer2/upstream/Loader$LoadTask<TT;>;"
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/HU;->A08:Z

    .line 36552
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/HU;->A02:Ljava/io/IOException;

    .line 36553
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/HU;->hasMessages(I)Z

    move-result v1

    const/4 v0, 0x1

    if-eqz v1, :cond_2

    .line 36554
    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/HU;->removeMessages(I)V

    .line 36555
    if-nez p1, :cond_0

    .line 36556
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/HU;->sendEmptyMessage(I)Z

    .line 36557
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    .line 36558
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/HU;->A03()V

    .line 36559
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 36560
    .local v4, "nowMs":J
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/HU;->A01:Lcom/facebook/ads/redexgen/X/HT;

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/HU;->A05:Lcom/facebook/ads/redexgen/X/HV;

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/HU;->A04:J

    sub-long v7, v5, v0

    const/4 v9, 0x1

    invoke-interface/range {v3 .. v9}, Lcom/facebook/ads/redexgen/X/HT;->AAa(Lcom/facebook/ads/redexgen/X/HV;JJZ)V

    .line 36561
    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/HU;->A01:Lcom/facebook/ads/redexgen/X/HT;

    .line 36562
    .end local v4    # "nowMs":J
    :cond_1
    return-void

    .line 36563
    :cond_2
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/HU;->A07:Z

    .line 36564
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HU;->A05:Lcom/facebook/ads/redexgen/X/HV;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/HV;->A3v()V

    .line 36565
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HU;->A06:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 36566
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HU;->A06:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0
.end method

.method public final handleMessage(Landroid/os/Message;)V
    .locals 16

    invoke-static/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/KV;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object/from16 v0, p0

    .line 36567
    .local v4, "this":Lcom/facebook/ads/redexgen/X/HU;, "Lcom/facebook/ads/internal/exoplayer2/upstream/Loader$LoadTask<TT;>;"
    .local v0, "msg":Landroid/os/Message;
    :try_start_0
    iget-boolean v1, v0, Lcom/facebook/ads/redexgen/X/HU;->A08:Z

    if-eqz v1, :cond_1

    .line 36568
    return-void

    .line 36569
    :cond_1
    move-object/from16 v4, p1

    iget v1, v4, Landroid/os/Message;->what:I

    if-nez v1, :cond_2

    .line 36570
    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/HU;->A02()V

    .line 36571
    return-void

    .line 36572
    .end local v4    # "this":Lcom/facebook/ads/redexgen/X/HU;, "Lcom/facebook/ads/internal/exoplayer2/upstream/Loader$LoadTask<TT;>;"
    :cond_2
    iget v6, v4, Landroid/os/Message;->what:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v5, 0x4

    sget-object v3, Lcom/facebook/ads/redexgen/X/HU;->A0B:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v2, v3, v1

    const/4 v1, 0x5

    aget-object v3, v3, v1

    const/4 v1, 0x5

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v2, v1, :cond_3

    .line 36573
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 36574
    :cond_3
    sget-object v3, Lcom/facebook/ads/redexgen/X/HU;->A0B:[Ljava/lang/String;

    const-string v2, "Pgoby5xo2TsYDyoh2ZaYcWxUwRVDkgU9"

    const/4 v1, 0x0

    aput-object v2, v3, v1

    const-string v2, "7506H5YytdSkuX7PJUeM1ITZXD0wGlvt"

    const/4 v1, 0x5

    aput-object v2, v3, v1

    if-eq v6, v5, :cond_c

    .line 36575
    :try_start_1
    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/HU;->A03()V

    .line 36576
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 36577
    .local v0, "nowMs":J
    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/HU;->A04:J

    sub-long v7, v5, v1

    .line 36578
    .local v1, "durationMs":J
    iget-boolean v1, v0, Lcom/facebook/ads/redexgen/X/HU;->A07:Z

    if-eqz v1, :cond_4

    .line 36579
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/HU;->A01:Lcom/facebook/ads/redexgen/X/HT;

    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/HU;->A05:Lcom/facebook/ads/redexgen/X/HV;

    const/4 v9, 0x0

    invoke-interface/range {v3 .. v9}, Lcom/facebook/ads/redexgen/X/HT;->AAa(Lcom/facebook/ads/redexgen/X/HV;JJZ)V

    .line 36580
    return-void

    .line 36581
    :cond_4
    iget v3, v4, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v3, v1, :cond_5

    goto :goto_0

    .line 36582
    :cond_5
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/HU;->A01:Lcom/facebook/ads/redexgen/X/HT;

    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/HU;->A05:Lcom/facebook/ads/redexgen/X/HV;

    const/4 v9, 0x0

    invoke-interface/range {v3 .. v9}, Lcom/facebook/ads/redexgen/X/HT;->AAa(Lcom/facebook/ads/redexgen/X/HV;JJZ)V

    goto :goto_1

    .line 36583
    :goto_0
    const/4 v2, 0x2

    if-eq v3, v2, :cond_b

    const/4 v1, 0x3

    if-eq v3, v1, :cond_7

    .line 36584
    :cond_6
    :goto_1
    return-void

    .line 36585
    :cond_7
    iget-object v1, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/io/IOException;

    iput-object v1, v0, Lcom/facebook/ads/redexgen/X/HU;->A02:Ljava/io/IOException;

    .line 36586
    iget-object v9, v0, Lcom/facebook/ads/redexgen/X/HU;->A01:Lcom/facebook/ads/redexgen/X/HT;

    iget-object v10, v0, Lcom/facebook/ads/redexgen/X/HU;->A05:Lcom/facebook/ads/redexgen/X/HV;

    iget-object v15, v0, Lcom/facebook/ads/redexgen/X/HU;->A02:Ljava/io/IOException;

    const/4 v1, 0x3

    move-wide v11, v5

    move-wide v13, v7

    invoke-interface/range {v9 .. v15}, Lcom/facebook/ads/redexgen/X/HT;->AAd(Lcom/facebook/ads/redexgen/X/HV;JJLjava/io/IOException;)I

    move-result v5

    .line 36587
    .local p0, "retryAction":I
    if-ne v5, v1, :cond_8

    .line 36588
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/HU;->A09:Lcom/facebook/ads/redexgen/X/Tn;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/HU;->A02:Ljava/io/IOException;

    invoke-static {v2, v1}, Lcom/facebook/ads/redexgen/X/Tn;->A02(Lcom/facebook/ads/redexgen/X/Tn;Ljava/io/IOException;)Ljava/io/IOException;

    goto :goto_1

    .line 36589
    :cond_8
    if-eq v5, v2, :cond_6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36590
    const/4 v4, 0x1

    sget-object v3, Lcom/facebook/ads/redexgen/X/HU;->A0B:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v2, v3, v1

    const/4 v1, 0x6

    aget-object v3, v3, v1

    const/16 v1, 0x17

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v2, v1, :cond_9

    if-ne v5, v4, :cond_a

    :goto_2
    const/4 v1, 0x1

    goto :goto_3

    :cond_9
    sget-object v3, Lcom/facebook/ads/redexgen/X/HU;->A0B:[Ljava/lang/String;

    const-string v2, "pob8hjR0ugeIPxt2GuTKgOWbp9zFYVbF"

    const/4 v1, 0x2

    aput-object v2, v3, v1

    if-ne v5, v4, :cond_a

    goto :goto_2

    :cond_a
    :try_start_2
    iget v1, v0, Lcom/facebook/ads/redexgen/X/HU;->A00:I

    add-int/lit8 v1, v1, 0x1

    :goto_3
    iput v1, v0, Lcom/facebook/ads/redexgen/X/HU;->A00:I

    .line 36591
    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/HU;->A00()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/HU;->A07(J)V

    goto :goto_1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 36592
    .end local p0    # "retryAction":I
    :cond_b
    :try_start_3
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/HU;->A01:Lcom/facebook/ads/redexgen/X/HT;

    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/HU;->A05:Lcom/facebook/ads/redexgen/X/HV;

    invoke-interface/range {v3 .. v8}, Lcom/facebook/ads/redexgen/X/HT;->AAc(Lcom/facebook/ads/redexgen/X/HV;JJ)V

    goto :goto_1
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 36593
    :catch_0
    move-exception v5

    .line 36594
    .local p0, "e":Ljava/lang/RuntimeException;
    :try_start_4
    const/4 v3, 0x0

    const/16 v2, 0x8

    const/16 v1, 0x59

    invoke-static {v3, v2, v1}, Lcom/facebook/ads/redexgen/X/HU;->A01(III)Ljava/lang/String;

    move-result-object v4

    const/16 v3, 0x47

    const/16 v2, 0x2c

    const/16 v1, 0x7a

    invoke-static {v3, v2, v1}, Lcom/facebook/ads/redexgen/X/HU;->A01(III)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 36595
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/HU;->A09:Lcom/facebook/ads/redexgen/X/Tn;

    new-instance v1, Lcom/facebook/ads/redexgen/X/HZ;

    invoke-direct {v1, v5}, Lcom/facebook/ads/redexgen/X/HZ;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v2, v1}, Lcom/facebook/ads/redexgen/X/Tn;->A02(Lcom/facebook/ads/redexgen/X/Tn;Ljava/io/IOException;)Ljava/io/IOException;

    goto :goto_1

    .line 36596
    .end local v0    # "nowMs":J
    .end local v1    # "durationMs":J
    :cond_c
    iget-object v1, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Error;

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 36597
    .end local v0
    :catchall_0
    move-exception v1

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/KV;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method public final run()V
    .locals 8

    const/4 v2, 0x0

    const/16 v1, 0x8

    const/16 v0, 0x59

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/HU;->A01(III)Ljava/lang/String;

    move-result-object v6

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/KV;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v4, p0

    .line 36598
    .local v2, "this":Lcom/facebook/ads/redexgen/X/HU;, "Lcom/facebook/ads/internal/exoplayer2/upstream/Loader$LoadTask<TT;>;"
    const/4 v2, 0x2

    const/4 v5, 0x3

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, v4, Lcom/facebook/ads/redexgen/X/HU;->A06:Ljava/lang/Thread;

    .line 36599
    iget-boolean v0, v4, Lcom/facebook/ads/redexgen/X/HU;->A07:Z

    if-nez v0, :cond_1

    .line 36600
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x96

    const/4 v1, 0x5

    const/4 v0, 0x3

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/HU;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/HU;->A05:Lcom/facebook/ads/redexgen/X/HV;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IZ;->A02(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 36601
    :try_start_1
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/HU;->A05:Lcom/facebook/ads/redexgen/X/HV;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/HV;->A8K()V

    goto :goto_0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36602
    .end local v2    # "this":Lcom/facebook/ads/redexgen/X/HU;, "Lcom/facebook/ads/internal/exoplayer2/upstream/Loader$LoadTask<TT;>;"
    :catchall_0
    :try_start_2
    move-exception v0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/IZ;->A00()V

    .line 36603
    throw v0

    .line 36604
    :goto_0
    invoke-static {}, Lcom/facebook/ads/redexgen/X/IZ;->A00()V

    .line 36605
    :cond_1
    iget-boolean v0, v4, Lcom/facebook/ads/redexgen/X/HU;->A08:Z

    if-nez v0, :cond_3

    .line 36606
    invoke-virtual {v4, v2}, Lcom/facebook/ads/redexgen/X/HU;->sendEmptyMessage(I)Z

    goto :goto_1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 36607
    :catch_0
    move-exception v3

    .line 36608
    .local v1, "e":Ljava/lang/Error;
    :try_start_3
    const/16 v2, 0x28

    const/16 v1, 0x1f

    const/16 v0, 0x56

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/HU;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 36609
    iget-boolean v0, v4, Lcom/facebook/ads/redexgen/X/HU;->A08:Z

    if-nez v0, :cond_2

    .line 36610
    const/4 v0, 0x4

    invoke-virtual {v4, v0, v3}, Lcom/facebook/ads/redexgen/X/HU;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 36611
    :cond_2
    throw v3

    .line 36612
    .end local v1    # "e":Ljava/lang/Error;
    :catch_1
    move-exception v3

    .line 36613
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    const/16 v2, 0x8

    const/16 v1, 0x20

    const/16 v0, 0x7a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/HU;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 36614
    iget-boolean v0, v4, Lcom/facebook/ads/redexgen/X/HU;->A08:Z

    if-nez v0, :cond_3

    .line 36615
    new-instance v0, Lcom/facebook/ads/redexgen/X/HZ;

    invoke-direct {v0, v3}, Lcom/facebook/ads/redexgen/X/HZ;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v4, v5, v0}, Lcom/facebook/ads/redexgen/X/HU;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    .line 36616
    .end local v1    # "e":Ljava/lang/OutOfMemoryError;
    :catch_2
    move-exception v3

    .line 36617
    .local v1, "e":Ljava/lang/Exception;
    const/16 v2, 0x73

    const/16 v1, 0x23

    const/16 v0, 0x7f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/HU;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 36618
    iget-boolean v0, v4, Lcom/facebook/ads/redexgen/X/HU;->A08:Z

    if-nez v0, :cond_3

    .line 36619
    new-instance v0, Lcom/facebook/ads/redexgen/X/HZ;

    invoke-direct {v0, v3}, Lcom/facebook/ads/redexgen/X/HZ;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v4, v5, v0}, Lcom/facebook/ads/redexgen/X/HU;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    .line 36620
    .end local v1    # "e":Ljava/lang/Exception;
    .local p0, "e":Ljava/lang/InterruptedException;
    :catch_3
    iget-boolean v0, v4, Lcom/facebook/ads/redexgen/X/HU;->A07:Z

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A04(Z)V

    .line 36621
    iget-boolean v0, v4, Lcom/facebook/ads/redexgen/X/HU;->A08:Z

    if-nez v0, :cond_3

    .line 36622
    invoke-virtual {v4, v2}, Lcom/facebook/ads/redexgen/X/HU;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 36623
    .end local p0    # "e":Ljava/lang/InterruptedException;
    :catch_4
    move-exception v1

    .line 36624
    .local p0, "e":Ljava/io/IOException;
    iget-boolean v0, v4, Lcom/facebook/ads/redexgen/X/HU;->A08:Z

    if-nez v0, :cond_3

    .line 36625
    invoke-virtual {v4, v5, v1}, Lcom/facebook/ads/redexgen/X/HU;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 36626
    .end local p0    # "e":Ljava/io/IOException;
    :cond_3
    :goto_1
    return-void
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {v0, v4}, Lcom/facebook/ads/redexgen/X/KV;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
