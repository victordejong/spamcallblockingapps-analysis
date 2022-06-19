.class public final Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/exoplayer/external/drm/DrmSession;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$d;,
        Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$c;,
        Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$e;,
        Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$b;,
        Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$a;,
        Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$UnexpectedDrmSessionException;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroidx/media2/exoplayer/external/drm/m;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/media2/exoplayer/external/drm/DrmSession<",
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

.field final b:Landroidx/media2/exoplayer/external/drm/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media2/exoplayer/external/drm/n<",
            "TT;>;"
        }
    .end annotation
.end field

.field final c:Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$a<",
            "TT;>;"
        }
    .end annotation
.end field

.field final d:I

.field final e:Landroidx/media2/exoplayer/external/util/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media2/exoplayer/external/util/f<",
            "Landroidx/media2/exoplayer/external/drm/g;",
            ">;"
        }
    .end annotation
.end field

.field final f:Landroidx/media2/exoplayer/external/upstream/t;

.field final g:Landroidx/media2/exoplayer/external/drm/p;

.field final h:Ljava/util/UUID;

.field final i:Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media2/exoplayer/external/drm/DefaultDrmSession<",
            "TT;>.e;"
        }
    .end annotation
.end field

.field j:I

.field k:[B

.field l:[B

.field m:Landroidx/media2/exoplayer/external/drm/n$a;

.field n:Landroidx/media2/exoplayer/external/drm/n$b;

.field private final o:Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$b<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final p:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private q:I

.field private r:Landroid/os/HandlerThread;

.field private s:Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media2/exoplayer/external/drm/DefaultDrmSession<",
            "TT;>.c;"
        }
    .end annotation
.end field

.field private t:Landroidx/media2/exoplayer/external/drm/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private u:Landroidx/media2/exoplayer/external/drm/DrmSession$DrmSessionException;


# direct methods
.method public constructor <init>(Ljava/util/UUID;Landroidx/media2/exoplayer/external/drm/n;Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$a;Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$b;Ljava/util/List;I[BLjava/util/HashMap;Landroidx/media2/exoplayer/external/drm/p;Landroid/os/Looper;Landroidx/media2/exoplayer/external/util/f;Landroidx/media2/exoplayer/external/upstream/t;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Landroidx/media2/exoplayer/external/drm/n<",
            "TT;>;",
            "Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$a<",
            "TT;>;",
            "Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$b<",
            "TT;>;",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;",
            ">;I[B",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroidx/media2/exoplayer/external/drm/p;",
            "Landroid/os/Looper;",
            "Landroidx/media2/exoplayer/external/util/f<",
            "Landroidx/media2/exoplayer/external/drm/g;",
            ">;",
            "Landroidx/media2/exoplayer/external/upstream/t;",
            ")V"
        }
    .end annotation

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    if-eq p6, v0, :cond_0

    const/4 v0, 0x3

    if-ne p6, v0, :cond_1

    .line 171
    :cond_0
    invoke-static {p7}, Landroidx/media2/exoplayer/external/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    :cond_1
    iput-object p1, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->h:Ljava/util/UUID;

    .line 174
    iput-object p3, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->c:Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$a;

    .line 175
    iput-object p4, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->o:Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$b;

    .line 176
    iput-object p2, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->b:Landroidx/media2/exoplayer/external/drm/n;

    .line 177
    iput p6, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->d:I

    if-eqz p7, :cond_2

    .line 179
    iput-object p7, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->l:[B

    const/4 p1, 0x0

    .line 180
    iput-object p1, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->a:Ljava/util/List;

    goto :goto_0

    .line 182
    :cond_2
    invoke-static {p5}, Landroidx/media2/exoplayer/external/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->a:Ljava/util/List;

    .line 184
    :goto_0
    iput-object p8, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->p:Ljava/util/HashMap;

    .line 185
    iput-object p9, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->g:Landroidx/media2/exoplayer/external/drm/p;

    .line 186
    iput-object p11, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->e:Landroidx/media2/exoplayer/external/util/f;

    .line 187
    iput-object p12, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->f:Landroidx/media2/exoplayer/external/upstream/t;

    const/4 p1, 0x2

    .line 188
    iput p1, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->j:I

    .line 189
    new-instance p1, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$e;

    invoke-direct {p1, p0, p10}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$e;-><init>(Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;Landroid/os/Looper;)V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->i:Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$e;

    return-void
.end method

.method private c(Z)V
    .locals 3

    .line 424
    :try_start_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->b:Landroidx/media2/exoplayer/external/drm/n;

    .line 425
    invoke-interface {v0}, Landroidx/media2/exoplayer/external/drm/n;->b()Landroidx/media2/exoplayer/external/drm/n$a;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->m:Landroidx/media2/exoplayer/external/drm/n$a;

    .line 426
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->s:Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$c;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/ac;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$c;

    const/4 v1, 0x1

    iget-object v2, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->m:Landroidx/media2/exoplayer/external/drm/n$a;

    .line 427
    invoke-static {v2}, Landroidx/media2/exoplayer/external/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$c;->a(ILjava/lang/Object;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 429
    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->a(Ljava/lang/Exception;)V

    return-void
.end method

.method private i()J
    .locals 5

    .line 414
    sget-object v0, Landroidx/media2/exoplayer/external/c;->d:Ljava/util/UUID;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->h:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    return-wide v0

    .line 418
    :cond_0
    invoke-static {p0}, Landroidx/media2/exoplayer/external/drm/q;->a(Landroidx/media2/exoplayer/external/drm/DrmSession;)Landroid/util/Pair;

    move-result-object v0

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 419
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


# virtual methods
.method public final a()V
    .locals 4

    .line 209
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->b:Landroidx/media2/exoplayer/external/drm/n;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/drm/n;->d()Landroidx/media2/exoplayer/external/drm/n$b;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->n:Landroidx/media2/exoplayer/external/drm/n$b;

    .line 210
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->s:Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$c;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/ac;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$c;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->n:Landroidx/media2/exoplayer/external/drm/n$b;

    .line 213
    invoke-static {v1}, Landroidx/media2/exoplayer/external/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 211
    invoke-virtual {v0, v2, v1, v3}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$c;->a(ILjava/lang/Object;Z)V

    return-void
.end method

.method final a(Ljava/lang/Exception;)V
    .locals 1

    .line 475
    instance-of v0, p1, Landroid/media/NotProvisionedException;

    if-eqz v0, :cond_0

    .line 476
    iget-object p1, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->c:Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$a;

    invoke-interface {p1, p0}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$a;->a(Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;)V

    return-void

    .line 478
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->b(Ljava/lang/Exception;)V

    return-void
.end method

.method final a(Z)Z
    .locals 3
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNullIf;
        expression = {
            "sessionId"
        }
        result = true
    .end annotation

    .line 304
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->h()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 310
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->b:Landroidx/media2/exoplayer/external/drm/n;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/drm/n;->a()[B

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->k:[B

    .line 311
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->b:Landroidx/media2/exoplayer/external/drm/n;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/drm/n;->f()Landroidx/media2/exoplayer/external/drm/m;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->t:Landroidx/media2/exoplayer/external/drm/m;

    .line 312
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->e:Landroidx/media2/exoplayer/external/util/f;

    sget-object v2, Landroidx/media2/exoplayer/external/drm/b;->a:Landroidx/media2/exoplayer/external/util/f$a;

    invoke-virtual {v0, v2}, Landroidx/media2/exoplayer/external/util/f;->a(Landroidx/media2/exoplayer/external/util/f$a;)V

    const/4 v0, 0x3

    .line 313
    iput v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->j:I

    .line 314
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->k:[B

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/media/NotProvisionedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception p1

    .line 323
    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->b(Ljava/lang/Exception;)V

    goto :goto_0

    :catch_1
    move-exception v0

    if-eqz p1, :cond_1

    .line 318
    iget-object p1, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->c:Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$a;

    invoke-interface {p1, p0}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$a;->a(Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;)V

    goto :goto_0

    .line 320
    :cond_1
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->b(Ljava/lang/Exception;)V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final b()I
    .locals 1

    .line 232
    iget v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->j:I

    return v0
.end method

.method final b(Ljava/lang/Exception;)V
    .locals 2

    .line 483
    new-instance v0, Landroidx/media2/exoplayer/external/drm/DrmSession$DrmSessionException;

    invoke-direct {v0, p1}, Landroidx/media2/exoplayer/external/drm/DrmSession$DrmSessionException;-><init>(Ljava/lang/Throwable;)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->u:Landroidx/media2/exoplayer/external/drm/DrmSession$DrmSessionException;

    .line 484
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->e:Landroidx/media2/exoplayer/external/util/f;

    new-instance v1, Landroidx/media2/exoplayer/external/drm/f;

    invoke-direct {v1, p1}, Landroidx/media2/exoplayer/external/drm/f;-><init>(Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/util/f;->a(Landroidx/media2/exoplayer/external/util/f$a;)V

    .line 485
    iget p1, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->j:I

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    .line 486
    iput p1, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->j:I

    :cond_0
    return-void
.end method

.method final b(Z)V
    .locals 5
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "sessionId"
        }
    .end annotation

    .line 353
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->k:[B

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/ac;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    iget v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->d:I

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 388
    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->l:[B

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->k:[B

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->c(Z)V

    :goto_0
    return-void

    .line 378
    :cond_1
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->l:[B

    if-nez v0, :cond_2

    .line 379
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->c(Z)V

    return-void

    .line 383
    :cond_2
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->c(Z)V

    return-void

    .line 357
    :cond_3
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->l:[B

    if-nez v0, :cond_4

    .line 358
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->c(Z)V

    return-void

    .line 360
    :cond_4
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->i()J

    move-result-wide v0

    .line 361
    iget v2, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->d:I

    if-nez v2, :cond_5

    const-wide/16 v2, 0x3c

    cmp-long v4, v0, v2

    if-gtz v4, :cond_5

    const/16 v2, 0x58

    .line 363
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Offline license has expired or will expire soon. Remaining seconds: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-static {}, Landroidx/media2/exoplayer/external/util/j;->a()V

    .line 368
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->c(Z)V

    return-void

    :cond_5
    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-gtz p1, :cond_6

    .line 370
    new-instance p1, Landroidx/media2/exoplayer/external/drm/KeysExpiredException;

    invoke-direct {p1}, Landroidx/media2/exoplayer/external/drm/KeysExpiredException;-><init>()V

    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->b(Ljava/lang/Exception;)V

    return-void

    :cond_6
    const/4 p1, 0x4

    .line 372
    iput p1, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->j:I

    .line 373
    iget-object p1, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->e:Landroidx/media2/exoplayer/external/util/f;

    sget-object v0, Landroidx/media2/exoplayer/external/drm/c;->a:Landroidx/media2/exoplayer/external/util/f$a;

    invoke-virtual {p1, v0}, Landroidx/media2/exoplayer/external/util/f;->a(Landroidx/media2/exoplayer/external/util/f$a;)V

    return-void
.end method

.method public final c()Landroidx/media2/exoplayer/external/drm/DrmSession$DrmSessionException;
    .locals 2

    .line 237
    iget v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->j:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->u:Landroidx/media2/exoplayer/external/drm/DrmSession$DrmSessionException;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final d()Landroidx/media2/exoplayer/external/drm/m;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 242
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->t:Landroidx/media2/exoplayer/external/drm/m;

    return-object v0
.end method

.method public final e()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 248
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->k:[B

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->b:Landroidx/media2/exoplayer/external/drm/n;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/drm/n;->e()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final f()V
    .locals 3

    .line 259
    iget v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->q:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->q:I

    if-ne v0, v1, :cond_1

    .line 260
    iget v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->j:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/a;->b(Z)V

    .line 261
    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "DrmRequestHandler"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->r:Landroid/os/HandlerThread;

    .line 262
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 263
    new-instance v0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$c;

    iget-object v2, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->r:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$c;-><init>(Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;Landroid/os/Looper;)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->s:Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$c;

    .line 264
    invoke-virtual {p0, v1}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 265
    invoke-virtual {p0, v1}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->b(Z)V

    :cond_1
    return-void
.end method

.method public final g()V
    .locals 2

    .line 272
    iget v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->q:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->q:I

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 274
    iput v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->j:I

    .line 275
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->i:Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$e;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/ac;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$e;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$e;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 276
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->s:Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$c;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/ac;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$c;

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$c;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 277
    iput-object v1, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->s:Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$c;

    .line 278
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->r:Landroid/os/HandlerThread;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/ac;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 279
    iput-object v1, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->r:Landroid/os/HandlerThread;

    .line 280
    iput-object v1, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->t:Landroidx/media2/exoplayer/external/drm/m;

    .line 281
    iput-object v1, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->u:Landroidx/media2/exoplayer/external/drm/DrmSession$DrmSessionException;

    .line 282
    iput-object v1, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->m:Landroidx/media2/exoplayer/external/drm/n$a;

    .line 283
    iput-object v1, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->n:Landroidx/media2/exoplayer/external/drm/n$b;

    .line 284
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->k:[B

    if-eqz v0, :cond_0

    .line 286
    iput-object v1, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->k:[B

    .line 287
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->e:Landroidx/media2/exoplayer/external/util/f;

    sget-object v1, Landroidx/media2/exoplayer/external/drm/a;->a:Landroidx/media2/exoplayer/external/util/f$a;

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/util/f;->a(Landroidx/media2/exoplayer/external/util/f$a;)V

    .line 289
    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->o:Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$b;

    invoke-interface {v0, p0}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$b;->a(Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;)V

    :cond_1
    return-void
.end method

.method final h()Z
    .locals 2
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNullIf;
        expression = {
            "sessionId"
        }
        result = true
    .end annotation

    .line 493
    iget v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->j:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method
