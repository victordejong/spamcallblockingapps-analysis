.class public final Lcom/jjoe64/graphview/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final a:Lcom/jjoe64/graphview/GraphView;

.field protected b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jjoe64/graphview/a/h;",
            ">;"
        }
    .end annotation
.end field

.field c:Z

.field protected d:Lcom/jjoe64/graphview/g;

.field protected e:Lcom/jjoe64/graphview/g;

.field protected f:Lcom/jjoe64/graphview/d;

.field protected g:D

.field h:Landroid/graphics/Paint;

.field i:Ljava/lang/String;

.field public j:F

.field public k:I


# direct methods
.method constructor <init>(Lcom/jjoe64/graphview/GraphView;)V
    .locals 2

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 56
    iput-boolean v0, p0, Lcom/jjoe64/graphview/h;->c:Z

    .line 61
    new-instance v0, Lcom/jjoe64/graphview/g;

    invoke-direct {v0}, Lcom/jjoe64/graphview/g;-><init>()V

    iput-object v0, p0, Lcom/jjoe64/graphview/h;->d:Lcom/jjoe64/graphview/g;

    .line 63
    new-instance v0, Lcom/jjoe64/graphview/g;

    invoke-direct {v0}, Lcom/jjoe64/graphview/g;-><init>()V

    iput-object v0, p0, Lcom/jjoe64/graphview/h;->e:Lcom/jjoe64/graphview/g;

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 71
    iput-wide v0, p0, Lcom/jjoe64/graphview/h;->g:D

    .line 100
    iput-object p1, p0, Lcom/jjoe64/graphview/h;->a:Lcom/jjoe64/graphview/GraphView;

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jjoe64/graphview/h;->b:Ljava/util/List;

    .line 102
    new-instance v0, Lcom/jjoe64/graphview/b;

    invoke-direct {v0}, Lcom/jjoe64/graphview/b;-><init>()V

    iput-object v0, p0, Lcom/jjoe64/graphview/h;->f:Lcom/jjoe64/graphview/d;

    .line 1378
    iget-object p1, p1, Lcom/jjoe64/graphview/GraphView;->c:Lcom/jjoe64/graphview/j;

    .line 103
    invoke-interface {v0, p1}, Lcom/jjoe64/graphview/d;->a(Lcom/jjoe64/graphview/j;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/jjoe64/graphview/a/h;",
            ">;"
        }
    .end annotation

    .line 146
    iget-object v0, p0, Lcom/jjoe64/graphview/h;->b:Ljava/util/List;

    return-object v0
.end method

.method public final b()D
    .locals 2

    .line 153
    iget-object v0, p0, Lcom/jjoe64/graphview/h;->e:Lcom/jjoe64/graphview/g;

    iget-wide v0, v0, Lcom/jjoe64/graphview/g;->d:D

    return-wide v0
.end method

.method public final c()D
    .locals 2

    .line 160
    iget-object v0, p0, Lcom/jjoe64/graphview/h;->e:Lcom/jjoe64/graphview/g;

    iget-wide v0, v0, Lcom/jjoe64/graphview/g;->c:D

    return-wide v0
.end method

.method public final d()Lcom/jjoe64/graphview/d;
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/jjoe64/graphview/h;->f:Lcom/jjoe64/graphview/d;

    return-object v0
.end method

.method public final e()V
    .locals 10

    .line 2146
    iget-object v0, p0, Lcom/jjoe64/graphview/h;->b:Ljava/util/List;

    .line 217
    iget-object v1, p0, Lcom/jjoe64/graphview/h;->d:Lcom/jjoe64/graphview/g;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    invoke-virtual/range {v1 .. v9}, Lcom/jjoe64/graphview/g;->a(DDDD)V

    .line 218
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jjoe64/graphview/a/h;

    invoke-interface {v2}, Lcom/jjoe64/graphview/a/h;->h()Z

    move-result v2

    if-nez v2, :cond_8

    .line 219
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jjoe64/graphview/a/h;

    invoke-interface {v2}, Lcom/jjoe64/graphview/a/h;->b()D

    move-result-wide v2

    .line 220
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jjoe64/graphview/a/h;

    .line 221
    invoke-interface {v5}, Lcom/jjoe64/graphview/a/h;->h()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-interface {v5}, Lcom/jjoe64/graphview/a/h;->b()D

    move-result-wide v6

    cmpl-double v8, v2, v6

    if-lez v8, :cond_0

    .line 222
    invoke-interface {v5}, Lcom/jjoe64/graphview/a/h;->b()D

    move-result-wide v2

    goto :goto_0

    .line 225
    :cond_1
    iget-object v4, p0, Lcom/jjoe64/graphview/h;->d:Lcom/jjoe64/graphview/g;

    iput-wide v2, v4, Lcom/jjoe64/graphview/g;->a:D

    .line 227
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jjoe64/graphview/a/h;

    invoke-interface {v2}, Lcom/jjoe64/graphview/a/h;->c()D

    move-result-wide v2

    .line 228
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jjoe64/graphview/a/h;

    .line 229
    invoke-interface {v5}, Lcom/jjoe64/graphview/a/h;->h()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-interface {v5}, Lcom/jjoe64/graphview/a/h;->c()D

    move-result-wide v6

    cmpg-double v8, v2, v6

    if-gez v8, :cond_2

    .line 230
    invoke-interface {v5}, Lcom/jjoe64/graphview/a/h;->c()D

    move-result-wide v2

    goto :goto_1

    .line 233
    :cond_3
    iget-object v4, p0, Lcom/jjoe64/graphview/h;->d:Lcom/jjoe64/graphview/g;

    iput-wide v2, v4, Lcom/jjoe64/graphview/g;->b:D

    .line 235
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jjoe64/graphview/a/h;

    invoke-interface {v2}, Lcom/jjoe64/graphview/a/h;->h()Z

    move-result v2

    if-nez v2, :cond_8

    .line 236
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jjoe64/graphview/a/h;

    invoke-interface {v2}, Lcom/jjoe64/graphview/a/h;->d()D

    move-result-wide v2

    .line 237
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jjoe64/graphview/a/h;

    .line 238
    invoke-interface {v5}, Lcom/jjoe64/graphview/a/h;->h()Z

    move-result v6

    if-nez v6, :cond_4

    invoke-interface {v5}, Lcom/jjoe64/graphview/a/h;->d()D

    move-result-wide v6

    cmpl-double v8, v2, v6

    if-lez v8, :cond_4

    .line 239
    invoke-interface {v5}, Lcom/jjoe64/graphview/a/h;->d()D

    move-result-wide v2

    goto :goto_2

    .line 242
    :cond_5
    iget-object v4, p0, Lcom/jjoe64/graphview/h;->d:Lcom/jjoe64/graphview/g;

    iput-wide v2, v4, Lcom/jjoe64/graphview/g;->d:D

    .line 244
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jjoe64/graphview/a/h;

    invoke-interface {v1}, Lcom/jjoe64/graphview/a/h;->e()D

    move-result-wide v1

    .line 245
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jjoe64/graphview/a/h;

    .line 246
    invoke-interface {v3}, Lcom/jjoe64/graphview/a/h;->h()Z

    move-result v4

    if-nez v4, :cond_6

    invoke-interface {v3}, Lcom/jjoe64/graphview/a/h;->e()D

    move-result-wide v4

    cmpg-double v6, v1, v4

    if-gez v6, :cond_6

    .line 247
    invoke-interface {v3}, Lcom/jjoe64/graphview/a/h;->e()D

    move-result-wide v1

    goto :goto_3

    .line 250
    :cond_7
    iget-object v0, p0, Lcom/jjoe64/graphview/h;->d:Lcom/jjoe64/graphview/g;

    iput-wide v1, v0, Lcom/jjoe64/graphview/g;->c:D

    :cond_8
    return-void
.end method

.method public final f()F
    .locals 1

    .line 2259
    iget-object v0, p0, Lcom/jjoe64/graphview/h;->i:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 278
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 281
    :cond_0
    iget v0, p0, Lcom/jjoe64/graphview/h;->j:F

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method
