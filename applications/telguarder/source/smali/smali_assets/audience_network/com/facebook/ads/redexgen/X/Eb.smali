.class public final Lcom/facebook/ads/redexgen/X/Eb;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Ee;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Task"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/exoplayer2/offline/DownloadManager$Task$InternalState;
    }
.end annotation


# static fields
.field public static A08:[B

.field public static A09:[Ljava/lang/String;


# instance fields
.field public A00:Ljava/lang/Thread;

.field public A01:Ljava/lang/Throwable;

.field public final A02:I

.field public final A03:I

.field public final A04:Lcom/facebook/ads/internal/exoplayer2/offline/DownloadAction;

.field public final A05:Lcom/facebook/ads/redexgen/X/Ee;

.field public volatile A06:I

.field public volatile A07:Lcom/facebook/ads/redexgen/X/Ei;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Eb;->A0C()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Eb;->A0B()V

    return-void
.end method

.method public constructor <init>(ILcom/facebook/ads/redexgen/X/Ee;Lcom/facebook/ads/internal/exoplayer2/offline/DownloadAction;I)V
    .locals 1

    .line 29512
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29513
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Eb;->A02:I

    .line 29514
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Eb;->A05:Lcom/facebook/ads/redexgen/X/Ee;

    .line 29515
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/Eb;->A04:Lcom/facebook/ads/internal/exoplayer2/offline/DownloadAction;

    .line 29516
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Eb;->A06:I

    .line 29517
    iput p4, p0, Lcom/facebook/ads/redexgen/X/Eb;->A03:I

    .line 29518
    return-void
.end method

.method public synthetic constructor <init>(ILcom/facebook/ads/redexgen/X/Ee;Lcom/facebook/ads/internal/exoplayer2/offline/DownloadAction;ILcom/facebook/ads/redexgen/X/ET;)V
    .locals 0

    .line 29519
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/Eb;-><init>(ILcom/facebook/ads/redexgen/X/Ee;Lcom/facebook/ads/internal/exoplayer2/offline/DownloadAction;I)V

    return-void
.end method

.method private final A00()F
    .locals 1

    .line 29520
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Eb;->A07:Lcom/facebook/ads/redexgen/X/Ei;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Eb;->A07:Lcom/facebook/ads/redexgen/X/Ei;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Ei;->A6G()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    goto :goto_0
.end method

.method private A01()I
    .locals 4

    .line 29521
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Eb;->A06:I

    const/4 v0, 0x5

    if-eq v1, v0, :cond_1

    const/4 v0, 0x6

    if-eq v1, v0, :cond_0

    const/4 v0, 0x7

    if-eq v1, v0, :cond_0

    .line 29522
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Eb;->A06:I

    return v0

    .line 29523
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 29524
    :cond_1
    const/4 v3, 0x0

    sget-object v1, Lcom/facebook/ads/redexgen/X/Eb;->A09:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/16 v0, 0x1b

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6e

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/Eb;->A09:[Ljava/lang/String;

    const-string v1, "6V9lE7Tsk3vIQFqf4"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    return v3

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A02(I)I
    .locals 2

    .line 29525
    add-int/lit8 v0, p1, -0x1

    mul-int/lit16 v1, v0, 0x3e8

    const/16 v0, 0x1388

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/Eb;)I
    .locals 0

    .line 29526
    iget p0, p0, Lcom/facebook/ads/redexgen/X/Eb;->A06:I

    return p0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/Eb;)I
    .locals 0

    .line 29527
    iget p0, p0, Lcom/facebook/ads/redexgen/X/Eb;->A02:I

    return p0
.end method

.method private final A05()J
    .locals 2

    .line 29528
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Eb;->A07:Lcom/facebook/ads/redexgen/X/Ei;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Eb;->A07:Lcom/facebook/ads/redexgen/X/Ei;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Ei;->A6H()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/Eb;)Lcom/facebook/ads/internal/exoplayer2/offline/DownloadAction;
    .locals 0

    .line 29529
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Eb;->A04:Lcom/facebook/ads/internal/exoplayer2/offline/DownloadAction;

    return-object p0
.end method

.method public static A07(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Eb;->A08:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x79

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A08()V
    .locals 2

    .line 29530
    const/4 v1, 0x0

    const/4 v0, 0x5

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/Eb;->A0G(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 29531
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Eb;->A05:Lcom/facebook/ads/redexgen/X/Ee;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ee;->A00(Lcom/facebook/ads/redexgen/X/Ee;)Landroid/os/Handler;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/EY;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/EY;-><init>(Lcom/facebook/ads/redexgen/X/Eb;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 29532
    :cond_0
    :goto_0
    return-void

    .line 29533
    :cond_1
    const/4 v1, 0x1

    const/4 v0, 0x6

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/Eb;->A0G(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29534
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Eb;->A09()V

    goto :goto_0
.end method

.method private A09()V
    .locals 1

    .line 29535
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Eb;->A07:Lcom/facebook/ads/redexgen/X/Ei;

    if-eqz v0, :cond_0

    .line 29536
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Eb;->A07:Lcom/facebook/ads/redexgen/X/Ei;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Ei;->cancel()V

    .line 29537
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Eb;->A00:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 29538
    return-void
.end method

.method private A0A()V
    .locals 2

    .line 29539
    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/Eb;->A0G(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29540
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Eb;->A00:Ljava/lang/Thread;

    .line 29541
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Eb;->A00:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 29542
    :cond_0
    return-void
.end method

.method public static A0B()V
    .locals 1

    const/16 v0, 0x4a

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Eb;->A08:[B

    return-void

    :array_0
    .array-data 1
        0x7bt
        0x50t
        0x48t
        0x51t
        0x53t
        0x50t
        0x5et
        0x5bt
        0x1ft
        0x5at
        0x4dt
        0x4dt
        0x50t
        0x4dt
        0x11t
        0x1ft
        0x6dt
        0x5at
        0x4bt
        0x4dt
        0x46t
        0x1ft
        0x41t
        0x76t
        0x60t
        0x76t
        0x67t
        0x33t
        0x76t
        0x61t
        0x61t
        0x7ct
        0x61t
        0x33t
        0x70t
        0x7ct
        0x66t
        0x7dt
        0x67t
        0x3dt
        0x33t
        0x77t
        0x7ct
        0x64t
        0x7dt
        0x7ft
        0x7ct
        0x72t
        0x77t
        0x76t
        0x77t
        0x51t
        0x6at
        0x67t
        0x76t
        0x60t
        0x33t
        0x2et
        0x33t
        0x49t
        0x7ct
        0x6et
        0x76t
        0x3dt
        0x74t
        0x6et
        0x3dt
        0x6et
        0x69t
        0x7ct
        0x6ft
        0x69t
        0x78t
        0x79t
    .end array-data
.end method

.method public static A0C()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "4pxRPa7FdamWRBgSe"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "rsIvDM8g"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "c18bFqoHzXXUasefKvAB7cLU"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "VWmovjuHewbOTkaxcvanybJ96ehIWRSM"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "Kfu5uCsVlZvVWkajxwZW3B2mWHmH52RT"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "ikxIZXvm2YaRgpPLjSCq7aQ06TqJYFZ5"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "Z3GXatw3Yv8j9WebAVUp9bJqbQAVgKAe"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "nYMsdHoAlkC5EB0QSpiLpWuTGZwxKHq9"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Eb;->A09:[Ljava/lang/String;

    return-void
.end method

.method public static synthetic A0D(Lcom/facebook/ads/redexgen/X/Eb;)V
    .locals 0

    .line 29543
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Eb;->A08()V

    return-void
.end method

.method public static synthetic A0E(Lcom/facebook/ads/redexgen/X/Eb;)V
    .locals 0

    .line 29544
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Eb;->A0A()V

    return-void
.end method

.method private A0F()Z
    .locals 1

    .line 29545
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Eb;->A06:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private A0G(II)Z
    .locals 1

    .line 29546
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/ads/redexgen/X/Eb;->A0H(IILjava/lang/Throwable;)Z

    move-result v0

    return v0
.end method

.method private A0H(IILjava/lang/Throwable;)Z
    .locals 4

    .line 29547
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Eb;->A06:I

    const/4 v3, 0x0

    if-eq v0, p1, :cond_0

    .line 29548
    return v3

    .line 29549
    :cond_0
    iput p2, p0, Lcom/facebook/ads/redexgen/X/Eb;->A06:I

    .line 29550
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/Eb;->A01:Ljava/lang/Throwable;

    .line 29551
    iget v2, p0, Lcom/facebook/ads/redexgen/X/Eb;->A06:I

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Eb;->A01()I

    move-result v0

    const/4 v1, 0x1

    if-eq v2, v0, :cond_1

    const/4 v3, 0x1

    .line 29552
    .local p0, "isInternalState":Z
    :cond_1
    if-nez v3, :cond_2

    .line 29553
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Eb;->A05:Lcom/facebook/ads/redexgen/X/Ee;

    invoke-static {v0, p0}, Lcom/facebook/ads/redexgen/X/Ee;->A0I(Lcom/facebook/ads/redexgen/X/Ee;Lcom/facebook/ads/redexgen/X/Eb;)V

    .line 29554
    :cond_2
    return v1
.end method

.method public static synthetic A0I(Lcom/facebook/ads/redexgen/X/Eb;)Z
    .locals 0

    .line 29555
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Eb;->A0F()Z

    move-result p0

    return p0
.end method

.method public static synthetic A0J(Lcom/facebook/ads/redexgen/X/Eb;II)Z
    .locals 0

    .line 29556
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Eb;->A0G(II)Z

    move-result p0

    return p0
.end method

.method public static synthetic A0K(Lcom/facebook/ads/redexgen/X/Eb;IILjava/lang/Throwable;)Z
    .locals 0

    .line 29557
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Eb;->A0H(IILjava/lang/Throwable;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final A0L()Lcom/facebook/ads/redexgen/X/Ed;
    .locals 9

    .line 29558
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Eb;->A01()I

    move-result v3

    .line 29559
    .local v8, "externalState":I
    new-instance v0, Lcom/facebook/ads/redexgen/X/Ed;

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Eb;->A02:I

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Eb;->A04:Lcom/facebook/ads/internal/exoplayer2/offline/DownloadAction;

    .line 29560
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Eb;->A00()F

    move-result v4

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Eb;->A05()J

    move-result-wide v5

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/Eb;->A01:Ljava/lang/Throwable;

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/facebook/ads/redexgen/X/Ed;-><init>(ILcom/facebook/ads/internal/exoplayer2/offline/DownloadAction;IFJLjava/lang/Throwable;Lcom/facebook/ads/redexgen/X/ET;)V

    .line 29561
    return-object v0
.end method

.method public final A0M()Z
    .locals 3

    .line 29562
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Eb;->A06:I

    const/4 v2, 0x1

    const/4 v0, 0x5

    if-eq v1, v0, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Eb;->A06:I

    if-eq v0, v2, :cond_0

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Eb;->A06:I

    const/4 v0, 0x7

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Eb;->A06:I

    const/4 v0, 0x6

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public final A0N()Z
    .locals 5

    .line 29563
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Eb;->A06:I

    const/4 v0, 0x4

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Eb;->A06:I

    const/4 v0, 0x2

    if-eq v1, v0, :cond_0

    iget v4, p0, Lcom/facebook/ads/redexgen/X/Eb;->A06:I

    const/4 v3, 0x3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Eb;->A09:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/Eb;->A09:[Ljava/lang/String;

    const-string v1, "3OhKPbv1Va0xnwz5SqMsZKNLSx4FYnRn"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-ne v4, v3, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final run()V
    .locals 11

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/KV;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v5, p0

    .line 29564
    .local p0, "this":Lcom/facebook/ads/redexgen/X/Eb;
    :try_start_0
    const/16 v2, 0x3b

    const/16 v1, 0xf

    const/16 v0, 0x64

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Eb;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Lcom/facebook/ads/redexgen/X/Ee;->A0K(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Eb;)V

    .line 29565
    const/4 v2, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 29566
    .local v0, "error":Ljava/lang/Throwable;
    :try_start_1
    iget-object v1, v5, Lcom/facebook/ads/redexgen/X/Eb;->A04:Lcom/facebook/ads/internal/exoplayer2/offline/DownloadAction;

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/Eb;->A05:Lcom/facebook/ads/redexgen/X/Ee;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ee;->A04(Lcom/facebook/ads/redexgen/X/Ee;)Lcom/facebook/ads/redexgen/X/Ej;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/internal/exoplayer2/offline/DownloadAction;->A08(Lcom/facebook/ads/redexgen/X/Ej;)Lcom/facebook/ads/redexgen/X/Ei;

    move-result-object v0

    iput-object v0, v5, Lcom/facebook/ads/redexgen/X/Eb;->A07:Lcom/facebook/ads/redexgen/X/Ei;

    .line 29567
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/Eb;->A04:Lcom/facebook/ads/internal/exoplayer2/offline/DownloadAction;

    iget-boolean v0, v0, Lcom/facebook/ads/internal/exoplayer2/offline/DownloadAction;->A03:Z

    if-eqz v0, :cond_1

    .line 29568
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/Eb;->A07:Lcom/facebook/ads/redexgen/X/Ei;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Ei;->remove()V

    goto :goto_1

    .line 29569
    :cond_1
    const/4 v6, 0x0

    .line 29570
    .local v5, "errorCount":I
    const-wide/16 v9, -0x1

    .line 29571
    .local v2, "errorPosition":J
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29572
    :try_start_2
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/Eb;->A07:Lcom/facebook/ads/redexgen/X/Ei;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Ei;->A4q()V

    goto :goto_1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 29573
    :catch_0
    move-exception v8

    .line 29574
    .local v0, "e":Ljava/io/IOException;
    :try_start_3
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/Eb;->A07:Lcom/facebook/ads/redexgen/X/Ei;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Ei;->A6H()J

    move-result-wide v3

    .line 29575
    .local v0, "downloadedBytes":J
    cmp-long v0, v3, v9

    if-eqz v0, :cond_2

    .line 29576
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v6, 0x16

    const/16 v1, 0x25

    const/16 v0, 0x6a

    invoke-static {v6, v1, v0}, Lcom/facebook/ads/redexgen/X/Eb;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Lcom/facebook/ads/redexgen/X/Ee;->A0K(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Eb;)V

    .line 29577
    move-wide v9, v3

    .line 29578
    const/4 v6, 0x0

    .line 29579
    :cond_2
    iget v1, v5, Lcom/facebook/ads/redexgen/X/Eb;->A06:I

    const/4 v0, 0x1

    if-ne v1, v0, :cond_3

    add-int/lit8 v6, v6, 0x1

    iget v0, v5, Lcom/facebook/ads/redexgen/X/Eb;->A03:I

    if-gt v6, v0, :cond_3

    .line 29580
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    const/16 v1, 0x16

    const/16 v0, 0x46

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/Eb;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Lcom/facebook/ads/redexgen/X/Ee;->A0K(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Eb;)V

    .line 29581
    invoke-direct {v5, v6}, Lcom/facebook/ads/redexgen/X/Eb;->A02(I)I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0

    .line 29582
    .restart local v0    # "downloadedBytes":J
    .restart local v0    # "downloadedBytes":J
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/Eb;
    .end local v0    # "downloadedBytes":J
    :cond_3
    throw v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 29583
    :catchall_0
    move-exception v2

    .line 29584
    .local v5, "e":Ljava/lang/Throwable;
    .local v5, "finalError":Ljava/lang/Throwable;
    :cond_4
    :goto_1
    :try_start_4
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/Eb;->A05:Lcom/facebook/ads/redexgen/X/Ee;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ee;->A00(Lcom/facebook/ads/redexgen/X/Ee;)Landroid/os/Handler;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/EZ;

    invoke-direct {v0, v5, v2}, Lcom/facebook/ads/redexgen/X/EZ;-><init>(Lcom/facebook/ads/redexgen/X/Eb;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 29585
    return-void
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .end local p0
    .end local v0
    .end local v5    # "finalError":Ljava/lang/Throwable;
    :catchall_1
    move-exception v0

    invoke-static {v0, v5}, Lcom/facebook/ads/redexgen/X/KV;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 29586
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
