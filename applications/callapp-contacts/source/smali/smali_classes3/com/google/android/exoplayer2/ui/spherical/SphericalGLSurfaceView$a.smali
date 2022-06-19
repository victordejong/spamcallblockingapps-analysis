.class final Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;
.implements Lcom/google/android/exoplayer2/ui/spherical/a$a;
.implements Lcom/google/android/exoplayer2/ui/spherical/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;

.field private final b:Lcom/google/android/exoplayer2/ui/spherical/c;

.field private final c:[F

.field private final d:[F

.field private final e:[F

.field private final f:[F

.field private final g:[F

.field private h:F

.field private i:F

.field private final j:[F

.field private final k:[F


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;Lcom/google/android/exoplayer2/ui/spherical/c;)V
    .locals 4

    .line 258
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView$a;->a:Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x10

    new-array v0, p1, [F

    .line 238
    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView$a;->c:[F

    new-array v0, p1, [F

    .line 241
    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView$a;->d:[F

    new-array v0, p1, [F

    .line 245
    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView$a;->e:[F

    new-array v1, p1, [F

    .line 249
    iput-object v1, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView$a;->f:[F

    new-array v2, p1, [F

    .line 250
    iput-object v2, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView$a;->g:[F

    new-array v3, p1, [F

    .line 255
    iput-object v3, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView$a;->j:[F

    new-array p1, p1, [F

    .line 256
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView$a;->k:[F

    .line 259
    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView$a;->b:Lcom/google/android/exoplayer2/ui/spherical/c;

    const/4 p1, 0x0

    .line 260
    invoke-static {v0, p1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 261
    invoke-static {v1, p1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 262
    invoke-static {v2, p1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    const p1, 0x40490fdb    # (float)Math.PI

    .line 263
    iput p1, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView$a;->i:F

    return-void
.end method

.method private a()V
    .locals 6

    .line 311
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView$a;->f:[F

    iget v1, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView$a;->h:F

    neg-float v2, v1

    iget v1, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView$a;->i:F

    float-to-double v3, v1

    .line 315
    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    double-to-float v3, v3

    iget v1, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView$a;->i:F

    float-to-double v4, v1

    .line 316
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v4, v4

    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 311
    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->setRotateM([FIFFFF)V

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Landroid/graphics/PointF;)V
    .locals 7

    monitor-enter p0

    .line 323
    :try_start_0
    iget v0, p1, Landroid/graphics/PointF;->y:F

    iput v0, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView$a;->h:F

    .line 324
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView$a;->a()V

    .line 325
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView$a;->g:[F

    const/4 v2, 0x0

    iget p1, p1, Landroid/graphics/PointF;->x:F

    neg-float v3, p1

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->setRotateM([FIFFFF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 326
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a([FF)V
    .locals 3

    monitor-enter p0

    .line 297
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView$a;->e:[F

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    neg-float p1, p2

    .line 298
    iput p1, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView$a;->i:F

    .line 299
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView$a;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 300
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 22

    move-object/from16 v1, p0

    .line 284
    monitor-enter p0

    .line 285
    :try_start_0
    iget-object v2, v1, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView$a;->k:[F

    const/4 v3, 0x0

    iget-object v4, v1, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView$a;->e:[F

    const/4 v5, 0x0

    iget-object v6, v1, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView$a;->g:[F

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 286
    iget-object v8, v1, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView$a;->j:[F

    const/4 v9, 0x0

    iget-object v10, v1, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView$a;->f:[F

    const/4 v11, 0x0

    iget-object v12, v1, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView$a;->k:[F

    const/4 v13, 0x0

    invoke-static/range {v8 .. v13}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 287
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 289
    iget-object v2, v1, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView$a;->d:[F

    const/4 v3, 0x0

    iget-object v4, v1, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView$a;->c:[F

    const/4 v5, 0x0

    iget-object v6, v1, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView$a;->j:[F

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 290
    iget-object v0, v1, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView$a;->b:Lcom/google/android/exoplayer2/ui/spherical/c;

    iget-object v4, v1, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView$a;->d:[F

    const/16 v2, 0x4000

    .line 2113
    invoke-static {v2}, Landroid/opengl/GLES20;->glClear(I)V

    .line 2114
    invoke-static {}, Lcom/google/android/exoplayer2/util/j;->a()V

    .line 2116
    iget-object v2, v0, Lcom/google/android/exoplayer2/ui/spherical/c;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {v2, v8, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    const/4 v10, 0x2

    if-eqz v2, :cond_5

    .line 2117
    iget-object v2, v0, Lcom/google/android/exoplayer2/ui/spherical/c;->j:Landroid/graphics/SurfaceTexture;

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/SurfaceTexture;

    invoke-virtual {v2}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 2118
    invoke-static {}, Lcom/google/android/exoplayer2/util/j;->a()V

    .line 2119
    iget-object v2, v0, Lcom/google/android/exoplayer2/ui/spherical/c;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v8, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2120
    iget-object v2, v0, Lcom/google/android/exoplayer2/ui/spherical/c;->g:[F

    invoke-static {v2, v9}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 2122
    :cond_0
    iget-object v2, v0, Lcom/google/android/exoplayer2/ui/spherical/c;->j:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v2}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    move-result-wide v2

    .line 2123
    iget-object v5, v0, Lcom/google/android/exoplayer2/ui/spherical/c;->e:Lcom/google/android/exoplayer2/util/ac;

    invoke-virtual {v5, v2, v3}, Lcom/google/android/exoplayer2/util/ac;->b(J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    if-eqz v5, :cond_3

    .line 2125
    iget-object v6, v0, Lcom/google/android/exoplayer2/ui/spherical/c;->d:Lcom/google/android/exoplayer2/video/a/c;

    iget-object v11, v0, Lcom/google/android/exoplayer2/ui/spherical/c;->g:[F

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 3069
    iget-object v5, v6, Lcom/google/android/exoplayer2/video/a/c;->c:Lcom/google/android/exoplayer2/util/ac;

    invoke-virtual {v5, v12, v13}, Lcom/google/android/exoplayer2/util/ac;->a(J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [F

    if-eqz v5, :cond_3

    .line 3074
    iget-object v12, v6, Lcom/google/android/exoplayer2/video/a/c;->b:[F

    .line 3113
    aget v7, v5, v9

    .line 3114
    aget v13, v5, v8

    neg-float v13, v13

    .line 3115
    aget v5, v5, v10

    neg-float v5, v5

    .line 3116
    invoke-static {v7, v13, v5}, Landroid/opengl/Matrix;->length(FFF)F

    move-result v14

    const/4 v15, 0x0

    cmpl-float v15, v14, v15

    if-eqz v15, :cond_1

    move-object/from16 v18, v11

    float-to-double v10, v14

    .line 3118
    invoke-static {v10, v11}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v10

    double-to-float v10, v10

    const/4 v11, 0x0

    div-float v15, v7, v14

    div-float v16, v13, v14

    div-float v17, v5, v14

    move v13, v11

    move v14, v10

    .line 3119
    invoke-static/range {v12 .. v17}, Landroid/opengl/Matrix;->setRotateM([FIFFFF)V

    goto :goto_0

    :cond_1
    move-object/from16 v18, v11

    .line 3121
    invoke-static {v12, v9}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 3075
    :goto_0
    iget-boolean v5, v6, Lcom/google/android/exoplayer2/video/a/c;->d:Z

    if-nez v5, :cond_2

    .line 3076
    iget-object v5, v6, Lcom/google/android/exoplayer2/video/a/c;->a:[F

    iget-object v7, v6, Lcom/google/android/exoplayer2/video/a/c;->b:[F

    invoke-static {v5, v7}, Lcom/google/android/exoplayer2/video/a/c;->a([F[F)V

    .line 3077
    iput-boolean v8, v6, Lcom/google/android/exoplayer2/video/a/c;->d:Z

    :cond_2
    const/4 v12, 0x0

    .line 3079
    iget-object v13, v6, Lcom/google/android/exoplayer2/video/a/c;->a:[F

    const/4 v14, 0x0

    iget-object v15, v6, Lcom/google/android/exoplayer2/video/a/c;->b:[F

    const/16 v16, 0x0

    move-object/from16 v11, v18

    invoke-static/range {v11 .. v16}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 2127
    :cond_3
    iget-object v5, v0, Lcom/google/android/exoplayer2/ui/spherical/c;->f:Lcom/google/android/exoplayer2/util/ac;

    invoke-virtual {v5, v2, v3}, Lcom/google/android/exoplayer2/util/ac;->a(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/video/a/d;

    if-eqz v2, :cond_5

    .line 2129
    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/spherical/c;->c:Lcom/google/android/exoplayer2/ui/spherical/b;

    .line 4112
    invoke-static {v2}, Lcom/google/android/exoplayer2/ui/spherical/b;->a(Lcom/google/android/exoplayer2/video/a/d;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 4115
    iget v5, v2, Lcom/google/android/exoplayer2/video/a/d;->c:I

    iput v5, v3, Lcom/google/android/exoplayer2/ui/spherical/b;->h:I

    .line 4116
    new-instance v5, Lcom/google/android/exoplayer2/ui/spherical/b$a;

    iget-object v6, v2, Lcom/google/android/exoplayer2/video/a/d;->a:Lcom/google/android/exoplayer2/video/a/d$a;

    .line 4233
    iget-object v6, v6, Lcom/google/android/exoplayer2/video/a/d$a;->a:[Lcom/google/android/exoplayer2/video/a/d$b;

    aget-object v6, v6, v9

    .line 4116
    invoke-direct {v5, v6}, Lcom/google/android/exoplayer2/ui/spherical/b$a;-><init>(Lcom/google/android/exoplayer2/video/a/d$b;)V

    iput-object v5, v3, Lcom/google/android/exoplayer2/ui/spherical/b;->i:Lcom/google/android/exoplayer2/ui/spherical/b$a;

    .line 4118
    iget-boolean v5, v2, Lcom/google/android/exoplayer2/video/a/d;->d:Z

    if-eqz v5, :cond_4

    iget-object v2, v3, Lcom/google/android/exoplayer2/ui/spherical/b;->i:Lcom/google/android/exoplayer2/ui/spherical/b$a;

    goto :goto_1

    :cond_4
    new-instance v5, Lcom/google/android/exoplayer2/ui/spherical/b$a;

    iget-object v2, v2, Lcom/google/android/exoplayer2/video/a/d;->b:Lcom/google/android/exoplayer2/video/a/d$a;

    .line 5233
    iget-object v2, v2, Lcom/google/android/exoplayer2/video/a/d$a;->a:[Lcom/google/android/exoplayer2/video/a/d$b;

    aget-object v2, v2, v9

    .line 4118
    invoke-direct {v5, v2}, Lcom/google/android/exoplayer2/ui/spherical/b$a;-><init>(Lcom/google/android/exoplayer2/video/a/d$b;)V

    move-object v2, v5

    :goto_1
    iput-object v2, v3, Lcom/google/android/exoplayer2/ui/spherical/b;->j:Lcom/google/android/exoplayer2/ui/spherical/b$a;

    .line 2132
    :cond_5
    iget-object v2, v0, Lcom/google/android/exoplayer2/ui/spherical/c;->h:[F

    const/4 v3, 0x0

    const/4 v5, 0x0

    iget-object v6, v0, Lcom/google/android/exoplayer2/ui/spherical/c;->g:[F

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 2133
    iget-object v2, v0, Lcom/google/android/exoplayer2/ui/spherical/c;->c:Lcom/google/android/exoplayer2/ui/spherical/b;

    iget v3, v0, Lcom/google/android/exoplayer2/ui/spherical/c;->i:I

    iget-object v0, v0, Lcom/google/android/exoplayer2/ui/spherical/c;->h:[F

    .line 6141
    iget-object v4, v2, Lcom/google/android/exoplayer2/ui/spherical/b;->i:Lcom/google/android/exoplayer2/ui/spherical/b$a;

    if-eqz v4, :cond_8

    .line 6147
    iget v5, v2, Lcom/google/android/exoplayer2/ui/spherical/b;->k:I

    invoke-static {v5}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 6148
    invoke-static {}, Lcom/google/android/exoplayer2/util/j;->a()V

    .line 6150
    iget v5, v2, Lcom/google/android/exoplayer2/ui/spherical/b;->n:I

    invoke-static {v5}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 6151
    iget v5, v2, Lcom/google/android/exoplayer2/ui/spherical/b;->o:I

    invoke-static {v5}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 6152
    invoke-static {}, Lcom/google/android/exoplayer2/util/j;->a()V

    .line 6155
    iget v5, v2, Lcom/google/android/exoplayer2/ui/spherical/b;->h:I

    if-ne v5, v8, :cond_6

    .line 6156
    sget-object v5, Lcom/google/android/exoplayer2/ui/spherical/b;->d:[F

    goto :goto_2

    .line 6157
    :cond_6
    iget v5, v2, Lcom/google/android/exoplayer2/ui/spherical/b;->h:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_7

    .line 6158
    sget-object v5, Lcom/google/android/exoplayer2/ui/spherical/b;->f:[F

    goto :goto_2

    .line 6160
    :cond_7
    sget-object v5, Lcom/google/android/exoplayer2/ui/spherical/b;->c:[F

    .line 6162
    :goto_2
    iget v6, v2, Lcom/google/android/exoplayer2/ui/spherical/b;->m:I

    invoke-static {v6, v8, v9, v5, v9}, Landroid/opengl/GLES20;->glUniformMatrix3fv(IIZ[FI)V

    .line 6164
    iget v5, v2, Lcom/google/android/exoplayer2/ui/spherical/b;->l:I

    invoke-static {v5, v8, v9, v0, v9}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    const v0, 0x84c0

    .line 6165
    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const v0, 0x8d65

    .line 6166
    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 6167
    iget v0, v2, Lcom/google/android/exoplayer2/ui/spherical/b;->p:I

    invoke-static {v0, v9}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 6168
    invoke-static {}, Lcom/google/android/exoplayer2/util/j;->a()V

    .line 6171
    iget v10, v2, Lcom/google/android/exoplayer2/ui/spherical/b;->n:I

    const/4 v11, 0x3

    const/16 v12, 0x1406

    const/4 v13, 0x0

    const/16 v14, 0xc

    .line 6205
    iget-object v15, v4, Lcom/google/android/exoplayer2/ui/spherical/b$a;->b:Ljava/nio/FloatBuffer;

    .line 6171
    invoke-static/range {v10 .. v15}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 6178
    invoke-static {}, Lcom/google/android/exoplayer2/util/j;->a()V

    .line 6181
    iget v0, v2, Lcom/google/android/exoplayer2/ui/spherical/b;->o:I

    const/16 v17, 0x2

    const/16 v18, 0x1406

    const/16 v19, 0x0

    const/16 v20, 0x8

    .line 7205
    iget-object v3, v4, Lcom/google/android/exoplayer2/ui/spherical/b$a;->c:Ljava/nio/FloatBuffer;

    move/from16 v16, v0

    move-object/from16 v21, v3

    .line 6181
    invoke-static/range {v16 .. v21}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 6188
    invoke-static {}, Lcom/google/android/exoplayer2/util/j;->a()V

    .line 8205
    iget v0, v4, Lcom/google/android/exoplayer2/ui/spherical/b$a;->d:I

    .line 9205
    iget v3, v4, Lcom/google/android/exoplayer2/ui/spherical/b$a;->a:I

    .line 6191
    invoke-static {v0, v9, v3}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 6192
    invoke-static {}, Lcom/google/android/exoplayer2/util/j;->a()V

    .line 6194
    iget v0, v2, Lcom/google/android/exoplayer2/ui/spherical/b;->n:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 6195
    iget v0, v2, Lcom/google/android/exoplayer2/ui/spherical/b;->o:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    :cond_8
    return-void

    :catchall_0
    move-exception v0

    .line 287
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 6

    const/4 p1, 0x0

    .line 273
    invoke-static {p1, p1, p2, p3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    int-to-float p2, p2

    int-to-float p3, p3

    div-float v3, p2, p3

    const/high16 p2, 0x3f800000    # 1.0f

    cmpl-float p2, v3, p2

    if-lez p2, :cond_0

    const/4 p1, 0x1

    :cond_0
    if-eqz p1, :cond_1

    const-wide p1, 0x4046800000000000L    # 45.0

    .line 1332
    invoke-static {p1, p2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->tan(D)D

    move-result-wide p1

    float-to-double v0, v3

    div-double/2addr p1, v0

    .line 1333
    invoke-static {p1, p2}, Ljava/lang/Math;->atan(D)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide p1

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    mul-double p1, p1, v0

    double-to-float p1, p1

    move v2, p1

    goto :goto_0

    :cond_1
    const/high16 p1, 0x42b40000    # 90.0f

    const/high16 v2, 0x42b40000    # 90.0f

    .line 276
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView$a;->c:[F

    const/4 v1, 0x0

    const v4, 0x3dcccccd    # 0.1f

    const/high16 v5, 0x42c80000    # 100.0f

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->perspectiveM([FIFFFF)V

    return-void
.end method

.method public final declared-synchronized onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 0

    monitor-enter p0

    .line 268
    :try_start_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView$a;->a:Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;

    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView$a;->b:Lcom/google/android/exoplayer2/ui/spherical/c;

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/ui/spherical/c;->a()Landroid/graphics/SurfaceTexture;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;->a(Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;Landroid/graphics/SurfaceTexture;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 269
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
