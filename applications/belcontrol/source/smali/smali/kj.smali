.class public Lkj;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lmj;
.implements Lgj$c;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkj$b;,
        Lkj$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Loj;",
        ">",
        "Ljava/lang/Object;",
        "Lmj<",
        "TT;>;",
        "Lgj$c<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/UUID;

.field public final b:Lpj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lpj<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final c:Lsj;

.field public final d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Lnt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnt<",
            "Lhj;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Z

.field public final g:I

.field public final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lgj<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field public final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lgj<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field public j:Landroid/os/Looper;

.field public k:I

.field public l:[B

.field public volatile m:Lkj$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkj<",
            "TT;>.b;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic e(Lkj;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lkj;->h:Ljava/util/List;

    return-object p0
.end method

.method public static h(Landroidx/media2/exoplayer/external/drm/DrmInitData;Ljava/util/UUID;Z)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/drm/DrmInitData;",
            "Ljava/util/UUID;",
            "Z)",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Landroidx/media2/exoplayer/external/drm/DrmInitData;->d:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget v3, p0, Landroidx/media2/exoplayer/external/drm/DrmInitData;->d:I

    if-ge v2, v3, :cond_4

    invoke-virtual {p0, v2}, Landroidx/media2/exoplayer/external/drm/DrmInitData;->e(I)Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;->d(Ljava/util/UUID;)Z

    move-result v4

    if-nez v4, :cond_1

    sget-object v4, Lcg;->c:Ljava/util/UUID;

    invoke-virtual {v4, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lcg;->b:Ljava/util/UUID;

    invoke-virtual {v3, v4}, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;->d(Ljava/util/UUID;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v4, 0x1

    :goto_2
    if-eqz v4, :cond_3

    iget-object v4, v3, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;->f:[B

    if-nez v4, :cond_2

    if-eqz p2, :cond_3

    :cond_2
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method public static final synthetic i(Lkj$c;Lhj;)V
    .locals 0

    invoke-interface {p1, p0}, Lhj;->onDrmSessionManagerError(Ljava/lang/Exception;)V

    return-void
.end method


# virtual methods
.method public a(Lgj;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgj<",
            "TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lkj;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lkj;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lkj;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lgj;->t()V

    :cond_1
    return-void
.end method

.method public b(Landroid/os/Looper;Landroidx/media2/exoplayer/external/drm/DrmInitData;)Llj;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "Landroidx/media2/exoplayer/external/drm/DrmInitData;",
            ")",
            "Llj<",
            "TT;>;"
        }
    .end annotation

    move-object v13, p0

    move-object/from16 v10, p1

    iget-object v0, v13, Lkj;->j:Landroid/os/Looper;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-ne v0, v10, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lit;->f(Z)V

    iget-object v0, v13, Lkj;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iput-object v10, v13, Lkj;->j:Landroid/os/Looper;

    iget-object v0, v13, Lkj;->m:Lkj$b;

    if-nez v0, :cond_2

    new-instance v0, Lkj$b;

    invoke-direct {v0, p0, v10}, Lkj$b;-><init>(Lkj;Landroid/os/Looper;)V

    iput-object v0, v13, Lkj;->m:Lkj$b;

    :cond_2
    iget-object v0, v13, Lkj;->l:[B

    const/4 v2, 0x0

    if-nez v0, :cond_4

    iget-object v0, v13, Lkj;->a:Ljava/util/UUID;

    move-object/from16 v3, p2

    invoke-static {v3, v0, v1}, Lkj;->h(Landroidx/media2/exoplayer/external/drm/DrmInitData;Ljava/util/UUID;Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v0, Lkj$c;

    iget-object v1, v13, Lkj;->a:Ljava/util/UUID;

    invoke-direct {v0, v1, v2}, Lkj$c;-><init>(Ljava/util/UUID;Lkj$a;)V

    iget-object v1, v13, Lkj;->e:Lnt;

    new-instance v2, Lij;

    invoke-direct {v2, v0}, Lij;-><init>(Lkj$c;)V

    invoke-virtual {v1, v2}, Lnt;->b(Lnt$a;)V

    new-instance v1, Lnj;

    new-instance v2, Llj$a;

    invoke-direct {v2, v0}, Llj$a;-><init>(Ljava/lang/Throwable;)V

    invoke-direct {v1, v2}, Lnj;-><init>(Llj$a;)V

    return-object v1

    :cond_3
    move-object v5, v0

    goto :goto_2

    :cond_4
    move-object v5, v2

    :goto_2
    iget-boolean v0, v13, Lkj;->f:Z

    if-nez v0, :cond_6

    iget-object v0, v13, Lkj;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_3

    :cond_5
    iget-object v0, v13, Lkj;->h:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgj;

    move-object v2, v0

    goto :goto_3

    :cond_6
    iget-object v0, v13, Lkj;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgj;

    iget-object v3, v1, Lgj;->a:Ljava/util/List;

    invoke-static {v3, v5}, Lnu;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    move-object v2, v1

    :cond_8
    :goto_3
    if-nez v2, :cond_9

    new-instance v14, Lgj;

    iget-object v1, v13, Lkj;->a:Ljava/util/UUID;

    iget-object v2, v13, Lkj;->b:Lpj;

    new-instance v4, Ljj;

    invoke-direct {v4, p0}, Ljj;-><init>(Lkj;)V

    iget v6, v13, Lkj;->k:I

    iget-object v7, v13, Lkj;->l:[B

    iget-object v8, v13, Lkj;->d:Ljava/util/HashMap;

    iget-object v9, v13, Lkj;->c:Lsj;

    iget-object v11, v13, Lkj;->e:Lnt;

    iget v12, v13, Lkj;->g:I

    move-object v0, v14

    move-object v3, p0

    move-object/from16 v10, p1

    invoke-direct/range {v0 .. v12}, Lgj;-><init>(Ljava/util/UUID;Lpj;Lgj$c;Lgj$d;Ljava/util/List;I[BLjava/util/HashMap;Lsj;Landroid/os/Looper;Lnt;I)V

    iget-object v0, v13, Lkj;->h:Ljava/util/List;

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v2, v14

    :cond_9
    invoke-virtual {v2}, Lgj;->d()V

    return-object v2
.end method

.method public c(Llj;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llj<",
            "TT;>;)V"
        }
    .end annotation

    instance-of v0, p1, Lnj;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    check-cast p1, Lgj;

    invoke-virtual {p1}, Lgj;->u()V

    return-void
.end method

.method public d(Landroidx/media2/exoplayer/external/drm/DrmInitData;)Z
    .locals 5

    iget-object v0, p0, Lkj;->l:[B

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lkj;->a:Ljava/util/UUID;

    invoke-static {p1, v0, v1}, Lkj;->h(Landroidx/media2/exoplayer/external/drm/DrmInitData;Ljava/util/UUID;Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget v0, p1, Landroidx/media2/exoplayer/external/drm/DrmInitData;->d:I

    if-ne v0, v1, :cond_1

    invoke-virtual {p1, v2}, Landroidx/media2/exoplayer/external/drm/DrmInitData;->e(I)Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;

    move-result-object v0

    sget-object v3, Lcg;->b:Ljava/util/UUID;

    invoke-virtual {v0, v3}, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;->d(Ljava/util/UUID;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lkj;->a:Ljava/util/UUID;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x48

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "DrmInitData only contains common PSSH SchemeData. Assuming support for: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "DefaultDrmSessionMgr"

    invoke-static {v3, v0}, Lst;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    :goto_0
    iget-object p1, p1, Landroidx/media2/exoplayer/external/drm/DrmInitData;->c:Ljava/lang/String;

    if-eqz p1, :cond_7

    const-string v0, "cenc"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    const-string v0, "cbc1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "cbcs"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "cens"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    return v1

    :cond_5
    :goto_1
    sget p1, Lnu;->a:I

    const/16 v0, 0x19

    if-lt p1, v0, :cond_6

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    :cond_7
    :goto_2
    return v1
.end method

.method public final f(Landroid/os/Handler;Lhj;)V
    .locals 1

    iget-object v0, p0, Lkj;->e:Lnt;

    invoke-virtual {v0, p1, p2}, Lnt;->a(Landroid/os/Handler;Ljava/lang/Object;)V

    return-void
.end method

.method public final bridge synthetic g(Lgj;)V
    .locals 0

    invoke-virtual {p0, p1}, Lkj;->j(Lgj;)V

    return-void
.end method

.method public final j(Lgj;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgj<",
            "TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lkj;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lkj;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lkj;->i:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lkj;->i:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgj;

    invoke-virtual {v0}, Lgj;->t()V

    :cond_0
    iget-object v0, p0, Lkj;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public onProvisionCompleted()V
    .locals 2

    iget-object v0, p0, Lkj;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgj;

    invoke-virtual {v1}, Lgj;->o()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lkj;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public onProvisionError(Ljava/lang/Exception;)V
    .locals 2

    iget-object v0, p0, Lkj;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgj;

    invoke-virtual {v1, p1}, Lgj;->p(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lkj;->i:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void
.end method
