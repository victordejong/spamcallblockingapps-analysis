.class public final Lcom/facebook/ads/redexgen/X/Xe;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/6e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Xc;->A0H()Lcom/facebook/ads/redexgen/X/6e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A01:[B


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Xc;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Xe;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Xc;)V
    .locals 0

    .line 65291
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Xe;->A00:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Xe;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x32

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .locals 1

    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Xe;->A01:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x64t
        0x72t
        0x79t
        0x64t
        0x78t
        0x65t
    .end array-data
.end method


# virtual methods
.method public final A5D()Lcom/facebook/ads/redexgen/X/6t;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 65292
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Xe;->A00:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/Xc;->A01(Lcom/facebook/ads/redexgen/X/Xc;)Landroid/content/Context;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v1, 0x6

    const/16 v0, 0x25

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Xe;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, v4, Lcom/facebook/ads/redexgen/X/Xc;->A00:Landroid/hardware/SensorManager;

    .line 65293
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x14

    if-ge v1, v0, :cond_0

    .line 65294
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Xe;->A00:Lcom/facebook/ads/redexgen/X/Xc;

    sget-object v0, Lcom/facebook/ads/redexgen/X/6p;->A05:Lcom/facebook/ads/redexgen/X/6p;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/6V;->A08(Lcom/facebook/ads/redexgen/X/6p;)Lcom/facebook/ads/redexgen/X/6t;

    move-result-object v0

    return-object v0

    .line 65295
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xe;->A00:Lcom/facebook/ads/redexgen/X/Xc;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Xc;->A00:Landroid/hardware/SensorManager;

    if-nez v0, :cond_1

    .line 65296
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Xe;->A00:Lcom/facebook/ads/redexgen/X/Xc;

    sget-object v0, Lcom/facebook/ads/redexgen/X/6p;->A07:Lcom/facebook/ads/redexgen/X/6p;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/6V;->A08(Lcom/facebook/ads/redexgen/X/6p;)Lcom/facebook/ads/redexgen/X/6t;

    move-result-object v0

    return-object v0

    .line 65297
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xe;->A00:Lcom/facebook/ads/redexgen/X/Xc;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Xc;->A00:Landroid/hardware/SensorManager;

    const/4 v0, -0x1

    invoke-virtual {v1, v0}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    .line 65298
    .local p0, "deviceSensorList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 65299
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/botdetection/signals/model/signal_value/ICustomObjectSignalValueDef;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Sensor;

    .line 65300
    .local v2, "sensor":Landroid/hardware/Sensor;
    new-instance v0, Lcom/facebook/ads/redexgen/X/Xd;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Xd;-><init>(Landroid/hardware/Sensor;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65301
    .end local v2    # "sensor":Landroid/hardware/Sensor;
    goto :goto_0

    .line 65302
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xe;->A00:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/6V;->A0E(Ljava/util/List;)Lcom/facebook/ads/redexgen/X/6t;

    move-result-object v0

    return-object v0
.end method
