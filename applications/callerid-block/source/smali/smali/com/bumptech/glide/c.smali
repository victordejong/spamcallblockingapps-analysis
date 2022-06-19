.class public final Lcom/bumptech/glide/c;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/c$c;,
        Lcom/bumptech/glide/c$b;,
        Lcom/bumptech/glide/c$d;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/bumptech/glide/i<",
            "**>;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/bumptech/glide/e$a;

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

.field private m:Lcom/bumptech/glide/b$a;

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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ld/e/a;

    invoke-direct {v0}, Ld/e/a;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/c;->a:Ljava/util/Map;

    new-instance v0, Lcom/bumptech/glide/e$a;

    invoke-direct {v0}, Lcom/bumptech/glide/e$a;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/c;->b:Lcom/bumptech/glide/e$a;

    const/4 v0, 0x4

    iput v0, p0, Lcom/bumptech/glide/c;->l:I

    new-instance v0, Lcom/bumptech/glide/c$a;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/c$a;-><init>(Lcom/bumptech/glide/c;)V

    iput-object v0, p0, Lcom/bumptech/glide/c;->m:Lcom/bumptech/glide/b$a;

    return-void
.end method


# virtual methods
.method a(Landroid/content/Context;)Lcom/bumptech/glide/b;
    .locals 14

    iget-object v0, p0, Lcom/bumptech/glide/c;->g:Lcom/bumptech/glide/load/engine/z/a;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/bumptech/glide/load/engine/z/a;->i()Lcom/bumptech/glide/load/engine/z/a;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/c;->g:Lcom/bumptech/glide/load/engine/z/a;

    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/c;->h:Lcom/bumptech/glide/load/engine/z/a;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/bumptech/glide/load/engine/z/a;->g()Lcom/bumptech/glide/load/engine/z/a;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/c;->h:Lcom/bumptech/glide/load/engine/z/a;

    :cond_1
    iget-object v0, p0, Lcom/bumptech/glide/c;->o:Lcom/bumptech/glide/load/engine/z/a;

    if-nez v0, :cond_2

    invoke-static {}, Lcom/bumptech/glide/load/engine/z/a;->d()Lcom/bumptech/glide/load/engine/z/a;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/c;->o:Lcom/bumptech/glide/load/engine/z/a;

    :cond_2
    iget-object v0, p0, Lcom/bumptech/glide/c;->j:Lcom/bumptech/glide/load/engine/y/i;

    if-nez v0, :cond_3

    new-instance v0, Lcom/bumptech/glide/load/engine/y/i$a;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/load/engine/y/i$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/y/i$a;->a()Lcom/bumptech/glide/load/engine/y/i;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/c;->j:Lcom/bumptech/glide/load/engine/y/i;

    :cond_3
    iget-object v0, p0, Lcom/bumptech/glide/c;->k:Lcom/bumptech/glide/manager/d;

    if-nez v0, :cond_4

    new-instance v0, Lcom/bumptech/glide/manager/f;

    invoke-direct {v0}, Lcom/bumptech/glide/manager/f;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/c;->k:Lcom/bumptech/glide/manager/d;

    :cond_4
    iget-object v0, p0, Lcom/bumptech/glide/c;->d:Lcom/bumptech/glide/load/engine/x/e;

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/bumptech/glide/c;->j:Lcom/bumptech/glide/load/engine/y/i;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/y/i;->b()I

    move-result v0

    if-lez v0, :cond_5

    new-instance v1, Lcom/bumptech/glide/load/engine/x/k;

    int-to-long v2, v0

    invoke-direct {v1, v2, v3}, Lcom/bumptech/glide/load/engine/x/k;-><init>(J)V

    iput-object v1, p0, Lcom/bumptech/glide/c;->d:Lcom/bumptech/glide/load/engine/x/e;

    goto :goto_0

    :cond_5
    new-instance v0, Lcom/bumptech/glide/load/engine/x/f;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/x/f;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/c;->d:Lcom/bumptech/glide/load/engine/x/e;

    :cond_6
    :goto_0
    iget-object v0, p0, Lcom/bumptech/glide/c;->e:Lcom/bumptech/glide/load/engine/x/b;

    if-nez v0, :cond_7

    new-instance v0, Lcom/bumptech/glide/load/engine/x/j;

    iget-object v1, p0, Lcom/bumptech/glide/c;->j:Lcom/bumptech/glide/load/engine/y/i;

    invoke-virtual {v1}, Lcom/bumptech/glide/load/engine/y/i;->a()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/engine/x/j;-><init>(I)V

    iput-object v0, p0, Lcom/bumptech/glide/c;->e:Lcom/bumptech/glide/load/engine/x/b;

    :cond_7
    iget-object v0, p0, Lcom/bumptech/glide/c;->f:Lcom/bumptech/glide/load/engine/y/h;

    if-nez v0, :cond_8

    new-instance v0, Lcom/bumptech/glide/load/engine/y/g;

    iget-object v1, p0, Lcom/bumptech/glide/c;->j:Lcom/bumptech/glide/load/engine/y/i;

    invoke-virtual {v1}, Lcom/bumptech/glide/load/engine/y/i;->d()I

    move-result v1

    int-to-long v1, v1

    invoke-direct {v0, v1, v2}, Lcom/bumptech/glide/load/engine/y/g;-><init>(J)V

    iput-object v0, p0, Lcom/bumptech/glide/c;->f:Lcom/bumptech/glide/load/engine/y/h;

    :cond_8
    iget-object v0, p0, Lcom/bumptech/glide/c;->i:Lcom/bumptech/glide/load/engine/y/a$a;

    if-nez v0, :cond_9

    new-instance v0, Lcom/bumptech/glide/load/engine/y/f;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/load/engine/y/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bumptech/glide/c;->i:Lcom/bumptech/glide/load/engine/y/a$a;

    :cond_9
    iget-object v0, p0, Lcom/bumptech/glide/c;->c:Lcom/bumptech/glide/load/engine/i;

    if-nez v0, :cond_a

    new-instance v0, Lcom/bumptech/glide/load/engine/i;

    iget-object v2, p0, Lcom/bumptech/glide/c;->f:Lcom/bumptech/glide/load/engine/y/h;

    iget-object v3, p0, Lcom/bumptech/glide/c;->i:Lcom/bumptech/glide/load/engine/y/a$a;

    iget-object v4, p0, Lcom/bumptech/glide/c;->h:Lcom/bumptech/glide/load/engine/z/a;

    iget-object v5, p0, Lcom/bumptech/glide/c;->g:Lcom/bumptech/glide/load/engine/z/a;

    invoke-static {}, Lcom/bumptech/glide/load/engine/z/a;->j()Lcom/bumptech/glide/load/engine/z/a;

    move-result-object v6

    iget-object v7, p0, Lcom/bumptech/glide/c;->o:Lcom/bumptech/glide/load/engine/z/a;

    iget-boolean v8, p0, Lcom/bumptech/glide/c;->p:Z

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/bumptech/glide/load/engine/i;-><init>(Lcom/bumptech/glide/load/engine/y/h;Lcom/bumptech/glide/load/engine/y/a$a;Lcom/bumptech/glide/load/engine/z/a;Lcom/bumptech/glide/load/engine/z/a;Lcom/bumptech/glide/load/engine/z/a;Lcom/bumptech/glide/load/engine/z/a;Z)V

    iput-object v0, p0, Lcom/bumptech/glide/c;->c:Lcom/bumptech/glide/load/engine/i;

    :cond_a
    iget-object v0, p0, Lcom/bumptech/glide/c;->q:Ljava/util/List;

    if-nez v0, :cond_b

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_1

    :cond_b
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/bumptech/glide/c;->q:Ljava/util/List;

    iget-object v0, p0, Lcom/bumptech/glide/c;->b:Lcom/bumptech/glide/e$a;

    invoke-virtual {v0}, Lcom/bumptech/glide/e$a;->b()Lcom/bumptech/glide/e;

    move-result-object v13

    new-instance v7, Lcom/bumptech/glide/manager/o;

    iget-object v0, p0, Lcom/bumptech/glide/c;->n:Lcom/bumptech/glide/manager/o$b;

    invoke-direct {v7, v0, v13}, Lcom/bumptech/glide/manager/o;-><init>(Lcom/bumptech/glide/manager/o$b;Lcom/bumptech/glide/e;)V

    new-instance v0, Lcom/bumptech/glide/b;

    iget-object v3, p0, Lcom/bumptech/glide/c;->c:Lcom/bumptech/glide/load/engine/i;

    iget-object v4, p0, Lcom/bumptech/glide/c;->f:Lcom/bumptech/glide/load/engine/y/h;

    iget-object v5, p0, Lcom/bumptech/glide/c;->d:Lcom/bumptech/glide/load/engine/x/e;

    iget-object v6, p0, Lcom/bumptech/glide/c;->e:Lcom/bumptech/glide/load/engine/x/b;

    iget-object v8, p0, Lcom/bumptech/glide/c;->k:Lcom/bumptech/glide/manager/d;

    iget v9, p0, Lcom/bumptech/glide/c;->l:I

    iget-object v10, p0, Lcom/bumptech/glide/c;->m:Lcom/bumptech/glide/b$a;

    iget-object v11, p0, Lcom/bumptech/glide/c;->a:Ljava/util/Map;

    iget-object v12, p0, Lcom/bumptech/glide/c;->q:Ljava/util/List;

    move-object v1, v0

    move-object v2, p1

    invoke-direct/range {v1 .. v13}, Lcom/bumptech/glide/b;-><init>(Landroid/content/Context;Lcom/bumptech/glide/load/engine/i;Lcom/bumptech/glide/load/engine/y/h;Lcom/bumptech/glide/load/engine/x/e;Lcom/bumptech/glide/load/engine/x/b;Lcom/bumptech/glide/manager/o;Lcom/bumptech/glide/manager/d;ILcom/bumptech/glide/b$a;Ljava/util/Map;Ljava/util/List;Lcom/bumptech/glide/e;)V

    return-object v0
.end method

.method b(Lcom/bumptech/glide/manager/o$b;)V
    .locals 0

    iput-object p1, p0, Lcom/bumptech/glide/c;->n:Lcom/bumptech/glide/manager/o$b;

    return-void
.end method
