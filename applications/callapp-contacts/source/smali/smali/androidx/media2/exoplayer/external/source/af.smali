.class final Landroidx/media2/exoplayer/external/source/af;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/exoplayer/external/extractor/i;
.implements Landroidx/media2/exoplayer/external/source/ak$b;
.implements Landroidx/media2/exoplayer/external/source/s;
.implements Landroidx/media2/exoplayer/external/upstream/Loader$a;
.implements Landroidx/media2/exoplayer/external/upstream/Loader$e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/source/af$f;,
        Landroidx/media2/exoplayer/external/source/af$d;,
        Landroidx/media2/exoplayer/external/source/af$b;,
        Landroidx/media2/exoplayer/external/source/af$a;,
        Landroidx/media2/exoplayer/external/source/af$e;,
        Landroidx/media2/exoplayer/external/source/af$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/media2/exoplayer/external/extractor/i;",
        "Landroidx/media2/exoplayer/external/source/ak$b;",
        "Landroidx/media2/exoplayer/external/source/s;",
        "Landroidx/media2/exoplayer/external/upstream/Loader$a<",
        "Landroidx/media2/exoplayer/external/source/af$a;",
        ">;",
        "Landroidx/media2/exoplayer/external/upstream/Loader$e;"
    }
.end annotation


# static fields
.field private static final v:Landroidx/media2/exoplayer/external/Format;


# instance fields
.field private final A:Landroidx/media2/exoplayer/external/upstream/b;

.field private final B:Ljava/lang/String;

.field private final C:J

.field private final D:Landroidx/media2/exoplayer/external/source/af$b;

.field private final E:Ljava/lang/Runnable;

.field private final F:Ljava/lang/Runnable;

.field private G:Z

.field private H:Z

.field private I:Z

.field private J:I

.field private K:J

.field private L:Z

.field private M:I

.field final a:Landroidx/media2/exoplayer/external/source/u$a;

.field final b:Landroidx/media2/exoplayer/external/source/af$c;

.field final c:Landroidx/media2/exoplayer/external/upstream/Loader;

.field final d:Landroidx/media2/exoplayer/external/util/e;

.field final e:Landroid/os/Handler;

.field f:Landroidx/media2/exoplayer/external/source/s$a;

.field g:Landroidx/media2/exoplayer/external/extractor/o;

.field h:Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;

.field i:[Landroidx/media2/exoplayer/external/source/ak;

.field j:[Landroidx/media2/exoplayer/external/source/j;

.field k:[Landroidx/media2/exoplayer/external/source/af$f;

.field l:Z

.field m:Z

.field n:Landroidx/media2/exoplayer/external/source/af$d;

.field o:Z

.field p:I

.field q:J

.field r:J

.field s:J

.field t:Z

.field u:Z

.field private final w:Landroid/net/Uri;

.field private final x:Landroidx/media2/exoplayer/external/upstream/f;

.field private final y:Landroidx/media2/exoplayer/external/drm/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media2/exoplayer/external/drm/k<",
            "*>;"
        }
    .end annotation
.end field

.field private final z:Landroidx/media2/exoplayer/external/upstream/t;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "icy"

    const-string v1, "application/x-icy"

    const-wide v2, 0x7fffffffffffffffL

    .line 98
    invoke-static {v0, v1, v2, v3}, Landroidx/media2/exoplayer/external/Format;->createSampleFormat(Ljava/lang/String;Ljava/lang/String;J)Landroidx/media2/exoplayer/external/Format;

    move-result-object v0

    sput-object v0, Landroidx/media2/exoplayer/external/source/af;->v:Landroidx/media2/exoplayer/external/Format;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Landroidx/media2/exoplayer/external/upstream/f;[Landroidx/media2/exoplayer/external/extractor/g;Landroidx/media2/exoplayer/external/drm/k;Landroidx/media2/exoplayer/external/upstream/t;Landroidx/media2/exoplayer/external/source/u$a;Landroidx/media2/exoplayer/external/source/af$c;Landroidx/media2/exoplayer/external/upstream/b;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Landroidx/media2/exoplayer/external/upstream/f;",
            "[",
            "Landroidx/media2/exoplayer/external/extractor/g;",
            "Landroidx/media2/exoplayer/external/drm/k<",
            "*>;",
            "Landroidx/media2/exoplayer/external/upstream/t;",
            "Landroidx/media2/exoplayer/external/source/u$a;",
            "Landroidx/media2/exoplayer/external/source/af$c;",
            "Landroidx/media2/exoplayer/external/upstream/b;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/af;->w:Landroid/net/Uri;

    .line 174
    iput-object p2, p0, Landroidx/media2/exoplayer/external/source/af;->x:Landroidx/media2/exoplayer/external/upstream/f;

    .line 175
    iput-object p4, p0, Landroidx/media2/exoplayer/external/source/af;->y:Landroidx/media2/exoplayer/external/drm/k;

    .line 176
    iput-object p5, p0, Landroidx/media2/exoplayer/external/source/af;->z:Landroidx/media2/exoplayer/external/upstream/t;

    .line 177
    iput-object p6, p0, Landroidx/media2/exoplayer/external/source/af;->a:Landroidx/media2/exoplayer/external/source/u$a;

    .line 178
    iput-object p7, p0, Landroidx/media2/exoplayer/external/source/af;->b:Landroidx/media2/exoplayer/external/source/af$c;

    .line 179
    iput-object p8, p0, Landroidx/media2/exoplayer/external/source/af;->A:Landroidx/media2/exoplayer/external/upstream/b;

    .line 180
    iput-object p9, p0, Landroidx/media2/exoplayer/external/source/af;->B:Ljava/lang/String;

    int-to-long p1, p10

    .line 181
    iput-wide p1, p0, Landroidx/media2/exoplayer/external/source/af;->C:J

    .line 182
    new-instance p1, Landroidx/media2/exoplayer/external/upstream/Loader;

    const-string p2, "Loader:ProgressiveMediaPeriod"

    invoke-direct {p1, p2}, Landroidx/media2/exoplayer/external/upstream/Loader;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/af;->c:Landroidx/media2/exoplayer/external/upstream/Loader;

    .line 183
    new-instance p1, Landroidx/media2/exoplayer/external/source/af$b;

    invoke-direct {p1, p3}, Landroidx/media2/exoplayer/external/source/af$b;-><init>([Landroidx/media2/exoplayer/external/extractor/g;)V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/af;->D:Landroidx/media2/exoplayer/external/source/af$b;

    .line 184
    new-instance p1, Landroidx/media2/exoplayer/external/util/e;

    invoke-direct {p1}, Landroidx/media2/exoplayer/external/util/e;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/af;->d:Landroidx/media2/exoplayer/external/util/e;

    .line 185
    new-instance p1, Landroidx/media2/exoplayer/external/source/ag;

    invoke-direct {p1, p0}, Landroidx/media2/exoplayer/external/source/ag;-><init>(Landroidx/media2/exoplayer/external/source/af;)V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/af;->E:Ljava/lang/Runnable;

    .line 186
    new-instance p1, Landroidx/media2/exoplayer/external/source/ah;

    invoke-direct {p1, p0}, Landroidx/media2/exoplayer/external/source/ah;-><init>(Landroidx/media2/exoplayer/external/source/af;)V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/af;->F:Ljava/lang/Runnable;

    .line 193
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/af;->e:Landroid/os/Handler;

    const/4 p1, 0x0

    new-array p2, p1, [Landroidx/media2/exoplayer/external/source/af$f;

    .line 194
    iput-object p2, p0, Landroidx/media2/exoplayer/external/source/af;->k:[Landroidx/media2/exoplayer/external/source/af$f;

    new-array p2, p1, [Landroidx/media2/exoplayer/external/source/ak;

    .line 195
    iput-object p2, p0, Landroidx/media2/exoplayer/external/source/af;->i:[Landroidx/media2/exoplayer/external/source/ak;

    new-array p1, p1, [Landroidx/media2/exoplayer/external/source/j;

    .line 196
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/af;->j:[Landroidx/media2/exoplayer/external/source/j;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 197
    iput-wide p1, p0, Landroidx/media2/exoplayer/external/source/af;->K:J

    const-wide/16 p3, -0x1

    .line 198
    iput-wide p3, p0, Landroidx/media2/exoplayer/external/source/af;->r:J

    .line 199
    iput-wide p1, p0, Landroidx/media2/exoplayer/external/source/af;->q:J

    const/4 p1, 0x1

    .line 200
    iput p1, p0, Landroidx/media2/exoplayer/external/source/af;->p:I

    .line 201
    invoke-virtual {p6}, Landroidx/media2/exoplayer/external/source/u$a;->a()V

    return-void
.end method

.method static synthetic a(Landroidx/media2/exoplayer/external/source/af;)Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;
    .locals 0

    .line 69
    iget-object p0, p0, Landroidx/media2/exoplayer/external/source/af;->h:Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;

    return-object p0
.end method

.method static synthetic a(Landroidx/media2/exoplayer/external/source/af;Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;)Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;
    .locals 0

    .line 69
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/af;->h:Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;

    return-object p1
.end method

.method private a(Landroidx/media2/exoplayer/external/source/af$a;)V
    .locals 5

    .line 758
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/source/af;->r:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 7917
    iget-wide v0, p1, Landroidx/media2/exoplayer/external/source/af$a;->d:J

    .line 759
    iput-wide v0, p0, Landroidx/media2/exoplayer/external/source/af;->r:J

    :cond_0
    return-void
.end method

.method private a([ZJ)Z
    .locals 6

    .line 847
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/af;->i:[Landroidx/media2/exoplayer/external/source/ak;

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_3

    .line 849
    iget-object v4, p0, Landroidx/media2/exoplayer/external/source/af;->i:[Landroidx/media2/exoplayer/external/source/ak;

    aget-object v4, v4, v2

    .line 850
    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/source/ak;->b()V

    .line 851
    invoke-virtual {v4, p2, p3, v1}, Landroidx/media2/exoplayer/external/source/ak;->a(JZ)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    if-nez v3, :cond_2

    .line 857
    aget-boolean v3, p1, v2

    if-nez v3, :cond_1

    iget-boolean v3, p0, Landroidx/media2/exoplayer/external/source/af;->o:Z

    if-nez v3, :cond_2

    :cond_1
    return v1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v3
.end method

.method static synthetic b(Landroidx/media2/exoplayer/external/source/af;)J
    .locals 2

    .line 69
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/source/af;->C:J

    return-wide v0
.end method

.method static synthetic c(Landroidx/media2/exoplayer/external/source/af;)Ljava/lang/Runnable;
    .locals 0

    .line 69
    iget-object p0, p0, Landroidx/media2/exoplayer/external/source/af;->F:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic d(Landroidx/media2/exoplayer/external/source/af;)Landroid/os/Handler;
    .locals 0

    .line 69
    iget-object p0, p0, Landroidx/media2/exoplayer/external/source/af;->e:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic e(Landroidx/media2/exoplayer/external/source/af;)J
    .locals 2

    .line 69
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/source/af;->n()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic f(Landroidx/media2/exoplayer/external/source/af;)Ljava/lang/String;
    .locals 0

    .line 69
    iget-object p0, p0, Landroidx/media2/exoplayer/external/source/af;->B:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic j()Landroidx/media2/exoplayer/external/Format;
    .locals 1

    .line 69
    sget-object v0, Landroidx/media2/exoplayer/external/source/af;->v:Landroidx/media2/exoplayer/external/Format;

    return-object v0
.end method

.method private k()Landroidx/media2/exoplayer/external/source/af$d;
    .locals 1

    .line 754
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/af;->n:Landroidx/media2/exoplayer/external/source/af$d;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/source/af$d;

    return-object v0
.end method

.method private l()V
    .locals 22

    move-object/from16 v7, p0

    .line 764
    new-instance v8, Landroidx/media2/exoplayer/external/source/af$a;

    iget-object v2, v7, Landroidx/media2/exoplayer/external/source/af;->w:Landroid/net/Uri;

    iget-object v3, v7, Landroidx/media2/exoplayer/external/source/af;->x:Landroidx/media2/exoplayer/external/upstream/f;

    iget-object v4, v7, Landroidx/media2/exoplayer/external/source/af;->D:Landroidx/media2/exoplayer/external/source/af$b;

    iget-object v6, v7, Landroidx/media2/exoplayer/external/source/af;->d:Landroidx/media2/exoplayer/external/util/e;

    move-object v0, v8

    move-object/from16 v1, p0

    move-object/from16 v5, p0

    invoke-direct/range {v0 .. v6}, Landroidx/media2/exoplayer/external/source/af$a;-><init>(Landroidx/media2/exoplayer/external/source/af;Landroid/net/Uri;Landroidx/media2/exoplayer/external/upstream/f;Landroidx/media2/exoplayer/external/source/af$b;Landroidx/media2/exoplayer/external/extractor/i;Landroidx/media2/exoplayer/external/util/e;)V

    .line 767
    iget-boolean v0, v7, Landroidx/media2/exoplayer/external/source/af;->m:Z

    if-eqz v0, :cond_1

    .line 768
    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/source/af;->k()Landroidx/media2/exoplayer/external/source/af$d;

    move-result-object v0

    iget-object v0, v0, Landroidx/media2/exoplayer/external/source/af$d;->a:Landroidx/media2/exoplayer/external/extractor/o;

    .line 769
    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/source/af;->o()Z

    move-result v1

    invoke-static {v1}, Landroidx/media2/exoplayer/external/util/a;->b(Z)V

    .line 770
    iget-wide v1, v7, Landroidx/media2/exoplayer/external/source/af;->q:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    iget-wide v5, v7, Landroidx/media2/exoplayer/external/source/af;->K:J

    cmp-long v9, v5, v1

    if-lez v9, :cond_0

    const/4 v0, 0x1

    .line 771
    iput-boolean v0, v7, Landroidx/media2/exoplayer/external/source/af;->t:Z

    .line 772
    iput-wide v3, v7, Landroidx/media2/exoplayer/external/source/af;->K:J

    return-void

    .line 775
    :cond_0
    iget-wide v1, v7, Landroidx/media2/exoplayer/external/source/af;->K:J

    .line 776
    invoke-interface {v0, v1, v2}, Landroidx/media2/exoplayer/external/extractor/o;->a(J)Landroidx/media2/exoplayer/external/extractor/o$a;

    move-result-object v0

    iget-object v0, v0, Landroidx/media2/exoplayer/external/extractor/o$a;->a:Landroidx/media2/exoplayer/external/extractor/p;

    iget-wide v0, v0, Landroidx/media2/exoplayer/external/extractor/p;->c:J

    iget-wide v5, v7, Landroidx/media2/exoplayer/external/source/af;->K:J

    .line 8917
    invoke-virtual {v8, v0, v1, v5, v6}, Landroidx/media2/exoplayer/external/source/af$a;->a(JJ)V

    .line 777
    iput-wide v3, v7, Landroidx/media2/exoplayer/external/source/af;->K:J

    .line 779
    :cond_1
    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/source/af;->m()I

    move-result v0

    iput v0, v7, Landroidx/media2/exoplayer/external/source/af;->M:I

    .line 780
    iget-object v0, v7, Landroidx/media2/exoplayer/external/source/af;->c:Landroidx/media2/exoplayer/external/upstream/Loader;

    iget-object v1, v7, Landroidx/media2/exoplayer/external/source/af;->z:Landroidx/media2/exoplayer/external/upstream/t;

    iget v2, v7, Landroidx/media2/exoplayer/external/source/af;->p:I

    .line 782
    invoke-interface {v1, v2}, Landroidx/media2/exoplayer/external/upstream/t;->a(I)I

    move-result v1

    .line 781
    invoke-virtual {v0, v8, v7, v1}, Landroidx/media2/exoplayer/external/upstream/Loader;->a(Landroidx/media2/exoplayer/external/upstream/Loader$d;Landroidx/media2/exoplayer/external/upstream/Loader$a;I)J

    move-result-wide v20

    .line 783
    iget-object v9, v7, Landroidx/media2/exoplayer/external/source/af;->a:Landroidx/media2/exoplayer/external/source/u$a;

    .line 9917
    iget-object v10, v8, Landroidx/media2/exoplayer/external/source/af$a;->c:Landroidx/media2/exoplayer/external/upstream/h;

    const/4 v11, 0x1

    const/4 v12, -0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 10917
    iget-wide v0, v8, Landroidx/media2/exoplayer/external/source/af$a;->b:J

    .line 790
    iget-wide v2, v7, Landroidx/media2/exoplayer/external/source/af;->q:J

    move-wide/from16 v16, v0

    move-wide/from16 v18, v2

    .line 783
    invoke-virtual/range {v9 .. v21}, Landroidx/media2/exoplayer/external/source/u$a;->a(Landroidx/media2/exoplayer/external/upstream/h;IILandroidx/media2/exoplayer/external/Format;ILjava/lang/Object;JJJ)V

    return-void
.end method

.method private m()I
    .locals 5

    .line 866
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/af;->i:[Landroidx/media2/exoplayer/external/source/ak;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v4, v0, v2

    .line 11170
    iget-object v4, v4, Landroidx/media2/exoplayer/external/source/ak;->a:Landroidx/media2/exoplayer/external/source/aj;

    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/source/aj;->a()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v3
.end method

.method private n()J
    .locals 7

    .line 874
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/af;->i:[Landroidx/media2/exoplayer/external/source/ak;

    array-length v1, v0

    const-wide/high16 v2, -0x8000000000000000L

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_0

    aget-object v5, v0, v4

    .line 11257
    iget-object v5, v5, Landroidx/media2/exoplayer/external/source/ak;->a:Landroidx/media2/exoplayer/external/source/aj;

    invoke-virtual {v5}, Landroidx/media2/exoplayer/external/source/aj;->e()J

    move-result-wide v5

    .line 875
    invoke-static {v2, v3, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-wide v2
.end method

.method private o()Z
    .locals 5

    .line 882
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/source/af;->K:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final a(JLandroidx/media2/exoplayer/external/aj;)J
    .locals 9

    .line 442
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/source/af;->k()Landroidx/media2/exoplayer/external/source/af$d;

    move-result-object v0

    iget-object v0, v0, Landroidx/media2/exoplayer/external/source/af$d;->a:Landroidx/media2/exoplayer/external/extractor/o;

    .line 443
    invoke-interface {v0}, Landroidx/media2/exoplayer/external/extractor/o;->j_()Z

    move-result v1

    if-nez v1, :cond_0

    const-wide/16 p1, 0x0

    return-wide p1

    .line 447
    :cond_0
    invoke-interface {v0, p1, p2}, Landroidx/media2/exoplayer/external/extractor/o;->a(J)Landroidx/media2/exoplayer/external/extractor/o$a;

    move-result-object v0

    .line 448
    iget-object v1, v0, Landroidx/media2/exoplayer/external/extractor/o$a;->a:Landroidx/media2/exoplayer/external/extractor/p;

    iget-wide v5, v1, Landroidx/media2/exoplayer/external/extractor/p;->b:J

    iget-object v0, v0, Landroidx/media2/exoplayer/external/extractor/o$a;->b:Landroidx/media2/exoplayer/external/extractor/p;

    iget-wide v7, v0, Landroidx/media2/exoplayer/external/extractor/p;->b:J

    move-wide v2, p1

    move-object v4, p3

    invoke-static/range {v2 .. v8}, Landroidx/media2/exoplayer/external/util/ac;->a(JLandroidx/media2/exoplayer/external/aj;JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public final a([Landroidx/media2/exoplayer/external/trackselection/e;[Z[Landroidx/media2/exoplayer/external/source/al;[ZJ)J
    .locals 8

    .line 260
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/source/af;->k()Landroidx/media2/exoplayer/external/source/af$d;

    move-result-object v0

    .line 261
    iget-object v1, v0, Landroidx/media2/exoplayer/external/source/af$d;->b:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    .line 262
    iget-object v0, v0, Landroidx/media2/exoplayer/external/source/af$d;->d:[Z

    .line 263
    iget v2, p0, Landroidx/media2/exoplayer/external/source/af;->J:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 265
    :goto_0
    array-length v5, p1

    const/4 v6, 0x1

    if-ge v4, v5, :cond_2

    .line 266
    aget-object v5, p3, v4

    if-eqz v5, :cond_1

    aget-object v5, p1, v4

    if-eqz v5, :cond_0

    aget-boolean v5, p2, v4

    if-nez v5, :cond_1

    .line 267
    :cond_0
    aget-object v5, p3, v4

    check-cast v5, Landroidx/media2/exoplayer/external/source/af$e;

    .line 2885
    iget v5, v5, Landroidx/media2/exoplayer/external/source/af$e;->a:I

    .line 268
    aget-boolean v7, v0, v5

    invoke-static {v7}, Landroidx/media2/exoplayer/external/util/a;->b(Z)V

    .line 269
    iget v7, p0, Landroidx/media2/exoplayer/external/source/af;->J:I

    sub-int/2addr v7, v6

    iput v7, p0, Landroidx/media2/exoplayer/external/source/af;->J:I

    .line 270
    aput-boolean v3, v0, v5

    const/4 v5, 0x0

    .line 271
    aput-object v5, p3, v4

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 276
    :cond_2
    iget-boolean p2, p0, Landroidx/media2/exoplayer/external/source/af;->G:Z

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

    .line 278
    :goto_3
    array-length v4, p1

    if-ge v2, v4, :cond_9

    .line 279
    aget-object v4, p3, v2

    if-nez v4, :cond_8

    aget-object v4, p1, v2

    if-eqz v4, :cond_8

    .line 280
    aget-object v4, p1, v2

    .line 281
    invoke-interface {v4}, Landroidx/media2/exoplayer/external/trackselection/e;->f()I

    move-result v5

    if-ne v5, v6, :cond_5

    const/4 v5, 0x1

    goto :goto_4

    :cond_5
    const/4 v5, 0x0

    :goto_4
    invoke-static {v5}, Landroidx/media2/exoplayer/external/util/a;->b(Z)V

    .line 282
    invoke-interface {v4, v3}, Landroidx/media2/exoplayer/external/trackselection/e;->b(I)I

    move-result v5

    if-nez v5, :cond_6

    const/4 v5, 0x1

    goto :goto_5

    :cond_6
    const/4 v5, 0x0

    :goto_5
    invoke-static {v5}, Landroidx/media2/exoplayer/external/util/a;->b(Z)V

    .line 283
    invoke-interface {v4}, Landroidx/media2/exoplayer/external/trackselection/e;->e()Landroidx/media2/exoplayer/external/source/TrackGroup;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->indexOf(Landroidx/media2/exoplayer/external/source/TrackGroup;)I

    move-result v4

    .line 284
    aget-boolean v5, v0, v4

    xor-int/2addr v5, v6

    invoke-static {v5}, Landroidx/media2/exoplayer/external/util/a;->b(Z)V

    .line 285
    iget v5, p0, Landroidx/media2/exoplayer/external/source/af;->J:I

    add-int/2addr v5, v6

    iput v5, p0, Landroidx/media2/exoplayer/external/source/af;->J:I

    .line 286
    aput-boolean v6, v0, v4

    .line 287
    new-instance v5, Landroidx/media2/exoplayer/external/source/af$e;

    invoke-direct {v5, p0, v4}, Landroidx/media2/exoplayer/external/source/af$e;-><init>(Landroidx/media2/exoplayer/external/source/af;I)V

    aput-object v5, p3, v2

    .line 288
    aput-boolean v6, p4, v2

    if-nez p2, :cond_8

    .line 291
    iget-object p2, p0, Landroidx/media2/exoplayer/external/source/af;->i:[Landroidx/media2/exoplayer/external/source/ak;

    aget-object p2, p2, v4

    .line 292
    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/source/ak;->b()V

    .line 297
    invoke-virtual {p2, p5, p6, v6}, Landroidx/media2/exoplayer/external/source/ak;->a(JZ)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_7

    .line 3226
    iget-object p2, p2, Landroidx/media2/exoplayer/external/source/ak;->a:Landroidx/media2/exoplayer/external/source/aj;

    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/source/aj;->b()I

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

    .line 302
    :cond_9
    iget p1, p0, Landroidx/media2/exoplayer/external/source/af;->J:I

    if-nez p1, :cond_c

    .line 303
    iput-boolean v3, p0, Landroidx/media2/exoplayer/external/source/af;->L:Z

    .line 304
    iput-boolean v3, p0, Landroidx/media2/exoplayer/external/source/af;->H:Z

    .line 305
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/af;->c:Landroidx/media2/exoplayer/external/upstream/Loader;

    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/upstream/Loader;->a()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 307
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/af;->i:[Landroidx/media2/exoplayer/external/source/ak;

    array-length p2, p1

    :goto_7
    if-ge v3, p2, :cond_a

    aget-object p3, p1, v3

    .line 308
    invoke-virtual {p3}, Landroidx/media2/exoplayer/external/source/ak;->c()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 310
    :cond_a
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/af;->c:Landroidx/media2/exoplayer/external/upstream/Loader;

    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/upstream/Loader;->b()V

    goto :goto_a

    .line 312
    :cond_b
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/af;->i:[Landroidx/media2/exoplayer/external/source/ak;

    array-length p2, p1

    const/4 p3, 0x0

    :goto_8
    if-ge p3, p2, :cond_e

    aget-object p4, p1, p3

    .line 4129
    invoke-virtual {p4, v3}, Landroidx/media2/exoplayer/external/source/ak;->a(Z)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_8

    :cond_c
    if-eqz p2, :cond_e

    .line 317
    invoke-virtual {p0, p5, p6}, Landroidx/media2/exoplayer/external/source/af;->b(J)J

    move-result-wide p5

    .line 319
    :goto_9
    array-length p1, p3

    if-ge v3, p1, :cond_e

    .line 320
    aget-object p1, p3, v3

    if-eqz p1, :cond_d

    .line 321
    aput-boolean v6, p4, v3

    :cond_d
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 325
    :cond_e
    :goto_a
    iput-boolean v6, p0, Landroidx/media2/exoplayer/external/source/af;->G:Z

    return-wide p5
.end method

.method public final a(II)Landroidx/media2/exoplayer/external/extractor/q;
    .locals 1

    .line 647
    new-instance p2, Landroidx/media2/exoplayer/external/source/af$f;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, Landroidx/media2/exoplayer/external/source/af$f;-><init>(IZ)V

    invoke-virtual {p0, p2}, Landroidx/media2/exoplayer/external/source/af;->a(Landroidx/media2/exoplayer/external/source/af$f;)Landroidx/media2/exoplayer/external/extractor/q;

    move-result-object p1

    return-object p1
.end method

.method final a(Landroidx/media2/exoplayer/external/source/af$f;)Landroidx/media2/exoplayer/external/extractor/q;
    .locals 5

    .line 678
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/af;->i:[Landroidx/media2/exoplayer/external/source/ak;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 680
    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/af;->k:[Landroidx/media2/exoplayer/external/source/af$f;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Landroidx/media2/exoplayer/external/source/af$f;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 681
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/af;->i:[Landroidx/media2/exoplayer/external/source/ak;

    aget-object p1, p1, v1

    return-object p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 684
    :cond_1
    new-instance v1, Landroidx/media2/exoplayer/external/source/ak;

    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/af;->A:Landroidx/media2/exoplayer/external/upstream/b;

    invoke-direct {v1, v2}, Landroidx/media2/exoplayer/external/source/ak;-><init>(Landroidx/media2/exoplayer/external/upstream/b;)V

    .line 7614
    iput-object p0, v1, Landroidx/media2/exoplayer/external/source/ak;->f:Landroidx/media2/exoplayer/external/source/ak$b;

    .line 687
    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/af;->k:[Landroidx/media2/exoplayer/external/source/af$f;

    add-int/lit8 v3, v0, 0x1

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroidx/media2/exoplayer/external/source/af$f;

    .line 688
    aput-object p1, v2, v0

    .line 689
    invoke-static {v2}, Landroidx/media2/exoplayer/external/util/ac;->a([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroidx/media2/exoplayer/external/source/af$f;

    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/af;->k:[Landroidx/media2/exoplayer/external/source/af$f;

    .line 690
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/af;->i:[Landroidx/media2/exoplayer/external/source/ak;

    invoke-static {p1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroidx/media2/exoplayer/external/source/ak;

    .line 691
    aput-object v1, p1, v0

    .line 692
    invoke-static {p1}, Landroidx/media2/exoplayer/external/util/ac;->a([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroidx/media2/exoplayer/external/source/ak;

    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/af;->i:[Landroidx/media2/exoplayer/external/source/ak;

    .line 694
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/af;->j:[Landroidx/media2/exoplayer/external/source/j;

    .line 695
    invoke-static {p1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroidx/media2/exoplayer/external/source/j;

    .line 696
    new-instance v2, Landroidx/media2/exoplayer/external/source/j;

    iget-object v3, p0, Landroidx/media2/exoplayer/external/source/af;->i:[Landroidx/media2/exoplayer/external/source/ak;

    aget-object v3, v3, v0

    iget-object v4, p0, Landroidx/media2/exoplayer/external/source/af;->y:Landroidx/media2/exoplayer/external/drm/k;

    invoke-direct {v2, v3, v4}, Landroidx/media2/exoplayer/external/source/j;-><init>(Landroidx/media2/exoplayer/external/source/ak;Landroidx/media2/exoplayer/external/drm/k;)V

    aput-object v2, p1, v0

    .line 698
    invoke-static {p1}, Landroidx/media2/exoplayer/external/util/ac;->a([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroidx/media2/exoplayer/external/source/j;

    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/af;->j:[Landroidx/media2/exoplayer/external/source/j;

    return-object v1
.end method

.method public final synthetic a(Landroidx/media2/exoplayer/external/upstream/Loader$d;JJLjava/io/IOException;I)Landroidx/media2/exoplayer/external/upstream/Loader$b;
    .locals 24

    move-object/from16 v0, p0

    .line 68
    move-object/from16 v1, p1

    check-cast v1, Landroidx/media2/exoplayer/external/source/af$a;

    .line 11609
    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/source/af;->a(Landroidx/media2/exoplayer/external/source/af$a;)V

    .line 11611
    iget-object v2, v0, Landroidx/media2/exoplayer/external/source/af;->z:Landroidx/media2/exoplayer/external/upstream/t;

    move-object/from16 v14, p6

    move/from16 v3, p7

    .line 11612
    invoke-interface {v2, v14, v3}, Landroidx/media2/exoplayer/external/upstream/t;->a(Ljava/io/IOException;I)J

    move-result-wide v2

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v6, 0x1

    cmp-long v7, v2, v4

    if-nez v7, :cond_0

    .line 11614
    sget-object v2, Landroidx/media2/exoplayer/external/upstream/Loader;->d:Landroidx/media2/exoplayer/external/upstream/Loader$b;

    goto :goto_5

    .line 11616
    :cond_0
    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/source/af;->m()I

    move-result v7

    .line 11617
    iget v8, v0, Landroidx/media2/exoplayer/external/source/af;->M:I

    const/4 v9, 0x0

    if-le v7, v8, :cond_1

    const/4 v8, 0x1

    goto :goto_0

    :cond_1
    const/4 v8, 0x0

    .line 11805
    :goto_0
    iget-wide v10, v0, Landroidx/media2/exoplayer/external/source/af;->r:J

    const-wide/16 v12, -0x1

    cmp-long v15, v10, v12

    if-nez v15, :cond_5

    iget-object v10, v0, Landroidx/media2/exoplayer/external/source/af;->g:Landroidx/media2/exoplayer/external/extractor/o;

    if-eqz v10, :cond_2

    .line 11806
    invoke-interface {v10}, Landroidx/media2/exoplayer/external/extractor/o;->b()J

    move-result-wide v10

    cmp-long v12, v10, v4

    if-eqz v12, :cond_2

    goto :goto_2

    .line 11811
    :cond_2
    iget-boolean v4, v0, Landroidx/media2/exoplayer/external/source/af;->m:Z

    if-eqz v4, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/source/af;->h()Z

    move-result v4

    if-nez v4, :cond_3

    .line 11821
    iput-boolean v6, v0, Landroidx/media2/exoplayer/external/source/af;->L:Z

    goto :goto_4

    .line 11828
    :cond_3
    iget-boolean v4, v0, Landroidx/media2/exoplayer/external/source/af;->m:Z

    iput-boolean v4, v0, Landroidx/media2/exoplayer/external/source/af;->H:Z

    const-wide/16 v4, 0x0

    .line 11829
    iput-wide v4, v0, Landroidx/media2/exoplayer/external/source/af;->s:J

    .line 11830
    iput v9, v0, Landroidx/media2/exoplayer/external/source/af;->M:I

    .line 11831
    iget-object v7, v0, Landroidx/media2/exoplayer/external/source/af;->i:[Landroidx/media2/exoplayer/external/source/ak;

    array-length v10, v7

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v10, :cond_4

    aget-object v12, v7, v11

    .line 12129
    invoke-virtual {v12, v9}, Landroidx/media2/exoplayer/external/source/ak;->a(Z)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 12917
    :cond_4
    invoke-virtual {v1, v4, v5, v4, v5}, Landroidx/media2/exoplayer/external/source/af$a;->a(JJ)V

    goto :goto_3

    .line 11809
    :cond_5
    :goto_2
    iput v7, v0, Landroidx/media2/exoplayer/external/source/af;->M:I

    :goto_3
    const/4 v9, 0x1

    :goto_4
    if-eqz v9, :cond_6

    .line 11620
    invoke-static {v8, v2, v3}, Landroidx/media2/exoplayer/external/upstream/Loader;->a(ZJ)Landroidx/media2/exoplayer/external/upstream/Loader$b;

    move-result-object v2

    goto :goto_5

    .line 11621
    :cond_6
    sget-object v2, Landroidx/media2/exoplayer/external/upstream/Loader;->c:Landroidx/media2/exoplayer/external/upstream/Loader$b;

    .line 11624
    :goto_5
    iget-object v3, v0, Landroidx/media2/exoplayer/external/source/af;->a:Landroidx/media2/exoplayer/external/source/u$a;

    .line 13917
    iget-object v4, v1, Landroidx/media2/exoplayer/external/source/af$a;->c:Landroidx/media2/exoplayer/external/upstream/h;

    .line 14917
    iget-object v5, v1, Landroidx/media2/exoplayer/external/source/af$a;->a:Landroidx/media2/exoplayer/external/upstream/v;

    .line 15071
    iget-object v5, v5, Landroidx/media2/exoplayer/external/upstream/v;->b:Landroid/net/Uri;

    .line 15917
    iget-object v7, v1, Landroidx/media2/exoplayer/external/source/af$a;->a:Landroidx/media2/exoplayer/external/upstream/v;

    .line 16076
    iget-object v7, v7, Landroidx/media2/exoplayer/external/upstream/v;->c:Ljava/util/Map;

    const/4 v8, 0x1

    const/4 v9, -0x1

    const/4 v10, 0x0

    .line 16917
    iget-wide v12, v1, Landroidx/media2/exoplayer/external/source/af$a;->b:J

    move-wide v15, v12

    .line 11633
    iget-wide v11, v0, Landroidx/media2/exoplayer/external/source/af;->q:J

    .line 17917
    iget-object v1, v1, Landroidx/media2/exoplayer/external/source/af$a;->a:Landroidx/media2/exoplayer/external/upstream/v;

    move-wide/from16 v17, v11

    .line 18063
    iget-wide v11, v1, Landroidx/media2/exoplayer/external/upstream/v;->a:J

    .line 11639
    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/upstream/Loader$b;->a()Z

    move-result v1

    xor-int/lit8 v23, v1, 0x1

    move-object v6, v7

    move v7, v8

    move v8, v9

    move-object v9, v10

    const/4 v1, 0x0

    move v10, v1

    move-wide/from16 v20, v11

    const/4 v1, 0x0

    move-object v11, v1

    move-wide v12, v15

    move-wide/from16 v14, v17

    move-wide/from16 v16, p2

    move-wide/from16 v18, p4

    move-object/from16 v22, p6

    .line 11624
    invoke-virtual/range {v3 .. v23}, Landroidx/media2/exoplayer/external/source/u$a;->a(Landroidx/media2/exoplayer/external/upstream/h;Landroid/net/Uri;Ljava/util/Map;IILandroidx/media2/exoplayer/external/Format;ILjava/lang/Object;JJJJJLjava/io/IOException;Z)V

    return-object v2
.end method

.method public final a()V
    .locals 2

    const/4 v0, 0x1

    .line 652
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/source/af;->l:Z

    .line 653
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/af;->e:Landroid/os/Handler;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/af;->E:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method final a(I)V
    .locals 10

    .line 507
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/source/af;->k()Landroidx/media2/exoplayer/external/source/af$d;

    move-result-object v0

    .line 508
    iget-object v1, v0, Landroidx/media2/exoplayer/external/source/af$d;->e:[Z

    .line 509
    aget-boolean v2, v1, p1

    if-nez v2, :cond_0

    .line 510
    iget-object v0, v0, Landroidx/media2/exoplayer/external/source/af$d;->b:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    invoke-virtual {v0, p1}, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->get(I)Landroidx/media2/exoplayer/external/source/TrackGroup;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroidx/media2/exoplayer/external/source/TrackGroup;->getFormat(I)Landroidx/media2/exoplayer/external/Format;

    move-result-object v5

    .line 511
    iget-object v3, p0, Landroidx/media2/exoplayer/external/source/af;->a:Landroidx/media2/exoplayer/external/source/u$a;

    iget-object v0, v5, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    .line 512
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/m;->g(Ljava/lang/String;)I

    move-result v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-wide v8, p0, Landroidx/media2/exoplayer/external/source/af;->s:J

    .line 511
    invoke-virtual/range {v3 .. v9}, Landroidx/media2/exoplayer/external/source/u$a;->a(ILandroidx/media2/exoplayer/external/Format;ILjava/lang/Object;J)V

    const/4 v0, 0x1

    .line 517
    aput-boolean v0, v1, p1

    :cond_0
    return-void
.end method

.method public final a(J)V
    .locals 0

    return-void
.end method

.method public final a(JZ)V
    .locals 5

    .line 331
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/source/af;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 334
    :cond_0
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/source/af;->k()Landroidx/media2/exoplayer/external/source/af$d;

    move-result-object v0

    iget-object v0, v0, Landroidx/media2/exoplayer/external/source/af$d;->d:[Z

    .line 335
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/af;->i:[Landroidx/media2/exoplayer/external/source/ak;

    array-length v1, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 337
    iget-object v3, p0, Landroidx/media2/exoplayer/external/source/af;->i:[Landroidx/media2/exoplayer/external/source/ak;

    aget-object v3, v3, v2

    aget-boolean v4, v0, v2

    invoke-virtual {v3, p1, p2, p3, v4}, Landroidx/media2/exoplayer/external/source/ak;->a(JZZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final a(Landroidx/media2/exoplayer/external/extractor/o;)V
    .locals 2

    .line 658
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/af;->h:Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Landroidx/media2/exoplayer/external/extractor/o$b;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {p1, v0, v1}, Landroidx/media2/exoplayer/external/extractor/o$b;-><init>(J)V

    :goto_0
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/af;->g:Landroidx/media2/exoplayer/external/extractor/o;

    .line 659
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/af;->e:Landroid/os/Handler;

    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/af;->E:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(Landroidx/media2/exoplayer/external/source/s$a;J)V
    .locals 0

    .line 235
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/af;->f:Landroidx/media2/exoplayer/external/source/s$a;

    .line 236
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/af;->d:Landroidx/media2/exoplayer/external/util/e;

    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/e;->a()Z

    .line 237
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/source/af;->l()V

    return-void
.end method

.method public final synthetic a(Landroidx/media2/exoplayer/external/upstream/Loader$d;JJ)V
    .locals 25

    move-object/from16 v0, p0

    .line 68
    move-object/from16 v1, p1

    check-cast v1, Landroidx/media2/exoplayer/external/source/af$a;

    .line 23548
    iget-wide v2, v0, Landroidx/media2/exoplayer/external/source/af;->q:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v6, v2, v4

    if-nez v6, :cond_1

    iget-object v2, v0, Landroidx/media2/exoplayer/external/source/af;->g:Landroidx/media2/exoplayer/external/extractor/o;

    if-eqz v2, :cond_1

    .line 23549
    invoke-interface {v2}, Landroidx/media2/exoplayer/external/extractor/o;->j_()Z

    move-result v2

    .line 23550
    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/source/af;->n()J

    move-result-wide v3

    const-wide/high16 v5, -0x8000000000000000L

    cmp-long v7, v3, v5

    if-nez v7, :cond_0

    const-wide/16 v3, 0x0

    goto :goto_0

    :cond_0
    const-wide/16 v5, 0x2710

    add-long/2addr v3, v5

    .line 23552
    :goto_0
    iput-wide v3, v0, Landroidx/media2/exoplayer/external/source/af;->q:J

    .line 23553
    iget-object v5, v0, Landroidx/media2/exoplayer/external/source/af;->b:Landroidx/media2/exoplayer/external/source/af$c;

    invoke-interface {v5, v3, v4, v2}, Landroidx/media2/exoplayer/external/source/af$c;->a(JZ)V

    .line 23555
    :cond_1
    iget-object v6, v0, Landroidx/media2/exoplayer/external/source/af;->a:Landroidx/media2/exoplayer/external/source/u$a;

    .line 23917
    iget-object v7, v1, Landroidx/media2/exoplayer/external/source/af$a;->c:Landroidx/media2/exoplayer/external/upstream/h;

    .line 24917
    iget-object v2, v1, Landroidx/media2/exoplayer/external/source/af$a;->a:Landroidx/media2/exoplayer/external/upstream/v;

    .line 25071
    iget-object v8, v2, Landroidx/media2/exoplayer/external/upstream/v;->b:Landroid/net/Uri;

    .line 25917
    iget-object v2, v1, Landroidx/media2/exoplayer/external/source/af$a;->a:Landroidx/media2/exoplayer/external/upstream/v;

    .line 26076
    iget-object v9, v2, Landroidx/media2/exoplayer/external/upstream/v;->c:Ljava/util/Map;

    const/4 v10, 0x1

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 26917
    iget-wide v2, v1, Landroidx/media2/exoplayer/external/source/af$a;->b:J

    move-wide v15, v2

    .line 23564
    iget-wide v2, v0, Landroidx/media2/exoplayer/external/source/af;->q:J

    move-wide/from16 v17, v2

    .line 27917
    iget-object v2, v1, Landroidx/media2/exoplayer/external/source/af$a;->a:Landroidx/media2/exoplayer/external/upstream/v;

    .line 28063
    iget-wide v2, v2, Landroidx/media2/exoplayer/external/upstream/v;->a:J

    move-wide/from16 v23, v2

    move-wide/from16 v19, p2

    move-wide/from16 v21, p4

    .line 23555
    invoke-virtual/range {v6 .. v24}, Landroidx/media2/exoplayer/external/source/u$a;->a(Landroidx/media2/exoplayer/external/upstream/h;Landroid/net/Uri;Ljava/util/Map;IILandroidx/media2/exoplayer/external/Format;ILjava/lang/Object;JJJJJ)V

    .line 23569
    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/source/af;->a(Landroidx/media2/exoplayer/external/source/af$a;)V

    const/4 v1, 0x1

    .line 23570
    iput-boolean v1, v0, Landroidx/media2/exoplayer/external/source/af;->t:Z

    .line 23571
    iget-object v1, v0, Landroidx/media2/exoplayer/external/source/af;->f:Landroidx/media2/exoplayer/external/source/s$a;

    invoke-static {v1}, Landroidx/media2/exoplayer/external/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/source/s$a;

    invoke-interface {v1, v0}, Landroidx/media2/exoplayer/external/source/s$a;->a(Landroidx/media2/exoplayer/external/source/am;)V

    return-void
.end method

.method public final synthetic a(Landroidx/media2/exoplayer/external/upstream/Loader$d;JJZ)V
    .locals 21

    move-object/from16 v0, p0

    move-wide/from16 v14, p2

    move-wide/from16 v16, p4

    .line 68
    move-object/from16 v9, p1

    check-cast v9, Landroidx/media2/exoplayer/external/source/af$a;

    .line 18577
    iget-object v1, v0, Landroidx/media2/exoplayer/external/source/af;->a:Landroidx/media2/exoplayer/external/source/u$a;

    .line 18917
    iget-object v2, v9, Landroidx/media2/exoplayer/external/source/af$a;->c:Landroidx/media2/exoplayer/external/upstream/h;

    .line 19917
    iget-object v3, v9, Landroidx/media2/exoplayer/external/source/af$a;->a:Landroidx/media2/exoplayer/external/upstream/v;

    .line 20071
    iget-object v3, v3, Landroidx/media2/exoplayer/external/upstream/v;->b:Landroid/net/Uri;

    .line 20917
    iget-object v4, v9, Landroidx/media2/exoplayer/external/source/af$a;->a:Landroidx/media2/exoplayer/external/upstream/v;

    .line 21076
    iget-object v4, v4, Landroidx/media2/exoplayer/external/upstream/v;->c:Ljava/util/Map;

    .line 21917
    iget-wide v10, v9, Landroidx/media2/exoplayer/external/source/af$a;->b:J

    .line 18586
    iget-wide v12, v0, Landroidx/media2/exoplayer/external/source/af;->q:J

    .line 22917
    iget-object v5, v9, Landroidx/media2/exoplayer/external/source/af$a;->a:Landroidx/media2/exoplayer/external/upstream/v;

    .line 23063
    iget-wide v5, v5, Landroidx/media2/exoplayer/external/upstream/v;->a:J

    move-wide/from16 v18, v5

    const/4 v5, 0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v20, 0x0

    move-object v0, v9

    move-object/from16 v9, v20

    .line 18577
    invoke-virtual/range {v1 .. v19}, Landroidx/media2/exoplayer/external/source/u$a;->b(Landroidx/media2/exoplayer/external/upstream/h;Landroid/net/Uri;Ljava/util/Map;IILandroidx/media2/exoplayer/external/Format;ILjava/lang/Object;JJJJJ)V

    if-nez p6, :cond_1

    move-object v1, v0

    move-object/from16 v0, p0

    .line 18592
    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/source/af;->a(Landroidx/media2/exoplayer/external/source/af$a;)V

    .line 18593
    iget-object v1, v0, Landroidx/media2/exoplayer/external/source/af;->i:[Landroidx/media2/exoplayer/external/source/ak;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, v1, v4

    .line 23129
    invoke-virtual {v5, v3}, Landroidx/media2/exoplayer/external/source/ak;->a(Z)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 18596
    :cond_0
    iget v1, v0, Landroidx/media2/exoplayer/external/source/af;->J:I

    if-lez v1, :cond_2

    .line 18597
    iget-object v1, v0, Landroidx/media2/exoplayer/external/source/af;->f:Landroidx/media2/exoplayer/external/source/s$a;

    invoke-static {v1}, Landroidx/media2/exoplayer/external/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/source/s$a;

    invoke-interface {v1, v0}, Landroidx/media2/exoplayer/external/source/s$a;->a(Landroidx/media2/exoplayer/external/source/am;)V

    goto :goto_1

    :cond_1
    move-object/from16 v0, p0

    :cond_2
    :goto_1
    return-void
.end method

.method public final b(J)J
    .locals 5

    .line 406
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/source/af;->k()Landroidx/media2/exoplayer/external/source/af$d;

    move-result-object v0

    .line 407
    iget-object v1, v0, Landroidx/media2/exoplayer/external/source/af$d;->a:Landroidx/media2/exoplayer/external/extractor/o;

    .line 408
    iget-object v0, v0, Landroidx/media2/exoplayer/external/source/af$d;->c:[Z

    .line 410
    invoke-interface {v1}, Landroidx/media2/exoplayer/external/extractor/o;->j_()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 p1, 0x0

    :goto_0
    const/4 v1, 0x0

    .line 412
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/source/af;->H:Z

    .line 413
    iput-wide p1, p0, Landroidx/media2/exoplayer/external/source/af;->s:J

    .line 414
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/source/af;->o()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 416
    iput-wide p1, p0, Landroidx/media2/exoplayer/external/source/af;->K:J

    return-wide p1

    .line 421
    :cond_1
    iget v2, p0, Landroidx/media2/exoplayer/external/source/af;->p:I

    const/4 v3, 0x7

    if-eq v2, v3, :cond_2

    .line 422
    invoke-direct {p0, v0, p1, p2}, Landroidx/media2/exoplayer/external/source/af;->a([ZJ)Z

    move-result v0

    if-eqz v0, :cond_2

    return-wide p1

    .line 427
    :cond_2
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/source/af;->L:Z

    .line 428
    iput-wide p1, p0, Landroidx/media2/exoplayer/external/source/af;->K:J

    .line 429
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/source/af;->t:Z

    .line 430
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/af;->c:Landroidx/media2/exoplayer/external/upstream/Loader;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/upstream/Loader;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 431
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/af;->c:Landroidx/media2/exoplayer/external/upstream/Loader;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/upstream/Loader;->b()V

    goto :goto_2

    .line 433
    :cond_3
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/af;->i:[Landroidx/media2/exoplayer/external/source/ak;

    array-length v2, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_4

    aget-object v4, v0, v3

    .line 6129
    invoke-virtual {v4, v1}, Landroidx/media2/exoplayer/external/source/ak;->a(Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    return-wide p1
.end method

.method public final b()Landroidx/media2/exoplayer/external/source/TrackGroupArray;
    .locals 1

    .line 250
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/source/af;->k()Landroidx/media2/exoplayer/external/source/af$d;

    move-result-object v0

    iget-object v0, v0, Landroidx/media2/exoplayer/external/source/af$d;->b:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    return-object v0
.end method

.method final b(I)V
    .locals 4

    .line 522
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/source/af;->k()Landroidx/media2/exoplayer/external/source/af$d;

    move-result-object v0

    iget-object v0, v0, Landroidx/media2/exoplayer/external/source/af$d;->c:[Z

    .line 523
    iget-boolean v1, p0, Landroidx/media2/exoplayer/external/source/af;->L:Z

    if-eqz v1, :cond_2

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/af;->i:[Landroidx/media2/exoplayer/external/source/ak;

    aget-object p1, v0, p1

    .line 6212
    iget-object p1, p1, Landroidx/media2/exoplayer/external/source/ak;->a:Landroidx/media2/exoplayer/external/source/aj;

    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/source/aj;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    const-wide/16 v0, 0x0

    .line 528
    iput-wide v0, p0, Landroidx/media2/exoplayer/external/source/af;->K:J

    const/4 p1, 0x0

    .line 529
    iput-boolean p1, p0, Landroidx/media2/exoplayer/external/source/af;->L:Z

    const/4 v2, 0x1

    .line 530
    iput-boolean v2, p0, Landroidx/media2/exoplayer/external/source/af;->H:Z

    .line 531
    iput-wide v0, p0, Landroidx/media2/exoplayer/external/source/af;->s:J

    .line 532
    iput p1, p0, Landroidx/media2/exoplayer/external/source/af;->M:I

    .line 533
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/af;->i:[Landroidx/media2/exoplayer/external/source/ak;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 7129
    invoke-virtual {v3, p1}, Landroidx/media2/exoplayer/external/source/ak;->a(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 536
    :cond_1
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/af;->f:Landroidx/media2/exoplayer/external/source/s$a;

    invoke-static {p1}, Landroidx/media2/exoplayer/external/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media2/exoplayer/external/source/s$a;

    invoke-interface {p1, p0}, Landroidx/media2/exoplayer/external/source/s$a;->a(Landroidx/media2/exoplayer/external/source/am;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final c()J
    .locals 2

    .line 366
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/source/af;->I:Z

    if-nez v0, :cond_0

    .line 367
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/af;->a:Landroidx/media2/exoplayer/external/source/u$a;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/source/u$a;->c()V

    const/4 v0, 0x1

    .line 368
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/source/af;->I:Z

    .line 370
    :cond_0
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/source/af;->H:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/source/af;->t:Z

    if-nez v0, :cond_1

    .line 371
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/source/af;->m()I

    move-result v0

    iget v1, p0, Landroidx/media2/exoplayer/external/source/af;->M:I

    if-le v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x0

    .line 372
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/source/af;->H:Z

    .line 373
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/source/af;->s:J

    return-wide v0

    :cond_2
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method public final c(J)Z
    .locals 0

    .line 348
    iget-boolean p1, p0, Landroidx/media2/exoplayer/external/source/af;->t:Z

    if-nez p1, :cond_2

    iget-boolean p1, p0, Landroidx/media2/exoplayer/external/source/af;->L:Z

    if-nez p1, :cond_2

    iget-boolean p1, p0, Landroidx/media2/exoplayer/external/source/af;->m:Z

    if-eqz p1, :cond_0

    iget p1, p0, Landroidx/media2/exoplayer/external/source/af;->J:I

    if-nez p1, :cond_0

    goto :goto_0

    .line 351
    :cond_0
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/af;->d:Landroidx/media2/exoplayer/external/util/e;

    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/e;->a()Z

    move-result p1

    .line 352
    iget-object p2, p0, Landroidx/media2/exoplayer/external/source/af;->c:Landroidx/media2/exoplayer/external/upstream/Loader;

    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/upstream/Loader;->a()Z

    move-result p2

    if-nez p2, :cond_1

    .line 353
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/source/af;->l()V

    const/4 p1, 0x1

    :cond_1
    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final d()J
    .locals 11

    .line 380
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/source/af;->k()Landroidx/media2/exoplayer/external/source/af$d;

    move-result-object v0

    iget-object v0, v0, Landroidx/media2/exoplayer/external/source/af$d;->c:[Z

    .line 381
    iget-boolean v1, p0, Landroidx/media2/exoplayer/external/source/af;->t:Z

    const-wide/high16 v2, -0x8000000000000000L

    if-eqz v1, :cond_0

    return-wide v2

    .line 383
    :cond_0
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/source/af;->o()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 384
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/source/af;->K:J

    return-wide v0

    .line 387
    :cond_1
    iget-boolean v1, p0, Landroidx/media2/exoplayer/external/source/af;->o:Z

    const-wide v4, 0x7fffffffffffffffL

    if-eqz v1, :cond_3

    .line 389
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/af;->i:[Landroidx/media2/exoplayer/external/source/ak;

    array-length v1, v1

    const/4 v6, 0x0

    move-wide v7, v4

    :goto_0
    if-ge v6, v1, :cond_4

    .line 391
    aget-boolean v9, v0, v6

    if-eqz v9, :cond_2

    iget-object v9, p0, Landroidx/media2/exoplayer/external/source/af;->i:[Landroidx/media2/exoplayer/external/source/ak;

    aget-object v9, v9, v6

    .line 4266
    iget-object v9, v9, Landroidx/media2/exoplayer/external/source/ak;->a:Landroidx/media2/exoplayer/external/source/aj;

    invoke-virtual {v9}, Landroidx/media2/exoplayer/external/source/aj;->f()Z

    move-result v9

    if-nez v9, :cond_2

    .line 392
    iget-object v9, p0, Landroidx/media2/exoplayer/external/source/af;->i:[Landroidx/media2/exoplayer/external/source/ak;

    aget-object v9, v9, v6

    .line 5257
    iget-object v9, v9, Landroidx/media2/exoplayer/external/source/ak;->a:Landroidx/media2/exoplayer/external/source/aj;

    invoke-virtual {v9}, Landroidx/media2/exoplayer/external/source/aj;->e()J

    move-result-wide v9

    .line 392
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

    .line 398
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/source/af;->n()J

    move-result-wide v7

    :cond_5
    cmp-long v0, v7, v2

    if-nez v0, :cond_6

    .line 400
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/source/af;->s:J

    return-wide v0

    :cond_6
    return-wide v7
.end method

.method public final e()J
    .locals 2

    .line 361
    iget v0, p0, Landroidx/media2/exoplayer/external/source/af;->J:I

    if-nez v0, :cond_0

    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0

    :cond_0
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/source/af;->d()J

    move-result-wide v0

    return-wide v0
.end method

.method public final f()V
    .locals 5

    .line 224
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/af;->i:[Landroidx/media2/exoplayer/external/source/ak;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 1129
    invoke-virtual {v4, v2}, Landroidx/media2/exoplayer/external/source/ak;->a(Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 227
    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/af;->j:[Landroidx/media2/exoplayer/external/source/j;

    array-length v1, v0

    :goto_1
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 228
    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/source/j;->a()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 230
    :cond_1
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/af;->D:Landroidx/media2/exoplayer/external/source/af$b;

    .line 2107
    iget-object v1, v0, Landroidx/media2/exoplayer/external/source/af$b;->a:Landroidx/media2/exoplayer/external/extractor/g;

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    .line 2109
    iput-object v1, v0, Landroidx/media2/exoplayer/external/source/af$b;->a:Landroidx/media2/exoplayer/external/extractor/g;

    :cond_2
    return-void
.end method

.method final g()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 464
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/af;->c:Landroidx/media2/exoplayer/external/upstream/Loader;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/af;->z:Landroidx/media2/exoplayer/external/upstream/t;

    iget v2, p0, Landroidx/media2/exoplayer/external/source/af;->p:I

    invoke-interface {v1, v2}, Landroidx/media2/exoplayer/external/upstream/t;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/upstream/Loader;->a(I)V

    return-void
.end method

.method final h()Z
    .locals 1

    .line 540
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/source/af;->H:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Landroidx/media2/exoplayer/external/source/af;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final i()V
    .locals 2

    .line 672
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/af;->e:Landroid/os/Handler;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/af;->E:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final k_()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 242
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/source/af;->g()V

    .line 243
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/source/af;->t:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/source/af;->m:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 244
    :cond_0
    new-instance v0, Landroidx/media2/exoplayer/external/ParserException;

    const-string v1, "Loading finished before preparation is complete."

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method
