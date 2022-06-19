.class public final Ltp$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ldt$e;
.implements Lep$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final a:Landroid/net/Uri;

.field public final b:Lgt;

.field public final c:Ltp$b;

.field public final d:Lck;

.field public final e:Llt;

.field public final f:Lhk;

.field public volatile g:Z

.field public h:Z

.field public i:J

.field public j:Los;

.field public k:J

.field public l:Lkk;

.field public m:Z

.field public final synthetic n:Ltp;


# direct methods
.method public constructor <init>(Ltp;Landroid/net/Uri;Lls;Ltp$b;Lck;Llt;)V
    .locals 0

    iput-object p1, p0, Ltp$a;->n:Ltp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Ltp$a;->a:Landroid/net/Uri;

    new-instance p1, Lgt;

    invoke-direct {p1, p3}, Lgt;-><init>(Lls;)V

    iput-object p1, p0, Ltp$a;->b:Lgt;

    iput-object p4, p0, Ltp$a;->c:Ltp$b;

    iput-object p5, p0, Ltp$a;->d:Lck;

    iput-object p6, p0, Ltp$a;->e:Llt;

    new-instance p1, Lhk;

    invoke-direct {p1}, Lhk;-><init>()V

    iput-object p1, p0, Ltp$a;->f:Lhk;

    const/4 p1, 0x1

    iput-boolean p1, p0, Ltp$a;->h:Z

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Ltp$a;->k:J

    const-wide/16 p1, 0x0

    invoke-virtual {p0, p1, p2}, Ltp$a;->g(J)Los;

    move-result-object p1

    iput-object p1, p0, Ltp$a;->j:Los;

    return-void
.end method

.method public static synthetic b(Ltp$a;)Los;
    .locals 0

    iget-object p0, p0, Ltp$a;->j:Los;

    return-object p0
.end method

.method public static synthetic c(Ltp$a;)Lgt;
    .locals 0

    iget-object p0, p0, Ltp$a;->b:Lgt;

    return-object p0
.end method

.method public static synthetic d(Ltp$a;)J
    .locals 2

    iget-wide v0, p0, Ltp$a;->i:J

    return-wide v0
.end method

.method public static synthetic e(Ltp$a;)J
    .locals 2

    iget-wide v0, p0, Ltp$a;->k:J

    return-wide v0
.end method

.method public static synthetic f(Ltp$a;JJ)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Ltp$a;->h(JJ)V

    return-void
.end method


# virtual methods
.method public a(Lyt;)V
    .locals 9

    iget-boolean v0, p0, Ltp$a;->m:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Ltp$a;->i:J

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ltp$a;->n:Ltp;

    invoke-static {v0}, Ltp;->i(Ltp;)J

    move-result-wide v0

    iget-wide v2, p0, Ltp$a;->i:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    :goto_0
    move-wide v3, v0

    invoke-virtual {p1}, Lyt;->a()I

    move-result v6

    iget-object v0, p0, Ltp$a;->l:Lkk;

    invoke-static {v0}, Lit;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lkk;

    invoke-interface {v2, p1, v6}, Lkk;->c(Lyt;I)V

    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface/range {v2 .. v8}, Lkk;->a(JIIILkk$a;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Ltp$a;->m:Z

    return-void
.end method

.method public cancelLoad()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Ltp$a;->g:Z

    return-void
.end method

.method public final g(J)Los;
    .locals 9

    new-instance v8, Los;

    iget-object v1, p0, Ltp$a;->a:Landroid/net/Uri;

    iget-object v0, p0, Ltp$a;->n:Ltp;

    invoke-static {v0}, Ltp;->k(Ltp;)Ljava/lang/String;

    move-result-object v6

    const-wide/16 v4, -0x1

    const/16 v7, 0x16

    move-object v0, v8

    move-wide v2, p1

    invoke-direct/range {v0 .. v7}, Los;-><init>(Landroid/net/Uri;JJLjava/lang/String;I)V

    return-object v8
.end method

.method public final h(JJ)V
    .locals 1

    iget-object v0, p0, Ltp$a;->f:Lhk;

    iput-wide p1, v0, Lhk;->a:J

    iput-wide p3, p0, Ltp$a;->i:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Ltp$a;->h:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Ltp$a;->m:Z

    return-void
.end method

.method public load()V
    .locals 14

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_6

    iget-boolean v2, p0, Ltp$a;->g:Z

    if-nez v2, :cond_6

    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_0
    iget-object v4, p0, Ltp$a;->f:Lhk;

    iget-wide v11, v4, Lhk;->a:J

    invoke-virtual {p0, v11, v12}, Ltp$a;->g(J)Los;

    move-result-object v4

    iput-object v4, p0, Ltp$a;->j:Los;

    iget-object v5, p0, Ltp$a;->b:Lgt;

    invoke-virtual {v5, v4}, Lgt;->a(Los;)J

    move-result-wide v4

    iput-wide v4, p0, Ltp$a;->k:J

    const-wide/16 v6, -0x1

    cmp-long v8, v4, v6

    if-eqz v8, :cond_0

    add-long/2addr v4, v11

    iput-wide v4, p0, Ltp$a;->k:J

    :cond_0
    iget-object v4, p0, Ltp$a;->b:Lgt;

    invoke-virtual {v4}, Lgt;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-static {v4}, Lit;->e(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v4, Landroid/net/Uri;

    iget-object v5, p0, Ltp$a;->n:Ltp;

    iget-object v6, p0, Ltp$a;->b:Lgt;

    invoke-virtual {v6}, Lgt;->getResponseHeaders()Ljava/util/Map;

    move-result-object v6

    invoke-static {v6}, Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;->a(Ljava/util/Map;)Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;

    move-result-object v6

    invoke-static {v5, v6}, Ltp;->m(Ltp;Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;)Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;

    iget-object v5, p0, Ltp$a;->b:Lgt;

    iget-object v6, p0, Ltp$a;->n:Ltp;

    invoke-static {v6}, Ltp;->l(Ltp;)Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;

    move-result-object v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Ltp$a;->n:Ltp;

    invoke-static {v6}, Ltp;->l(Ltp;)Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;

    move-result-object v6

    iget v6, v6, Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;->g:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_1

    new-instance v5, Lep;

    iget-object v6, p0, Ltp$a;->b:Lgt;

    iget-object v7, p0, Ltp$a;->n:Ltp;

    invoke-static {v7}, Ltp;->l(Ltp;)Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;

    move-result-object v7

    iget v7, v7, Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;->g:I

    invoke-direct {v5, v6, v7, p0}, Lep;-><init>(Lls;ILep$a;)V

    iget-object v6, p0, Ltp$a;->n:Ltp;

    invoke-virtual {v6}, Ltp;->w()Lkk;

    move-result-object v6

    iput-object v6, p0, Ltp$a;->l:Lkk;

    invoke-static {}, Ltp;->n()Landroidx/media2/exoplayer/external/Format;

    move-result-object v7

    invoke-interface {v6, v7}, Lkk;->b(Landroidx/media2/exoplayer/external/Format;)V

    :cond_1
    move-object v6, v5

    new-instance v13, Lxj;

    iget-wide v9, p0, Ltp$a;->k:J

    move-object v5, v13

    move-wide v7, v11

    invoke-direct/range {v5 .. v10}, Lxj;-><init>(Lls;JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v2, p0, Ltp$a;->c:Ltp$b;

    iget-object v5, p0, Ltp$a;->d:Lck;

    invoke-virtual {v2, v13, v5, v4}, Ltp$b;->b(Lbk;Lck;Landroid/net/Uri;)Lak;

    move-result-object v2

    iget-boolean v4, p0, Ltp$a;->h:Z

    if-eqz v4, :cond_2

    iget-wide v4, p0, Ltp$a;->i:J

    invoke-interface {v2, v11, v12, v4, v5}, Lak;->seek(JJ)V

    iput-boolean v0, p0, Ltp$a;->h:Z

    :cond_2
    :goto_1
    if-nez v1, :cond_3

    iget-boolean v4, p0, Ltp$a;->g:Z

    if-nez v4, :cond_3

    iget-object v4, p0, Ltp$a;->e:Llt;

    invoke-virtual {v4}, Llt;->a()V

    iget-object v4, p0, Ltp$a;->f:Lhk;

    invoke-interface {v2, v13, v4}, Lak;->a(Lbk;Lhk;)I

    move-result v1

    invoke-interface {v13}, Lbk;->getPosition()J

    move-result-wide v4

    iget-object v6, p0, Ltp$a;->n:Ltp;

    invoke-static {v6}, Ltp;->o(Ltp;)J

    move-result-wide v6

    add-long/2addr v6, v11

    cmp-long v8, v4, v6

    if-lez v8, :cond_2

    invoke-interface {v13}, Lbk;->getPosition()J

    move-result-wide v11

    iget-object v4, p0, Ltp$a;->e:Llt;

    invoke-virtual {v4}, Llt;->b()Z

    iget-object v4, p0, Ltp$a;->n:Ltp;

    invoke-static {v4}, Ltp;->g(Ltp;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Ltp$a;->n:Ltp;

    invoke-static {v5}, Ltp;->p(Ltp;)Ljava/lang/Runnable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_3
    if-ne v1, v3, :cond_4

    const/4 v1, 0x0

    goto :goto_2

    :cond_4
    iget-object v2, p0, Ltp$a;->f:Lhk;

    invoke-interface {v13}, Lbk;->getPosition()J

    move-result-wide v3

    iput-wide v3, v2, Lhk;->a:J

    :goto_2
    iget-object v2, p0, Ltp$a;->b:Lgt;

    invoke-static {v2}, Lnu;->j(Lls;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    move-object v2, v13

    goto :goto_3

    :catchall_1
    move-exception v0

    :goto_3
    if-eq v1, v3, :cond_5

    if-eqz v2, :cond_5

    iget-object v1, p0, Ltp$a;->f:Lhk;

    invoke-interface {v2}, Lbk;->getPosition()J

    move-result-wide v2

    iput-wide v2, v1, Lhk;->a:J

    :cond_5
    iget-object v1, p0, Ltp$a;->b:Lgt;

    invoke-static {v1}, Lnu;->j(Lls;)V

    throw v0

    :cond_6
    return-void
.end method
