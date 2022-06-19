.class public final Lcom/facebook/ads/redexgen/X/Wq;
.super Lcom/facebook/ads/redexgen/X/6V;
.source ""


# static fields
.field public static A01:[B


# instance fields
.field public final A00:Landroid/telephony/TelephonyManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Wq;->A05()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/5v;)V
    .locals 3

    .line 57340
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/6V;-><init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/5v;)V

    .line 57341
    const/4 v2, 0x0

    const/4 v1, 0x5

    const/16 v0, 0x63

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Wq;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Wq;->A00:Landroid/telephony/TelephonyManager;

    .line 57342
    return-void
.end method

.method public static A01(Landroid/telephony/CellInfo;)I
    .locals 2

    .line 57343
    if-eqz p0, :cond_5

    .line 57344
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x12

    if-lt v1, v0, :cond_4

    .line 57345
    instance-of v0, p0, Landroid/telephony/CellInfoCdma;

    if-eqz v0, :cond_0

    .line 57346
    check-cast p0, Landroid/telephony/CellInfoCdma;

    invoke-virtual {p0}, Landroid/telephony/CellInfoCdma;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthCdma;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthCdma;->getLevel()I

    move-result v0

    return v0

    .line 57347
    :cond_0
    instance-of v0, p0, Landroid/telephony/CellInfoGsm;

    if-eqz v0, :cond_1

    .line 57348
    check-cast p0, Landroid/telephony/CellInfoGsm;

    invoke-virtual {p0}, Landroid/telephony/CellInfoGsm;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthGsm;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthGsm;->getLevel()I

    move-result v0

    return v0

    .line 57349
    :cond_1
    instance-of v0, p0, Landroid/telephony/CellInfoLte;

    if-eqz v0, :cond_2

    .line 57350
    check-cast p0, Landroid/telephony/CellInfoLte;

    invoke-virtual {p0}, Landroid/telephony/CellInfoLte;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthLte;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthLte;->getLevel()I

    move-result v0

    return v0

    .line 57351
    :cond_2
    instance-of v0, p0, Landroid/telephony/CellInfoWcdma;

    if-eqz v0, :cond_3

    .line 57352
    check-cast p0, Landroid/telephony/CellInfoWcdma;

    invoke-virtual {p0}, Landroid/telephony/CellInfoWcdma;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthWcdma;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthWcdma;->getLevel()I

    move-result v0

    return v0

    .line 57353
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57354
    :cond_4
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 57355
    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public static synthetic A02(Landroid/telephony/CellInfo;)I
    .locals 0

    .line 57356
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Wq;->A01(Landroid/telephony/CellInfo;)I

    move-result p0

    return p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/Wq;)Landroid/telephony/TelephonyManager;
    .locals 0

    .line 57357
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Wq;->A00:Landroid/telephony/TelephonyManager;

    return-object p0
.end method

.method public static A04(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Wq;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x3c

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A05()V
    .locals 1

    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Wq;->A01:[B

    return-void

    nop

    :array_0
    .array-data 1
        0xft
        0x7t
        0xet
        0xdt
        0x4t
    .end array-data
.end method


# virtual methods
.method public final A0H()Lcom/facebook/ads/redexgen/X/6e;
    .locals 1

    .line 57358
    new-instance v0, Lcom/facebook/ads/redexgen/X/Wg;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Wg;-><init>(Lcom/facebook/ads/redexgen/X/Wq;)V

    .line 57359
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6e;
    return-object v0
.end method

.method public final A0I()Lcom/facebook/ads/redexgen/X/6e;
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission",
            "CatchGeneralException"
        }
    .end annotation

    .line 57360
    new-instance v0, Lcom/facebook/ads/redexgen/X/Wh;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Wh;-><init>(Lcom/facebook/ads/redexgen/X/Wq;)V

    .line 57361
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6e;
    return-object v0
.end method

.method public final A0J()Lcom/facebook/ads/redexgen/X/6e;
    .locals 1

    .line 57362
    new-instance v0, Lcom/facebook/ads/redexgen/X/Wl;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Wl;-><init>(Lcom/facebook/ads/redexgen/X/Wq;)V

    .line 57363
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6e;
    return-object v0
.end method

.method public final A0K()Lcom/facebook/ads/redexgen/X/6e;
    .locals 1

    .line 57364
    new-instance v0, Lcom/facebook/ads/redexgen/X/Wm;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Wm;-><init>(Lcom/facebook/ads/redexgen/X/Wq;)V

    .line 57365
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6e;
    return-object v0
.end method

.method public final A0L()Lcom/facebook/ads/redexgen/X/6e;
    .locals 1

    .line 57366
    new-instance v0, Lcom/facebook/ads/redexgen/X/Wk;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Wk;-><init>(Lcom/facebook/ads/redexgen/X/Wq;)V

    .line 57367
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6e;
    return-object v0
.end method

.method public final A0M()Lcom/facebook/ads/redexgen/X/6e;
    .locals 1

    .line 57368
    new-instance v0, Lcom/facebook/ads/redexgen/X/Wj;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Wj;-><init>(Lcom/facebook/ads/redexgen/X/Wq;)V

    .line 57369
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6e;
    return-object v0
.end method

.method public final A0N()Lcom/facebook/ads/redexgen/X/6e;
    .locals 1

    .line 57370
    new-instance v0, Lcom/facebook/ads/redexgen/X/Wp;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Wp;-><init>(Lcom/facebook/ads/redexgen/X/Wq;)V

    .line 57371
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6e;
    return-object v0
.end method

.method public final A0O()Lcom/facebook/ads/redexgen/X/6e;
    .locals 1

    .line 57372
    new-instance v0, Lcom/facebook/ads/redexgen/X/Wd;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Wd;-><init>(Lcom/facebook/ads/redexgen/X/Wq;)V

    .line 57373
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6e;
    return-object v0
.end method

.method public final A0P()Lcom/facebook/ads/redexgen/X/6e;
    .locals 1

    .line 57374
    new-instance v0, Lcom/facebook/ads/redexgen/X/Wn;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Wn;-><init>(Lcom/facebook/ads/redexgen/X/Wq;)V

    .line 57375
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6e;
    return-object v0
.end method

.method public final A0Q()Lcom/facebook/ads/redexgen/X/6e;
    .locals 1

    .line 57376
    new-instance v0, Lcom/facebook/ads/redexgen/X/Wo;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Wo;-><init>(Lcom/facebook/ads/redexgen/X/Wq;)V

    .line 57377
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6e;
    return-object v0
.end method

.method public final A0R()Lcom/facebook/ads/redexgen/X/6e;
    .locals 1

    .line 57378
    new-instance v0, Lcom/facebook/ads/redexgen/X/We;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/We;-><init>(Lcom/facebook/ads/redexgen/X/Wq;)V

    .line 57379
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6e;
    return-object v0
.end method

.method public final A0S()Lcom/facebook/ads/redexgen/X/6e;
    .locals 1

    .line 57380
    new-instance v0, Lcom/facebook/ads/redexgen/X/Wf;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Wf;-><init>(Lcom/facebook/ads/redexgen/X/Wq;)V

    .line 57381
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6e;
    return-object v0
.end method

.method public final A0T()Lcom/facebook/ads/redexgen/X/6e;
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission",
            "CatchGeneralException"
        }
    .end annotation

    .line 57382
    new-instance v0, Lcom/facebook/ads/redexgen/X/Wi;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Wi;-><init>(Lcom/facebook/ads/redexgen/X/Wq;)V

    .line 57383
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6e;
    return-object v0
.end method
