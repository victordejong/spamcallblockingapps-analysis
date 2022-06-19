.class public Luw;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Luw$b;,
        Luw$c;,
        Luw$a;
    }
.end annotation


# instance fields
.field public final a:Landroidx/media2/session/MediaController;

.field public final b:Landroidx/media2/common/SessionPlayer;

.field public final c:Ljava/util/concurrent/Executor;

.field public final d:Luw$b;

.field public final e:Luw$a;

.field public final f:Luw$c;

.field public g:Z

.field public h:I

.field public i:Landroidx/media2/session/SessionCommandGroup;

.field public j:Landroidx/media2/common/MediaMetadata;

.field public final k:Landroidx/media2/session/SessionCommandGroup;


# direct methods
.method public constructor <init>(Landroidx/media2/common/SessionPlayer;Ljava/util/concurrent/Executor;Luw$b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Luw;->h:I

    const-string v0, "player must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "executor must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "callback must not be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Luw;->b:Landroidx/media2/common/SessionPlayer;

    iput-object p2, p0, Luw;->c:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Luw;->d:Luw$b;

    new-instance p1, Luw$c;

    invoke-direct {p1, p0}, Luw$c;-><init>(Luw;)V

    iput-object p1, p0, Luw;->f:Luw$c;

    const/4 p1, 0x0

    iput-object p1, p0, Luw;->e:Luw$a;

    new-instance p1, Landroidx/media2/session/SessionCommandGroup$a;

    invoke-direct {p1}, Landroidx/media2/session/SessionCommandGroup$a;-><init>()V

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroidx/media2/session/SessionCommandGroup$a;->f(I)Landroidx/media2/session/SessionCommandGroup$a;

    invoke-virtual {p1}, Landroidx/media2/session/SessionCommandGroup$a;->k()Landroidx/media2/session/SessionCommandGroup;

    move-result-object p1

    iput-object p1, p0, Luw;->k:Landroidx/media2/session/SessionCommandGroup;

    return-void
.end method

.method public constructor <init>(Landroidx/media2/session/MediaController;Ljava/util/concurrent/Executor;Luw$b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Luw;->h:I

    const-string v0, "controller must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string p1, "executor must not be null"

    invoke-static {p2, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string p1, "callback must not be null"

    invoke-static {p3, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p2, p0, Luw;->c:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Luw;->d:Luw$b;

    new-instance p1, Luw$a;

    invoke-direct {p1, p0}, Luw$a;-><init>(Luw;)V

    iput-object p1, p0, Luw;->e:Luw$a;

    const/4 p1, 0x0

    iput-object p1, p0, Luw;->b:Landroidx/media2/common/SessionPlayer;

    iput-object p1, p0, Luw;->f:Luw$c;

    iput-object p1, p0, Luw;->k:Landroidx/media2/session/SessionCommandGroup;

    return-void
.end method


# virtual methods
.method public final A()V
    .locals 3

    iget-object v0, p0, Luw;->d:Luw$b;

    invoke-virtual {p0}, Luw;->r()F

    move-result v1

    invoke-virtual {v0, p0, v1}, Luw$b;->d(Luw;F)V

    invoke-virtual {p0}, Luw;->w()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Luw;->d:Luw$b;

    invoke-virtual {v1, p0, v0}, Luw$b;->j(Luw;Ljava/util/List;)V

    :cond_0
    invoke-virtual {p0}, Luw;->n()Landroidx/media2/common/MediaItem;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Luw;->d:Luw$b;

    invoke-virtual {p0}, Luw;->x()Landroidx/media2/common/VideoSize;

    move-result-object v2

    invoke-virtual {v1, p0, v0, v2}, Luw$b;->l(Luw;Landroidx/media2/common/MediaItem;Landroidx/media2/common/VideoSize;)V

    :cond_1
    return-void
.end method

.method public B()V
    .locals 1

    iget-object v0, p0, Luw;->a:Landroidx/media2/session/MediaController;

    if-nez v0, :cond_1

    iget-object v0, p0, Luw;->b:Landroidx/media2/common/SessionPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/media2/common/SessionPlayer;->E()Lcom/google/common/util/concurrent/ListenableFuture;

    :cond_0
    return-void

    :cond_1
    invoke-virtual {v0}, Landroidx/media2/session/MediaController;->F()Lcom/google/common/util/concurrent/ListenableFuture;

    const/4 v0, 0x0

    throw v0
.end method

.method public C()V
    .locals 1

    iget-object v0, p0, Luw;->a:Landroidx/media2/session/MediaController;

    if-nez v0, :cond_1

    iget-object v0, p0, Luw;->b:Landroidx/media2/common/SessionPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/media2/common/SessionPlayer;->F()Lcom/google/common/util/concurrent/ListenableFuture;

    :cond_0
    return-void

    :cond_1
    invoke-virtual {v0}, Landroidx/media2/session/MediaController;->G()Lcom/google/common/util/concurrent/ListenableFuture;

    const/4 v0, 0x0

    throw v0
.end method

.method public D(J)V
    .locals 1

    iget-object v0, p0, Luw;->a:Landroidx/media2/session/MediaController;

    if-nez v0, :cond_1

    iget-object v0, p0, Luw;->b:Landroidx/media2/common/SessionPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Landroidx/media2/common/SessionPlayer;->H(J)Lcom/google/common/util/concurrent/ListenableFuture;

    :cond_0
    return-void

    :cond_1
    invoke-virtual {v0, p1, p2}, Landroidx/media2/session/MediaController;->I(J)Lcom/google/common/util/concurrent/ListenableFuture;

    const/4 p1, 0x0

    throw p1
.end method

.method public E(Landroidx/media2/common/SessionPlayer$TrackInfo;)V
    .locals 1

    iget-object v0, p0, Luw;->a:Landroidx/media2/session/MediaController;

    if-nez v0, :cond_1

    iget-object v0, p0, Luw;->b:Landroidx/media2/common/SessionPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/media2/common/SessionPlayer;->I(Landroidx/media2/common/SessionPlayer$TrackInfo;)Lcom/google/common/util/concurrent/ListenableFuture;

    :cond_0
    return-void

    :cond_1
    invoke-virtual {v0, p1}, Landroidx/media2/session/MediaController;->J(Landroidx/media2/common/SessionPlayer$TrackInfo;)Lcom/google/common/util/concurrent/ListenableFuture;

    const/4 p1, 0x0

    throw p1
.end method

.method public F(F)V
    .locals 1

    iget-object v0, p0, Luw;->a:Landroidx/media2/session/MediaController;

    if-nez v0, :cond_1

    iget-object v0, p0, Luw;->b:Landroidx/media2/common/SessionPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/media2/common/SessionPlayer;->J(F)Lcom/google/common/util/concurrent/ListenableFuture;

    :cond_0
    return-void

    :cond_1
    invoke-virtual {v0, p1}, Landroidx/media2/session/MediaController;->K(F)Lcom/google/common/util/concurrent/ListenableFuture;

    const/4 p1, 0x0

    throw p1
.end method

.method public G(Landroid/view/Surface;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/Surface;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "+",
            "Lyf;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Luw;->a:Landroidx/media2/session/MediaController;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Luw;->b:Landroidx/media2/common/SessionPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/media2/common/SessionPlayer;->K(Landroid/view/Surface;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v1

    :cond_1
    invoke-virtual {v0, p1}, Landroidx/media2/session/MediaController;->L(Landroid/view/Surface;)Lcom/google/common/util/concurrent/ListenableFuture;

    throw v1
.end method

.method public H()V
    .locals 1

    iget-object v0, p0, Luw;->a:Landroidx/media2/session/MediaController;

    if-nez v0, :cond_1

    iget-object v0, p0, Luw;->b:Landroidx/media2/common/SessionPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/media2/common/SessionPlayer;->L()Lcom/google/common/util/concurrent/ListenableFuture;

    :cond_0
    return-void

    :cond_1
    invoke-virtual {v0}, Landroidx/media2/session/MediaController;->M()Lcom/google/common/util/concurrent/ListenableFuture;

    const/4 v0, 0x0

    throw v0
.end method

.method public I()V
    .locals 1

    iget-object v0, p0, Luw;->a:Landroidx/media2/session/MediaController;

    if-nez v0, :cond_1

    iget-object v0, p0, Luw;->b:Landroidx/media2/common/SessionPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/media2/common/SessionPlayer;->M()Lcom/google/common/util/concurrent/ListenableFuture;

    :cond_0
    return-void

    :cond_1
    invoke-virtual {v0}, Landroidx/media2/session/MediaController;->N()Lcom/google/common/util/concurrent/ListenableFuture;

    const/4 v0, 0x0

    throw v0
.end method

.method public J()V
    .locals 6

    invoke-virtual {p0}, Luw;->s()I

    move-result v0

    iget v1, p0, Luw;->h:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v1, v0, :cond_0

    iput v0, p0, Luw;->h:I

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Luw;->k()Landroidx/media2/session/SessionCommandGroup;

    move-result-object v4

    iget-object v5, p0, Luw;->i:Landroidx/media2/session/SessionCommandGroup;

    if-eq v5, v4, :cond_1

    iput-object v4, p0, Luw;->i:Landroidx/media2/session/SessionCommandGroup;

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {p0}, Luw;->n()Landroidx/media2/common/MediaItem;

    move-result-object v3

    if-nez v3, :cond_2

    const/4 v5, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Landroidx/media2/common/MediaItem;->h()Landroidx/media2/common/MediaMetadata;

    move-result-object v5

    :goto_2
    iput-object v5, p0, Luw;->j:Landroidx/media2/common/MediaMetadata;

    if-eqz v1, :cond_3

    iget-object v1, p0, Luw;->d:Luw$b;

    invoke-virtual {v1, p0, v0}, Luw$b;->e(Luw;I)V

    :cond_3
    if-eqz v4, :cond_4

    if-eqz v2, :cond_4

    iget-object v0, p0, Luw;->d:Luw$b;

    invoke-virtual {v0, p0, v4}, Luw$b;->a(Luw;Landroidx/media2/session/SessionCommandGroup;)V

    :cond_4
    iget-object v0, p0, Luw;->d:Luw$b;

    invoke-virtual {v0, p0, v3}, Luw$b;->b(Luw;Landroidx/media2/common/MediaItem;)V

    invoke-virtual {p0}, Luw;->A()V

    return-void
.end method

.method public a()V
    .locals 3

    iget-boolean v0, p0, Luw;->g:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Luw;->a:Landroidx/media2/session/MediaController;

    if-nez v0, :cond_2

    iget-object v0, p0, Luw;->b:Landroidx/media2/common/SessionPlayer;

    if-eqz v0, :cond_1

    iget-object v1, p0, Luw;->c:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Luw;->f:Luw$c;

    invoke-virtual {v0, v1, v2}, Landroidx/media2/common/SessionPlayer;->G(Ljava/util/concurrent/Executor;Landroidx/media2/common/SessionPlayer$a;)V

    :cond_1
    invoke-virtual {p0}, Luw;->J()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Luw;->g:Z

    return-void

    :cond_2
    iget-object v1, p0, Luw;->c:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Luw;->e:Luw$a;

    invoke-virtual {v0, v1, v2}, Landroidx/media2/session/MediaController;->H(Ljava/util/concurrent/Executor;Landroidx/media2/session/MediaController$a;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public b()Z
    .locals 2

    iget-object v0, p0, Luw;->i:Landroidx/media2/session/SessionCommandGroup;

    if-eqz v0, :cond_0

    const/16 v1, 0x2711

    invoke-virtual {v0, v1}, Landroidx/media2/session/SessionCommandGroup;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public c()Z
    .locals 2

    iget-object v0, p0, Luw;->i:Landroidx/media2/session/SessionCommandGroup;

    if-eqz v0, :cond_0

    const v1, 0x9c41

    invoke-virtual {v0, v1}, Landroidx/media2/session/SessionCommandGroup;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public d()Z
    .locals 2

    iget-object v0, p0, Luw;->i:Landroidx/media2/session/SessionCommandGroup;

    if-eqz v0, :cond_0

    const v1, 0x9c40

    invoke-virtual {v0, v1}, Landroidx/media2/session/SessionCommandGroup;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public e()Z
    .locals 2

    iget-object v0, p0, Luw;->i:Landroidx/media2/session/SessionCommandGroup;

    if-eqz v0, :cond_0

    const/16 v1, 0x2713

    invoke-virtual {v0, v1}, Landroidx/media2/session/SessionCommandGroup;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public f()Z
    .locals 2

    iget-object v0, p0, Luw;->i:Landroidx/media2/session/SessionCommandGroup;

    if-eqz v0, :cond_0

    const/16 v1, 0x2af9

    invoke-virtual {v0, v1}, Landroidx/media2/session/SessionCommandGroup;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Luw;->i:Landroidx/media2/session/SessionCommandGroup;

    const/16 v1, 0x2afa

    invoke-virtual {v0, v1}, Landroidx/media2/session/SessionCommandGroup;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public g()Z
    .locals 2

    iget-object v0, p0, Luw;->i:Landroidx/media2/session/SessionCommandGroup;

    if-eqz v0, :cond_0

    const/16 v1, 0x2719

    invoke-virtual {v0, v1}, Landroidx/media2/session/SessionCommandGroup;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public h()Z
    .locals 2

    iget-object v0, p0, Luw;->i:Landroidx/media2/session/SessionCommandGroup;

    if-eqz v0, :cond_0

    const/16 v1, 0x2718

    invoke-virtual {v0, v1}, Landroidx/media2/session/SessionCommandGroup;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public i(Landroidx/media2/common/SessionPlayer$TrackInfo;)V
    .locals 1

    iget-object v0, p0, Luw;->a:Landroidx/media2/session/MediaController;

    if-nez v0, :cond_1

    iget-object v0, p0, Luw;->b:Landroidx/media2/common/SessionPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/media2/common/SessionPlayer;->a(Landroidx/media2/common/SessionPlayer$TrackInfo;)Lcom/google/common/util/concurrent/ListenableFuture;

    :cond_0
    return-void

    :cond_1
    invoke-virtual {v0, p1}, Landroidx/media2/session/MediaController;->a(Landroidx/media2/common/SessionPlayer$TrackInfo;)Lcom/google/common/util/concurrent/ListenableFuture;

    const/4 p1, 0x0

    throw p1
.end method

.method public j()V
    .locals 2

    iget-boolean v0, p0, Luw;->g:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Luw;->a:Landroidx/media2/session/MediaController;

    if-nez v0, :cond_2

    iget-object v0, p0, Luw;->b:Landroidx/media2/common/SessionPlayer;

    if-eqz v0, :cond_1

    iget-object v1, p0, Luw;->f:Luw$c;

    invoke-virtual {v0, v1}, Landroidx/media2/common/SessionPlayer;->N(Landroidx/media2/common/SessionPlayer$a;)V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Luw;->g:Z

    return-void

    :cond_2
    iget-object v1, p0, Luw;->e:Luw$a;

    invoke-virtual {v0, v1}, Landroidx/media2/session/MediaController;->O(Landroidx/media2/session/MediaController$a;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final k()Landroidx/media2/session/SessionCommandGroup;
    .locals 1

    iget-object v0, p0, Luw;->a:Landroidx/media2/session/MediaController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/media2/session/MediaController;->e()Landroidx/media2/session/SessionCommandGroup;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Luw;->b:Landroidx/media2/common/SessionPlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Luw;->k:Landroidx/media2/session/SessionCommandGroup;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public l()Ljava/lang/CharSequence;
    .locals 2

    iget-object v0, p0, Luw;->j:Landroidx/media2/common/MediaMetadata;

    if-eqz v0, :cond_0

    const-string v1, "android.media.metadata.ARTIST"

    invoke-virtual {v0, v1}, Landroidx/media2/common/MediaMetadata;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Luw;->j:Landroidx/media2/common/MediaMetadata;

    invoke-virtual {v0, v1}, Landroidx/media2/common/MediaMetadata;->j(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public m()J
    .locals 7

    iget v0, p0, Luw;->h:I

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    :cond_0
    invoke-virtual {p0}, Luw;->p()J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-nez v0, :cond_1

    return-wide v1

    :cond_1
    iget-object v0, p0, Luw;->a:Landroidx/media2/session/MediaController;

    if-nez v0, :cond_4

    iget-object v0, p0, Luw;->b:Landroidx/media2/common/SessionPlayer;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/media2/common/SessionPlayer;->e()J

    move-result-wide v5

    goto :goto_0

    :cond_2
    move-wide v5, v1

    :goto_0
    cmp-long v0, v5, v1

    if-gez v0, :cond_3

    goto :goto_1

    :cond_3
    const-wide/16 v0, 0x64

    mul-long v5, v5, v0

    div-long v1, v5, v3

    :goto_1
    return-wide v1

    :cond_4
    invoke-virtual {v0}, Landroidx/media2/session/MediaController;->g()J

    const/4 v0, 0x0

    throw v0
.end method

.method public n()Landroidx/media2/common/MediaItem;
    .locals 2

    iget-object v0, p0, Luw;->a:Landroidx/media2/session/MediaController;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Luw;->b:Landroidx/media2/common/SessionPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/media2/common/SessionPlayer;->h()Landroidx/media2/common/MediaItem;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v1

    :cond_1
    invoke-virtual {v0}, Landroidx/media2/session/MediaController;->h()Landroidx/media2/common/MediaItem;

    throw v1
.end method

.method public o()J
    .locals 5

    iget v0, p0, Luw;->h:I

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    :cond_0
    iget-object v0, p0, Luw;->a:Landroidx/media2/session/MediaController;

    if-nez v0, :cond_3

    iget-object v0, p0, Luw;->b:Landroidx/media2/common/SessionPlayer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/media2/common/SessionPlayer;->l()J

    move-result-wide v3

    goto :goto_0

    :cond_1
    move-wide v3, v1

    :goto_0
    cmp-long v0, v3, v1

    if-gez v0, :cond_2

    goto :goto_1

    :cond_2
    move-wide v1, v3

    :goto_1
    return-wide v1

    :cond_3
    invoke-virtual {v0}, Landroidx/media2/session/MediaController;->l()J

    const/4 v0, 0x0

    throw v0
.end method

.method public p()J
    .locals 5

    iget v0, p0, Luw;->h:I

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    :cond_0
    iget-object v0, p0, Luw;->a:Landroidx/media2/session/MediaController;

    if-nez v0, :cond_3

    iget-object v0, p0, Luw;->b:Landroidx/media2/common/SessionPlayer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/media2/common/SessionPlayer;->m()J

    move-result-wide v3

    goto :goto_0

    :cond_1
    move-wide v3, v1

    :goto_0
    cmp-long v0, v3, v1

    if-gez v0, :cond_2

    goto :goto_1

    :cond_2
    move-wide v1, v3

    :goto_1
    return-wide v1

    :cond_3
    invoke-virtual {v0}, Landroidx/media2/session/MediaController;->m()J

    const/4 v0, 0x0

    throw v0
.end method

.method public q()I
    .locals 1

    iget-object v0, p0, Luw;->a:Landroidx/media2/session/MediaController;

    if-nez v0, :cond_1

    iget-object v0, p0, Luw;->b:Landroidx/media2/common/SessionPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/media2/common/SessionPlayer;->r()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0

    :cond_1
    invoke-virtual {v0}, Landroidx/media2/session/MediaController;->r()I

    const/4 v0, 0x0

    throw v0
.end method

.method public final r()F
    .locals 1

    iget-object v0, p0, Luw;->a:Landroidx/media2/session/MediaController;

    if-nez v0, :cond_1

    iget-object v0, p0, Luw;->b:Landroidx/media2/common/SessionPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/media2/common/SessionPlayer;->v()F

    move-result v0

    return v0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    return v0

    :cond_1
    invoke-virtual {v0}, Landroidx/media2/session/MediaController;->v()F

    const/4 v0, 0x0

    throw v0
.end method

.method public s()I
    .locals 1

    iget-object v0, p0, Luw;->a:Landroidx/media2/session/MediaController;

    if-nez v0, :cond_1

    iget-object v0, p0, Luw;->b:Landroidx/media2/common/SessionPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/media2/common/SessionPlayer;->y()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    invoke-virtual {v0}, Landroidx/media2/session/MediaController;->y()I

    const/4 v0, 0x0

    throw v0
.end method

.method public t()I
    .locals 1

    iget-object v0, p0, Luw;->a:Landroidx/media2/session/MediaController;

    if-nez v0, :cond_1

    iget-object v0, p0, Luw;->b:Landroidx/media2/common/SessionPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/media2/common/SessionPlayer;->A()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0

    :cond_1
    invoke-virtual {v0}, Landroidx/media2/session/MediaController;->A()I

    const/4 v0, 0x0

    throw v0
.end method

.method public u(I)Landroidx/media2/common/SessionPlayer$TrackInfo;
    .locals 2

    iget-object v0, p0, Luw;->a:Landroidx/media2/session/MediaController;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Luw;->b:Landroidx/media2/common/SessionPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/media2/common/SessionPlayer;->B(I)Landroidx/media2/common/SessionPlayer$TrackInfo;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v1

    :cond_1
    invoke-virtual {v0, p1}, Landroidx/media2/session/MediaController;->B(I)Landroidx/media2/common/SessionPlayer$TrackInfo;

    throw v1
.end method

.method public v()Ljava/lang/CharSequence;
    .locals 2

    iget-object v0, p0, Luw;->j:Landroidx/media2/common/MediaMetadata;

    if-eqz v0, :cond_0

    const-string v1, "android.media.metadata.TITLE"

    invoke-virtual {v0, v1}, Landroidx/media2/common/MediaMetadata;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Luw;->j:Landroidx/media2/common/MediaMetadata;

    invoke-virtual {v0, v1}, Landroidx/media2/common/MediaMetadata;->j(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public w()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/media2/common/SessionPlayer$TrackInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Luw;->a:Landroidx/media2/session/MediaController;

    if-nez v0, :cond_1

    iget-object v0, p0, Luw;->b:Landroidx/media2/common/SessionPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/media2/common/SessionPlayer;->C()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-virtual {v0}, Landroidx/media2/session/MediaController;->C()Ljava/util/List;

    const/4 v0, 0x0

    throw v0
.end method

.method public x()Landroidx/media2/common/VideoSize;
    .locals 2

    iget-object v0, p0, Luw;->a:Landroidx/media2/session/MediaController;

    if-nez v0, :cond_1

    iget-object v0, p0, Luw;->b:Landroidx/media2/common/SessionPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/media2/common/SessionPlayer;->D()Landroidx/media2/common/VideoSize;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Landroidx/media2/common/VideoSize;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroidx/media2/common/VideoSize;-><init>(II)V

    return-object v0

    :cond_1
    invoke-virtual {v0}, Landroidx/media2/session/MediaController;->D()Landroidx/media2/common/VideoSize;

    const/4 v0, 0x0

    throw v0
.end method

.method public y()Z
    .locals 1

    iget-object v0, p0, Luw;->a:Landroidx/media2/session/MediaController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/media2/session/MediaController;->E()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public z()Z
    .locals 2

    iget v0, p0, Luw;->h:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
