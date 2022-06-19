.class final Lcom/google/android/exoplayer2/ui/spherical/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/video/a/a;
.implements Lcom/google/android/exoplayer2/video/i;


# instance fields
.field final a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final c:Lcom/google/android/exoplayer2/ui/spherical/b;

.field final d:Lcom/google/android/exoplayer2/video/a/c;

.field final e:Lcom/google/android/exoplayer2/util/ac;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/util/ac<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field final f:Lcom/google/android/exoplayer2/util/ac;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/util/ac<",
            "Lcom/google/android/exoplayer2/video/a/d;",
            ">;"
        }
    .end annotation
.end field

.field final g:[F

.field final h:[F

.field i:I

.field j:Landroid/graphics/SurfaceTexture;

.field volatile k:I

.field private l:I

.field private m:[B


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/c;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 65
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/c;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 66
    new-instance v0, Lcom/google/android/exoplayer2/ui/spherical/b;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/ui/spherical/b;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/c;->c:Lcom/google/android/exoplayer2/ui/spherical/b;

    .line 67
    new-instance v0, Lcom/google/android/exoplayer2/video/a/c;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/video/a/c;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/c;->d:Lcom/google/android/exoplayer2/video/a/c;

    .line 68
    new-instance v0, Lcom/google/android/exoplayer2/util/ac;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/ac;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/c;->e:Lcom/google/android/exoplayer2/util/ac;

    .line 69
    new-instance v0, Lcom/google/android/exoplayer2/util/ac;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/ac;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/c;->f:Lcom/google/android/exoplayer2/util/ac;

    const/16 v0, 0x10

    new-array v1, v0, [F

    .line 70
    iput-object v1, p0, Lcom/google/android/exoplayer2/ui/spherical/c;->g:[F

    new-array v0, v0, [F

    .line 71
    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/c;->h:[F

    const/4 v0, 0x0

    .line 72
    iput v0, p0, Lcom/google/android/exoplayer2/ui/spherical/c;->k:I

    const/4 v0, -0x1

    .line 73
    iput v0, p0, Lcom/google/android/exoplayer2/ui/spherical/c;->l:I

    return-void
.end method

.method private synthetic a(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    .line 99
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/spherical/c;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public static synthetic lambda$K0HsjgasoenV6pP-qpPEBSOSQeQ(Lcom/google/android/exoplayer2/ui/spherical/c;Landroid/graphics/SurfaceTexture;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/spherical/c;->a(Landroid/graphics/SurfaceTexture;)V

    return-void
.end method


# virtual methods
.method public final a()Landroid/graphics/SurfaceTexture;
    .locals 5

    const/high16 v0, 0x3f000000    # 0.5f

    const/high16 v1, 0x3f800000    # 1.0f

    .line 91
    invoke-static {v0, v0, v0, v1}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 92
    invoke-static {}, Lcom/google/android/exoplayer2/util/j;->a()V

    .line 94
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/c;->c:Lcom/google/android/exoplayer2/ui/spherical/b;

    .line 1123
    sget-object v1, Lcom/google/android/exoplayer2/ui/spherical/b;->a:[Ljava/lang/String;

    sget-object v2, Lcom/google/android/exoplayer2/ui/spherical/b;->b:[Ljava/lang/String;

    const-string v3, "\n"

    .line 1272
    invoke-static {v3, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/util/j;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 1123
    iput v1, v0, Lcom/google/android/exoplayer2/ui/spherical/b;->k:I

    .line 1124
    iget v1, v0, Lcom/google/android/exoplayer2/ui/spherical/b;->k:I

    const-string v2, "uMvpMatrix"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/google/android/exoplayer2/ui/spherical/b;->l:I

    .line 1125
    iget v1, v0, Lcom/google/android/exoplayer2/ui/spherical/b;->k:I

    const-string v2, "uTexMatrix"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/google/android/exoplayer2/ui/spherical/b;->m:I

    .line 1126
    iget v1, v0, Lcom/google/android/exoplayer2/ui/spherical/b;->k:I

    const-string v2, "aPosition"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/google/android/exoplayer2/ui/spherical/b;->n:I

    .line 1127
    iget v1, v0, Lcom/google/android/exoplayer2/ui/spherical/b;->k:I

    const-string v2, "aTexCoords"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/google/android/exoplayer2/ui/spherical/b;->o:I

    .line 1128
    iget v1, v0, Lcom/google/android/exoplayer2/ui/spherical/b;->k:I

    const-string v2, "uTexture"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/google/android/exoplayer2/ui/spherical/b;->p:I

    .line 95
    invoke-static {}, Lcom/google/android/exoplayer2/util/j;->a()V

    const/4 v0, 0x1

    new-array v1, v0, [I

    .line 1355
    invoke-static {v1}, Ljava/nio/IntBuffer;->wrap([I)Ljava/nio/IntBuffer;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGenTextures(ILjava/nio/IntBuffer;)V

    const/4 v0, 0x0

    .line 1356
    aget v2, v1, v0

    const v3, 0x8d65

    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v2, 0x2801

    const/16 v4, 0x2601

    .line 1357
    invoke-static {v3, v2, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v2, 0x2800

    .line 1359
    invoke-static {v3, v2, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v2, 0x2802

    const v4, 0x812f

    .line 1361
    invoke-static {v3, v2, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v2, 0x2803

    .line 1363
    invoke-static {v3, v2, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 1365
    invoke-static {}, Lcom/google/android/exoplayer2/util/j;->a()V

    .line 1366
    aget v0, v1, v0

    .line 97
    iput v0, p0, Lcom/google/android/exoplayer2/ui/spherical/c;->i:I

    .line 98
    new-instance v0, Landroid/graphics/SurfaceTexture;

    iget v1, p0, Lcom/google/android/exoplayer2/ui/spherical/c;->i:I

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/c;->j:Landroid/graphics/SurfaceTexture;

    .line 99
    new-instance v1, Lcom/google/android/exoplayer2/ui/spherical/-$$Lambda$c$K0HsjgasoenV6pP-qpPEBSOSQeQ;

    invoke-direct {v1, p0}, Lcom/google/android/exoplayer2/ui/spherical/-$$Lambda$c$K0HsjgasoenV6pP-qpPEBSOSQeQ;-><init>(Lcom/google/android/exoplayer2/ui/spherical/c;)V

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 100
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/c;->j:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method public final a(JJLcom/google/android/exoplayer2/Format;)V
    .locals 30

    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    move-object/from16 v3, p5

    .line 151
    iget-object v4, v0, Lcom/google/android/exoplayer2/ui/spherical/c;->e:Lcom/google/android/exoplayer2/util/ac;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v1, v2, v5}, Lcom/google/android/exoplayer2/util/ac;->a(JLjava/lang/Object;)V

    .line 152
    iget-object v4, v3, Lcom/google/android/exoplayer2/Format;->projectionData:[B

    iget v3, v3, Lcom/google/android/exoplayer2/Format;->stereoMode:I

    .line 2178
    iget-object v5, v0, Lcom/google/android/exoplayer2/ui/spherical/c;->m:[B

    .line 2179
    iget v6, v0, Lcom/google/android/exoplayer2/ui/spherical/c;->l:I

    .line 2180
    iput-object v4, v0, Lcom/google/android/exoplayer2/ui/spherical/c;->m:[B

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 2181
    iget v3, v0, Lcom/google/android/exoplayer2/ui/spherical/c;->k:I

    :cond_0
    iput v3, v0, Lcom/google/android/exoplayer2/ui/spherical/c;->l:I

    if-ne v6, v3, :cond_1

    .line 2182
    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/spherical/c;->m:[B

    invoke-static {v5, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-nez v3, :cond_c

    :cond_1
    const/4 v3, 0x0

    .line 2187
    iget-object v4, v0, Lcom/google/android/exoplayer2/ui/spherical/c;->m:[B

    if-eqz v4, :cond_2

    .line 2188
    iget v3, v0, Lcom/google/android/exoplayer2/ui/spherical/c;->l:I

    invoke-static {v4, v3}, Lcom/google/android/exoplayer2/video/a/e;->a([BI)Lcom/google/android/exoplayer2/video/a/d;

    move-result-object v3

    :cond_2
    if-eqz v3, :cond_3

    .line 2191
    invoke-static {v3}, Lcom/google/android/exoplayer2/ui/spherical/b;->a(Lcom/google/android/exoplayer2/video/a/d;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto/16 :goto_7

    .line 2193
    :cond_3
    iget v3, v0, Lcom/google/android/exoplayer2/ui/spherical/c;->l:I

    const/4 v4, 0x1

    .line 3081
    invoke-static {v4}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    .line 3082
    invoke-static {v4}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    .line 3083
    invoke-static {v4}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    .line 3084
    invoke-static {v4}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    .line 3085
    invoke-static {v4}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    const-wide v5, 0x4066800000000000L    # 180.0

    .line 3088
    invoke-static {v5, v6}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v5

    double-to-float v5, v5

    const-wide v6, 0x4076800000000000L    # 360.0

    .line 3089
    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    double-to-float v6, v6

    const/high16 v7, 0x42100000    # 36.0f

    div-float v7, v5, v7

    const/high16 v8, 0x42900000    # 72.0f

    div-float v8, v6, v8

    const/16 v9, 0x3e70

    new-array v9, v9, [F

    const/16 v10, 0x29a0

    new-array v10, v10, [F

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_0
    const/16 v15, 0x24

    if-ge v12, v15, :cond_b

    int-to-float v15, v12

    mul-float v15, v15, v7

    const/high16 v16, 0x40000000    # 2.0f

    div-float v17, v5, v16

    sub-float v15, v15, v17

    add-int/lit8 v11, v12, 0x1

    int-to-float v4, v11

    mul-float v4, v4, v7

    sub-float v4, v4, v17

    move/from16 p5, v4

    move/from16 v17, v11

    const/4 v4, 0x0

    :goto_1
    const/16 v11, 0x49

    if-ge v4, v11, :cond_a

    move/from16 v18, v15

    const/4 v11, 0x0

    :goto_2
    const/4 v15, 0x2

    if-ge v11, v15, :cond_9

    if-nez v11, :cond_4

    move/from16 v15, v18

    goto :goto_3

    :cond_4
    move/from16 v15, p5

    :goto_3
    int-to-float v1, v4

    mul-float v1, v1, v8

    const v2, 0x40490fdb    # (float)Math.PI

    add-float/2addr v2, v1

    div-float v19, v6, v16

    sub-float v2, v2, v19

    add-int/lit8 v19, v13, 0x1

    move/from16 v20, v3

    float-to-double v2, v2

    .line 3117
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v21

    const-wide/high16 v23, 0x4049000000000000L    # 50.0

    mul-double v21, v21, v23

    move/from16 v26, v4

    move/from16 v25, v5

    float-to-double v4, v15

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v27

    move v15, v7

    move/from16 v29, v8

    mul-double v7, v21, v27

    double-to-float v7, v7

    neg-float v7, v7

    aput v7, v9, v13

    add-int/lit8 v7, v19, 0x1

    .line 3118
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v21

    move/from16 v27, v11

    move v8, v12

    mul-double v11, v21, v23

    double-to-float v11, v11

    aput v11, v9, v19

    add-int/lit8 v11, v7, 0x1

    .line 3119
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double v2, v2, v23

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double v2, v2, v4

    double-to-float v2, v2

    aput v2, v9, v7

    add-int/lit8 v2, v14, 0x1

    div-float/2addr v1, v6

    .line 3121
    aput v1, v10, v14

    add-int/lit8 v1, v2, 0x1

    add-int v12, v8, v27

    int-to-float v3, v12

    mul-float v3, v3, v15

    div-float v3, v3, v25

    .line 3122
    aput v3, v10, v2

    if-nez v26, :cond_6

    if-eqz v27, :cond_5

    goto :goto_4

    :cond_5
    move/from16 v3, v26

    move/from16 v2, v27

    goto :goto_5

    :cond_6
    :goto_4
    const/16 v2, 0x48

    move/from16 v3, v26

    if-ne v3, v2, :cond_7

    move/from16 v2, v27

    const/4 v4, 0x1

    if-ne v2, v4, :cond_8

    :goto_5
    add-int/lit8 v4, v11, -0x3

    const/4 v5, 0x3

    .line 3126
    invoke-static {v9, v4, v9, v11, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v11, v11, 0x3

    add-int/lit8 v4, v1, -0x2

    const/4 v5, 0x2

    .line 3133
    invoke-static {v10, v4, v10, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v1, v1, 0x2

    goto :goto_6

    :cond_7
    move/from16 v2, v27

    :cond_8
    :goto_6
    move v14, v1

    move v13, v11

    add-int/lit8 v11, v2, 0x1

    move-wide/from16 v1, p3

    move v4, v3

    move v12, v8

    move v7, v15

    move/from16 v3, v20

    move/from16 v5, v25

    move/from16 v8, v29

    goto/16 :goto_2

    :cond_9
    move/from16 v20, v3

    move v3, v4

    move/from16 v25, v5

    move v15, v7

    move/from16 v29, v8

    move v8, v12

    add-int/lit8 v4, v3, 0x1

    move-wide/from16 v1, p3

    move/from16 v15, v18

    move/from16 v3, v20

    move/from16 v8, v29

    goto/16 :goto_1

    :cond_a
    move-wide/from16 v1, p3

    move/from16 v12, v17

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_b
    move/from16 v20, v3

    .line 3146
    new-instance v1, Lcom/google/android/exoplayer2/video/a/d$b;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, v2, v9, v10, v3}, Lcom/google/android/exoplayer2/video/a/d$b;-><init>(I[F[FI)V

    .line 3148
    new-instance v4, Lcom/google/android/exoplayer2/video/a/d;

    new-instance v5, Lcom/google/android/exoplayer2/video/a/d$a;

    new-array v3, v3, [Lcom/google/android/exoplayer2/video/a/d$b;

    aput-object v1, v3, v2

    invoke-direct {v5, v3}, Lcom/google/android/exoplayer2/video/a/d$a;-><init>([Lcom/google/android/exoplayer2/video/a/d$b;)V

    move/from16 v1, v20

    invoke-direct {v4, v5, v1}, Lcom/google/android/exoplayer2/video/a/d;-><init>(Lcom/google/android/exoplayer2/video/a/d$a;I)V

    move-object v3, v4

    .line 2194
    :goto_7
    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/spherical/c;->f:Lcom/google/android/exoplayer2/util/ac;

    move-wide/from16 v4, p3

    invoke-virtual {v1, v4, v5, v3}, Lcom/google/android/exoplayer2/util/ac;->a(JLjava/lang/Object;)V

    :cond_c
    return-void
.end method

.method public final a(J[F)V
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/c;->d:Lcom/google/android/exoplayer2/video/a/c;

    .line 4050
    iget-object v0, v0, Lcom/google/android/exoplayer2/video/a/c;->c:Lcom/google/android/exoplayer2/util/ac;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/util/ac;->a(JLjava/lang/Object;)V

    return-void
.end method

.method public final b()V
    .locals 2

    .line 164
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/c;->e:Lcom/google/android/exoplayer2/util/ac;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ac;->a()V

    .line 165
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/c;->d:Lcom/google/android/exoplayer2/video/a/c;

    .line 4055
    iget-object v1, v0, Lcom/google/android/exoplayer2/video/a/c;->c:Lcom/google/android/exoplayer2/util/ac;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ac;->a()V

    const/4 v1, 0x0

    .line 4056
    iput-boolean v1, v0, Lcom/google/android/exoplayer2/video/a/c;->d:Z

    .line 166
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/c;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
