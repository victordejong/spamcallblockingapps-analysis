.class public final Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$a;
.implements Landroidx/media2/exoplayer/external/drm/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager$a;,
        Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager$b;,
        Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager$MissingSchemeDataException;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroidx/media2/exoplayer/external/drm/m;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$a<",
        "TT;>;",
        "Landroidx/media2/exoplayer/external/drm/k<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Landroidx/media2/exoplayer/external/util/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media2/exoplayer/external/util/f<",
            "Landroidx/media2/exoplayer/external/drm/g;",
            ">;"
        }
    .end annotation
.end field

.field final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/drm/DefaultDrmSession<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/drm/DefaultDrmSession<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field volatile d:Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager<",
            "TT;>.b;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/UUID;

.field private final g:Landroidx/media2/exoplayer/external/drm/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media2/exoplayer/external/drm/n<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final h:Landroidx/media2/exoplayer/external/drm/p;

.field private final i:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Z

.field private final k:Landroidx/media2/exoplayer/external/upstream/t;

.field private l:Landroid/os/Looper;

.field private m:I

.field private n:[B


# direct methods
.method public constructor <init>(Ljava/util/UUID;Landroidx/media2/exoplayer/external/drm/n;Landroidx/media2/exoplayer/external/drm/p;Ljava/util/HashMap;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Landroidx/media2/exoplayer/external/drm/n<",
            "TT;>;",
            "Landroidx/media2/exoplayer/external/drm/p;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v6, 0x3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 186
    invoke-direct/range {v0 .. v6}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;-><init>(Ljava/util/UUID;Landroidx/media2/exoplayer/external/drm/n;Landroidx/media2/exoplayer/external/drm/p;Ljava/util/HashMap;ZI)V

    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;Landroidx/media2/exoplayer/external/drm/n;Landroidx/media2/exoplayer/external/drm/p;Ljava/util/HashMap;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Landroidx/media2/exoplayer/external/drm/n<",
            "TT;>;",
            "Landroidx/media2/exoplayer/external/drm/p;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    const/4 v6, 0x3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 210
    invoke-direct/range {v0 .. v6}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;-><init>(Ljava/util/UUID;Landroidx/media2/exoplayer/external/drm/n;Landroidx/media2/exoplayer/external/drm/p;Ljava/util/HashMap;ZI)V

    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;Landroidx/media2/exoplayer/external/drm/n;Landroidx/media2/exoplayer/external/drm/p;Ljava/util/HashMap;ZI)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Landroidx/media2/exoplayer/external/drm/n<",
            "TT;>;",
            "Landroidx/media2/exoplayer/external/drm/p;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;ZI)V"
        }
    .end annotation

    .line 237
    new-instance v6, Landroidx/media2/exoplayer/external/upstream/q;

    invoke-direct {v6, p6}, Landroidx/media2/exoplayer/external/upstream/q;-><init>(I)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;-><init>(Ljava/util/UUID;Landroidx/media2/exoplayer/external/drm/n;Landroidx/media2/exoplayer/external/drm/p;Ljava/util/HashMap;ZLandroidx/media2/exoplayer/external/upstream/t;)V

    return-void
.end method

.method private constructor <init>(Ljava/util/UUID;Landroidx/media2/exoplayer/external/drm/n;Landroidx/media2/exoplayer/external/drm/p;Ljava/util/HashMap;ZLandroidx/media2/exoplayer/external/upstream/t;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Landroidx/media2/exoplayer/external/drm/n<",
            "TT;>;",
            "Landroidx/media2/exoplayer/external/drm/p;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Landroidx/media2/exoplayer/external/upstream/t;",
            ")V"
        }
    .end annotation

    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 253
    invoke-static {p1}, Landroidx/media2/exoplayer/external/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    invoke-static {p2}, Landroidx/media2/exoplayer/external/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    sget-object v0, Landroidx/media2/exoplayer/external/c;->b:Ljava/util/UUID;

    invoke-virtual {v0, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Use C.CLEARKEY_UUID instead"

    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/util/a;->a(ZLjava/lang/Object;)V

    .line 256
    iput-object p1, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;->f:Ljava/util/UUID;

    .line 257
    iput-object p2, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;->g:Landroidx/media2/exoplayer/external/drm/n;

    .line 258
    iput-object p3, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;->h:Landroidx/media2/exoplayer/external/drm/p;

    .line 259
    iput-object p4, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;->i:Ljava/util/HashMap;

    .line 260
    new-instance p2, Landroidx/media2/exoplayer/external/util/f;

    invoke-direct {p2}, Landroidx/media2/exoplayer/external/util/f;-><init>()V

    iput-object p2, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;->a:Landroidx/media2/exoplayer/external/util/f;

    .line 261
    iput-boolean p5, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;->j:Z

    .line 262
    iput-object p6, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;->k:Landroidx/media2/exoplayer/external/upstream/t;

    const/4 p2, 0x0

    .line 263
    iput p2, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;->m:I

    .line 264
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;->b:Ljava/util/List;

    .line 265
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;->c:Ljava/util/List;

    if-eqz p5, :cond_0

    .line 266
    sget-object p2, Landroidx/media2/exoplayer/external/c;->d:Ljava/util/UUID;

    invoke-virtual {p2, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget p1, Landroidx/media2/exoplayer/external/util/ac;->a:I

    .line 273
    :cond_0
    new-instance p1, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager$a;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager$a;-><init>(Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager$1;)V

    return-void
.end method

.method static synthetic a(Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;)Ljava/util/List;
    .locals 0

    .line 55
    iget-object p0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;->b:Ljava/util/List;

    return-object p0
.end method

.method private static a(Landroidx/media2/exoplayer/external/drm/DrmInitData;Ljava/util/UUID;Z)Ljava/util/List;
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

    .line 527
    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Landroidx/media2/exoplayer/external/drm/DrmInitData;->schemeDataCount:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 528
    :goto_0
    iget v3, p0, Landroidx/media2/exoplayer/external/drm/DrmInitData;->schemeDataCount:I

    if-ge v2, v3, :cond_4

    .line 529
    invoke-virtual {p0, v2}, Landroidx/media2/exoplayer/external/drm/DrmInitData;->get(I)Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;

    move-result-object v3

    .line 531
    invoke-virtual {v3, p1}, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;->matches(Ljava/util/UUID;)Z

    move-result v4

    if-nez v4, :cond_1

    sget-object v4, Landroidx/media2/exoplayer/external/c;->c:Ljava/util/UUID;

    .line 532
    invoke-virtual {v4, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Landroidx/media2/exoplayer/external/c;->b:Ljava/util/UUID;

    invoke-virtual {v3, v4}, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;->matches(Ljava/util/UUID;)Z

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

    .line 533
    iget-object v4, v3, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;->data:[B

    if-nez v4, :cond_2

    if-eqz p2, :cond_3

    .line 534
    :cond_2
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method static final synthetic a(Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager$MissingSchemeDataException;Landroidx/media2/exoplayer/external/drm/g;)V
    .locals 0

    .line 424
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/drm/g;->i()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Looper;Landroidx/media2/exoplayer/external/drm/DrmInitData;)Landroidx/media2/exoplayer/external/drm/DrmSession;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "Landroidx/media2/exoplayer/external/drm/DrmInitData;",
            ")",
            "Landroidx/media2/exoplayer/external/drm/DrmSession<",
            "TT;>;"
        }
    .end annotation

    move-object v13, p0

    move-object/from16 v10, p1

    .line 411
    iget-object v0, v13, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;->l:Landroid/os/Looper;

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
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/a;->b(Z)V

    .line 412
    iget-object v0, v13, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 413
    iput-object v10, v13, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;->l:Landroid/os/Looper;

    .line 414
    iget-object v0, v13, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;->d:Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager$b;

    if-nez v0, :cond_2

    .line 415
    new-instance v0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager$b;

    invoke-direct {v0, p0, v10}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager$b;-><init>(Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;Landroid/os/Looper;)V

    iput-object v0, v13, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;->d:Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager$b;

    .line 420
    :cond_2
    iget-object v0, v13, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;->n:[B

    const/4 v2, 0x0

    if-nez v0, :cond_4

    .line 421
    iget-object v0, v13, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;->f:Ljava/util/UUID;

    move-object/from16 v3, p2

    invoke-static {v3, v0, v1}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;->a(Landroidx/media2/exoplayer/external/drm/DrmInitData;Ljava/util/UUID;Z)Ljava/util/List;

    move-result-object v0

    .line 422
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 423
    new-instance v0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager$MissingSchemeDataException;

    iget-object v1, v13, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;->f:Ljava/util/UUID;

    invoke-direct {v0, v1, v2}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager$MissingSchemeDataException;-><init>(Ljava/util/UUID;Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager$1;)V

    .line 424
    iget-object v1, v13, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;->a:Landroidx/media2/exoplayer/external/util/f;

    new-instance v2, Landroidx/media2/exoplayer/external/drm/h;

    invoke-direct {v2, v0}, Landroidx/media2/exoplayer/external/drm/h;-><init>(Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager$MissingSchemeDataException;)V

    invoke-virtual {v1, v2}, Landroidx/media2/exoplayer/external/util/f;->a(Landroidx/media2/exoplayer/external/util/f$a;)V

    .line 425
    new-instance v1, Landroidx/media2/exoplayer/external/drm/l;

    new-instance v2, Landroidx/media2/exoplayer/external/drm/DrmSession$DrmSessionException;

    invoke-direct {v2, v0}, Landroidx/media2/exoplayer/external/drm/DrmSession$DrmSessionException;-><init>(Ljava/lang/Throwable;)V

    invoke-direct {v1, v2}, Landroidx/media2/exoplayer/external/drm/l;-><init>(Landroidx/media2/exoplayer/external/drm/DrmSession$DrmSessionException;)V

    return-object v1

    :cond_3
    move-object v5, v0

    goto :goto_2

    :cond_4
    move-object v5, v2

    .line 430
    :goto_2
    iget-boolean v0, v13, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;->j:Z

    if-nez v0, :cond_6

    .line 431
    iget-object v0, v13, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_3

    :cond_5
    iget-object v0, v13, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;

    move-object v2, v0

    goto :goto_3

    .line 435
    :cond_6
    iget-object v0, v13, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;

    .line 436
    iget-object v3, v1, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->a:Ljava/util/List;

    invoke-static {v3, v5}, Landroidx/media2/exoplayer/external/util/ac;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    move-object v2, v1

    :cond_8
    :goto_3
    if-nez v2, :cond_9

    .line 445
    new-instance v14, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;

    iget-object v1, v13, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;->f:Ljava/util/UUID;

    iget-object v2, v13, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;->g:Landroidx/media2/exoplayer/external/drm/n;

    new-instance v4, Landroidx/media2/exoplayer/external/drm/i;

    invoke-direct {v4, p0}, Landroidx/media2/exoplayer/external/drm/i;-><init>(Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;)V

    iget v6, v13, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;->m:I

    iget-object v7, v13, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;->n:[B

    iget-object v8, v13, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;->i:Ljava/util/HashMap;

    iget-object v9, v13, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;->h:Landroidx/media2/exoplayer/external/drm/p;

    iget-object v11, v13, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;->a:Landroidx/media2/exoplayer/external/util/f;

    iget-object v12, v13, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;->k:Landroidx/media2/exoplayer/external/upstream/t;

    move-object v0, v14

    move-object v3, p0

    move-object/from16 v10, p1

    invoke-direct/range {v0 .. v12}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;-><init>(Ljava/util/UUID;Landroidx/media2/exoplayer/external/drm/n;Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$a;Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$b;Ljava/util/List;I[BLjava/util/HashMap;Landroidx/media2/exoplayer/external/drm/p;Landroid/os/Looper;Landroidx/media2/exoplayer/external/util/f;Landroidx/media2/exoplayer/external/upstream/t;)V

    .line 459
    iget-object v0, v13, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;->b:Ljava/util/List;

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v2, v14

    .line 461
    :cond_9
    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->f()V

    return-object v2
.end method

.method public final a()V
    .locals 3

    .line 488
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;

    const/4 v2, 0x0

    .line 1218
    invoke-virtual {v1, v2}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->a(Z)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 1219
    invoke-virtual {v1, v2}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->b(Z)V

    goto :goto_0

    .line 491
    :cond_1
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public final a(Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/drm/DefaultDrmSession<",
            "TT;>;)V"
        }
    .end annotation

    .line 475
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 479
    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 480
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 482
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->a()V

    :cond_1
    return-void
.end method

.method public final a(Ljava/lang/Exception;)V
    .locals 2

    .line 496
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;

    .line 1224
    invoke-virtual {v1, p1}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->b(Ljava/lang/Exception;)V

    goto :goto_0

    .line 499
    :cond_0
    iget-object p1, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void
.end method

.method public final a(Landroidx/media2/exoplayer/external/drm/DrmInitData;)Z
    .locals 5

    .line 379
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;->n:[B

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 383
    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;->f:Ljava/util/UUID;

    invoke-static {p1, v0, v1}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;->a(Landroidx/media2/exoplayer/external/drm/DrmInitData;Ljava/util/UUID;Z)Ljava/util/List;

    move-result-object v0

    .line 384
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 385
    iget v0, p1, Landroidx/media2/exoplayer/external/drm/DrmInitData;->schemeDataCount:I

    if-ne v0, v1, :cond_1

    invoke-virtual {p1, v2}, Landroidx/media2/exoplayer/external/drm/DrmInitData;->get(I)Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;

    move-result-object v0

    sget-object v3, Landroidx/media2/exoplayer/external/c;->b:Ljava/util/UUID;

    invoke-virtual {v0, v3}, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;->matches(Ljava/util/UUID;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 387
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;->f:Ljava/util/UUID;

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

    invoke-static {v3, v0}, Landroidx/media2/exoplayer/external/util/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return v2

    .line 394
    :cond_2
    :goto_0
    iget-object p1, p1, Landroidx/media2/exoplayer/external/drm/DrmInitData;->schemeType:Ljava/lang/String;

    if-eqz p1, :cond_7

    const-string v0, "cenc"

    .line 395
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    const-string v0, "cbc1"

    .line 398
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "cbcs"

    .line 399
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "cens"

    .line 400
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    return v1

    .line 403
    :cond_5
    :goto_1
    sget p1, Landroidx/media2/exoplayer/external/util/ac;->a:I

    const/16 v0, 0x19

    if-lt p1, v0, :cond_6

    return v1

    :cond_6
    return v2

    :cond_7
    :goto_2
    return v1
.end method

.method public final b(Landroidx/media2/exoplayer/external/drm/DrmInitData;)Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/drm/DrmInitData;",
            ")",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation

    .line 468
    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;->a(Landroidx/media2/exoplayer/external/drm/DrmInitData;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;->g:Landroidx/media2/exoplayer/external/drm/n;

    invoke-interface {p1}, Landroidx/media2/exoplayer/external/drm/n;->g()Ljava/lang/Class;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
