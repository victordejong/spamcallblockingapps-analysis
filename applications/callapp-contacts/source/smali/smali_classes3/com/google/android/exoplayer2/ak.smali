.class public final Lcom/google/android/exoplayer2/ak;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/ak$b;,
        Lcom/google/android/exoplayer2/ak$a;
    }
.end annotation


# instance fields
.field final a:Landroid/content/Context;

.field final b:Landroid/os/Handler;

.field c:Lcom/google/android/exoplayer2/ak$b;

.field private final d:Lcom/google/android/exoplayer2/ak$a;

.field private final e:Landroid/media/AudioManager;

.field private f:I

.field private g:I

.field private h:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/google/android/exoplayer2/ak$a;)V
    .locals 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/ak;->a:Landroid/content/Context;

    .line 64
    iput-object p2, p0, Lcom/google/android/exoplayer2/ak;->b:Landroid/os/Handler;

    .line 65
    iput-object p3, p0, Lcom/google/android/exoplayer2/ak;->d:Lcom/google/android/exoplayer2/ak$a;

    const-string p2, "audio"

    .line 68
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/media/AudioManager;

    .line 67
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/media/AudioManager;

    iput-object p2, p0, Lcom/google/android/exoplayer2/ak;->e:Landroid/media/AudioManager;

    const/4 p3, 0x3

    .line 70
    iput p3, p0, Lcom/google/android/exoplayer2/ak;->f:I

    .line 71
    invoke-static {p2, p3}, Lcom/google/android/exoplayer2/ak;->a(Landroid/media/AudioManager;I)I

    move-result p3

    iput p3, p0, Lcom/google/android/exoplayer2/ak;->g:I

    .line 72
    iget p3, p0, Lcom/google/android/exoplayer2/ak;->f:I

    invoke-static {p2, p3}, Lcom/google/android/exoplayer2/ak;->b(Landroid/media/AudioManager;I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/google/android/exoplayer2/ak;->h:Z

    .line 74
    new-instance p2, Lcom/google/android/exoplayer2/ak$b;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/google/android/exoplayer2/ak$b;-><init>(Lcom/google/android/exoplayer2/ak;Lcom/google/android/exoplayer2/ak$1;)V

    .line 75
    new-instance p3, Landroid/content/IntentFilter;

    const-string v0, "android.media.VOLUME_CHANGED_ACTION"

    invoke-direct {p3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 77
    :try_start_0
    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 78
    iput-object p2, p0, Lcom/google/android/exoplayer2/ak;->c:Lcom/google/android/exoplayer2/ak$b;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "StreamVolumeManager"

    const-string p3, "Error registering stream volume receiver"

    .line 80
    invoke-static {p2, p3, p1}, Lcom/google/android/exoplayer2/util/n;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static a(Landroid/media/AudioManager;I)I
    .locals 3

    .line 194
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception v0

    .line 196
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Could not retrieve stream volume for stream type "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "StreamVolumeManager"

    invoke-static {v2, v1, v0}, Lcom/google/android/exoplayer2/util/n;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 197
    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result p0

    return p0
.end method

.method private static b(Landroid/media/AudioManager;I)Z
    .locals 2

    .line 203
    sget v0, Lcom/google/android/exoplayer2/util/af;->a:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 204
    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result p0

    return p0

    .line 206
    :cond_0
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/ak;->a(Landroid/media/AudioManager;I)I

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a()I
    .locals 2

    .line 100
    sget v0, Lcom/google/android/exoplayer2/util/af;->a:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/ak;->e:Landroid/media/AudioManager;

    iget v1, p0, Lcom/google/android/exoplayer2/ak;->f:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMinVolume(I)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final a(I)V
    .locals 1

    .line 86
    iget v0, p0, Lcom/google/android/exoplayer2/ak;->f:I

    if-ne v0, p1, :cond_0

    return-void

    .line 89
    :cond_0
    iput p1, p0, Lcom/google/android/exoplayer2/ak;->f:I

    .line 91
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ak;->c()V

    .line 92
    iget-object p1, p0, Lcom/google/android/exoplayer2/ak;->d:Lcom/google/android/exoplayer2/ak$a;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/ak$a;->d()V

    return-void
.end method

.method public final b()I
    .locals 2

    .line 108
    iget-object v0, p0, Lcom/google/android/exoplayer2/ak;->e:Landroid/media/AudioManager;

    iget v1, p0, Lcom/google/android/exoplayer2/ak;->f:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    return v0
.end method

.method final c()V
    .locals 3

    .line 181
    iget-object v0, p0, Lcom/google/android/exoplayer2/ak;->e:Landroid/media/AudioManager;

    iget v1, p0, Lcom/google/android/exoplayer2/ak;->f:I

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ak;->a(Landroid/media/AudioManager;I)I

    move-result v0

    .line 182
    iget-object v1, p0, Lcom/google/android/exoplayer2/ak;->e:Landroid/media/AudioManager;

    iget v2, p0, Lcom/google/android/exoplayer2/ak;->f:I

    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/ak;->b(Landroid/media/AudioManager;I)Z

    move-result v1

    .line 183
    iget v2, p0, Lcom/google/android/exoplayer2/ak;->g:I

    if-ne v2, v0, :cond_0

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/ak;->h:Z

    if-eq v2, v1, :cond_1

    .line 184
    :cond_0
    iput v0, p0, Lcom/google/android/exoplayer2/ak;->g:I

    .line 185
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/ak;->h:Z

    .line 186
    iget-object v0, p0, Lcom/google/android/exoplayer2/ak;->d:Lcom/google/android/exoplayer2/ak$a;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ak$a;->e()V

    :cond_1
    return-void
.end method
