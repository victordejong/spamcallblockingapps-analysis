.class public abstract Lcom/facebook/ads/redexgen/X/bV;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/22;


# static fields
.field public static A05:[B


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/1s;

.field public final A01:Lcom/facebook/ads/redexgen/X/Wm;

.field public final A02:Ljava/lang/String;

.field public final A03:Landroid/os/Handler;

.field public final A04:Lcom/facebook/ads/redexgen/X/1x;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/bV;->A04()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/1y;)V
    .locals 2

    .line 69677
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69678
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/bV;->A02:Ljava/lang/String;

    .line 69679
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/bV;->A01:Lcom/facebook/ads/redexgen/X/Wm;

    .line 69680
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bV;->A01:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-static {v0}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFactory;->makeLoader(Landroid/content/Context;)Lcom/facebook/ads/internal/dynamicloading/DynamicLoader;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoader;->getInitApi()Lcom/facebook/ads/internal/api/InitApi;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bV;->A01:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-interface {v1, v0}, Lcom/facebook/ads/internal/api/InitApi;->onAdLoadInvoked(Landroid/content/Context;)V

    .line 69681
    new-instance v0, Lcom/facebook/ads/redexgen/X/bY;

    invoke-direct {v0, p1, p0}, Lcom/facebook/ads/redexgen/X/bY;-><init>(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/bV;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/bV;->A00:Lcom/facebook/ads/redexgen/X/1s;

    .line 69682
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/bV;->A03:Landroid/os/Handler;

    .line 69683
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bV;->A00:Lcom/facebook/ads/redexgen/X/1s;

    invoke-interface {p2, v0, p0}, Lcom/facebook/ads/redexgen/X/1y;->A4J(Lcom/facebook/ads/redexgen/X/1s;Lcom/facebook/ads/redexgen/X/bV;)Lcom/facebook/ads/redexgen/X/1x;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/bV;->A04:Lcom/facebook/ads/redexgen/X/1x;

    .line 69684
    return-void
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/bV;)Lcom/facebook/ads/redexgen/X/1x;
    .locals 0

    .line 69685
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/bV;->A04:Lcom/facebook/ads/redexgen/X/1x;

    return-object p0
.end method

.method public static A03(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/bV;->A05:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x46

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A04()V
    .locals 1

    const/16 v0, 0x45

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/bV;->A05:[B

    return-void

    :array_0
    .array-data 1
        -0x68t
        -0x55t
        -0x5ct
        -0x66t
        -0x5et
        -0x65t
        -0x4bt
        -0x65t
        -0x52t
        -0x56t
        -0x58t
        -0x69t
        -0x57t
        -0x4bt
        -0x5ft
        -0x65t
        -0x51t
        -0x19t
        -0x14t
        -0xet
        -0x3t
        -0x1dt
        -0x10t
        -0x10t
        -0x13t
        -0x10t
        -0x3t
        -0x1ft
        -0x13t
        -0x1et
        -0x1dt
        -0x3t
        -0x17t
        -0x1dt
        -0x9t
        -0x6t
        -0x5t
        -0x7t
        0x6t
        -0x18t
        -0x15t
        0x6t
        -0x10t
        -0x15t
        0x6t
        -0xet
        -0x14t
        0x0t
        0x15t
        0x16t
        0x14t
        0x21t
        0x7t
        0x14t
        0x14t
        0x11t
        0x14t
        0x21t
        0xft
        0x7t
        0x15t
        0x15t
        0x3t
        0x9t
        0x7t
        0x21t
        0xdt
        0x7t
        0x1bt
    .end array-data
.end method


# virtual methods
.method public final A05()V
    .locals 1

    .line 69686
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bV;->A01:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/J4;->A0o(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 69687
    return-void

    .line 69688
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/bW;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/bW;-><init>(Lcom/facebook/ads/redexgen/X/bV;)V

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Le;->A00(Ljava/lang/Runnable;)V

    .line 69689
    return-void
.end method

.method public abstract A06()V
.end method

.method public final A07(ILcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)V
    .locals 5
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 69690
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 69691
    .local p0, "extraData":Landroid/os/Bundle;
    const/16 v2, 0x30

    const/16 v1, 0x15

    const/16 v0, 0x7c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bV;->A03(III)Ljava/lang/String;

    move-result-object v1

    if-eqz p3, :cond_0

    .line 69692
    invoke-virtual {v4, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 69693
    :goto_0
    invoke-virtual {p2}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v3

    const/16 v2, 0x11

    const/16 v1, 0x12

    const/16 v0, 0x58

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bV;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 69694
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bV;->A02:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v4}, Lcom/facebook/ads/redexgen/X/bV;->AAq(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 69695
    return-void

    .line 69696
    :cond_0
    invoke-virtual {p2}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getDefaultErrorMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final AAq(ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 5
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 69697
    const/4 v0, 0x0

    invoke-static {v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v4

    .line 69698
    .local p0, "message":Landroid/os/Message;
    invoke-virtual {v4}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const/16 v2, 0x23

    const/16 v1, 0xd

    const/16 v0, 0x61

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bV;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 69699
    if-eqz p3, :cond_0

    .line 69700
    invoke-virtual {v4}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0x11

    const/16 v0, 0x10

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bV;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, p3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 69701
    :cond_0
    new-instance v1, Lcom/facebook/ads/redexgen/X/bX;

    invoke-direct {v1, p0, v4}, Lcom/facebook/ads/redexgen/X/bX;-><init>(Lcom/facebook/ads/redexgen/X/bV;Landroid/os/Message;)V

    .line 69702
    .local p1, "callbackApiRunnable":Ljava/lang/Runnable;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bV;->A03:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 69703
    return-void
.end method
