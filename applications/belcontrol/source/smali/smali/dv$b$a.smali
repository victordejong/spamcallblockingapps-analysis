.class public Ldv$b$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldv$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:F

.field public b:F

.field public final synthetic c:Ldv$b;


# direct methods
.method public constructor <init>(Ldv$b;)V
    .locals 0

    iput-object p1, p0, Ldv$b$a;->c:Ldv$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
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

    goto/16 :goto_0

    :cond_0
    iget-object p1, p0, Ldv$b$a;->c:Ldv$b;

    iget-object p1, p1, Ldv$b;->f:Lev;

    invoke-virtual {p1}, Lev;->y()I

    move-result p1

    if-ne p1, v2, :cond_2

    iget-object p1, p0, Ldv$b$a;->c:Ldv$b;

    iget-object p1, p1, Ldv$b;->d:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Ldv$b$a;->c:Ldv$b;

    iget-boolean v1, v0, Ldv$b;->j:Z

    if-nez v1, :cond_1

    monitor-exit p1

    goto/16 :goto_0

    :cond_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, v0, Ldv$b;->f:Lev;

    invoke-virtual {p1}, Lev;->F()Lcom/google/common/util/concurrent/ListenableFuture;

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_2
    iget-object p1, p0, Ldv$b$a;->c:Ldv$b;

    iget-object p1, p1, Ldv$b;->f:Lev;

    invoke-virtual {p1}, Lev;->d0()F

    move-result p1

    iget-object v0, p0, Ldv$b$a;->c:Ldv$b;

    iget-object v0, v0, Ldv$b;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_2
    iget v1, p0, Ldv$b$a;->b:F

    cmpl-float p1, p1, v1

    if-eqz p1, :cond_3

    monitor-exit v0

    goto/16 :goto_0

    :cond_3
    iget p1, p0, Ldv$b$a;->a:F

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object v0, p0, Ldv$b$a;->c:Ldv$b;

    iget-object v0, v0, Ldv$b;->f:Lev;

    invoke-virtual {v0, p1}, Lev;->w0(F)Lcom/google/common/util/concurrent/ListenableFuture;

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    :cond_4
    iget-object p1, p0, Ldv$b$a;->c:Ldv$b;

    iget-object p1, p1, Ldv$b;->f:Lev;

    invoke-virtual {p1}, Lev;->E()Lcom/google/common/util/concurrent/ListenableFuture;

    iget-object p1, p0, Ldv$b$a;->c:Ldv$b;

    iget-object p1, p1, Ldv$b;->d:Ljava/lang/Object;

    monitor-enter p1

    :try_start_4
    iget-object v0, p0, Ldv$b$a;->c:Ldv$b;

    iput-boolean v1, v0, Ldv$b;->j:Z

    monitor-exit p1

    goto :goto_0

    :catchall_2
    move-exception v0

    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0

    :cond_5
    iget-object p1, p0, Ldv$b$a;->c:Ldv$b;

    iget-object p1, p1, Ldv$b;->f:Lev;

    invoke-virtual {p1}, Lev;->E()Lcom/google/common/util/concurrent/ListenableFuture;

    iget-object p1, p0, Ldv$b$a;->c:Ldv$b;

    iget-object p1, p1, Ldv$b;->d:Ljava/lang/Object;

    monitor-enter p1

    :try_start_5
    iget-object v0, p0, Ldv$b$a;->c:Ldv$b;

    iput-boolean v2, v0, Ldv$b;->j:Z

    monitor-exit p1

    goto :goto_0

    :catchall_3
    move-exception v0

    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v0

    :cond_6
    iget-object p1, p0, Ldv$b$a;->c:Ldv$b;

    iget-object p1, p1, Ldv$b;->d:Ljava/lang/Object;

    monitor-enter p1

    :try_start_6
    iget-object v0, p0, Ldv$b$a;->c:Ldv$b;

    iget-object v0, v0, Ldv$b;->h:Landroidx/media/AudioAttributesCompat;

    if-nez v0, :cond_7

    monitor-exit p1

    goto :goto_0

    :cond_7
    invoke-virtual {v0}, Landroidx/media/AudioAttributesCompat;->getContentType()I

    move-result v0

    if-ne v0, v2, :cond_8

    const/4 v1, 0x1

    :cond_8
    monitor-exit p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    iget-object p1, p0, Ldv$b$a;->c:Ldv$b;

    iget-object p1, p1, Ldv$b;->f:Lev;

    if-eqz v1, :cond_9

    invoke-virtual {p1}, Lev;->E()Lcom/google/common/util/concurrent/ListenableFuture;

    goto :goto_0

    :cond_9
    invoke-virtual {p1}, Lev;->d0()F

    move-result p1

    const v0, 0x3e4ccccd    # 0.2f

    mul-float v0, v0, p1

    iget-object v1, p0, Ldv$b$a;->c:Ldv$b;

    iget-object v1, v1, Ldv$b;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_7
    iput p1, p0, Ldv$b$a;->a:F

    iput v0, p0, Ldv$b$a;->b:F

    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    iget-object p1, p0, Ldv$b$a;->c:Ldv$b;

    iget-object p1, p1, Ldv$b;->f:Lev;

    invoke-virtual {p1, v0}, Lev;->w0(F)Lcom/google/common/util/concurrent/ListenableFuture;

    :goto_0
    return-void

    :catchall_4
    move-exception p1

    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    throw p1

    :catchall_5
    move-exception v0

    :try_start_9
    monitor-exit p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    throw v0
.end method
