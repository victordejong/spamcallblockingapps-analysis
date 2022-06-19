.class final Lcom/google/android/exoplayer2/ui/spherical/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/ui/spherical/a$a;
    }
.end annotation


# instance fields
.field private final a:[F

.field private final b:[F

.field private final c:[F

.field private final d:[F

.field private final e:Landroid/view/Display;

.field private final f:[Lcom/google/android/exoplayer2/ui/spherical/a$a;

.field private g:Z


# direct methods
.method public varargs constructor <init>(Landroid/view/Display;[Lcom/google/android/exoplayer2/ui/spherical/a$a;)V
    .locals 2

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v1, v0, [F

    .line 44
    iput-object v1, p0, Lcom/google/android/exoplayer2/ui/spherical/a;->a:[F

    new-array v1, v0, [F

    .line 45
    iput-object v1, p0, Lcom/google/android/exoplayer2/ui/spherical/a;->b:[F

    new-array v0, v0, [F

    .line 46
    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/a;->c:[F

    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 47
    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/a;->d:[F

    .line 53
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/spherical/a;->e:Landroid/view/Display;

    .line 54
    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/spherical/a;->f:[Lcom/google/android/exoplayer2/ui/spherical/a$a;

    return-void
.end method

.method private a([FF)V
    .locals 4

    .line 75
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/a;->f:[Lcom/google/android/exoplayer2/ui/spherical/a$a;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 76
    invoke-interface {v3, p1, p2}, Lcom/google/android/exoplayer2/ui/spherical/a$a;->a([FF)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 18

    move-object/from16 v0, p0

    .line 60
    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/spherical/a;->a:[F

    move-object/from16 v2, p1

    iget-object v2, v2, Landroid/hardware/SensorEvent;->values:[F

    invoke-static {v1, v2}, Landroid/hardware/SensorManager;->getRotationMatrixFromVector([F[F)V

    .line 61
    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/spherical/a;->a:[F

    iget-object v2, v0, Lcom/google/android/exoplayer2/ui/spherical/a;->e:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_3

    const/16 v6, 0x82

    const/16 v7, 0x81

    if-eq v2, v5, :cond_2

    if-eq v2, v3, :cond_1

    const/4 v7, 0x3

    if-ne v2, v7, :cond_0

    const/4 v7, 0x1

    goto :goto_0

    .line 1117
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :cond_1
    const/16 v6, 0x81

    const/16 v7, 0x82

    goto :goto_0

    :cond_2
    const/4 v6, 0x2

    .line 1119
    :goto_0
    iget-object v2, v0, Lcom/google/android/exoplayer2/ui/spherical/a;->b:[F

    array-length v8, v2

    invoke-static {v1, v4, v2, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1120
    iget-object v2, v0, Lcom/google/android/exoplayer2/ui/spherical/a;->b:[F

    invoke-static {v2, v6, v7, v1}, Landroid/hardware/SensorManager;->remapCoordinateSystem([FII[F)Z

    .line 62
    :cond_3
    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/spherical/a;->a:[F

    const/16 v2, 0x83

    .line 2092
    iget-object v6, v0, Lcom/google/android/exoplayer2/ui/spherical/a;->b:[F

    invoke-static {v1, v5, v2, v6}, Landroid/hardware/SensorManager;->remapCoordinateSystem([FII[F)Z

    .line 2094
    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/spherical/a;->b:[F

    iget-object v2, v0, Lcom/google/android/exoplayer2/ui/spherical/a;->d:[F

    invoke-static {v1, v2}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    .line 2095
    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/spherical/a;->d:[F

    aget v1, v1, v3

    .line 64
    iget-object v6, v0, Lcom/google/android/exoplayer2/ui/spherical/a;->a:[F

    const/4 v7, 0x0

    const/high16 v8, 0x42b40000    # 90.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 2124
    invoke-static/range {v6 .. v11}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 65
    iget-object v12, v0, Lcom/google/android/exoplayer2/ui/spherical/a;->a:[F

    .line 3081
    iget-boolean v2, v0, Lcom/google/android/exoplayer2/ui/spherical/a;->g:Z

    if-nez v2, :cond_4

    .line 3082
    iget-object v2, v0, Lcom/google/android/exoplayer2/ui/spherical/a;->c:[F

    invoke-static {v2, v12}, Lcom/google/android/exoplayer2/video/a/c;->a([F[F)V

    .line 3083
    iput-boolean v5, v0, Lcom/google/android/exoplayer2/ui/spherical/a;->g:Z

    .line 3085
    :cond_4
    iget-object v2, v0, Lcom/google/android/exoplayer2/ui/spherical/a;->b:[F

    array-length v3, v2

    invoke-static {v12, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v13, 0x0

    .line 3086
    iget-object v14, v0, Lcom/google/android/exoplayer2/ui/spherical/a;->b:[F

    const/4 v15, 0x0

    iget-object v2, v0, Lcom/google/android/exoplayer2/ui/spherical/a;->c:[F

    const/16 v17, 0x0

    move-object/from16 v16, v2

    invoke-static/range {v12 .. v17}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 66
    iget-object v2, v0, Lcom/google/android/exoplayer2/ui/spherical/a;->a:[F

    invoke-direct {v0, v2, v1}, Lcom/google/android/exoplayer2/ui/spherical/a;->a([FF)V

    return-void
.end method
