.class public final Lcom/linkedin/android/litr/e/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/linkedin/android/litr/e/d;


# static fields
.field protected static final a:Ljava/lang/String;


# instance fields
.field public b:Lcom/linkedin/android/litr/e/e;

.field public c:Lcom/linkedin/android/litr/e/f;

.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/linkedin/android/litr/c/a;",
            ">;"
        }
    .end annotation
.end field

.field private e:[F

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v0, "rotation-degrees"

    sput-object v0, Lcom/linkedin/android/litr/e/b;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/linkedin/android/litr/c/a;",
            ">;)V"
        }
    .end annotation

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [F

    .line 54
    iput-object v0, p0, Lcom/linkedin/android/litr/e/b;->e:[F

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/linkedin/android/litr/e/b;->d:Ljava/util/List;

    if-nez p1, :cond_0

    .line 67
    new-instance p1, Lcom/linkedin/android/litr/c/b/a/a;

    invoke-direct {p1}, Lcom/linkedin/android/litr/c/b/a/a;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 72
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/linkedin/android/litr/c/a;

    .line 73
    instance-of v2, v2, Lcom/linkedin/android/litr/c/b;

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    :cond_2
    if-nez v0, :cond_3

    .line 80
    iget-object v0, p0, Lcom/linkedin/android/litr/e/b;->d:Ljava/util/List;

    new-instance v1, Lcom/linkedin/android/litr/c/b/a/a;

    invoke-direct {v1}, Lcom/linkedin/android/litr/c/b/a/a;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    :cond_3
    iget-object v0, p0, Lcom/linkedin/android/litr/e/b;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private a(J)V
    .locals 5

    .line 4211
    iget-boolean v0, p0, Lcom/linkedin/android/litr/e/b;->f:Z

    if-nez v0, :cond_2

    .line 4212
    iget-object v0, p0, Lcom/linkedin/android/litr/e/b;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/linkedin/android/litr/c/a;

    .line 4213
    instance-of v2, v1, Lcom/linkedin/android/litr/c/b;

    if-eqz v2, :cond_0

    .line 4214
    check-cast v1, Lcom/linkedin/android/litr/c/b;

    iget-object v2, p0, Lcom/linkedin/android/litr/e/b;->b:Lcom/linkedin/android/litr/e/e;

    .line 5090
    iget v2, v2, Lcom/linkedin/android/litr/e/e;->c:I

    .line 4214
    iget-object v3, p0, Lcom/linkedin/android/litr/e/b;->b:Lcom/linkedin/android/litr/e/e;

    const/16 v4, 0x10

    new-array v4, v4, [F

    .line 5096
    iget-object v3, v3, Lcom/linkedin/android/litr/e/e;->a:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v3, v4}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 4214
    invoke-interface {v1, v2, v4}, Lcom/linkedin/android/litr/c/b;->a(I[F)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 4217
    iput-boolean v0, p0, Lcom/linkedin/android/litr/e/b;->f:Z

    :cond_2
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 158
    invoke-static {v1, v1, v1, v0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 v0, 0x4100

    .line 159
    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 161
    iget-object v0, p0, Lcom/linkedin/android/litr/e/b;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/linkedin/android/litr/c/a;

    .line 162
    invoke-interface {v1, p1, p2}, Lcom/linkedin/android/litr/c/a;->a(J)V

    goto :goto_1

    .line 165
    :cond_3
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/media/MediaFormat;Landroid/media/MediaFormat;)V
    .locals 0

    return-void
.end method

.method public final a(Landroid/view/Surface;Landroid/media/MediaFormat;Landroid/media/MediaFormat;)V
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    if-eqz v1, :cond_9

    if-eqz v3, :cond_8

    .line 96
    sget-object v4, Lcom/linkedin/android/litr/e/b;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    .line 97
    invoke-virtual {v3, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    .line 98
    invoke-virtual {v2, v4}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 99
    invoke-virtual {v2, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    const-string v4, "width"

    .line 102
    invoke-virtual {v3, v4}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v5

    const/high16 v7, 0x3f800000    # 1.0f

    if-eqz v5, :cond_2

    const-string v5, "height"

    invoke-virtual {v3, v5}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 103
    invoke-virtual {v3, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v5}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v4, v3

    move v11, v4

    goto :goto_1

    :cond_2
    const/high16 v11, 0x3f800000    # 1.0f

    .line 106
    :goto_1
    new-instance v3, Lcom/linkedin/android/litr/e/f;

    invoke-direct {v3, v1}, Lcom/linkedin/android/litr/e/f;-><init>(Landroid/view/Surface;)V

    iput-object v3, v0, Lcom/linkedin/android/litr/e/b;->c:Lcom/linkedin/android/litr/e/f;

    .line 108
    new-instance v1, Lcom/linkedin/android/litr/e/e;

    invoke-direct {v1}, Lcom/linkedin/android/litr/e/e;-><init>()V

    iput-object v1, v0, Lcom/linkedin/android/litr/e/b;->b:Lcom/linkedin/android/litr/e/e;

    const/16 v1, 0x10

    new-array v3, v1, [F

    .line 1170
    invoke-static {v3, v6}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    const/4 v9, 0x0

    neg-float v10, v11

    const/high16 v12, -0x40800000    # -1.0f

    const/high16 v13, 0x3f800000    # 1.0f

    const/high16 v14, -0x40800000    # -1.0f

    const/high16 v15, 0x3f800000    # 1.0f

    move-object v8, v3

    .line 1171
    invoke-static/range {v8 .. v15}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    new-array v1, v1, [F

    .line 1175
    invoke-static {v1, v6}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    const/high16 v4, -0x40800000    # -1.0f

    const/4 v5, 0x0

    if-eqz v2, :cond_6

    const/16 v8, 0x5a

    if-eq v2, v8, :cond_5

    const/16 v7, 0xb4

    if-eq v2, v7, :cond_4

    const/16 v7, 0x10e

    if-eq v2, v7, :cond_3

    int-to-double v4, v2

    const-wide v7, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v4, v7

    .line 1197
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    double-to-float v7, v7

    .line 1198
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v2, v4

    move/from16 v25, v2

    move/from16 v24, v7

    goto :goto_3

    :cond_3
    const/high16 v24, -0x40800000    # -1.0f

    goto :goto_2

    :cond_4
    const/16 v24, 0x0

    const/high16 v25, -0x40800000    # -1.0f

    goto :goto_3

    :cond_5
    const/high16 v24, 0x3f800000    # 1.0f

    :goto_2
    const/16 v25, 0x0

    goto :goto_3

    :cond_6
    const/16 v24, 0x0

    const/high16 v25, 0x3f800000    # 1.0f

    :goto_3
    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/high16 v20, 0x3f800000    # 1.0f

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v26, 0x0

    move-object/from16 v16, v1

    .line 1201
    invoke-static/range {v16 .. v26}, Landroid/opengl/Matrix;->setLookAtM([FIFFFFFFFFF)V

    .line 1206
    iget-object v2, v0, Lcom/linkedin/android/litr/e/b;->e:[F

    invoke-static {v2, v6}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 1207
    iget-object v12, v0, Lcom/linkedin/android/litr/e/b;->e:[F

    const/4 v13, 0x0

    const/4 v15, 0x0

    move-object v14, v3

    invoke-static/range {v12 .. v17}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 111
    iget-object v1, v0, Lcom/linkedin/android/litr/e/b;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/linkedin/android/litr/c/a;

    .line 112
    invoke-interface {v2}, Lcom/linkedin/android/litr/c/a;->a()V

    .line 113
    iget-object v3, v0, Lcom/linkedin/android/litr/e/b;->e:[F

    array-length v4, v3

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v3

    invoke-interface {v2, v3, v6}, Lcom/linkedin/android/litr/c/a;->a([FI)V

    goto :goto_4

    :cond_7
    return-void

    .line 91
    :cond_8
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "GlVideoRenderer requires target media format"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 88
    :cond_9
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "GlVideoRenderer requires an output surface"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final a(Lcom/linkedin/android/litr/b/c;J)V
    .locals 4

    .line 131
    iget-object p1, p0, Lcom/linkedin/android/litr/e/b;->b:Lcom/linkedin/android/litr/e/e;

    .line 2106
    iget-object v0, p1, Lcom/linkedin/android/litr/e/e;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 2107
    :goto_0
    :try_start_0
    iget-boolean v1, p1, Lcom/linkedin/android/litr/e/e;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 2111
    :try_start_1
    iget-object v1, p1, Lcom/linkedin/android/litr/e/e;->d:Ljava/lang/Object;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 2112
    iget-boolean v1, p1, Lcom/linkedin/android/litr/e/e;->e:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2114
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Surface frame wait timed out"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    move-exception p1

    .line 2118
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_1
    const/4 v1, 0x0

    .line 2121
    iput-boolean v1, p1, Lcom/linkedin/android/litr/e/e;->e:Z

    .line 2122
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v0, "before updateTexImage"

    .line 2124
    invoke-static {v0}, Lcom/linkedin/android/litr/e/a;->a(Ljava/lang/String;)V

    .line 2125
    iget-object p1, p1, Lcom/linkedin/android/litr/e/e;->a:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 132
    invoke-direct {p0, p2, p3}, Lcom/linkedin/android/litr/e/b;->a(J)V

    .line 133
    iget-object p1, p0, Lcom/linkedin/android/litr/e/b;->c:Lcom/linkedin/android/litr/e/f;

    .line 3064
    iget-object v0, p1, Lcom/linkedin/android/litr/e/f;->a:Landroid/opengl/EGLDisplay;

    iget-object p1, p1, Lcom/linkedin/android/litr/e/f;->c:Landroid/opengl/EGLSurface;

    invoke-static {v0, p1, p2, p3}, Landroid/opengl/EGLExt;->eglPresentationTimeANDROID(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;J)Z

    .line 134
    iget-object p1, p0, Lcom/linkedin/android/litr/e/b;->c:Lcom/linkedin/android/litr/e/f;

    .line 4057
    iget-object p2, p1, Lcom/linkedin/android/litr/e/f;->a:Landroid/opengl/EGLDisplay;

    iget-object p1, p1, Lcom/linkedin/android/litr/e/f;->c:Landroid/opengl/EGLSurface;

    invoke-static {p2, p1}, Landroid/opengl/EGL14;->eglSwapBuffers(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    return-void

    :catchall_0
    move-exception p1

    .line 2122
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public final a()Z
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/linkedin/android/litr/e/b;->d:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
