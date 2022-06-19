.class public final Lcom/google/android/exoplayer2/source/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/source/t;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/h$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/exoplayer2/upstream/h$a;

.field private final b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/android/exoplayer2/source/t;",
            ">;"
        }
    .end annotation
.end field

.field private final c:[I

.field private d:Lcom/google/android/exoplayer2/source/h$a;

.field private e:Lcom/google/android/exoplayer2/source/ads/b$a;

.field private f:Lcom/google/android/exoplayer2/upstream/r;

.field private g:J

.field private h:J

.field private i:J

.field private j:F

.field private k:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 123
    new-instance v0, Lcom/google/android/exoplayer2/upstream/n;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/upstream/n;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/h;-><init>(Lcom/google/android/exoplayer2/upstream/h$a;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/extractor/l;)V
    .locals 1

    .line 134
    new-instance v0, Lcom/google/android/exoplayer2/upstream/n;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/upstream/n;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0, p2}, Lcom/google/android/exoplayer2/source/h;-><init>(Lcom/google/android/exoplayer2/upstream/h$a;Lcom/google/android/exoplayer2/extractor/l;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/h$a;)V
    .locals 1

    .line 144
    new-instance v0, Lcom/google/android/exoplayer2/extractor/f;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/f;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/source/h;-><init>(Lcom/google/android/exoplayer2/upstream/h$a;Lcom/google/android/exoplayer2/extractor/l;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/h$a;Lcom/google/android/exoplayer2/extractor/l;)V
    .locals 1

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/h;->a:Lcom/google/android/exoplayer2/upstream/h$a;

    .line 158
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/source/h;->a(Lcom/google/android/exoplayer2/upstream/h$a;Lcom/google/android/exoplayer2/extractor/l;)Landroid/util/SparseArray;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/h;->b:Landroid/util/SparseArray;

    .line 159
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/h;->c:[I

    const/4 p1, 0x0

    .line 160
    :goto_0
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/h;->b:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    if-ge p1, p2, :cond_0

    .line 161
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/h;->c:[I

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/h;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    aput v0, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 163
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/h;->g:J

    .line 164
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/h;->h:J

    .line 165
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/h;->i:J

    const p1, -0x800001

    .line 166
    iput p1, p0, Lcom/google/android/exoplayer2/source/h;->j:F

    .line 167
    iput p1, p0, Lcom/google/android/exoplayer2/source/h;->k:F

    return-void
.end method

.method private static a(Lcom/google/android/exoplayer2/upstream/h$a;Lcom/google/android/exoplayer2/extractor/l;)Landroid/util/SparseArray;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/upstream/h$a;",
            "Lcom/google/android/exoplayer2/extractor/l;",
            ")",
            "Landroid/util/SparseArray<",
            "Lcom/google/android/exoplayer2/source/t;",
            ">;"
        }
    .end annotation

    .line 438
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "com.google.android.exoplayer2.source.dash.DashMediaSource$Factory"

    .line 442
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-class v4, Lcom/google/android/exoplayer2/source/t;

    .line 443
    invoke-virtual {v3, v4}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Class;

    .line 444
    const-class v5, Lcom/google/android/exoplayer2/upstream/h$a;

    aput-object v5, v4, v2

    .line 446
    invoke-virtual {v3, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    aput-object p0, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/source/t;

    .line 444
    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    const-string v3, "com.google.android.exoplayer2.source.smoothstreaming.SsMediaSource$Factory"

    .line 452
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-class v4, Lcom/google/android/exoplayer2/source/t;

    .line 454
    invoke-virtual {v3, v4}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Class;

    .line 455
    const-class v5, Lcom/google/android/exoplayer2/upstream/h$a;

    aput-object v5, v4, v2

    .line 457
    invoke-virtual {v3, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    aput-object p0, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/source/t;

    .line 455
    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    const-string v3, "com.google.android.exoplayer2.source.hls.HlsMediaSource$Factory"

    .line 463
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-class v4, Lcom/google/android/exoplayer2/source/t;

    .line 464
    invoke-virtual {v3, v4}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x2

    new-array v5, v1, [Ljava/lang/Class;

    .line 465
    const-class v6, Lcom/google/android/exoplayer2/upstream/h$a;

    aput-object v6, v5, v2

    .line 467
    invoke-virtual {v3, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v2

    invoke-virtual {v3, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/t;

    .line 465
    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    const/4 v1, 0x3

    .line 472
    new-instance v2, Lcom/google/android/exoplayer2/source/x$a;

    invoke-direct {v2, p0, p1}, Lcom/google/android/exoplayer2/source/x$a;-><init>(Lcom/google/android/exoplayer2/upstream/h$a;Lcom/google/android/exoplayer2/extractor/l;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/android/exoplayer2/MediaItem;)Lcom/google/android/exoplayer2/source/r;
    .locals 18

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    .line 323
    iget-object v1, v0, Lcom/google/android/exoplayer2/MediaItem;->b:Lcom/google/android/exoplayer2/MediaItem$c;

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    iget-object v1, v0, Lcom/google/android/exoplayer2/MediaItem;->b:Lcom/google/android/exoplayer2/MediaItem$c;

    iget-object v1, v1, Lcom/google/android/exoplayer2/MediaItem$c;->a:Landroid/net/Uri;

    iget-object v2, v0, Lcom/google/android/exoplayer2/MediaItem;->b:Lcom/google/android/exoplayer2/MediaItem$c;

    iget-object v2, v2, Lcom/google/android/exoplayer2/MediaItem$c;->b:Ljava/lang/String;

    .line 326
    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/util/af;->a(Landroid/net/Uri;Ljava/lang/String;)I

    move-result v1

    .line 328
    iget-object v2, v7, Lcom/google/android/exoplayer2/source/h;->b:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/source/t;

    .line 329
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "No suitable media source factory found for content type: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v2, :cond_14

    .line 333
    iget-object v1, v0, Lcom/google/android/exoplayer2/MediaItem;->c:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    iget-wide v3, v1, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->targetOffsetMs:J

    const v1, -0x800001

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v8, v3, v5

    if-nez v8, :cond_0

    iget-wide v3, v7, Lcom/google/android/exoplayer2/source/h;->g:J

    cmp-long v8, v3, v5

    if-nez v8, :cond_4

    :cond_0
    iget-object v3, v0, Lcom/google/android/exoplayer2/MediaItem;->c:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    iget v3, v3, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->minPlaybackSpeed:F

    cmpl-float v3, v3, v1

    if-nez v3, :cond_1

    iget v3, v7, Lcom/google/android/exoplayer2/source/h;->j:F

    cmpl-float v3, v3, v1

    if-nez v3, :cond_4

    :cond_1
    iget-object v3, v0, Lcom/google/android/exoplayer2/MediaItem;->c:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    iget v3, v3, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->maxPlaybackSpeed:F

    cmpl-float v3, v3, v1

    if-nez v3, :cond_2

    iget v3, v7, Lcom/google/android/exoplayer2/source/h;->k:F

    cmpl-float v3, v3, v1

    if-nez v3, :cond_4

    :cond_2
    iget-object v3, v0, Lcom/google/android/exoplayer2/MediaItem;->c:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    iget-wide v3, v3, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->minOffsetMs:J

    cmp-long v8, v3, v5

    if-nez v8, :cond_3

    iget-wide v3, v7, Lcom/google/android/exoplayer2/source/h;->h:J

    cmp-long v8, v3, v5

    if-nez v8, :cond_4

    :cond_3
    iget-object v3, v0, Lcom/google/android/exoplayer2/MediaItem;->c:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    iget-wide v3, v3, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->maxOffsetMs:J

    cmp-long v8, v3, v5

    if-nez v8, :cond_a

    iget-wide v3, v7, Lcom/google/android/exoplayer2/source/h;->i:J

    cmp-long v8, v3, v5

    if-eqz v8, :cond_a

    .line 345
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/MediaItem;->a()Lcom/google/android/exoplayer2/MediaItem$a;

    move-result-object v3

    .line 347
    iget-object v4, v0, Lcom/google/android/exoplayer2/MediaItem;->c:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    iget-wide v8, v4, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->targetOffsetMs:J

    cmp-long v4, v8, v5

    if-nez v4, :cond_5

    .line 348
    iget-wide v8, v7, Lcom/google/android/exoplayer2/source/h;->g:J

    goto :goto_0

    .line 349
    :cond_5
    iget-object v4, v0, Lcom/google/android/exoplayer2/MediaItem;->c:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    iget-wide v8, v4, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->targetOffsetMs:J

    .line 1482
    :goto_0
    iput-wide v8, v3, Lcom/google/android/exoplayer2/MediaItem$a;->o:J

    .line 351
    iget-object v4, v0, Lcom/google/android/exoplayer2/MediaItem;->c:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    iget v4, v4, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->minPlaybackSpeed:F

    cmpl-float v4, v4, v1

    if-nez v4, :cond_6

    .line 352
    iget v4, v7, Lcom/google/android/exoplayer2/source/h;->j:F

    goto :goto_1

    .line 353
    :cond_6
    iget-object v4, v0, Lcom/google/android/exoplayer2/MediaItem;->c:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    iget v4, v4, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->minPlaybackSpeed:F

    .line 1521
    :goto_1
    iput v4, v3, Lcom/google/android/exoplayer2/MediaItem$a;->r:F

    .line 355
    iget-object v4, v0, Lcom/google/android/exoplayer2/MediaItem;->c:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    iget v4, v4, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->maxPlaybackSpeed:F

    cmpl-float v1, v4, v1

    if-nez v1, :cond_7

    .line 356
    iget v1, v7, Lcom/google/android/exoplayer2/source/h;->k:F

    goto :goto_2

    .line 357
    :cond_7
    iget-object v1, v0, Lcom/google/android/exoplayer2/MediaItem;->c:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    iget v1, v1, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->maxPlaybackSpeed:F

    .line 1534
    :goto_2
    iput v1, v3, Lcom/google/android/exoplayer2/MediaItem$a;->s:F

    .line 359
    iget-object v1, v0, Lcom/google/android/exoplayer2/MediaItem;->c:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    iget-wide v8, v1, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->minOffsetMs:J

    cmp-long v1, v8, v5

    if-nez v1, :cond_8

    .line 360
    iget-wide v8, v7, Lcom/google/android/exoplayer2/source/h;->h:J

    goto :goto_3

    .line 361
    :cond_8
    iget-object v1, v0, Lcom/google/android/exoplayer2/MediaItem;->c:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    iget-wide v8, v1, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->minOffsetMs:J

    .line 2495
    :goto_3
    iput-wide v8, v3, Lcom/google/android/exoplayer2/MediaItem$a;->p:J

    .line 363
    iget-object v1, v0, Lcom/google/android/exoplayer2/MediaItem;->c:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    iget-wide v8, v1, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->maxOffsetMs:J

    cmp-long v1, v8, v5

    if-nez v1, :cond_9

    .line 364
    iget-wide v0, v7, Lcom/google/android/exoplayer2/source/h;->i:J

    goto :goto_4

    .line 365
    :cond_9
    iget-object v0, v0, Lcom/google/android/exoplayer2/MediaItem;->c:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->maxOffsetMs:J

    .line 2508
    :goto_4
    iput-wide v0, v3, Lcom/google/android/exoplayer2/MediaItem$a;->q:J

    .line 366
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/MediaItem$a;->a()Lcom/google/android/exoplayer2/MediaItem;

    move-result-object v0

    .line 368
    :cond_a
    invoke-interface {v2, v0}, Lcom/google/android/exoplayer2/source/t;->a(Lcom/google/android/exoplayer2/MediaItem;)Lcom/google/android/exoplayer2/source/r;

    move-result-object v1

    .line 370
    iget-object v2, v0, Lcom/google/android/exoplayer2/MediaItem;->b:Lcom/google/android/exoplayer2/MediaItem$c;

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/MediaItem$c;

    iget-object v2, v2, Lcom/google/android/exoplayer2/MediaItem$c;->g:Ljava/util/List;

    .line 371
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_d

    .line 372
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    new-array v3, v3, [Lcom/google/android/exoplayer2/source/r;

    const/4 v4, 0x0

    .line 373
    aput-object v1, v3, v4

    .line 374
    new-instance v1, Lcom/google/android/exoplayer2/source/af$a;

    iget-object v5, v7, Lcom/google/android/exoplayer2/source/h;->a:Lcom/google/android/exoplayer2/upstream/h$a;

    invoke-direct {v1, v5}, Lcom/google/android/exoplayer2/source/af$a;-><init>(Lcom/google/android/exoplayer2/upstream/h$a;)V

    iget-object v5, v7, Lcom/google/android/exoplayer2/source/h;->f:Lcom/google/android/exoplayer2/upstream/r;

    if-eqz v5, :cond_b

    goto :goto_5

    .line 3097
    :cond_b
    new-instance v5, Lcom/google/android/exoplayer2/upstream/p;

    invoke-direct {v5}, Lcom/google/android/exoplayer2/upstream/p;-><init>()V

    :goto_5
    iput-object v5, v1, Lcom/google/android/exoplayer2/source/af$a;->b:Lcom/google/android/exoplayer2/upstream/r;

    .line 377
    :goto_6
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_c

    add-int/lit8 v5, v4, 0x1

    .line 380
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v10, v4

    check-cast v10, Lcom/google/android/exoplayer2/MediaItem$d;

    .line 3123
    new-instance v4, Lcom/google/android/exoplayer2/source/af;

    iget-object v9, v1, Lcom/google/android/exoplayer2/source/af$a;->e:Ljava/lang/String;

    iget-object v11, v1, Lcom/google/android/exoplayer2/source/af$a;->a:Lcom/google/android/exoplayer2/upstream/h$a;

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    iget-object v14, v1, Lcom/google/android/exoplayer2/source/af$a;->b:Lcom/google/android/exoplayer2/upstream/r;

    iget-boolean v15, v1, Lcom/google/android/exoplayer2/source/af$a;->c:Z

    iget-object v6, v1, Lcom/google/android/exoplayer2/source/af$a;->d:Ljava/lang/Object;

    const/16 v17, 0x0

    move-object v8, v4

    move-object/from16 v16, v6

    invoke-direct/range {v8 .. v17}, Lcom/google/android/exoplayer2/source/af;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/MediaItem$d;Lcom/google/android/exoplayer2/upstream/h$a;JLcom/google/android/exoplayer2/upstream/r;ZLjava/lang/Object;Lcom/google/android/exoplayer2/source/af$1;)V

    .line 379
    aput-object v4, v3, v5

    move v4, v5

    goto :goto_6

    .line 382
    :cond_c
    new-instance v1, Lcom/google/android/exoplayer2/source/MergingMediaSource;

    invoke-direct {v1, v3}, Lcom/google/android/exoplayer2/source/MergingMediaSource;-><init>([Lcom/google/android/exoplayer2/source/r;)V

    :cond_d
    move-object v9, v1

    .line 3390
    iget-object v1, v0, Lcom/google/android/exoplayer2/MediaItem;->e:Lcom/google/android/exoplayer2/MediaItem$b;

    iget-wide v1, v1, Lcom/google/android/exoplayer2/MediaItem$b;->a:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_e

    iget-object v1, v0, Lcom/google/android/exoplayer2/MediaItem;->e:Lcom/google/android/exoplayer2/MediaItem$b;

    iget-wide v1, v1, Lcom/google/android/exoplayer2/MediaItem$b;->b:J

    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v5, v1, v3

    if-nez v5, :cond_e

    iget-object v1, v0, Lcom/google/android/exoplayer2/MediaItem;->e:Lcom/google/android/exoplayer2/MediaItem$b;

    iget-boolean v1, v1, Lcom/google/android/exoplayer2/MediaItem$b;->d:Z

    if-nez v1, :cond_e

    move-object v1, v9

    goto :goto_7

    .line 3395
    :cond_e
    new-instance v1, Lcom/google/android/exoplayer2/source/ClippingMediaSource;

    iget-object v2, v0, Lcom/google/android/exoplayer2/MediaItem;->e:Lcom/google/android/exoplayer2/MediaItem$b;

    iget-wide v2, v2, Lcom/google/android/exoplayer2/MediaItem$b;->a:J

    .line 3397
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/f;->b(J)J

    move-result-wide v10

    iget-object v2, v0, Lcom/google/android/exoplayer2/MediaItem;->e:Lcom/google/android/exoplayer2/MediaItem$b;

    iget-wide v2, v2, Lcom/google/android/exoplayer2/MediaItem$b;->b:J

    .line 3398
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/f;->b(J)J

    move-result-wide v12

    iget-object v2, v0, Lcom/google/android/exoplayer2/MediaItem;->e:Lcom/google/android/exoplayer2/MediaItem$b;

    iget-boolean v2, v2, Lcom/google/android/exoplayer2/MediaItem$b;->e:Z

    xor-int/lit8 v14, v2, 0x1

    iget-object v2, v0, Lcom/google/android/exoplayer2/MediaItem;->e:Lcom/google/android/exoplayer2/MediaItem$b;

    iget-boolean v15, v2, Lcom/google/android/exoplayer2/MediaItem$b;->c:Z

    iget-object v2, v0, Lcom/google/android/exoplayer2/MediaItem;->e:Lcom/google/android/exoplayer2/MediaItem$b;

    iget-boolean v2, v2, Lcom/google/android/exoplayer2/MediaItem$b;->d:Z

    move-object v8, v1

    move/from16 v16, v2

    invoke-direct/range {v8 .. v16}, Lcom/google/android/exoplayer2/source/ClippingMediaSource;-><init>(Lcom/google/android/exoplayer2/source/r;JJZZZ)V

    .line 3405
    :goto_7
    iget-object v2, v0, Lcom/google/android/exoplayer2/MediaItem;->b:Lcom/google/android/exoplayer2/MediaItem$c;

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3407
    iget-object v2, v0, Lcom/google/android/exoplayer2/MediaItem;->b:Lcom/google/android/exoplayer2/MediaItem$c;

    iget-object v2, v2, Lcom/google/android/exoplayer2/MediaItem$c;->d:Lcom/google/android/exoplayer2/MediaItem$AdsConfiguration;

    if-nez v2, :cond_f

    return-object v1

    .line 3411
    :cond_f
    iget-object v3, v7, Lcom/google/android/exoplayer2/source/h;->d:Lcom/google/android/exoplayer2/source/h$a;

    .line 3412
    iget-object v6, v7, Lcom/google/android/exoplayer2/source/h;->e:Lcom/google/android/exoplayer2/source/ads/b$a;

    const-string v4, "DefaultMediaSourceFactory"

    if-eqz v3, :cond_13

    if-nez v6, :cond_10

    goto :goto_9

    .line 3420
    :cond_10
    invoke-interface {v3}, Lcom/google/android/exoplayer2/source/h$a;->a()Lcom/google/android/exoplayer2/source/ads/b;

    move-result-object v5

    if-nez v5, :cond_11

    const-string v0, "Playing media without ads, as no AdsLoader was provided."

    .line 3422
    invoke-static {v4, v0}, Lcom/google/android/exoplayer2/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 3425
    :cond_11
    new-instance v8, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;

    new-instance v3, Lcom/google/android/exoplayer2/upstream/j;

    iget-object v4, v2, Lcom/google/android/exoplayer2/MediaItem$AdsConfiguration;->adTagUri:Landroid/net/Uri;

    invoke-direct {v3, v4}, Lcom/google/android/exoplayer2/upstream/j;-><init>(Landroid/net/Uri;)V

    .line 3428
    iget-object v4, v2, Lcom/google/android/exoplayer2/MediaItem$AdsConfiguration;->adsId:Ljava/lang/Object;

    if-eqz v4, :cond_12

    .line 3429
    iget-object v0, v2, Lcom/google/android/exoplayer2/MediaItem$AdsConfiguration;->adsId:Ljava/lang/Object;

    goto :goto_8

    .line 3430
    :cond_12
    iget-object v0, v0, Lcom/google/android/exoplayer2/MediaItem;->a:Ljava/lang/String;

    iget-object v2, v2, Lcom/google/android/exoplayer2/MediaItem$AdsConfiguration;->adTagUri:Landroid/net/Uri;

    invoke-static {v0, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    :goto_8
    move-object v4, v0

    move-object v0, v8

    move-object v2, v3

    move-object v3, v4

    move-object/from16 v4, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;-><init>(Lcom/google/android/exoplayer2/source/r;Lcom/google/android/exoplayer2/upstream/j;Ljava/lang/Object;Lcom/google/android/exoplayer2/source/t;Lcom/google/android/exoplayer2/source/ads/b;Lcom/google/android/exoplayer2/source/ads/b$a;)V

    return-object v8

    :cond_13
    :goto_9
    const-string v0, "Playing media without ads. Configure ad support by calling setAdsLoaderProvider and setAdViewProvider."

    .line 3414
    invoke-static {v4, v0}, Lcom/google/android/exoplayer2/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 1176
    :cond_14
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a()[I
    .locals 2

    .line 318
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/h;->c:[I

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    return-object v0
.end method
