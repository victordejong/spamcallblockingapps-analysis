.class public final Lcom/facebook/ads/redexgen/X/WA;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/ID;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/9x;
    }
.end annotation


# static fields
.field public static A04:[B

.field public static A05:[Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/W7;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A01:Lcom/facebook/ads/redexgen/X/ID;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A02:Lcom/facebook/ads/redexgen/X/9x;

.field public final A03:Lcom/facebook/ads/redexgen/X/Tb;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/WA;->A03()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/WA;->A02()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/9x;Lcom/facebook/ads/redexgen/X/I0;)V
    .locals 1

    .line 63561
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63562
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/WA;->A02:Lcom/facebook/ads/redexgen/X/9x;

    .line 63563
    new-instance v0, Lcom/facebook/ads/redexgen/X/Tb;

    invoke-direct {v0, p2}, Lcom/facebook/ads/redexgen/X/Tb;-><init>(Lcom/facebook/ads/redexgen/X/I0;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/WA;->A03:Lcom/facebook/ads/redexgen/X/Tb;

    .line 63564
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/WA;->A04:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x52

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A01()V
    .locals 5

    .line 63565
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WA;->A01:Lcom/facebook/ads/redexgen/X/ID;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/ID;->A73()J

    move-result-wide v1

    .line 63566
    .local p0, "rendererClockPositionUs":J
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WA;->A03:Lcom/facebook/ads/redexgen/X/Tb;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/Tb;->A02(J)V

    .line 63567
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WA;->A01:Lcom/facebook/ads/redexgen/X/ID;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/ID;->A70()Lcom/facebook/ads/redexgen/X/AL;

    move-result-object v4

    .line 63568
    .local v1, "playbackParameters":Lcom/facebook/ads/redexgen/X/AL;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WA;->A03:Lcom/facebook/ads/redexgen/X/Tb;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Tb;->A70()Lcom/facebook/ads/redexgen/X/AL;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/AL;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 63569
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/WA;->A03:Lcom/facebook/ads/redexgen/X/Tb;

    sget-object v2, Lcom/facebook/ads/redexgen/X/WA;->A05:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/WA;->A05:[Ljava/lang/String;

    const-string v1, "T6hJVcLPAj"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-virtual {v3, v4}, Lcom/facebook/ads/redexgen/X/Tb;->ADr(Lcom/facebook/ads/redexgen/X/AL;)Lcom/facebook/ads/redexgen/X/AL;

    .line 63570
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WA;->A02:Lcom/facebook/ads/redexgen/X/9x;

    invoke-interface {v0, v4}, Lcom/facebook/ads/redexgen/X/9x;->AB7(Lcom/facebook/ads/redexgen/X/AL;)V

    .line 63571
    :cond_1
    return-void
.end method

.method public static A02()V
    .locals 1

    const/16 v0, 0x27

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/WA;->A04:[B

    return-void

    :array_0
    .array-data 1
        0xet
        0x36t
        0x2dt
        0x35t
        0x2at
        0x31t
        0x2dt
        0x26t
        -0x1ft
        0x33t
        0x26t
        0x2ft
        0x25t
        0x26t
        0x33t
        0x26t
        0x33t
        -0x1ft
        0x2et
        0x26t
        0x25t
        0x2at
        0x22t
        -0x1ft
        0x24t
        0x2dt
        0x30t
        0x24t
        0x2ct
        0x34t
        -0x1ft
        0x26t
        0x2ft
        0x22t
        0x23t
        0x2dt
        0x26t
        0x25t
        -0x11t
    .end array-data
.end method

.method public static A03()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "bKW5I2kzR9jjTSJFhTR"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "JdgqyLMtj7dzm4Smf0C"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "uR2tQp0xoGgIcYcNZ"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "9pqA31ny"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "RpCklOHxBnwNHWP"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "R5D85iDLEq2VuaiYg3j"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "GwZQE8wrAYNTDpxd2"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "k4ZA1kCQnrloA9rxpS57dRmq3ol8y"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/WA;->A05:[Ljava/lang/String;

    return-void
.end method

.method private A04()Z
    .locals 1

    .line 63572
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WA;->A00:Lcom/facebook/ads/redexgen/X/W7;

    if-eqz v0, :cond_1

    .line 63573
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/W7;->A81()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WA;->A00:Lcom/facebook/ads/redexgen/X/W7;

    .line 63574
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/W7;->A8B()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WA;->A00:Lcom/facebook/ads/redexgen/X/W7;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/W7;->A7e()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 63575
    :goto_0
    return v0

    .line 63576
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final A05()J
    .locals 2

    .line 63577
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/WA;->A04()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63578
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/WA;->A01()V

    .line 63579
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WA;->A01:Lcom/facebook/ads/redexgen/X/ID;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/ID;->A73()J

    move-result-wide v0

    return-wide v0

    .line 63580
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WA;->A03:Lcom/facebook/ads/redexgen/X/Tb;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Tb;->A73()J

    move-result-wide v0

    return-wide v0
.end method

.method public final A06()V
    .locals 1

    .line 63581
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WA;->A03:Lcom/facebook/ads/redexgen/X/Tb;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Tb;->A00()V

    .line 63582
    return-void
.end method

.method public final A07()V
    .locals 1

    .line 63583
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WA;->A03:Lcom/facebook/ads/redexgen/X/Tb;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Tb;->A01()V

    .line 63584
    return-void
.end method

.method public final A08(J)V
    .locals 1

    .line 63585
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WA;->A03:Lcom/facebook/ads/redexgen/X/Tb;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/Tb;->A02(J)V

    .line 63586
    return-void
.end method

.method public final A09(Lcom/facebook/ads/redexgen/X/W7;)V
    .locals 1

    .line 63587
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WA;->A00:Lcom/facebook/ads/redexgen/X/W7;

    if-ne p1, v0, :cond_0

    .line 63588
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/WA;->A01:Lcom/facebook/ads/redexgen/X/ID;

    .line 63589
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/WA;->A00:Lcom/facebook/ads/redexgen/X/W7;

    .line 63590
    :cond_0
    return-void
.end method

.method public final A0A(Lcom/facebook/ads/redexgen/X/W7;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A0;
        }
    .end annotation

    .line 63591
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/W7;->A6k()Lcom/facebook/ads/redexgen/X/ID;

    move-result-object v1

    .line 63592
    .local p0, "rendererMediaClock":Lcom/facebook/ads/redexgen/X/ID;
    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WA;->A01:Lcom/facebook/ads/redexgen/X/ID;

    if-eq v1, v0, :cond_0

    .line 63593
    if-nez v0, :cond_1

    .line 63594
    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/WA;->A01:Lcom/facebook/ads/redexgen/X/ID;

    .line 63595
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/WA;->A00:Lcom/facebook/ads/redexgen/X/W7;

    .line 63596
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/WA;->A01:Lcom/facebook/ads/redexgen/X/ID;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WA;->A03:Lcom/facebook/ads/redexgen/X/Tb;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Tb;->A70()Lcom/facebook/ads/redexgen/X/AL;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/ID;->ADr(Lcom/facebook/ads/redexgen/X/AL;)Lcom/facebook/ads/redexgen/X/AL;

    .line 63597
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/WA;->A01()V

    .line 63598
    :cond_0
    return-void

    .line 63599
    :cond_1
    const/4 v2, 0x0

    const/16 v1, 0x27

    const/16 v0, 0x6f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WA;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/A0;->A02(Ljava/lang/RuntimeException;)Lcom/facebook/ads/redexgen/X/A0;

    move-result-object v0

    throw v0
.end method

.method public final A70()Lcom/facebook/ads/redexgen/X/AL;
    .locals 1

    .line 63600
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WA;->A01:Lcom/facebook/ads/redexgen/X/ID;

    if-eqz v0, :cond_0

    .line 63601
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/ID;->A70()Lcom/facebook/ads/redexgen/X/AL;

    move-result-object v0

    .line 63602
    :goto_0
    return-object v0

    .line 63603
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WA;->A03:Lcom/facebook/ads/redexgen/X/Tb;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Tb;->A70()Lcom/facebook/ads/redexgen/X/AL;

    move-result-object v0

    goto :goto_0
.end method

.method public final A73()J
    .locals 2

    .line 63604
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/WA;->A04()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63605
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WA;->A01:Lcom/facebook/ads/redexgen/X/ID;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/ID;->A73()J

    move-result-wide v0

    return-wide v0

    .line 63606
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WA;->A03:Lcom/facebook/ads/redexgen/X/Tb;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Tb;->A73()J

    move-result-wide v0

    return-wide v0
.end method

.method public final ADr(Lcom/facebook/ads/redexgen/X/AL;)Lcom/facebook/ads/redexgen/X/AL;
    .locals 3

    .line 63607
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WA;->A01:Lcom/facebook/ads/redexgen/X/ID;

    if-eqz v0, :cond_0

    .line 63608
    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/ID;->ADr(Lcom/facebook/ads/redexgen/X/AL;)Lcom/facebook/ads/redexgen/X/AL;

    move-result-object p1

    .line 63609
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WA;->A03:Lcom/facebook/ads/redexgen/X/Tb;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Tb;->ADr(Lcom/facebook/ads/redexgen/X/AL;)Lcom/facebook/ads/redexgen/X/AL;

    .line 63610
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WA;->A02:Lcom/facebook/ads/redexgen/X/9x;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/9x;->AB7(Lcom/facebook/ads/redexgen/X/AL;)V

    sget-object v1, Lcom/facebook/ads/redexgen/X/WA;->A05:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xf

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 63611
    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/WA;->A05:[Ljava/lang/String;

    const-string v1, "o0APcWHuwc2kGQm"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    return-object p1
.end method
