.class public Lcom/linkedin/android/litr/preview/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/linkedin/android/litr/preview/c$b;,
        Lcom/linkedin/android/litr/preview/c$a;
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/String; = "c"


# instance fields
.field a:Lcom/linkedin/android/litr/preview/c$b;

.field private final c:Lcom/linkedin/android/litr/preview/c$a;

.field private d:[F

.field private e:[F

.field private f:Landroid/graphics/SurfaceTexture;

.field private g:I

.field private h:Lcom/linkedin/android/litr/c/b;

.field private i:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/linkedin/android/litr/preview/c$a;)V
    .locals 2

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v1, v0, [F

    .line 51
    iput-object v1, p0, Lcom/linkedin/android/litr/preview/c;->d:[F

    new-array v0, v0, [F

    .line 52
    iput-object v0, p0, Lcom/linkedin/android/litr/preview/c;->e:[F

    .line 61
    new-instance v0, Lcom/linkedin/android/litr/preview/c$1;

    invoke-direct {v0, p0}, Lcom/linkedin/android/litr/preview/c$1;-><init>(Lcom/linkedin/android/litr/preview/c;)V

    iput-object v0, p0, Lcom/linkedin/android/litr/preview/c;->i:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    .line 69
    iput-object p1, p0, Lcom/linkedin/android/litr/preview/c;->c:Lcom/linkedin/android/litr/preview/c$a;

    .line 70
    new-instance p1, Lcom/linkedin/android/litr/c/b/a/a;

    invoke-direct {p1}, Lcom/linkedin/android/litr/c/b/a/a;-><init>()V

    iput-object p1, p0, Lcom/linkedin/android/litr/preview/c;->h:Lcom/linkedin/android/litr/c/b;

    .line 72
    iget-object p1, p0, Lcom/linkedin/android/litr/preview/c;->d:[F

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    return-void
.end method

.method static synthetic a(Lcom/linkedin/android/litr/preview/c;)Lcom/linkedin/android/litr/preview/c$b;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/linkedin/android/litr/preview/c;->a:Lcom/linkedin/android/litr/preview/c$b;

    return-object p0
.end method


# virtual methods
.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 2

    .line 127
    monitor-enter p0

    .line 128
    :try_start_0
    iget-object p1, p0, Lcom/linkedin/android/litr/preview/c;->f:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 129
    iget-object p1, p0, Lcom/linkedin/android/litr/preview/c;->f:Landroid/graphics/SurfaceTexture;

    iget-object v0, p0, Lcom/linkedin/android/litr/preview/c;->d:[F

    invoke-virtual {p1, v0}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 130
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x4000

    .line 132
    invoke-static {p1}, Landroid/opengl/GLES20;->glClear(I)V

    .line 134
    iget-object p1, p0, Lcom/linkedin/android/litr/preview/c;->h:Lcom/linkedin/android/litr/c/b;

    iget v0, p0, Lcom/linkedin/android/litr/preview/c;->g:I

    iget-object v1, p0, Lcom/linkedin/android/litr/preview/c;->d:[F

    invoke-interface {p1, v0, v1}, Lcom/linkedin/android/litr/c/b;->a(I[F)V

    .line 135
    iget-object p1, p0, Lcom/linkedin/android/litr/preview/c;->h:Lcom/linkedin/android/litr/c/b;

    iget-object v0, p0, Lcom/linkedin/android/litr/preview/c;->f:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lcom/linkedin/android/litr/c/b;->a(J)V

    return-void

    :catchall_0
    move-exception p1

    .line 130
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 25

    move-object/from16 v0, p0

    move/from16 v1, p2

    int-to-float v1, v1

    move/from16 v2, p3

    int-to-float v2, v2

    div-float v6, v1, v2

    const/16 v1, 0x10

    new-array v2, v1, [F

    const/4 v13, 0x0

    .line 1148
    invoke-static {v2, v13}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    neg-float v5, v6

    const/4 v4, 0x0

    const/high16 v7, -0x40800000    # -1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, -0x40800000    # -1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    move-object v3, v2

    .line 1149
    invoke-static/range {v3 .. v10}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    new-array v11, v1, [F

    .line 1153
    invoke-static {v11, v13}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/high16 v18, 0x3f800000    # 1.0f

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/high16 v23, 0x3f800000    # 1.0f

    const/16 v24, 0x0

    move-object v14, v11

    .line 1154
    invoke-static/range {v14 .. v24}, Landroid/opengl/Matrix;->setLookAtM([FIFFFFFFFFF)V

    .line 1159
    iget-object v1, v0, Lcom/linkedin/android/litr/preview/c;->e:[F

    invoke-static {v1, v13}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 1160
    iget-object v7, v0, Lcom/linkedin/android/litr/preview/c;->e:[F

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object v9, v2

    invoke-static/range {v7 .. v12}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 122
    iget-object v1, v0, Lcom/linkedin/android/litr/preview/c;->h:Lcom/linkedin/android/litr/c/b;

    iget-object v2, v0, Lcom/linkedin/android/litr/preview/c;->e:[F

    array-length v3, v2

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v2

    invoke-interface {v1, v2, v13}, Lcom/linkedin/android/litr/c/b;->a([FI)V

    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 3

    const/4 p1, 0x1

    new-array p2, p1, [I

    const/4 v0, 0x0

    .line 99
    invoke-static {p1, p2, v0}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 100
    aget p1, p2, v0

    iput p1, p0, Lcom/linkedin/android/litr/preview/c;->g:I

    .line 102
    new-instance p1, Landroid/graphics/SurfaceTexture;

    iget v1, p0, Lcom/linkedin/android/litr/preview/c;->g:I

    invoke-direct {p1, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object p1, p0, Lcom/linkedin/android/litr/preview/c;->f:Landroid/graphics/SurfaceTexture;

    .line 103
    iget-object v1, p0, Lcom/linkedin/android/litr/preview/c;->i:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    invoke-virtual {p1, v1}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 105
    iget p1, p0, Lcom/linkedin/android/litr/preview/c;->g:I

    const v1, 0x8d65

    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 p1, 0x2800

    const v2, 0x46180400    # 9729.0f

    .line 106
    invoke-static {v1, p1, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 p1, 0x2801

    const/high16 v2, 0x46180000    # 9728.0f

    .line 107
    invoke-static {v1, p1, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 p1, 0x2802

    const v2, 0x812f

    .line 108
    invoke-static {v1, p1, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 p1, 0x2803

    .line 109
    invoke-static {v1, p1, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 p1, 0xde1

    .line 110
    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 114
    iget-object p1, p0, Lcom/linkedin/android/litr/preview/c;->h:Lcom/linkedin/android/litr/c/b;

    invoke-interface {p1}, Lcom/linkedin/android/litr/c/b;->a()V

    const/16 p1, 0xd33

    .line 116
    invoke-static {p1, p2, v0}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    return-void
.end method
