.class public abstract Lcom/jjoe64/graphview/a/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jjoe64/graphview/a/h;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E::",
        "Lcom/jjoe64/graphview/a/d;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/jjoe64/graphview/a/h<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation
.end field

.field public b:Ljava/lang/String;

.field public c:I

.field protected d:Lcom/jjoe64/graphview/a/f;

.field public e:Ljava/lang/Boolean;

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/graphics/PointF;",
            "TE;>;"
        }
    .end annotation
.end field

.field private g:D

.field private h:D

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/jjoe64/graphview/GraphView;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jjoe64/graphview/a/b;->a:Ljava/util/List;

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jjoe64/graphview/a/b;->f:Ljava/util/Map;

    const v0, -0xff8834

    .line 75
    iput v0, p0, Lcom/jjoe64/graphview/a/b;->c:I

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 80
    iput-wide v0, p0, Lcom/jjoe64/graphview/a/b;->g:D

    .line 85
    iput-wide v0, p0, Lcom/jjoe64/graphview/a/b;->h:D

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jjoe64/graphview/a/b;->i:Ljava/util/List;

    return-void
.end method

.method public constructor <init>([Lcom/jjoe64/graphview/a/d;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)V"
        }
    .end annotation

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jjoe64/graphview/a/b;->a:Ljava/util/List;

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jjoe64/graphview/a/b;->f:Ljava/util/Map;

    const v0, -0xff8834

    .line 75
    iput v0, p0, Lcom/jjoe64/graphview/a/b;->c:I

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 80
    iput-wide v0, p0, Lcom/jjoe64/graphview/a/b;->g:D

    .line 85
    iput-wide v0, p0, Lcom/jjoe64/graphview/a/b;->h:D

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jjoe64/graphview/a/b;->i:Ljava/util/List;

    .line 114
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 115
    iget-object v3, p0, Lcom/jjoe64/graphview/a/b;->a:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 117
    :cond_0
    invoke-direct {p0}, Lcom/jjoe64/graphview/a/b;->i()V

    return-void
.end method

.method private i()V
    .locals 8

    .line 520
    iget-object v0, p0, Lcom/jjoe64/graphview/a/b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    .line 527
    iget-object v0, p0, Lcom/jjoe64/graphview/a/b;->a:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jjoe64/graphview/a/d;

    invoke-interface {v0}, Lcom/jjoe64/graphview/a/d;->a()D

    move-result-wide v2

    .line 529
    :goto_0
    iget-object v0, p0, Lcom/jjoe64/graphview/a/b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 530
    iget-object v0, p0, Lcom/jjoe64/graphview/a/b;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jjoe64/graphview/a/d;

    invoke-interface {v0}, Lcom/jjoe64/graphview/a/d;->a()D

    move-result-wide v4

    const-wide/high16 v6, 0x7ff8000000000000L    # Double.NaN

    cmpl-double v0, v4, v6

    if-eqz v0, :cond_1

    .line 531
    iget-object v0, p0, Lcom/jjoe64/graphview/a/b;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jjoe64/graphview/a/d;

    invoke-interface {v0}, Lcom/jjoe64/graphview/a/d;->a()D

    move-result-wide v4

    cmpl-double v0, v2, v4

    if-gtz v0, :cond_0

    .line 534
    iget-object v0, p0, Lcom/jjoe64/graphview/a/b;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jjoe64/graphview/a/d;

    invoke-interface {v0}, Lcom/jjoe64/graphview/a/d;->a()D

    move-result-wide v2

    goto :goto_1

    .line 532
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The order of the values is not correct. X-Values have to be ordered ASC. First the lowest x value and at least the highest x value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public final a(F)Lcom/jjoe64/graphview/a/d;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TE;"
        }
    .end annotation

    .line 348
    iget-object v0, p0, Lcom/jjoe64/graphview/a/b;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/high16 v2, 0x7fc00000    # Float.NaN

    move-object v3, v1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 349
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    sub-float/2addr v5, p1

    .line 352
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    if-eqz v3, :cond_1

    cmpg-float v6, v5, v2

    if-gez v6, :cond_0

    .line 355
    :cond_1
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/jjoe64/graphview/a/d;

    move v2, v5

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_3

    const/high16 p1, 0x43480000    # 200.0f

    cmpg-float p1, v2, p1

    if-gez p1, :cond_3

    return-object v3

    :cond_3
    return-object v1
.end method

.method protected a(FF)Lcom/jjoe64/graphview/a/d;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF)TE;"
        }
    .end annotation

    .line 325
    iget-object v0, p0, Lcom/jjoe64/graphview/a/b;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/high16 v2, 0x7fc00000    # Float.NaN

    move-object v3, v1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 326
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    .line 327
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    sub-float/2addr v5, p1

    mul-float v5, v5, v5

    sub-float/2addr v6, p2

    mul-float v6, v6, v6

    add-float/2addr v5, v6

    float-to-double v5, v5

    .line 331
    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-float v5, v5

    if-eqz v3, :cond_1

    cmpg-float v6, v5, v2

    if-gez v6, :cond_0

    .line 334
    :cond_1
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/jjoe64/graphview/a/d;

    move v2, v5

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_3

    const/high16 p1, 0x42f00000    # 120.0f

    cmpg-float p1, v2, p1

    if-gez p1, :cond_3

    return-object v3

    :cond_3
    return-object v1
.end method

.method public final a(DD)Ljava/util/Iterator;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DD)",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 184
    invoke-virtual {p0}, Lcom/jjoe64/graphview/a/b;->b()D

    move-result-wide v0

    cmpg-double v2, p1, v0

    if-gtz v2, :cond_0

    invoke-virtual {p0}, Lcom/jjoe64/graphview/a/b;->c()D

    move-result-wide v0

    cmpl-double v2, p3, v0

    if-ltz v2, :cond_0

    .line 185
    iget-object p1, p0, Lcom/jjoe64/graphview/a/b;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    return-object p1

    .line 187
    :cond_0
    new-instance v6, Lcom/jjoe64/graphview/a/b$1;

    move-object v0, v6

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/jjoe64/graphview/a/b$1;-><init>(Lcom/jjoe64/graphview/a/b;DD)V

    return-object v6
.end method

.method protected a()V
    .locals 1

    .line 397
    iget-object v0, p0, Lcom/jjoe64/graphview/a/b;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method protected final a(FFLcom/jjoe64/graphview/a/d;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFTE;)V"
        }
    .end annotation

    .line 376
    iget-object v0, p0, Lcom/jjoe64/graphview/a/b;->d:Lcom/jjoe64/graphview/a/f;

    if-nez v0, :cond_3

    .line 1382
    iget-object v0, p0, Lcom/jjoe64/graphview/a/b;->e:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 1383
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    .line 1385
    :cond_0
    iget-object v0, p0, Lcom/jjoe64/graphview/a/b;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_1

    .line 1386
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jjoe64/graphview/GraphView;

    .line 1656
    iget-boolean v1, v1, Lcom/jjoe64/graphview/GraphView;->e:Z

    if-eqz v1, :cond_1

    .line 1387
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/jjoe64/graphview/a/b;->e:Ljava/lang/Boolean;

    const/4 v0, 0x1

    goto :goto_0

    .line 1390
    :cond_2
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/jjoe64/graphview/a/b;->e:Ljava/lang/Boolean;

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_4

    .line 377
    :cond_3
    iget-object v0, p0, Lcom/jjoe64/graphview/a/b;->f:Ljava/util/Map;

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1, p1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-void
.end method

.method public final a(Lcom/jjoe64/graphview/GraphView;)V
    .locals 2

    .line 431
    iget-object v0, p0, Lcom/jjoe64/graphview/a/b;->i:Ljava/util/List;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public abstract a(Lcom/jjoe64/graphview/GraphView;Landroid/graphics/Canvas;Lcom/jjoe64/graphview/a/d;)V
.end method

.method public final b()D
    .locals 2

    .line 124
    iget-object v0, p0, Lcom/jjoe64/graphview/a/b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/jjoe64/graphview/a/b;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jjoe64/graphview/a/d;

    invoke-interface {v0}, Lcom/jjoe64/graphview/a/d;->a()D

    move-result-wide v0

    return-wide v0
.end method

.method public final b(FF)V
    .locals 1

    .line 306
    iget-object v0, p0, Lcom/jjoe64/graphview/a/b;->d:Lcom/jjoe64/graphview/a/f;

    if-eqz v0, :cond_0

    .line 307
    invoke-virtual {p0, p1, p2}, Lcom/jjoe64/graphview/a/b;->a(FF)Lcom/jjoe64/graphview/a/d;

    :cond_0
    return-void
.end method

.method public final c()D
    .locals 2

    .line 132
    iget-object v0, p0, Lcom/jjoe64/graphview/a/b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/jjoe64/graphview/a/b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jjoe64/graphview/a/d;

    invoke-interface {v0}, Lcom/jjoe64/graphview/a/d;->a()D

    move-result-wide v0

    return-wide v0
.end method

.method public final d()D
    .locals 6

    .line 140
    iget-object v0, p0, Lcom/jjoe64/graphview/a/b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 141
    :cond_0
    iget-wide v0, p0, Lcom/jjoe64/graphview/a/b;->g:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_1

    .line 142
    iget-wide v0, p0, Lcom/jjoe64/graphview/a/b;->g:D

    return-wide v0

    .line 144
    :cond_1
    iget-object v0, p0, Lcom/jjoe64/graphview/a/b;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jjoe64/graphview/a/d;

    invoke-interface {v0}, Lcom/jjoe64/graphview/a/d;->b()D

    move-result-wide v0

    const/4 v2, 0x1

    .line 145
    :goto_0
    iget-object v3, p0, Lcom/jjoe64/graphview/a/b;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 146
    iget-object v3, p0, Lcom/jjoe64/graphview/a/b;->a:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jjoe64/graphview/a/d;

    invoke-interface {v3}, Lcom/jjoe64/graphview/a/d;->b()D

    move-result-wide v3

    cmpl-double v5, v0, v3

    if-lez v5, :cond_2

    move-wide v0, v3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 151
    :cond_3
    iput-wide v0, p0, Lcom/jjoe64/graphview/a/b;->g:D

    return-wide v0
.end method

.method public final e()D
    .locals 6

    .line 158
    iget-object v0, p0, Lcom/jjoe64/graphview/a/b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 159
    :cond_0
    iget-wide v0, p0, Lcom/jjoe64/graphview/a/b;->h:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_1

    .line 160
    iget-wide v0, p0, Lcom/jjoe64/graphview/a/b;->h:D

    return-wide v0

    .line 162
    :cond_1
    iget-object v0, p0, Lcom/jjoe64/graphview/a/b;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jjoe64/graphview/a/d;

    invoke-interface {v0}, Lcom/jjoe64/graphview/a/d;->b()D

    move-result-wide v0

    const/4 v2, 0x1

    .line 163
    :goto_0
    iget-object v3, p0, Lcom/jjoe64/graphview/a/b;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 164
    iget-object v3, p0, Lcom/jjoe64/graphview/a/b;->a:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jjoe64/graphview/a/d;

    invoke-interface {v3}, Lcom/jjoe64/graphview/a/d;->b()D

    move-result-wide v3

    cmpg-double v5, v0, v3

    if-gez v5, :cond_2

    move-wide v0, v3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 169
    :cond_3
    iput-wide v0, p0, Lcom/jjoe64/graphview/a/b;->h:D

    return-wide v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .line 257
    iget-object v0, p0, Lcom/jjoe64/graphview/a/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final g()I
    .locals 1

    .line 274
    iget v0, p0, Lcom/jjoe64/graphview/a/b;->c:I

    return v0
.end method

.method public final h()Z
    .locals 1

    .line 510
    iget-object v0, p0, Lcom/jjoe64/graphview/a/b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method
