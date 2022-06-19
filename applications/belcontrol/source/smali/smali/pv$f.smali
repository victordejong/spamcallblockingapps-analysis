.class public final Lpv$f;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "f"
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lpv$d;

.field public final c:Loh;

.field public final d:Lls$a;

.field public final e:Lyo;

.field public final f:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lpv$e;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Lpv$c;

.field public h:J

.field public i:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Loh;Lpv$d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpv$f;->a:Landroid/content/Context;

    iput-object p2, p0, Lpv$f;->c:Loh;

    iput-object p3, p0, Lpv$f;->b:Lpv$d;

    const-string p2, "MediaPlayer2"

    invoke-static {p1, p2}, Lnu;->N(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lus;

    invoke-direct {p3, p1, p2}, Lus;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p3, p0, Lpv$f;->d:Lls$a;

    new-instance p1, Lyo;

    const/4 p2, 0x0

    new-array p2, p2, [Lhp;

    invoke-direct {p1, p2}, Lyo;-><init>([Lhp;)V

    iput-object p1, p0, Lpv$f;->e:Lyo;

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lpv$f;->f:Ljava/util/ArrayDeque;

    new-instance p1, Lpv$c;

    invoke-direct {p1}, Lpv$c;-><init>()V

    iput-object p1, p0, Lpv$f;->g:Lpv$c;

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lpv$f;->h:J

    return-void
.end method


# virtual methods
.method public final a(Landroidx/media2/common/MediaItem;Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/common/MediaItem;",
            "Ljava/util/Collection<",
            "Lpv$e;",
            ">;",
            "Ljava/util/Collection<",
            "Lhp;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lpv$f;->d:Lls$a;

    instance-of v3, v1, Landroidx/media2/common/FileMediaItem;

    if-eqz v3, :cond_0

    move-object v2, v1

    check-cast v2, Landroidx/media2/common/FileMediaItem;

    invoke-virtual {v2}, Landroidx/media2/common/FileMediaItem;->n()V

    invoke-virtual {v2}, Landroidx/media2/common/FileMediaItem;->m()Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-virtual {v2}, Landroidx/media2/common/FileMediaItem;->l()J

    move-result-wide v5

    invoke-virtual {v2}, Landroidx/media2/common/FileMediaItem;->k()J

    move-result-wide v7

    iget-object v2, v0, Lpv$f;->g:Lpv$c;

    invoke-virtual {v2, v4}, Lpv$c;->a(Ljava/io/FileDescriptor;)Ljava/lang/Object;

    move-result-object v9

    invoke-static/range {v4 .. v9}, Lqv;->g(Ljava/io/FileDescriptor;JJLjava/lang/Object;)Lls$a;

    move-result-object v2

    :cond_0
    iget-object v3, v0, Lpv$f;->a:Landroid/content/Context;

    invoke-static {v3, v2, v1}, Lov;->a(Landroid/content/Context;Lls$a;Landroidx/media2/common/MediaItem;)Lhp;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual/range {p1 .. p1}, Landroidx/media2/common/MediaItem;->i()J

    move-result-wide v4

    invoke-virtual/range {p1 .. p1}, Landroidx/media2/common/MediaItem;->f()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v10, v4, v8

    if-nez v10, :cond_1

    const-wide v8, 0x7ffffffffffffffL

    cmp-long v10, v6, v8

    if-eqz v10, :cond_2

    :cond_1
    new-instance v3, Lmv;

    invoke-direct {v3, v2}, Lmv;-><init>(Lhp;)V

    new-instance v2, Lso;

    invoke-static {v4, v5}, Lcg;->a(J)J

    move-result-wide v13

    invoke-static {v6, v7}, Lcg;->a(J)J

    move-result-wide v15

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x1

    move-object v11, v2

    move-object v12, v3

    invoke-direct/range {v11 .. v19}, Lso;-><init>(Lhp;JJZZZ)V

    :cond_2
    instance-of v4, v1, Landroidx/media2/common/UriMediaItem;

    if-eqz v4, :cond_3

    move-object v4, v1

    check-cast v4, Landroidx/media2/common/UriMediaItem;

    invoke-virtual {v4}, Landroidx/media2/common/UriMediaItem;->j()Landroid/net/Uri;

    move-result-object v4

    invoke-static {v4}, Lnu;->U(Landroid/net/Uri;)Z

    move-result v4

    if-nez v4, :cond_3

    const/4 v4, 0x1

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    :goto_0
    move-object/from16 v5, p3

    invoke-interface {v5, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    new-instance v2, Lpv$e;

    invoke-direct {v2, v1, v3, v4}, Lpv$e;-><init>(Landroidx/media2/common/MediaItem;Lmv;Z)V

    move-object/from16 v1, p2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b()V
    .locals 1

    :goto_0
    iget-object v0, p0, Lpv$f;->f:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lpv$f;->f:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpv$e;

    invoke-virtual {p0, v0}, Lpv$f;->l(Lpv$e;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public c()Landroidx/media2/common/MediaItem;
    .locals 1

    iget-object v0, p0, Lpv$f;->f:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lpv$f;->f:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpv$e;

    iget-object v0, v0, Lpv$e;->a:Landroidx/media2/common/MediaItem;

    :goto_0
    return-object v0
.end method

.method public d()J
    .locals 2

    iget-object v0, p0, Lpv$f;->f:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpv$e;

    iget-object v0, v0, Lpv$e;->b:Lmv;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmv;->u()J

    move-result-wide v0

    return-wide v0

    :cond_0
    iget-object v0, p0, Lpv$f;->c:Loh;

    invoke-virtual {v0}, Loh;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public e()Z
    .locals 1

    iget-object v0, p0, Lpv$f;->f:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lpv$f;->f:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpv$e;

    iget-boolean v0, v0, Lpv$e;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public f()Z
    .locals 1

    iget-object v0, p0, Lpv$f;->e:Lyo;

    invoke-virtual {v0}, Lyo;->I()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public g()V
    .locals 2

    invoke-virtual {p0}, Lpv$f;->c()Landroidx/media2/common/MediaItem;

    move-result-object v0

    iget-object v1, p0, Lpv$f;->b:Lpv$d;

    invoke-interface {v1, v0}, Lpv$d;->d(Landroidx/media2/common/MediaItem;)V

    iget-object v1, p0, Lpv$f;->b:Lpv$d;

    invoke-interface {v1, v0}, Lpv$d;->g(Landroidx/media2/common/MediaItem;)V

    return-void
.end method

.method public h()V
    .locals 5

    iget-wide v0, p0, Lpv$f;->h:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lpv$f;->h:J

    return-void
.end method

.method public i(Z)V
    .locals 4

    invoke-virtual {p0}, Lpv$f;->c()Landroidx/media2/common/MediaItem;

    move-result-object v0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lpv$f;->c:Loh;

    invoke-virtual {v1}, Loh;->G()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lpv$f;->b:Lpv$d;

    invoke-interface {v1, v0}, Lpv$d;->e(Landroidx/media2/common/MediaItem;)V

    :cond_0
    iget-object v0, p0, Lpv$f;->c:Loh;

    invoke-virtual {v0}, Loh;->getCurrentWindowIndex()I

    move-result v0

    if-lez v0, :cond_4

    if-eqz p1, :cond_1

    iget-object v1, p0, Lpv$f;->b:Lpv$d;

    invoke-virtual {p0}, Lpv$f;->c()Landroidx/media2/common/MediaItem;

    move-result-object v2

    invoke-interface {v1, v2}, Lpv$d;->d(Landroidx/media2/common/MediaItem;)V

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    iget-object v3, p0, Lpv$f;->f:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpv$e;

    invoke-virtual {p0, v3}, Lpv$f;->l(Lpv$e;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    iget-object p1, p0, Lpv$f;->b:Lpv$d;

    invoke-virtual {p0}, Lpv$f;->c()Landroidx/media2/common/MediaItem;

    move-result-object v2

    invoke-interface {p1, v2}, Lpv$d;->q(Landroidx/media2/common/MediaItem;)V

    :cond_3
    iget-object p1, p0, Lpv$f;->e:Lyo;

    invoke-virtual {p1, v1, v0}, Lyo;->Q(II)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lpv$f;->i:J

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lpv$f;->h:J

    iget-object p1, p0, Lpv$f;->c:Loh;

    invoke-virtual {p1}, Loh;->F()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_4

    invoke-virtual {p0}, Lpv$f;->h()V

    :cond_4
    return-void
.end method

.method public j()V
    .locals 8

    iget-wide v0, p0, Lpv$f;->h:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v4, p0, Lpv$f;->i:J

    iget-wide v6, p0, Lpv$f;->h:J

    sub-long/2addr v0, v6

    const-wide/16 v6, 0x1f4

    add-long/2addr v0, v6

    const-wide/16 v6, 0x3e8

    div-long/2addr v0, v6

    add-long/2addr v4, v0

    iput-wide v4, p0, Lpv$f;->i:J

    iput-wide v2, p0, Lpv$f;->h:J

    return-void
.end method

.method public k()V
    .locals 2

    iget-object v0, p0, Lpv$f;->c:Loh;

    iget-object v1, p0, Lpv$f;->e:Lyo;

    invoke-virtual {v0, v1}, Loh;->J(Lhp;)V

    return-void
.end method

.method public final l(Lpv$e;)V
    .locals 3

    iget-object p1, p1, Lpv$e;->a:Landroidx/media2/common/MediaItem;

    :try_start_0
    instance-of v0, p1, Landroidx/media2/common/FileMediaItem;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroidx/media2/common/FileMediaItem;

    invoke-virtual {v0}, Landroidx/media2/common/FileMediaItem;->m()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    iget-object v1, p0, Lpv$f;->g:Lpv$c;

    invoke-virtual {v1, v0}, Lpv$c;->b(Ljava/io/FileDescriptor;)V

    move-object v0, p1

    check-cast v0, Landroidx/media2/common/FileMediaItem;

    invoke-virtual {v0}, Landroidx/media2/common/FileMediaItem;->j()V

    goto :goto_0

    :cond_0
    instance-of v0, p1, Landroidx/media2/common/CallbackMediaItem;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Landroidx/media2/common/CallbackMediaItem;

    invoke-virtual {v0}, Landroidx/media2/common/CallbackMediaItem;->j()Lzf;

    move-result-object v0

    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error releasing media item "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ExoPlayerWrapper"

    invoke-static {v1, p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public m(Landroidx/media2/common/MediaItem;)V
    .locals 1

    invoke-virtual {p0}, Lpv$f;->b()V

    iget-object v0, p0, Lpv$f;->e:Lyo;

    invoke-virtual {v0}, Lyo;->z()V

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lpv$f;->n(Ljava/util/List;)V

    return-void
.end method

.method public n(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media2/common/MediaItem;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lpv$f;->e:Lyo;

    invoke-virtual {v0}, Lyo;->I()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget-object v2, p0, Lpv$f;->e:Lyo;

    invoke-virtual {v2, v1, v0}, Lyo;->Q(II)V

    :goto_0
    iget-object v0, p0, Lpv$f;->f:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lpv$f;->f:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpv$e;

    invoke-virtual {p0, v0}, Lpv$f;->l(Lpv$e;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/common/MediaItem;

    if-nez v2, :cond_1

    iget-object p1, p0, Lpv$f;->b:Lpv$d;

    const/4 v0, 0x0

    invoke-interface {p1, v0, v1}, Lpv$d;->f(Landroidx/media2/common/MediaItem;I)V

    return-void

    :cond_1
    iget-object v3, p0, Lpv$f;->f:Ljava/util/ArrayDeque;

    invoke-virtual {p0, v2, v3, v0}, Lpv$f;->a(Landroidx/media2/common/MediaItem;Ljava/util/Collection;Ljava/util/Collection;)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lpv$f;->e:Lyo;

    invoke-virtual {p1, v0}, Lyo;->v(Ljava/util/Collection;)V

    return-void
.end method

.method public o()V
    .locals 2

    iget-object v0, p0, Lpv$f;->f:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpv$e;

    invoke-virtual {p0, v0}, Lpv$f;->l(Lpv$e;)V

    iget-object v0, p0, Lpv$f;->e:Lyo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lyo;->O(I)V

    return-void
.end method
