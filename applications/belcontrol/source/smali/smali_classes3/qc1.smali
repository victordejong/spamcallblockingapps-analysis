.class public Lqc1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x17
.end annotation


# static fields
.field public static final f:[I


# instance fields
.field public final a:Landroid/hardware/SensorManager;

.field public final b:Ltc1;

.field public c:Z

.field public d:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x8

    aput v2, v0, v1

    sput-object v0, Lqc1;->f:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lqc1;->c:Z

    const-class v0, Landroid/hardware/SensorManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lqc1;->a:Landroid/hardware/SensorManager;

    const-class v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    new-instance v0, Ltc1;

    invoke-direct {v0, p1}, Ltc1;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lqc1;->b:Ltc1;

    const-class v0, Landroid/os/PowerManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    invoke-virtual {p1}, Landroid/os/PowerManager;->isInteractive()Z

    move-result p1

    iput-boolean p1, p0, Lqc1;->d:Z

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-object v0, p0, Lqc1;->b:Ltc1;

    invoke-virtual {v0}, Ltc1;->d()Z

    move-result v0

    return v0
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lqc1;->d:Z

    invoke-virtual {p0}, Lqc1;->h()V

    return-void
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lqc1;->d:Z

    invoke-virtual {p0}, Lqc1;->g()Z

    return-void
.end method

.method public final d()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lqc1;->c:Z

    iget-object v0, p0, Lqc1;->b:Ltc1;

    invoke-virtual {v0}, Ltc1;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lqc1;->f:[I

    invoke-virtual {p0, v0}, Lqc1;->f([I)V

    :cond_0
    return-void
.end method

.method public e(Landroid/view/MotionEvent;)V
    .locals 1

    iget-boolean v0, p0, Lqc1;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lqc1;->b:Ltc1;

    invoke-virtual {v0, p1}, Ltc1;->b(Landroid/view/MotionEvent;)V

    :cond_0
    return-void
.end method

.method public final f([I)V
    .locals 5

    const-string v0, "FalsingManager.registerSensors"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget v2, p1, v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get sensor "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v3, p0, Lqc1;->a:Landroid/hardware/SensorManager;

    invoke-virtual {v3, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    invoke-static {}, Landroid/os/Trace;->endSection()V

    if-eqz v2, :cond_0

    const-string v3, "register"

    invoke-static {v3}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v3, p0, Lqc1;->a:Landroid/hardware/SensorManager;

    const/4 v4, 0x1

    invoke-virtual {v3, p0, v2, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    invoke-static {}, Landroid/os/Trace;->endSection()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public final g()Z
    .locals 1

    iget-boolean v0, p0, Lqc1;->c:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lqc1;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lqc1;->d()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final h()V
    .locals 1

    iget-boolean v0, p0, Lqc1;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lqc1;->i()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lqc1;->c:Z

    iget-object v0, p0, Lqc1;->a:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :cond_0
    return-void
.end method

.method public final i()Z
    .locals 1

    invoke-virtual {p0}, Lqc1;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lqc1;->d:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public declared-synchronized onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lqc1;->b:Ltc1;

    invoke-virtual {v0, p1}, Ltc1;->a(Landroid/hardware/SensorEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
