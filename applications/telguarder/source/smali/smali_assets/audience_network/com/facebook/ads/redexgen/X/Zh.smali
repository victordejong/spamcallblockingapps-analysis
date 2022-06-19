.class public final Lcom/facebook/ads/redexgen/X/Zh;
.super Lcom/facebook/ads/redexgen/X/6V;
.source ""


# static fields
.field public static A04:[B

.field public static A05:[Ljava/lang/String;


# instance fields
.field public A00:Landroid/content/pm/ConfigurationInfo;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A01:Landroid/app/ActivityManager$RunningAppProcessInfo;

.field public final A02:Landroid/app/ActivityManager;

.field public final A03:Landroid/content/Context;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Zh;->A06()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Zh;->A05()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/5v;)V
    .locals 4

    .line 66427
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/6V;-><init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/5v;)V

    .line 66428
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Zh;->A03:Landroid/content/Context;

    .line 66429
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Zh;->A03:Landroid/content/Context;

    const/4 v2, 0x0

    const/16 v1, 0x8

    const/16 v0, 0x4a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Zh;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Zh;->A02:Landroid/app/ActivityManager;

    .line 66430
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zh;->A02:Landroid/app/ActivityManager;

    if-eqz v0, :cond_0

    .line 66431
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Zh;->A00:Landroid/content/pm/ConfigurationInfo;

    .line 66432
    :cond_0
    new-instance v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$RunningAppProcessInfo;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Zh;->A01:Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 66433
    return-void
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/Zh;)Landroid/app/ActivityManager$RunningAppProcessInfo;
    .locals 0

    .line 66434
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Zh;->A01:Landroid/app/ActivityManager$RunningAppProcessInfo;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/Zh;)Landroid/app/ActivityManager;
    .locals 0

    .line 66435
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Zh;->A02:Landroid/app/ActivityManager;

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/Zh;)Landroid/content/pm/ConfigurationInfo;
    .locals 0

    .line 66436
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Zh;->A00:Landroid/content/pm/ConfigurationInfo;

    return-object p0
.end method

.method public static A04(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/Zh;->A04:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 p1, 0x0

    :goto_0
    array-length v0, p0

    if-ge p1, v0, :cond_1

    aget-byte v3, p0, p1

    sub-int/2addr v3, p2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Zh;->A05:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x6

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Zh;->A05:[Ljava/lang/String;

    const-string v1, "DS27BtQUpAxEFojdw3p8BHB8dmy"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "FhGmfOOlh6KmbIs32bzc92ZjVfi"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    add-int/lit8 v0, v3, -0x1a

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A05()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Zh;->A04:[B

    return-void

    :array_0
    .array-data 1
        -0x3bt
        -0x39t
        -0x28t
        -0x33t
        -0x26t
        -0x33t
        -0x28t
        -0x23t
    .end array-data
.end method

.method public static A06()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "82lPF49fBlkgSfq1tudPBrWmi"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "PsWY0UjrBTmqZPu7UTKkTJpNmgC"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "hpBlW0hC3Eiuk0zq6n4uVitoLRPJQexO"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "6rguU0slL5XuVGadNkivTjzDpJh"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "CldFGfYqdBydrbjisSlfF7lfm7UEM77K"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "yKuff3NVXCRmCtKtL3dC0iABIeQR8ZdX"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "EGSuZbuVazDONFV4ugLJ0IVirlOW2FWd"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "sLXyNh"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Zh;->A05:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A0H()Lcom/facebook/ads/redexgen/X/6e;
    .locals 1

    .line 66437
    new-instance v0, Lcom/facebook/ads/redexgen/X/Zk;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Zk;-><init>(Lcom/facebook/ads/redexgen/X/Zh;)V

    .line 66438
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6e;
    return-object v0
.end method

.method public final A0I()Lcom/facebook/ads/redexgen/X/6e;
    .locals 1

    .line 66439
    new-instance v0, Lcom/facebook/ads/redexgen/X/Zj;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Zj;-><init>(Lcom/facebook/ads/redexgen/X/Zh;)V

    .line 66440
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6e;
    return-object v0
.end method

.method public final A0J()Lcom/facebook/ads/redexgen/X/6e;
    .locals 1

    .line 66441
    new-instance v0, Lcom/facebook/ads/redexgen/X/Zo;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Zo;-><init>(Lcom/facebook/ads/redexgen/X/Zh;)V

    .line 66442
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6e;
    return-object v0
.end method

.method public final A0K()Lcom/facebook/ads/redexgen/X/6e;
    .locals 1

    .line 66443
    new-instance v0, Lcom/facebook/ads/redexgen/X/Zn;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Zn;-><init>(Lcom/facebook/ads/redexgen/X/Zh;)V

    .line 66444
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6e;
    return-object v0
.end method

.method public final A0L()Lcom/facebook/ads/redexgen/X/6e;
    .locals 1

    .line 66445
    new-instance v0, Lcom/facebook/ads/redexgen/X/Zm;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Zm;-><init>(Lcom/facebook/ads/redexgen/X/Zh;)V

    .line 66446
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6e;
    return-object v0
.end method

.method public final A0M()Lcom/facebook/ads/redexgen/X/6e;
    .locals 1

    .line 66447
    new-instance v0, Lcom/facebook/ads/redexgen/X/Zp;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Zp;-><init>(Lcom/facebook/ads/redexgen/X/Zh;)V

    .line 66448
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6e;
    return-object v0
.end method

.method public final A0N()Lcom/facebook/ads/redexgen/X/6e;
    .locals 1

    .line 66449
    new-instance v0, Lcom/facebook/ads/redexgen/X/Zl;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Zl;-><init>(Lcom/facebook/ads/redexgen/X/Zh;)V

    .line 66450
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6e;
    return-object v0
.end method

.method public final A0O()Lcom/facebook/ads/redexgen/X/6e;
    .locals 1

    .line 66451
    new-instance v0, Lcom/facebook/ads/redexgen/X/Zq;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Zq;-><init>(Lcom/facebook/ads/redexgen/X/Zh;)V

    .line 66452
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6e;
    return-object v0
.end method

.method public final A0P()Lcom/facebook/ads/redexgen/X/6e;
    .locals 1

    .line 66453
    new-instance v0, Lcom/facebook/ads/redexgen/X/Zi;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Zi;-><init>(Lcom/facebook/ads/redexgen/X/Zh;)V

    .line 66454
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6e;
    return-object v0
.end method

.method public final A0Q()Lcom/facebook/ads/redexgen/X/6e;
    .locals 1

    .line 66455
    new-instance v0, Lcom/facebook/ads/redexgen/X/Zs;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Zs;-><init>(Lcom/facebook/ads/redexgen/X/Zh;)V

    .line 66456
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6e;
    return-object v0
.end method

.method public final A0R()Lcom/facebook/ads/redexgen/X/6e;
    .locals 1

    .line 66457
    new-instance v0, Lcom/facebook/ads/redexgen/X/Zr;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Zr;-><init>(Lcom/facebook/ads/redexgen/X/Zh;)V

    .line 66458
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6e;
    return-object v0
.end method
