.class Lcom/facebook/a/b/f;
.super Ljava/lang/Object;
.source "ViewIndexingTrigger.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/a/b/f$a;
    }
.end annotation


# instance fields
.field private a:Lcom/facebook/a/b/f$a;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/a/b/f$a;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/facebook/a/b/f;->a:Lcom/facebook/a/b/f$a;

    .line 37
    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    .prologue
    .line 66
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 7

    .prologue
    const v6, 0x411ce80a

    .line 45
    iget-object v0, p0, Lcom/facebook/a/b/f;->a:Lcom/facebook/a/b/f$a;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    .line 47
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    .line 48
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x2

    aget v2, v2, v3

    .line 50
    div-float/2addr v0, v6

    float-to-double v4, v0

    .line 51
    div-float v0, v1, v6

    float-to-double v0, v0

    .line 52
    div-float/2addr v2, v6

    float-to-double v2, v2

    .line 55
    mul-double/2addr v4, v4

    mul-double/2addr v0, v0

    add-double/2addr v0, v4

    mul-double/2addr v2, v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 57
    const-wide v2, 0x4002666660000000L    # 2.299999952316284

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/facebook/a/b/f;->a:Lcom/facebook/a/b/f$a;

    invoke-interface {v0}, Lcom/facebook/a/b/f$a;->a()V

    .line 61
    :cond_0
    return-void
.end method
