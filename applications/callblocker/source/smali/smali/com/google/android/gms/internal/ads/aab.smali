.class public final Lcom/google/android/gms/internal/ads/aab;
.super Ljava/lang/Thread;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;
.implements Lcom/google/android/gms/internal/ads/aac;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# static fields
.field private static final a:[F


# instance fields
.field private volatile A:Z

.field private volatile B:Z

.field private final b:Lcom/google/android/gms/internal/ads/aaa;

.field private final c:[F

.field private final d:[F

.field private final e:[F

.field private final f:[F

.field private final g:[F

.field private final h:[F

.field private final i:[F

.field private j:F

.field private k:F

.field private l:F

.field private m:I

.field private n:I

.field private o:Landroid/graphics/SurfaceTexture;

.field private p:Landroid/graphics/SurfaceTexture;

.field private q:I

.field private r:I

.field private s:I

.field private t:Ljava/nio/FloatBuffer;

.field private final u:Ljava/util/concurrent/CountDownLatch;

.field private final v:Ljava/lang/Object;

.field private w:Ljavax/microedition/khronos/egl/EGL10;

.field private x:Ljavax/microedition/khronos/egl/EGLDisplay;

.field private y:Ljavax/microedition/khronos/egl/EGLContext;

.field private z:Ljavax/microedition/khronos/egl/EGLSurface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 316
    const/16 v0, 0xc

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/gms/internal/ads/aab;->a:[F

    return-void

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/16 v2, 0x9

    .line 1
    const-string/jumbo v0, "SphericalVideoProcessor"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/aab;->a:[F

    array-length v0, v0

    shl-int/lit8 v0, v0, 0x2

    .line 3
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 4
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/aab;->t:Ljava/nio/FloatBuffer;

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aab;->t:Ljava/nio/FloatBuffer;

    sget-object v1, Lcom/google/android/gms/internal/ads/aab;->a:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 7
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/aab;->c:[F

    .line 8
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/aab;->d:[F

    .line 9
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/aab;->e:[F

    .line 10
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/aab;->f:[F

    .line 11
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/aab;->g:[F

    .line 12
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/aab;->h:[F

    .line 13
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/aab;->i:[F

    .line 14
    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Lcom/google/android/gms/internal/ads/aab;->j:F

    .line 15
    new-instance v0, Lcom/google/android/gms/internal/ads/aaa;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/aaa;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/aab;->b:Lcom/google/android/gms/internal/ads/aaa;

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aab;->b:Lcom/google/android/gms/internal/ads/aaa;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/aaa;->a(Lcom/google/android/gms/internal/ads/aac;)V

    .line 17
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/aab;->u:Ljava/util/concurrent/CountDownLatch;

    .line 18
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/aab;->v:Ljava/lang/Object;

    .line 19
    return-void
.end method

.method private static a(ILjava/lang/String;)I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 282
    invoke-static {p0}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v1

    .line 283
    const-string/jumbo v2, "createShader"

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/aab;->a(Ljava/lang/String;)V

    .line 284
    if-eqz v1, :cond_0

    .line 285
    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 286
    const-string/jumbo v2, "shaderSource"

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/aab;->a(Ljava/lang/String;)V

    .line 287
    invoke-static {v1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 288
    const-string/jumbo v2, "compileShader"

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/aab;->a(Ljava/lang/String;)V

    .line 289
    const/4 v2, 0x1

    new-array v2, v2, [I

    .line 290
    const v3, 0x8b81

    invoke-static {v1, v3, v2, v0}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 291
    const-string/jumbo v3, "getShaderiv"

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/aab;->a(Ljava/lang/String;)V

    .line 292
    aget v2, v2, v0

    if-nez v2, :cond_0

    .line 293
    const-string/jumbo v2, "SphericalVideoRenderer"

    const/16 v3, 0x25

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "Could not compile shader "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    const-string/jumbo v2, "SphericalVideoRenderer"

    invoke-static {v1}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 296
    const-string/jumbo v1, "deleteShader"

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/aab;->a(Ljava/lang/String;)V

    .line 298
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 312
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    .line 313
    if-eqz v0, :cond_0

    .line 314
    const-string/jumbo v1, "SphericalVideoRenderer"

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x15

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": glError "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    :cond_0
    return-void
.end method

.method private static a([FF)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 262
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    aput v1, p0, v0

    .line 263
    const/4 v0, 0x1

    aput v4, p0, v0

    .line 264
    const/4 v0, 0x2

    aput v4, p0, v0

    .line 265
    const/4 v0, 0x3

    aput v4, p0, v0

    .line 266
    const/4 v0, 0x4

    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v1, v2

    aput v1, p0, v0

    .line 267
    const/4 v0, 0x5

    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    neg-double v2, v2

    double-to-float v1, v2

    aput v1, p0, v0

    .line 268
    const/4 v0, 0x6

    aput v4, p0, v0

    .line 269
    const/4 v0, 0x7

    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v1, v2

    aput v1, p0, v0

    .line 270
    const/16 v0, 0x8

    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v1, v2

    aput v1, p0, v0

    .line 271
    return-void
.end method

.method private static a([F[F[F)V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 252
    aget v0, p1, v4

    aget v1, p2, v4

    mul-float/2addr v0, v1

    aget v1, p1, v5

    aget v2, p2, v7

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    aget v1, p1, v6

    const/4 v2, 0x6

    aget v2, p2, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    aput v0, p0, v4

    .line 253
    aget v0, p1, v4

    aget v1, p2, v5

    mul-float/2addr v0, v1

    aget v1, p1, v5

    aget v2, p2, v8

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    aget v1, p1, v6

    const/4 v2, 0x7

    aget v2, p2, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    aput v0, p0, v5

    .line 254
    aget v0, p1, v4

    aget v1, p2, v6

    mul-float/2addr v0, v1

    aget v1, p1, v5

    const/4 v2, 0x5

    aget v2, p2, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    aget v1, p1, v6

    const/16 v2, 0x8

    aget v2, p2, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    aput v0, p0, v6

    .line 255
    aget v0, p1, v7

    aget v1, p2, v4

    mul-float/2addr v0, v1

    aget v1, p1, v8

    aget v2, p2, v7

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    const/4 v1, 0x5

    aget v1, p1, v1

    const/4 v2, 0x6

    aget v2, p2, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    aput v0, p0, v7

    .line 256
    aget v0, p1, v7

    aget v1, p2, v5

    mul-float/2addr v0, v1

    aget v1, p1, v8

    aget v2, p2, v8

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    const/4 v1, 0x5

    aget v1, p1, v1

    const/4 v2, 0x7

    aget v2, p2, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    aput v0, p0, v8

    .line 257
    const/4 v0, 0x5

    aget v1, p1, v7

    aget v2, p2, v6

    mul-float/2addr v1, v2

    aget v2, p1, v8

    const/4 v3, 0x5

    aget v3, p2, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/4 v2, 0x5

    aget v2, p1, v2

    const/16 v3, 0x8

    aget v3, p2, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aput v1, p0, v0

    .line 258
    const/4 v0, 0x6

    const/4 v1, 0x6

    aget v1, p1, v1

    aget v2, p2, v4

    mul-float/2addr v1, v2

    const/4 v2, 0x7

    aget v2, p1, v2

    aget v3, p2, v7

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/16 v2, 0x8

    aget v2, p1, v2

    const/4 v3, 0x6

    aget v3, p2, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aput v1, p0, v0

    .line 259
    const/4 v0, 0x7

    const/4 v1, 0x6

    aget v1, p1, v1

    aget v2, p2, v5

    mul-float/2addr v1, v2

    const/4 v2, 0x7

    aget v2, p1, v2

    aget v3, p2, v8

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/16 v2, 0x8

    aget v2, p1, v2

    const/4 v3, 0x7

    aget v3, p2, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aput v1, p0, v0

    .line 260
    const/16 v0, 0x8

    const/4 v1, 0x6

    aget v1, p1, v1

    aget v2, p2, v6

    mul-float/2addr v1, v2

    const/4 v2, 0x7

    aget v2, p1, v2

    const/4 v3, 0x5

    aget v3, p2, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/16 v2, 0x8

    aget v2, p1, v2

    const/16 v3, 0x8

    aget v3, p2, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aput v1, p0, v0

    .line 261
    return-void
.end method

.method private static b([FF)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 272
    const/4 v0, 0x0

    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v1, v2

    aput v1, p0, v0

    .line 273
    const/4 v0, 0x1

    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    neg-double v2, v2

    double-to-float v1, v2

    aput v1, p0, v0

    .line 274
    const/4 v0, 0x2

    aput v4, p0, v0

    .line 275
    const/4 v0, 0x3

    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v1, v2

    aput v1, p0, v0

    .line 276
    const/4 v0, 0x4

    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v1, v2

    aput v1, p0, v0

    .line 277
    const/4 v0, 0x5

    aput v4, p0, v0

    .line 278
    const/4 v0, 0x6

    aput v4, p0, v0

    .line 279
    const/4 v0, 0x7

    aput v4, p0, v0

    .line 280
    const/16 v0, 0x8

    const/high16 v1, 0x3f800000    # 1.0f

    aput v1, p0, v0

    .line 281
    return-void
.end method

.method private final d()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 299
    const/4 v0, 0x0

    .line 300
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aab;->z:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aab;->z:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eq v1, v2, :cond_0

    .line 301
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aab;->w:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aab;->x:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    .line 302
    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v0

    or-int/lit8 v0, v0, 0x0

    .line 303
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aab;->w:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/aab;->x:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/aab;->z:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v1, v2, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 304
    iput-object v5, p0, Lcom/google/android/gms/internal/ads/aab;->z:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 305
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aab;->y:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v1, :cond_1

    .line 306
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aab;->w:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/aab;->x:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/aab;->y:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v1, v2, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 307
    iput-object v5, p0, Lcom/google/android/gms/internal/ads/aab;->y:Ljavax/microedition/khronos/egl/EGLContext;

    .line 308
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aab;->x:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eqz v1, :cond_2

    .line 309
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aab;->w:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/aab;->x:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 310
    iput-object v5, p0, Lcom/google/android/gms/internal/ads/aab;->x:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 311
    :cond_2
    return v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 30
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aab;->v:Ljava/lang/Object;

    monitor-enter v1

    .line 31
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/aab;->B:Z

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/aab;->p:Landroid/graphics/SurfaceTexture;

    .line 33
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aab;->v:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 34
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(FF)V
    .locals 5

    .prologue
    const v4, 0x3fc90fdb

    const v3, -0x4036f025

    const v2, 0x3fdf66f3

    .line 240
    iget v0, p0, Lcom/google/android/gms/internal/ads/aab;->n:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/aab;->m:I

    if-le v0, v1, :cond_2

    .line 241
    mul-float v0, v2, p1

    iget v1, p0, Lcom/google/android/gms/internal/ads/aab;->n:I

    int-to-float v1, v1

    div-float v1, v0, v1

    .line 242
    mul-float v0, v2, p2

    iget v2, p0, Lcom/google/android/gms/internal/ads/aab;->n:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    .line 245
    :goto_0
    iget v2, p0, Lcom/google/android/gms/internal/ads/aab;->k:F

    sub-float v1, v2, v1

    iput v1, p0, Lcom/google/android/gms/internal/ads/aab;->k:F

    .line 246
    iget v1, p0, Lcom/google/android/gms/internal/ads/aab;->l:F

    sub-float v0, v1, v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/aab;->l:F

    .line 247
    iget v0, p0, Lcom/google/android/gms/internal/ads/aab;->l:F

    cmpg-float v0, v0, v3

    if-gez v0, :cond_0

    .line 248
    iput v3, p0, Lcom/google/android/gms/internal/ads/aab;->l:F

    .line 249
    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/aab;->l:F

    cmpl-float v0, v0, v4

    if-lez v0, :cond_1

    .line 250
    iput v4, p0, Lcom/google/android/gms/internal/ads/aab;->l:F

    .line 251
    :cond_1
    return-void

    .line 243
    :cond_2
    mul-float v0, v2, p1

    iget v1, p0, Lcom/google/android/gms/internal/ads/aab;->m:I

    int-to-float v1, v1

    div-float v1, v0, v1

    .line 244
    mul-float v0, v2, p2

    iget v2, p0, Lcom/google/android/gms/internal/ads/aab;->m:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    goto :goto_0
.end method

.method public final a(II)V
    .locals 2

    .prologue
    .line 24
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aab;->v:Ljava/lang/Object;

    monitor-enter v1

    .line 25
    :try_start_0
    iput p1, p0, Lcom/google/android/gms/internal/ads/aab;->n:I

    .line 26
    iput p2, p0, Lcom/google/android/gms/internal/ads/aab;->m:I

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/aab;->A:Z

    .line 28
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aab;->v:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 29
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .prologue
    .line 20
    iput p2, p0, Lcom/google/android/gms/internal/ads/aab;->n:I

    .line 21
    iput p3, p0, Lcom/google/android/gms/internal/ads/aab;->m:I

    .line 22
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/aab;->p:Landroid/graphics/SurfaceTexture;

    .line 23
    return-void
.end method

.method public final b()Landroid/graphics/SurfaceTexture;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aab;->p:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_0

    .line 36
    const/4 v0, 0x0

    .line 40
    :goto_0
    return-object v0

    .line 37
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aab;->u:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aab;->o:Landroid/graphics/SurfaceTexture;

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 45
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aab;->v:Ljava/lang/Object;

    monitor-enter v1

    .line 46
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aab;->v:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 47
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 2

    .prologue
    .line 41
    iget v0, p0, Lcom/google/android/gms/internal/ads/aab;->s:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/aab;->s:I

    .line 42
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aab;->v:Ljava/lang/Object;

    monitor-enter v1

    .line 43
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aab;->v:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 44
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final run()V
    .locals 12

    .prologue
    const/4 v6, 0x3

    const/4 v2, 0x2

    const/4 v11, 0x0

    const/4 v4, 0x1

    const/4 v8, 0x0

    .line 48
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aab;->p:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_0

    .line 49
    const-string/jumbo v0, "SphericalVideoProcessor started with no output texture."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->c(Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aab;->u:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 234
    :goto_0
    return-void

    .line 53
    :cond_0
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/aab;->w:Ljavax/microedition/khronos/egl/EGL10;

    .line 54
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aab;->w:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/aab;->x:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 55
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aab;->x:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-ne v0, v1, :cond_3

    move v1, v8

    .line 84
    :goto_1
    const v2, 0x8b31

    .line 85
    sget-object v3, Lcom/google/android/gms/internal/ads/edi;->az:Lcom/google/android/gms/internal/ads/ect;

    .line 87
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 88
    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/ect;->b()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 90
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 91
    check-cast v0, Ljava/lang/String;

    .line 93
    :goto_2
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/aab;->a(ILjava/lang/String;)I

    move-result v2

    .line 94
    if-nez v2, :cond_d

    move v0, v8

    .line 129
    :cond_1
    :goto_3
    iput v0, p0, Lcom/google/android/gms/internal/ads/aab;->q:I

    .line 130
    iget v0, p0, Lcom/google/android/gms/internal/ads/aab;->q:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 131
    const-string/jumbo v0, "useProgram"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/aab;->a(Ljava/lang/String;)V

    .line 132
    iget v0, p0, Lcom/google/android/gms/internal/ads/aab;->q:I

    const-string/jumbo v2, "aPosition"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v5

    .line 133
    const/16 v7, 0x1406

    const/16 v9, 0xc

    iget-object v10, p0, Lcom/google/android/gms/internal/ads/aab;->t:Ljava/nio/FloatBuffer;

    invoke-static/range {v5 .. v10}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 134
    const-string/jumbo v0, "vertexAttribPointer"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/aab;->a(Ljava/lang/String;)V

    .line 135
    invoke-static {v5}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 136
    const-string/jumbo v0, "enableVertexAttribArray"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/aab;->a(Ljava/lang/String;)V

    .line 137
    new-array v0, v4, [I

    .line 138
    invoke-static {v4, v0, v8}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 139
    const-string/jumbo v2, "genTextures"

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/aab;->a(Ljava/lang/String;)V

    .line 140
    aget v0, v0, v8

    .line 141
    const v2, 0x8d65

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 142
    const-string/jumbo v2, "bindTextures"

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/aab;->a(Ljava/lang/String;)V

    .line 143
    const v2, 0x8d65

    const/16 v3, 0x2800

    const/16 v5, 0x2601

    invoke-static {v2, v3, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 144
    const-string/jumbo v2, "texParameteri"

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/aab;->a(Ljava/lang/String;)V

    .line 145
    const v2, 0x8d65

    const/16 v3, 0x2801

    const/16 v5, 0x2601

    invoke-static {v2, v3, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 146
    const-string/jumbo v2, "texParameteri"

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/aab;->a(Ljava/lang/String;)V

    .line 147
    const v2, 0x8d65

    const/16 v3, 0x2802

    const v5, 0x812f

    invoke-static {v2, v3, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 148
    const-string/jumbo v2, "texParameteri"

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/aab;->a(Ljava/lang/String;)V

    .line 149
    const v2, 0x8d65

    const/16 v3, 0x2803

    const v5, 0x812f

    invoke-static {v2, v3, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 150
    const-string/jumbo v2, "texParameteri"

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/aab;->a(Ljava/lang/String;)V

    .line 151
    iget v2, p0, Lcom/google/android/gms/internal/ads/aab;->q:I

    const-string/jumbo v3, "uVMat"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/google/android/gms/internal/ads/aab;->r:I

    .line 152
    const/16 v2, 0x9

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    .line 153
    iget v3, p0, Lcom/google/android/gms/internal/ads/aab;->r:I

    invoke-static {v3, v4, v8, v2, v8}, Landroid/opengl/GLES20;->glUniformMatrix3fv(IIZ[FI)V

    .line 156
    iget v2, p0, Lcom/google/android/gms/internal/ads/aab;->q:I

    if-eqz v2, :cond_11

    .line 157
    :goto_4
    if-eqz v1, :cond_2

    if-nez v4, :cond_13

    .line 158
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aab;->w:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    invoke-static {v0}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v0

    .line 159
    const-string/jumbo v1, "EGL initialization failed: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_12

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 160
    :goto_5
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->c(Ljava/lang/String;)V

    .line 161
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->g()Lcom/google/android/gms/internal/ads/ug;

    move-result-object v1

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "SphericalVideoProcessor.run.1"

    .line 162
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/ads/ug;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 163
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/aab;->d()Z

    .line 164
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aab;->u:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto/16 :goto_0

    .line 57
    :cond_3
    new-array v0, v2, [I

    .line 58
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aab;->w:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/aab;->x:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v1, v2, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    move-result v0

    if-nez v0, :cond_4

    move v1, v8

    .line 59
    goto/16 :goto_1

    .line 61
    :cond_4
    new-array v5, v4, [I

    .line 62
    new-array v3, v4, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 63
    const/16 v0, 0xb

    new-array v2, v0, [I

    fill-array-data v2, :array_1

    .line 64
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aab;->w:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aab;->x:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 65
    aget v0, v5, v8

    if-lez v0, :cond_5

    .line 66
    aget-object v0, v3, v8

    .line 69
    :goto_6
    if-nez v0, :cond_6

    move v1, v8

    .line 70
    goto/16 :goto_1

    :cond_5
    move-object v0, v11

    .line 67
    goto :goto_6

    .line 71
    :cond_6
    new-array v1, v6, [I

    fill-array-data v1, :array_2

    .line 72
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/aab;->w:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/aab;->x:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v5, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v2, v3, v0, v5, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/aab;->y:Ljavax/microedition/khronos/egl/EGLContext;

    .line 73
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aab;->y:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aab;->y:Ljavax/microedition/khronos/egl/EGLContext;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-ne v1, v2, :cond_8

    :cond_7
    move v1, v8

    .line 74
    goto/16 :goto_1

    .line 75
    :cond_8
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aab;->w:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/aab;->x:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/aab;->p:Landroid/graphics/SurfaceTexture;

    invoke-interface {v1, v2, v0, v3, v11}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/aab;->z:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 76
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aab;->z:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aab;->z:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne v0, v1, :cond_a

    :cond_9
    move v1, v8

    .line 77
    goto/16 :goto_1

    .line 78
    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aab;->w:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aab;->x:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/aab;->z:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/aab;->z:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/aab;->y:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_b

    move v1, v8

    .line 79
    goto/16 :goto_1

    :cond_b
    move v1, v4

    .line 80
    goto/16 :goto_1

    .line 92
    :cond_c
    const-string/jumbo v0, "attribute highp vec3 aPosition;varying vec3 pos;void main() {  gl_Position = vec4(aPosition, 1.0);  pos = aPosition;}"

    goto/16 :goto_2

    .line 96
    :cond_d
    const v3, 0x8b30

    .line 97
    sget-object v5, Lcom/google/android/gms/internal/ads/edi;->aA:Lcom/google/android/gms/internal/ads/ect;

    .line 99
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 100
    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/ect;->b()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 102
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 103
    check-cast v0, Ljava/lang/String;

    .line 105
    :goto_7
    invoke-static {v3, v0}, Lcom/google/android/gms/internal/ads/aab;->a(ILjava/lang/String;)I

    move-result v3

    .line 106
    if-nez v3, :cond_f

    move v0, v8

    .line 107
    goto/16 :goto_3

    .line 104
    :cond_e
    const-string/jumbo v0, "#extension GL_OES_EGL_image_external : require\n#define INV_PI 0.3183\nprecision highp float;varying vec3 pos;uniform samplerExternalOES uSplr;uniform mat3 uVMat;uniform float uFOVx;uniform float uFOVy;void main() {  vec3 ray = vec3(pos.x * tan(uFOVx), pos.y * tan(uFOVy), -1);  ray = (uVMat * ray).xyz;  ray = normalize(ray);  vec2 texCrd = vec2(    0.5 + atan(ray.x, - ray.z) * INV_PI * 0.5, acos(ray.y) * INV_PI);  gl_FragColor = vec4(texture2D(uSplr, texCrd).xyz, 1.0);}"

    goto :goto_7

    .line 108
    :cond_f
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v0

    .line 109
    const-string/jumbo v5, "createProgram"

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/aab;->a(Ljava/lang/String;)V

    .line 110
    if-eqz v0, :cond_1

    .line 111
    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 112
    const-string/jumbo v2, "attachShader"

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/aab;->a(Ljava/lang/String;)V

    .line 113
    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 114
    const-string/jumbo v2, "attachShader"

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/aab;->a(Ljava/lang/String;)V

    .line 115
    invoke-static {v0}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 116
    const-string/jumbo v2, "linkProgram"

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/aab;->a(Ljava/lang/String;)V

    .line 117
    new-array v2, v4, [I

    .line 118
    const v3, 0x8b82

    invoke-static {v0, v3, v2, v8}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 119
    const-string/jumbo v3, "getProgramiv"

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/aab;->a(Ljava/lang/String;)V

    .line 120
    aget v2, v2, v8

    if-eq v2, v4, :cond_10

    .line 121
    const-string/jumbo v2, "SphericalVideoRenderer"

    const-string/jumbo v3, "Could not link program: "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    const-string/jumbo v2, "SphericalVideoRenderer"

    invoke-static {v0}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 124
    const-string/jumbo v0, "deleteProgram"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/aab;->a(Ljava/lang/String;)V

    move v0, v8

    .line 125
    goto/16 :goto_3

    .line 126
    :cond_10
    invoke-static {v0}, Landroid/opengl/GLES20;->glValidateProgram(I)V

    .line 127
    const-string/jumbo v2, "validateProgram"

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/aab;->a(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_11
    move v4, v8

    .line 156
    goto/16 :goto_4

    .line 159
    :cond_12
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 166
    :cond_13
    new-instance v1, Landroid/graphics/SurfaceTexture;

    invoke-direct {v1, v0}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/aab;->o:Landroid/graphics/SurfaceTexture;

    .line 167
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aab;->o:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 168
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aab;->u:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 169
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aab;->b:Lcom/google/android/gms/internal/ads/aaa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/aaa;->a()V

    .line 170
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/aab;->A:Z

    .line 171
    :goto_8
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/aab;->B:Z

    if-nez v0, :cond_1a

    .line 173
    :goto_9
    iget v0, p0, Lcom/google/android/gms/internal/ads/aab;->s:I

    if-lez v0, :cond_14

    .line 174
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aab;->o:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 175
    iget v0, p0, Lcom/google/android/gms/internal/ads/aab;->s:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/aab;->s:I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_9

    .line 221
    :catch_0
    move-exception v0

    :try_start_1
    const-string/jumbo v0, "SphericalVideoProcessor halted unexpectedly."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->e(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 222
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aab;->b:Lcom/google/android/gms/internal/ads/aaa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/aaa;->b()V

    .line 223
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aab;->o:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v11}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 224
    iput-object v11, p0, Lcom/google/android/gms/internal/ads/aab;->o:Landroid/graphics/SurfaceTexture;

    .line 225
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/aab;->d()Z

    goto/16 :goto_0

    .line 176
    :cond_14
    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aab;->b:Lcom/google/android/gms/internal/ads/aaa;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aab;->c:[F

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/aaa;->a([F)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 177
    iget v0, p0, Lcom/google/android/gms/internal/ads/aab;->j:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 178
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aab;->c:[F

    .line 179
    const/4 v1, 0x3

    new-array v1, v1, [F

    fill-array-data v1, :array_3

    .line 180
    const/4 v2, 0x3

    new-array v2, v2, [F

    const/4 v3, 0x0

    const/4 v4, 0x0

    aget v4, v0, v4

    const/4 v5, 0x0

    aget v5, v1, v5

    mul-float/2addr v4, v5

    const/4 v5, 0x1

    aget v5, v0, v5

    const/4 v6, 0x1

    aget v6, v1, v6

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    const/4 v5, 0x2

    aget v5, v0, v5

    const/4 v6, 0x2

    aget v6, v1, v6

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    aput v4, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x3

    aget v4, v0, v4

    const/4 v5, 0x0

    aget v5, v1, v5

    mul-float/2addr v4, v5

    const/4 v5, 0x4

    aget v5, v0, v5

    const/4 v6, 0x1

    aget v6, v1, v6

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    const/4 v5, 0x5

    aget v5, v0, v5

    const/4 v6, 0x2

    aget v6, v1, v6

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    aput v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x6

    aget v4, v0, v4

    const/4 v5, 0x0

    aget v5, v1, v5

    mul-float/2addr v4, v5

    const/4 v5, 0x7

    aget v5, v0, v5

    const/4 v6, 0x1

    aget v6, v1, v6

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    const/16 v5, 0x8

    aget v0, v0, v5

    const/4 v5, 0x2

    aget v1, v1, v5

    mul-float/2addr v0, v1

    add-float/2addr v0, v4

    aput v0, v2, v3

    .line 182
    const/4 v0, 0x1

    aget v0, v2, v0

    float-to-double v0, v0

    const/4 v3, 0x0

    aget v2, v2, v3

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    const v1, 0x3fc90fdb

    sub-float/2addr v0, v1

    .line 183
    neg-float v0, v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/aab;->j:F

    .line 184
    :cond_15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aab;->h:[F

    iget v1, p0, Lcom/google/android/gms/internal/ads/aab;->j:F

    iget v2, p0, Lcom/google/android/gms/internal/ads/aab;->k:F

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/aab;->b([FF)V

    .line 187
    :goto_a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aab;->d:[F

    const v1, 0x3fc90fdb

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/aab;->a([FF)V

    .line 188
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aab;->e:[F

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aab;->h:[F

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/aab;->d:[F

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/aab;->a([F[F[F)V

    .line 189
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aab;->f:[F

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aab;->c:[F

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/aab;->e:[F

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/aab;->a([F[F[F)V

    .line 190
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aab;->g:[F

    iget v1, p0, Lcom/google/android/gms/internal/ads/aab;->l:F

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/aab;->a([FF)V

    .line 191
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aab;->i:[F

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aab;->g:[F

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/aab;->f:[F

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/aab;->a([F[F[F)V

    .line 192
    iget v0, p0, Lcom/google/android/gms/internal/ads/aab;->r:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/aab;->i:[F

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/GLES20;->glUniformMatrix3fv(IIZ[FI)V

    .line 193
    const/4 v0, 0x5

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 194
    const-string/jumbo v0, "drawArrays"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/aab;->a(Ljava/lang/String;)V

    .line 195
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    .line 196
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aab;->w:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aab;->x:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/aab;->z:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 197
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/aab;->A:Z

    if-eqz v0, :cond_16

    .line 199
    const/4 v0, 0x0

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/internal/ads/aab;->n:I

    iget v3, p0, Lcom/google/android/gms/internal/ads/aab;->m:I

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 200
    const-string/jumbo v0, "viewport"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/aab;->a(Ljava/lang/String;)V

    .line 201
    iget v0, p0, Lcom/google/android/gms/internal/ads/aab;->q:I

    const-string/jumbo v1, "uFOVx"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    .line 202
    iget v1, p0, Lcom/google/android/gms/internal/ads/aab;->q:I

    const-string/jumbo v2, "uFOVy"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    .line 203
    iget v2, p0, Lcom/google/android/gms/internal/ads/aab;->n:I

    iget v3, p0, Lcom/google/android/gms/internal/ads/aab;->m:I

    if-le v2, v3, :cond_19

    .line 204
    const v2, 0x3f5f66f3

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 205
    const v0, 0x3f5f66f3

    iget v2, p0, Lcom/google/android/gms/internal/ads/aab;->m:I

    int-to-float v2, v2

    mul-float/2addr v0, v2

    iget v2, p0, Lcom/google/android/gms/internal/ads/aab;->n:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 208
    :goto_b
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/aab;->A:Z
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 209
    :cond_16
    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aab;->v:Ljava/lang/Object;

    monitor-enter v1
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 210
    :try_start_4
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/aab;->B:Z

    if-nez v0, :cond_17

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/aab;->A:Z

    if-nez v0, :cond_17

    iget v0, p0, Lcom/google/android/gms/internal/ads/aab;->s:I

    if-nez v0, :cond_17

    .line 211
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aab;->v:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    .line 212
    :cond_17
    monitor-exit v1

    goto/16 :goto_8

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 214
    :catch_1
    move-exception v0

    goto/16 :goto_8

    .line 185
    :cond_18
    :try_start_6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aab;->c:[F

    const v1, -0x4036f025

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/aab;->a([FF)V

    .line 186
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aab;->h:[F

    iget v1, p0, Lcom/google/android/gms/internal/ads/aab;->k:F

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/aab;->b([FF)V
    :try_end_6
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto/16 :goto_a

    .line 227
    :catch_2
    move-exception v0

    .line 228
    :try_start_7
    const-string/jumbo v1, "SphericalVideoProcessor died."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/uu;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 229
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->g()Lcom/google/android/gms/internal/ads/ug;

    move-result-object v1

    const-string/jumbo v2, "SphericalVideoProcessor.run.2"

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/ug;->a(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 230
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aab;->b:Lcom/google/android/gms/internal/ads/aaa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/aaa;->b()V

    .line 231
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aab;->o:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v11}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 232
    iput-object v11, p0, Lcom/google/android/gms/internal/ads/aab;->o:Landroid/graphics/SurfaceTexture;

    .line 233
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/aab;->d()Z

    goto/16 :goto_0

    .line 206
    :cond_19
    const v2, 0x3f5f66f3

    :try_start_8
    iget v3, p0, Lcom/google/android/gms/internal/ads/aab;->n:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/google/android/gms/internal/ads/aab;->m:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 207
    const v0, 0x3f5f66f3

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glUniform1f(IF)V
    :try_end_8
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_b

    .line 235
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aab;->b:Lcom/google/android/gms/internal/ads/aaa;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/aaa;->b()V

    .line 236
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aab;->o:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1, v11}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 237
    iput-object v11, p0, Lcom/google/android/gms/internal/ads/aab;->o:Landroid/graphics/SurfaceTexture;

    .line 238
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/aab;->d()Z

    .line 239
    throw v0

    .line 215
    :cond_1a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aab;->b:Lcom/google/android/gms/internal/ads/aaa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/aaa;->b()V

    .line 216
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aab;->o:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v11}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 217
    iput-object v11, p0, Lcom/google/android/gms/internal/ads/aab;->o:Landroid/graphics/SurfaceTexture;

    .line 218
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/aab;->d()Z

    goto/16 :goto_0

    .line 152
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 63
    :array_1
    .array-data 4
        0x3040
        0x4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3025
        0x10
        0x3038
    .end array-data

    .line 71
    :array_2
    .array-data 4
        0x3098
        0x2
        0x3038
    .end array-data

    .line 179
    :array_3
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method
