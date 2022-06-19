.class public final Lcom/google/android/exoplayer2/video/DummySurface;
.super Landroid/view/Surface;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/video/DummySurface$a;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DummySurface"

.field private static secureMode:I

.field private static secureModeInitialized:Z


# instance fields
.field public final secure:Z

.field private final thread:Lcom/google/android/exoplayer2/video/DummySurface$a;

.field private threadReleased:Z


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/video/DummySurface$a;Landroid/graphics/SurfaceTexture;Z)V
    .locals 0

    .line 88
    invoke-direct {p0, p2}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 89
    iput-object p1, p0, Lcom/google/android/exoplayer2/video/DummySurface;->thread:Lcom/google/android/exoplayer2/video/DummySurface$a;

    .line 90
    iput-boolean p3, p0, Lcom/google/android/exoplayer2/video/DummySurface;->secure:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/video/DummySurface$a;Landroid/graphics/SurfaceTexture;ZLcom/google/android/exoplayer2/video/DummySurface$1;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/video/DummySurface;-><init>(Lcom/google/android/exoplayer2/video/DummySurface$a;Landroid/graphics/SurfaceTexture;Z)V

    return-void
.end method

.method private static getSecureMode(Landroid/content/Context;)I
    .locals 6

    .line 1211
    sget v0, Lcom/google/android/exoplayer2/util/af;->a:I

    const/16 v1, 0x3055

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0x18

    if-lt v0, v4, :cond_2

    .line 1214
    sget v0, Lcom/google/android/exoplayer2/util/af;->a:I

    const/16 v4, 0x1a

    if-ge v0, v4, :cond_0

    sget-object v0, Lcom/google/android/exoplayer2/util/af;->c:Ljava/lang/String;

    const-string v5, "samsung"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/google/android/exoplayer2/util/af;->d:Ljava/lang/String;

    const-string v5, "XT1650"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1221
    :cond_0
    sget v0, Lcom/google/android/exoplayer2/util/af;->a:I

    if-ge v0, v4, :cond_1

    .line 1223
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android.hardware.vr.high_performance"

    .line 1224
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 1229
    :cond_1
    invoke-static {v3}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object p0

    .line 1230
    invoke-static {p0, v1}, Landroid/opengl/EGL14;->eglQueryString(Landroid/opengl/EGLDisplay;I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    const-string v0, "EGL_EXT_protected_content"

    .line 1231
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x0

    :goto_1
    if-eqz p0, :cond_5

    .line 1238
    sget p0, Lcom/google/android/exoplayer2/util/af;->a:I

    const/16 v0, 0x11

    if-lt p0, v0, :cond_3

    .line 1241
    invoke-static {v3}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object p0

    .line 1242
    invoke-static {p0, v1}, Landroid/opengl/EGL14;->eglQueryString(Landroid/opengl/EGLDisplay;I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    const-string v0, "EGL_KHR_surfaceless_context"

    .line 1243
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 v3, 0x1

    :cond_3
    if-eqz v3, :cond_4

    return v2

    :cond_4
    const/4 p0, 0x2

    return p0

    :cond_5
    return v3
.end method

.method public static declared-synchronized isSecureSupported(Landroid/content/Context;)Z
    .locals 3

    const-class v0, Lcom/google/android/exoplayer2/video/DummySurface;

    monitor-enter v0

    .line 62
    :try_start_0
    sget-boolean v1, Lcom/google/android/exoplayer2/video/DummySurface;->secureModeInitialized:Z

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 63
    invoke-static {p0}, Lcom/google/android/exoplayer2/video/DummySurface;->getSecureMode(Landroid/content/Context;)I

    move-result p0

    sput p0, Lcom/google/android/exoplayer2/video/DummySurface;->secureMode:I

    .line 64
    sput-boolean v2, Lcom/google/android/exoplayer2/video/DummySurface;->secureModeInitialized:Z

    .line 66
    :cond_0
    sget p0, Lcom/google/android/exoplayer2/video/DummySurface;->secureMode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_1

    monitor-exit v0

    return v2

    :cond_1
    const/4 p0, 0x0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static newInstanceV17(Landroid/content/Context;Z)Lcom/google/android/exoplayer2/video/DummySurface;
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 82
    invoke-static {p0}, Lcom/google/android/exoplayer2/video/DummySurface;->isSecureSupported(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 83
    new-instance p0, Lcom/google/android/exoplayer2/video/DummySurface$a;

    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/DummySurface$a;-><init>()V

    if-eqz p1, :cond_2

    .line 84
    sget v0, Lcom/google/android/exoplayer2/video/DummySurface;->secureMode:I

    :cond_2
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/video/DummySurface$a;->a(I)Lcom/google/android/exoplayer2/video/DummySurface;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final release()V
    .locals 3

    .line 95
    invoke-super {p0}, Landroid/view/Surface;->release()V

    .line 100
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/DummySurface;->thread:Lcom/google/android/exoplayer2/video/DummySurface$a;

    monitor-enter v0

    .line 101
    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/video/DummySurface;->threadReleased:Z

    if-nez v1, :cond_0

    .line 102
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/DummySurface;->thread:Lcom/google/android/exoplayer2/video/DummySurface$a;

    .line 1169
    iget-object v2, v1, Lcom/google/android/exoplayer2/video/DummySurface$a;->a:Landroid/os/Handler;

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1170
    iget-object v1, v1, Lcom/google/android/exoplayer2/video/DummySurface$a;->a:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const/4 v1, 0x1

    .line 103
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/video/DummySurface;->threadReleased:Z

    .line 105
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
