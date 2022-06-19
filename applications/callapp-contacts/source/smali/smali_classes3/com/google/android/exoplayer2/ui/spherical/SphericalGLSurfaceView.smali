.class public final Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;
.super Landroid/opengl/GLSurfaceView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/hardware/SensorManager;

.field private final b:Landroid/hardware/Sensor;

.field private final c:Lcom/google/android/exoplayer2/ui/spherical/a;

.field private final d:Landroid/os/Handler;

.field private final e:Lcom/google/android/exoplayer2/ui/spherical/e;

.field private final f:Lcom/google/android/exoplayer2/ui/spherical/c;

.field private g:Landroid/graphics/SurfaceTexture;

.field private h:Landroid/view/Surface;

.field private i:Lcom/google/android/exoplayer2/ac$d;

.field private j:Z

.field private k:Z

.field private l:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 80
    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .line 84
    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 85
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;->d:Landroid/os/Handler;

    const-string p2, "sensor"

    .line 89
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/SensorManager;

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;->a:Landroid/hardware/SensorManager;

    .line 91
    sget v0, Lcom/google/android/exoplayer2/util/af;->a:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    const/16 v0, 0xf

    .line 96
    invoke-virtual {p2, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const/16 v0, 0xb

    .line 99
    invoke-virtual {p2, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    .line 101
    :cond_1
    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;->b:Landroid/hardware/Sensor;

    .line 103
    new-instance p2, Lcom/google/android/exoplayer2/ui/spherical/c;

    invoke-direct {p2}, Lcom/google/android/exoplayer2/ui/spherical/c;-><init>()V

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;->f:Lcom/google/android/exoplayer2/ui/spherical/c;

    .line 104
    new-instance v0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView$a;

    invoke-direct {v0, p0, p2}, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView$a;-><init>(Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;Lcom/google/android/exoplayer2/ui/spherical/c;)V

    .line 106
    new-instance p2, Lcom/google/android/exoplayer2/ui/spherical/e;

    const/high16 v1, 0x41c80000    # 25.0f

    invoke-direct {p2, p1, v0, v1}, Lcom/google/android/exoplayer2/ui/spherical/e;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/ui/spherical/e$a;F)V

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;->e:Lcom/google/android/exoplayer2/ui/spherical/e;

    const-string v1, "window"

    .line 107
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 108
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    .line 109
    new-instance v1, Lcom/google/android/exoplayer2/ui/spherical/a;

    const/4 v2, 0x2

    new-array v3, v2, [Lcom/google/android/exoplayer2/ui/spherical/a$a;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-direct {v1, p1, v3}, Lcom/google/android/exoplayer2/ui/spherical/a;-><init>(Landroid/view/Display;[Lcom/google/android/exoplayer2/ui/spherical/a$a;)V

    iput-object v1, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;->c:Lcom/google/android/exoplayer2/ui/spherical/a;

    .line 110
    iput-boolean v4, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;->j:Z

    .line 112
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;->setEGLContextClientVersion(I)V

    .line 113
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 114
    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private a()V
    .locals 5

    .line 192
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;->j:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;->k:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 193
    :goto_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;->b:Landroid/hardware/Sensor;

    if-eqz v2, :cond_3

    iget-boolean v3, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;->l:Z

    if-ne v0, v3, :cond_1

    goto :goto_2

    :cond_1
    if-eqz v0, :cond_2

    .line 197
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;->a:Landroid/hardware/SensorManager;

    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;->c:Lcom/google/android/exoplayer2/ui/spherical/a;

    invoke-virtual {v3, v4, v2, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    goto :goto_1

    .line 200
    :cond_2
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;->a:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;->c:Lcom/google/android/exoplayer2/ui/spherical/a;

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 202
    :goto_1
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;->l:Z

    :cond_3
    :goto_2
    return-void
.end method

.method private synthetic a(Landroid/graphics/SurfaceTexture;)V
    .locals 3

    .line 209
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;->g:Landroid/graphics/SurfaceTexture;

    .line 210
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;->h:Landroid/view/Surface;

    .line 211
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;->g:Landroid/graphics/SurfaceTexture;

    .line 212
    new-instance v2, Landroid/view/Surface;

    invoke-direct {v2, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v2, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;->h:Landroid/view/Surface;

    .line 213
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;->i:Lcom/google/android/exoplayer2/ac$d;

    if-eqz p1, :cond_0

    .line 214
    invoke-interface {p1, v2}, Lcom/google/android/exoplayer2/ac$d;->b(Landroid/view/Surface;)V

    .line 216
    :cond_0
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;->a(Landroid/graphics/SurfaceTexture;Landroid/view/Surface;)V

    return-void
.end method

.method private static a(Landroid/graphics/SurfaceTexture;Landroid/view/Surface;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 223
    invoke-virtual {p0}, Landroid/graphics/SurfaceTexture;->release()V

    :cond_0
    if-eqz p1, :cond_1

    .line 226
    invoke-virtual {p1}, Landroid/view/Surface;->release()V

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;Landroid/graphics/SurfaceTexture;)V
    .locals 2

    .line 2207
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;->d:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/exoplayer2/ui/spherical/-$$Lambda$SphericalGLSurfaceView$5JQ5hiX0q5klIr57po54Sf-heBU;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer2/ui/spherical/-$$Lambda$SphericalGLSurfaceView$5JQ5hiX0q5klIr57po54Sf-heBU;-><init>(Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;Landroid/graphics/SurfaceTexture;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic b()V
    .locals 2

    .line 180
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;->h:Landroid/view/Surface;

    if-eqz v0, :cond_1

    .line 181
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;->i:Lcom/google/android/exoplayer2/ac$d;

    if-eqz v1, :cond_0

    .line 182
    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/ac$d;->a(Landroid/view/Surface;)V

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;->g:Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;->h:Landroid/view/Surface;

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;->a(Landroid/graphics/SurfaceTexture;Landroid/view/Surface;)V

    const/4 v0, 0x0

    .line 185
    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;->g:Landroid/graphics/SurfaceTexture;

    .line 186
    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;->h:Landroid/view/Surface;

    :cond_1
    return-void
.end method

.method public static synthetic lambda$5JQ5hiX0q5klIr57po54Sf-heBU(Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;Landroid/graphics/SurfaceTexture;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;->a(Landroid/graphics/SurfaceTexture;)V

    return-void
.end method

.method public static synthetic lambda$9Cl1VRarzs8yx0h_Uqj-kM-RWiU(Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;->b()V

    return-void
.end method


# virtual methods
.method protected final onDetachedFromWindow()V
    .locals 2

    .line 175
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onDetachedFromWindow()V

    .line 178
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;->d:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/exoplayer2/ui/spherical/-$$Lambda$SphericalGLSurfaceView$9Cl1VRarzs8yx0h_Uqj-kM-RWiU;

    invoke-direct {v1, p0}, Lcom/google/android/exoplayer2/ui/spherical/-$$Lambda$SphericalGLSurfaceView$9Cl1VRarzs8yx0h_Uqj-kM-RWiU;-><init>(Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onPause()V
    .locals 1

    const/4 v0, 0x0

    .line 167
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;->k:Z

    .line 168
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;->a()V

    .line 169
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onPause()V

    return-void
.end method

.method public final onResume()V
    .locals 1

    .line 160
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onResume()V

    const/4 v0, 0x1

    .line 161
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;->k:Z

    .line 162
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;->a()V

    return-void
.end method

.method public final setDefaultStereoMode(I)V
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;->f:Lcom/google/android/exoplayer2/ui/spherical/c;

    .line 1083
    iput p1, v0, Lcom/google/android/exoplayer2/ui/spherical/c;->k:I

    return-void
.end method

.method public final setSingleTapListener(Lcom/google/android/exoplayer2/ui/spherical/d;)V
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;->e:Lcom/google/android/exoplayer2/ui/spherical/e;

    .line 2082
    iput-object p1, v0, Lcom/google/android/exoplayer2/ui/spherical/e;->a:Lcom/google/android/exoplayer2/ui/spherical/d;

    return-void
.end method

.method public final setUseSensorRotation(Z)V
    .locals 0

    .line 154
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;->j:Z

    .line 155
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;->a()V

    return-void
.end method

.method public final setVideoComponent(Lcom/google/android/exoplayer2/ac$d;)V
    .locals 2

    .line 129
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;->i:Lcom/google/android/exoplayer2/ac$d;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_2

    .line 133
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;->h:Landroid/view/Surface;

    if-eqz v1, :cond_1

    .line 134
    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/ac$d;->a(Landroid/view/Surface;)V

    .line 136
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;->i:Lcom/google/android/exoplayer2/ac$d;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;->f:Lcom/google/android/exoplayer2/ui/spherical/c;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/ac$d;->b(Lcom/google/android/exoplayer2/video/i;)V

    .line 137
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;->i:Lcom/google/android/exoplayer2/ac$d;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;->f:Lcom/google/android/exoplayer2/ui/spherical/c;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/ac$d;->b(Lcom/google/android/exoplayer2/video/a/a;)V

    .line 139
    :cond_2
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;->i:Lcom/google/android/exoplayer2/ac$d;

    if-eqz p1, :cond_3

    .line 141
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;->f:Lcom/google/android/exoplayer2/ui/spherical/c;

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/ac$d;->a(Lcom/google/android/exoplayer2/video/i;)V

    .line 142
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;->i:Lcom/google/android/exoplayer2/ac$d;

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;->f:Lcom/google/android/exoplayer2/ui/spherical/c;

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/ac$d;->a(Lcom/google/android/exoplayer2/video/a/a;)V

    .line 143
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;->i:Lcom/google/android/exoplayer2/ac$d;

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;->h:Landroid/view/Surface;

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/ac$d;->b(Landroid/view/Surface;)V

    :cond_3
    return-void
.end method
