.class final Landroidx/media2/player/a$b$b;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/player/a$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Landroidx/media2/player/a$b;


# direct methods
.method constructor <init>(Landroidx/media2/player/a$b;)V
    .locals 0

    .line 336
    iput-object p1, p0, Landroidx/media2/player/a$b$b;->a:Landroidx/media2/player/a$b;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string p1, "android.media.AUDIO_BECOMING_NOISY"

    .line 344
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 348
    :cond_0
    iget-object p1, p0, Landroidx/media2/player/a$b$b;->a:Landroidx/media2/player/a$b;

    iget-object p1, p1, Landroidx/media2/player/a$b;->a:Ljava/lang/Object;

    monitor-enter p1

    .line 350
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Received noisy intent, intent="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", registered="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Landroidx/media2/player/a$b$b;->a:Landroidx/media2/player/a$b;

    iget-boolean p2, p2, Landroidx/media2/player/a$b;->e:Z

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", attr="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Landroidx/media2/player/a$b$b;->a:Landroidx/media2/player/a$b;

    iget-object p2, p2, Landroidx/media2/player/a$b;->c:Landroidx/media/AudioAttributesCompat;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 353
    iget-object p2, p0, Landroidx/media2/player/a$b$b;->a:Landroidx/media2/player/a$b;

    iget-boolean p2, p2, Landroidx/media2/player/a$b;->e:Z

    if-eqz p2, :cond_4

    iget-object p2, p0, Landroidx/media2/player/a$b$b;->a:Landroidx/media2/player/a$b;

    iget-object p2, p2, Landroidx/media2/player/a$b;->c:Landroidx/media/AudioAttributesCompat;

    if-nez p2, :cond_1

    goto :goto_1

    .line 356
    :cond_1
    iget-object p2, p0, Landroidx/media2/player/a$b$b;->a:Landroidx/media2/player/a$b;

    iget-object p2, p2, Landroidx/media2/player/a$b;->c:Landroidx/media/AudioAttributesCompat;

    invoke-virtual {p2}, Landroidx/media/AudioAttributesCompat;->d()I

    move-result p2

    .line 357
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    if-eq p2, p1, :cond_3

    const/16 p1, 0xe

    if-eq p2, p1, :cond_2

    goto :goto_0

    .line 367
    :cond_2
    iget-object p1, p0, Landroidx/media2/player/a$b$b;->a:Landroidx/media2/player/a$b;

    iget-object p1, p1, Landroidx/media2/player/a$b;->b:Landroidx/media2/player/MediaPlayer;

    iget-object p2, p0, Landroidx/media2/player/a$b$b;->a:Landroidx/media2/player/a$b;

    iget-object p2, p2, Landroidx/media2/player/a$b;->b:Landroidx/media2/player/MediaPlayer;

    invoke-virtual {p2}, Landroidx/media2/player/MediaPlayer;->x()F

    move-result p2

    const v0, 0x3e4ccccd    # 0.2f

    mul-float p2, p2, v0

    invoke-virtual {p1, p2}, Landroidx/media2/player/MediaPlayer;->b(F)Lcom/google/common/util/concurrent/a;

    :goto_0
    return-void

    .line 362
    :cond_3
    iget-object p1, p0, Landroidx/media2/player/a$b$b;->a:Landroidx/media2/player/a$b;

    iget-object p1, p1, Landroidx/media2/player/a$b;->b:Landroidx/media2/player/MediaPlayer;

    invoke-virtual {p1}, Landroidx/media2/player/MediaPlayer;->b()Lcom/google/common/util/concurrent/a;

    return-void

    .line 354
    :cond_4
    :goto_1
    :try_start_1
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    .line 357
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2
.end method
