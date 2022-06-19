.class public final Lcom/bumptech/glide/d;
.super Ljava/lang/Object;
.source "GlideBuilder.java"


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/bumptech/glide/j",
            "<**>;>;"
        }
    .end annotation
.end field

.field private b:Lcom/bumptech/glide/load/engine/j;

.field private c:Lcom/bumptech/glide/load/engine/a/e;

.field private d:Lcom/bumptech/glide/load/engine/a/b;

.field private e:Lcom/bumptech/glide/load/engine/b/h;

.field private f:Lcom/bumptech/glide/load/engine/c/a;

.field private g:Lcom/bumptech/glide/load/engine/c/a;

.field private h:Lcom/bumptech/glide/load/engine/b/a$a;

.field private i:Lcom/bumptech/glide/load/engine/b/i;

.field private j:Lcom/bumptech/glide/c/d;

.field private k:I

.field private l:Lcom/bumptech/glide/f/e;

.field private m:Lcom/bumptech/glide/c/l$a;

.field private n:Lcom/bumptech/glide/load/engine/c/a;

.field private o:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Landroidx/b/a;

    invoke-direct {v0}, Landroidx/b/a;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/d;->a:Ljava/util/Map;

    .line 43
    const/4 v0, 0x4

    iput v0, p0, Lcom/bumptech/glide/d;->k:I

    .line 44
    new-instance v0, Lcom/bumptech/glide/f/e;

    invoke-direct {v0}, Lcom/bumptech/glide/f/e;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/d;->l:Lcom/bumptech/glide/f/e;

    return-void
.end method


# virtual methods
.method a(Landroid/content/Context;)Lcom/bumptech/glide/c;
    .locals 11

    .prologue
    .line 387
    iget-object v0, p0, Lcom/bumptech/glide/d;->f:Lcom/bumptech/glide/load/engine/c/a;

    if-nez v0, :cond_0

    .line 388
    invoke-static {}, Lcom/bumptech/glide/load/engine/c/a;->b()Lcom/bumptech/glide/load/engine/c/a;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/d;->f:Lcom/bumptech/glide/load/engine/c/a;

    .line 391
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/d;->g:Lcom/bumptech/glide/load/engine/c/a;

    if-nez v0, :cond_1

    .line 392
    invoke-static {}, Lcom/bumptech/glide/load/engine/c/a;->a()Lcom/bumptech/glide/load/engine/c/a;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/d;->g:Lcom/bumptech/glide/load/engine/c/a;

    .line 395
    :cond_1
    iget-object v0, p0, Lcom/bumptech/glide/d;->n:Lcom/bumptech/glide/load/engine/c/a;

    if-nez v0, :cond_2

    .line 396
    invoke-static {}, Lcom/bumptech/glide/load/engine/c/a;->d()Lcom/bumptech/glide/load/engine/c/a;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/d;->n:Lcom/bumptech/glide/load/engine/c/a;

    .line 399
    :cond_2
    iget-object v0, p0, Lcom/bumptech/glide/d;->i:Lcom/bumptech/glide/load/engine/b/i;

    if-nez v0, :cond_3

    .line 400
    new-instance v0, Lcom/bumptech/glide/load/engine/b/i$a;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/load/engine/b/i$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/b/i$a;->a()Lcom/bumptech/glide/load/engine/b/i;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/d;->i:Lcom/bumptech/glide/load/engine/b/i;

    .line 403
    :cond_3
    iget-object v0, p0, Lcom/bumptech/glide/d;->j:Lcom/bumptech/glide/c/d;

    if-nez v0, :cond_4

    .line 404
    new-instance v0, Lcom/bumptech/glide/c/f;

    invoke-direct {v0}, Lcom/bumptech/glide/c/f;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/d;->j:Lcom/bumptech/glide/c/d;

    .line 407
    :cond_4
    iget-object v0, p0, Lcom/bumptech/glide/d;->c:Lcom/bumptech/glide/load/engine/a/e;

    if-nez v0, :cond_5

    .line 408
    iget-object v0, p0, Lcom/bumptech/glide/d;->i:Lcom/bumptech/glide/load/engine/b/i;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/b/i;->b()I

    move-result v0

    .line 409
    if-lez v0, :cond_a

    .line 410
    new-instance v1, Lcom/bumptech/glide/load/engine/a/k;

    int-to-long v2, v0

    invoke-direct {v1, v2, v3}, Lcom/bumptech/glide/load/engine/a/k;-><init>(J)V

    iput-object v1, p0, Lcom/bumptech/glide/d;->c:Lcom/bumptech/glide/load/engine/a/e;

    .line 416
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/bumptech/glide/d;->d:Lcom/bumptech/glide/load/engine/a/b;

    if-nez v0, :cond_6

    .line 417
    new-instance v0, Lcom/bumptech/glide/load/engine/a/j;

    iget-object v1, p0, Lcom/bumptech/glide/d;->i:Lcom/bumptech/glide/load/engine/b/i;

    invoke-virtual {v1}, Lcom/bumptech/glide/load/engine/b/i;->c()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/engine/a/j;-><init>(I)V

    iput-object v0, p0, Lcom/bumptech/glide/d;->d:Lcom/bumptech/glide/load/engine/a/b;

    .line 420
    :cond_6
    iget-object v0, p0, Lcom/bumptech/glide/d;->e:Lcom/bumptech/glide/load/engine/b/h;

    if-nez v0, :cond_7

    .line 421
    new-instance v0, Lcom/bumptech/glide/load/engine/b/g;

    iget-object v1, p0, Lcom/bumptech/glide/d;->i:Lcom/bumptech/glide/load/engine/b/i;

    invoke-virtual {v1}, Lcom/bumptech/glide/load/engine/b/i;->a()I

    move-result v1

    int-to-long v2, v1

    invoke-direct {v0, v2, v3}, Lcom/bumptech/glide/load/engine/b/g;-><init>(J)V

    iput-object v0, p0, Lcom/bumptech/glide/d;->e:Lcom/bumptech/glide/load/engine/b/h;

    .line 424
    :cond_7
    iget-object v0, p0, Lcom/bumptech/glide/d;->h:Lcom/bumptech/glide/load/engine/b/a$a;

    if-nez v0, :cond_8

    .line 425
    new-instance v0, Lcom/bumptech/glide/load/engine/b/f;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/load/engine/b/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bumptech/glide/d;->h:Lcom/bumptech/glide/load/engine/b/a$a;

    .line 428
    :cond_8
    iget-object v0, p0, Lcom/bumptech/glide/d;->b:Lcom/bumptech/glide/load/engine/j;

    if-nez v0, :cond_9

    .line 429
    new-instance v0, Lcom/bumptech/glide/load/engine/j;

    iget-object v1, p0, Lcom/bumptech/glide/d;->e:Lcom/bumptech/glide/load/engine/b/h;

    iget-object v2, p0, Lcom/bumptech/glide/d;->h:Lcom/bumptech/glide/load/engine/b/a$a;

    iget-object v3, p0, Lcom/bumptech/glide/d;->g:Lcom/bumptech/glide/load/engine/c/a;

    iget-object v4, p0, Lcom/bumptech/glide/d;->f:Lcom/bumptech/glide/load/engine/c/a;

    .line 435
    invoke-static {}, Lcom/bumptech/glide/load/engine/c/a;->c()Lcom/bumptech/glide/load/engine/c/a;

    move-result-object v5

    .line 436
    invoke-static {}, Lcom/bumptech/glide/load/engine/c/a;->d()Lcom/bumptech/glide/load/engine/c/a;

    move-result-object v6

    iget-boolean v7, p0, Lcom/bumptech/glide/d;->o:Z

    invoke-direct/range {v0 .. v7}, Lcom/bumptech/glide/load/engine/j;-><init>(Lcom/bumptech/glide/load/engine/b/h;Lcom/bumptech/glide/load/engine/b/a$a;Lcom/bumptech/glide/load/engine/c/a;Lcom/bumptech/glide/load/engine/c/a;Lcom/bumptech/glide/load/engine/c/a;Lcom/bumptech/glide/load/engine/c/a;Z)V

    iput-object v0, p0, Lcom/bumptech/glide/d;->b:Lcom/bumptech/glide/load/engine/j;

    .line 440
    :cond_9
    new-instance v6, Lcom/bumptech/glide/c/l;

    iget-object v0, p0, Lcom/bumptech/glide/d;->m:Lcom/bumptech/glide/c/l$a;

    invoke-direct {v6, v0}, Lcom/bumptech/glide/c/l;-><init>(Lcom/bumptech/glide/c/l$a;)V

    .line 443
    new-instance v0, Lcom/bumptech/glide/c;

    iget-object v2, p0, Lcom/bumptech/glide/d;->b:Lcom/bumptech/glide/load/engine/j;

    iget-object v3, p0, Lcom/bumptech/glide/d;->e:Lcom/bumptech/glide/load/engine/b/h;

    iget-object v4, p0, Lcom/bumptech/glide/d;->c:Lcom/bumptech/glide/load/engine/a/e;

    iget-object v5, p0, Lcom/bumptech/glide/d;->d:Lcom/bumptech/glide/load/engine/a/b;

    iget-object v7, p0, Lcom/bumptech/glide/d;->j:Lcom/bumptech/glide/c/d;

    iget v8, p0, Lcom/bumptech/glide/d;->k:I

    iget-object v1, p0, Lcom/bumptech/glide/d;->l:Lcom/bumptech/glide/f/e;

    .line 452
    invoke-virtual {v1}, Lcom/bumptech/glide/f/e;->i()Lcom/bumptech/glide/f/e;

    move-result-object v9

    iget-object v10, p0, Lcom/bumptech/glide/d;->a:Ljava/util/Map;

    move-object v1, p1

    invoke-direct/range {v0 .. v10}, Lcom/bumptech/glide/c;-><init>(Landroid/content/Context;Lcom/bumptech/glide/load/engine/j;Lcom/bumptech/glide/load/engine/b/h;Lcom/bumptech/glide/load/engine/a/e;Lcom/bumptech/glide/load/engine/a/b;Lcom/bumptech/glide/c/l;Lcom/bumptech/glide/c/d;ILcom/bumptech/glide/f/e;Ljava/util/Map;)V

    .line 443
    return-object v0

    .line 412
    :cond_a
    new-instance v0, Lcom/bumptech/glide/load/engine/a/f;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/a/f;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/d;->c:Lcom/bumptech/glide/load/engine/a/e;

    goto :goto_0
.end method

.method a(Lcom/bumptech/glide/c/l$a;)V
    .locals 0

    .prologue
    .line 376
    iput-object p1, p0, Lcom/bumptech/glide/d;->m:Lcom/bumptech/glide/c/l$a;

    .line 377
    return-void
.end method
