.class final Lcom/google/android/gms/internal/ads/aaa;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field private final a:Landroid/hardware/SensorManager;

.field private final b:Ljava/lang/Object;

.field private final c:Landroid/view/Display;

.field private final d:[F

.field private final e:[F

.field private f:[F
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "sensorThreadLock"
    .end annotation
.end field

.field private g:Landroid/os/Handler;

.field private h:Lcom/google/android/gms/internal/ads/aac;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/16 v1, 0x9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string/jumbo v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/aaa;->a:Landroid/hardware/SensorManager;

    .line 3
    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 4
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/aaa;->c:Landroid/view/Display;

    .line 5
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/aaa;->d:[F

    .line 6
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/aaa;->e:[F

    .line 7
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/aaa;->b:Ljava/lang/Object;

    .line 8
    return-void
.end method

.method private final a(II)V
    .locals 3

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aaa;->e:[F

    aget v0, v0, p1

    .line 66
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aaa;->e:[F

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/aaa;->e:[F

    aget v2, v2, p2

    aput v2, v1, p1

    .line 67
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aaa;->e:[F

    aput v0, v1, p2

    .line 68
    return-void
.end method


# virtual methods
.method final a()V
    .locals 4

    .prologue
    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aaa;->g:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 23
    :cond_0
    :goto_0
    return-void

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aaa;->a:Landroid/hardware/SensorManager;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    .line 12
    if-nez v0, :cond_2

    .line 13
    const-string/jumbo v0, "No Sensor of TYPE_ROTATION_VECTOR"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 15
    :cond_2
    new-instance v1, Landroid/os/HandlerThread;

    const-string/jumbo v2, "OrientationMonitor"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 17
    new-instance v2, Lcom/google/android/gms/internal/ads/cnz;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/cnz;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/aaa;->g:Landroid/os/Handler;

    .line 18
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aaa;->a:Landroid/hardware/SensorManager;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/aaa;->g:Landroid/os/Handler;

    .line 19
    invoke-virtual {v1, p0, v0, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    move-result v0

    .line 20
    if-nez v0, :cond_0

    .line 21
    const-string/jumbo v0, "SensorManager.registerListener failed."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->c(Ljava/lang/String;)V

    .line 22
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/aaa;->b()V

    goto :goto_0
.end method

.method final a(Lcom/google/android/gms/internal/ads/aac;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/aaa;->h:Lcom/google/android/gms/internal/ads/aac;

    .line 31
    return-void
.end method

.method final a([F)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 59
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aaa;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 60
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/aaa;->f:[F

    if-nez v2, :cond_0

    .line 61
    monitor-exit v1

    .line 63
    :goto_0
    return v0

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aaa;->f:[F

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/aaa;->f:[F

    array-length v4, v4

    invoke-static {v0, v2, p1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 63
    const/4 v0, 0x1

    monitor-exit v1

    goto :goto_0

    .line 64
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method final b()V
    .locals 2

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aaa;->g:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 29
    :goto_0
    return-void

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aaa;->a:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 27
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aaa;->g:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/ads/zz;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zz;-><init>(Lcom/google/android/gms/internal/ads/aaa;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/aaa;->g:Landroid/os/Handler;

    goto :goto_0
.end method

.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    .prologue
    .line 58
    return-void
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 7

    .prologue
    const/16 v6, 0x9

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 32
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 33
    aget v1, v0, v3

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    aget v1, v0, v4

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    aget v1, v0, v5

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_2

    .line 34
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aaa;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 35
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/aaa;->f:[F

    if-nez v2, :cond_1

    .line 36
    const/16 v2, 0x9

    new-array v2, v2, [F

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/aaa;->f:[F

    .line 37
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aaa;->d:[F

    invoke-static {v1, v0}, Landroid/hardware/SensorManager;->getRotationMatrixFromVector([F[F)V

    .line 40
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aaa;->c:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 41
    packed-switch v0, :pswitch_data_0

    .line 48
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aaa;->d:[F

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aaa;->e:[F

    invoke-static {v0, v3, v1, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 49
    :goto_0
    const/4 v0, 0x3

    invoke-direct {p0, v4, v0}, Lcom/google/android/gms/internal/ads/aaa;->a(II)V

    .line 50
    const/4 v0, 0x6

    invoke-direct {p0, v5, v0}, Lcom/google/android/gms/internal/ads/aaa;->a(II)V

    .line 51
    const/4 v0, 0x5

    const/4 v1, 0x7

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/aaa;->a(II)V

    .line 52
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aaa;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 53
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aaa;->e:[F

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/aaa;->f:[F

    const/4 v4, 0x0

    const/16 v5, 0x9

    invoke-static {v0, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 54
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 55
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aaa;->h:Lcom/google/android/gms/internal/ads/aac;

    if-eqz v0, :cond_2

    .line 56
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aaa;->h:Lcom/google/android/gms/internal/ads/aac;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/aac;->c()V

    .line 57
    :cond_2
    return-void

    .line 37
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 42
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aaa;->d:[F

    const/16 v1, 0x81

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/aaa;->e:[F

    invoke-static {v0, v5, v1, v2}, Landroid/hardware/SensorManager;->remapCoordinateSystem([FII[F)Z

    goto :goto_0

    .line 44
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aaa;->d:[F

    const/16 v1, 0x81

    const/16 v2, 0x82

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/aaa;->e:[F

    invoke-static {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->remapCoordinateSystem([FII[F)Z

    goto :goto_0

    .line 46
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aaa;->d:[F

    const/16 v1, 0x82

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/aaa;->e:[F

    invoke-static {v0, v1, v4, v2}, Landroid/hardware/SensorManager;->remapCoordinateSystem([FII[F)Z

    goto :goto_0

    .line 54
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 41
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
