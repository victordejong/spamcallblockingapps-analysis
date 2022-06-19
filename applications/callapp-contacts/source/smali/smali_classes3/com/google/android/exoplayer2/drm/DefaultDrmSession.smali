.class final Lcom/google/android/exoplayer2/drm/DefaultDrmSession;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/drm/DrmSession;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/drm/DefaultDrmSession$d;,
        Lcom/google/android/exoplayer2/drm/DefaultDrmSession$c;,
        Lcom/google/android/exoplayer2/drm/DefaultDrmSession$e;,
        Lcom/google/android/exoplayer2/drm/DefaultDrmSession$b;,
        Lcom/google/android/exoplayer2/drm/DefaultDrmSession$a;,
        Lcom/google/android/exoplayer2/drm/DefaultDrmSession$UnexpectedDrmSessionException;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;",
            ">;"
        }
    .end annotation
.end field

.field final b:Lcom/google/android/exoplayer2/drm/i;

.field final c:Lcom/google/android/exoplayer2/drm/DefaultDrmSession$a;

.field final d:Lcom/google/android/exoplayer2/upstream/r;

.field final e:Lcom/google/android/exoplayer2/drm/m;

.field final f:Ljava/util/UUID;

.field final g:Lcom/google/android/exoplayer2/drm/DefaultDrmSession$e;

.field h:I

.field i:[B

.field j:Lcom/google/android/exoplayer2/drm/i$e;

.field private final k:Lcom/google/android/exoplayer2/drm/DefaultDrmSession$b;

.field private final l:I

.field private final m:Z

.field private final n:Z

.field private final o:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final p:Lcom/google/android/exoplayer2/util/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/util/h<",
            "Lcom/google/android/exoplayer2/drm/c$a;",
            ">;"
        }
    .end annotation
.end field

.field private q:I

.field private r:Landroid/os/HandlerThread;

.field private s:Lcom/google/android/exoplayer2/drm/DefaultDrmSession$c;

.field private t:Lcom/google/android/exoplayer2/drm/h;

.field private u:Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;

.field private v:[B

.field private w:Lcom/google/android/exoplayer2/drm/i$b;


# direct methods
.method public constructor <init>(Ljava/util/UUID;Lcom/google/android/exoplayer2/drm/i;Lcom/google/android/exoplayer2/drm/DefaultDrmSession$a;Lcom/google/android/exoplayer2/drm/DefaultDrmSession$b;Ljava/util/List;IZZ[BLjava/util/HashMap;Lcom/google/android/exoplayer2/drm/m;Landroid/os/Looper;Lcom/google/android/exoplayer2/upstream/r;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Lcom/google/android/exoplayer2/drm/i;",
            "Lcom/google/android/exoplayer2/drm/DefaultDrmSession$a;",
            "Lcom/google/android/exoplayer2/drm/DefaultDrmSession$b;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;",
            ">;IZZ[B",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/exoplayer2/drm/m;",
            "Landroid/os/Looper;",
            "Lcom/google/android/exoplayer2/upstream/r;",
            ")V"
        }
    .end annotation

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    if-eq p6, v0, :cond_0

    const/4 v0, 0x3

    if-ne p6, v0, :cond_1

    .line 184
    :cond_0
    invoke-static {p9}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    :cond_1
    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->f:Ljava/util/UUID;

    .line 187
    iput-object p3, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->c:Lcom/google/android/exoplayer2/drm/DefaultDrmSession$a;

    .line 188
    iput-object p4, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->k:Lcom/google/android/exoplayer2/drm/DefaultDrmSession$b;

    .line 189
    iput-object p2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->b:Lcom/google/android/exoplayer2/drm/i;

    .line 190
    iput p6, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->l:I

    .line 191
    iput-boolean p7, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->m:Z

    .line 192
    iput-boolean p8, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->n:Z

    if-eqz p9, :cond_2

    .line 194
    iput-object p9, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->v:[B

    const/4 p1, 0x0

    .line 195
    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->a:Ljava/util/List;

    goto :goto_0

    .line 197
    :cond_2
    invoke-static {p5}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->a:Ljava/util/List;

    .line 199
    :goto_0
    iput-object p10, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->o:Ljava/util/HashMap;

    .line 200
    iput-object p11, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->e:Lcom/google/android/exoplayer2/drm/m;

    .line 201
    new-instance p1, Lcom/google/android/exoplayer2/util/h;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/util/h;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->p:Lcom/google/android/exoplayer2/util/h;

    .line 202
    iput-object p13, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->d:Lcom/google/android/exoplayer2/upstream/r;

    const/4 p1, 0x2

    .line 203
    iput p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->h:I

    .line 204
    new-instance p1, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$e;

    invoke-direct {p1, p0, p12}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$e;-><init>(Lcom/google/android/exoplayer2/drm/DefaultDrmSession;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->g:Lcom/google/android/exoplayer2/drm/DefaultDrmSession$e;

    return-void
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/drm/DefaultDrmSession;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 2475
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->w:Lcom/google/android/exoplayer2/drm/i$b;

    if-ne p1, v0, :cond_5

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->i()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2479
    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->w:Lcom/google/android/exoplayer2/drm/i$b;

    .line 2481
    instance-of p1, p2, Ljava/lang/Exception;

    if-eqz p1, :cond_1

    .line 2482
    check-cast p2, Ljava/lang/Exception;

    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->b(Ljava/lang/Exception;)V

    return-void

    .line 2487
    :cond_1
    :try_start_0
    check-cast p2, [B

    .line 2488
    iget p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->l:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 2489
    iget-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->b:Lcom/google/android/exoplayer2/drm/i;

    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->v:[B

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-interface {p1, v0, p2}, Lcom/google/android/exoplayer2/drm/i;->a([B[B)[B

    .line 2490
    sget-object p1, Lcom/google/android/exoplayer2/drm/-$$Lambda$VZ6A8KvuSL1-iB-UH1zS4FgEQRQ;->INSTANCE:Lcom/google/android/exoplayer2/drm/-$$Lambda$VZ6A8KvuSL1-iB-UH1zS4FgEQRQ;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->a(Lcom/google/android/exoplayer2/util/g;)V

    return-void

    .line 2492
    :cond_2
    iget-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->b:Lcom/google/android/exoplayer2/drm/i;

    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->i:[B

    invoke-interface {p1, v0, p2}, Lcom/google/android/exoplayer2/drm/i;->a([B[B)[B

    move-result-object p1

    .line 2493
    iget p2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->l:I

    const/4 v0, 0x2

    if-eq p2, v0, :cond_3

    if-nez p2, :cond_4

    iget-object p2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->v:[B

    if-eqz p2, :cond_4

    :cond_3
    if-eqz p1, :cond_4

    array-length p2, p1

    if-eqz p2, :cond_4

    .line 2498
    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->v:[B

    :cond_4
    const/4 p1, 0x4

    .line 2500
    iput p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->h:I

    .line 2501
    sget-object p1, Lcom/google/android/exoplayer2/drm/-$$Lambda$iT40BaC8R1C1PudyXRQOrznapKo;->INSTANCE:Lcom/google/android/exoplayer2/drm/-$$Lambda$iT40BaC8R1C1PudyXRQOrznapKo;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->a(Lcom/google/android/exoplayer2/util/g;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2504
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->b(Ljava/lang/Exception;)V

    :cond_5
    :goto_0
    return-void
.end method

.method private a(Lcom/google/android/exoplayer2/util/g;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/util/g<",
            "Lcom/google/android/exoplayer2/drm/c$a;",
            ">;)V"
        }
    .end annotation

    .line 538
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->p:Lcom/google/android/exoplayer2/util/h;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/h;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/drm/c$a;

    .line 539
    invoke-interface {p1, v1}, Lcom/google/android/exoplayer2/util/g;->accept(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static synthetic a(Ljava/lang/Exception;Lcom/google/android/exoplayer2/drm/c$a;)V
    .locals 0

    .line 525
    invoke-virtual {p1, p0}, Lcom/google/android/exoplayer2/drm/c$a;->a(Ljava/lang/Exception;)V

    return-void
.end method

.method private a([BIZ)V
    .locals 3

    .line 466
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->b:Lcom/google/android/exoplayer2/drm/i;

    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->a:Ljava/util/List;

    iget-object v2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->o:Ljava/util/HashMap;

    invoke-interface {v0, p1, v1, p2, v2}, Lcom/google/android/exoplayer2/drm/i;->a([BLjava/util/List;ILjava/util/HashMap;)Lcom/google/android/exoplayer2/drm/i$b;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->w:Lcom/google/android/exoplayer2/drm/i$b;

    .line 467
    iget-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->s:Lcom/google/android/exoplayer2/drm/DefaultDrmSession$c;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$c;

    const/4 p2, 0x1

    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->w:Lcom/google/android/exoplayer2/drm/i$b;

    .line 468
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, p2, v0, p3}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$c;->a(ILjava/lang/Object;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 470
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->b(Ljava/lang/Exception;)V

    return-void
.end method

.method private a(Z)Z
    .locals 3
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNullIf;
        expression = {
            "sessionId"
        }
        result = true
    .end annotation

    .line 348
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->i()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 354
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->b:Lcom/google/android/exoplayer2/drm/i;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/drm/i;->a()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->i:[B

    .line 355
    iget-object v2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->b:Lcom/google/android/exoplayer2/drm/i;

    invoke-interface {v2, v0}, Lcom/google/android/exoplayer2/drm/i;->d([B)Lcom/google/android/exoplayer2/drm/h;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->t:Lcom/google/android/exoplayer2/drm/h;

    .line 356
    sget-object v0, Lcom/google/android/exoplayer2/drm/-$$Lambda$AgZw6lXSM3NelSMijejozKdVtsY;->INSTANCE:Lcom/google/android/exoplayer2/drm/-$$Lambda$AgZw6lXSM3NelSMijejozKdVtsY;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->a(Lcom/google/android/exoplayer2/util/g;)V

    const/4 v0, 0x3

    .line 357
    iput v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->h:I

    .line 358
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->i:[B

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/media/NotProvisionedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception p1

    .line 367
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->c(Ljava/lang/Exception;)V

    goto :goto_0

    :catch_1
    move-exception v0

    if-eqz p1, :cond_1

    .line 362
    iget-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->c:Lcom/google/android/exoplayer2/drm/DefaultDrmSession$a;

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$a;->a(Lcom/google/android/exoplayer2/drm/DefaultDrmSession;)V

    goto :goto_0

    .line 364
    :cond_1
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->c(Ljava/lang/Exception;)V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private b(Ljava/lang/Exception;)V
    .locals 1

    .line 516
    instance-of v0, p1, Landroid/media/NotProvisionedException;

    if-eqz v0, :cond_0

    .line 517
    iget-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->c:Lcom/google/android/exoplayer2/drm/DefaultDrmSession$a;

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$a;->a(Lcom/google/android/exoplayer2/drm/DefaultDrmSession;)V

    return-void

    .line 519
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->c(Ljava/lang/Exception;)V

    return-void
.end method

.method private b(Z)V
    .locals 8
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "sessionId"
        }
    .end annotation

    .line 397
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->n:Z

    if-eqz v0, :cond_0

    return-void

    .line 400
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->i:[B

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 401
    iget v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->l:I

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eqz v1, :cond_4

    if-eq v1, v2, :cond_4

    if-eq v1, v3, :cond_2

    const/4 v0, 0x3

    if-eq v1, v0, :cond_1

    goto :goto_0

    .line 430
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->v:[B

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->i:[B

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    invoke-direct {p0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->j()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 435
    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->v:[B

    invoke-direct {p0, v1, v0, p1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->a([BIZ)V

    goto :goto_0

    .line 425
    :cond_2
    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->v:[B

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->j()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 426
    :cond_3
    invoke-direct {p0, v0, v3, p1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->a([BIZ)V

    return-void

    .line 404
    :cond_4
    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->v:[B

    if-nez v1, :cond_5

    .line 405
    invoke-direct {p0, v0, v2, p1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->a([BIZ)V

    return-void

    .line 406
    :cond_5
    iget v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->h:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_7

    invoke-direct {p0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->j()Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_1

    :cond_6
    :goto_0
    return-void

    .line 407
    :cond_7
    :goto_1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->k()J

    move-result-wide v4

    .line 408
    iget v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->l:I

    if-nez v1, :cond_8

    const-wide/16 v6, 0x3c

    cmp-long v1, v4, v6

    if-gtz v1, :cond_8

    .line 410
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Offline license has expired or will expire soon. Remaining seconds: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lcom/google/android/exoplayer2/util/n;->a()V

    .line 415
    invoke-direct {p0, v0, v3, p1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->a([BIZ)V

    return-void

    :cond_8
    const-wide/16 v0, 0x0

    cmp-long p1, v4, v0

    if-gtz p1, :cond_9

    .line 417
    new-instance p1, Lcom/google/android/exoplayer2/drm/KeysExpiredException;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/drm/KeysExpiredException;-><init>()V

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->c(Ljava/lang/Exception;)V

    return-void

    .line 419
    :cond_9
    iput v2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->h:I

    .line 420
    sget-object p1, Lcom/google/android/exoplayer2/drm/-$$Lambda$U8qeknleCxFbK-h3oaMhp6RiXnU;->INSTANCE:Lcom/google/android/exoplayer2/drm/-$$Lambda$U8qeknleCxFbK-h3oaMhp6RiXnU;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->a(Lcom/google/android/exoplayer2/util/g;)V

    return-void
.end method

.method private c(Ljava/lang/Exception;)V
    .locals 1

    .line 524
    new-instance v0, Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;-><init>(Ljava/lang/Throwable;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->u:Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;

    .line 525
    new-instance v0, Lcom/google/android/exoplayer2/drm/-$$Lambda$DefaultDrmSession$RctFRSBQW9Uk48uBibAqq4BGsyk;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/drm/-$$Lambda$DefaultDrmSession$RctFRSBQW9Uk48uBibAqq4BGsyk;-><init>(Ljava/lang/Exception;)V

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->a(Lcom/google/android/exoplayer2/util/g;)V

    .line 526
    iget p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->h:I

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    .line 527
    iput p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->h:I

    :cond_0
    return-void
.end method

.method private j()Z
    .locals 3
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "sessionId",
            "offlineLicenseKeySetId"
        }
    .end annotation

    .line 446
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->b:Lcom/google/android/exoplayer2/drm/i;

    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->i:[B

    iget-object v2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->v:[B

    invoke-interface {v0, v1, v2}, Lcom/google/android/exoplayer2/drm/i;->b([B[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    const-string v1, "DefaultDrmSession"

    const-string v2, "Error trying to restore keys."

    .line 449
    invoke-static {v1, v2, v0}, Lcom/google/android/exoplayer2/util/n;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 450
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->c(Ljava/lang/Exception;)V

    const/4 v0, 0x0

    return v0
.end method

.method private k()J
    .locals 5

    .line 456
    sget-object v0, Lcom/google/android/exoplayer2/f;->d:Ljava/util/UUID;

    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->f:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    return-wide v0

    .line 460
    :cond_0
    invoke-static {p0}, Lcom/google/android/exoplayer2/drm/o;->a(Lcom/google/android/exoplayer2/drm/DrmSession;)Landroid/util/Pair;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 461
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

.method public static synthetic lambda$RctFRSBQW9Uk48uBibAqq4BGsyk(Ljava/lang/Exception;Lcom/google/android/exoplayer2/drm/c$a;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->a(Ljava/lang/Exception;Lcom/google/android/exoplayer2/drm/c$a;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 224
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->b:Lcom/google/android/exoplayer2/drm/i;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/drm/i;->b()Lcom/google/android/exoplayer2/drm/i$e;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->j:Lcom/google/android/exoplayer2/drm/i$e;

    .line 225
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->s:Lcom/google/android/exoplayer2/drm/DefaultDrmSession$c;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$c;

    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->j:Lcom/google/android/exoplayer2/drm/i$e;

    .line 228
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 226
    invoke-virtual {v0, v2, v1, v3}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$c;->a(ILjava/lang/Object;Z)V

    return-void
.end method

.method public final a(I)V
    .locals 1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1509
    :cond_0
    iget p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->l:I

    if-nez p1, :cond_1

    iget p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->h:I

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 1510
    iget-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->i:[B

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    .line 1511
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->b(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/drm/c$a;)V
    .locals 7

    .line 284
    iget v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->q:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    if-eqz p1, :cond_3

    .line 286
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->p:Lcom/google/android/exoplayer2/util/h;

    .line 2072
    iget-object v3, v0, Lcom/google/android/exoplayer2/util/h;->a:Ljava/lang/Object;

    monitor-enter v3

    .line 2073
    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, v0, Lcom/google/android/exoplayer2/util/h;->d:Ljava/util/List;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2074
    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2075
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iput-object v4, v0, Lcom/google/android/exoplayer2/util/h;->d:Ljava/util/List;

    .line 2077
    iget-object v4, v0, Lcom/google/android/exoplayer2/util/h;->b:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-nez v4, :cond_1

    .line 2079
    new-instance v5, Ljava/util/HashSet;

    iget-object v6, v0, Lcom/google/android/exoplayer2/util/h;->c:Ljava/util/Set;

    invoke-direct {v5, v6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 2080
    invoke-interface {v5, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2081
    invoke-static {v5}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v5

    iput-object v5, v0, Lcom/google/android/exoplayer2/util/h;->c:Ljava/util/Set;

    .line 2083
    :cond_1
    iget-object v0, v0, Lcom/google/android/exoplayer2/util/h;->b:Ljava/util/Map;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/2addr v4, v2

    goto :goto_1

    :cond_2
    const/4 v4, 0x1

    :goto_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2084
    monitor-exit v3

    goto :goto_2

    :catchall_0
    move-exception p1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 288
    :cond_3
    :goto_2
    iget v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->q:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->q:I

    if-ne v0, v2, :cond_5

    .line 289
    iget p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->h:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_4

    const/4 v1, 0x1

    :cond_4
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 290
    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "ExoPlayer:DrmRequestHandler"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->r:Landroid/os/HandlerThread;

    .line 291
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 292
    new-instance p1, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$c;

    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->r:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$c;-><init>(Lcom/google/android/exoplayer2/drm/DefaultDrmSession;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->s:Lcom/google/android/exoplayer2/drm/DefaultDrmSession$c;

    .line 293
    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->a(Z)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 294
    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->b(Z)V

    goto :goto_3

    :cond_5
    if-eqz p1, :cond_6

    .line 296
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->i()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 300
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/drm/c$a;->a()V

    .line 302
    :cond_6
    :goto_3
    iget-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->k:Lcom/google/android/exoplayer2/drm/DefaultDrmSession$b;

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$b;->a(Lcom/google/android/exoplayer2/drm/DefaultDrmSession;)V

    return-void
.end method

.method public final a(Ljava/lang/Exception;)V
    .locals 0

    .line 239
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->c(Ljava/lang/Exception;)V

    return-void
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x0

    .line 233
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 234
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->b(Z)V

    :cond_0
    return-void
.end method

.method public final b(Lcom/google/android/exoplayer2/drm/c$a;)V
    .locals 6

    .line 307
    iget v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->q:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 308
    iget v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->q:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->q:I

    if-nez v0, :cond_2

    .line 310
    iput v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->h:I

    .line 311
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->g:Lcom/google/android/exoplayer2/drm/DefaultDrmSession$e;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$e;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$e;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 312
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->s:Lcom/google/android/exoplayer2/drm/DefaultDrmSession$c;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$c;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$c;->a()V

    .line 313
    iput-object v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->s:Lcom/google/android/exoplayer2/drm/DefaultDrmSession$c;

    .line 314
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->r:Landroid/os/HandlerThread;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 315
    iput-object v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->r:Landroid/os/HandlerThread;

    .line 316
    iput-object v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->t:Lcom/google/android/exoplayer2/drm/h;

    .line 317
    iput-object v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->u:Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;

    .line 318
    iput-object v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->w:Lcom/google/android/exoplayer2/drm/i$b;

    .line 319
    iput-object v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->j:Lcom/google/android/exoplayer2/drm/i$e;

    .line 320
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->i:[B

    if-eqz v0, :cond_1

    .line 321
    iget-object v3, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->b:Lcom/google/android/exoplayer2/drm/i;

    invoke-interface {v3, v0}, Lcom/google/android/exoplayer2/drm/i;->a([B)V

    .line 322
    iput-object v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->i:[B

    .line 324
    :cond_1
    sget-object v0, Lcom/google/android/exoplayer2/drm/-$$Lambda$S7cFD2HB3LdrN5vmqtj_IkU8VZ0;->INSTANCE:Lcom/google/android/exoplayer2/drm/-$$Lambda$S7cFD2HB3LdrN5vmqtj_IkU8VZ0;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->a(Lcom/google/android/exoplayer2/util/g;)V

    :cond_2
    if-eqz p1, :cond_6

    .line 327
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->i()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 330
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/drm/c$a;->e()V

    .line 332
    :cond_3
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->p:Lcom/google/android/exoplayer2/util/h;

    .line 2093
    iget-object v1, v0, Lcom/google/android/exoplayer2/util/h;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 2094
    :try_start_0
    iget-object v3, v0, Lcom/google/android/exoplayer2/util/h;->b:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-nez v3, :cond_4

    .line 2096
    monitor-exit v1

    goto :goto_2

    .line 2099
    :cond_4
    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, v0, Lcom/google/android/exoplayer2/util/h;->d:Ljava/util/List;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2100
    invoke-interface {v4, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2101
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iput-object v4, v0, Lcom/google/android/exoplayer2/util/h;->d:Ljava/util/List;

    .line 2103
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v2, :cond_5

    .line 2104
    iget-object v2, v0, Lcom/google/android/exoplayer2/util/h;->b:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2105
    new-instance v2, Ljava/util/HashSet;

    iget-object v3, v0, Lcom/google/android/exoplayer2/util/h;->c:Ljava/util/Set;

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 2106
    invoke-interface {v2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2107
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, v0, Lcom/google/android/exoplayer2/util/h;->c:Ljava/util/Set;

    goto :goto_1

    .line 2109
    :cond_5
    iget-object v0, v0, Lcom/google/android/exoplayer2/util/h;->b:Ljava/util/Map;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2111
    :goto_1
    monitor-exit v1

    goto :goto_2

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 334
    :cond_6
    :goto_2
    iget-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->k:Lcom/google/android/exoplayer2/drm/DefaultDrmSession$b;

    iget v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->q:I

    invoke-interface {p1, p0, v0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$b;->a(Lcom/google/android/exoplayer2/drm/DefaultDrmSession;I)V

    return-void
.end method

.method public final c()I
    .locals 1

    .line 247
    iget v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->h:I

    return v0
.end method

.method public final d()Z
    .locals 1

    .line 252
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->m:Z

    return v0
.end method

.method public final e()Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;
    .locals 2

    .line 257
    iget v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->h:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->u:Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final f()Ljava/util/UUID;
    .locals 1

    .line 262
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->f:Ljava/util/UUID;

    return-object v0
.end method

.method public final g()Lcom/google/android/exoplayer2/drm/h;
    .locals 1

    .line 267
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->t:Lcom/google/android/exoplayer2/drm/h;

    return-object v0
.end method

.method public final h()Ljava/util/Map;
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

    .line 273
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->i:[B

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->b:Lcom/google/android/exoplayer2/drm/i;

    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/drm/i;->c([B)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method final i()Z
    .locals 2
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNullIf;
        expression = {
            "sessionId"
        }
        result = true
    .end annotation

    .line 534
    iget v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->h:I

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
