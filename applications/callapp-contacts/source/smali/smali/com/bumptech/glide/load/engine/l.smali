.class public final Lcom/bumptech/glide/load/engine/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/g/a/a$c;
.implements Lcom/bumptech/glide/load/engine/h$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/engine/l$c;,
        Lcom/bumptech/glide/load/engine/l$d;,
        Lcom/bumptech/glide/load/engine/l$e;,
        Lcom/bumptech/glide/load/engine/l$b;,
        Lcom/bumptech/glide/load/engine/l$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/g/a/a$c;",
        "Lcom/bumptech/glide/load/engine/h$a<",
        "TR;>;"
    }
.end annotation


# static fields
.field private static final g:Lcom/bumptech/glide/load/engine/l$c;


# instance fields
.field final a:Lcom/bumptech/glide/load/engine/l$e;

.field b:Z

.field c:Lcom/bumptech/glide/load/a;

.field d:Lcom/bumptech/glide/load/engine/GlideException;

.field e:Lcom/bumptech/glide/load/engine/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/engine/p<",
            "*>;"
        }
    .end annotation
.end field

.field f:Z

.field private final h:Lcom/bumptech/glide/g/a/b;

.field private final i:Lcom/bumptech/glide/load/engine/p$a;

.field private final j:Landroidx/core/e/c$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/e/c$a<",
            "Lcom/bumptech/glide/load/engine/l<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final k:Lcom/bumptech/glide/load/engine/l$c;

.field private final l:Lcom/bumptech/glide/load/engine/m;

.field private final m:Lcom/bumptech/glide/load/engine/c/a;

.field private final n:Lcom/bumptech/glide/load/engine/c/a;

.field private final o:Lcom/bumptech/glide/load/engine/c/a;

.field private final p:Lcom/bumptech/glide/load/engine/c/a;

.field private final q:Ljava/util/concurrent/atomic/AtomicInteger;

.field private r:Lcom/bumptech/glide/load/f;

.field private s:Z

.field private t:Z

.field private u:Z

.field private v:Lcom/bumptech/glide/load/engine/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/engine/u<",
            "*>;"
        }
    .end annotation
.end field

.field private w:Z

.field private x:Z

.field private y:Lcom/bumptech/glide/load/engine/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/engine/h<",
            "TR;>;"
        }
    .end annotation
.end field

.field private volatile z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    new-instance v0, Lcom/bumptech/glide/load/engine/l$c;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/l$c;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/engine/l;->g:Lcom/bumptech/glide/load/engine/l$c;

    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/load/engine/c/a;Lcom/bumptech/glide/load/engine/c/a;Lcom/bumptech/glide/load/engine/c/a;Lcom/bumptech/glide/load/engine/c/a;Lcom/bumptech/glide/load/engine/m;Lcom/bumptech/glide/load/engine/p$a;Landroidx/core/e/c$a;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/c/a;",
            "Lcom/bumptech/glide/load/engine/c/a;",
            "Lcom/bumptech/glide/load/engine/c/a;",
            "Lcom/bumptech/glide/load/engine/c/a;",
            "Lcom/bumptech/glide/load/engine/m;",
            "Lcom/bumptech/glide/load/engine/p$a;",
            "Landroidx/core/e/c$a<",
            "Lcom/bumptech/glide/load/engine/l<",
            "*>;>;)V"
        }
    .end annotation

    .line 82
    sget-object v8, Lcom/bumptech/glide/load/engine/l;->g:Lcom/bumptech/glide/load/engine/l$c;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/bumptech/glide/load/engine/l;-><init>(Lcom/bumptech/glide/load/engine/c/a;Lcom/bumptech/glide/load/engine/c/a;Lcom/bumptech/glide/load/engine/c/a;Lcom/bumptech/glide/load/engine/c/a;Lcom/bumptech/glide/load/engine/m;Lcom/bumptech/glide/load/engine/p$a;Landroidx/core/e/c$a;Lcom/bumptech/glide/load/engine/l$c;)V

    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/load/engine/c/a;Lcom/bumptech/glide/load/engine/c/a;Lcom/bumptech/glide/load/engine/c/a;Lcom/bumptech/glide/load/engine/c/a;Lcom/bumptech/glide/load/engine/m;Lcom/bumptech/glide/load/engine/p$a;Landroidx/core/e/c$a;Lcom/bumptech/glide/load/engine/l$c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/c/a;",
            "Lcom/bumptech/glide/load/engine/c/a;",
            "Lcom/bumptech/glide/load/engine/c/a;",
            "Lcom/bumptech/glide/load/engine/c/a;",
            "Lcom/bumptech/glide/load/engine/m;",
            "Lcom/bumptech/glide/load/engine/p$a;",
            "Landroidx/core/e/c$a<",
            "Lcom/bumptech/glide/load/engine/l<",
            "*>;>;",
            "Lcom/bumptech/glide/load/engine/l$c;",
            ")V"
        }
    .end annotation

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lcom/bumptech/glide/load/engine/l$e;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/l$e;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/l;->a:Lcom/bumptech/glide/load/engine/l$e;

    .line 1016
    new-instance v0, Lcom/bumptech/glide/g/a/b$a;

    invoke-direct {v0}, Lcom/bumptech/glide/g/a/b$a;-><init>()V

    .line 34
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/l;->h:Lcom/bumptech/glide/g/a/b;

    .line 43
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/l;->q:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 103
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/l;->m:Lcom/bumptech/glide/load/engine/c/a;

    .line 104
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/l;->n:Lcom/bumptech/glide/load/engine/c/a;

    .line 105
    iput-object p3, p0, Lcom/bumptech/glide/load/engine/l;->o:Lcom/bumptech/glide/load/engine/c/a;

    .line 106
    iput-object p4, p0, Lcom/bumptech/glide/load/engine/l;->p:Lcom/bumptech/glide/load/engine/c/a;

    .line 107
    iput-object p5, p0, Lcom/bumptech/glide/load/engine/l;->l:Lcom/bumptech/glide/load/engine/m;

    .line 108
    iput-object p6, p0, Lcom/bumptech/glide/load/engine/l;->i:Lcom/bumptech/glide/load/engine/p$a;

    .line 109
    iput-object p7, p0, Lcom/bumptech/glide/load/engine/l;->j:Landroidx/core/e/c$a;

    .line 110
    iput-object p8, p0, Lcom/bumptech/glide/load/engine/l;->k:Lcom/bumptech/glide/load/engine/l$c;

    return-void
.end method

.method private declared-synchronized a(I)V
    .locals 2

    monitor-enter p0

    .line 270
    :try_start_0
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/l;->d()Z

    move-result v0

    const-string v1, "Not yet complete!"

    invoke-static {v0, v1}, Lcom/bumptech/glide/g/j;->a(ZLjava/lang/String;)V

    .line 271
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/l;->q:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndAdd(I)I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/bumptech/glide/load/engine/l;->e:Lcom/bumptech/glide/load/engine/p;

    if-eqz p1, :cond_0

    .line 272
    invoke-virtual {p1}, Lcom/bumptech/glide/load/engine/p;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 274
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private c()Lcom/bumptech/glide/load/engine/c/a;
    .locals 1

    .line 196
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/l;->t:Z

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/l;->o:Lcom/bumptech/glide/load/engine/c/a;

    return-object v0

    .line 198
    :cond_0
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/l;->u:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/l;->p:Lcom/bumptech/glide/load/engine/c/a;

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/l;->n:Lcom/bumptech/glide/load/engine/c/a;

    return-object v0
.end method

.method private d()Z
    .locals 1

    .line 218
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/l;->x:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/l;->w:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/l;->z:Z

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

.method private declared-synchronized e()V
    .locals 4

    monitor-enter p0

    .line 298
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/l;->r:Lcom/bumptech/glide/load/f;

    if-eqz v0, :cond_1

    .line 301
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/l;->a:Lcom/bumptech/glide/load/engine/l$e;

    .line 2470
    iget-object v0, v0, Lcom/bumptech/glide/load/engine/l$e;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 302
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/l;->r:Lcom/bumptech/glide/load/f;

    .line 303
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/l;->e:Lcom/bumptech/glide/load/engine/p;

    .line 304
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/l;->v:Lcom/bumptech/glide/load/engine/u;

    const/4 v1, 0x0

    .line 305
    iput-boolean v1, p0, Lcom/bumptech/glide/load/engine/l;->x:Z

    .line 306
    iput-boolean v1, p0, Lcom/bumptech/glide/load/engine/l;->z:Z

    .line 307
    iput-boolean v1, p0, Lcom/bumptech/glide/load/engine/l;->w:Z

    .line 308
    iput-boolean v1, p0, Lcom/bumptech/glide/load/engine/l;->f:Z

    .line 309
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/l;->y:Lcom/bumptech/glide/load/engine/h;

    .line 3151
    iget-object v3, v2, Lcom/bumptech/glide/load/engine/h;->d:Lcom/bumptech/glide/load/engine/h$e;

    invoke-virtual {v3, v1}, Lcom/bumptech/glide/load/engine/h$e;->a(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3152
    invoke-virtual {v2}, Lcom/bumptech/glide/load/engine/h;->a()V

    .line 310
    :cond_0
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/l;->y:Lcom/bumptech/glide/load/engine/h;

    .line 311
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/l;->d:Lcom/bumptech/glide/load/engine/GlideException;

    .line 312
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/l;->c:Lcom/bumptech/glide/load/a;

    .line 313
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/l;->j:Landroidx/core/e/c$a;

    invoke-interface {v0, p0}, Landroidx/core/e/c$a;->a(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 314
    monitor-exit p0

    return-void

    .line 299
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method final declared-synchronized a(Lcom/bumptech/glide/load/f;ZZZZ)Lcom/bumptech/glide/load/engine/l;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/f;",
            "ZZZZ)",
            "Lcom/bumptech/glide/load/engine/l<",
            "TR;>;"
        }
    .end annotation

    monitor-enter p0

    .line 120
    :try_start_0
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/l;->r:Lcom/bumptech/glide/load/f;

    .line 121
    iput-boolean p2, p0, Lcom/bumptech/glide/load/engine/l;->s:Z

    .line 122
    iput-boolean p3, p0, Lcom/bumptech/glide/load/engine/l;->t:Z

    .line 123
    iput-boolean p4, p0, Lcom/bumptech/glide/load/engine/l;->u:Z

    .line 124
    iput-boolean p5, p0, Lcom/bumptech/glide/load/engine/l;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final a()V
    .locals 3

    .line 280
    monitor-enter p0

    .line 281
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/l;->h:Lcom/bumptech/glide/g/a/b;

    invoke-virtual {v0}, Lcom/bumptech/glide/g/a/b;->a()V

    .line 282
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/l;->d()Z

    move-result v0

    const-string v1, "Not yet complete!"

    invoke-static {v0, v1}, Lcom/bumptech/glide/g/j;->a(ZLjava/lang/String;)V

    .line 283
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/l;->q:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "Can\'t decrement below 0"

    .line 284
    invoke-static {v1, v2}, Lcom/bumptech/glide/g/j;->a(ZLjava/lang/String;)V

    if-nez v0, :cond_1

    .line 286
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/l;->e:Lcom/bumptech/glide/load/engine/p;

    .line 288
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/l;->e()V

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 290
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    .line 293
    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/p;->f()V

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    .line 290
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/bumptech/glide/e/i;)V
    .locals 2

    monitor-enter p0

    .line 180
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/l;->h:Lcom/bumptech/glide/g/a/b;

    invoke-virtual {v0}, Lcom/bumptech/glide/g/a/b;->a()V

    .line 181
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/l;->a:Lcom/bumptech/glide/load/engine/l$e;

    .line 1454
    iget-object v0, v0, Lcom/bumptech/glide/load/engine/l$e;->a:Ljava/util/List;

    invoke-static {p1}, Lcom/bumptech/glide/load/engine/l$e;->b(Lcom/bumptech/glide/e/i;)Lcom/bumptech/glide/load/engine/l$d;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 182
    iget-object p1, p0, Lcom/bumptech/glide/load/engine/l;->a:Lcom/bumptech/glide/load/engine/l$e;

    invoke-virtual {p1}, Lcom/bumptech/glide/load/engine/l$e;->a()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 2203
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/l;->d()Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_1

    .line 2207
    iput-boolean v0, p0, Lcom/bumptech/glide/load/engine/l;->z:Z

    .line 2208
    iget-object p1, p0, Lcom/bumptech/glide/load/engine/l;->y:Lcom/bumptech/glide/load/engine/h;

    .line 2212
    iput-boolean v0, p1, Lcom/bumptech/glide/load/engine/h;->t:Z

    .line 2213
    iget-object p1, p1, Lcom/bumptech/glide/load/engine/h;->s:Lcom/bumptech/glide/load/engine/f;

    if-eqz p1, :cond_0

    .line 2215
    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/f;->b()V

    .line 2209
    :cond_0
    iget-object p1, p0, Lcom/bumptech/glide/load/engine/l;->l:Lcom/bumptech/glide/load/engine/m;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/l;->r:Lcom/bumptech/glide/load/f;

    invoke-interface {p1, p0, v1}, Lcom/bumptech/glide/load/engine/m;->a(Lcom/bumptech/glide/load/engine/l;Lcom/bumptech/glide/load/f;)V

    .line 184
    :cond_1
    iget-boolean p1, p0, Lcom/bumptech/glide/load/engine/l;->w:Z

    if-nez p1, :cond_3

    iget-boolean p1, p0, Lcom/bumptech/glide/load/engine/l;->x:Z

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :cond_3
    :goto_0
    if-eqz v0, :cond_4

    .line 185
    iget-object p1, p0, Lcom/bumptech/glide/load/engine/l;->q:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    if-nez p1, :cond_4

    .line 186
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/l;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    :cond_4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final declared-synchronized a(Lcom/bumptech/glide/e/i;Ljava/util/concurrent/Executor;)V
    .locals 2

    monitor-enter p0

    .line 136
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/l;->h:Lcom/bumptech/glide/g/a/b;

    invoke-virtual {v0}, Lcom/bumptech/glide/g/a/b;->a()V

    .line 137
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/l;->a:Lcom/bumptech/glide/load/engine/l$e;

    .line 1450
    iget-object v0, v0, Lcom/bumptech/glide/load/engine/l$e;->a:Ljava/util/List;

    new-instance v1, Lcom/bumptech/glide/load/engine/l$d;

    invoke-direct {v1, p1, p2}, Lcom/bumptech/glide/load/engine/l$d;-><init>(Lcom/bumptech/glide/e/i;Ljava/util/concurrent/Executor;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/l;->w:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 141
    invoke-direct {p0, v1}, Lcom/bumptech/glide/load/engine/l;->a(I)V

    .line 142
    new-instance v0, Lcom/bumptech/glide/load/engine/l$b;

    invoke-direct {v0, p0, p1}, Lcom/bumptech/glide/load/engine/l$b;-><init>(Lcom/bumptech/glide/load/engine/l;Lcom/bumptech/glide/e/i;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 143
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/l;->x:Z

    if-eqz v0, :cond_1

    .line 144
    invoke-direct {p0, v1}, Lcom/bumptech/glide/load/engine/l;->a(I)V

    .line 145
    new-instance v0, Lcom/bumptech/glide/load/engine/l$a;

    invoke-direct {v0, p0, p1}, Lcom/bumptech/glide/load/engine/l$a;-><init>(Lcom/bumptech/glide/load/engine/l;Lcom/bumptech/glide/e/i;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    .line 147
    :cond_1
    :try_start_2
    iget-boolean p1, p0, Lcom/bumptech/glide/load/engine/l;->z:Z

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    const-string p1, "Cannot add callbacks to a cancelled EngineJob"

    invoke-static {v1, p1}, Lcom/bumptech/glide/g/j;->a(ZLjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 149
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final a(Lcom/bumptech/glide/load/engine/GlideException;)V
    .locals 3

    .line 329
    monitor-enter p0

    .line 330
    :try_start_0
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/l;->d:Lcom/bumptech/glide/load/engine/GlideException;

    .line 331
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4353
    monitor-enter p0

    .line 4354
    :try_start_1
    iget-object p1, p0, Lcom/bumptech/glide/load/engine/l;->h:Lcom/bumptech/glide/g/a/b;

    invoke-virtual {p1}, Lcom/bumptech/glide/g/a/b;->a()V

    .line 4355
    iget-boolean p1, p0, Lcom/bumptech/glide/load/engine/l;->z:Z

    if-eqz p1, :cond_0

    .line 4356
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/l;->e()V

    .line 4357
    monitor-exit p0

    return-void

    .line 4358
    :cond_0
    iget-object p1, p0, Lcom/bumptech/glide/load/engine/l;->a:Lcom/bumptech/glide/load/engine/l$e;

    invoke-virtual {p1}, Lcom/bumptech/glide/load/engine/l$e;->a()Z

    move-result p1

    if-nez p1, :cond_3

    .line 4360
    iget-boolean p1, p0, Lcom/bumptech/glide/load/engine/l;->x:Z

    if-nez p1, :cond_2

    const/4 p1, 0x1

    .line 4363
    iput-boolean p1, p0, Lcom/bumptech/glide/load/engine/l;->x:Z

    .line 4365
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/l;->r:Lcom/bumptech/glide/load/f;

    .line 4367
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/l;->a:Lcom/bumptech/glide/load/engine/l$e;

    invoke-virtual {v1}, Lcom/bumptech/glide/load/engine/l$e;->c()Lcom/bumptech/glide/load/engine/l$e;

    move-result-object v1

    .line 4370
    invoke-virtual {v1}, Lcom/bumptech/glide/load/engine/l$e;->b()I

    move-result v2

    add-int/2addr v2, p1

    invoke-direct {p0, v2}, Lcom/bumptech/glide/load/engine/l;->a(I)V

    .line 4371
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4373
    iget-object p1, p0, Lcom/bumptech/glide/load/engine/l;->l:Lcom/bumptech/glide/load/engine/m;

    const/4 v2, 0x0

    invoke-interface {p1, p0, v0, v2}, Lcom/bumptech/glide/load/engine/m;->a(Lcom/bumptech/glide/load/engine/l;Lcom/bumptech/glide/load/f;Lcom/bumptech/glide/load/engine/p;)V

    .line 4375
    invoke-virtual {v1}, Lcom/bumptech/glide/load/engine/l$e;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/engine/l$d;

    .line 4376
    iget-object v1, v0, Lcom/bumptech/glide/load/engine/l$d;->b:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/bumptech/glide/load/engine/l$a;

    iget-object v0, v0, Lcom/bumptech/glide/load/engine/l$d;->a:Lcom/bumptech/glide/e/i;

    invoke-direct {v2, p0, v0}, Lcom/bumptech/glide/load/engine/l$a;-><init>(Lcom/bumptech/glide/load/engine/l;Lcom/bumptech/glide/e/i;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 4378
    :cond_1
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/l;->a()V

    return-void

    .line 4361
    :cond_2
    :try_start_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Already failed once"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4359
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Received an exception without any callbacks to notify"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 4371
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 331
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public final a(Lcom/bumptech/glide/load/engine/h;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/h<",
            "*>;)V"
        }
    .end annotation

    .line 339
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/l;->c()Lcom/bumptech/glide/load/engine/c/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/engine/c/a;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Lcom/bumptech/glide/load/engine/u;Lcom/bumptech/glide/load/a;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/u<",
            "TR;>;",
            "Lcom/bumptech/glide/load/a;",
            "Z)V"
        }
    .end annotation

    .line 319
    monitor-enter p0

    .line 320
    :try_start_0
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/l;->v:Lcom/bumptech/glide/load/engine/u;

    .line 321
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/l;->c:Lcom/bumptech/glide/load/a;

    .line 322
    iput-boolean p3, p0, Lcom/bumptech/glide/load/engine/l;->f:Z

    .line 323
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3233
    monitor-enter p0

    .line 3234
    :try_start_1
    iget-object p1, p0, Lcom/bumptech/glide/load/engine/l;->h:Lcom/bumptech/glide/g/a/b;

    invoke-virtual {p1}, Lcom/bumptech/glide/g/a/b;->a()V

    .line 3235
    iget-boolean p1, p0, Lcom/bumptech/glide/load/engine/l;->z:Z

    if-eqz p1, :cond_0

    .line 3238
    iget-object p1, p0, Lcom/bumptech/glide/load/engine/l;->v:Lcom/bumptech/glide/load/engine/u;

    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/u;->d()V

    .line 3239
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/l;->e()V

    .line 3240
    monitor-exit p0

    return-void

    .line 3241
    :cond_0
    iget-object p1, p0, Lcom/bumptech/glide/load/engine/l;->a:Lcom/bumptech/glide/load/engine/l$e;

    invoke-virtual {p1}, Lcom/bumptech/glide/load/engine/l$e;->a()Z

    move-result p1

    if-nez p1, :cond_3

    .line 3243
    iget-boolean p1, p0, Lcom/bumptech/glide/load/engine/l;->w:Z

    if-nez p1, :cond_2

    .line 3246
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/l;->v:Lcom/bumptech/glide/load/engine/u;

    iget-boolean v2, p0, Lcom/bumptech/glide/load/engine/l;->s:Z

    iget-object v4, p0, Lcom/bumptech/glide/load/engine/l;->r:Lcom/bumptech/glide/load/f;

    iget-object v5, p0, Lcom/bumptech/glide/load/engine/l;->i:Lcom/bumptech/glide/load/engine/p$a;

    .line 3516
    new-instance p1, Lcom/bumptech/glide/load/engine/p;

    const/4 v3, 0x1

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/bumptech/glide/load/engine/p;-><init>(Lcom/bumptech/glide/load/engine/u;ZZLcom/bumptech/glide/load/f;Lcom/bumptech/glide/load/engine/p$a;)V

    .line 3246
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/l;->e:Lcom/bumptech/glide/load/engine/p;

    const/4 p1, 0x1

    .line 3251
    iput-boolean p1, p0, Lcom/bumptech/glide/load/engine/l;->w:Z

    .line 3252
    iget-object p2, p0, Lcom/bumptech/glide/load/engine/l;->a:Lcom/bumptech/glide/load/engine/l$e;

    invoke-virtual {p2}, Lcom/bumptech/glide/load/engine/l$e;->c()Lcom/bumptech/glide/load/engine/l$e;

    move-result-object p2

    .line 3253
    invoke-virtual {p2}, Lcom/bumptech/glide/load/engine/l$e;->b()I

    move-result p3

    add-int/2addr p3, p1

    invoke-direct {p0, p3}, Lcom/bumptech/glide/load/engine/l;->a(I)V

    .line 3255
    iget-object p1, p0, Lcom/bumptech/glide/load/engine/l;->r:Lcom/bumptech/glide/load/f;

    .line 3256
    iget-object p3, p0, Lcom/bumptech/glide/load/engine/l;->e:Lcom/bumptech/glide/load/engine/p;

    .line 3257
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3259
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/l;->l:Lcom/bumptech/glide/load/engine/m;

    invoke-interface {v0, p0, p1, p3}, Lcom/bumptech/glide/load/engine/m;->a(Lcom/bumptech/glide/load/engine/l;Lcom/bumptech/glide/load/f;Lcom/bumptech/glide/load/engine/p;)V

    .line 3261
    invoke-virtual {p2}, Lcom/bumptech/glide/load/engine/l$e;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/bumptech/glide/load/engine/l$d;

    .line 3262
    iget-object p3, p2, Lcom/bumptech/glide/load/engine/l$d;->b:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/bumptech/glide/load/engine/l$b;

    iget-object p2, p2, Lcom/bumptech/glide/load/engine/l$d;->a:Lcom/bumptech/glide/e/i;

    invoke-direct {v0, p0, p2}, Lcom/bumptech/glide/load/engine/l$b;-><init>(Lcom/bumptech/glide/load/engine/l;Lcom/bumptech/glide/e/i;)V

    invoke-interface {p3, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 3264
    :cond_1
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/l;->a()V

    return-void

    .line 3244
    :cond_2
    :try_start_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Already have resource"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3242
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Received a resource without any callbacks to notify"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 3257
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 323
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public final declared-synchronized b(Lcom/bumptech/glide/load/engine/h;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/h<",
            "TR;>;)V"
        }
    .end annotation

    monitor-enter p0

    .line 129
    :try_start_0
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/l;->y:Lcom/bumptech/glide/load/engine/h;

    .line 1140
    sget-object v0, Lcom/bumptech/glide/load/engine/h$g;->INITIALIZE:Lcom/bumptech/glide/load/engine/h$g;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/load/engine/h;->a(Lcom/bumptech/glide/load/engine/h$g;)Lcom/bumptech/glide/load/engine/h$g;

    move-result-object v0

    .line 1141
    sget-object v1, Lcom/bumptech/glide/load/engine/h$g;->RESOURCE_CACHE:Lcom/bumptech/glide/load/engine/h$g;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/bumptech/glide/load/engine/h$g;->DATA_CACHE:Lcom/bumptech/glide/load/engine/h$g;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    .line 131
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/l;->m:Lcom/bumptech/glide/load/engine/c/a;

    goto :goto_2

    :cond_2
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/l;->c()Lcom/bumptech/glide/load/engine/c/a;

    move-result-object v0

    .line 132
    :goto_2
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/engine/c/a;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final m_()Lcom/bumptech/glide/g/a/b;
    .locals 1

    .line 384
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/l;->h:Lcom/bumptech/glide/g/a/b;

    return-object v0
.end method
