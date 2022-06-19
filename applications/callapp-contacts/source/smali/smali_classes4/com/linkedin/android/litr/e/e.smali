.class public final Lcom/linkedin/android/litr/e/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# instance fields
.field a:Landroid/graphics/SurfaceTexture;

.field public b:Landroid/view/Surface;

.field c:I

.field final d:Ljava/lang/Object;

.field e:Z


# direct methods
.method constructor <init>()V
    .locals 4

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/linkedin/android/litr/e/e;->d:Ljava/lang/Object;

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    .line 1144
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 1145
    aget v0, v1, v2

    const v1, 0x8d65

    .line 1146
    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const-string v2, "glBindTexture textureID"

    .line 1147
    invoke-static {v2}, Lcom/linkedin/android/litr/e/a;->a(Ljava/lang/String;)V

    const/16 v2, 0x2801

    const v3, 0x46180400    # 9729.0f

    .line 1148
    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v2, 0x2800

    .line 1149
    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v2, 0x2802

    const v3, 0x812f

    .line 1150
    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v2, 0x2803

    .line 1151
    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const-string v1, "glTexParameter"

    .line 1152
    invoke-static {v1}, Lcom/linkedin/android/litr/e/a;->a(Ljava/lang/String;)V

    .line 59
    iput v0, p0, Lcom/linkedin/android/litr/e/e;->c:I

    .line 60
    new-instance v0, Landroid/graphics/SurfaceTexture;

    iget v1, p0, Lcom/linkedin/android/litr/e/e;->c:I

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lcom/linkedin/android/litr/e/e;->a:Landroid/graphics/SurfaceTexture;

    .line 61
    new-instance v0, Landroid/view/Surface;

    iget-object v1, p0, Lcom/linkedin/android/litr/e/e;->a:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/linkedin/android/litr/e/e;->b:Landroid/view/Surface;

    .line 62
    iget-object v0, p0, Lcom/linkedin/android/litr/e/e;->a:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    return-void
.end method


# virtual methods
.method public final onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 2

    .line 67
    iget-object p1, p0, Lcom/linkedin/android/litr/e/e;->d:Ljava/lang/Object;

    monitor-enter p1

    .line 68
    :try_start_0
    iget-boolean v0, p0, Lcom/linkedin/android/litr/e/e;->e:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 71
    iput-boolean v0, p0, Lcom/linkedin/android/litr/e/e;->e:Z

    .line 72
    iget-object v0, p0, Lcom/linkedin/android/litr/e/e;->d:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 73
    monitor-exit p1

    return-void

    .line 69
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "frameAvailable already set, frame could be dropped"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    .line 73
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
