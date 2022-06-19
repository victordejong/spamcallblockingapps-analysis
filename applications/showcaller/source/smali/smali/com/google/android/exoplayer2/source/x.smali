.class final Lcom/google/android/exoplayer2/source/x;
.super Ljava/lang/Object;
.source "ProgressiveMediaPeriod.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/u;
.implements Lcom/google/android/exoplayer2/c1/j;
.implements Lcom/google/android/exoplayer2/upstream/Loader$b;
.implements Lcom/google/android/exoplayer2/upstream/Loader$f;
.implements Lcom/google/android/exoplayer2/source/a0$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/x$f;,
        Lcom/google/android/exoplayer2/source/x$d;,
        Lcom/google/android/exoplayer2/source/x$b;,
        Lcom/google/android/exoplayer2/source/x$a;,
        Lcom/google/android/exoplayer2/source/x$e;,
        Lcom/google/android/exoplayer2/source/x$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/exoplayer2/source/u;",
        "Lcom/google/android/exoplayer2/c1/j;",
        "Lcom/google/android/exoplayer2/upstream/Loader$b<",
        "Lcom/google/android/exoplayer2/source/x$a;",
        ">;",
        "Lcom/google/android/exoplayer2/upstream/Loader$f;",
        "Lcom/google/android/exoplayer2/source/a0$b;"
    }
.end annotation


# static fields
.field private static final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:Lcom/google/android/exoplayer2/Format;


# instance fields
.field private A:Z

.field private B:Lcom/google/android/exoplayer2/source/x$d;

.field private C:Z

.field private D:I

.field private E:Z

.field private F:Z

.field private G:Z

.field private H:I

.field private I:J

.field private J:J

.field private K:Z

.field private L:J

.field private M:J

.field private N:Z

.field private O:I

.field private P:Z

.field private Q:Z

.field private final f:Landroid/net/Uri;

.field private final g:Lcom/google/android/exoplayer2/upstream/j;

.field private final h:Lcom/google/android/exoplayer2/drm/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/drm/k<",
            "*>;"
        }
    .end annotation
.end field

.field private final i:Lcom/google/android/exoplayer2/upstream/u;

.field private final j:Lcom/google/android/exoplayer2/source/w$a;

.field private final k:Lcom/google/android/exoplayer2/source/x$c;

.field private final l:Lcom/google/android/exoplayer2/upstream/e;

.field private final m:Ljava/lang/String;

.field private final n:J

.field private final o:Lcom/google/android/exoplayer2/upstream/Loader;

.field private final p:Lcom/google/android/exoplayer2/source/x$b;

.field private final q:Lcom/google/android/exoplayer2/util/i;

.field private final r:Ljava/lang/Runnable;

.field private final s:Ljava/lang/Runnable;

.field private final t:Landroid/os/Handler;

.field private u:Lcom/google/android/exoplayer2/source/u$a;

.field private v:Lcom/google/android/exoplayer2/c1/t;

.field private w:Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;

.field private x:[Lcom/google/android/exoplayer2/source/a0;

.field private y:[Lcom/google/android/exoplayer2/source/x$f;

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/google/android/exoplayer2/source/x;->G()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/x;->d:Ljava/util/Map;

    const-string v0, "icy"

    const-string v1, "application/x-icy"

    const-wide v2, 0x7fffffffffffffffL

    .line 2
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/Format;->t(Ljava/lang/String;Ljava/lang/String;J)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/x;->e:Lcom/google/android/exoplayer2/Format;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/j;[Lcom/google/android/exoplayer2/c1/h;Lcom/google/android/exoplayer2/drm/k;Lcom/google/android/exoplayer2/upstream/u;Lcom/google/android/exoplayer2/source/w$a;Lcom/google/android/exoplayer2/source/x$c;Lcom/google/android/exoplayer2/upstream/e;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Lcom/google/android/exoplayer2/upstream/j;",
            "[",
            "Lcom/google/android/exoplayer2/c1/h;",
            "Lcom/google/android/exoplayer2/drm/k<",
            "*>;",
            "Lcom/google/android/exoplayer2/upstream/u;",
            "Lcom/google/android/exoplayer2/source/w$a;",
            "Lcom/google/android/exoplayer2/source/x$c;",
            "Lcom/google/android/exoplayer2/upstream/e;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/x;->f:Landroid/net/Uri;

    .line 3
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/x;->g:Lcom/google/android/exoplayer2/upstream/j;

    .line 4
    iput-object p4, p0, Lcom/google/android/exoplayer2/source/x;->h:Lcom/google/android/exoplayer2/drm/k;

    .line 5
    iput-object p5, p0, Lcom/google/android/exoplayer2/source/x;->i:Lcom/google/android/exoplayer2/upstream/u;

    .line 6
    iput-object p6, p0, Lcom/google/android/exoplayer2/source/x;->j:Lcom/google/android/exoplayer2/source/w$a;

    .line 7
    iput-object p7, p0, Lcom/google/android/exoplayer2/source/x;->k:Lcom/google/android/exoplayer2/source/x$c;

    .line 8
    iput-object p8, p0, Lcom/google/android/exoplayer2/source/x;->l:Lcom/google/android/exoplayer2/upstream/e;

    .line 9
    iput-object p9, p0, Lcom/google/android/exoplayer2/source/x;->m:Ljava/lang/String;

    int-to-long p1, p10

    .line 10
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/x;->n:J

    .line 11
    new-instance p1, Lcom/google/android/exoplayer2/upstream/Loader;

    const-string p2, "Loader:ProgressiveMediaPeriod"

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/upstream/Loader;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/x;->o:Lcom/google/android/exoplayer2/upstream/Loader;

    .line 12
    new-instance p1, Lcom/google/android/exoplayer2/source/x$b;

    invoke-direct {p1, p3}, Lcom/google/android/exoplayer2/source/x$b;-><init>([Lcom/google/android/exoplayer2/c1/h;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/x;->p:Lcom/google/android/exoplayer2/source/x$b;

    .line 13
    new-instance p1, Lcom/google/android/exoplayer2/util/i;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/util/i;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/x;->q:Lcom/google/android/exoplayer2/util/i;

    .line 14
    new-instance p1, Lcom/google/android/exoplayer2/source/j;

    invoke-direct {p1, p0}, Lcom/google/android/exoplayer2/source/j;-><init>(Lcom/google/android/exoplayer2/source/x;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/x;->r:Ljava/lang/Runnable;

    .line 15
    new-instance p1, Lcom/google/android/exoplayer2/source/k;

    invoke-direct {p1, p0}, Lcom/google/android/exoplayer2/source/k;-><init>(Lcom/google/android/exoplayer2/source/x;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/x;->s:Ljava/lang/Runnable;

    .line 16
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/x;->t:Landroid/os/Handler;

    const/4 p1, 0x0

    new-array p2, p1, [Lcom/google/android/exoplayer2/source/x$f;

    .line 17
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/x;->y:[Lcom/google/android/exoplayer2/source/x$f;

    new-array p1, p1, [Lcom/google/android/exoplayer2/source/a0;

    .line 18
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/x;->x:[Lcom/google/android/exoplayer2/source/a0;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 19
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/x;->M:J

    const-wide/16 p3, -0x1

    .line 20
    iput-wide p3, p0, Lcom/google/android/exoplayer2/source/x;->J:J

    .line 21
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/x;->I:J

    const/4 p1, 0x1

    .line 22
    iput p1, p0, Lcom/google/android/exoplayer2/source/x;->D:I

    .line 23
    invoke-virtual {p6}, Lcom/google/android/exoplayer2/source/w$a;->G()V

    return-void
.end method

.method static synthetic A(Lcom/google/android/exoplayer2/source/x;Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;)Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/x;->w:Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;

    return-object p1
.end method

.method static synthetic B()Lcom/google/android/exoplayer2/Format;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/exoplayer2/source/x;->e:Lcom/google/android/exoplayer2/Format;

    return-object v0
.end method

.method static synthetic C(Lcom/google/android/exoplayer2/source/x;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/x;->n:J

    return-wide v0
.end method

.method static synthetic D(Lcom/google/android/exoplayer2/source/x;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/x;->s:Ljava/lang/Runnable;

    return-object p0
.end method

.method private E(Lcom/google/android/exoplayer2/source/x$a;I)Z
    .locals 6

    .line 1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/x;->J:J

    const/4 v2, 0x1

    const-wide/16 v3, -0x1

    cmp-long v5, v0, v3

    if-nez v5, :cond_3

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/x;->v:Lcom/google/android/exoplayer2/c1/t;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/google/android/exoplayer2/c1/t;->j()J

    move-result-wide v0

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v0, v3

    if-eqz v5, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iget-boolean p2, p0, Lcom/google/android/exoplayer2/source/x;->A:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/x;->e0()Z

    move-result p2

    if-nez p2, :cond_1

    .line 4
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/source/x;->N:Z

    return v0

    .line 5
    :cond_1
    iget-boolean p2, p0, Lcom/google/android/exoplayer2/source/x;->A:Z

    iput-boolean p2, p0, Lcom/google/android/exoplayer2/source/x;->F:Z

    const-wide/16 v3, 0x0

    .line 6
    iput-wide v3, p0, Lcom/google/android/exoplayer2/source/x;->L:J

    .line 7
    iput v0, p0, Lcom/google/android/exoplayer2/source/x;->O:I

    .line 8
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/x;->x:[Lcom/google/android/exoplayer2/source/a0;

    array-length v1, p2

    :goto_0
    if-ge v0, v1, :cond_2

    aget-object v5, p2, v0

    .line 9
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/source/a0;->J()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 10
    :cond_2
    invoke-static {p1, v3, v4, v3, v4}, Lcom/google/android/exoplayer2/source/x$a;->h(Lcom/google/android/exoplayer2/source/x$a;JJ)V

    return v2

    .line 11
    :cond_3
    :goto_1
    iput p2, p0, Lcom/google/android/exoplayer2/source/x;->O:I

    return v2
.end method

.method private F(Lcom/google/android/exoplayer2/source/x$a;)V
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/x;->J:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 2
    invoke-static {p1}, Lcom/google/android/exoplayer2/source/x$a;->g(Lcom/google/android/exoplayer2/source/x$a;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/source/x;->J:J

    :cond_0
    return-void
.end method

.method private static G()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "Icy-MetaData"

    const-string v2, "1"

    .line 2
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private H()I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/x;->x:[Lcom/google/android/exoplayer2/source/a0;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v4, v0, v2

    .line 2
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/source/a0;->v()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v3
.end method

.method private I()J
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/x;->x:[Lcom/google/android/exoplayer2/source/a0;

    array-length v1, v0

    const-wide/high16 v2, -0x8000000000000000L

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_0

    aget-object v5, v0, v4

    .line 2
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/source/a0;->q()J

    move-result-wide v5

    .line 3
    invoke-static {v2, v3, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-wide v2
.end method

.method private J()Lcom/google/android/exoplayer2/source/x$d;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/x;->B:Lcom/google/android/exoplayer2/source/x$d;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/e;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/x$d;

    return-object v0
.end method

.method private L()Z
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/x;->M:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static synthetic N(Lcom/google/android/exoplayer2/source/x;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/x;->Q()V

    return-void
.end method

.method private synthetic O()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/x;->Q:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/x;->u:Lcom/google/android/exoplayer2/source/u$a;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/e;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/u$a;

    .line 3
    invoke-interface {v0, p0}, Lcom/google/android/exoplayer2/source/c0$a;->j(Lcom/google/android/exoplayer2/source/c0;)V

    :cond_0
    return-void
.end method

.method private Q()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/x;->v:Lcom/google/android/exoplayer2/c1/t;

    .line 2
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/source/x;->Q:Z

    if-nez v1, :cond_c

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/source/x;->A:Z

    if-nez v1, :cond_c

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/source/x;->z:Z

    if-eqz v1, :cond_c

    if-nez v0, :cond_0

    goto/16 :goto_6

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/x;->x:[Lcom/google/android/exoplayer2/source/a0;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v1, v4

    .line 4
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/source/a0;->u()Lcom/google/android/exoplayer2/Format;

    move-result-object v5

    if-nez v5, :cond_1

    return-void

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 5
    :cond_2
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/x;->q:Lcom/google/android/exoplayer2/util/i;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/i;->b()Z

    .line 6
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/x;->x:[Lcom/google/android/exoplayer2/source/a0;

    array-length v1, v1

    .line 7
    new-array v2, v1, [Lcom/google/android/exoplayer2/source/TrackGroup;

    .line 8
    new-array v4, v1, [Z

    .line 9
    invoke-interface {v0}, Lcom/google/android/exoplayer2/c1/t;->j()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/google/android/exoplayer2/source/x;->I:J

    const/4 v5, 0x0

    :goto_1
    const/4 v6, 0x1

    if-ge v5, v1, :cond_9

    .line 10
    iget-object v7, p0, Lcom/google/android/exoplayer2/source/x;->x:[Lcom/google/android/exoplayer2/source/a0;

    aget-object v7, v7, v5

    invoke-virtual {v7}, Lcom/google/android/exoplayer2/source/a0;->u()Lcom/google/android/exoplayer2/Format;

    move-result-object v7

    .line 11
    iget-object v8, v7, Lcom/google/android/exoplayer2/Format;->l:Ljava/lang/String;

    .line 12
    invoke-static {v8}, Lcom/google/android/exoplayer2/util/r;->l(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 13
    invoke-static {v8}, Lcom/google/android/exoplayer2/util/r;->n(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    goto :goto_2

    :cond_3
    const/4 v8, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v8, 0x1

    .line 14
    :goto_3
    aput-boolean v8, v4, v5

    .line 15
    iget-boolean v10, p0, Lcom/google/android/exoplayer2/source/x;->C:Z

    or-int/2addr v8, v10

    iput-boolean v8, p0, Lcom/google/android/exoplayer2/source/x;->C:Z

    .line 16
    iget-object v8, p0, Lcom/google/android/exoplayer2/source/x;->w:Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;

    if-eqz v8, :cond_8

    if-nez v9, :cond_5

    .line 17
    iget-object v10, p0, Lcom/google/android/exoplayer2/source/x;->y:[Lcom/google/android/exoplayer2/source/x$f;

    aget-object v10, v10, v5

    iget-boolean v10, v10, Lcom/google/android/exoplayer2/source/x$f;->b:Z

    if-eqz v10, :cond_7

    .line 18
    :cond_5
    iget-object v10, v7, Lcom/google/android/exoplayer2/Format;->j:Lcom/google/android/exoplayer2/metadata/Metadata;

    if-nez v10, :cond_6

    .line 19
    new-instance v10, Lcom/google/android/exoplayer2/metadata/Metadata;

    new-array v11, v6, [Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    aput-object v8, v11, v3

    invoke-direct {v10, v11}, Lcom/google/android/exoplayer2/metadata/Metadata;-><init>([Lcom/google/android/exoplayer2/metadata/Metadata$Entry;)V

    goto :goto_4

    :cond_6
    new-array v11, v6, [Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    aput-object v8, v11, v3

    .line 20
    invoke-virtual {v10, v11}, Lcom/google/android/exoplayer2/metadata/Metadata;->a([Lcom/google/android/exoplayer2/metadata/Metadata$Entry;)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object v10

    .line 21
    :goto_4
    invoke-virtual {v7, v10}, Lcom/google/android/exoplayer2/Format;->j(Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/Format;

    move-result-object v7

    :cond_7
    if-eqz v9, :cond_8

    .line 22
    iget v9, v7, Lcom/google/android/exoplayer2/Format;->h:I

    const/4 v10, -0x1

    if-ne v9, v10, :cond_8

    iget v8, v8, Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;->d:I

    if-eq v8, v10, :cond_8

    .line 23
    invoke-virtual {v7, v8}, Lcom/google/android/exoplayer2/Format;->b(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v7

    .line 24
    :cond_8
    new-instance v8, Lcom/google/android/exoplayer2/source/TrackGroup;

    new-array v6, v6, [Lcom/google/android/exoplayer2/Format;

    aput-object v7, v6, v3

    invoke-direct {v8, v6}, Lcom/google/android/exoplayer2/source/TrackGroup;-><init>([Lcom/google/android/exoplayer2/Format;)V

    aput-object v8, v2, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 25
    :cond_9
    iget-wide v7, p0, Lcom/google/android/exoplayer2/source/x;->J:J

    const-wide/16 v9, -0x1

    cmp-long v1, v7, v9

    if-nez v1, :cond_a

    invoke-interface {v0}, Lcom/google/android/exoplayer2/c1/t;->j()J

    move-result-wide v7

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v7, v9

    if-nez v1, :cond_a

    const/4 v3, 0x1

    :cond_a
    iput-boolean v3, p0, Lcom/google/android/exoplayer2/source/x;->K:Z

    if-eqz v3, :cond_b

    const/4 v1, 0x7

    goto :goto_5

    :cond_b
    const/4 v1, 0x1

    .line 26
    :goto_5
    iput v1, p0, Lcom/google/android/exoplayer2/source/x;->D:I

    .line 27
    new-instance v1, Lcom/google/android/exoplayer2/source/x$d;

    new-instance v3, Lcom/google/android/exoplayer2/source/TrackGroupArray;

    invoke-direct {v3, v2}, Lcom/google/android/exoplayer2/source/TrackGroupArray;-><init>([Lcom/google/android/exoplayer2/source/TrackGroup;)V

    invoke-direct {v1, v0, v3, v4}, Lcom/google/android/exoplayer2/source/x$d;-><init>(Lcom/google/android/exoplayer2/c1/t;Lcom/google/android/exoplayer2/source/TrackGroupArray;[Z)V

    iput-object v1, p0, Lcom/google/android/exoplayer2/source/x;->B:Lcom/google/android/exoplayer2/source/x$d;

    .line 28
    iput-boolean v6, p0, Lcom/google/android/exoplayer2/source/x;->A:Z

    .line 29
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/x;->k:Lcom/google/android/exoplayer2/source/x$c;

    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/x;->I:J

    invoke-interface {v0}, Lcom/google/android/exoplayer2/c1/t;->d()Z

    move-result v0

    iget-boolean v4, p0, Lcom/google/android/exoplayer2/source/x;->K:Z

    invoke-interface {v1, v2, v3, v0, v4}, Lcom/google/android/exoplayer2/source/x$c;->g(JZZ)V

    .line 30
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/x;->u:Lcom/google/android/exoplayer2/source/u$a;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/e;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/u$a;

    invoke-interface {v0, p0}, Lcom/google/android/exoplayer2/source/u$a;->o(Lcom/google/android/exoplayer2/source/u;)V

    :cond_c
    :goto_6
    return-void
.end method

.method private R(I)V
    .locals 10

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/x;->J()Lcom/google/android/exoplayer2/source/x$d;

    move-result-object v0

    .line 2
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/x$d;->e:[Z

    .line 3
    aget-boolean v2, v1, p1

    if-nez v2, :cond_0

    .line 4
    iget-object v0, v0, Lcom/google/android/exoplayer2/source/x$d;->b:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->a(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/source/TrackGroup;->a(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v5

    .line 5
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/x;->j:Lcom/google/android/exoplayer2/source/w$a;

    iget-object v0, v5, Lcom/google/android/exoplayer2/Format;->l:Ljava/lang/String;

    .line 6
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/r;->h(Ljava/lang/String;)I

    move-result v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-wide v8, p0, Lcom/google/android/exoplayer2/source/x;->L:J

    .line 7
    invoke-virtual/range {v3 .. v9}, Lcom/google/android/exoplayer2/source/w$a;->c(ILcom/google/android/exoplayer2/Format;ILjava/lang/Object;J)V

    const/4 v0, 0x1

    .line 8
    aput-boolean v0, v1, p1

    :cond_0
    return-void
.end method

.method private S(I)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/x;->J()Lcom/google/android/exoplayer2/source/x$d;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/x$d;->c:[Z

    .line 2
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/source/x;->N:Z

    if-eqz v1, :cond_2

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/x;->x:[Lcom/google/android/exoplayer2/source/a0;

    aget-object p1, v0, p1

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/source/a0;->z(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    const-wide/16 v1, 0x0

    .line 4
    iput-wide v1, p0, Lcom/google/android/exoplayer2/source/x;->M:J

    .line 5
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/x;->N:Z

    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/source/x;->F:Z

    .line 7
    iput-wide v1, p0, Lcom/google/android/exoplayer2/source/x;->L:J

    .line 8
    iput v0, p0, Lcom/google/android/exoplayer2/source/x;->O:I

    .line 9
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/x;->x:[Lcom/google/android/exoplayer2/source/a0;

    array-length v1, p1

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v2, p1, v0

    .line 10
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/a0;->J()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 11
    :cond_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/x;->u:Lcom/google/android/exoplayer2/source/u$a;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/e;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/source/u$a;

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/source/c0$a;->j(Lcom/google/android/exoplayer2/source/c0;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private Y(Lcom/google/android/exoplayer2/source/x$f;)Lcom/google/android/exoplayer2/c1/v;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/x;->x:[Lcom/google/android/exoplayer2/source/a0;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/x;->y:[Lcom/google/android/exoplayer2/source/x$f;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/source/x$f;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/x;->x:[Lcom/google/android/exoplayer2/source/a0;

    aget-object p1, p1, v1

    return-object p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4
    :cond_1
    new-instance v1, Lcom/google/android/exoplayer2/source/a0;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/x;->l:Lcom/google/android/exoplayer2/upstream/e;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/x;->h:Lcom/google/android/exoplayer2/drm/k;

    invoke-direct {v1, v2, v3}, Lcom/google/android/exoplayer2/source/a0;-><init>(Lcom/google/android/exoplayer2/upstream/e;Lcom/google/android/exoplayer2/drm/k;)V

    .line 5
    invoke-virtual {v1, p0}, Lcom/google/android/exoplayer2/source/a0;->P(Lcom/google/android/exoplayer2/source/a0$b;)V

    .line 6
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/x;->y:[Lcom/google/android/exoplayer2/source/x$f;

    add-int/lit8 v3, v0, 0x1

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/google/android/exoplayer2/source/x$f;

    .line 7
    aput-object p1, v2, v0

    .line 8
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/h0;->h([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/google/android/exoplayer2/source/x$f;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/x;->y:[Lcom/google/android/exoplayer2/source/x$f;

    .line 9
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/x;->x:[Lcom/google/android/exoplayer2/source/a0;

    invoke-static {p1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/google/android/exoplayer2/source/a0;

    .line 10
    aput-object v1, p1, v0

    .line 11
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/h0;->h([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/google/android/exoplayer2/source/a0;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/x;->x:[Lcom/google/android/exoplayer2/source/a0;

    return-object v1
.end method

.method private b0([ZJ)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/x;->x:[Lcom/google/android/exoplayer2/source/a0;

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 2
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/x;->x:[Lcom/google/android/exoplayer2/source/a0;

    aget-object v3, v3, v2

    .line 3
    invoke-virtual {v3, p2, p3, v1}, Lcom/google/android/exoplayer2/source/a0;->M(JZ)Z

    move-result v3

    if-nez v3, :cond_1

    .line 4
    aget-boolean v3, p1, v2

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/google/android/exoplayer2/source/x;->C:Z

    if-nez v3, :cond_1

    :cond_0
    return v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method private d0()V
    .locals 22

    move-object/from16 v7, p0

    .line 1
    new-instance v8, Lcom/google/android/exoplayer2/source/x$a;

    iget-object v2, v7, Lcom/google/android/exoplayer2/source/x;->f:Landroid/net/Uri;

    iget-object v3, v7, Lcom/google/android/exoplayer2/source/x;->g:Lcom/google/android/exoplayer2/upstream/j;

    iget-object v4, v7, Lcom/google/android/exoplayer2/source/x;->p:Lcom/google/android/exoplayer2/source/x$b;

    iget-object v6, v7, Lcom/google/android/exoplayer2/source/x;->q:Lcom/google/android/exoplayer2/util/i;

    move-object v0, v8

    move-object/from16 v1, p0

    move-object/from16 v5, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/source/x$a;-><init>(Lcom/google/android/exoplayer2/source/x;Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/j;Lcom/google/android/exoplayer2/source/x$b;Lcom/google/android/exoplayer2/c1/j;Lcom/google/android/exoplayer2/util/i;)V

    .line 2
    iget-boolean v0, v7, Lcom/google/android/exoplayer2/source/x;->A:Z

    if-eqz v0, :cond_1

    .line 3
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/source/x;->J()Lcom/google/android/exoplayer2/source/x$d;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/x$d;->a:Lcom/google/android/exoplayer2/c1/t;

    .line 4
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/source/x;->L()Z

    move-result v1

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/e;->f(Z)V

    .line 5
    iget-wide v1, v7, Lcom/google/android/exoplayer2/source/x;->I:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    iget-wide v5, v7, Lcom/google/android/exoplayer2/source/x;->M:J

    cmp-long v9, v5, v1

    if-lez v9, :cond_0

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, v7, Lcom/google/android/exoplayer2/source/x;->P:Z

    .line 7
    iput-wide v3, v7, Lcom/google/android/exoplayer2/source/x;->M:J

    return-void

    .line 8
    :cond_0
    iget-wide v1, v7, Lcom/google/android/exoplayer2/source/x;->M:J

    .line 9
    invoke-interface {v0, v1, v2}, Lcom/google/android/exoplayer2/c1/t;->i(J)Lcom/google/android/exoplayer2/c1/t$a;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/exoplayer2/c1/t$a;->a:Lcom/google/android/exoplayer2/c1/u;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/c1/u;->c:J

    iget-wide v5, v7, Lcom/google/android/exoplayer2/source/x;->M:J

    .line 10
    invoke-static {v8, v0, v1, v5, v6}, Lcom/google/android/exoplayer2/source/x$a;->h(Lcom/google/android/exoplayer2/source/x$a;JJ)V

    .line 11
    iput-wide v3, v7, Lcom/google/android/exoplayer2/source/x;->M:J

    .line 12
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/source/x;->H()I

    move-result v0

    iput v0, v7, Lcom/google/android/exoplayer2/source/x;->O:I

    .line 13
    iget-object v0, v7, Lcom/google/android/exoplayer2/source/x;->o:Lcom/google/android/exoplayer2/upstream/Loader;

    iget-object v1, v7, Lcom/google/android/exoplayer2/source/x;->i:Lcom/google/android/exoplayer2/upstream/u;

    iget v2, v7, Lcom/google/android/exoplayer2/source/x;->D:I

    .line 14
    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/upstream/u;->c(I)I

    move-result v1

    .line 15
    invoke-virtual {v0, v8, v7, v1}, Lcom/google/android/exoplayer2/upstream/Loader;->n(Lcom/google/android/exoplayer2/upstream/Loader$e;Lcom/google/android/exoplayer2/upstream/Loader$b;I)J

    move-result-wide v20

    .line 16
    iget-object v9, v7, Lcom/google/android/exoplayer2/source/x;->j:Lcom/google/android/exoplayer2/source/w$a;

    .line 17
    invoke-static {v8}, Lcom/google/android/exoplayer2/source/x$a;->d(Lcom/google/android/exoplayer2/source/x$a;)Lcom/google/android/exoplayer2/upstream/l;

    move-result-object v10

    const/4 v11, 0x1

    const/4 v12, -0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 18
    invoke-static {v8}, Lcom/google/android/exoplayer2/source/x$a;->f(Lcom/google/android/exoplayer2/source/x$a;)J

    move-result-wide v16

    iget-wide v0, v7, Lcom/google/android/exoplayer2/source/x;->I:J

    move-wide/from16 v18, v0

    .line 19
    invoke-virtual/range {v9 .. v21}, Lcom/google/android/exoplayer2/source/w$a;->E(Lcom/google/android/exoplayer2/upstream/l;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJ)V

    return-void
.end method

.method private e0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/x;->F:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/x;->L()Z

    move-result v0

    if-eqz v0, :cond_0

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

.method static synthetic v(Lcom/google/android/exoplayer2/source/x;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/x;->t:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic w(Lcom/google/android/exoplayer2/source/x;)J
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/x;->I()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic x(Lcom/google/android/exoplayer2/source/x;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/x;->m:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic y()Ljava/util/Map;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/exoplayer2/source/x;->d:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic z(Lcom/google/android/exoplayer2/source/x;)Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/x;->w:Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;

    return-object p0
.end method


# virtual methods
.method K()Lcom/google/android/exoplayer2/c1/v;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/exoplayer2/source/x$f;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/source/x$f;-><init>(IZ)V

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/x;->Y(Lcom/google/android/exoplayer2/source/x$f;)Lcom/google/android/exoplayer2/c1/v;

    move-result-object v0

    return-object v0
.end method

.method M(I)Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/x;->e0()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/x;->x:[Lcom/google/android/exoplayer2/source/a0;

    aget-object p1, v0, p1

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/x;->P:Z

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/source/a0;->z(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public synthetic P()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/x;->O()V

    return-void
.end method

.method T()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/x;->o:Lcom/google/android/exoplayer2/upstream/Loader;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/x;->i:Lcom/google/android/exoplayer2/upstream/u;

    iget v2, p0, Lcom/google/android/exoplayer2/source/x;->D:I

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/upstream/u;->c(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/upstream/Loader;->k(I)V

    return-void
.end method

.method U(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/x;->x:[Lcom/google/android/exoplayer2/source/a0;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/a0;->B()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/x;->T()V

    return-void
.end method

.method public V(Lcom/google/android/exoplayer2/source/x$a;JJZ)V
    .locals 20

    move-object/from16 v0, p0

    move-wide/from16 v14, p2

    move-wide/from16 v16, p4

    .line 1
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/x;->j:Lcom/google/android/exoplayer2/source/w$a;

    .line 2
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/x$a;->d(Lcom/google/android/exoplayer2/source/x$a;)Lcom/google/android/exoplayer2/upstream/l;

    move-result-object v2

    .line 3
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/x$a;->e(Lcom/google/android/exoplayer2/source/x$a;)Lcom/google/android/exoplayer2/upstream/w;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/upstream/w;->e()Landroid/net/Uri;

    move-result-object v3

    .line 4
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/x$a;->e(Lcom/google/android/exoplayer2/source/x$a;)Lcom/google/android/exoplayer2/upstream/w;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/upstream/w;->f()Ljava/util/Map;

    move-result-object v4

    .line 5
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/x$a;->f(Lcom/google/android/exoplayer2/source/x$a;)J

    move-result-wide v10

    iget-wide v12, v0, Lcom/google/android/exoplayer2/source/x;->I:J

    .line 6
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/x$a;->e(Lcom/google/android/exoplayer2/source/x$a;)Lcom/google/android/exoplayer2/upstream/w;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/upstream/w;->d()J

    move-result-wide v18

    const/4 v5, 0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 7
    invoke-virtual/range {v1 .. v19}, Lcom/google/android/exoplayer2/source/w$a;->v(Lcom/google/android/exoplayer2/upstream/l;Landroid/net/Uri;Ljava/util/Map;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJJJ)V

    if-nez p6, :cond_1

    .line 8
    invoke-direct/range {p0 .. p1}, Lcom/google/android/exoplayer2/source/x;->F(Lcom/google/android/exoplayer2/source/x$a;)V

    .line 9
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/x;->x:[Lcom/google/android/exoplayer2/source/a0;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 10
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/source/a0;->J()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 11
    :cond_0
    iget v1, v0, Lcom/google/android/exoplayer2/source/x;->H:I

    if-lez v1, :cond_1

    .line 12
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/x;->u:Lcom/google/android/exoplayer2/source/u$a;

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/e;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/u$a;

    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/source/c0$a;->j(Lcom/google/android/exoplayer2/source/c0;)V

    :cond_1
    return-void
.end method

.method public W(Lcom/google/android/exoplayer2/source/x$a;JJ)V
    .locals 25

    move-object/from16 v0, p0

    .line 1
    iget-wide v1, v0, Lcom/google/android/exoplayer2/source/x;->I:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/x;->v:Lcom/google/android/exoplayer2/c1/t;

    if-eqz v1, :cond_1

    .line 2
    invoke-interface {v1}, Lcom/google/android/exoplayer2/c1/t;->d()Z

    move-result v1

    .line 3
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/source/x;->I()J

    move-result-wide v2

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    const-wide/16 v2, 0x0

    goto :goto_0

    :cond_0
    const-wide/16 v4, 0x2710

    add-long/2addr v2, v4

    .line 4
    :goto_0
    iput-wide v2, v0, Lcom/google/android/exoplayer2/source/x;->I:J

    .line 5
    iget-object v4, v0, Lcom/google/android/exoplayer2/source/x;->k:Lcom/google/android/exoplayer2/source/x$c;

    iget-boolean v5, v0, Lcom/google/android/exoplayer2/source/x;->K:Z

    invoke-interface {v4, v2, v3, v1, v5}, Lcom/google/android/exoplayer2/source/x$c;->g(JZZ)V

    .line 6
    :cond_1
    iget-object v6, v0, Lcom/google/android/exoplayer2/source/x;->j:Lcom/google/android/exoplayer2/source/w$a;

    .line 7
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/x$a;->d(Lcom/google/android/exoplayer2/source/x$a;)Lcom/google/android/exoplayer2/upstream/l;

    move-result-object v7

    .line 8
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/x$a;->e(Lcom/google/android/exoplayer2/source/x$a;)Lcom/google/android/exoplayer2/upstream/w;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/w;->e()Landroid/net/Uri;

    move-result-object v8

    .line 9
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/x$a;->e(Lcom/google/android/exoplayer2/source/x$a;)Lcom/google/android/exoplayer2/upstream/w;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/w;->f()Ljava/util/Map;

    move-result-object v9

    const/4 v10, 0x1

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 10
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/x$a;->f(Lcom/google/android/exoplayer2/source/x$a;)J

    move-result-wide v15

    iget-wide v1, v0, Lcom/google/android/exoplayer2/source/x;->I:J

    move-wide/from16 v17, v1

    .line 11
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/x$a;->e(Lcom/google/android/exoplayer2/source/x$a;)Lcom/google/android/exoplayer2/upstream/w;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/w;->d()J

    move-result-wide v23

    move-wide/from16 v19, p2

    move-wide/from16 v21, p4

    .line 12
    invoke-virtual/range {v6 .. v24}, Lcom/google/android/exoplayer2/source/w$a;->y(Lcom/google/android/exoplayer2/upstream/l;Landroid/net/Uri;Ljava/util/Map;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJJJ)V

    .line 13
    invoke-direct/range {p0 .. p1}, Lcom/google/android/exoplayer2/source/x;->F(Lcom/google/android/exoplayer2/source/x$a;)V

    const/4 v1, 0x1

    .line 14
    iput-boolean v1, v0, Lcom/google/android/exoplayer2/source/x;->P:Z

    .line 15
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/x;->u:Lcom/google/android/exoplayer2/source/u$a;

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/e;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/u$a;

    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/source/c0$a;->j(Lcom/google/android/exoplayer2/source/c0;)V

    return-void
.end method

.method public X(Lcom/google/android/exoplayer2/source/x$a;JJLjava/io/IOException;I)Lcom/google/android/exoplayer2/upstream/Loader$c;
    .locals 25

    move-object/from16 v0, p0

    .line 1
    invoke-direct/range {p0 .. p1}, Lcom/google/android/exoplayer2/source/x;->F(Lcom/google/android/exoplayer2/source/x$a;)V

    .line 2
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/x;->i:Lcom/google/android/exoplayer2/upstream/u;

    iget v2, v0, Lcom/google/android/exoplayer2/source/x;->D:I

    move-wide/from16 v3, p4

    move-object/from16 v5, p6

    move/from16 v6, p7

    .line 3
    invoke-interface/range {v1 .. v6}, Lcom/google/android/exoplayer2/upstream/u;->a(IJLjava/io/IOException;I)J

    move-result-wide v1

    const/4 v3, 0x1

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v6, v1, v4

    if-nez v6, :cond_0

    .line 4
    sget-object v1, Lcom/google/android/exoplayer2/upstream/Loader;->d:Lcom/google/android/exoplayer2/upstream/Loader$c;

    move-object/from16 v6, p1

    goto :goto_1

    .line 5
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/source/x;->H()I

    move-result v4

    .line 6
    iget v5, v0, Lcom/google/android/exoplayer2/source/x;->O:I

    if-le v4, v5, :cond_1

    move-object/from16 v6, p1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    move-object/from16 v6, p1

    .line 7
    :goto_0
    invoke-direct {v0, v6, v4}, Lcom/google/android/exoplayer2/source/x;->E(Lcom/google/android/exoplayer2/source/x$a;I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 8
    invoke-static {v5, v1, v2}, Lcom/google/android/exoplayer2/upstream/Loader;->g(ZJ)Lcom/google/android/exoplayer2/upstream/Loader$c;

    move-result-object v1

    goto :goto_1

    :cond_2
    sget-object v1, Lcom/google/android/exoplayer2/upstream/Loader;->c:Lcom/google/android/exoplayer2/upstream/Loader$c;

    .line 9
    :goto_1
    iget-object v4, v0, Lcom/google/android/exoplayer2/source/x;->j:Lcom/google/android/exoplayer2/source/w$a;

    .line 10
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/x$a;->d(Lcom/google/android/exoplayer2/source/x$a;)Lcom/google/android/exoplayer2/upstream/l;

    move-result-object v5

    .line 11
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/x$a;->e(Lcom/google/android/exoplayer2/source/x$a;)Lcom/google/android/exoplayer2/upstream/w;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/upstream/w;->e()Landroid/net/Uri;

    move-result-object v2

    .line 12
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/x$a;->e(Lcom/google/android/exoplayer2/source/x$a;)Lcom/google/android/exoplayer2/upstream/w;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/exoplayer2/upstream/w;->f()Ljava/util/Map;

    move-result-object v7

    const/4 v8, 0x1

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 13
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/x$a;->f(Lcom/google/android/exoplayer2/source/x$a;)J

    move-result-wide v13

    move-wide v15, v13

    iget-wide v12, v0, Lcom/google/android/exoplayer2/source/x;->I:J

    .line 14
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/x$a;->e(Lcom/google/android/exoplayer2/source/x$a;)Lcom/google/android/exoplayer2/upstream/w;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/exoplayer2/upstream/w;->d()J

    move-result-wide v21

    .line 15
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/Loader$c;->c()Z

    move-result v6

    xor-int/lit8 v24, v6, 0x1

    move-object v6, v2

    move-wide/from16 v17, v12

    const/4 v2, 0x0

    move-object v12, v2

    move-wide v13, v15

    move-wide/from16 v15, v17

    move-wide/from16 v17, p2

    move-wide/from16 v19, p4

    move-object/from16 v23, p6

    .line 16
    invoke-virtual/range {v4 .. v24}, Lcom/google/android/exoplayer2/source/w$a;->B(Lcom/google/android/exoplayer2/upstream/l;Landroid/net/Uri;Ljava/util/Map;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJJJLjava/io/IOException;Z)V

    return-object v1
.end method

.method Z(ILcom/google/android/exoplayer2/f0;Lcom/google/android/exoplayer2/b1/e;Z)I
    .locals 9

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/x;->e0()Z

    move-result v0

    const/4 v1, -0x3

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/x;->R(I)V

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/x;->x:[Lcom/google/android/exoplayer2/source/a0;

    aget-object v2, v0, p1

    iget-boolean v6, p0, Lcom/google/android/exoplayer2/source/x;->P:Z

    iget-wide v7, p0, Lcom/google/android/exoplayer2/source/x;->L:J

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    .line 4
    invoke-virtual/range {v2 .. v8}, Lcom/google/android/exoplayer2/source/a0;->F(Lcom/google/android/exoplayer2/f0;Lcom/google/android/exoplayer2/b1/e;ZZJ)I

    move-result p2

    if-ne p2, v1, :cond_1

    .line 5
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/x;->S(I)V

    :cond_1
    return p2
.end method

.method public a()J
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/source/x;->H:I

    if-nez v0, :cond_0

    const-wide/high16 v0, -0x8000000000000000L

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/x;->e()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public a0()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/x;->A:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/x;->x:[Lcom/google/android/exoplayer2/source/a0;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 3
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/a0;->E()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/x;->o:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/upstream/Loader;->m(Lcom/google/android/exoplayer2/upstream/Loader$f;)V

    .line 5
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/x;->t:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 6
    iput-object v1, p0, Lcom/google/android/exoplayer2/source/x;->u:Lcom/google/android/exoplayer2/source/u$a;

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/x;->Q:Z

    .line 8
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/x;->j:Lcom/google/android/exoplayer2/source/w$a;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/w$a;->H()V

    return-void
.end method

.method public b(J)Z
    .locals 0

    .line 1
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/source/x;->P:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/x;->o:Lcom/google/android/exoplayer2/upstream/Loader;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/Loader;->h()Z

    move-result p1

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/google/android/exoplayer2/source/x;->N:Z

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/google/android/exoplayer2/source/x;->A:Z

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/google/android/exoplayer2/source/x;->H:I

    if-nez p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/x;->q:Lcom/google/android/exoplayer2/util/i;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/i;->d()Z

    move-result p1

    .line 4
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/x;->o:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/upstream/Loader;->i()Z

    move-result p2

    if-nez p2, :cond_1

    .line 5
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/x;->d0()V

    const/4 p1, 0x1

    :cond_1
    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public c(Lcom/google/android/exoplayer2/c1/t;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/x;->w:Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/google/android/exoplayer2/c1/t$b;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {p1, v0, v1}, Lcom/google/android/exoplayer2/c1/t$b;-><init>(J)V

    :goto_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/x;->v:Lcom/google/android/exoplayer2/c1/t;

    .line 2
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/x;->t:Landroid/os/Handler;

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/x;->r:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method c0(IJ)I
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/x;->e0()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/x;->R(I)V

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/x;->x:[Lcom/google/android/exoplayer2/source/a0;

    aget-object v0, v0, p1

    .line 4
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/source/x;->P:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/a0;->q()J

    move-result-wide v1

    cmp-long v3, p2, v1

    if-lez v3, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/a0;->f()I

    move-result p2

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {v0, p2, p3}, Lcom/google/android/exoplayer2/source/a0;->e(J)I

    move-result p2

    :goto_0
    if-nez p2, :cond_2

    .line 7
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/x;->S(I)V

    :cond_2
    return p2
.end method

.method public d()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/x;->o:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/x;->q:Lcom/google/android/exoplayer2/util/i;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/i;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public e()J
    .locals 11

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/x;->J()Lcom/google/android/exoplayer2/source/x$d;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/x$d;->c:[Z

    .line 2
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/source/x;->P:Z

    const-wide/high16 v2, -0x8000000000000000L

    if-eqz v1, :cond_0

    return-wide v2

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/x;->L()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/x;->M:J

    return-wide v0

    .line 5
    :cond_1
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/source/x;->C:Z

    const-wide v4, 0x7fffffffffffffffL

    if-eqz v1, :cond_3

    .line 6
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/x;->x:[Lcom/google/android/exoplayer2/source/a0;

    array-length v1, v1

    const/4 v6, 0x0

    move-wide v7, v4

    :goto_0
    if-ge v6, v1, :cond_4

    .line 7
    aget-boolean v9, v0, v6

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/google/android/exoplayer2/source/x;->x:[Lcom/google/android/exoplayer2/source/a0;

    aget-object v9, v9, v6

    invoke-virtual {v9}, Lcom/google/android/exoplayer2/source/a0;->y()Z

    move-result v9

    if-nez v9, :cond_2

    .line 8
    iget-object v9, p0, Lcom/google/android/exoplayer2/source/x;->x:[Lcom/google/android/exoplayer2/source/a0;

    aget-object v9, v9, v6

    .line 9
    invoke-virtual {v9}, Lcom/google/android/exoplayer2/source/a0;->q()J

    move-result-wide v9

    .line 10
    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    move-wide v7, v4

    :cond_4
    cmp-long v0, v7, v4

    if-nez v0, :cond_5

    .line 11
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/x;->I()J

    move-result-wide v7

    :cond_5
    cmp-long v0, v7, v2

    if-nez v0, :cond_6

    .line 12
    iget-wide v7, p0, Lcom/google/android/exoplayer2/source/x;->L:J

    :cond_6
    return-wide v7
.end method

.method public f(J)V
    .locals 0

    return-void
.end method

.method public g()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/x;->x:[Lcom/google/android/exoplayer2/source/a0;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 2
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/a0;->H()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/x;->p:Lcom/google/android/exoplayer2/source/x$b;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/x$b;->a()V

    return-void
.end method

.method public h([Lcom/google/android/exoplayer2/trackselection/f;[Z[Lcom/google/android/exoplayer2/source/b0;[ZJ)J
    .locals 8

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/x;->J()Lcom/google/android/exoplayer2/source/x$d;

    move-result-object v0

    .line 2
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/x$d;->b:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    .line 3
    iget-object v0, v0, Lcom/google/android/exoplayer2/source/x$d;->d:[Z

    .line 4
    iget v2, p0, Lcom/google/android/exoplayer2/source/x;->H:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 5
    :goto_0
    array-length v5, p1

    const/4 v6, 0x1

    if-ge v4, v5, :cond_2

    .line 6
    aget-object v5, p3, v4

    if-eqz v5, :cond_1

    aget-object v5, p1, v4

    if-eqz v5, :cond_0

    aget-boolean v5, p2, v4

    if-nez v5, :cond_1

    .line 7
    :cond_0
    aget-object v5, p3, v4

    check-cast v5, Lcom/google/android/exoplayer2/source/x$e;

    invoke-static {v5}, Lcom/google/android/exoplayer2/source/x$e;->d(Lcom/google/android/exoplayer2/source/x$e;)I

    move-result v5

    .line 8
    aget-boolean v7, v0, v5

    invoke-static {v7}, Lcom/google/android/exoplayer2/util/e;->f(Z)V

    .line 9
    iget v7, p0, Lcom/google/android/exoplayer2/source/x;->H:I

    sub-int/2addr v7, v6

    iput v7, p0, Lcom/google/android/exoplayer2/source/x;->H:I

    .line 10
    aput-boolean v3, v0, v5

    const/4 v5, 0x0

    .line 11
    aput-object v5, p3, v4

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 12
    :cond_2
    iget-boolean p2, p0, Lcom/google/android/exoplayer2/source/x;->E:Z

    if-eqz p2, :cond_3

    if-nez v2, :cond_4

    goto :goto_1

    :cond_3
    const-wide/16 v4, 0x0

    cmp-long p2, p5, v4

    if-eqz p2, :cond_4

    :goto_1
    const/4 p2, 0x1

    goto :goto_2

    :cond_4
    const/4 p2, 0x0

    :goto_2
    const/4 v2, 0x0

    .line 13
    :goto_3
    array-length v4, p1

    if-ge v2, v4, :cond_9

    .line 14
    aget-object v4, p3, v2

    if-nez v4, :cond_8

    aget-object v4, p1, v2

    if-eqz v4, :cond_8

    .line 15
    aget-object v4, p1, v2

    .line 16
    invoke-interface {v4}, Lcom/google/android/exoplayer2/trackselection/f;->length()I

    move-result v5

    if-ne v5, v6, :cond_5

    const/4 v5, 0x1

    goto :goto_4

    :cond_5
    const/4 v5, 0x0

    :goto_4
    invoke-static {v5}, Lcom/google/android/exoplayer2/util/e;->f(Z)V

    .line 17
    invoke-interface {v4, v3}, Lcom/google/android/exoplayer2/trackselection/f;->g(I)I

    move-result v5

    if-nez v5, :cond_6

    const/4 v5, 0x1

    goto :goto_5

    :cond_6
    const/4 v5, 0x0

    :goto_5
    invoke-static {v5}, Lcom/google/android/exoplayer2/util/e;->f(Z)V

    .line 18
    invoke-interface {v4}, Lcom/google/android/exoplayer2/trackselection/f;->a()Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->b(Lcom/google/android/exoplayer2/source/TrackGroup;)I

    move-result v4

    .line 19
    aget-boolean v5, v0, v4

    xor-int/2addr v5, v6

    invoke-static {v5}, Lcom/google/android/exoplayer2/util/e;->f(Z)V

    .line 20
    iget v5, p0, Lcom/google/android/exoplayer2/source/x;->H:I

    add-int/2addr v5, v6

    iput v5, p0, Lcom/google/android/exoplayer2/source/x;->H:I

    .line 21
    aput-boolean v6, v0, v4

    .line 22
    new-instance v5, Lcom/google/android/exoplayer2/source/x$e;

    invoke-direct {v5, p0, v4}, Lcom/google/android/exoplayer2/source/x$e;-><init>(Lcom/google/android/exoplayer2/source/x;I)V

    aput-object v5, p3, v2

    .line 23
    aput-boolean v6, p4, v2

    if-nez p2, :cond_8

    .line 24
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/x;->x:[Lcom/google/android/exoplayer2/source/a0;

    aget-object p2, p2, v4

    .line 25
    invoke-virtual {p2, p5, p6, v6}, Lcom/google/android/exoplayer2/source/a0;->M(JZ)Z

    move-result v4

    if-nez v4, :cond_7

    .line 26
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/source/a0;->s()I

    move-result p2

    if-eqz p2, :cond_7

    const/4 p2, 0x1

    goto :goto_6

    :cond_7
    const/4 p2, 0x0

    :cond_8
    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 27
    :cond_9
    iget p1, p0, Lcom/google/android/exoplayer2/source/x;->H:I

    if-nez p1, :cond_c

    .line 28
    iput-boolean v3, p0, Lcom/google/android/exoplayer2/source/x;->N:Z

    .line 29
    iput-boolean v3, p0, Lcom/google/android/exoplayer2/source/x;->F:Z

    .line 30
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/x;->o:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/Loader;->i()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 31
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/x;->x:[Lcom/google/android/exoplayer2/source/a0;

    array-length p2, p1

    :goto_7
    if-ge v3, p2, :cond_a

    aget-object p3, p1, v3

    .line 32
    invoke-virtual {p3}, Lcom/google/android/exoplayer2/source/a0;->m()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 33
    :cond_a
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/x;->o:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/Loader;->e()V

    goto :goto_a

    .line 34
    :cond_b
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/x;->x:[Lcom/google/android/exoplayer2/source/a0;

    array-length p2, p1

    :goto_8
    if-ge v3, p2, :cond_e

    aget-object p3, p1, v3

    .line 35
    invoke-virtual {p3}, Lcom/google/android/exoplayer2/source/a0;->J()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_c
    if-eqz p2, :cond_e

    .line 36
    invoke-virtual {p0, p5, p6}, Lcom/google/android/exoplayer2/source/x;->m(J)J

    move-result-wide p5

    .line 37
    :goto_9
    array-length p1, p3

    if-ge v3, p1, :cond_e

    .line 38
    aget-object p1, p3, v3

    if-eqz p1, :cond_d

    .line 39
    aput-boolean v6, p4, v3

    :cond_d
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 40
    :cond_e
    :goto_a
    iput-boolean v6, p0, Lcom/google/android/exoplayer2/source/x;->E:Z

    return-wide p5
.end method

.method public bridge synthetic i(Lcom/google/android/exoplayer2/upstream/Loader$e;JJZ)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/exoplayer2/source/x$a;

    invoke-virtual/range {p0 .. p6}, Lcom/google/android/exoplayer2/source/x;->V(Lcom/google/android/exoplayer2/source/x$a;JJZ)V

    return-void
.end method

.method public j(Lcom/google/android/exoplayer2/Format;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/x;->t:Landroid/os/Handler;

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/x;->r:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public bridge synthetic k(Lcom/google/android/exoplayer2/upstream/Loader$e;JJ)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/exoplayer2/source/x$a;

    invoke-virtual/range {p0 .. p5}, Lcom/google/android/exoplayer2/source/x;->W(Lcom/google/android/exoplayer2/source/x$a;JJ)V

    return-void
.end method

.method public l()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/x;->T()V

    .line 2
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/x;->P:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/x;->A:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lcom/google/android/exoplayer2/ParserException;

    const-string v1, "Loading finished before preparation is complete."

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public m(J)J
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/x;->J()Lcom/google/android/exoplayer2/source/x$d;

    move-result-object v0

    .line 2
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/x$d;->a:Lcom/google/android/exoplayer2/c1/t;

    .line 3
    iget-object v0, v0, Lcom/google/android/exoplayer2/source/x$d;->c:[Z

    .line 4
    invoke-interface {v1}, Lcom/google/android/exoplayer2/c1/t;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 p1, 0x0

    :goto_0
    const/4 v1, 0x0

    .line 5
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/source/x;->F:Z

    .line 6
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/x;->L:J

    .line 7
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/x;->L()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 8
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/x;->M:J

    return-wide p1

    .line 9
    :cond_1
    iget v2, p0, Lcom/google/android/exoplayer2/source/x;->D:I

    const/4 v3, 0x7

    if-eq v2, v3, :cond_2

    .line 10
    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/exoplayer2/source/x;->b0([ZJ)Z

    move-result v0

    if-eqz v0, :cond_2

    return-wide p1

    .line 11
    :cond_2
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/source/x;->N:Z

    .line 12
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/x;->M:J

    .line 13
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/source/x;->P:Z

    .line 14
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/x;->o:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->i()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 15
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/x;->o:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->e()V

    goto :goto_2

    .line 16
    :cond_3
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/x;->o:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->f()V

    .line 17
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/x;->x:[Lcom/google/android/exoplayer2/source/a0;

    array-length v2, v0

    :goto_1
    if-ge v1, v2, :cond_4

    aget-object v3, v0, v1

    .line 18
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/a0;->J()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    return-wide p1
.end method

.method public n(JLcom/google/android/exoplayer2/w0;)J
    .locals 9

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/x;->J()Lcom/google/android/exoplayer2/source/x$d;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/x$d;->a:Lcom/google/android/exoplayer2/c1/t;

    .line 2
    invoke-interface {v0}, Lcom/google/android/exoplayer2/c1/t;->d()Z

    move-result v1

    if-nez v1, :cond_0

    const-wide/16 p1, 0x0

    return-wide p1

    .line 3
    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/c1/t;->i(J)Lcom/google/android/exoplayer2/c1/t$a;

    move-result-object v0

    .line 4
    iget-object v1, v0, Lcom/google/android/exoplayer2/c1/t$a;->a:Lcom/google/android/exoplayer2/c1/u;

    iget-wide v5, v1, Lcom/google/android/exoplayer2/c1/u;->b:J

    iget-object v0, v0, Lcom/google/android/exoplayer2/c1/t$a;->b:Lcom/google/android/exoplayer2/c1/u;

    iget-wide v7, v0, Lcom/google/android/exoplayer2/c1/u;->b:J

    move-wide v2, p1

    move-object v4, p3

    invoke-static/range {v2 .. v8}, Lcom/google/android/exoplayer2/util/h0;->k0(JLcom/google/android/exoplayer2/w0;JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public o()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/x;->z:Z

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/x;->t:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/x;->r:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public p()J
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/x;->G:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/x;->j:Lcom/google/android/exoplayer2/source/w$a;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/w$a;->J()V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/x;->G:Z

    .line 4
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/x;->F:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/x;->P:Z

    if-nez v0, :cond_1

    .line 5
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/x;->H()I

    move-result v0

    iget v1, p0, Lcom/google/android/exoplayer2/source/x;->O:I

    if-le v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/x;->F:Z

    .line 7
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/x;->L:J

    return-wide v0

    :cond_2
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method public q(Lcom/google/android/exoplayer2/source/u$a;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/x;->u:Lcom/google/android/exoplayer2/source/u$a;

    .line 2
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/x;->q:Lcom/google/android/exoplayer2/util/i;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/i;->d()Z

    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/x;->d0()V

    return-void
.end method

.method public r()Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/x;->J()Lcom/google/android/exoplayer2/source/x$d;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/x$d;->b:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    return-object v0
.end method

.method public bridge synthetic s(Lcom/google/android/exoplayer2/upstream/Loader$e;JJLjava/io/IOException;I)Lcom/google/android/exoplayer2/upstream/Loader$c;
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/exoplayer2/source/x$a;

    invoke-virtual/range {p0 .. p7}, Lcom/google/android/exoplayer2/source/x;->X(Lcom/google/android/exoplayer2/source/x$a;JJLjava/io/IOException;I)Lcom/google/android/exoplayer2/upstream/Loader$c;

    move-result-object p1

    return-object p1
.end method

.method public t(II)Lcom/google/android/exoplayer2/c1/v;
    .locals 1

    .line 1
    new-instance p2, Lcom/google/android/exoplayer2/source/x$f;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, Lcom/google/android/exoplayer2/source/x$f;-><init>(IZ)V

    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/source/x;->Y(Lcom/google/android/exoplayer2/source/x$f;)Lcom/google/android/exoplayer2/c1/v;

    move-result-object p1

    return-object p1
.end method

.method public u(JZ)V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/x;->L()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/x;->J()Lcom/google/android/exoplayer2/source/x$d;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/x$d;->d:[Z

    .line 3
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/x;->x:[Lcom/google/android/exoplayer2/source/a0;

    array-length v1, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 4
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/x;->x:[Lcom/google/android/exoplayer2/source/a0;

    aget-object v3, v3, v2

    aget-boolean v4, v0, v2

    invoke-virtual {v3, p1, p2, p3, v4}, Lcom/google/android/exoplayer2/source/a0;->l(JZZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
