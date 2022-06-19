.class public Lgj;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Llj;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgj$a;,
        Lgj$b;,
        Lgj$d;,
        Lgj$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Loj;",
        ">",
        "Ljava/lang/Object;",
        "Llj<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lpj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lpj<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final c:Lgj$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgj$c<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final d:Lgj$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgj$d<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final e:I

.field public final f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Lnt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnt<",
            "Lhj;",
            ">;"
        }
    .end annotation
.end field

.field public final h:I

.field public final i:Lsj;

.field public final j:Ljava/util/UUID;

.field public final k:Lgj$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgj<",
            "TT;>.b;"
        }
    .end annotation
.end field

.field public l:I

.field public m:I

.field public n:Landroid/os/HandlerThread;

.field public o:Lgj$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgj<",
            "TT;>.a;"
        }
    .end annotation
.end field

.field public p:Loj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public q:Llj$a;

.field public r:[B

.field public s:[B

.field public t:Lpj$a;

.field public u:Lpj$b;


# direct methods
.method public constructor <init>(Ljava/util/UUID;Lpj;Lgj$c;Lgj$d;Ljava/util/List;I[BLjava/util/HashMap;Lsj;Landroid/os/Looper;Lnt;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Lpj<",
            "TT;>;",
            "Lgj$c<",
            "TT;>;",
            "Lgj$d<",
            "TT;>;",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;",
            ">;I[B",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lsj;",
            "Landroid/os/Looper;",
            "Lnt<",
            "Lhj;",
            ">;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    if-eq p6, v0, :cond_0

    const/4 v0, 0x3

    if-ne p6, v0, :cond_1

    :cond_0
    invoke-static {p7}, Lit;->e(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iput-object p1, p0, Lgj;->j:Ljava/util/UUID;

    iput-object p3, p0, Lgj;->c:Lgj$c;

    iput-object p4, p0, Lgj;->d:Lgj$d;

    iput-object p2, p0, Lgj;->b:Lpj;

    iput p6, p0, Lgj;->e:I

    if-eqz p7, :cond_2

    iput-object p7, p0, Lgj;->s:[B

    const/4 p1, 0x0

    goto :goto_0

    :cond_2
    invoke-static {p5}, Lit;->e(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p5, Ljava/util/List;

    invoke-static {p5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lgj;->a:Ljava/util/List;

    iput-object p8, p0, Lgj;->f:Ljava/util/HashMap;

    iput-object p9, p0, Lgj;->i:Lsj;

    iput p12, p0, Lgj;->h:I

    iput-object p11, p0, Lgj;->g:Lnt;

    const/4 p1, 0x2

    iput p1, p0, Lgj;->l:I

    new-instance p1, Lgj$b;

    invoke-direct {p1, p0, p10}, Lgj$b;-><init>(Lgj;Landroid/os/Looper;)V

    iput-object p1, p0, Lgj;->k:Lgj$b;

    return-void
.end method

.method public static synthetic a(Lgj;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lgj;->q(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic b(Lgj;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lgj;->k(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic c(Lgj;)I
    .locals 0

    iget p0, p0, Lgj;->h:I

    return p0
.end method

.method public static final synthetic i(Ljava/lang/Exception;Lhj;)V
    .locals 0

    invoke-interface {p1, p0}, Lhj;->onDrmSessionManagerError(Ljava/lang/Exception;)V

    return-void
.end method


# virtual methods
.method public d()V
    .locals 3

    iget v0, p0, Lgj;->m:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lgj;->m:I

    if-ne v0, v1, :cond_0

    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "DrmRequestHandler"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lgj;->n:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lgj$a;

    iget-object v2, p0, Lgj;->n:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lgj$a;-><init>(Lgj;Landroid/os/Looper;)V

    iput-object v0, p0, Lgj;->o:Lgj$a;

    invoke-virtual {p0, v1}, Lgj;->r(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lgj;->e(Z)V

    :cond_0
    return-void
.end method

.method public final e(Z)V
    .locals 7
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "sessionId"
        }
    .end annotation

    iget v0, p0, Lgj;->e:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eqz v0, :cond_3

    if-eq v0, v1, :cond_3

    if-eq v0, v2, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lgj;->s:[B

    invoke-static {v0}, Lit;->e(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lgj;->v()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lgj;->s:[B

    invoke-virtual {p0, v0, v1, p1}, Lgj;->s([BIZ)V

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lgj;->s:[B

    if-nez v0, :cond_2

    iget-object v0, p0, Lgj;->r:[B

    invoke-virtual {p0, v0, v2, p1}, Lgj;->s([BIZ)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lgj;->v()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lgj;->r:[B

    invoke-virtual {p0, v0, v2, p1}, Lgj;->s([BIZ)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lgj;->s:[B

    if-nez v0, :cond_4

    iget-object v0, p0, Lgj;->r:[B

    invoke-virtual {p0, v0, v1, p1}, Lgj;->s([BIZ)V

    goto :goto_0

    :cond_4
    iget v0, p0, Lgj;->l:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_5

    invoke-virtual {p0}, Lgj;->v()Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_5
    invoke-virtual {p0}, Lgj;->f()J

    move-result-wide v3

    iget v0, p0, Lgj;->e:I

    if-nez v0, :cond_6

    const-wide/16 v5, 0x3c

    cmp-long v0, v3, v5

    if-gtz v0, :cond_6

    const/16 v0, 0x58

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Offline license has expired or will expire soon. Remaining seconds: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DefaultDrmSession"

    invoke-static {v1, v0}, Lst;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lgj;->r:[B

    invoke-virtual {p0, v0, v2, p1}, Lgj;->s([BIZ)V

    goto :goto_0

    :cond_6
    const-wide/16 v5, 0x0

    cmp-long p1, v3, v5

    if-gtz p1, :cond_7

    new-instance p1, Lrj;

    invoke-direct {p1}, Lrj;-><init>()V

    invoke-virtual {p0, p1}, Lgj;->j(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_7
    iput v1, p0, Lgj;->l:I

    iget-object p1, p0, Lgj;->g:Lnt;

    sget-object v0, Lcj;->a:Lnt$a;

    invoke-virtual {p1, v0}, Lnt;->b(Lnt$a;)V

    :cond_8
    :goto_0
    return-void
.end method

.method public final f()J
    .locals 5

    sget-object v0, Lcg;->d:Ljava/util/UUID;

    iget-object v1, p0, Lgj;->j:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    return-wide v0

    :cond_0
    invoke-static {p0}, Ltj;->b(Llj;)Landroid/util/Pair;

    move-result-object v0

    invoke-static {v0}, Lit;->e(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Landroid/util/Pair;

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public g([B)Z
    .locals 1

    iget-object v0, p0, Lgj;->r:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    return p1
.end method

.method public final getError()Llj$a;
    .locals 2

    iget v0, p0, Lgj;->l:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lgj;->q:Llj$a;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final getMediaCrypto()Loj;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lgj;->p:Loj;

    return-object v0
.end method

.method public final getState()I
    .locals 1

    iget v0, p0, Lgj;->l:I

    return v0
.end method

.method public final h()Z
    .locals 2
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNullIf;
        expression = {
            "sessionId"
        }
        result = true
    .end annotation

    iget v0, p0, Lgj;->l:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final j(Ljava/lang/Exception;)V
    .locals 2

    new-instance v0, Llj$a;

    invoke-direct {v0, p1}, Llj$a;-><init>(Ljava/lang/Throwable;)V

    iput-object v0, p0, Lgj;->q:Llj$a;

    iget-object v0, p0, Lgj;->g:Lnt;

    new-instance v1, Lfj;

    invoke-direct {v1, p1}, Lfj;-><init>(Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Lnt;->b(Lnt$a;)V

    iget p1, p0, Lgj;->l:I

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    iput p1, p0, Lgj;->l:I

    :cond_0
    return-void
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lgj;->t:Lpj$a;

    if-ne p1, v0, :cond_5

    invoke-virtual {p0}, Lgj;->h()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lgj;->t:Lpj$a;

    instance-of p1, p2, Ljava/lang/Exception;

    if-eqz p1, :cond_1

    check-cast p2, Ljava/lang/Exception;

    invoke-virtual {p0, p2}, Lgj;->l(Ljava/lang/Exception;)V

    return-void

    :cond_1
    :try_start_0
    check-cast p2, [B

    iget p1, p0, Lgj;->e:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lgj;->b:Lpj;

    iget-object v0, p0, Lgj;->s:[B

    invoke-static {v0}, Lnu;->g(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, [B

    invoke-interface {p1, v0, p2}, Lpj;->provideKeyResponse([B[B)[B

    iget-object p1, p0, Lgj;->g:Lnt;

    sget-object p2, Ldj;->a:Lnt$a;

    :goto_0
    invoke-virtual {p1, p2}, Lnt;->b(Lnt$a;)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lgj;->b:Lpj;

    iget-object v0, p0, Lgj;->r:[B

    invoke-interface {p1, v0, p2}, Lpj;->provideKeyResponse([B[B)[B

    move-result-object p1

    iget p2, p0, Lgj;->e:I

    const/4 v0, 0x2

    if-eq p2, v0, :cond_3

    if-nez p2, :cond_4

    iget-object p2, p0, Lgj;->s:[B

    if-eqz p2, :cond_4

    :cond_3
    if-eqz p1, :cond_4

    array-length p2, p1

    if-eqz p2, :cond_4

    iput-object p1, p0, Lgj;->s:[B

    :cond_4
    const/4 p1, 0x4

    iput p1, p0, Lgj;->l:I

    iget-object p1, p0, Lgj;->g:Lnt;

    sget-object p2, Lej;->a:Lnt$a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lgj;->l(Ljava/lang/Exception;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public final l(Ljava/lang/Exception;)V
    .locals 1

    instance-of v0, p1, Landroid/media/NotProvisionedException;

    if-eqz v0, :cond_0

    iget-object p1, p0, Lgj;->c:Lgj$c;

    invoke-interface {p1, p0}, Lgj$c;->a(Lgj;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lgj;->j(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public final m()V
    .locals 2

    iget v0, p0, Lgj;->e:I

    if-nez v0, :cond_0

    iget v0, p0, Lgj;->l:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lgj;->r:[B

    invoke-static {v0}, Lnu;->g(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lgj;->e(Z)V

    :cond_0
    return-void
.end method

.method public n(I)V
    .locals 1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lgj;->m()V

    :goto_0
    return-void
.end method

.method public o()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lgj;->r(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lgj;->e(Z)V

    :cond_0
    return-void
.end method

.method public p(Ljava/lang/Exception;)V
    .locals 0

    invoke-virtual {p0, p1}, Lgj;->j(Ljava/lang/Exception;)V

    return-void
.end method

.method public final q(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lgj;->u:Lpj$b;

    if-ne p1, v0, :cond_2

    iget p1, p0, Lgj;->l:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    invoke-virtual {p0}, Lgj;->h()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lgj;->u:Lpj$b;

    instance-of p1, p2, Ljava/lang/Exception;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lgj;->c:Lgj$c;

    check-cast p2, Ljava/lang/Exception;

    invoke-interface {p1, p2}, Lgj$c;->onProvisionError(Ljava/lang/Exception;)V

    return-void

    :cond_1
    :try_start_0
    iget-object p1, p0, Lgj;->b:Lpj;

    check-cast p2, [B

    invoke-interface {p1, p2}, Lpj;->provideProvisionResponse([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p1, p0, Lgj;->c:Lgj$c;

    invoke-interface {p1}, Lgj$c;->onProvisionCompleted()V

    return-void

    :catch_0
    move-exception p1

    iget-object p2, p0, Lgj;->c:Lgj$c;

    invoke-interface {p2, p1}, Lgj$c;->onProvisionError(Ljava/lang/Exception;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public queryKeyStatus()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lgj;->r:[B

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lgj;->b:Lpj;

    invoke-interface {v1, v0}, Lpj;->queryKeyStatus([B)Ljava/util/Map;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final r(Z)Z
    .locals 3
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNullIf;
        expression = {
            "sessionId"
        }
        result = true
    .end annotation

    invoke-virtual {p0}, Lgj;->h()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lgj;->b:Lpj;

    invoke-interface {v0}, Lpj;->openSession()[B

    move-result-object v0

    iput-object v0, p0, Lgj;->r:[B

    iget-object v0, p0, Lgj;->g:Lnt;

    sget-object v2, Lbj;->a:Lnt$a;

    invoke-virtual {v0, v2}, Lnt;->b(Lnt$a;)V

    iget-object v0, p0, Lgj;->b:Lpj;

    iget-object v2, p0, Lgj;->r:[B

    invoke-interface {v0, v2}, Lpj;->createMediaCrypto([B)Loj;

    move-result-object v0

    iput-object v0, p0, Lgj;->p:Loj;

    const/4 v0, 0x3

    iput v0, p0, Lgj;->l:I
    :try_end_0
    .catch Landroid/media/NotProvisionedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lgj;->j(Ljava/lang/Exception;)V

    goto :goto_0

    :catch_1
    move-exception v0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lgj;->c:Lgj$c;

    invoke-interface {p1, p0}, Lgj$c;->a(Lgj;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Lgj;->j(Ljava/lang/Exception;)V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final s([BIZ)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lgj;->b:Lpj;

    iget-object v1, p0, Lgj;->a:Ljava/util/List;

    iget-object v2, p0, Lgj;->f:Ljava/util/HashMap;

    invoke-interface {v0, p1, v1, p2, v2}, Lpj;->a([BLjava/util/List;ILjava/util/HashMap;)Lpj$a;

    move-result-object p1

    iput-object p1, p0, Lgj;->t:Lpj$a;

    iget-object p1, p0, Lgj;->o:Lgj$a;

    invoke-static {p1}, Lnu;->g(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lgj$a;

    const/4 p2, 0x1

    iget-object v0, p0, Lgj;->t:Lpj$a;

    invoke-static {v0}, Lit;->e(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, p2, v0, p3}, Lgj$a;->c(ILjava/lang/Object;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lgj;->l(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public t()V
    .locals 4

    iget-object v0, p0, Lgj;->b:Lpj;

    invoke-interface {v0}, Lpj;->getProvisionRequest()Lpj$b;

    move-result-object v0

    iput-object v0, p0, Lgj;->u:Lpj$b;

    iget-object v0, p0, Lgj;->o:Lgj$a;

    invoke-static {v0}, Lnu;->g(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Lgj$a;

    iget-object v1, p0, Lgj;->u:Lpj$b;

    invoke-static {v1}, Lit;->e(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v1, v3}, Lgj$a;->c(ILjava/lang/Object;Z)V

    return-void
.end method

.method public u()V
    .locals 3

    iget v0, p0, Lgj;->m:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lgj;->m:I

    if-nez v0, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Lgj;->l:I

    iget-object v0, p0, Lgj;->k:Lgj$b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lgj;->o:Lgj$a;

    invoke-static {v0}, Lnu;->g(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Lgj$a;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v1, p0, Lgj;->o:Lgj$a;

    iget-object v0, p0, Lgj;->n:Landroid/os/HandlerThread;

    invoke-static {v0}, Lnu;->g(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    iput-object v1, p0, Lgj;->n:Landroid/os/HandlerThread;

    iput-object v1, p0, Lgj;->p:Loj;

    iput-object v1, p0, Lgj;->q:Llj$a;

    iput-object v1, p0, Lgj;->t:Lpj$a;

    iput-object v1, p0, Lgj;->u:Lpj$b;

    iget-object v0, p0, Lgj;->r:[B

    if-eqz v0, :cond_0

    iget-object v2, p0, Lgj;->b:Lpj;

    invoke-interface {v2, v0}, Lpj;->closeSession([B)V

    iput-object v1, p0, Lgj;->r:[B

    iget-object v0, p0, Lgj;->g:Lnt;

    sget-object v1, Laj;->a:Lnt$a;

    invoke-virtual {v0, v1}, Lnt;->b(Lnt$a;)V

    :cond_0
    iget-object v0, p0, Lgj;->d:Lgj$d;

    invoke-interface {v0, p0}, Lgj$d;->a(Lgj;)V

    :cond_1
    return-void
.end method

.method public final v()Z
    .locals 3
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "sessionId",
            "offlineLicenseKeySetId"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lgj;->b:Lpj;

    iget-object v1, p0, Lgj;->r:[B

    iget-object v2, p0, Lgj;->s:[B

    invoke-interface {v0, v1, v2}, Lpj;->restoreKeys([B[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    const-string v1, "DefaultDrmSession"

    const-string v2, "Error trying to restore Widevine keys."

    invoke-static {v1, v2, v0}, Lst;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lgj;->j(Ljava/lang/Exception;)V

    const/4 v0, 0x0

    return v0
.end method
