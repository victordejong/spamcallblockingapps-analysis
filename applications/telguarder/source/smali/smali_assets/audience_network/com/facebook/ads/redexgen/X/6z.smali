.class public final Lcom/facebook/ads/redexgen/X/6z;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "BadMethodUse-android.os.HandlerThread._Constructor",
        "BadMethodUse-java.lang.Thread.start"
    }
.end annotation


# static fields
.field public static A01:Lcom/facebook/ads/redexgen/X/6z;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public static A02:[B

.field public static A03:[Ljava/lang/String;


# instance fields
.field public final A00:Landroid/os/HandlerThread;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 15895
    invoke-static {}, Lcom/facebook/ads/redexgen/X/6z;->A03()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/6z;->A02()V

    const/4 v0, 0x0

    sput-object v0, Lcom/facebook/ads/redexgen/X/6z;->A01:Lcom/facebook/ads/redexgen/X/6z;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 15896
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15897
    const/4 v2, 0x0

    const/16 v1, 0x11

    const/16 v0, 0x4c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/6z;->A01(III)Ljava/lang/String;

    move-result-object v2

    const/16 v1, 0xa

    new-instance v0, Landroid/os/HandlerThread;

    invoke-direct {v0, v2, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/6z;->A00:Landroid/os/HandlerThread;

    .line 15898
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6z;->A00:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 15899
    return-void
.end method

.method public static A00()Lcom/facebook/ads/redexgen/X/6z;
    .locals 4

    .line 15900
    sget-object v0, Lcom/facebook/ads/redexgen/X/6z;->A01:Lcom/facebook/ads/redexgen/X/6z;

    if-nez v0, :cond_0

    .line 15901
    new-instance v0, Lcom/facebook/ads/redexgen/X/6z;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/6z;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/6z;->A01:Lcom/facebook/ads/redexgen/X/6z;

    .line 15902
    :cond_0
    sget-object v3, Lcom/facebook/ads/redexgen/X/6z;->A01:Lcom/facebook/ads/redexgen/X/6z;

    sget-object v2, Lcom/facebook/ads/redexgen/X/6z;->A03:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/6z;->A03:[Ljava/lang/String;

    const-string v1, "GxAzBiV2tyhXu2cTUwGp9AFFfErmOvsk"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    return-object v3
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/6z;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x74

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A02()V
    .locals 1

    const/16 v0, 0x11

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/6z;->A02:[B

    return-void

    :array_0
    .array-data 1
        0x5at
        0x5ct
        0x67t
        0x50t
        0x59t
        0x56t
        0x5ct
        0x54t
        0x5dt
        0x4at
        0x67t
        0x4ct
        0x50t
        0x4at
        0x5dt
        0x59t
        0x5ct
    .end array-data
.end method

.method public static A03()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "nyhc"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "m4wI8zG8c"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "Xn27mgABI0TfmnnCzhUg9rTvjkjRHEcv"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "0"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "7W0ux2Fve1D9Goxr8jUIfJJvrFYCBujx"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "8IEOvf3PEIiwoo72ezT1P"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "rtg9FpMdIIoEugvm83McErKakz2bxUTz"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "Pws6Gx8Ok"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/6z;->A03:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A04()Landroid/os/HandlerThread;
    .locals 1

    .line 15903
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6z;->A00:Landroid/os/HandlerThread;

    return-object v0
.end method

.method public final A05()V
    .locals 1

    .line 15904
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6z;->A00:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 15905
    const/4 v0, 0x0

    sput-object v0, Lcom/facebook/ads/redexgen/X/6z;->A01:Lcom/facebook/ads/redexgen/X/6z;

    .line 15906
    return-void
.end method
