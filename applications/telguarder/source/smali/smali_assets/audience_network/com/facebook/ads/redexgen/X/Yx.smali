.class public final Lcom/facebook/ads/redexgen/X/Yx;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/6k;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Yw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BluetoothDeviceObject"
.end annotation


# static fields
.field public static A06:[B

.field public static A07:[Ljava/lang/String;


# instance fields
.field public final A00:I

.field public final A01:I

.field public final A02:I

.field public final A03:I

.field public final A04:I

.field public final A05:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Yx;->A03()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Yx;->A02()V

    return-void
.end method

.method public constructor <init>(Landroid/bluetooth/BluetoothDevice;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 66041
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66042
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Yx;->A05:Ljava/lang/String;

    .line 66043
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Yx;->A03:I

    .line 66044
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x12

    if-lt v1, v0, :cond_0

    .line 66045
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getType()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Yx;->A04:I

    .line 66046
    :goto_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Yx;->A00:I

    .line 66047
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Yx;->A01:I

    .line 66048
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Yx;->A00(Landroid/bluetooth/BluetoothClass;)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Yx;->A02:I

    .line 66049
    return-void

    .line 66050
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Yx;->A04:I

    goto :goto_0
.end method

.method public static A00(Landroid/bluetooth/BluetoothClass;)I
    .locals 4

    .line 66051
    const/4 v3, 0x0

    .line 66052
    .local p0, "serviceBitmask":I
    const/4 v2, 0x0

    .local v3, "i":I
    :goto_0
    const/16 v0, 0x1f

    if-ge v2, v0, :cond_1

    .line 66053
    const/4 v1, 0x1

    shl-int v0, v1, v2

    invoke-virtual {p0, v0}, Landroid/bluetooth/BluetoothClass;->hasService(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66054
    shl-int/2addr v1, v2

    or-int/2addr v3, v1

    .line 66055
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 66056
    .end local v3    # "i":I
    :cond_1
    return v3
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/Yx;->A06:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    const/4 p0, 0x0

    :goto_0
    array-length v3, p1

    sget-object v1, Lcom/facebook/ads/redexgen/X/Yx;->A07:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x11

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Yx;->A07:[Ljava/lang/String;

    const-string v1, "3d1Wqd5ix26dbiKXWdl1f2421xHyj0eB"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-ge p0, v3, :cond_0

    aget-byte v0, p1, p0

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x35

    int-to-byte v0, v0

    aput-byte v0, p1, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A02()V
    .locals 4

    const/16 v0, 0xb

    new-array v3, v0, [B

    fill-array-data v3, :array_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/Yx;->A07:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x1

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
    sget-object v2, Lcom/facebook/ads/redexgen/X/Yx;->A07:[Ljava/lang/String;

    const-string v1, "22RcDjYIB5iRyb4Ww144eayJwVXl"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    sput-object v3, Lcom/facebook/ads/redexgen/X/Yx;->A06:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x2ct
        0x2bt
        0x37t
        0x3et
        0x39t
        0x16t
        0x29t
        0x3ft
        0x4dt
        0x4at
        0x3ft
    .end array-data
.end method

.method public static A03()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "xc3uenymGUwrs1EFUA3nkKHXBPPmzi0n"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "LgEgF4REPjY66XV5yqNKXvbOBT"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "ref9jtvBnbb2Hn1HyKbLwlqE7BTJaZA3"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "Ray3mM4D64pdoCWqlTAl5RvyuL"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "PNfxjWup5EH51mO6cS5xRMsW5Srn3OVV"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "0Ctsr1uVqlpsU7b"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "qDOiMaUSN3WHoAt"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Yx;->A07:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A82(Ljava/lang/Object;)Z
    .locals 5

    .line 66057
    check-cast p1, Lcom/facebook/ads/redexgen/X/Yx;

    .line 66058
    .local p0, "customObjectSignalValueDef":Lcom/facebook/ads/redexgen/X/Yx;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yx;->A05:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/Yx;->A05:Ljava/lang/String;

    if-eqz v0, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Yx;->A05:Ljava/lang/String;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/Yx;->A05:Ljava/lang/String;

    .line 66059
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Yx;->A03:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/Yx;->A03:I

    if-ne v1, v0, :cond_2

    iget v4, p0, Lcom/facebook/ads/redexgen/X/Yx;->A04:I

    iget v3, p1, Lcom/facebook/ads/redexgen/X/Yx;->A04:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/Yx;->A07:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x11

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Yx;->A07:[Ljava/lang/String;

    const-string v1, "p5FHyQ31YpBcXIwOlVQeEaZR69cbrqfq"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-ne v4, v3, :cond_2

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Yx;->A00:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/Yx;->A00:I

    if-ne v1, v0, :cond_2

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Yx;->A01:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/Yx;->A01:I

    if-ne v1, v0, :cond_2

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Yx;->A02:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/Yx;->A02:I

    if-ne v1, v0, :cond_2

    const/4 v0, 0x1

    .line 66060
    :goto_0
    return v0

    .line 66061
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final AE0()I
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BadMethodUse-java.lang.String.length"
        }
    .end annotation

    .line 66062
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yx;->A05:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v2, 0x5

    const/4 v1, 0x1

    const/16 v0, 0x4d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Yx;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yx;->A05:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v3, v0

    .line 66063
    :goto_0
    const/16 v2, 0x8

    const/4 v1, 0x2

    const/16 v0, 0xb

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Yx;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    add-int/2addr v3, v0

    .line 66064
    const/16 v2, 0xa

    const/4 v1, 0x1

    const/16 v0, 0x7e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Yx;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    add-int/2addr v3, v0

    .line 66065
    const/4 v2, 0x0

    const/4 v1, 0x2

    const/16 v0, 0x7d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Yx;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    add-int/2addr v3, v0

    .line 66066
    const/4 v2, 0x2

    const/4 v1, 0x3

    const/16 v0, 0x6f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Yx;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    add-int/2addr v3, v0

    .line 66067
    const/4 v2, 0x6

    const/4 v1, 0x2

    const/16 v0, 0x6f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Yx;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    add-int/2addr v3, v0

    .line 66068
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public final AEL()Lorg/json/JSONObject;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 66069
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 66070
    .local p0, "jsonObject":Lorg/json/JSONObject;
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Yx;->A05:Ljava/lang/String;

    const/4 v2, 0x5

    const/4 v1, 0x1

    const/16 v0, 0x4d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Yx;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 66071
    iget v3, p0, Lcom/facebook/ads/redexgen/X/Yx;->A03:I

    const/16 v2, 0x8

    const/4 v1, 0x2

    const/16 v0, 0xb

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Yx;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 66072
    iget v3, p0, Lcom/facebook/ads/redexgen/X/Yx;->A04:I

    const/16 v2, 0xa

    const/4 v1, 0x1

    const/16 v0, 0x7e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Yx;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 66073
    iget v3, p0, Lcom/facebook/ads/redexgen/X/Yx;->A00:I

    const/4 v2, 0x0

    const/4 v1, 0x2

    const/16 v0, 0x7d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Yx;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 66074
    iget v3, p0, Lcom/facebook/ads/redexgen/X/Yx;->A01:I

    const/4 v2, 0x2

    const/4 v1, 0x3

    const/16 v0, 0x6f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Yx;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 66075
    iget v3, p0, Lcom/facebook/ads/redexgen/X/Yx;->A02:I

    const/4 v2, 0x6

    const/4 v1, 0x2

    const/16 v0, 0x6f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Yx;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 66076
    return-object v4
.end method
