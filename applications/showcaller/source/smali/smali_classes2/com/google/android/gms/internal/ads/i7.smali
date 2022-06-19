.class final Lcom/google/android/gms/internal/ads/i7;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/os/Handler;

.field private final c:Lcom/google/android/gms/internal/ads/e7;

.field private final d:Landroid/media/AudioManager;

.field private e:Lcom/google/android/gms/internal/ads/h7;

.field private f:I

.field private g:I

.field private h:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/google/android/gms/internal/ads/e7;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/i7;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/i7;->b:Landroid/os/Handler;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/i7;->c:Lcom/google/android/gms/internal/ads/e7;

    const-string p2, "audio"

    .line 2
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/media/AudioManager;

    .line 3
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/y8;->e(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/i7;->d:Landroid/media/AudioManager;

    const/4 p3, 0x3

    iput p3, p0, Lcom/google/android/gms/internal/ads/i7;->f:I

    .line 4
    invoke-static {p2, p3}, Lcom/google/android/gms/internal/ads/i7;->h(Landroid/media/AudioManager;I)I

    move-result p3

    iput p3, p0, Lcom/google/android/gms/internal/ads/i7;->g:I

    iget p3, p0, Lcom/google/android/gms/internal/ads/i7;->f:I

    .line 5
    invoke-static {p2, p3}, Lcom/google/android/gms/internal/ads/i7;->i(Landroid/media/AudioManager;I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/i7;->h:Z

    new-instance p2, Lcom/google/android/gms/internal/ads/h7;

    const/4 p3, 0x0

    .line 6
    invoke-direct {p2, p0, p3}, Lcom/google/android/gms/internal/ads/h7;-><init>(Lcom/google/android/gms/internal/ads/i7;Lcom/google/android/gms/internal/ads/f7;)V

    new-instance p3, Landroid/content/IntentFilter;

    const-string v0, "android.media.VOLUME_CHANGED_ACTION"

    .line 7
    invoke-direct {p3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 8
    :try_start_0
    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/i7;->e:Lcom/google/android/gms/internal/ads/h7;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "StreamVolumeManager"

    const-string p3, "Error registering stream volume receiver"

    .line 9
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/s9;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/i7;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/i7;->b:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic f(Lcom/google/android/gms/internal/ads/i7;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/i7;->g()V

    return-void
.end method

.method private final g()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/i7;->d:Landroid/media/AudioManager;

    iget v1, p0, Lcom/google/android/gms/internal/ads/i7;->f:I

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/i7;->h(Landroid/media/AudioManager;I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/i7;->d:Landroid/media/AudioManager;

    iget v2, p0, Lcom/google/android/gms/internal/ads/i7;->f:I

    .line 2
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/i7;->i(Landroid/media/AudioManager;I)Z

    move-result v1

    iget v2, p0, Lcom/google/android/gms/internal/ads/i7;->g:I

    if-ne v2, v0, :cond_0

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/i7;->h:Z

    if-eq v2, v1, :cond_1

    :cond_0
    iput v0, p0, Lcom/google/android/gms/internal/ads/i7;->g:I

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/i7;->h:Z

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/i7;->c:Lcom/google/android/gms/internal/ads/e7;

    check-cast v2, Lcom/google/android/gms/internal/ads/a7;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/a7;->d:Lcom/google/android/gms/internal/ads/d7;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/d7;->U(Lcom/google/android/gms/internal/ads/d7;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v2

    .line 3
    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/j6;

    .line 4
    invoke-interface {v3, v0, v1}, Lcom/google/android/gms/internal/ads/j6;->C(IZ)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static h(Landroid/media/AudioManager;I)I
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x3c

    .line 2
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Could not retrieve stream volume for stream type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "StreamVolumeManager"

    invoke-static {v2, v1, v0}, Lcom/google/android/gms/internal/ads/s9;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3
    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result p0

    return p0
.end method

.method private static i(Landroid/media/AudioManager;I)Z
    .locals 2

    .line 1
    sget v0, Lcom/google/android/gms/internal/ads/wa;->a:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result p0

    return p0

    .line 3
    :cond_0
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/i7;->h(Landroid/media/AudioManager;I)I

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final b(I)V
    .locals 2

    .line 1
    iget p1, p0, Lcom/google/android/gms/internal/ads/i7;->f:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput v0, p0, Lcom/google/android/gms/internal/ads/i7;->f:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/i7;->g()V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/i7;->c:Lcom/google/android/gms/internal/ads/e7;

    check-cast p1, Lcom/google/android/gms/internal/ads/a7;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/a7;->d:Lcom/google/android/gms/internal/ads/d7;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/d7;->W(Lcom/google/android/gms/internal/ads/d7;)Lcom/google/android/gms/internal/ads/i7;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/d7;->F(Lcom/google/android/gms/internal/ads/i7;)Lcom/google/android/gms/internal/ads/e3;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/a7;->d:Lcom/google/android/gms/internal/ads/d7;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/d7;->e0(Lcom/google/android/gms/internal/ads/d7;)Lcom/google/android/gms/internal/ads/e3;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/e3;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/a7;->d:Lcom/google/android/gms/internal/ads/d7;

    .line 4
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/d7;->f0(Lcom/google/android/gms/internal/ads/d7;Lcom/google/android/gms/internal/ads/e3;)Lcom/google/android/gms/internal/ads/e3;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/a7;->d:Lcom/google/android/gms/internal/ads/d7;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/d7;->U(Lcom/google/android/gms/internal/ads/d7;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/j6;

    .line 6
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/j6;->z(Lcom/google/android/gms/internal/ads/e3;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final c()I
    .locals 2

    .line 1
    sget v0, Lcom/google/android/gms/internal/ads/wa;->a:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/i7;->d:Landroid/media/AudioManager;

    iget v1, p0, Lcom/google/android/gms/internal/ads/i7;->f:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMinVolume(I)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final d()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/i7;->d:Landroid/media/AudioManager;

    iget v1, p0, Lcom/google/android/gms/internal/ads/i7;->f:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    return v0
.end method

.method public final e()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/i7;->e:Lcom/google/android/gms/internal/ads/h7;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/i7;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "StreamVolumeManager"

    const-string v2, "Error unregistering stream volume receiver"

    .line 2
    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/ads/s9;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/i7;->e:Lcom/google/android/gms/internal/ads/h7;

    :cond_0
    return-void
.end method
