.class public final Lcom/facebook/ads/redexgen/X/6F;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/6E;
    }
.end annotation


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/5v;

.field public final A01:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/facebook/ads/redexgen/X/6b;",
            ">;"
        }
    .end annotation
.end field

.field public final A02:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/5v;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/5v;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/facebook/ads/redexgen/X/6b;",
            ">;)V"
        }
    .end annotation

    .line 14372
    .local v1, "biometricSignals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/facebook/ads/internal/botdetection/signals/model/BDSignal;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14373
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/6F;->A02:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 14374
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/6F;->A00:Lcom/facebook/ads/redexgen/X/5v;

    .line 14375
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/6F;->A01:Ljava/util/Map;

    .line 14376
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/6F;->A02:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-virtual {v2, v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 14377
    return-void
.end method

.method private A00(I)I
    .locals 1

    .line 14378
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6F;->A00:Lcom/facebook/ads/redexgen/X/5v;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/5v;->A0e(I)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 14379
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6F;->A00:Lcom/facebook/ads/redexgen/X/5v;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/5v;->A0e(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 14380
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6F;->A00:Lcom/facebook/ads/redexgen/X/5v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/5v;->A0R()I

    move-result v0

    return v0
.end method

.method private declared-synchronized A01(Lcom/facebook/ads/redexgen/X/6t;Lcom/facebook/ads/redexgen/X/6b;)V
    .locals 4

    monitor-enter p0

    .line 14381
    :try_start_0
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/6b;->A00()I

    move-result v3

    .line 14382
    .local p0, "signalId":I
    invoke-static {}, Lcom/facebook/ads/redexgen/X/6g;->A01()Lcom/facebook/ads/redexgen/X/6g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/6g;->A03()Ljava/util/Map;

    move-result-object v1

    .line 14383
    .local p1, "signalCollectionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/facebook/ads/internal/botdetection/interval/buffer/CircularBuffer<Lcom/facebook/ads/internal/botdetection/signals/model/signal_value/SignalValueTypeDef;>;>;"
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 14384
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/60;

    .line 14385
    .local p2, "signalCollectedValues":Lcom/facebook/ads/redexgen/X/60;, "Lcom/facebook/ads/internal/botdetection/interval/buffer/CircularBuffer<Lcom/facebook/ads/internal/botdetection/signals/model/signal_value/SignalValueTypeDef;>;"
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/60;->A03()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/6t;

    goto :goto_0

    .end local v0
    :cond_0
    const/4 v1, 0x0

    .line 14386
    .local v3, "lastSignalValueTypeDef":Lcom/facebook/ads/redexgen/X/6t;
    :goto_0
    if-nez v2, :cond_1

    .line 14387
    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/6F;->A00(I)I

    move-result v0

    new-instance v2, Lcom/facebook/ads/redexgen/X/60;

    invoke-direct {v2, v0}, Lcom/facebook/ads/redexgen/X/60;-><init>(I)V

    .line 14388
    :cond_1
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/6b;->A03()Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/facebook/ads/redexgen/X/6t;->A0C(Lcom/facebook/ads/redexgen/X/6t;Ljava/util/EnumSet;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 14389
    invoke-virtual {v2, p1}, Lcom/facebook/ads/redexgen/X/60;->A05(Ljava/lang/Object;)V

    .line 14390
    invoke-static {}, Lcom/facebook/ads/redexgen/X/6g;->A01()Lcom/facebook/ads/redexgen/X/6g;

    move-result-object v1

    .line 14391
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/6t;->A06()I

    move-result v0

    invoke-virtual {v1, v3, v2, v0}, Lcom/facebook/ads/redexgen/X/6g;->A04(ILcom/facebook/ads/redexgen/X/60;I)V

    goto :goto_1

    .line 14392
    :cond_2
    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/6F;->A00(I)I

    move-result v0

    new-instance v2, Lcom/facebook/ads/redexgen/X/60;

    invoke-direct {v2, v0}, Lcom/facebook/ads/redexgen/X/60;-><init>(I)V

    .line 14393
    .local p2, "signalValueCircularBuffer":Lcom/facebook/ads/redexgen/X/60;, "Lcom/facebook/ads/internal/botdetection/interval/buffer/CircularBuffer<Lcom/facebook/ads/internal/botdetection/signals/model/signal_value/SignalValueTypeDef;>;"
    invoke-virtual {v2, p1}, Lcom/facebook/ads/redexgen/X/60;->A05(Ljava/lang/Object;)V

    .line 14394
    invoke-static {}, Lcom/facebook/ads/redexgen/X/6g;->A01()Lcom/facebook/ads/redexgen/X/6g;

    move-result-object v1

    .line 14395
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/6t;->A06()I

    move-result v0

    invoke-virtual {v1, v3, v2, v0}, Lcom/facebook/ads/redexgen/X/6g;->A04(ILcom/facebook/ads/redexgen/X/60;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14396
    .end local p2    # "signalValueCircularBuffer":Lcom/facebook/ads/redexgen/X/60;, "Lcom/facebook/ads/internal/botdetection/interval/buffer/CircularBuffer<Lcom/facebook/ads/internal/botdetection/signals/model/signal_value/SignalValueTypeDef;>;"
    :cond_3
    :goto_1
    monitor-exit p0

    return-void

    .line 14397
    .end local p0    # "signalId":I
    .end local p1    # "signalCollectionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/facebook/ads/internal/botdetection/interval/buffer/CircularBuffer<Lcom/facebook/ads/internal/botdetection/signals/model/signal_value/SignalValueTypeDef;>;>;"
    .end local v0
    .end local v0
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final A02(Lcom/facebook/ads/redexgen/X/6t;Lcom/facebook/ads/redexgen/X/6E;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CatchGeneralException"
        }
    .end annotation

    .line 14398
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6F;->A02:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 14399
    return-void

    .line 14400
    :cond_0
    :try_start_0
    sget-object v1, Lcom/facebook/ads/redexgen/X/6D;->A00:[I

    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/6E;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 14401
    :pswitch_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/6F;->A01:Ljava/util/Map;

    const/16 v0, 0x2a44

    .line 14402
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/6b;

    .line 14403
    .local p0, "bdRelativeHumiditySensorSignal":Lcom/facebook/ads/redexgen/X/6b;
    if-eqz p1, :cond_1

    if-nez v0, :cond_2

    :cond_1
    return-void

    .line 14404
    :cond_2
    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/6F;->A01(Lcom/facebook/ads/redexgen/X/6t;Lcom/facebook/ads/redexgen/X/6b;)V

    goto/16 :goto_0

    .line 14405
    .end local p0    # "bdRelativeHumiditySensorSignal":Lcom/facebook/ads/redexgen/X/6b;
    :pswitch_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/6F;->A01:Ljava/util/Map;

    const/16 v0, 0x2a43

    .line 14406
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/6b;

    .line 14407
    .local p0, "bdAmbientTemperatureSensorSignal":Lcom/facebook/ads/redexgen/X/6b;
    if-eqz p1, :cond_3

    if-nez v0, :cond_4

    :cond_3
    return-void

    .line 14408
    :cond_4
    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/6F;->A01(Lcom/facebook/ads/redexgen/X/6t;Lcom/facebook/ads/redexgen/X/6b;)V

    goto/16 :goto_0

    .line 14409
    .end local p0    # "bdAmbientTemperatureSensorSignal":Lcom/facebook/ads/redexgen/X/6b;
    :pswitch_2
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/6F;->A01:Ljava/util/Map;

    const/16 v0, 0x2a42

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/6b;

    .line 14410
    .local p0, "bdBarometerSensorSignal":Lcom/facebook/ads/redexgen/X/6b;
    if-eqz p1, :cond_5

    if-nez v0, :cond_6

    :cond_5
    return-void

    .line 14411
    :cond_6
    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/6F;->A01(Lcom/facebook/ads/redexgen/X/6t;Lcom/facebook/ads/redexgen/X/6b;)V

    goto/16 :goto_0

    .line 14412
    .end local p0    # "bdBarometerSensorSignal":Lcom/facebook/ads/redexgen/X/6b;
    :pswitch_3
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/6F;->A01:Ljava/util/Map;

    const/16 v0, 0x2a41

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/6b;

    .line 14413
    .local p0, "bdLightSensorSignal":Lcom/facebook/ads/redexgen/X/6b;
    if-eqz p1, :cond_7

    if-nez v0, :cond_8

    :cond_7
    return-void

    .line 14414
    :cond_8
    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/6F;->A01(Lcom/facebook/ads/redexgen/X/6t;Lcom/facebook/ads/redexgen/X/6b;)V

    goto/16 :goto_0

    .line 14415
    .end local p0    # "bdLightSensorSignal":Lcom/facebook/ads/redexgen/X/6b;
    :pswitch_4
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/6F;->A01:Ljava/util/Map;

    const/16 v0, 0x2a40

    .line 14416
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/6b;

    .line 14417
    .local p0, "bdStepDetectorSensorSignal":Lcom/facebook/ads/redexgen/X/6b;
    if-eqz p1, :cond_9

    if-nez v0, :cond_a

    :cond_9
    return-void

    .line 14418
    :cond_a
    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/6F;->A01(Lcom/facebook/ads/redexgen/X/6t;Lcom/facebook/ads/redexgen/X/6b;)V

    goto/16 :goto_0

    .line 14419
    .end local p0    # "bdStepDetectorSensorSignal":Lcom/facebook/ads/redexgen/X/6b;
    :pswitch_5
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/6F;->A01:Ljava/util/Map;

    const/16 v0, 0x2a3f

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/6b;

    .line 14420
    .local p0, "bdProximitySensorSignal":Lcom/facebook/ads/redexgen/X/6b;
    if-eqz p1, :cond_b

    if-nez v0, :cond_c

    :cond_b
    return-void

    .line 14421
    :cond_c
    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/6F;->A01(Lcom/facebook/ads/redexgen/X/6t;Lcom/facebook/ads/redexgen/X/6b;)V

    goto :goto_0

    .line 14422
    .end local p0    # "bdProximitySensorSignal":Lcom/facebook/ads/redexgen/X/6b;
    :pswitch_6
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/6F;->A01:Ljava/util/Map;

    const/16 v0, 0x2a3e

    .line 14423
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/6b;

    .line 14424
    .local p0, "bdOrientationSensorSignal":Lcom/facebook/ads/redexgen/X/6b;
    if-eqz p1, :cond_d

    if-nez v0, :cond_e

    :cond_d
    return-void

    .line 14425
    :cond_e
    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/6F;->A01(Lcom/facebook/ads/redexgen/X/6t;Lcom/facebook/ads/redexgen/X/6b;)V

    goto :goto_0

    .line 14426
    .end local p0    # "bdOrientationSensorSignal":Lcom/facebook/ads/redexgen/X/6b;
    :pswitch_7
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/6F;->A01:Ljava/util/Map;

    const/16 v0, 0x2a3d

    .line 14427
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/6b;

    .line 14428
    .local p0, "bdGeomagneticRotationSensorSignal":Lcom/facebook/ads/redexgen/X/6b;
    if-eqz p1, :cond_f

    if-nez v0, :cond_10

    :cond_f
    return-void

    .line 14429
    :cond_10
    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/6F;->A01(Lcom/facebook/ads/redexgen/X/6t;Lcom/facebook/ads/redexgen/X/6b;)V

    goto :goto_0

    .line 14430
    .end local p0    # "bdGeomagneticRotationSensorSignal":Lcom/facebook/ads/redexgen/X/6b;
    :pswitch_8
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/6F;->A01:Ljava/util/Map;

    const/16 v0, 0x2a3c

    .line 14431
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/6b;

    .line 14432
    .local p0, "bdMagnetometerSensorSignal":Lcom/facebook/ads/redexgen/X/6b;
    if-eqz p1, :cond_11

    if-nez v0, :cond_12

    :cond_11
    return-void

    .line 14433
    :cond_12
    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/6F;->A01(Lcom/facebook/ads/redexgen/X/6t;Lcom/facebook/ads/redexgen/X/6b;)V

    goto :goto_0

    .line 14434
    .end local p0    # "bdMagnetometerSensorSignal":Lcom/facebook/ads/redexgen/X/6b;
    :pswitch_9
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/6F;->A01:Ljava/util/Map;

    const/16 v0, 0x2a3a

    .line 14435
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/6b;

    .line 14436
    .local p0, "bdAccelerometerSensorSignal":Lcom/facebook/ads/redexgen/X/6b;
    if-eqz p1, :cond_13

    if-nez v0, :cond_14

    :cond_13
    return-void

    .line 14437
    :cond_14
    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/6F;->A01(Lcom/facebook/ads/redexgen/X/6t;Lcom/facebook/ads/redexgen/X/6b;)V

    goto :goto_0

    .line 14438
    .end local p0    # "bdAccelerometerSensorSignal":Lcom/facebook/ads/redexgen/X/6b;
    :pswitch_a
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/6F;->A01:Ljava/util/Map;

    const/16 v0, 0x2a30

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/6b;

    .line 14439
    .local p0, "bdTouchSignal":Lcom/facebook/ads/redexgen/X/6b;
    if-eqz p1, :cond_15

    if-nez v0, :cond_16

    :cond_15
    return-void

    .line 14440
    :cond_16
    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/6F;->A01(Lcom/facebook/ads/redexgen/X/6t;Lcom/facebook/ads/redexgen/X/6b;)V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14441
    :catchall_0
    move-exception v0

    .line 14442
    .local p0, "t":Ljava/lang/Throwable;
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/67;->A04(Ljava/lang/Throwable;)V

    .line 14443
    .end local p0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
