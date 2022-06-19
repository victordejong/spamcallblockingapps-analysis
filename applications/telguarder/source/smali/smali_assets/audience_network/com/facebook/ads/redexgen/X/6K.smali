.class public final Lcom/facebook/ads/redexgen/X/6K;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/hardware/SensorEventListener;


# static fields
.field public static A09:[B

.field public static A0A:[Ljava/lang/String;

.field public static final A0B:Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/6I;

.field public final A01:Landroid/content/Context;

.field public final A02:Landroid/hardware/SensorManager;

.field public final A03:Landroid/os/Handler;

.field public final A04:Lcom/facebook/ads/redexgen/X/6F;

.field public final A05:Lcom/facebook/ads/redexgen/X/6H;

.field public final A06:Lcom/facebook/ads/redexgen/X/6i;

.field public final A07:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation
.end field

.field public final A08:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/facebook/ads/redexgen/X/6O;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 14573
    invoke-static {}, Lcom/facebook/ads/redexgen/X/6K;->A02()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/6K;->A01()V

    const-class v0, Lcom/facebook/ads/redexgen/X/6K;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/6K;->A0B:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/6F;Lcom/facebook/ads/redexgen/X/6i;)V
    .locals 3

    .line 14574
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14575
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/6K;->A08:Ljava/util/Map;

    .line 14576
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/6K;->A01:Landroid/content/Context;

    .line 14577
    invoke-static {}, Lcom/facebook/ads/redexgen/X/6z;->A00()Lcom/facebook/ads/redexgen/X/6z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/6z;->A04()Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/6K;->A03:Landroid/os/Handler;

    .line 14578
    const/4 v2, 0x0

    const/4 v1, 0x6

    const/16 v0, 0x28

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/6K;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/6K;->A02:Landroid/hardware/SensorManager;

    .line 14579
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/6K;->A02:Landroid/hardware/SensorManager;

    const/4 v0, -0x1

    invoke-virtual {v1, v0}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/6K;->A07:Ljava/util/List;

    .line 14580
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/6K;->A04:Lcom/facebook/ads/redexgen/X/6F;

    .line 14581
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/6K;->A04:Lcom/facebook/ads/redexgen/X/6F;

    new-instance v0, Lcom/facebook/ads/redexgen/X/6H;

    invoke-direct {v0, v1, p3}, Lcom/facebook/ads/redexgen/X/6H;-><init>(Lcom/facebook/ads/redexgen/X/6F;Lcom/facebook/ads/redexgen/X/6i;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/6K;->A05:Lcom/facebook/ads/redexgen/X/6H;

    .line 14582
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/6K;->A06:Lcom/facebook/ads/redexgen/X/6i;

    .line 14583
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/6K;->A09:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x7d

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

    sput-object v0, Lcom/facebook/ads/redexgen/X/6K;->A09:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x18t
        0xat
        0x13t
        0x18t
        0x14t
        0x17t
    .end array-data
.end method

.method public static A02()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "6MkU8E"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "uqwIFUoUH8f7JZc6i02BSlDlSMMngxai"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "GRyU3ekWf4WFCKRNGjHd6s4EGlD3olTl"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "aYedUfsf7VPJPzjxPl1mTX8Abxn8Smrn"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "NVNCBN4GIxZEoehPe5iNn7KBkAjYFotj"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "5oT3YKz00hV7eUPnSsa2ibsVrjqaAAzP"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "R95erZe9NoKbNO850tHBmli0deZBgbSY"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "J6JwWd9CBNFbHMtPS5crxalPrRscrQc2"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/6K;->A0A:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final declared-synchronized A03(Ljava/util/List;)V
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CatchGeneralException"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/6O;",
            ">;)V"
        }
    .end annotation

    .local v0, "sensorTypes":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/botdetection/signals/biometric/model/SensorType;>;"
    monitor-enter p0

    .line 14584
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/facebook/ads/redexgen/X/6O;

    .line 14585
    .local p1, "sensorType":Lcom/facebook/ads/redexgen/X/6O;
    if-nez v6, :cond_1

    goto :goto_0

    .line 14586
    :cond_1
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/6O;->A02()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 14587
    .local v8, "type":I
    const/4 v3, -0x1

    sget-object v1, Lcom/facebook/ads/redexgen/X/6K;->A0A:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x6

    if-eq v1, v0, :cond_2

    goto :goto_2

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/6K;->A0A:[Ljava/lang/String;

    const-string v1, "ca4EHozSLNvKWWYqtXZyO59Cy5Fd8udx"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-ne v7, v3, :cond_3

    goto :goto_0

    .line 14588
    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/6K;->A08:Ljava/util/Map;

    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/6O;->ordinal()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    goto :goto_0

    .line 14589
    :cond_4
    if-nez v7, :cond_6

    .line 14590
    sget-object v1, Lcom/facebook/ads/redexgen/X/6J;->A00:[I

    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/6O;->ordinal()I

    move-result v0

    aget v1, v1, v0

    const/4 v0, 0x1

    if-eq v1, v0, :cond_5

    goto :goto_0

    .line 14591
    :cond_5
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/6K;->A05:Lcom/facebook/ads/redexgen/X/6H;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6K;->A01:Landroid/content/Context;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/6H;->A02(Landroid/content/Context;)V

    goto :goto_0

    .line 14592
    :cond_6
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6K;->A07:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Sensor;

    .line 14593
    .local v6, "sensor":Landroid/hardware/Sensor;
    invoke-virtual {v4}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    if-eq v7, v0, :cond_7

    goto :goto_1

    .line 14594
    :cond_7
    new-instance v0, Lcom/facebook/ads/redexgen/X/6I;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/6I;-><init>(Landroid/hardware/SensorEventListener;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/6K;->A00:Lcom/facebook/ads/redexgen/X/6I;

    .line 14595
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/6K;->A02:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/6K;->A00:Lcom/facebook/ads/redexgen/X/6I;

    const/4 v1, 0x3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6K;->A03:Landroid/os/Handler;

    invoke-virtual {v3, v2, v4, v1, v0}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 14596
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/6K;->A08:Ljava/util/Map;

    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/6O;->ordinal()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 14597
    :catchall_0
    move-exception v0

    .line 14598
    .local p0, "t":Ljava/lang/Throwable;
    :try_start_2
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/67;->A03(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 14599
    .end local p0    # "t":Ljava/lang/Throwable;
    :cond_8
    monitor-exit p0

    return-void

    .line 14600
    .end local v0    # "sensorTypes":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/botdetection/signals/biometric/model/SensorType;>;"
    .end local v0
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A04(Ljava/util/List;)V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CatchGeneralException"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/6O;",
            ">;)V"
        }
    .end annotation

    .local v5, "sensorTypes":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/botdetection/signals/biometric/model/SensorType;>;"
    monitor-enter p0

    .line 14601
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6K;->A08:Ljava/util/Map;

    if-nez v0, :cond_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit p0

    return-void

    .line 14602
    :cond_0
    if-nez p1, :cond_1

    .line 14603
    :try_start_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/6K;->A02:Landroid/hardware/SensorManager;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6K;->A00:Lcom/facebook/ads/redexgen/X/6I;

    invoke-virtual {v1, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 14604
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6K;->A05:Lcom/facebook/ads/redexgen/X/6H;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/6H;->A01()V

    .line 14605
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6K;->A08:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 14606
    monitor-exit p0

    return-void

    .line 14607
    :cond_1
    :try_start_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/ads/redexgen/X/6O;

    .line 14608
    .local p1, "sensorType":Lcom/facebook/ads/redexgen/X/6O;
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/6O;->A02()I

    move-result v1

    const/4 v0, -0x1

    if-ne v1, v0, :cond_3

    goto :goto_0

    .line 14609
    :cond_3
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/6O;->A02()I

    move-result v0

    if-nez v0, :cond_4

    .line 14610
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/6K;->A08:Ljava/util/Map;

    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/6O;->ordinal()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14611
    sget-object v1, Lcom/facebook/ads/redexgen/X/6J;->A00:[I

    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/6O;->ordinal()I

    move-result v0

    aget v1, v1, v0

    const/4 v0, 0x1

    if-eq v1, v0, :cond_6

    .line 14612
    :cond_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6K;->A07:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Sensor;

    .line 14613
    .local v1, "sensor":Landroid/hardware/Sensor;
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/6O;->A02()I

    move-result v1

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    if-ne v1, v0, :cond_5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 14614
    :try_start_3
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/6K;->A02:Landroid/hardware/SensorManager;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6K;->A00:Lcom/facebook/ads/redexgen/X/6I;

    invoke-virtual {v1, v0, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 14615
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/6K;->A08:Ljava/util/Map;

    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/6O;->ordinal()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 14616
    :catchall_0
    move-exception v0

    .line 14617
    .local v0, "t":Ljava/lang/Throwable;
    :try_start_4
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/67;->A03(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 14618
    :cond_6
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6K;->A05:Lcom/facebook/ads/redexgen/X/6H;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/6H;->A01()V

    goto :goto_0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 14619
    :catchall_1
    move-exception v0

    .line 14620
    .local p0, "t":Ljava/lang/Throwable;
    :try_start_5
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/67;->A03(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 14621
    .end local p0    # "t":Ljava/lang/Throwable;
    :cond_7
    monitor-exit p0

    return-void

    .line 14622
    .end local v0    # "t":Ljava/lang/Throwable;
    .end local v5    # "sensorTypes":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/botdetection/signals/biometric/model/SensorType;>;"
    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    .line 14623
    return-void
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 13
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CatchGeneralException"
        }
    .end annotation

    .line 14624
    if-nez p1, :cond_0

    .line 14625
    return-void

    .line 14626
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 14627
    .local p0, "timeStamp":J
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6K;->A01:Landroid/content/Context;

    if-nez v0, :cond_1

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x1e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/6K;->A00(III)Ljava/lang/String;

    move-result-object v2

    .line 14628
    .local v3, "contextPackageName":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/6K;->A06:Lcom/facebook/ads/redexgen/X/6i;

    sget-object v0, Lcom/facebook/ads/redexgen/X/6i;->A0G:Lcom/facebook/ads/redexgen/X/6i;

    if-ne v1, v0, :cond_2

    goto :goto_1

    .line 14629
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6K;->A01:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 14630
    :goto_1
    const/4 v5, 0x0

    goto :goto_2

    .line 14631
    :cond_2
    new-instance v5, Lcom/facebook/ads/redexgen/X/6r;

    invoke-direct {v5, v2}, Lcom/facebook/ads/redexgen/X/6r;-><init>(Ljava/lang/String;)V

    .line 14632
    .local v3, "signalValueContext":Lcom/facebook/ads/redexgen/X/6r;
    :goto_2
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v9

    const/4 v7, 0x3

    const/4 v2, 0x2

    const/4 v6, 0x1

    const/4 v12, 0x0

    if-eq v9, v6, :cond_3

    goto :goto_3

    .line 14633
    :cond_3
    new-array v1, v7, [F

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v12

    aput v0, v1, v12

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v6

    aput v0, v1, v6

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v2

    aput v0, v1, v2

    new-instance v0, Lcom/facebook/ads/redexgen/X/6N;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/6N;-><init>([F)V

    new-instance v2, Lcom/facebook/ads/redexgen/X/Wu;

    invoke-direct {v2, v3, v4, v5, v0}, Lcom/facebook/ads/redexgen/X/Wu;-><init>(JLcom/facebook/ads/redexgen/X/6r;Lcom/facebook/ads/redexgen/X/6N;)V

    .line 14634
    .restart local v0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/6K;->A04:Lcom/facebook/ads/redexgen/X/6F;

    sget-object v0, Lcom/facebook/ads/redexgen/X/6E;->A02:Lcom/facebook/ads/redexgen/X/6E;

    invoke-virtual {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/6F;->A03(Lcom/facebook/ads/redexgen/X/6t;Lcom/facebook/ads/redexgen/X/6E;)V

    goto :goto_4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14635
    :catchall_0
    move-exception v0

    .line 14636
    .local p0, "t":Ljava/lang/Throwable;
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/67;->A03(Ljava/lang/Throwable;)V

    goto :goto_4

    .line 14637
    :goto_3
    if-eq v9, v2, :cond_c

    const/4 v10, 0x4

    if-eq v9, v10, :cond_b

    const/4 v0, 0x5

    if-eq v9, v0, :cond_a

    const/4 v0, 0x6

    if-eq v9, v0, :cond_9

    const/16 v11, 0x8

    sget-object v8, Lcom/facebook/ads/redexgen/X/6K;->A0A:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v8, v0

    const/4 v0, 0x7

    aget-object v8, v8, v0

    const/16 v0, 0x17

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v8, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_d

    sget-object v8, Lcom/facebook/ads/redexgen/X/6K;->A0A:[Ljava/lang/String;

    const-string v1, "jZiJqCzyMf7lr8yzjdRm1QiDPJsbb2fk"

    const/4 v0, 0x5

    aput-object v1, v8, v0

    if-eq v9, v11, :cond_8

    const/16 v0, 0x12

    if-eq v9, v0, :cond_7

    const/16 v0, 0x14

    if-eq v9, v0, :cond_6

    const/16 v0, 0xc

    if-eq v9, v0, :cond_5

    const/16 v0, 0xd

    if-eq v9, v0, :cond_4

    .line 14638
    .end local p0    # "t":Ljava/lang/Throwable;
    :goto_4
    return-void

    .line 14639
    :cond_4
    :try_start_1
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v12

    new-instance v2, Lcom/facebook/ads/redexgen/X/X0;

    invoke-direct {v2, v3, v4, v5, v0}, Lcom/facebook/ads/redexgen/X/X0;-><init>(JLcom/facebook/ads/redexgen/X/6r;F)V

    .line 14640
    .local v0, "floatSignalValueType":Lcom/facebook/ads/redexgen/X/X0;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/6K;->A04:Lcom/facebook/ads/redexgen/X/6F;

    sget-object v0, Lcom/facebook/ads/redexgen/X/6E;->A03:Lcom/facebook/ads/redexgen/X/6E;

    invoke-virtual {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/6F;->A03(Lcom/facebook/ads/redexgen/X/6t;Lcom/facebook/ads/redexgen/X/6E;)V

    goto :goto_4

    .line 14641
    :cond_5
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v12

    new-instance v2, Lcom/facebook/ads/redexgen/X/X0;

    invoke-direct {v2, v3, v4, v5, v0}, Lcom/facebook/ads/redexgen/X/X0;-><init>(JLcom/facebook/ads/redexgen/X/6r;F)V

    .line 14642
    .restart local v0    # "floatSignalValueType":Lcom/facebook/ads/redexgen/X/X0;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/6K;->A04:Lcom/facebook/ads/redexgen/X/6F;

    sget-object v0, Lcom/facebook/ads/redexgen/X/6E;->A0B:Lcom/facebook/ads/redexgen/X/6E;

    invoke-virtual {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/6F;->A03(Lcom/facebook/ads/redexgen/X/6t;Lcom/facebook/ads/redexgen/X/6E;)V

    goto :goto_4

    .line 14643
    :cond_6
    new-array v1, v10, [F

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v12

    aput v0, v1, v12

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v6

    aput v0, v1, v6

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v2

    aput v0, v1, v2

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v7

    aput v0, v1, v7

    new-instance v0, Lcom/facebook/ads/redexgen/X/6N;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/6N;-><init>([F)V

    new-instance v2, Lcom/facebook/ads/redexgen/X/Wu;

    invoke-direct {v2, v3, v4, v5, v0}, Lcom/facebook/ads/redexgen/X/Wu;-><init>(JLcom/facebook/ads/redexgen/X/6r;Lcom/facebook/ads/redexgen/X/6N;)V

    .line 14644
    .local v0, "sensorSignalValueType":Lcom/facebook/ads/redexgen/X/Wu;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/6K;->A04:Lcom/facebook/ads/redexgen/X/6F;

    sget-object v0, Lcom/facebook/ads/redexgen/X/6E;->A05:Lcom/facebook/ads/redexgen/X/6E;

    invoke-virtual {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/6F;->A03(Lcom/facebook/ads/redexgen/X/6t;Lcom/facebook/ads/redexgen/X/6E;)V

    goto :goto_4

    .line 14645
    :cond_7
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v12

    new-instance v2, Lcom/facebook/ads/redexgen/X/X0;

    invoke-direct {v2, v3, v4, v5, v0}, Lcom/facebook/ads/redexgen/X/X0;-><init>(JLcom/facebook/ads/redexgen/X/6r;F)V

    .line 14646
    .local v0, "floatSignalValueType":Lcom/facebook/ads/redexgen/X/X0;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/6K;->A04:Lcom/facebook/ads/redexgen/X/6F;

    sget-object v0, Lcom/facebook/ads/redexgen/X/6E;->A0C:Lcom/facebook/ads/redexgen/X/6E;

    invoke-virtual {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/6F;->A03(Lcom/facebook/ads/redexgen/X/6t;Lcom/facebook/ads/redexgen/X/6E;)V

    goto :goto_4

    .line 14647
    :cond_8
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v12

    new-instance v2, Lcom/facebook/ads/redexgen/X/X0;

    invoke-direct {v2, v3, v4, v5, v0}, Lcom/facebook/ads/redexgen/X/X0;-><init>(JLcom/facebook/ads/redexgen/X/6r;F)V

    .line 14648
    .restart local v0    # "floatSignalValueType":Lcom/facebook/ads/redexgen/X/X0;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/6K;->A04:Lcom/facebook/ads/redexgen/X/6F;

    sget-object v0, Lcom/facebook/ads/redexgen/X/6E;->A0A:Lcom/facebook/ads/redexgen/X/6E;

    invoke-virtual {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/6F;->A03(Lcom/facebook/ads/redexgen/X/6t;Lcom/facebook/ads/redexgen/X/6E;)V

    goto :goto_4

    .line 14649
    :cond_9
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v12

    new-instance v2, Lcom/facebook/ads/redexgen/X/X0;

    invoke-direct {v2, v3, v4, v5, v0}, Lcom/facebook/ads/redexgen/X/X0;-><init>(JLcom/facebook/ads/redexgen/X/6r;F)V

    .line 14650
    .restart local v0    # "floatSignalValueType":Lcom/facebook/ads/redexgen/X/X0;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/6K;->A04:Lcom/facebook/ads/redexgen/X/6F;

    sget-object v0, Lcom/facebook/ads/redexgen/X/6E;->A04:Lcom/facebook/ads/redexgen/X/6E;

    invoke-virtual {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/6F;->A03(Lcom/facebook/ads/redexgen/X/6t;Lcom/facebook/ads/redexgen/X/6E;)V

    goto/16 :goto_4

    .line 14651
    :cond_a
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v12

    new-instance v2, Lcom/facebook/ads/redexgen/X/X0;

    invoke-direct {v2, v3, v4, v5, v0}, Lcom/facebook/ads/redexgen/X/X0;-><init>(JLcom/facebook/ads/redexgen/X/6r;F)V

    .line 14652
    .restart local v0    # "floatSignalValueType":Lcom/facebook/ads/redexgen/X/X0;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/6K;->A04:Lcom/facebook/ads/redexgen/X/6F;

    sget-object v0, Lcom/facebook/ads/redexgen/X/6E;->A07:Lcom/facebook/ads/redexgen/X/6E;

    invoke-virtual {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/6F;->A03(Lcom/facebook/ads/redexgen/X/6t;Lcom/facebook/ads/redexgen/X/6E;)V

    goto/16 :goto_4

    .line 14653
    :cond_b
    new-array v1, v7, [F

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v12

    aput v0, v1, v12

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v6

    aput v0, v1, v6

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v2

    aput v0, v1, v2

    new-instance v0, Lcom/facebook/ads/redexgen/X/6N;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/6N;-><init>([F)V

    new-instance v2, Lcom/facebook/ads/redexgen/X/Wu;

    invoke-direct {v2, v3, v4, v5, v0}, Lcom/facebook/ads/redexgen/X/Wu;-><init>(JLcom/facebook/ads/redexgen/X/6r;Lcom/facebook/ads/redexgen/X/6N;)V

    .line 14654
    .local v0, "sensorSignalValueType":Lcom/facebook/ads/redexgen/X/Wu;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/6K;->A04:Lcom/facebook/ads/redexgen/X/6F;

    sget-object v0, Lcom/facebook/ads/redexgen/X/6E;->A06:Lcom/facebook/ads/redexgen/X/6E;

    invoke-virtual {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/6F;->A03(Lcom/facebook/ads/redexgen/X/6t;Lcom/facebook/ads/redexgen/X/6E;)V

    goto/16 :goto_4

    .line 14655
    :cond_c
    new-array v1, v7, [F

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v12

    aput v0, v1, v12

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v6

    aput v0, v1, v6

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v2

    aput v0, v1, v2

    new-instance v0, Lcom/facebook/ads/redexgen/X/6N;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/6N;-><init>([F)V

    new-instance v2, Lcom/facebook/ads/redexgen/X/Wu;

    invoke-direct {v2, v3, v4, v5, v0}, Lcom/facebook/ads/redexgen/X/Wu;-><init>(JLcom/facebook/ads/redexgen/X/6r;Lcom/facebook/ads/redexgen/X/6N;)V

    .line 14656
    .restart local v0    # "sensorSignalValueType":Lcom/facebook/ads/redexgen/X/Wu;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/6K;->A04:Lcom/facebook/ads/redexgen/X/6F;

    sget-object v0, Lcom/facebook/ads/redexgen/X/6E;->A08:Lcom/facebook/ads/redexgen/X/6E;

    invoke-virtual {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/6F;->A03(Lcom/facebook/ads/redexgen/X/6t;Lcom/facebook/ads/redexgen/X/6E;)V

    goto/16 :goto_4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_d
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
