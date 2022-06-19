.class public final Lcom/facebook/ads/redexgen/X/Ip;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Iq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VSyncSampler"
.end annotation


# static fields
.field public static A05:[B

.field public static A06:[Ljava/lang/String;

.field public static final A07:Lcom/facebook/ads/redexgen/X/Ip;


# instance fields
.field public A00:I

.field public A01:Landroid/view/Choreographer;

.field public final A02:Landroid/os/Handler;

.field public final A03:Landroid/os/HandlerThread;

.field public volatile A04:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 39104
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Ip;->A06()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Ip;->A05()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ip;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Ip;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Ip;->A07:Lcom/facebook/ads/redexgen/X/Ip;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 39105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39106
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Ip;->A04:J

    .line 39107
    const/4 v2, 0x0

    const/16 v1, 0x1a

    const/16 v0, 0x64

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ip;->A01(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Landroid/os/HandlerThread;

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ip;->A03:Landroid/os/HandlerThread;

    .line 39108
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ip;->A03:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 39109
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ip;->A03:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ip;->A02:Landroid/os/Handler;

    .line 39110
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ip;->A02:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 39111
    return-void
.end method

.method public static A00()Lcom/facebook/ads/redexgen/X/Ip;
    .locals 1

    .line 39112
    sget-object v0, Lcom/facebook/ads/redexgen/X/Ip;->A07:Lcom/facebook/ads/redexgen/X/Ip;

    return-object v0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 3

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ip;->A05:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 p1, 0x0

    :goto_0
    array-length v0, p0

    if-ge p1, v0, :cond_1

    aget-byte v0, p0, p1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x56

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ip;->A06:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/16 v0, 0x15

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x73

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ip;->A06:[Ljava/lang/String;

    const-string v1, "QRmjx1xMHRrkRB1obgeNUO8HiaoYpVrn"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A02()V
    .locals 2

    .line 39113
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ip;->A00:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ip;->A00:I

    .line 39114
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ip;->A00:I

    if-ne v0, v1, :cond_0

    .line 39115
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ip;->A01:Landroid/view/Choreographer;

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 39116
    :cond_0
    return-void
.end method

.method private A03()V
    .locals 1

    .line 39117
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ip;->A01:Landroid/view/Choreographer;

    .line 39118
    return-void
.end method

.method private A04()V
    .locals 2

    .line 39119
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ip;->A00:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ip;->A00:I

    .line 39120
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ip;->A00:I

    if-nez v0, :cond_0

    .line 39121
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ip;->A01:Landroid/view/Choreographer;

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 39122
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Ip;->A04:J

    .line 39123
    :cond_0
    return-void
.end method

.method public static A05()V
    .locals 4

    const/16 v3, 0x1a

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ip;->A06:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ip;->A06:[Ljava/lang/String;

    const-string v1, "ZI29ZCTV9anVGKi4DAKwAMhsmLssF35q"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    new-array v0, v3, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Ip;->A05:[B

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    nop

    :array_0
    .array-data 1
        -0x3t
        0x22t
        0x29t
        0x2ct
        0x1ft
        0x29t
        0x21t
        0x2ct
        0x1bt
        0x2at
        0x22t
        0x1ft
        0x2ct
        0x9t
        0x31t
        0x28t
        0x1ft
        0x2ct
        -0xct
        0x2t
        0x1bt
        0x28t
        0x1et
        0x26t
        0x1ft
        0x2ct
    .end array-data
.end method

.method public static A06()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "mqmJ2Sd6cNlv3PmtaIxsFHUMiAJoyiiw"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "n9WRYOSeXpG5N"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "fvoPRVr60FUX7P4JTnVGDhwyQLpIatZ6"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "9gJdC2S8"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "ex0dhqGJyAdW4ahQtFRca0VfJn"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "1DYD9X1KEDKVqRwHABumOa"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "sljAuu61S6xBtkSSbMbseUO9BPCWmbyM"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "OJcUaaaAyzHPcCk"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Ip;->A06:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A07()V
    .locals 2

    .line 39124
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ip;->A02:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 39125
    return-void
.end method

.method public final A08()V
    .locals 2

    .line 39126
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ip;->A02:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 39127
    return-void
.end method

.method public final doFrame(J)V
    .locals 3

    .line 39128
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/Ip;->A04:J

    .line 39129
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Ip;->A01:Landroid/view/Choreographer;

    const-wide/16 v0, 0x1f4

    invoke-virtual {v2, p0, v0, v1}, Landroid/view/Choreographer;->postFrameCallbackDelayed(Landroid/view/Choreographer$FrameCallback;J)V

    .line 39130
    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 4

    .line 39131
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v3, :cond_2

    const/4 v0, 0x2

    if-eq v1, v0, :cond_0

    .line 39132
    const/4 v0, 0x0

    return v0

    .line 39133
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ip;->A04()V

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ip;->A06:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/16 v0, 0x13

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x39

    if-eq v1, v0, :cond_1

    .line 39134
    sget-object v2, Lcom/facebook/ads/redexgen/X/Ip;->A06:[Ljava/lang/String;

    const-string v1, "NH3uK4v7w7g35A8SS35JTE"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    return v3

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 39135
    :cond_2
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ip;->A02()V

    .line 39136
    return v3

    .line 39137
    :cond_3
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ip;->A03()V

    .line 39138
    return v3
.end method
