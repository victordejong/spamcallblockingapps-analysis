.class public final Lcom/facebook/ads/redexgen/X/Yy;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/6e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Yw;->A0J()Lcom/facebook/ads/redexgen/X/6e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A01:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Yw;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Yy;->A00()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Yw;)V
    .locals 0

    .line 66077
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Yy;->A00:Lcom/facebook/ads/redexgen/X/Yw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "J3R5WIjKlxhzhhhWq"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "FTU0cuuSB44sdXpfq6qLD1Fr3BwAn2GD"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "RvPYHMKLzYECwsGQVliJFX7SefOv1mi0"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "agVeaMxtMBcYAQZzq37VfUuNbIsWKXXM"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "vbRqoGSg6kLE7wqsEyFZHLYX"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "aMjBan5cl8u2SYYfRmS9Y9qI6HDGC3N1"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "tu3Ct1GIPffZ0ZnbriZkPO1dqp89QVWT"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "qkkhkHYTbAbZUNtFuEqkKMo3cTjgdv"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Yy;->A01:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A5D()Lcom/facebook/ads/redexgen/X/6t;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 66078
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yy;->A00:Lcom/facebook/ads/redexgen/X/Yw;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Yw;->A01(Lcom/facebook/ads/redexgen/X/Yw;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 66079
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Yy;->A00:Lcom/facebook/ads/redexgen/X/Yw;

    sget-object v0, Lcom/facebook/ads/redexgen/X/6p;->A06:Lcom/facebook/ads/redexgen/X/6p;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/6V;->A08(Lcom/facebook/ads/redexgen/X/6p;)Lcom/facebook/ads/redexgen/X/6t;

    move-result-object v0

    return-object v0

    .line 66080
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yy;->A00:Lcom/facebook/ads/redexgen/X/Yw;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Yw;->A01(Lcom/facebook/ads/redexgen/X/Yw;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v0

    .line 66081
    .local p0, "pairedDevices":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 66082
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/bluetooth/BluetoothDevice;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 66083
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/botdetection/signals/model/signal_value/ICustomObjectSignalValueDef;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 66084
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 66085
    .local v1, "bluetoothDevice":Landroid/bluetooth/BluetoothDevice;
    new-instance v0, Lcom/facebook/ads/redexgen/X/Yx;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Yx;-><init>(Landroid/bluetooth/BluetoothDevice;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66086
    .end local v1    # "bluetoothDevice":Landroid/bluetooth/BluetoothDevice;
    goto :goto_0

    .line 66087
    :cond_1
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Yy;->A00:Lcom/facebook/ads/redexgen/X/Yw;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Yy;->A01:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v2, v2, v0

    const/16 v0, 0x1c

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/Yy;->A01:[Ljava/lang/String;

    const-string v1, "8IftlNYb3S1lVEpEyBrnsSClU"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-virtual {v3, v4}, Lcom/facebook/ads/redexgen/X/6V;->A0E(Ljava/util/List;)Lcom/facebook/ads/redexgen/X/6t;

    move-result-object v0

    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
