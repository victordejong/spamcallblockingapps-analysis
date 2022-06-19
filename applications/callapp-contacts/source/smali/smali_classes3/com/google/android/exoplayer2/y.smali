.class final Lcom/google/android/exoplayer2/y;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/y$a;,
        Lcom/google/android/exoplayer2/y$b;,
        Lcom/google/android/exoplayer2/y$c;,
        Lcom/google/android/exoplayer2/y$d;
    }
.end annotation


# instance fields
.field final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/y$c;",
            ">;"
        }
    .end annotation
.end field

.field final b:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap<",
            "Lcom/google/android/exoplayer2/source/p;",
            "Lcom/google/android/exoplayer2/y$c;",
            ">;"
        }
    .end annotation
.end field

.field final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lcom/google/android/exoplayer2/y$c;",
            ">;"
        }
    .end annotation
.end field

.field final d:Lcom/google/android/exoplayer2/source/s$a;

.field final e:Lcom/google/android/exoplayer2/drm/c$a;

.field final f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/google/android/exoplayer2/y$c;",
            "Lcom/google/android/exoplayer2/y$b;",
            ">;"
        }
    .end annotation
.end field

.field final g:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/exoplayer2/y$c;",
            ">;"
        }
    .end annotation
.end field

.field h:Lcom/google/android/exoplayer2/source/ac;

.field i:Z

.field j:Lcom/google/android/exoplayer2/upstream/v;

.field private final k:Lcom/google/android/exoplayer2/y$d;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/y$d;Lcom/google/android/exoplayer2/a/a;Landroid/os/Handler;)V
    .locals 2

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object p1, p0, Lcom/google/android/exoplayer2/y;->k:Lcom/google/android/exoplayer2/y$d;

    .line 101
    new-instance p1, Lcom/google/android/exoplayer2/source/ac$a;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/source/ac$a;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/y;->h:Lcom/google/android/exoplayer2/source/ac;

    .line 102
    new-instance p1, Ljava/util/IdentityHashMap;

    invoke-direct {p1}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/y;->b:Ljava/util/IdentityHashMap;

    .line 103
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/y;->c:Ljava/util/Map;

    .line 104
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/y;->a:Ljava/util/List;

    .line 105
    new-instance p1, Lcom/google/android/exoplayer2/source/s$a;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/source/s$a;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/y;->d:Lcom/google/android/exoplayer2/source/s$a;

    .line 106
    new-instance v0, Lcom/google/android/exoplayer2/drm/c$a;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/drm/c$a;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/y;->e:Lcom/google/android/exoplayer2/drm/c$a;

    .line 107
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/google/android/exoplayer2/y;->f:Ljava/util/HashMap;

    .line 108
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/google/android/exoplayer2/y;->g:Ljava/util/Set;

    if-eqz p2, :cond_0

    .line 110
    invoke-virtual {p1, p3, p2}, Lcom/google/android/exoplayer2/source/s$a;->a(Landroid/os/Handler;Lcom/google/android/exoplayer2/source/s;)V

    .line 111
    invoke-virtual {v0, p3, p2}, Lcom/google/android/exoplayer2/drm/c$a;->a(Landroid/os/Handler;Lcom/google/android/exoplayer2/drm/c;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/y$c;I)I
    .locals 0

    .line 6430
    iget p0, p0, Lcom/google/android/exoplayer2/y$c;->d:I

    add-int/2addr p1, p0

    return p1
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/y$c;Lcom/google/android/exoplayer2/source/r$a;)Lcom/google/android/exoplayer2/source/r$a;
    .locals 6

    const/4 v0, 0x0

    .line 5416
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/y$c;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 5419
    iget-object v1, p0, Lcom/google/android/exoplayer2/y$c;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/r$a;

    iget-wide v1, v1, Lcom/google/android/exoplayer2/source/r$a;->d:J

    iget-wide v3, p1, Lcom/google/android/exoplayer2/source/r$a;->d:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    .line 5421
    iget-object v0, p1, Lcom/google/android/exoplayer2/source/r$a;->a:Ljava/lang/Object;

    .line 5466
    iget-object p0, p0, Lcom/google/android/exoplayer2/y$c;->b:Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/ae;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 5422
    invoke-virtual {p1, p0}, Lcom/google/android/exoplayer2/source/r$a;->b(Ljava/lang/Object;)Lcom/google/android/exoplayer2/source/r$a;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic a(Lcom/google/android/exoplayer2/source/r;Lcom/google/android/exoplayer2/al;)V
    .locals 0

    .line 436
    iget-object p1, p0, Lcom/google/android/exoplayer2/y;->k:Lcom/google/android/exoplayer2/y$d;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/y$d;->d()V

    return-void
.end method

.method private b(II)V
    .locals 2

    .line 405
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/y;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 406
    iget-object v0, p0, Lcom/google/android/exoplayer2/y;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/y$c;

    .line 407
    iget v1, v0, Lcom/google/android/exoplayer2/y$c;->d:I

    add-int/2addr v1, p2

    iput v1, v0, Lcom/google/android/exoplayer2/y$c;->d:I

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private b(Lcom/google/android/exoplayer2/y$c;)V
    .locals 1

    .line 384
    iget-object v0, p0, Lcom/google/android/exoplayer2/y;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/y$b;

    if-eqz p1, :cond_0

    .line 386
    iget-object v0, p1, Lcom/google/android/exoplayer2/y$b;->a:Lcom/google/android/exoplayer2/source/r;

    iget-object p1, p1, Lcom/google/android/exoplayer2/y$b;->b:Lcom/google/android/exoplayer2/source/r$b;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/source/r;->b(Lcom/google/android/exoplayer2/source/r$b;)V

    :cond_0
    return-void
.end method

.method private c(Lcom/google/android/exoplayer2/y$c;)V
    .locals 3

    .line 446
    iget-boolean v0, p1, Lcom/google/android/exoplayer2/y$c;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/google/android/exoplayer2/y$c;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 447
    iget-object v0, p0, Lcom/google/android/exoplayer2/y;->f:Ljava/util/HashMap;

    .line 448
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/y$b;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/y$b;

    .line 449
    iget-object v1, v0, Lcom/google/android/exoplayer2/y$b;->a:Lcom/google/android/exoplayer2/source/r;

    iget-object v2, v0, Lcom/google/android/exoplayer2/y$b;->b:Lcom/google/android/exoplayer2/source/r$b;

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/source/r;->c(Lcom/google/android/exoplayer2/source/r$b;)V

    .line 450
    iget-object v1, v0, Lcom/google/android/exoplayer2/y$b;->a:Lcom/google/android/exoplayer2/source/r;

    iget-object v0, v0, Lcom/google/android/exoplayer2/y$b;->c:Lcom/google/android/exoplayer2/source/s;

    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/source/r;->a(Lcom/google/android/exoplayer2/source/s;)V

    .line 451
    iget-object v0, p0, Lcom/google/android/exoplayer2/y;->g:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static synthetic lambda$LqbOLZDaxpu0TVuEP5_1xKNlChs(Lcom/google/android/exoplayer2/y;Lcom/google/android/exoplayer2/source/r;Lcom/google/android/exoplayer2/al;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/y;->a(Lcom/google/android/exoplayer2/source/r;Lcom/google/android/exoplayer2/al;)V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 261
    iget-object v0, p0, Lcom/google/android/exoplayer2/y;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final a(IIILcom/google/android/exoplayer2/source/ac;)Lcom/google/android/exoplayer2/al;
    .locals 3

    const/4 v0, 0x1

    if-ltz p1, :cond_0

    if-gt p1, p2, :cond_0

    .line 229
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/y;->a()I

    move-result v1

    if-gt p2, v1, :cond_0

    if-ltz p3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 228
    :goto_0
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    .line 230
    iput-object p4, p0, Lcom/google/android/exoplayer2/y;->h:Lcom/google/android/exoplayer2/source/ac;

    if-eq p1, p2, :cond_3

    if-ne p1, p3, :cond_1

    goto :goto_2

    .line 234
    :cond_1
    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    move-result p4

    sub-int v1, p2, p1

    add-int/2addr v1, p3

    sub-int/2addr v1, v0

    add-int/lit8 v0, p2, -0x1

    .line 236
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 237
    iget-object v1, p0, Lcom/google/android/exoplayer2/y;->a:Ljava/util/List;

    invoke-interface {v1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/y$c;

    iget v1, v1, Lcom/google/android/exoplayer2/y$c;->d:I

    .line 238
    iget-object v2, p0, Lcom/google/android/exoplayer2/y;->a:Ljava/util/List;

    invoke-static {v2, p1, p2, p3}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/util/List;III)V

    :goto_1
    if-gt p4, v0, :cond_2

    .line 240
    iget-object p1, p0, Lcom/google/android/exoplayer2/y;->a:Ljava/util/List;

    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/y$c;

    .line 241
    iput v1, p1, Lcom/google/android/exoplayer2/y$c;->d:I

    .line 242
    iget-object p1, p1, Lcom/google/android/exoplayer2/y$c;->a:Lcom/google/android/exoplayer2/source/n;

    .line 3076
    iget-object p1, p1, Lcom/google/android/exoplayer2/source/n;->a:Lcom/google/android/exoplayer2/source/n$a;

    .line 242
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/al;->a()I

    move-result p1

    add-int/2addr v1, p1

    add-int/lit8 p4, p4, 0x1

    goto :goto_1

    .line 244
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/y;->c()Lcom/google/android/exoplayer2/al;

    move-result-object p1

    return-object p1

    .line 232
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/y;->c()Lcom/google/android/exoplayer2/al;

    move-result-object p1

    return-object p1
.end method

.method public final a(ILjava/util/List;Lcom/google/android/exoplayer2/source/ac;)Lcom/google/android/exoplayer2/al;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/y$c;",
            ">;",
            "Lcom/google/android/exoplayer2/source/ac;",
            ")",
            "Lcom/google/android/exoplayer2/al;"
        }
    .end annotation

    .line 138
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 139
    iput-object p3, p0, Lcom/google/android/exoplayer2/y;->h:Lcom/google/android/exoplayer2/source/ac;

    move p3, p1

    .line 140
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, p1

    if-ge p3, v0, :cond_3

    sub-int v0, p3, p1

    .line 141
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/y$c;

    if-lez p3, :cond_0

    .line 143
    iget-object v1, p0, Lcom/google/android/exoplayer2/y;->a:Ljava/util/List;

    add-int/lit8 v2, p3, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/y$c;

    .line 144
    iget-object v2, v1, Lcom/google/android/exoplayer2/y$c;->a:Lcom/google/android/exoplayer2/source/n;

    .line 1076
    iget-object v2, v2, Lcom/google/android/exoplayer2/source/n;->a:Lcom/google/android/exoplayer2/source/n$a;

    .line 145
    iget v1, v1, Lcom/google/android/exoplayer2/y$c;->d:I

    .line 147
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/al;->a()I

    move-result v2

    add-int/2addr v1, v2

    .line 145
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/y$c;->a(I)V

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 149
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/y$c;->a(I)V

    .line 151
    :goto_1
    iget-object v1, v0, Lcom/google/android/exoplayer2/y$c;->a:Lcom/google/android/exoplayer2/source/n;

    .line 2076
    iget-object v1, v1, Lcom/google/android/exoplayer2/source/n;->a:Lcom/google/android/exoplayer2/source/n$a;

    .line 154
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/al;->a()I

    move-result v1

    .line 152
    invoke-direct {p0, p3, v1}, Lcom/google/android/exoplayer2/y;->b(II)V

    .line 155
    iget-object v1, p0, Lcom/google/android/exoplayer2/y;->a:Ljava/util/List;

    invoke-interface {v1, p3, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 156
    iget-object v1, p0, Lcom/google/android/exoplayer2/y;->c:Ljava/util/Map;

    iget-object v2, v0, Lcom/google/android/exoplayer2/y$c;->b:Ljava/lang/Object;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/y;->i:Z

    if-eqz v1, :cond_2

    .line 158
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/y;->a(Lcom/google/android/exoplayer2/y$c;)V

    .line 159
    iget-object v1, p0, Lcom/google/android/exoplayer2/y;->b:Ljava/util/IdentityHashMap;

    invoke-virtual {v1}, Ljava/util/IdentityHashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 160
    iget-object v1, p0, Lcom/google/android/exoplayer2/y;->g:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 162
    :cond_1
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/y;->b(Lcom/google/android/exoplayer2/y$c;)V

    :cond_2
    :goto_2
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 167
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/y;->c()Lcom/google/android/exoplayer2/al;

    move-result-object p1

    return-object p1
.end method

.method final a(II)V
    .locals 4

    const/4 v0, 0x1

    sub-int/2addr p2, v0

    :goto_0
    if-lt p2, p1, :cond_1

    .line 392
    iget-object v1, p0, Lcom/google/android/exoplayer2/y;->a:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/y$c;

    .line 393
    iget-object v2, p0, Lcom/google/android/exoplayer2/y;->c:Ljava/util/Map;

    iget-object v3, v1, Lcom/google/android/exoplayer2/y$c;->b:Ljava/lang/Object;

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    iget-object v2, v1, Lcom/google/android/exoplayer2/y$c;->a:Lcom/google/android/exoplayer2/source/n;

    .line 5076
    iget-object v2, v2, Lcom/google/android/exoplayer2/source/n;->a:Lcom/google/android/exoplayer2/source/n$a;

    .line 396
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/al;->a()I

    move-result v2

    neg-int v2, v2

    .line 395
    invoke-direct {p0, p2, v2}, Lcom/google/android/exoplayer2/y;->b(II)V

    .line 397
    iput-boolean v0, v1, Lcom/google/android/exoplayer2/y$c;->e:Z

    .line 398
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/y;->i:Z

    if-eqz v2, :cond_0

    .line 399
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/y;->c(Lcom/google/android/exoplayer2/y$c;)V

    :cond_0
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/source/p;)V
    .locals 2

    .line 322
    iget-object v0, p0, Lcom/google/android/exoplayer2/y;->b:Ljava/util/IdentityHashMap;

    .line 323
    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/y$c;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/y$c;

    .line 324
    iget-object v1, v0, Lcom/google/android/exoplayer2/y$c;->a:Lcom/google/android/exoplayer2/source/n;

    invoke-virtual {v1, p1}, Lcom/google/android/exoplayer2/source/n;->a(Lcom/google/android/exoplayer2/source/p;)V

    .line 325
    iget-object v1, v0, Lcom/google/android/exoplayer2/y$c;->c:Ljava/util/List;

    check-cast p1, Lcom/google/android/exoplayer2/source/m;

    iget-object p1, p1, Lcom/google/android/exoplayer2/source/m;->a:Lcom/google/android/exoplayer2/source/r$a;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 326
    iget-object p1, p0, Lcom/google/android/exoplayer2/y;->b:Ljava/util/IdentityHashMap;

    invoke-virtual {p1}, Ljava/util/IdentityHashMap;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 327
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/y;->d()V

    .line 329
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/y;->c(Lcom/google/android/exoplayer2/y$c;)V

    return-void
.end method

.method final a(Lcom/google/android/exoplayer2/y$c;)V
    .locals 5

    .line 434
    iget-object v0, p1, Lcom/google/android/exoplayer2/y$c;->a:Lcom/google/android/exoplayer2/source/n;

    .line 435
    new-instance v1, Lcom/google/android/exoplayer2/-$$Lambda$y$LqbOLZDaxpu0TVuEP5_1xKNlChs;

    invoke-direct {v1, p0}, Lcom/google/android/exoplayer2/-$$Lambda$y$LqbOLZDaxpu0TVuEP5_1xKNlChs;-><init>(Lcom/google/android/exoplayer2/y;)V

    .line 437
    new-instance v2, Lcom/google/android/exoplayer2/y$a;

    invoke-direct {v2, p0, p1}, Lcom/google/android/exoplayer2/y$a;-><init>(Lcom/google/android/exoplayer2/y;Lcom/google/android/exoplayer2/y$c;)V

    .line 438
    iget-object v3, p0, Lcom/google/android/exoplayer2/y;->f:Ljava/util/HashMap;

    new-instance v4, Lcom/google/android/exoplayer2/y$b;

    invoke-direct {v4, v0, v1, v2}, Lcom/google/android/exoplayer2/y$b;-><init>(Lcom/google/android/exoplayer2/source/r;Lcom/google/android/exoplayer2/source/r$b;Lcom/google/android/exoplayer2/source/s;)V

    invoke-virtual {v3, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    invoke-static {}, Lcom/google/android/exoplayer2/util/af;->b()Landroid/os/Handler;

    move-result-object p1

    invoke-interface {v0, p1, v2}, Lcom/google/android/exoplayer2/source/r;->a(Landroid/os/Handler;Lcom/google/android/exoplayer2/source/s;)V

    .line 440
    invoke-static {}, Lcom/google/android/exoplayer2/util/af;->b()Landroid/os/Handler;

    move-result-object p1

    invoke-interface {v0, p1, v2}, Lcom/google/android/exoplayer2/source/r;->a(Landroid/os/Handler;Lcom/google/android/exoplayer2/drm/c;)V

    .line 441
    iget-object p1, p0, Lcom/google/android/exoplayer2/y;->j:Lcom/google/android/exoplayer2/upstream/v;

    invoke-interface {v0, v1, p1}, Lcom/google/android/exoplayer2/source/r;->a(Lcom/google/android/exoplayer2/source/r$b;Lcom/google/android/exoplayer2/upstream/v;)V

    return-void
.end method

.method public final b()V
    .locals 5

    .line 334
    iget-object v0, p0, Lcom/google/android/exoplayer2/y;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/y$b;

    .line 336
    :try_start_0
    iget-object v2, v1, Lcom/google/android/exoplayer2/y$b;->a:Lcom/google/android/exoplayer2/source/r;

    iget-object v3, v1, Lcom/google/android/exoplayer2/y$b;->b:Lcom/google/android/exoplayer2/source/r$b;

    invoke-interface {v2, v3}, Lcom/google/android/exoplayer2/source/r;->c(Lcom/google/android/exoplayer2/source/r$b;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v3, "MediaSourceList"

    const-string v4, "Failed to release child source."

    .line 339
    invoke-static {v3, v4, v2}, Lcom/google/android/exoplayer2/util/n;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 341
    :goto_1
    iget-object v2, v1, Lcom/google/android/exoplayer2/y$b;->a:Lcom/google/android/exoplayer2/source/r;

    iget-object v1, v1, Lcom/google/android/exoplayer2/y$b;->c:Lcom/google/android/exoplayer2/source/s;

    invoke-interface {v2, v1}, Lcom/google/android/exoplayer2/source/r;->a(Lcom/google/android/exoplayer2/source/s;)V

    goto :goto_0

    .line 343
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/y;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 344
    iget-object v0, p0, Lcom/google/android/exoplayer2/y;->g:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    const/4 v0, 0x0

    .line 345
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/y;->i:Z

    return-void
.end method

.method public final c()Lcom/google/android/exoplayer2/al;
    .locals 3

    .line 350
    iget-object v0, p0, Lcom/google/android/exoplayer2/y;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 351
    sget-object v0, Lcom/google/android/exoplayer2/al;->b:Lcom/google/android/exoplayer2/al;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 354
    :goto_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/y;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 355
    iget-object v2, p0, Lcom/google/android/exoplayer2/y;->a:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/y$c;

    .line 356
    iput v1, v2, Lcom/google/android/exoplayer2/y$c;->d:I

    .line 357
    iget-object v2, v2, Lcom/google/android/exoplayer2/y$c;->a:Lcom/google/android/exoplayer2/source/n;

    .line 4076
    iget-object v2, v2, Lcom/google/android/exoplayer2/source/n;->a:Lcom/google/android/exoplayer2/source/n$a;

    .line 357
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/al;->a()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 359
    :cond_1
    new-instance v0, Lcom/google/android/exoplayer2/ae;

    iget-object v1, p0, Lcom/google/android/exoplayer2/y;->a:Ljava/util/List;

    iget-object v2, p0, Lcom/google/android/exoplayer2/y;->h:Lcom/google/android/exoplayer2/source/ac;

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/ae;-><init>(Ljava/util/Collection;Lcom/google/android/exoplayer2/source/ac;)V

    return-object v0
.end method

.method final d()V
    .locals 3

    .line 373
    iget-object v0, p0, Lcom/google/android/exoplayer2/y;->g:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 374
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 375
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/y$c;

    .line 376
    iget-object v2, v1, Lcom/google/android/exoplayer2/y$c;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 377
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/y;->b(Lcom/google/android/exoplayer2/y$c;)V

    .line 378
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method
