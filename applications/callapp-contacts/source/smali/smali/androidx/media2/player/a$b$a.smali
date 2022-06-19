.class final Landroidx/media2/player/a$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/player/a$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Landroidx/media2/player/a$b;

.field private b:F

.field private c:F


# direct methods
.method constructor <init>(Landroidx/media2/player/a$b;)V
    .locals 0

    .line 380
    iput-object p1, p0, Landroidx/media2/player/a$b$a;->a:Landroidx/media2/player/a$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAudioFocusChange(I)V
    .locals 3

    const/4 v0, -0x3

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v0, :cond_6

    const/4 v0, -0x2

    if-eq p1, v0, :cond_5

    const/4 v0, -0x1

    if-eq p1, v0, :cond_4

    if-eq p1, v2, :cond_0

    return-void

    .line 392
    :cond_0
    iget-object p1, p0, Landroidx/media2/player/a$b$a;->a:Landroidx/media2/player/a$b;

    iget-object p1, p1, Landroidx/media2/player/a$b;->b:Landroidx/media2/player/MediaPlayer;

    invoke-virtual {p1}, Landroidx/media2/player/MediaPlayer;->d()I

    move-result p1

    if-ne p1, v2, :cond_2

    .line 394
    iget-object p1, p0, Landroidx/media2/player/a$b$a;->a:Landroidx/media2/player/a$b;

    iget-object p1, p1, Landroidx/media2/player/a$b;->a:Ljava/lang/Object;

    monitor-enter p1

    .line 395
    :try_start_0
    iget-object v0, p0, Landroidx/media2/player/a$b$a;->a:Landroidx/media2/player/a$b;

    iget-boolean v0, v0, Landroidx/media2/player/a$b;->d:Z

    if-nez v0, :cond_1

    .line 396
    monitor-exit p1

    return-void

    .line 398
    :cond_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 399
    iget-object p1, p0, Landroidx/media2/player/a$b$a;->a:Landroidx/media2/player/a$b;

    iget-object p1, p1, Landroidx/media2/player/a$b;->b:Landroidx/media2/player/MediaPlayer;

    invoke-virtual {p1}, Landroidx/media2/player/MediaPlayer;->a()Lcom/google/common/util/concurrent/a;

    return-void

    :catchall_0
    move-exception v0

    .line 398
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 402
    :cond_2
    iget-object p1, p0, Landroidx/media2/player/a$b$a;->a:Landroidx/media2/player/a$b;

    iget-object p1, p1, Landroidx/media2/player/a$b;->b:Landroidx/media2/player/MediaPlayer;

    invoke-virtual {p1}, Landroidx/media2/player/MediaPlayer;->x()F

    move-result p1

    .line 404
    iget-object v0, p0, Landroidx/media2/player/a$b$a;->a:Landroidx/media2/player/a$b;

    iget-object v0, v0, Landroidx/media2/player/a$b;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 405
    :try_start_2
    iget v1, p0, Landroidx/media2/player/a$b$a;->c:F

    cmpl-float p1, p1, v1

    if-eqz p1, :cond_3

    .line 407
    monitor-exit v0

    return-void

    .line 409
    :cond_3
    iget p1, p0, Landroidx/media2/player/a$b$a;->b:F

    .line 410
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 411
    iget-object v0, p0, Landroidx/media2/player/a$b$a;->a:Landroidx/media2/player/a$b;

    iget-object v0, v0, Landroidx/media2/player/a$b;->b:Landroidx/media2/player/MediaPlayer;

    invoke-virtual {v0, p1}, Landroidx/media2/player/MediaPlayer;->b(F)Lcom/google/common/util/concurrent/a;

    return-void

    :catchall_1
    move-exception p1

    .line 410
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    .line 417
    :cond_4
    iget-object p1, p0, Landroidx/media2/player/a$b$a;->a:Landroidx/media2/player/a$b;

    iget-object p1, p1, Landroidx/media2/player/a$b;->b:Landroidx/media2/player/MediaPlayer;

    invoke-virtual {p1}, Landroidx/media2/player/MediaPlayer;->b()Lcom/google/common/util/concurrent/a;

    .line 419
    iget-object p1, p0, Landroidx/media2/player/a$b$a;->a:Landroidx/media2/player/a$b;

    iget-object p1, p1, Landroidx/media2/player/a$b;->a:Ljava/lang/Object;

    monitor-enter p1

    .line 420
    :try_start_4
    iget-object v0, p0, Landroidx/media2/player/a$b$a;->a:Landroidx/media2/player/a$b;

    iput-boolean v1, v0, Landroidx/media2/player/a$b;->d:Z

    .line 421
    monitor-exit p1

    return-void

    :catchall_2
    move-exception v0

    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0

    .line 447
    :cond_5
    iget-object p1, p0, Landroidx/media2/player/a$b$a;->a:Landroidx/media2/player/a$b;

    iget-object p1, p1, Landroidx/media2/player/a$b;->b:Landroidx/media2/player/MediaPlayer;

    invoke-virtual {p1}, Landroidx/media2/player/MediaPlayer;->b()Lcom/google/common/util/concurrent/a;

    .line 449
    iget-object p1, p0, Landroidx/media2/player/a$b$a;->a:Landroidx/media2/player/a$b;

    iget-object p1, p1, Landroidx/media2/player/a$b;->a:Ljava/lang/Object;

    monitor-enter p1

    .line 450
    :try_start_5
    iget-object v0, p0, Landroidx/media2/player/a$b$a;->a:Landroidx/media2/player/a$b;

    iput-boolean v2, v0, Landroidx/media2/player/a$b;->d:Z

    .line 451
    monitor-exit p1

    return-void

    :catchall_3
    move-exception v0

    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v0

    .line 425
    :cond_6
    iget-object p1, p0, Landroidx/media2/player/a$b$a;->a:Landroidx/media2/player/a$b;

    iget-object p1, p1, Landroidx/media2/player/a$b;->a:Ljava/lang/Object;

    monitor-enter p1

    .line 426
    :try_start_6
    iget-object v0, p0, Landroidx/media2/player/a$b$a;->a:Landroidx/media2/player/a$b;

    iget-object v0, v0, Landroidx/media2/player/a$b;->c:Landroidx/media/AudioAttributesCompat;

    if-nez v0, :cond_7

    .line 428
    monitor-exit p1

    return-void

    .line 430
    :cond_7
    iget-object v0, p0, Landroidx/media2/player/a$b$a;->a:Landroidx/media2/player/a$b;

    iget-object v0, v0, Landroidx/media2/player/a$b;->c:Landroidx/media/AudioAttributesCompat;

    invoke-virtual {v0}, Landroidx/media/AudioAttributesCompat;->c()I

    move-result v0

    if-ne v0, v2, :cond_8

    const/4 v1, 0x1

    .line 432
    :cond_8
    monitor-exit p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    if-eqz v1, :cond_9

    .line 434
    iget-object p1, p0, Landroidx/media2/player/a$b$a;->a:Landroidx/media2/player/a$b;

    iget-object p1, p1, Landroidx/media2/player/a$b;->b:Landroidx/media2/player/MediaPlayer;

    invoke-virtual {p1}, Landroidx/media2/player/MediaPlayer;->b()Lcom/google/common/util/concurrent/a;

    return-void

    .line 437
    :cond_9
    iget-object p1, p0, Landroidx/media2/player/a$b$a;->a:Landroidx/media2/player/a$b;

    iget-object p1, p1, Landroidx/media2/player/a$b;->b:Landroidx/media2/player/MediaPlayer;

    invoke-virtual {p1}, Landroidx/media2/player/MediaPlayer;->x()F

    move-result p1

    const v0, 0x3e4ccccd    # 0.2f

    mul-float v0, v0, p1

    .line 439
    iget-object v1, p0, Landroidx/media2/player/a$b$a;->a:Landroidx/media2/player/a$b;

    iget-object v1, v1, Landroidx/media2/player/a$b;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 440
    :try_start_7
    iput p1, p0, Landroidx/media2/player/a$b$a;->b:F

    .line 441
    iput v0, p0, Landroidx/media2/player/a$b$a;->c:F

    .line 442
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 443
    iget-object p1, p0, Landroidx/media2/player/a$b$a;->a:Landroidx/media2/player/a$b;

    iget-object p1, p1, Landroidx/media2/player/a$b;->b:Landroidx/media2/player/MediaPlayer;

    invoke-virtual {p1, v0}, Landroidx/media2/player/MediaPlayer;->b(F)Lcom/google/common/util/concurrent/a;

    return-void

    :catchall_4
    move-exception p1

    .line 442
    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    throw p1

    :catchall_5
    move-exception v0

    .line 432
    :try_start_9
    monitor-exit p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    throw v0
.end method
