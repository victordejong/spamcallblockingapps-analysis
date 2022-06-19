.class public final Lcom/bumptech/glide/d;
.super Ljava/lang/Object;
.source "GlideBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/d$c;,
        Lcom/bumptech/glide/d$b;,
        Lcom/bumptech/glide/d$d;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/bumptech/glide/j<",
            "**>;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/bumptech/glide/f$a;

.field private c:Lcom/bumptech/glide/load/engine/i;

.field private d:Lcom/bumptech/glide/load/engine/x/e;

.field private e:Lcom/bumptech/glide/load/engine/x/b;

.field private f:Lcom/bumptech/glide/load/engine/y/h;

.field private g:Lcom/bumptech/glide/load/engine/z/a;

.field private h:Lcom/bumptech/glide/load/engine/z/a;

.field private i:Lcom/bumptech/glide/load/engine/y/a$a;

.field private j:Lcom/bumptech/glide/load/engine/y/i;

.field private k:Lcom/bumptech/glide/manager/d;

.field private l:I

.field private m:Lcom/bumptech/glide/c$a;

.field private n:Lcom/bumptech/glide/manager/o$b;

.field private o:Lcom/bumptech/glide/load/engine/z/a;

.field private p:Z

.field private q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/request/d<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lb/e/a;

    invoke-direct {v0}, Lb/e/a;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/d;->a:Ljava/util/Map;

    .line 3
    new-instance v0, Lcom/bumptech/glide/f$a;

    invoke-direct {v0}, Lcom/bumptech/glide/f$a;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/d;->b:Lcom/bumptech/glide/f$a;

    const/4 v0, 0x4

    .line 4
    iput v0, p0, Lcom/bumptech/glide/d;->l:I

    .line 5
    new-instance v0, Lcom/bumptech/glide/d$a;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/d$a;-><init>(Lcom/bumptech/glide/d;)V

    iput-object v0, p0, Lcom/bumptech/glide/d;->m:Lcom/bumptech/glide/c$a;

    return-void
.end method


# virtual methods
.method a(Landroid/content/Context;)Lcom/bumptech/glide/c;
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/d;->g:Lcom/bumptech/glide/load/engine/z/a;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/bumptech/glide/load/engine/z/a;->i()Lcom/bumptech/glide/load/engine/z/a;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/d;->g:Lcom/bumptech/glide/load/engine/z/a;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/d;->h:Lcom/bumptech/glide/load/engine/z/a;

    if-nez v0, :cond_1

    .line 4
    invoke-static {}, Lcom/bumptech/glide/load/engine/z/a;->g()Lcom/bumptech/glide/load/engine/z/a;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/d;->h:Lcom/bumptech/glide/load/engine/z/a;

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/bumptech/glide/d;->o:Lcom/bumptech/glide/load/engine/z/a;

    if-nez v0, :cond_2

    .line 6
    invoke-static {}, Lcom/bumptech/glide/load/engine/z/a;->e()Lcom/bumptech/glide/load/engine/z/a;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/d;->o:Lcom/bumptech/glide/load/engine/z/a;

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/bumptech/glide/d;->j:Lcom/bumptech/glide/load/engine/y/i;

    if-nez v0, :cond_3

    .line 8
    new-instance v0, Lcom/bumptech/glide/load/engine/y/i$a;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/load/engine/y/i$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/y/i$a;->a()Lcom/bumptech/glide/load/engine/y/i;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/d;->j:Lcom/bumptech/glide/load/engine/y/i;

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/bumptech/glide/d;->k:Lcom/bumptech/glide/manager/d;

    if-nez v0, :cond_4

    .line 10
    new-instance v0, Lcom/bumptech/glide/manager/f;

    invoke-direct {v0}, Lcom/bumptech/glide/manager/f;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/d;->k:Lcom/bumptech/glide/manager/d;

    .line 11
    :cond_4
    iget-object v0, p0, Lcom/bumptech/glide/d;->d:Lcom/bumptech/glide/load/engine/x/e;

    if-nez v0, :cond_6

    .line 12
    iget-object v0, p0, Lcom/bumptech/glide/d;->j:Lcom/bumptech/glide/load/engine/y/i;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/y/i;->b()I

    move-result v0

    if-lez v0, :cond_5

    .line 13
    new-instance v1, Lcom/bumptech/glide/load/engine/x/k;

    int-to-long v2, v0

    invoke-direct {v1, v2, v3}, Lcom/bumptech/glide/load/engine/x/k;-><init>(J)V

    iput-object v1, p0, Lcom/bumptech/glide/d;->d:Lcom/bumptech/glide/load/engine/x/e;

    goto :goto_0

    .line 14
    :cond_5
    new-instance v0, Lcom/bumptech/glide/load/engine/x/f;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/x/f;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/d;->d:Lcom/bumptech/glide/load/engine/x/e;

    .line 15
    :cond_6
    :goto_0
    iget-object v0, p0, Lcom/bumptech/glide/d;->e:Lcom/bumptech/glide/load/engine/x/b;

    if-nez v0, :cond_7

    .line 16
    new-instance v0, Lcom/bumptech/glide/load/engine/x/j;

    iget-object v1, p0, Lcom/bumptech/glide/d;->j:Lcom/bumptech/glide/load/engine/y/i;

    invoke-virtual {v1}, Lcom/bumptech/glide/load/engine/y/i;->a()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/engine/x/j;-><init>(I)V

    iput-object v0, p0, Lcom/bumptech/glide/d;->e:Lcom/bumptech/glide/load/engine/x/b;

    .line 17
    :cond_7
    iget-object v0, p0, Lcom/bumptech/glide/d;->f:Lcom/bumptech/glide/load/engine/y/h;

    if-nez v0, :cond_8

    .line 18
    new-instance v0, Lcom/bumptech/glide/load/engine/y/g;

    iget-object v1, p0, Lcom/bumptech/glide/d;->j:Lcom/bumptech/glide/load/engine/y/i;

    invoke-virtual {v1}, Lcom/bumptech/glide/load/engine/y/i;->d()I

    move-result v1

    int-to-long v1, v1

    invoke-direct {v0, v1, v2}, Lcom/bumptech/glide/load/engine/y/g;-><init>(J)V

    iput-object v0, p0, Lcom/bumptech/glide/d;->f:Lcom/bumptech/glide/load/engine/y/h;

    .line 19
    :cond_8
    iget-object v0, p0, Lcom/bumptech/glide/d;->i:Lcom/bumptech/glide/load/engine/y/a$a;

    if-nez v0, :cond_9

    .line 20
    new-instance v0, Lcom/bumptech/glide/load/engine/y/f;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/load/engine/y/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bumptech/glide/d;->i:Lcom/bumptech/glide/load/engine/y/a$a;

    .line 21
    :cond_9
    iget-object v0, p0, Lcom/bumptech/glide/d;->c:Lcom/bumptech/glide/load/engine/i;

    if-nez v0, :cond_a

    .line 22
    new-instance v0, Lcom/bumptech/glide/load/engine/i;

    iget-object v2, p0, Lcom/bumptech/glide/d;->f:Lcom/bumptech/glide/load/engine/y/h;

    iget-object v3, p0, Lcom/bumptech/glide/d;->i:Lcom/bumptech/glide/load/engine/y/a$a;

    iget-object v4, p0, Lcom/bumptech/glide/d;->h:Lcom/bumptech/glide/load/engine/z/a;

    iget-object v5, p0, Lcom/bumptech/glide/d;->g:Lcom/bumptech/glide/load/engine/z/a;

    .line 23
    invoke-static {}, Lcom/bumptech/glide/load/engine/z/a;->j()Lcom/bumptech/glide/load/engine/z/a;

    move-result-object v6

    iget-object v7, p0, Lcom/bumptech/glide/d;->o:Lcom/bumptech/glide/load/engine/z/a;

    iget-boolean v8, p0, Lcom/bumptech/glide/d;->p:Z

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/bumptech/glide/load/engine/i;-><init>(Lcom/bumptech/glide/load/engine/y/h;Lcom/bumptech/glide/load/engine/y/a$a;Lcom/bumptech/glide/load/engine/z/a;Lcom/bumptech/glide/load/engine/z/a;Lcom/bumptech/glide/load/engine/z/a;Lcom/bumptech/glide/load/engine/z/a;Z)V

    iput-object v0, p0, Lcom/bumptech/glide/d;->c:Lcom/bumptech/glide/load/engine/i;

    .line 24
    :cond_a
    iget-object v0, p0, Lcom/bumptech/glide/d;->q:Ljava/util/List;

    if-nez v0, :cond_b

    .line 25
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/d;->q:Ljava/util/List;

    goto :goto_1

    .line 26
    :cond_b
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/d;->q:Ljava/util/List;

    .line 27
    :goto_1
    iget-object v0, p0, Lcom/bumptech/glide/d;->b:Lcom/bumptech/glide/f$a;

    invoke-virtual {v0}, Lcom/bumptech/glide/f$a;->b()Lcom/bumptech/glide/f;

    move-result-object v13

    .line 28
    new-instance v7, Lcom/bumptech/glide/manager/o;

    iget-object v0, p0, Lcom/bumptech/glide/d;->n:Lcom/bumptech/glide/manager/o$b;

    invoke-direct {v7, v0, v13}, Lcom/bumptech/glide/manager/o;-><init>(Lcom/bumptech/glide/manager/o$b;Lcom/bumptech/glide/f;)V

    .line 29
    new-instance v0, Lcom/bumptech/glide/c;

    iget-object v3, p0, Lcom/bumptech/glide/d;->c:Lcom/bumptech/glide/load/engine/i;

    iget-object v4, p0, Lcom/bumptech/glide/d;->f:Lcom/bumptech/glide/load/engine/y/h;

    iget-object v5, p0, Lcom/bumptech/glide/d;->d:Lcom/bumptech/glide/load/engine/x/e;

    iget-object v6, p0, Lcom/bumptech/glide/d;->e:Lcom/bumptech/glide/load/engine/x/b;

    iget-object v8, p0, Lcom/bumptech/glide/d;->k:Lcom/bumptech/glide/manager/d;

    iget v9, p0, Lcom/bumptech/glide/d;->l:I

    iget-object v10, p0, Lcom/bumptech/glide/d;->m:Lcom/bumptech/glide/c$a;

    iget-object v11, p0, Lcom/bumptech/glide/d;->a:Ljava/util/Map;

    iget-object v12, p0, Lcom/bumptech/glide/d;->q:Ljava/util/List;

    move-object v1, v0

    move-object v2, p1

    invoke-direct/range {v1 .. v13}, Lcom/bumptech/glide/c;-><init>(Landroid/content/Context;Lcom/bumptech/glide/load/engine/i;Lcom/bumptech/glide/load/engine/y/h;Lcom/bumptech/glide/load/engine/x/e;Lcom/bumptech/glide/load/engine/x/b;Lcom/bumptech/glide/manager/o;Lcom/bumptech/glide/manager/d;ILcom/bumptech/glide/c$a;Ljava/util/Map;Ljava/util/List;Lcom/bumptech/glide/f;)V

    return-object v0
.end method

.method b(Lcom/bumptech/glide/manager/o$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bumptech/glide/d;->n:Lcom/bumptech/glide/manager/o$b;

    return-void
.end method
