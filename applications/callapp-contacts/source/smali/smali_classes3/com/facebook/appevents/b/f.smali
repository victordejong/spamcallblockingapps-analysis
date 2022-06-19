.class final Lcom/facebook/appevents/b/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/appevents/b/f$a;
    }
.end annotation


# instance fields
.field a:Lcom/facebook/appevents/b/f$a;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    invoke-static {p0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    :cond_0
    return-void
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 7

    invoke-static {p0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 49
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/facebook/appevents/b/f;->a:Lcom/facebook/appevents/b/f$a;

    if-eqz v0, :cond_1

    .line 50
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    .line 51
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    .line 52
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x2

    aget p1, p1, v2

    const v2, 0x411ce80a

    div-float/2addr v0, v2

    float-to-double v3, v0

    div-float/2addr v1, v2

    float-to-double v0, v1

    div-float/2addr p1, v2

    float-to-double v5, p1

    mul-double v3, v3, v3

    mul-double v0, v0, v0

    add-double/2addr v3, v0

    mul-double v5, v5, v5

    add-double/2addr v3, v5

    .line 59
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide v2, 0x4002666660000000L    # 2.299999952316284

    cmpl-double p1, v0, v2

    if-lez p1, :cond_1

    .line 62
    iget-object p1, p0, Lcom/facebook/appevents/b/f;->a:Lcom/facebook/appevents/b/f$a;

    invoke-interface {p1}, Lcom/facebook/appevents/b/f$a;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 65
    invoke-static {p1, p0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
