.class public final Lcom/google/android/gms/internal/ads/dsu;
.super Landroid/view/Surface;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x11
.end annotation


# static fields
.field private static a:Z

.field private static b:Z


# instance fields
.field private final c:Z

.field private final d:Lcom/google/android/gms/internal/ads/dsw;

.field private e:Z


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/dsw;Landroid/graphics/SurfaceTexture;Z)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p2}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 21
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dsu;->d:Lcom/google/android/gms/internal/ads/dsw;

    .line 22
    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/dsu;->c:Z

    .line 23
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/dsw;Landroid/graphics/SurfaceTexture;ZLcom/google/android/gms/internal/ads/dst;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/dsu;-><init>(Lcom/google/android/gms/internal/ads/dsw;Landroid/graphics/SurfaceTexture;Z)V

    return-void
.end method

.method public static a(Landroid/content/Context;Z)Lcom/google/android/gms/internal/ads/dsu;
    .locals 2

    .prologue
    .line 15
    sget v0, Lcom/google/android/gms/internal/ads/dsn;->a:I

    const/16 v1, 0x11

    if-ge v0, v1, :cond_0

    .line 16
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Unsupported prior to API level 17"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 17
    :cond_0
    if-eqz p1, :cond_1

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/dsu;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/drz;->b(Z)V

    .line 18
    new-instance v0, Lcom/google/android/gms/internal/ads/dsw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/dsw;-><init>()V

    .line 19
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/dsw;->a(Z)Lcom/google/android/gms/internal/ads/dsu;

    move-result-object v0

    return-object v0

    .line 17
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1
    const-class v3, Lcom/google/android/gms/internal/ads/dsu;

    monitor-enter v3

    :try_start_0
    sget-boolean v2, Lcom/google/android/gms/internal/ads/dsu;->b:Z

    if-nez v2, :cond_2

    .line 2
    sget v2, Lcom/google/android/gms/internal/ads/dsn;->a:I

    const/16 v4, 0x11

    if-lt v2, v4, :cond_1

    .line 3
    const/4 v2, 0x0

    invoke-static {v2}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v2

    .line 4
    const/16 v4, 0x3055

    invoke-static {v2, v4}, Landroid/opengl/EGL14;->eglQueryString(Landroid/opengl/EGLDisplay;I)Ljava/lang/String;

    move-result-object v2

    .line 5
    if-eqz v2, :cond_4

    const-string/jumbo v4, "EGL_EXT_protected_content"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 7
    sget v2, Lcom/google/android/gms/internal/ads/dsn;->a:I

    const/16 v4, 0x18

    if-ne v2, v4, :cond_3

    sget-object v2, Lcom/google/android/gms/internal/ads/dsn;->d:Ljava/lang/String;

    const-string/jumbo v4, "SM-G950"

    .line 8
    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/google/android/gms/internal/ads/dsn;->d:Ljava/lang/String;

    const-string/jumbo v4, "SM-G955"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 9
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 10
    const-string/jumbo v4, "android.hardware.vr.high_performance"

    invoke-virtual {v2, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    .line 11
    if-nez v2, :cond_3

    move v2, v0

    .line 12
    :goto_0
    if-nez v2, :cond_4

    :goto_1
    sput-boolean v0, Lcom/google/android/gms/internal/ads/dsu;->a:Z

    .line 13
    :cond_1
    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/android/gms/internal/ads/dsu;->b:Z

    .line 14
    :cond_2
    sget-boolean v0, Lcom/google/android/gms/internal/ads/dsu;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    return v0

    :cond_3
    move v2, v1

    .line 11
    goto :goto_0

    :cond_4
    move v0, v1

    .line 12
    goto :goto_1

    .line 1
    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0
.end method


# virtual methods
.method public final release()V
    .locals 2

    .prologue
    .line 24
    invoke-super {p0}, Landroid/view/Surface;->release()V

    .line 25
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dsu;->d:Lcom/google/android/gms/internal/ads/dsw;

    monitor-enter v1

    .line 26
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/dsu;->e:Z

    if-nez v0, :cond_0

    .line 27
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dsu;->d:Lcom/google/android/gms/internal/ads/dsw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dsw;->a()V

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/dsu;->e:Z

    .line 29
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
