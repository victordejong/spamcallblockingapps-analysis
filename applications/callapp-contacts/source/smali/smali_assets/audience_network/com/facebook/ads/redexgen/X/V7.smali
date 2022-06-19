.class public final Lcom/facebook/ads/redexgen/X/V7;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/6e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/V9;->A0J()Lcom/facebook/ads/redexgen/X/6e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/V9;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/V9;)V
    .locals 0

    .line 56273
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/V7;->A00:Lcom/facebook/ads/redexgen/X/V9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A5F()Lcom/facebook/ads/redexgen/X/6t;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 56274
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V7;->A00:Lcom/facebook/ads/redexgen/X/V9;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/V9;->A01(Lcom/facebook/ads/redexgen/X/V9;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 56275
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/V7;->A00:Lcom/facebook/ads/redexgen/X/V9;

    sget-object v0, Lcom/facebook/ads/redexgen/X/6p;->A06:Lcom/facebook/ads/redexgen/X/6p;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/6V;->A08(Lcom/facebook/ads/redexgen/X/6p;)Lcom/facebook/ads/redexgen/X/6t;

    move-result-object v0

    return-object v0

    .line 56276
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V7;->A00:Lcom/facebook/ads/redexgen/X/V9;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/V9;->A01(Lcom/facebook/ads/redexgen/X/V9;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v0

    .line 56277
    .local p0, "pairedDevices":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 56278
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/bluetooth/BluetoothDevice;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 56279
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/botdetection/signals/model/signal_value/ICustomObjectSignalValueDef;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 56280
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 56281
    .local v1, "bluetoothDevice":Landroid/bluetooth/BluetoothDevice;
    new-instance v0, Lcom/facebook/ads/redexgen/X/V8;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/V8;-><init>(Landroid/bluetooth/BluetoothDevice;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56282
    .end local v1    # "bluetoothDevice":Landroid/bluetooth/BluetoothDevice;
    goto :goto_0

    .line 56283
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V7;->A00:Lcom/facebook/ads/redexgen/X/V9;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/6V;->A0E(Ljava/util/List;)Lcom/facebook/ads/redexgen/X/6t;

    move-result-object v0

    return-object v0
.end method
