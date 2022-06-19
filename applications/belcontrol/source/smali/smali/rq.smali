.class public final Lrq;
.super Lpo;
.source ""

# interfaces
.implements Ljr$e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrq$b;
    }
.end annotation


# instance fields
.field public final g:Lnq;

.field public final h:Landroid/net/Uri;

.field public final j:Lmq;

.field public final k:Lwo;

.field public final l:Lct;

.field public final m:Z

.field public final n:Z

.field public final o:Ljr;

.field public final p:Ljava/lang/Object;

.field public q:Lht;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "goog.exo.hls"

    invoke-static {v0}, Lvg;->a(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Lmq;Lnq;Lwo;Lct;Ljr;ZZLjava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Lpo;-><init>()V

    iput-object p1, p0, Lrq;->h:Landroid/net/Uri;

    iput-object p2, p0, Lrq;->j:Lmq;

    iput-object p3, p0, Lrq;->g:Lnq;

    iput-object p4, p0, Lrq;->k:Lwo;

    iput-object p5, p0, Lrq;->l:Lct;

    iput-object p6, p0, Lrq;->o:Ljr;

    iput-boolean p7, p0, Lrq;->m:Z

    iput-boolean p8, p0, Lrq;->n:Z

    iput-object p9, p0, Lrq;->p:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/net/Uri;Lmq;Lnq;Lwo;Lct;Ljr;ZZLjava/lang/Object;Lrq$a;)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lrq;-><init>(Landroid/net/Uri;Lmq;Lnq;Lwo;Lct;Ljr;ZZLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public b(Lfp;)V
    .locals 0

    check-cast p1, Lqq;

    invoke-virtual {p1}, Lqq;->p()V

    return-void
.end method

.method public c(Lfr;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-boolean v2, v1, Lfr;->m:Z

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v2, :cond_0

    iget-wide v5, v1, Lfr;->f:J

    invoke-static {v5, v6}, Lcg;->b(J)J

    move-result-wide v5

    move-wide v10, v5

    goto :goto_0

    :cond_0
    move-wide v10, v3

    :goto_0
    iget v2, v1, Lfr;->d:I

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v2, v5, :cond_2

    if-ne v2, v6, :cond_1

    goto :goto_1

    :cond_1
    move-wide v8, v3

    goto :goto_2

    :cond_2
    :goto_1
    move-wide v8, v10

    :goto_2
    iget-wide v12, v1, Lfr;->e:J

    iget-object v2, v0, Lrq;->o:Ljr;

    invoke-interface {v2}, Ljr;->isLive()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-wide v14, v1, Lfr;->f:J

    iget-object v2, v0, Lrq;->o:Ljr;

    invoke-interface {v2}, Ljr;->getInitialStartTimeUs()J

    move-result-wide v18

    sub-long v18, v14, v18

    iget-boolean v2, v1, Lfr;->l:Z

    if-eqz v2, :cond_3

    iget-wide v14, v1, Lfr;->p:J

    add-long v14, v18, v14

    goto :goto_3

    :cond_3
    move-wide v14, v3

    :goto_3
    iget-object v2, v1, Lfr;->o:Ljava/util/List;

    cmp-long v5, v12, v3

    if-nez v5, :cond_5

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    const-wide/16 v16, 0x0

    goto :goto_4

    :cond_4
    const/4 v3, 0x0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x3

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfr$a;

    iget-wide v2, v2, Lfr$a;->f:J

    move-wide/from16 v16, v2

    :goto_4
    move-wide/from16 v2, v16

    goto :goto_5

    :cond_5
    move-wide v2, v12

    :goto_5
    new-instance v4, Laq;

    iget-wide v12, v1, Lfr;->p:J

    const/16 v20, 0x1

    iget-boolean v5, v1, Lfr;->l:Z

    xor-int/lit8 v21, v5, 0x1

    iget-object v5, v0, Lrq;->p:Ljava/lang/Object;

    move-object v7, v4

    move-wide/from16 v16, v12

    move-wide v12, v14

    move-wide/from16 v14, v16

    move-wide/from16 v16, v18

    move-wide/from16 v18, v2

    move-object/from16 v22, v5

    invoke-direct/range {v7 .. v22}, Laq;-><init>(JJJJJJZZLjava/lang/Object;)V

    goto :goto_7

    :cond_6
    cmp-long v2, v12, v3

    if-nez v2, :cond_7

    const-wide/16 v18, 0x0

    goto :goto_6

    :cond_7
    move-wide/from16 v18, v12

    :goto_6
    new-instance v4, Laq;

    iget-wide v14, v1, Lfr;->p:J

    const-wide/16 v16, 0x0

    const/16 v20, 0x1

    const/16 v21, 0x0

    iget-object v2, v0, Lrq;->p:Ljava/lang/Object;

    move-object v7, v4

    move-wide v12, v14

    move-object/from16 v22, v2

    invoke-direct/range {v7 .. v22}, Laq;-><init>(JJJJJJZZLjava/lang/Object;)V

    :goto_7
    new-instance v2, Loq;

    iget-object v3, v0, Lrq;->o:Ljr;

    invoke-interface {v3}, Ljr;->getMasterPlaylist()Ler;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Loq;-><init>(Ler;Lfr;)V

    invoke-virtual {v0, v4, v2}, Lpo;->l(Lph;Ljava/lang/Object;)V

    return-void
.end method

.method public e(Lhp$a;Les;J)Lfp;
    .locals 11

    invoke-virtual {p0, p1}, Lpo;->j(Lhp$a;)Lqp$a;

    move-result-object v6

    new-instance p1, Lqq;

    iget-object v1, p0, Lrq;->g:Lnq;

    iget-object v2, p0, Lrq;->o:Ljr;

    iget-object v3, p0, Lrq;->j:Lmq;

    iget-object v4, p0, Lrq;->q:Lht;

    iget-object v5, p0, Lrq;->l:Lct;

    iget-object v8, p0, Lrq;->k:Lwo;

    iget-boolean v9, p0, Lrq;->m:Z

    iget-boolean v10, p0, Lrq;->n:Z

    move-object v0, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v10}, Lqq;-><init>(Lnq;Ljr;Lmq;Lht;Lct;Lqp$a;Les;Lwo;ZZ)V

    return-object p1
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lrq;->p:Ljava/lang/Object;

    return-object v0
.end method

.method public k(Lht;)V
    .locals 2

    iput-object p1, p0, Lrq;->q:Lht;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lpo;->j(Lhp$a;)Lqp$a;

    move-result-object p1

    iget-object v0, p0, Lrq;->o:Ljr;

    iget-object v1, p0, Lrq;->h:Landroid/net/Uri;

    invoke-interface {v0, v1, p1, p0}, Ljr;->f(Landroid/net/Uri;Lqp$a;Ljr$e;)V

    return-void
.end method

.method public m()V
    .locals 1

    iget-object v0, p0, Lrq;->o:Ljr;

    invoke-interface {v0}, Ljr;->stop()V

    return-void
.end method

.method public maybeThrowSourceInfoRefreshError()V
    .locals 1

    iget-object v0, p0, Lrq;->o:Ljr;

    invoke-interface {v0}, Ljr;->maybeThrowPrimaryPlaylistRefreshError()V

    return-void
.end method
