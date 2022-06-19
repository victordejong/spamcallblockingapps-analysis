.class final Lcom/google/android/exoplayer2/source/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/j;
.implements Lcom/google/android/exoplayer2/source/p;
.implements Lcom/google/android/exoplayer2/source/z$b;
.implements Lcom/google/android/exoplayer2/upstream/Loader$a;
.implements Lcom/google/android/exoplayer2/upstream/Loader$e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/w$d;,
        Lcom/google/android/exoplayer2/source/w$e;,
        Lcom/google/android/exoplayer2/source/w$a;,
        Lcom/google/android/exoplayer2/source/w$c;,
        Lcom/google/android/exoplayer2/source/w$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/exoplayer2/extractor/j;",
        "Lcom/google/android/exoplayer2/source/p;",
        "Lcom/google/android/exoplayer2/source/z$b;",
        "Lcom/google/android/exoplayer2/upstream/Loader$a<",
        "Lcom/google/android/exoplayer2/source/w$a;",
        ">;",
        "Lcom/google/android/exoplayer2/upstream/Loader$e;"
    }
.end annotation


# static fields
.field private static final i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final j:Lcom/google/android/exoplayer2/Format;


# instance fields
.field private A:Z

.field private B:Z

.field private C:Lcom/google/android/exoplayer2/source/w$e;

.field private D:Lcom/google/android/exoplayer2/extractor/v;

.field private E:J

.field private F:Z

.field private G:I

.field private H:Z

.field private I:Z

.field private J:I

.field private K:J

.field private L:J

.field private M:J

.field private N:Z

.field private O:I

.field final b:Lcom/google/android/exoplayer2/upstream/Loader;

.field final c:Landroid/os/Handler;

.field d:Lcom/google/android/exoplayer2/source/p$a;

.field e:[Lcom/google/android/exoplayer2/source/z;

.field f:Z

.field g:Z

.field h:Z

.field private final k:Landroid/net/Uri;

.field private final l:Lcom/google/android/exoplayer2/upstream/h;

.field private final m:Lcom/google/android/exoplayer2/drm/d;

.field private final n:Lcom/google/android/exoplayer2/upstream/r;

.field private final o:Lcom/google/android/exoplayer2/source/s$a;

.field private final p:Lcom/google/android/exoplayer2/drm/c$a;

.field private final q:Lcom/google/android/exoplayer2/source/w$b;

.field private final r:Lcom/google/android/exoplayer2/upstream/b;

.field private final s:Ljava/lang/String;

.field private final t:J

.field private final u:Lcom/google/android/exoplayer2/source/v;

.field private final v:Lcom/google/android/exoplayer2/util/f;

.field private final w:Ljava/lang/Runnable;

.field private final x:Ljava/lang/Runnable;

.field private y:Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;

.field private z:[Lcom/google/android/exoplayer2/source/w$d;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 35151
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "Icy-MetaData"

    const-string v2, "1"

    .line 35152
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35155
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 98
    sput-object v0, Lcom/google/android/exoplayer2/source/w;->i:Ljava/util/Map;

    .line 100
    new-instance v0, Lcom/google/android/exoplayer2/Format$a;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/Format$a;-><init>()V

    const-string v1, "icy"

    .line 35244
    iput-object v1, v0, Lcom/google/android/exoplayer2/Format$a;->a:Ljava/lang/String;

    const-string v1, "application/x-icy"

    .line 35370
    iput-object v1, v0, Lcom/google/android/exoplayer2/Format$a;->k:Ljava/lang/String;

    .line 101
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Format$a;->a()Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/w;->j:Lcom/google/android/exoplayer2/Format;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/h;Lcom/google/android/exoplayer2/extractor/l;Lcom/google/android/exoplayer2/drm/d;Lcom/google/android/exoplayer2/drm/c$a;Lcom/google/android/exoplayer2/upstream/r;Lcom/google/android/exoplayer2/source/s$a;Lcom/google/android/exoplayer2/source/w$b;Lcom/google/android/exoplayer2/upstream/b;Ljava/lang/String;I)V
    .locals 0

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/w;->k:Landroid/net/Uri;

    .line 181
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/w;->l:Lcom/google/android/exoplayer2/upstream/h;

    .line 182
    iput-object p4, p0, Lcom/google/android/exoplayer2/source/w;->m:Lcom/google/android/exoplayer2/drm/d;

    .line 183
    iput-object p5, p0, Lcom/google/android/exoplayer2/source/w;->p:Lcom/google/android/exoplayer2/drm/c$a;

    .line 184
    iput-object p6, p0, Lcom/google/android/exoplayer2/source/w;->n:Lcom/google/android/exoplayer2/upstream/r;

    .line 185
    iput-object p7, p0, Lcom/google/android/exoplayer2/source/w;->o:Lcom/google/android/exoplayer2/source/s$a;

    .line 186
    iput-object p8, p0, Lcom/google/android/exoplayer2/source/w;->q:Lcom/google/android/exoplayer2/source/w$b;

    .line 187
    iput-object p9, p0, Lcom/google/android/exoplayer2/source/w;->r:Lcom/google/android/exoplayer2/upstream/b;

    .line 188
    iput-object p10, p0, Lcom/google/android/exoplayer2/source/w;->s:Ljava/lang/String;

    int-to-long p1, p11

    .line 189
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/w;->t:J

    .line 190
    new-instance p1, Lcom/google/android/exoplayer2/upstream/Loader;

    const-string p2, "Loader:ProgressiveMediaPeriod"

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/upstream/Loader;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/w;->b:Lcom/google/android/exoplayer2/upstream/Loader;

    .line 191
    new-instance p1, Lcom/google/android/exoplayer2/source/b;

    invoke-direct {p1, p3}, Lcom/google/android/exoplayer2/source/b;-><init>(Lcom/google/android/exoplayer2/extractor/l;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/w;->u:Lcom/google/android/exoplayer2/source/v;

    .line 192
    new-instance p1, Lcom/google/android/exoplayer2/util/f;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/util/f;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/w;->v:Lcom/google/android/exoplayer2/util/f;

    .line 193
    new-instance p1, Lcom/google/android/exoplayer2/source/-$$Lambda$w$saaAER9CJxOgekRGyfbRza_5-pU;

    invoke-direct {p1, p0}, Lcom/google/android/exoplayer2/source/-$$Lambda$w$saaAER9CJxOgekRGyfbRza_5-pU;-><init>(Lcom/google/android/exoplayer2/source/w;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/w;->w:Ljava/lang/Runnable;

    .line 194
    new-instance p1, Lcom/google/android/exoplayer2/source/-$$Lambda$w$WIrxI_byJgILmexE5Md8pnuiPgo;

    invoke-direct {p1, p0}, Lcom/google/android/exoplayer2/source/-$$Lambda$w$WIrxI_byJgILmexE5Md8pnuiPgo;-><init>(Lcom/google/android/exoplayer2/source/w;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/w;->x:Ljava/lang/Runnable;

    .line 201
    invoke-static {}, Lcom/google/android/exoplayer2/util/af;->a()Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/w;->c:Landroid/os/Handler;

    const/4 p1, 0x0

    new-array p2, p1, [Lcom/google/android/exoplayer2/source/w$d;

    .line 202
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/w;->z:[Lcom/google/android/exoplayer2/source/w$d;

    new-array p1, p1, [Lcom/google/android/exoplayer2/source/z;

    .line 203
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/w;->e:[Lcom/google/android/exoplayer2/source/z;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 204
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/w;->M:J

    const-wide/16 p3, -0x1

    .line 205
    iput-wide p3, p0, Lcom/google/android/exoplayer2/source/w;->K:J

    .line 206
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/w;->E:J

    const/4 p1, 0x1

    .line 207
    iput p1, p0, Lcom/google/android/exoplayer2/source/w;->G:I

    return-void
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/source/w;)Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/w;->y:Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;

    return-object p0
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/source/w;Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;)Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/w;->y:Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;

    return-object p1
.end method

.method private a(Lcom/google/android/exoplayer2/source/w$a;)V
    .locals 5

    .line 796
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/w;->K:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 8963
    iget-wide v0, p1, Lcom/google/android/exoplayer2/source/w$a;->e:J

    .line 797
    iput-wide v0, p0, Lcom/google/android/exoplayer2/source/w;->K:J

    :cond_0
    return-void
.end method

.method private a([ZJ)Z
    .locals 4

    .line 888
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/w;->e:[Lcom/google/android/exoplayer2/source/z;

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 890
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/w;->e:[Lcom/google/android/exoplayer2/source/z;

    aget-object v3, v3, v2

    .line 891
    invoke-virtual {v3, p2, p3, v1}, Lcom/google/android/exoplayer2/source/z;->a(JZ)Z

    move-result v3

    if-nez v3, :cond_1

    .line 896
    aget-boolean v3, p1, v2

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/google/android/exoplayer2/source/w;->B:Z

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

.method static synthetic b(Lcom/google/android/exoplayer2/source/w;)J
    .locals 2

    .line 69
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/w;->t:J

    return-wide v0
.end method

.method private synthetic b(Lcom/google/android/exoplayer2/extractor/v;)V
    .locals 8

    .line 34735
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/w;->y:Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v0, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/exoplayer2/extractor/v$b;

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/extractor/v$b;-><init>(J)V

    :goto_0
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/w;->D:Lcom/google/android/exoplayer2/extractor/v;

    .line 34736
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/v;->b()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/android/exoplayer2/source/w;->E:J

    .line 34737
    iget-wide v3, p0, Lcom/google/android/exoplayer2/source/w;->K:J

    const-wide/16 v5, -0x1

    const/4 v0, 0x1

    cmp-long v7, v3, v5

    if-nez v7, :cond_1

    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/v;->b()J

    move-result-wide v3

    cmp-long v5, v3, v1

    if-nez v5, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/source/w;->F:Z

    if-eqz v1, :cond_2

    const/4 v0, 0x7

    .line 34738
    :cond_2
    iput v0, p0, Lcom/google/android/exoplayer2/source/w;->G:I

    .line 34739
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/w;->q:Lcom/google/android/exoplayer2/source/w$b;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/source/w;->E:J

    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/v;->a()Z

    move-result p1

    iget-boolean v3, p0, Lcom/google/android/exoplayer2/source/w;->F:Z

    invoke-interface {v0, v1, v2, p1, v3}, Lcom/google/android/exoplayer2/source/w$b;->a(JZZ)V

    .line 34740
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/source/w;->f:Z

    if-nez p1, :cond_3

    .line 34741
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/w;->m()V

    :cond_3
    return-void
.end method

.method static synthetic c(Lcom/google/android/exoplayer2/source/w;)Ljava/lang/Runnable;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/w;->x:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic d(Lcom/google/android/exoplayer2/source/w;)Landroid/os/Handler;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/w;->c:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic e(Lcom/google/android/exoplayer2/source/w;)J
    .locals 2

    .line 69
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/w;->p()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic f(Lcom/google/android/exoplayer2/source/w;)Ljava/lang/String;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/w;->s:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic k()Lcom/google/android/exoplayer2/Format;
    .locals 1

    .line 69
    sget-object v0, Lcom/google/android/exoplayer2/source/w;->j:Lcom/google/android/exoplayer2/Format;

    return-object v0
.end method

.method static synthetic l()Ljava/util/Map;
    .locals 1

    .line 69
    sget-object v0, Lcom/google/android/exoplayer2/source/w;->i:Ljava/util/Map;

    return-object v0
.end method

.method public static synthetic lambda$WIrxI_byJgILmexE5Md8pnuiPgo(Lcom/google/android/exoplayer2/source/w;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/w;->s()V

    return-void
.end method

.method public static synthetic lambda$saaAER9CJxOgekRGyfbRza_5-pU(Lcom/google/android/exoplayer2/source/w;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/w;->m()V

    return-void
.end method

.method public static synthetic lambda$t_jh5hIYzbJhIp5SzJm-kc8J-es(Lcom/google/android/exoplayer2/source/w;Lcom/google/android/exoplayer2/extractor/v;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/w;->b(Lcom/google/android/exoplayer2/extractor/v;)V

    return-void
.end method

.method private m()V
    .locals 11

    .line 746
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/w;->h:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/w;->f:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/w;->A:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/w;->D:Lcom/google/android/exoplayer2/extractor/v;

    if-nez v0, :cond_0

    goto/16 :goto_5

    .line 749
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/w;->e:[Lcom/google/android/exoplayer2/source/z;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 750
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/source/z;->b()Lcom/google/android/exoplayer2/Format;

    move-result-object v4

    if-nez v4, :cond_1

    return-void

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 754
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/w;->v:Lcom/google/android/exoplayer2/util/f;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/f;->b()Z

    .line 755
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/w;->e:[Lcom/google/android/exoplayer2/source/z;

    array-length v0, v0

    .line 756
    new-array v1, v0, [Lcom/google/android/exoplayer2/source/TrackGroup;

    .line 757
    new-array v3, v0, [Z

    const/4 v4, 0x0

    :goto_1
    const/4 v5, 0x1

    if-ge v4, v0, :cond_9

    .line 759
    iget-object v6, p0, Lcom/google/android/exoplayer2/source/w;->e:[Lcom/google/android/exoplayer2/source/z;

    aget-object v6, v6, v4

    invoke-virtual {v6}, Lcom/google/android/exoplayer2/source/z;->b()Lcom/google/android/exoplayer2/Format;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/exoplayer2/Format;

    .line 760
    iget-object v7, v6, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 761
    invoke-static {v7}, Lcom/google/android/exoplayer2/util/q;->a(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 762
    invoke-static {v7}, Lcom/google/android/exoplayer2/util/q;->b(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_2

    :cond_3
    const/4 v7, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v7, 0x1

    .line 763
    :goto_3
    aput-boolean v7, v3, v4

    .line 764
    iget-boolean v9, p0, Lcom/google/android/exoplayer2/source/w;->B:Z

    or-int/2addr v7, v9

    iput-boolean v7, p0, Lcom/google/android/exoplayer2/source/w;->B:Z

    .line 765
    iget-object v7, p0, Lcom/google/android/exoplayer2/source/w;->y:Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;

    if-eqz v7, :cond_8

    if-nez v8, :cond_5

    .line 767
    iget-object v9, p0, Lcom/google/android/exoplayer2/source/w;->z:[Lcom/google/android/exoplayer2/source/w$d;

    aget-object v9, v9, v4

    iget-boolean v9, v9, Lcom/google/android/exoplayer2/source/w$d;->b:Z

    if-eqz v9, :cond_7

    .line 768
    :cond_5
    iget-object v9, v6, Lcom/google/android/exoplayer2/Format;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    if-nez v9, :cond_6

    .line 770
    new-instance v9, Lcom/google/android/exoplayer2/metadata/Metadata;

    new-array v10, v5, [Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    aput-object v7, v10, v2

    invoke-direct {v9, v10}, Lcom/google/android/exoplayer2/metadata/Metadata;-><init>([Lcom/google/android/exoplayer2/metadata/Metadata$Entry;)V

    goto :goto_4

    :cond_6
    new-array v10, v5, [Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    aput-object v7, v10, v2

    .line 772
    invoke-virtual {v9, v10}, Lcom/google/android/exoplayer2/metadata/Metadata;->copyWithAppendedEntries([Lcom/google/android/exoplayer2/metadata/Metadata$Entry;)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object v9

    .line 774
    :goto_4
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/Format;->buildUpon()Lcom/google/android/exoplayer2/Format$a;

    move-result-object v6

    .line 7344
    iput-object v9, v6, Lcom/google/android/exoplayer2/Format$a;->i:Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 774
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/Format$a;->a()Lcom/google/android/exoplayer2/Format;

    move-result-object v6

    :cond_7
    if-eqz v8, :cond_8

    .line 778
    iget v8, v6, Lcom/google/android/exoplayer2/Format;->averageBitrate:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_8

    iget v8, v6, Lcom/google/android/exoplayer2/Format;->peakBitrate:I

    if-ne v8, v9, :cond_8

    iget v8, v7, Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;->bitrate:I

    if-eq v8, v9, :cond_8

    .line 782
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/Format;->buildUpon()Lcom/google/android/exoplayer2/Format$a;

    move-result-object v6

    iget v7, v7, Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;->bitrate:I

    .line 8311
    iput v7, v6, Lcom/google/android/exoplayer2/Format$a;->f:I

    .line 782
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/Format$a;->a()Lcom/google/android/exoplayer2/Format;

    move-result-object v6

    .line 785
    :cond_8
    iget-object v7, p0, Lcom/google/android/exoplayer2/source/w;->m:Lcom/google/android/exoplayer2/drm/d;

    .line 787
    invoke-interface {v7, v6}, Lcom/google/android/exoplayer2/drm/d;->a(Lcom/google/android/exoplayer2/Format;)Ljava/lang/Class;

    move-result-object v7

    .line 786
    invoke-virtual {v6, v7}, Lcom/google/android/exoplayer2/Format;->copyWithExoMediaCryptoType(Ljava/lang/Class;)Lcom/google/android/exoplayer2/Format;

    move-result-object v6

    .line 788
    new-instance v7, Lcom/google/android/exoplayer2/source/TrackGroup;

    new-array v5, v5, [Lcom/google/android/exoplayer2/Format;

    aput-object v6, v5, v2

    invoke-direct {v7, v5}, Lcom/google/android/exoplayer2/source/TrackGroup;-><init>([Lcom/google/android/exoplayer2/Format;)V

    aput-object v7, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 790
    :cond_9
    new-instance v0, Lcom/google/android/exoplayer2/source/w$e;

    new-instance v2, Lcom/google/android/exoplayer2/source/TrackGroupArray;

    invoke-direct {v2, v1}, Lcom/google/android/exoplayer2/source/TrackGroupArray;-><init>([Lcom/google/android/exoplayer2/source/TrackGroup;)V

    invoke-direct {v0, v2, v3}, Lcom/google/android/exoplayer2/source/w$e;-><init>(Lcom/google/android/exoplayer2/source/TrackGroupArray;[Z)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/w;->C:Lcom/google/android/exoplayer2/source/w$e;

    .line 791
    iput-boolean v5, p0, Lcom/google/android/exoplayer2/source/w;->f:Z

    .line 792
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/w;->d:Lcom/google/android/exoplayer2/source/p$a;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/p$a;

    invoke-interface {v0, p0}, Lcom/google/android/exoplayer2/source/p$a;->a(Lcom/google/android/exoplayer2/source/p;)V

    :cond_a
    :goto_5
    return-void
.end method

.method private n()V
    .locals 14

    .line 802
    new-instance v7, Lcom/google/android/exoplayer2/source/w$a;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/w;->k:Landroid/net/Uri;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/w;->l:Lcom/google/android/exoplayer2/upstream/h;

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/w;->u:Lcom/google/android/exoplayer2/source/v;

    iget-object v6, p0, Lcom/google/android/exoplayer2/source/w;->v:Lcom/google/android/exoplayer2/util/f;

    move-object v0, v7

    move-object v1, p0

    move-object v5, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/source/w$a;-><init>(Lcom/google/android/exoplayer2/source/w;Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/h;Lcom/google/android/exoplayer2/source/v;Lcom/google/android/exoplayer2/extractor/j;Lcom/google/android/exoplayer2/util/f;)V

    .line 805
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/w;->f:Z

    if-eqz v0, :cond_2

    .line 806
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/w;->q()Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 807
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/w;->E:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iget-wide v4, p0, Lcom/google/android/exoplayer2/source/w;->M:J

    cmp-long v6, v4, v0

    if-lez v6, :cond_0

    const/4 v0, 0x1

    .line 808
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/w;->g:Z

    .line 809
    iput-wide v2, p0, Lcom/google/android/exoplayer2/source/w;->M:J

    return-void

    .line 812
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/w;->D:Lcom/google/android/exoplayer2/extractor/v;

    .line 813
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/v;

    iget-wide v4, p0, Lcom/google/android/exoplayer2/source/w;->M:J

    invoke-interface {v0, v4, v5}, Lcom/google/android/exoplayer2/extractor/v;->a(J)Lcom/google/android/exoplayer2/extractor/v$a;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/v$a;->a:Lcom/google/android/exoplayer2/extractor/w;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/extractor/w;->c:J

    iget-wide v4, p0, Lcom/google/android/exoplayer2/source/w;->M:J

    .line 9963
    invoke-virtual {v7, v0, v1, v4, v5}, Lcom/google/android/exoplayer2/source/w$a;->a(JJ)V

    .line 815
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/w;->e:[Lcom/google/android/exoplayer2/source/z;

    array-length v1, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_1

    aget-object v5, v0, v4

    .line 816
    iget-wide v8, p0, Lcom/google/android/exoplayer2/source/w;->M:J

    .line 10214
    iput-wide v8, v5, Lcom/google/android/exoplayer2/source/z;->g:J

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 818
    :cond_1
    iput-wide v2, p0, Lcom/google/android/exoplayer2/source/w;->M:J

    .line 820
    :cond_2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/w;->o()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/source/w;->O:I

    .line 821
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/w;->b:Lcom/google/android/exoplayer2/upstream/Loader;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/w;->n:Lcom/google/android/exoplayer2/upstream/r;

    iget v2, p0, Lcom/google/android/exoplayer2/source/w;->G:I

    .line 823
    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/upstream/r;->a(I)I

    move-result v1

    .line 822
    invoke-virtual {v0, v7, p0, v1}, Lcom/google/android/exoplayer2/upstream/Loader;->a(Lcom/google/android/exoplayer2/upstream/Loader$d;Lcom/google/android/exoplayer2/upstream/Loader$a;I)J

    move-result-wide v12

    .line 10963
    iget-object v11, v7, Lcom/google/android/exoplayer2/source/w$a;->d:Lcom/google/android/exoplayer2/upstream/j;

    .line 825
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/w;->o:Lcom/google/android/exoplayer2/source/s$a;

    new-instance v1, Lcom/google/android/exoplayer2/source/l;

    .line 11963
    iget-wide v9, v7, Lcom/google/android/exoplayer2/source/w$a;->a:J

    move-object v8, v1

    .line 826
    invoke-direct/range {v8 .. v13}, Lcom/google/android/exoplayer2/source/l;-><init>(JLcom/google/android/exoplayer2/upstream/j;J)V

    const/4 v2, 0x0

    .line 12963
    iget-wide v3, v7, Lcom/google/android/exoplayer2/source/w$a;->c:J

    .line 832
    iget-wide v5, p0, Lcom/google/android/exoplayer2/source/w;->E:J

    .line 825
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/exoplayer2/source/s$a;->a(Lcom/google/android/exoplayer2/source/l;Lcom/google/android/exoplayer2/Format;JJ)V

    return-void
.end method

.method private o()I
    .locals 5

    .line 905
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/w;->e:[Lcom/google/android/exoplayer2/source/z;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v4, v0, v2

    .line 906
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/source/z;->a()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v3
.end method

.method private p()J
    .locals 7

    .line 913
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/w;->e:[Lcom/google/android/exoplayer2/source/z;

    array-length v1, v0

    const-wide/high16 v2, -0x8000000000000000L

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_0

    aget-object v5, v0, v4

    .line 915
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/source/z;->c()J

    move-result-wide v5

    invoke-static {v2, v3, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-wide v2
.end method

.method private q()Z
    .locals 5

    .line 921
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/w;->M:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private r()V
    .locals 1
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "trackState",
            "seekMap"
        }
    .end annotation

    .line 926
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/w;->f:Z

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 927
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/w;->C:Lcom/google/android/exoplayer2/source/w$e;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 928
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/w;->D:Lcom/google/android/exoplayer2/extractor/v;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private synthetic s()V
    .locals 1

    .line 196
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/w;->h:Z

    if-nez v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/w;->d:Lcom/google/android/exoplayer2/source/p$a;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/p$a;

    .line 198
    invoke-interface {v0, p0}, Lcom/google/android/exoplayer2/source/p$a;->a(Lcom/google/android/exoplayer2/source/ab;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final D_()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 241
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/w;->h()V

    .line 242
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/w;->g:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/w;->f:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 243
    :cond_0
    new-instance v0, Lcom/google/android/exoplayer2/ParserException;

    const-string v1, "Loading finished before preparation is complete."

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public final a(JLcom/google/android/exoplayer2/ai;)J
    .locals 11

    .line 452
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/w;->r()V

    .line 453
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/w;->D:Lcom/google/android/exoplayer2/extractor/v;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/extractor/v;->a()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    .line 457
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/w;->D:Lcom/google/android/exoplayer2/extractor/v;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/extractor/v;->a(J)Lcom/google/android/exoplayer2/extractor/v$a;

    move-result-object v0

    .line 458
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/v$a;->a:Lcom/google/android/exoplayer2/extractor/w;

    iget-wide v3, v3, Lcom/google/android/exoplayer2/extractor/w;->b:J

    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/v$a;->b:Lcom/google/android/exoplayer2/extractor/w;

    iget-wide v5, v0, Lcom/google/android/exoplayer2/extractor/w;->b:J

    .line 6086
    iget-wide v7, p3, Lcom/google/android/exoplayer2/ai;->f:J

    cmp-long v0, v7, v1

    if-nez v0, :cond_1

    iget-wide v7, p3, Lcom/google/android/exoplayer2/ai;->g:J

    cmp-long v0, v7, v1

    if-nez v0, :cond_1

    return-wide p1

    .line 6089
    :cond_1
    iget-wide v0, p3, Lcom/google/android/exoplayer2/ai;->f:J

    .line 6090
    invoke-static {p1, p2, v0, v1}, Lcom/google/android/exoplayer2/util/af;->b(JJ)J

    move-result-wide v0

    .line 6091
    iget-wide v7, p3, Lcom/google/android/exoplayer2/ai;->g:J

    invoke-static {p1, p2, v7, v8}, Lcom/google/android/exoplayer2/util/af;->a(JJ)J

    move-result-wide v7

    const/4 p3, 0x1

    const/4 v2, 0x0

    cmp-long v9, v0, v3

    if-gtz v9, :cond_2

    cmp-long v9, v3, v7

    if-gtz v9, :cond_2

    const/4 v9, 0x1

    goto :goto_0

    :cond_2
    const/4 v9, 0x0

    :goto_0
    cmp-long v10, v0, v5

    if-gtz v10, :cond_3

    cmp-long v10, v5, v7

    if-gtz v10, :cond_3

    goto :goto_1

    :cond_3
    const/4 p3, 0x0

    :goto_1
    if-eqz v9, :cond_5

    if-eqz p3, :cond_5

    sub-long v0, v3, p1

    .line 6096
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    sub-long p1, v5, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->abs(J)J

    move-result-wide p1

    cmp-long p3, v0, p1

    if-gtz p3, :cond_4

    return-wide v3

    :cond_4
    return-wide v5

    :cond_5
    if-eqz v9, :cond_6

    return-wide v3

    :cond_6
    if-eqz p3, :cond_7

    return-wide v5

    :cond_7
    return-wide v0
.end method

.method public final a([Lcom/google/android/exoplayer2/trackselection/c;[Z[Lcom/google/android/exoplayer2/source/aa;[ZJ)J
    .locals 8

    .line 260
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/w;->r()V

    .line 261
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/w;->C:Lcom/google/android/exoplayer2/source/w$e;

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/w$e;->a:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    .line 262
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/w;->C:Lcom/google/android/exoplayer2/source/w$e;

    iget-object v1, v1, Lcom/google/android/exoplayer2/source/w$e;->c:[Z

    .line 263
    iget v2, p0, Lcom/google/android/exoplayer2/source/w;->J:I

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

    check-cast v5, Lcom/google/android/exoplayer2/source/w$c;

    .line 1931
    iget v5, v5, Lcom/google/android/exoplayer2/source/w$c;->a:I

    .line 268
    aget-boolean v7, v1, v5

    invoke-static {v7}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 269
    iget v7, p0, Lcom/google/android/exoplayer2/source/w;->J:I

    sub-int/2addr v7, v6

    iput v7, p0, Lcom/google/android/exoplayer2/source/w;->J:I

    .line 270
    aput-boolean v3, v1, v5

    const/4 v5, 0x0

    .line 271
    aput-object v5, p3, v4

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 276
    :cond_2
    iget-boolean p2, p0, Lcom/google/android/exoplayer2/source/w;->H:Z

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
    invoke-interface {v4}, Lcom/google/android/exoplayer2/trackselection/c;->e()I

    move-result v5

    if-ne v5, v6, :cond_5

    const/4 v5, 0x1

    goto :goto_4

    :cond_5
    const/4 v5, 0x0

    :goto_4
    invoke-static {v5}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 282
    invoke-interface {v4, v3}, Lcom/google/android/exoplayer2/trackselection/c;->b(I)I

    move-result v5

    if-nez v5, :cond_6

    const/4 v5, 0x1

    goto :goto_5

    :cond_6
    const/4 v5, 0x0

    :goto_5
    invoke-static {v5}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 283
    invoke-interface {v4}, Lcom/google/android/exoplayer2/trackselection/c;->d()Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->indexOf(Lcom/google/android/exoplayer2/source/TrackGroup;)I

    move-result v4

    .line 284
    aget-boolean v5, v1, v4

    xor-int/2addr v5, v6

    invoke-static {v5}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 285
    iget v5, p0, Lcom/google/android/exoplayer2/source/w;->J:I

    add-int/2addr v5, v6

    iput v5, p0, Lcom/google/android/exoplayer2/source/w;->J:I

    .line 286
    aput-boolean v6, v1, v4

    .line 287
    new-instance v5, Lcom/google/android/exoplayer2/source/w$c;

    invoke-direct {v5, p0, v4}, Lcom/google/android/exoplayer2/source/w$c;-><init>(Lcom/google/android/exoplayer2/source/w;I)V

    aput-object v5, p3, v2

    .line 288
    aput-boolean v6, p4, v2

    if-nez p2, :cond_8

    .line 291
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/w;->e:[Lcom/google/android/exoplayer2/source/z;

    aget-object p2, p2, v4

    .line 297
    invoke-virtual {p2, p5, p6, v6}, Lcom/google/android/exoplayer2/source/z;->a(JZ)Z

    move-result v4

    if-nez v4, :cond_7

    .line 2291
    iget v4, p2, Lcom/google/android/exoplayer2/source/z;->e:I

    iget p2, p2, Lcom/google/android/exoplayer2/source/z;->f:I

    add-int/2addr v4, p2

    if-eqz v4, :cond_7

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
    iget p1, p0, Lcom/google/android/exoplayer2/source/w;->J:I

    if-nez p1, :cond_c

    .line 303
    iput-boolean v3, p0, Lcom/google/android/exoplayer2/source/w;->N:Z

    .line 304
    iput-boolean v3, p0, Lcom/google/android/exoplayer2/source/w;->I:Z

    .line 305
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/w;->b:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/Loader;->b()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 307
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/w;->e:[Lcom/google/android/exoplayer2/source/z;

    array-length p2, p1

    :goto_7
    if-ge v3, p2, :cond_a

    aget-object p3, p1, v3

    .line 308
    invoke-virtual {p3}, Lcom/google/android/exoplayer2/source/z;->e()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 310
    :cond_a
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/w;->b:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/Loader;->c()V

    goto :goto_a

    .line 312
    :cond_b
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/w;->e:[Lcom/google/android/exoplayer2/source/z;

    array-length p2, p1

    const/4 p3, 0x0

    :goto_8
    if-ge p3, p2, :cond_e

    aget-object p4, p1, p3

    .line 3176
    invoke-virtual {p4, v3}, Lcom/google/android/exoplayer2/source/z;->a(Z)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_8

    :cond_c
    if-eqz p2, :cond_e

    .line 317
    invoke-virtual {p0, p5, p6}, Lcom/google/android/exoplayer2/source/w;->b(J)J

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
    iput-boolean v6, p0, Lcom/google/android/exoplayer2/source/w;->H:Z

    return-wide p5
.end method

.method public final a(II)Lcom/google/android/exoplayer2/extractor/x;
    .locals 1

    .line 681
    new-instance p2, Lcom/google/android/exoplayer2/source/w$d;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, Lcom/google/android/exoplayer2/source/w$d;-><init>(IZ)V

    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/source/w;->a(Lcom/google/android/exoplayer2/source/w$d;)Lcom/google/android/exoplayer2/extractor/x;

    move-result-object p1

    return-object p1
.end method

.method final a(Lcom/google/android/exoplayer2/source/w$d;)Lcom/google/android/exoplayer2/extractor/x;
    .locals 5

    .line 711
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/w;->e:[Lcom/google/android/exoplayer2/source/z;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 713
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/w;->z:[Lcom/google/android/exoplayer2/source/w$d;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/source/w$d;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 714
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/w;->e:[Lcom/google/android/exoplayer2/source/z;

    aget-object p1, p1, v1

    return-object p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 717
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/w;->r:Lcom/google/android/exoplayer2/upstream/b;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/w;->c:Landroid/os/Handler;

    .line 720
    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/w;->m:Lcom/google/android/exoplayer2/drm/d;

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/w;->p:Lcom/google/android/exoplayer2/drm/c$a;

    .line 718
    invoke-static {v1, v2, v3, v4}, Lcom/google/android/exoplayer2/source/z;->a(Lcom/google/android/exoplayer2/upstream/b;Landroid/os/Looper;Lcom/google/android/exoplayer2/drm/d;Lcom/google/android/exoplayer2/drm/c$a;)Lcom/google/android/exoplayer2/source/z;

    move-result-object v1

    .line 6553
    iput-object p0, v1, Lcom/google/android/exoplayer2/source/z;->c:Lcom/google/android/exoplayer2/source/z$b;

    .line 725
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/w;->z:[Lcom/google/android/exoplayer2/source/w$d;

    add-int/lit8 v3, v0, 0x1

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/google/android/exoplayer2/source/w$d;

    .line 726
    aput-object p1, v2, v0

    .line 727
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/af;->a([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/google/android/exoplayer2/source/w$d;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/w;->z:[Lcom/google/android/exoplayer2/source/w$d;

    .line 728
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/w;->e:[Lcom/google/android/exoplayer2/source/z;

    invoke-static {p1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/google/android/exoplayer2/source/z;

    .line 729
    aput-object v1, p1, v0

    .line 730
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/af;->a([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/google/android/exoplayer2/source/z;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/w;->e:[Lcom/google/android/exoplayer2/source/z;

    return-object v1
.end method

.method public final synthetic a(Lcom/google/android/exoplayer2/upstream/Loader$d;JJLjava/io/IOException;I)Lcom/google/android/exoplayer2/upstream/Loader$b;
    .locals 26

    move-object/from16 v0, p0

    .line 69
    move-object/from16 v1, p1

    check-cast v1, Lcom/google/android/exoplayer2/source/w$a;

    .line 13624
    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/source/w;->a(Lcom/google/android/exoplayer2/source/w$a;)V

    .line 13963
    iget-object v2, v1, Lcom/google/android/exoplayer2/source/w$a;->b:Lcom/google/android/exoplayer2/upstream/t;

    .line 13626
    new-instance v15, Lcom/google/android/exoplayer2/source/l;

    .line 14963
    iget-wide v4, v1, Lcom/google/android/exoplayer2/source/w$a;->a:J

    .line 15963
    iget-object v6, v1, Lcom/google/android/exoplayer2/source/w$a;->d:Lcom/google/android/exoplayer2/upstream/j;

    .line 16065
    iget-object v7, v2, Lcom/google/android/exoplayer2/upstream/t;->b:Landroid/net/Uri;

    .line 16070
    iget-object v8, v2, Lcom/google/android/exoplayer2/upstream/t;->c:Ljava/util/Map;

    .line 17057
    iget-wide v13, v2, Lcom/google/android/exoplayer2/upstream/t;->a:J

    move-object v3, v15

    move-wide/from16 v9, p2

    move-wide/from16 v11, p4

    .line 13634
    invoke-direct/range {v3 .. v14}, Lcom/google/android/exoplayer2/source/l;-><init>(JLcom/google/android/exoplayer2/upstream/j;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    .line 13635
    new-instance v2, Lcom/google/android/exoplayer2/source/o;

    .line 17963
    iget-wide v3, v1, Lcom/google/android/exoplayer2/source/w$a;->c:J

    .line 13642
    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/f;->a(J)J

    move-result-wide v22

    iget-wide v3, v0, Lcom/google/android/exoplayer2/source/w;->E:J

    .line 13643
    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/f;->a(J)J

    move-result-wide v24

    const/16 v17, 0x1

    const/16 v18, -0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v16, v2

    invoke-direct/range {v16 .. v25}, Lcom/google/android/exoplayer2/source/o;-><init>(IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJ)V

    .line 13645
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/w;->n:Lcom/google/android/exoplayer2/upstream/r;

    new-instance v4, Lcom/google/android/exoplayer2/upstream/r$a;

    move-object/from16 v11, p6

    move/from16 v5, p7

    invoke-direct {v4, v15, v2, v11, v5}, Lcom/google/android/exoplayer2/upstream/r$a;-><init>(Lcom/google/android/exoplayer2/source/l;Lcom/google/android/exoplayer2/source/o;Ljava/io/IOException;I)V

    .line 13646
    invoke-interface {v3, v4}, Lcom/google/android/exoplayer2/upstream/r;->a(Lcom/google/android/exoplayer2/upstream/r$a;)J

    move-result-wide v2

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v6, 0x1

    cmp-long v7, v2, v4

    if-nez v7, :cond_0

    .line 13649
    sget-object v2, Lcom/google/android/exoplayer2/upstream/Loader;->d:Lcom/google/android/exoplayer2/upstream/Loader$b;

    goto :goto_5

    .line 13651
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/source/w;->o()I

    move-result v7

    .line 13652
    iget v8, v0, Lcom/google/android/exoplayer2/source/w;->O:I

    const/4 v9, 0x0

    if-le v7, v8, :cond_1

    const/4 v8, 0x1

    goto :goto_0

    :cond_1
    const/4 v8, 0x0

    .line 18846
    :goto_0
    iget-wide v12, v0, Lcom/google/android/exoplayer2/source/w;->K:J

    const-wide/16 v16, -0x1

    cmp-long v10, v12, v16

    if-nez v10, :cond_5

    iget-object v10, v0, Lcom/google/android/exoplayer2/source/w;->D:Lcom/google/android/exoplayer2/extractor/v;

    if-eqz v10, :cond_2

    .line 18847
    invoke-interface {v10}, Lcom/google/android/exoplayer2/extractor/v;->b()J

    move-result-wide v12

    cmp-long v10, v12, v4

    if-eqz v10, :cond_2

    goto :goto_2

    .line 18852
    :cond_2
    iget-boolean v4, v0, Lcom/google/android/exoplayer2/source/w;->f:Z

    if-eqz v4, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/source/w;->i()Z

    move-result v4

    if-nez v4, :cond_3

    .line 18862
    iput-boolean v6, v0, Lcom/google/android/exoplayer2/source/w;->N:Z

    goto :goto_4

    .line 18869
    :cond_3
    iget-boolean v4, v0, Lcom/google/android/exoplayer2/source/w;->f:Z

    iput-boolean v4, v0, Lcom/google/android/exoplayer2/source/w;->I:Z

    const-wide/16 v4, 0x0

    .line 18870
    iput-wide v4, v0, Lcom/google/android/exoplayer2/source/w;->L:J

    .line 18871
    iput v9, v0, Lcom/google/android/exoplayer2/source/w;->O:I

    .line 18872
    iget-object v7, v0, Lcom/google/android/exoplayer2/source/w;->e:[Lcom/google/android/exoplayer2/source/z;

    array-length v10, v7

    const/4 v12, 0x0

    :goto_1
    if-ge v12, v10, :cond_4

    aget-object v13, v7, v12

    .line 19176
    invoke-virtual {v13, v9}, Lcom/google/android/exoplayer2/source/z;->a(Z)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 19963
    :cond_4
    invoke-virtual {v1, v4, v5, v4, v5}, Lcom/google/android/exoplayer2/source/w$a;->a(JJ)V

    goto :goto_3

    .line 18850
    :cond_5
    :goto_2
    iput v7, v0, Lcom/google/android/exoplayer2/source/w;->O:I

    :goto_3
    const/4 v9, 0x1

    :goto_4
    if-eqz v9, :cond_6

    .line 13655
    invoke-static {v8, v2, v3}, Lcom/google/android/exoplayer2/upstream/Loader;->a(ZJ)Lcom/google/android/exoplayer2/upstream/Loader$b;

    move-result-object v2

    goto :goto_5

    .line 13656
    :cond_6
    sget-object v2, Lcom/google/android/exoplayer2/upstream/Loader;->c:Lcom/google/android/exoplayer2/upstream/Loader$b;

    .line 13659
    :goto_5
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/upstream/Loader$b;->a()Z

    move-result v3

    xor-int/lit8 v12, v3, 0x1

    .line 13660
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/w;->o:Lcom/google/android/exoplayer2/source/s$a;

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 20963
    iget-wide v7, v1, Lcom/google/android/exoplayer2/source/w$a;->c:J

    .line 13667
    iget-wide v9, v0, Lcom/google/android/exoplayer2/source/w;->E:J

    move-object v4, v15

    move-object/from16 v11, p6

    .line 13660
    invoke-virtual/range {v3 .. v12}, Lcom/google/android/exoplayer2/source/s$a;->a(Lcom/google/android/exoplayer2/source/l;ILcom/google/android/exoplayer2/Format;JJLjava/io/IOException;Z)V

    return-object v2
.end method

.method public final a()V
    .locals 2

    const/4 v0, 0x1

    .line 686
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/w;->A:Z

    .line 687
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/w;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/w;->w:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method final a(I)V
    .locals 6

    .line 509
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/w;->r()V

    .line 510
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/w;->C:Lcom/google/android/exoplayer2/source/w$e;

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/w$e;->d:[Z

    .line 511
    aget-boolean v1, v0, p1

    if-nez v1, :cond_0

    .line 512
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/w;->C:Lcom/google/android/exoplayer2/source/w$e;

    iget-object v1, v1, Lcom/google/android/exoplayer2/source/w$e;->a:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    invoke-virtual {v1, p1}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v1

    .line 513
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/w;->o:Lcom/google/android/exoplayer2/source/s$a;

    iget-object v3, v1, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 514
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/q;->g(Ljava/lang/String;)I

    move-result v3

    iget-wide v4, p0, Lcom/google/android/exoplayer2/source/w;->L:J

    .line 513
    invoke-virtual {v2, v3, v1, v4, v5}, Lcom/google/android/exoplayer2/source/s$a;->a(ILcom/google/android/exoplayer2/Format;J)V

    const/4 v1, 0x1

    .line 519
    aput-boolean v1, v0, p1

    :cond_0
    return-void
.end method

.method public final a(J)V
    .locals 0

    return-void
.end method

.method public final a(JZ)V
    .locals 6

    .line 331
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/w;->r()V

    .line 332
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/w;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 335
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/w;->C:Lcom/google/android/exoplayer2/source/w$e;

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/w$e;->c:[Z

    .line 336
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/w;->e:[Lcom/google/android/exoplayer2/source/z;

    array-length v1, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 338
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/w;->e:[Lcom/google/android/exoplayer2/source/z;

    aget-object v3, v3, v2

    aget-boolean v4, v0, v2

    .line 3517
    iget-object v5, v3, Lcom/google/android/exoplayer2/source/z;->a:Lcom/google/android/exoplayer2/source/y;

    .line 3518
    invoke-virtual {v3, p1, p2, p3, v4}, Lcom/google/android/exoplayer2/source/z;->a(JZZ)J

    move-result-wide v3

    .line 3517
    invoke-virtual {v5, v3, v4}, Lcom/google/android/exoplayer2/source/y;->a(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/extractor/v;)V
    .locals 2

    .line 692
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/w;->c:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/exoplayer2/source/-$$Lambda$w$t_jh5hIYzbJhIp5SzJm-kc8J-es;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer2/source/-$$Lambda$w$t_jh5hIYzbJhIp5SzJm-kc8J-es;-><init>(Lcom/google/android/exoplayer2/source/w;Lcom/google/android/exoplayer2/extractor/v;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/source/p$a;J)V
    .locals 0

    .line 234
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/w;->d:Lcom/google/android/exoplayer2/source/p$a;

    .line 235
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/w;->v:Lcom/google/android/exoplayer2/util/f;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/f;->a()Z

    .line 236
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/w;->n()V

    return-void
.end method

.method public final synthetic a(Lcom/google/android/exoplayer2/upstream/Loader$d;JJ)V
    .locals 16

    move-object/from16 v0, p0

    .line 69
    move-object/from16 v1, p1

    check-cast v1, Lcom/google/android/exoplayer2/source/w$a;

    .line 28551
    iget-wide v2, v0, Lcom/google/android/exoplayer2/source/w;->E:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v6, v2, v4

    if-nez v6, :cond_1

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/w;->D:Lcom/google/android/exoplayer2/extractor/v;

    if-eqz v2, :cond_1

    .line 28552
    invoke-interface {v2}, Lcom/google/android/exoplayer2/extractor/v;->a()Z

    move-result v2

    .line 28553
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/source/w;->p()J

    move-result-wide v3

    const-wide/high16 v5, -0x8000000000000000L

    cmp-long v7, v3, v5

    if-nez v7, :cond_0

    const-wide/16 v3, 0x0

    goto :goto_0

    :cond_0
    const-wide/16 v5, 0x2710

    add-long/2addr v3, v5

    .line 28555
    :goto_0
    iput-wide v3, v0, Lcom/google/android/exoplayer2/source/w;->E:J

    .line 28556
    iget-object v5, v0, Lcom/google/android/exoplayer2/source/w;->q:Lcom/google/android/exoplayer2/source/w$b;

    iget-boolean v6, v0, Lcom/google/android/exoplayer2/source/w;->F:Z

    invoke-interface {v5, v3, v4, v2, v6}, Lcom/google/android/exoplayer2/source/w$b;->a(JZZ)V

    .line 28963
    :cond_1
    iget-object v2, v1, Lcom/google/android/exoplayer2/source/w$a;->b:Lcom/google/android/exoplayer2/upstream/t;

    .line 28559
    new-instance v15, Lcom/google/android/exoplayer2/source/l;

    .line 29963
    iget-wide v4, v1, Lcom/google/android/exoplayer2/source/w$a;->a:J

    .line 30963
    iget-object v6, v1, Lcom/google/android/exoplayer2/source/w$a;->d:Lcom/google/android/exoplayer2/upstream/j;

    .line 31065
    iget-object v7, v2, Lcom/google/android/exoplayer2/upstream/t;->b:Landroid/net/Uri;

    .line 31070
    iget-object v8, v2, Lcom/google/android/exoplayer2/upstream/t;->c:Ljava/util/Map;

    .line 32057
    iget-wide v13, v2, Lcom/google/android/exoplayer2/upstream/t;->a:J

    move-object v3, v15

    move-wide/from16 v9, p2

    move-wide/from16 v11, p4

    .line 28567
    invoke-direct/range {v3 .. v14}, Lcom/google/android/exoplayer2/source/l;-><init>(JLcom/google/android/exoplayer2/upstream/j;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    .line 28569
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/w;->o:Lcom/google/android/exoplayer2/source/s$a;

    const/4 v5, 0x0

    .line 33963
    iget-wide v6, v1, Lcom/google/android/exoplayer2/source/w$a;->c:J

    .line 28576
    iget-wide v8, v0, Lcom/google/android/exoplayer2/source/w;->E:J

    move-object v4, v15

    .line 28569
    invoke-virtual/range {v3 .. v9}, Lcom/google/android/exoplayer2/source/s$a;->b(Lcom/google/android/exoplayer2/source/l;Lcom/google/android/exoplayer2/Format;JJ)V

    .line 28578
    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/source/w;->a(Lcom/google/android/exoplayer2/source/w$a;)V

    const/4 v1, 0x1

    .line 28579
    iput-boolean v1, v0, Lcom/google/android/exoplayer2/source/w;->g:Z

    .line 28580
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/w;->d:Lcom/google/android/exoplayer2/source/p$a;

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/p$a;

    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/source/p$a;->a(Lcom/google/android/exoplayer2/source/ab;)V

    return-void
.end method

.method public final synthetic a(Lcom/google/android/exoplayer2/upstream/Loader$d;JJZ)V
    .locals 16

    move-object/from16 v0, p0

    .line 69
    move-object/from16 v1, p1

    check-cast v1, Lcom/google/android/exoplayer2/source/w$a;

    .line 22963
    iget-object v2, v1, Lcom/google/android/exoplayer2/source/w$a;->b:Lcom/google/android/exoplayer2/upstream/t;

    .line 22587
    new-instance v15, Lcom/google/android/exoplayer2/source/l;

    .line 23963
    iget-wide v4, v1, Lcom/google/android/exoplayer2/source/w$a;->a:J

    .line 24963
    iget-object v6, v1, Lcom/google/android/exoplayer2/source/w$a;->d:Lcom/google/android/exoplayer2/upstream/j;

    .line 25065
    iget-object v7, v2, Lcom/google/android/exoplayer2/upstream/t;->b:Landroid/net/Uri;

    .line 25070
    iget-object v8, v2, Lcom/google/android/exoplayer2/upstream/t;->c:Ljava/util/Map;

    .line 26057
    iget-wide v13, v2, Lcom/google/android/exoplayer2/upstream/t;->a:J

    move-object v3, v15

    move-wide/from16 v9, p2

    move-wide/from16 v11, p4

    .line 22595
    invoke-direct/range {v3 .. v14}, Lcom/google/android/exoplayer2/source/l;-><init>(JLcom/google/android/exoplayer2/upstream/j;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    .line 22597
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/w;->o:Lcom/google/android/exoplayer2/source/s$a;

    .line 27963
    iget-wide v5, v1, Lcom/google/android/exoplayer2/source/w$a;->c:J

    .line 22604
    iget-wide v7, v0, Lcom/google/android/exoplayer2/source/w;->E:J

    move-object v4, v15

    .line 22597
    invoke-virtual/range {v3 .. v8}, Lcom/google/android/exoplayer2/source/s$a;->a(Lcom/google/android/exoplayer2/source/l;JJ)V

    if-nez p6, :cond_1

    .line 22607
    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/source/w;->a(Lcom/google/android/exoplayer2/source/w$a;)V

    .line 22608
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/w;->e:[Lcom/google/android/exoplayer2/source/z;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, v1, v4

    .line 28176
    invoke-virtual {v5, v3}, Lcom/google/android/exoplayer2/source/z;->a(Z)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 22611
    :cond_0
    iget v1, v0, Lcom/google/android/exoplayer2/source/w;->J:I

    if-lez v1, :cond_1

    .line 22612
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/w;->d:Lcom/google/android/exoplayer2/source/p$a;

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/p$a;

    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/source/p$a;->a(Lcom/google/android/exoplayer2/source/ab;)V

    :cond_1
    return-void
.end method

.method public final b(J)J
    .locals 5

    .line 412
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/w;->r()V

    .line 413
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/w;->C:Lcom/google/android/exoplayer2/source/w$e;

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/w$e;->b:[Z

    .line 415
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/w;->D:Lcom/google/android/exoplayer2/extractor/v;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/extractor/v;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 p1, 0x0

    :goto_0
    const/4 v1, 0x0

    .line 417
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/source/w;->I:Z

    .line 418
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/w;->L:J

    .line 419
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/w;->q()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 421
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/w;->M:J

    return-wide p1

    .line 426
    :cond_1
    iget v2, p0, Lcom/google/android/exoplayer2/source/w;->G:I

    const/4 v3, 0x7

    if-eq v2, v3, :cond_2

    .line 427
    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/exoplayer2/source/w;->a([ZJ)Z

    move-result v0

    if-eqz v0, :cond_2

    return-wide p1

    .line 432
    :cond_2
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/source/w;->N:Z

    .line 433
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/w;->M:J

    .line 434
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/source/w;->g:Z

    .line 435
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/w;->b:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 437
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/w;->e:[Lcom/google/android/exoplayer2/source/z;

    array-length v2, v0

    :goto_1
    if-ge v1, v2, :cond_3

    aget-object v3, v0, v1

    .line 438
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/z;->e()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 440
    :cond_3
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/w;->b:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->c()V

    goto :goto_3

    .line 442
    :cond_4
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/w;->b:Lcom/google/android/exoplayer2/upstream/Loader;

    const/4 v2, 0x0

    .line 4242
    iput-object v2, v0, Lcom/google/android/exoplayer2/upstream/Loader;->e:Ljava/io/IOException;

    .line 443
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/w;->e:[Lcom/google/android/exoplayer2/source/z;

    array-length v2, v0

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v2, :cond_5

    aget-object v4, v0, v3

    .line 5176
    invoke-virtual {v4, v1}, Lcom/google/android/exoplayer2/source/z;->a(Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    return-wide p1
.end method

.method public final b()Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .locals 1

    .line 249
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/w;->r()V

    .line 250
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/w;->C:Lcom/google/android/exoplayer2/source/w$e;

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/w$e;->a:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    return-object v0
.end method

.method final b(I)V
    .locals 4

    .line 524
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/w;->r()V

    .line 525
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/w;->C:Lcom/google/android/exoplayer2/source/w$e;

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/w$e;->b:[Z

    .line 526
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/source/w;->N:Z

    if-eqz v1, :cond_2

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/w;->e:[Lcom/google/android/exoplayer2/source/z;

    aget-object p1, v0, p1

    const/4 v0, 0x0

    .line 528
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/source/z;->b(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    const-wide/16 v1, 0x0

    .line 531
    iput-wide v1, p0, Lcom/google/android/exoplayer2/source/w;->M:J

    .line 532
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/w;->N:Z

    const/4 p1, 0x1

    .line 533
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/source/w;->I:Z

    .line 534
    iput-wide v1, p0, Lcom/google/android/exoplayer2/source/w;->L:J

    .line 535
    iput v0, p0, Lcom/google/android/exoplayer2/source/w;->O:I

    .line 536
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/w;->e:[Lcom/google/android/exoplayer2/source/z;

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 6176
    invoke-virtual {v3, v0}, Lcom/google/android/exoplayer2/source/z;->a(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 539
    :cond_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/w;->d:Lcom/google/android/exoplayer2/source/p$a;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/source/p$a;

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/source/p$a;->a(Lcom/google/android/exoplayer2/source/ab;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final c()J
    .locals 2

    .line 375
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/w;->I:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/w;->g:Z

    if-nez v0, :cond_0

    .line 376
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/w;->o()I

    move-result v0

    iget v1, p0, Lcom/google/android/exoplayer2/source/w;->O:I

    if-le v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 377
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/w;->I:Z

    .line 378
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/w;->L:J

    return-wide v0

    :cond_1
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method public final c(J)Z
    .locals 0

    .line 349
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/source/w;->g:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/w;->b:Lcom/google/android/exoplayer2/upstream/Loader;

    .line 350
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/Loader;->a()Z

    move-result p1

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/google/android/exoplayer2/source/w;->N:Z

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/google/android/exoplayer2/source/w;->f:Z

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/google/android/exoplayer2/source/w;->J:I

    if-nez p1, :cond_0

    goto :goto_0

    .line 355
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/w;->v:Lcom/google/android/exoplayer2/util/f;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/f;->a()Z

    move-result p1

    .line 356
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/w;->b:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/upstream/Loader;->b()Z

    move-result p2

    if-nez p2, :cond_1

    .line 357
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/w;->n()V

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

    .line 385
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/w;->r()V

    .line 386
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/w;->C:Lcom/google/android/exoplayer2/source/w$e;

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/w$e;->b:[Z

    .line 387
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/source/w;->g:Z

    const-wide/high16 v2, -0x8000000000000000L

    if-eqz v1, :cond_0

    return-wide v2

    .line 389
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/w;->q()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 390
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/w;->M:J

    return-wide v0

    .line 393
    :cond_1
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/source/w;->B:Z

    const-wide v4, 0x7fffffffffffffffL

    if-eqz v1, :cond_3

    .line 395
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/w;->e:[Lcom/google/android/exoplayer2/source/z;

    array-length v1, v1

    const/4 v6, 0x0

    move-wide v7, v4

    :goto_0
    if-ge v6, v1, :cond_4

    .line 397
    aget-boolean v9, v0, v6

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/google/android/exoplayer2/source/w;->e:[Lcom/google/android/exoplayer2/source/z;

    aget-object v9, v9, v6

    invoke-virtual {v9}, Lcom/google/android/exoplayer2/source/z;->d()Z

    move-result v9

    if-nez v9, :cond_2

    .line 398
    iget-object v9, p0, Lcom/google/android/exoplayer2/source/w;->e:[Lcom/google/android/exoplayer2/source/z;

    aget-object v9, v9, v6

    .line 399
    invoke-virtual {v9}, Lcom/google/android/exoplayer2/source/z;->c()J

    move-result-wide v9

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

    .line 404
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/w;->p()J

    move-result-wide v7

    :cond_5
    cmp-long v0, v7, v2

    if-nez v0, :cond_6

    .line 406
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/w;->L:J

    return-wide v0

    :cond_6
    return-wide v7
.end method

.method public final e()J
    .locals 2

    .line 370
    iget v0, p0, Lcom/google/android/exoplayer2/source/w;->J:I

    if-nez v0, :cond_0

    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/w;->d()J

    move-result-wide v0

    return-wide v0
.end method

.method public final f()Z
    .locals 1

    .line 365
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/w;->b:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/w;->v:Lcom/google/android/exoplayer2/util/f;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/f;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final g()V
    .locals 5

    .line 226
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/w;->e:[Lcom/google/android/exoplayer2/source/z;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    const/4 v4, 0x1

    .line 1170
    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/source/z;->a(Z)V

    .line 1171
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/z;->f()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/w;->u:Lcom/google/android/exoplayer2/source/v;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/v;->a()V

    return-void
.end method

.method final h()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 474
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/w;->b:Lcom/google/android/exoplayer2/upstream/Loader;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/w;->n:Lcom/google/android/exoplayer2/upstream/r;

    iget v2, p0, Lcom/google/android/exoplayer2/source/w;->G:I

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/upstream/r;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/upstream/Loader;->a(I)V

    return-void
.end method

.method final i()Z
    .locals 1

    .line 543
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/w;->I:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/w;->q()Z

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

.method public final j()V
    .locals 2

    .line 705
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/w;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/w;->w:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
