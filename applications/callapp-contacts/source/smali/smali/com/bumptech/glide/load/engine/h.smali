.class final Lcom/bumptech/glide/load/engine/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/g/a/a$c;
.implements Lcom/bumptech/glide/load/engine/f$a;
.implements Ljava/lang/Comparable;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/engine/h$g;,
        Lcom/bumptech/glide/load/engine/h$f;,
        Lcom/bumptech/glide/load/engine/h$d;,
        Lcom/bumptech/glide/load/engine/h$a;,
        Lcom/bumptech/glide/load/engine/h$c;,
        Lcom/bumptech/glide/load/engine/h$e;,
        Lcom/bumptech/glide/load/engine/h$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/g/a/a$c;",
        "Lcom/bumptech/glide/load/engine/f$a;",
        "Ljava/lang/Comparable<",
        "Lcom/bumptech/glide/load/engine/h<",
        "*>;>;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field private A:Lcom/bumptech/glide/load/f;

.field private B:Ljava/lang/Object;

.field private C:Lcom/bumptech/glide/load/a;

.field private D:Lcom/bumptech/glide/load/data/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/data/d<",
            "*>;"
        }
    .end annotation
.end field

.field private volatile E:Z

.field private F:Z

.field final a:Lcom/bumptech/glide/load/engine/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/engine/g<",
            "TR;>;"
        }
    .end annotation
.end field

.field final b:Lcom/bumptech/glide/load/engine/h$d;

.field final c:Lcom/bumptech/glide/load/engine/h$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/engine/h$c<",
            "*>;"
        }
    .end annotation
.end field

.field final d:Lcom/bumptech/glide/load/engine/h$e;

.field e:Lcom/bumptech/glide/e;

.field f:Lcom/bumptech/glide/load/f;

.field g:Lcom/bumptech/glide/h;

.field h:Lcom/bumptech/glide/load/engine/n;

.field i:I

.field j:I

.field k:Lcom/bumptech/glide/load/engine/j;

.field l:Lcom/bumptech/glide/load/h;

.field m:Lcom/bumptech/glide/load/engine/h$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/engine/h$a<",
            "TR;>;"
        }
    .end annotation
.end field

.field n:I

.field o:Lcom/bumptech/glide/load/engine/h$f;

.field p:Z

.field q:Ljava/lang/Object;

.field r:Lcom/bumptech/glide/load/f;

.field volatile s:Lcom/bumptech/glide/load/engine/f;

.field volatile t:Z

.field private final u:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field private final v:Lcom/bumptech/glide/g/a/b;

.field private final w:Landroidx/core/e/c$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/e/c$a<",
            "Lcom/bumptech/glide/load/engine/h<",
            "*>;>;"
        }
    .end annotation
.end field

.field private x:Lcom/bumptech/glide/load/engine/h$g;

.field private y:J

.field private z:Ljava/lang/Thread;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/engine/h$d;Landroidx/core/e/c$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/h$d;",
            "Landroidx/core/e/c$a<",
            "Lcom/bumptech/glide/load/engine/h<",
            "*>;>;)V"
        }
    .end annotation

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Lcom/bumptech/glide/load/engine/g;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/g;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/h;->a:Lcom/bumptech/glide/load/engine/g;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/h;->u:Ljava/util/List;

    .line 1016
    new-instance v0, Lcom/bumptech/glide/g/a/b$a;

    invoke-direct {v0}, Lcom/bumptech/glide/g/a/b$a;-><init>()V

    .line 47
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/h;->v:Lcom/bumptech/glide/g/a/b;

    .line 50
    new-instance v0, Lcom/bumptech/glide/load/engine/h$c;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/h$c;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/h;->c:Lcom/bumptech/glide/load/engine/h$c;

    .line 51
    new-instance v0, Lcom/bumptech/glide/load/engine/h$e;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/h$e;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/h;->d:Lcom/bumptech/glide/load/engine/h$e;

    .line 82
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/h;->b:Lcom/bumptech/glide/load/engine/h$d;

    .line 83
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/h;->w:Landroidx/core/e/c$a;

    return-void
.end method

.method private a(Lcom/bumptech/glide/load/data/d;Ljava/lang/Object;Lcom/bumptech/glide/load/a;)Lcom/bumptech/glide/load/engine/u;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/data/d<",
            "*>;TData;",
            "Lcom/bumptech/glide/load/a;",
            ")",
            "Lcom/bumptech/glide/load/engine/u<",
            "TR;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bumptech/glide/load/engine/GlideException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 485
    invoke-interface {p1}, Lcom/bumptech/glide/load/data/d;->cleanup()V

    return-object v0

    .line 478
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/bumptech/glide/g/f;->a()J

    move-result-wide v1

    .line 2492
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/h;->a:Lcom/bumptech/glide/load/engine/g;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/bumptech/glide/load/engine/g;->b(Ljava/lang/Class;)Lcom/bumptech/glide/load/engine/s;

    move-result-object v3

    .line 2493
    invoke-direct {p0, p2, p3, v3}, Lcom/bumptech/glide/load/engine/h;->a(Ljava/lang/Object;Lcom/bumptech/glide/load/a;Lcom/bumptech/glide/load/engine/s;)Lcom/bumptech/glide/load/engine/u;

    move-result-object p2

    const-string p3, "DecodeJob"

    const/4 v3, 0x2

    .line 480
    invoke-static {p3, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p3

    if-eqz p3, :cond_1

    const-string p3, "Decoded result "

    .line 481
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 2537
    invoke-direct {p0, p3, v1, v2, v0}, Lcom/bumptech/glide/load/engine/h;->a(Ljava/lang/String;JLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 485
    :cond_1
    invoke-interface {p1}, Lcom/bumptech/glide/load/data/d;->cleanup()V

    return-object p2

    :catchall_0
    move-exception p2

    invoke-interface {p1}, Lcom/bumptech/glide/load/data/d;->cleanup()V

    throw p2
.end method

.method private a(Ljava/lang/Object;Lcom/bumptech/glide/load/a;Lcom/bumptech/glide/load/engine/s;)Lcom/bumptech/glide/load/engine/u;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            "ResourceType:",
            "Ljava/lang/Object;",
            ">(TData;",
            "Lcom/bumptech/glide/load/a;",
            "Lcom/bumptech/glide/load/engine/s<",
            "TData;TResourceType;TR;>;)",
            "Lcom/bumptech/glide/load/engine/u<",
            "TR;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bumptech/glide/load/engine/GlideException;
        }
    .end annotation

    .line 3498
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/h;->l:Lcom/bumptech/glide/load/h;

    .line 3499
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-ge v1, v2, :cond_0

    goto :goto_2

    .line 3503
    :cond_0
    sget-object v1, Lcom/bumptech/glide/load/a;->RESOURCE_DISK_CACHE:Lcom/bumptech/glide/load/a;

    if-eq p2, v1, :cond_2

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/h;->a:Lcom/bumptech/glide/load/engine/g;

    .line 4149
    iget-boolean v1, v1, Lcom/bumptech/glide/load/engine/g;->n:Z

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    .line 3505
    :goto_1
    sget-object v2, Lcom/bumptech/glide/load/resource/bitmap/l;->e:Lcom/bumptech/glide/load/g;

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/load/h;->a(Lcom/bumptech/glide/load/g;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    if-eqz v2, :cond_4

    .line 3509
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v1, :cond_4

    :cond_3
    :goto_2
    move-object v5, v0

    goto :goto_3

    .line 3515
    :cond_4
    new-instance v0, Lcom/bumptech/glide/load/h;

    invoke-direct {v0}, Lcom/bumptech/glide/load/h;-><init>()V

    .line 3516
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/h;->l:Lcom/bumptech/glide/load/h;

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/load/h;->a(Lcom/bumptech/glide/load/h;)V

    .line 3517
    sget-object v2, Lcom/bumptech/glide/load/resource/bitmap/l;->e:Lcom/bumptech/glide/load/g;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/bumptech/glide/load/h;->a(Lcom/bumptech/glide/load/g;Ljava/lang/Object;)Lcom/bumptech/glide/load/h;

    goto :goto_2

    .line 526
    :goto_3
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/h;->e:Lcom/bumptech/glide/e;

    .line 5110
    iget-object v0, v0, Lcom/bumptech/glide/e;->c:Lcom/bumptech/glide/Registry;

    .line 5583
    iget-object v0, v0, Lcom/bumptech/glide/Registry;->c:Lcom/bumptech/glide/load/data/f;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/data/f;->a(Ljava/lang/Object;)Lcom/bumptech/glide/load/data/e;

    move-result-object p1

    .line 529
    :try_start_0
    iget v6, p0, Lcom/bumptech/glide/load/engine/h;->i:I

    iget v7, p0, Lcom/bumptech/glide/load/engine/h;->j:I

    new-instance v8, Lcom/bumptech/glide/load/engine/h$b;

    invoke-direct {v8, p0, p2}, Lcom/bumptech/glide/load/engine/h$b;-><init>(Lcom/bumptech/glide/load/engine/h;Lcom/bumptech/glide/load/a;)V

    move-object v3, p3

    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Lcom/bumptech/glide/load/engine/s;->a(Lcom/bumptech/glide/load/data/e;Lcom/bumptech/glide/load/h;IILcom/bumptech/glide/load/engine/i$a;)Lcom/bumptech/glide/load/engine/u;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 532
    invoke-interface {p1}, Lcom/bumptech/glide/load/data/e;->b()V

    return-object p2

    :catchall_0
    move-exception p2

    invoke-interface {p1}, Lcom/bumptech/glide/load/data/e;->b()V

    throw p2
.end method

.method private a(Lcom/bumptech/glide/load/engine/u;Lcom/bumptech/glide/load/a;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/u<",
            "TR;>;",
            "Lcom/bumptech/glide/load/a;",
            "Z)V"
        }
    .end annotation

    .line 338
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/h;->i()V

    .line 339
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/h;->m:Lcom/bumptech/glide/load/engine/h$a;

    invoke-interface {v0, p1, p2, p3}, Lcom/bumptech/glide/load/engine/h$a;->a(Lcom/bumptech/glide/load/engine/u;Lcom/bumptech/glide/load/a;Z)V

    return-void
.end method

.method private a(Ljava/lang/String;JLjava/lang/String;)V
    .locals 1

    .line 541
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " in "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 545
    invoke-static {p2, p3}, Lcom/bumptech/glide/g/f;->a(J)D

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p1, ", load key: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/bumptech/glide/load/engine/h;->h:Lcom/bumptech/glide/load/engine/n;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_0

    .line 548
    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, ", "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", thread: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 550
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private b(Lcom/bumptech/glide/load/engine/u;Lcom/bumptech/glide/load/a;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/u<",
            "TR;>;",
            "Lcom/bumptech/glide/load/a;",
            "Z)V"
        }
    .end annotation

    .line 444
    instance-of v0, p1, Lcom/bumptech/glide/load/engine/q;

    if-eqz v0, :cond_0

    .line 445
    move-object v0, p1

    check-cast v0, Lcom/bumptech/glide/load/engine/q;

    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/q;->e()V

    :cond_0
    const/4 v0, 0x0

    .line 450
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/h;->c:Lcom/bumptech/glide/load/engine/h$c;

    invoke-virtual {v1}, Lcom/bumptech/glide/load/engine/h$c;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 451
    invoke-static {p1}, Lcom/bumptech/glide/load/engine/t;->a(Lcom/bumptech/glide/load/engine/u;)Lcom/bumptech/glide/load/engine/t;

    move-result-object p1

    move-object v0, p1

    .line 455
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/bumptech/glide/load/engine/h;->a(Lcom/bumptech/glide/load/engine/u;Lcom/bumptech/glide/load/a;Z)V

    .line 457
    sget-object p1, Lcom/bumptech/glide/load/engine/h$g;->ENCODE:Lcom/bumptech/glide/load/engine/h$g;

    iput-object p1, p0, Lcom/bumptech/glide/load/engine/h;->x:Lcom/bumptech/glide/load/engine/h$g;

    .line 459
    :try_start_0
    iget-object p1, p0, Lcom/bumptech/glide/load/engine/h;->c:Lcom/bumptech/glide/load/engine/h$c;

    invoke-virtual {p1}, Lcom/bumptech/glide/load/engine/h$c;->a()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 460
    iget-object p1, p0, Lcom/bumptech/glide/load/engine/h;->c:Lcom/bumptech/glide/load/engine/h$c;

    iget-object p2, p0, Lcom/bumptech/glide/load/engine/h;->b:Lcom/bumptech/glide/load/engine/h$d;

    iget-object p3, p0, Lcom/bumptech/glide/load/engine/h;->l:Lcom/bumptech/glide/load/h;

    invoke-virtual {p1, p2, p3}, Lcom/bumptech/glide/load/engine/h$c;->a(Lcom/bumptech/glide/load/engine/h$d;Lcom/bumptech/glide/load/h;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    if-eqz v0, :cond_3

    .line 464
    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/t;->e()V

    .line 469
    :cond_3
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/h;->d()V

    return-void

    :catchall_0
    move-exception p1

    if-eqz v0, :cond_4

    .line 464
    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/t;->e()V

    :cond_4
    throw p1
.end method

.method private d()V
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/h;->d:Lcom/bumptech/glide/load/engine/h$e;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/h$e;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/h;->a()V

    :cond_0
    return-void
.end method

.method private e()V
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/h;->d:Lcom/bumptech/glide/load/engine/h$e;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/h$e;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/h;->a()V

    :cond_0
    return-void
.end method

.method private f()Lcom/bumptech/glide/load/engine/f;
    .locals 3

    .line 291
    sget-object v0, Lcom/bumptech/glide/load/engine/h$1;->b:[I

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/h;->x:Lcom/bumptech/glide/load/engine/h$g;

    invoke-virtual {v1}, Lcom/bumptech/glide/load/engine/h$g;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 301
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unrecognized stage: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/h;->x:Lcom/bumptech/glide/load/engine/h$g;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 297
    :cond_1
    new-instance v0, Lcom/bumptech/glide/load/engine/y;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/h;->a:Lcom/bumptech/glide/load/engine/g;

    invoke-direct {v0, v1, p0}, Lcom/bumptech/glide/load/engine/y;-><init>(Lcom/bumptech/glide/load/engine/g;Lcom/bumptech/glide/load/engine/f$a;)V

    return-object v0

    .line 295
    :cond_2
    new-instance v0, Lcom/bumptech/glide/load/engine/c;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/h;->a:Lcom/bumptech/glide/load/engine/g;

    invoke-direct {v0, v1, p0}, Lcom/bumptech/glide/load/engine/c;-><init>(Lcom/bumptech/glide/load/engine/g;Lcom/bumptech/glide/load/engine/f$a;)V

    return-object v0

    .line 293
    :cond_3
    new-instance v0, Lcom/bumptech/glide/load/engine/v;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/h;->a:Lcom/bumptech/glide/load/engine/g;

    invoke-direct {v0, v1, p0}, Lcom/bumptech/glide/load/engine/v;-><init>(Lcom/bumptech/glide/load/engine/g;Lcom/bumptech/glide/load/engine/f$a;)V

    return-object v0
.end method

.method private g()V
    .locals 3

    .line 306
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/h;->z:Ljava/lang/Thread;

    .line 307
    invoke-static {}, Lcom/bumptech/glide/g/f;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bumptech/glide/load/engine/h;->y:J

    const/4 v0, 0x0

    .line 309
    :cond_0
    iget-boolean v1, p0, Lcom/bumptech/glide/load/engine/h;->t:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/h;->s:Lcom/bumptech/glide/load/engine/f;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/h;->s:Lcom/bumptech/glide/load/engine/f;

    .line 311
    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/f;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 312
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/h;->x:Lcom/bumptech/glide/load/engine/h$g;

    invoke-virtual {p0, v1}, Lcom/bumptech/glide/load/engine/h;->a(Lcom/bumptech/glide/load/engine/h$g;)Lcom/bumptech/glide/load/engine/h$g;

    move-result-object v1

    iput-object v1, p0, Lcom/bumptech/glide/load/engine/h;->x:Lcom/bumptech/glide/load/engine/h$g;

    .line 313
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/h;->f()Lcom/bumptech/glide/load/engine/f;

    move-result-object v1

    iput-object v1, p0, Lcom/bumptech/glide/load/engine/h;->s:Lcom/bumptech/glide/load/engine/f;

    .line 315
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/h;->x:Lcom/bumptech/glide/load/engine/h$g;

    sget-object v2, Lcom/bumptech/glide/load/engine/h$g;->SOURCE:Lcom/bumptech/glide/load/engine/h$g;

    if-ne v1, v2, :cond_0

    .line 316
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/h;->c()V

    return-void

    .line 321
    :cond_1
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/h;->x:Lcom/bumptech/glide/load/engine/h$g;

    sget-object v2, Lcom/bumptech/glide/load/engine/h$g;->FINISHED:Lcom/bumptech/glide/load/engine/h$g;

    if-eq v1, v2, :cond_2

    iget-boolean v1, p0, Lcom/bumptech/glide/load/engine/h;->t:Z

    if-eqz v1, :cond_3

    :cond_2
    if-nez v0, :cond_3

    .line 322
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/h;->h()V

    :cond_3
    return-void
.end method

.method private h()V
    .locals 3

    .line 330
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/h;->i()V

    .line 331
    new-instance v0, Lcom/bumptech/glide/load/engine/GlideException;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/h;->u:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v2, "Failed to load resource"

    invoke-direct {v0, v2, v1}, Lcom/bumptech/glide/load/engine/GlideException;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 332
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/h;->m:Lcom/bumptech/glide/load/engine/h$a;

    invoke-interface {v1, v0}, Lcom/bumptech/glide/load/engine/h$a;->a(Lcom/bumptech/glide/load/engine/GlideException;)V

    .line 333
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/h;->e()V

    return-void
.end method

.method private i()V
    .locals 3

    .line 343
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/h;->v:Lcom/bumptech/glide/g/a/b;

    invoke-virtual {v0}, Lcom/bumptech/glide/g/a/b;->a()V

    .line 344
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/h;->E:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 345
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/h;->u:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/h;->u:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    .line 346
    :goto_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Already notified"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 348
    :cond_1
    iput-boolean v1, p0, Lcom/bumptech/glide/load/engine/h;->E:Z

    return-void
.end method

.method private j()V
    .locals 4

    const-string v0, "DecodeJob"

    const/4 v1, 0x2

    .line 417
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 418
    iget-wide v0, p0, Lcom/bumptech/glide/load/engine/h;->y:J

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "data: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/h;->B:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", cache key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/h;->r:Lcom/bumptech/glide/load/f;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", fetcher: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/h;->D:Lcom/bumptech/glide/load/data/d;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Retrieved data"

    invoke-direct {p0, v3, v0, v1, v2}, Lcom/bumptech/glide/load/engine/h;->a(Ljava/lang/String;JLjava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    .line 430
    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/h;->D:Lcom/bumptech/glide/load/data/d;

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/h;->B:Ljava/lang/Object;

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/h;->C:Lcom/bumptech/glide/load/a;

    invoke-direct {p0, v1, v2, v3}, Lcom/bumptech/glide/load/engine/h;->a(Lcom/bumptech/glide/load/data/d;Ljava/lang/Object;Lcom/bumptech/glide/load/a;)Lcom/bumptech/glide/load/engine/u;

    move-result-object v0
    :try_end_0
    .catch Lcom/bumptech/glide/load/engine/GlideException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 432
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/h;->A:Lcom/bumptech/glide/load/f;

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/h;->C:Lcom/bumptech/glide/load/a;

    .line 2045
    invoke-virtual {v1, v2, v3, v0}, Lcom/bumptech/glide/load/engine/GlideException;->a(Lcom/bumptech/glide/load/f;Lcom/bumptech/glide/load/a;Ljava/lang/Class;)V

    .line 433
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/h;->u:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    if-eqz v0, :cond_1

    .line 436
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/h;->C:Lcom/bumptech/glide/load/a;

    iget-boolean v2, p0, Lcom/bumptech/glide/load/engine/h;->F:Z

    invoke-direct {p0, v0, v1, v2}, Lcom/bumptech/glide/load/engine/h;->b(Lcom/bumptech/glide/load/engine/u;Lcom/bumptech/glide/load/a;Z)V

    return-void

    .line 438
    :cond_1
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/h;->g()V

    return-void
.end method


# virtual methods
.method final a(Lcom/bumptech/glide/load/engine/h$g;)Lcom/bumptech/glide/load/engine/h$g;
    .locals 2

    .line 352
    :goto_0
    sget-object v0, Lcom/bumptech/glide/load/engine/h$1;->b:[I

    invoke-virtual {p1}, Lcom/bumptech/glide/load/engine/h$g;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 354
    iget-object p1, p0, Lcom/bumptech/glide/load/engine/h;->k:Lcom/bumptech/glide/load/engine/j;

    invoke-virtual {p1}, Lcom/bumptech/glide/load/engine/j;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 355
    sget-object p1, Lcom/bumptech/glide/load/engine/h$g;->RESOURCE_CACHE:Lcom/bumptech/glide/load/engine/h$g;

    return-object p1

    .line 356
    :cond_0
    sget-object p1, Lcom/bumptech/glide/load/engine/h$g;->RESOURCE_CACHE:Lcom/bumptech/glide/load/engine/h$g;

    goto :goto_0

    .line 368
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Unrecognized stage: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 366
    :cond_2
    sget-object p1, Lcom/bumptech/glide/load/engine/h$g;->FINISHED:Lcom/bumptech/glide/load/engine/h$g;

    return-object p1

    .line 363
    :cond_3
    iget-boolean p1, p0, Lcom/bumptech/glide/load/engine/h;->p:Z

    if-eqz p1, :cond_4

    sget-object p1, Lcom/bumptech/glide/load/engine/h$g;->FINISHED:Lcom/bumptech/glide/load/engine/h$g;

    return-object p1

    :cond_4
    sget-object p1, Lcom/bumptech/glide/load/engine/h$g;->SOURCE:Lcom/bumptech/glide/load/engine/h$g;

    return-object p1

    .line 358
    :cond_5
    iget-object p1, p0, Lcom/bumptech/glide/load/engine/h;->k:Lcom/bumptech/glide/load/engine/j;

    invoke-virtual {p1}, Lcom/bumptech/glide/load/engine/j;->b()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 359
    sget-object p1, Lcom/bumptech/glide/load/engine/h$g;->DATA_CACHE:Lcom/bumptech/glide/load/engine/h$g;

    return-object p1

    .line 360
    :cond_6
    sget-object p1, Lcom/bumptech/glide/load/engine/h$g;->DATA_CACHE:Lcom/bumptech/glide/load/engine/h$g;

    goto :goto_0
.end method

.method final a()V
    .locals 4

    .line 174
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/h;->d:Lcom/bumptech/glide/load/engine/h$e;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/h$e;->c()V

    .line 175
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/h;->c:Lcom/bumptech/glide/load/engine/h$c;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/h$c;->b()V

    .line 176
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/h;->a:Lcom/bumptech/glide/load/engine/g;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/g;->a()V

    const/4 v0, 0x0

    .line 177
    iput-boolean v0, p0, Lcom/bumptech/glide/load/engine/h;->E:Z

    const/4 v1, 0x0

    .line 178
    iput-object v1, p0, Lcom/bumptech/glide/load/engine/h;->e:Lcom/bumptech/glide/e;

    .line 179
    iput-object v1, p0, Lcom/bumptech/glide/load/engine/h;->f:Lcom/bumptech/glide/load/f;

    .line 180
    iput-object v1, p0, Lcom/bumptech/glide/load/engine/h;->l:Lcom/bumptech/glide/load/h;

    .line 181
    iput-object v1, p0, Lcom/bumptech/glide/load/engine/h;->g:Lcom/bumptech/glide/h;

    .line 182
    iput-object v1, p0, Lcom/bumptech/glide/load/engine/h;->h:Lcom/bumptech/glide/load/engine/n;

    .line 183
    iput-object v1, p0, Lcom/bumptech/glide/load/engine/h;->m:Lcom/bumptech/glide/load/engine/h$a;

    .line 184
    iput-object v1, p0, Lcom/bumptech/glide/load/engine/h;->x:Lcom/bumptech/glide/load/engine/h$g;

    .line 185
    iput-object v1, p0, Lcom/bumptech/glide/load/engine/h;->s:Lcom/bumptech/glide/load/engine/f;

    .line 186
    iput-object v1, p0, Lcom/bumptech/glide/load/engine/h;->z:Ljava/lang/Thread;

    .line 187
    iput-object v1, p0, Lcom/bumptech/glide/load/engine/h;->r:Lcom/bumptech/glide/load/f;

    .line 188
    iput-object v1, p0, Lcom/bumptech/glide/load/engine/h;->B:Ljava/lang/Object;

    .line 189
    iput-object v1, p0, Lcom/bumptech/glide/load/engine/h;->C:Lcom/bumptech/glide/load/a;

    .line 190
    iput-object v1, p0, Lcom/bumptech/glide/load/engine/h;->D:Lcom/bumptech/glide/load/data/d;

    const-wide/16 v2, 0x0

    .line 191
    iput-wide v2, p0, Lcom/bumptech/glide/load/engine/h;->y:J

    .line 192
    iput-boolean v0, p0, Lcom/bumptech/glide/load/engine/h;->t:Z

    .line 193
    iput-object v1, p0, Lcom/bumptech/glide/load/engine/h;->q:Ljava/lang/Object;

    .line 194
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/h;->u:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 195
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/h;->w:Landroidx/core/e/c$a;

    invoke-interface {v0, p0}, Landroidx/core/e/c$a;->a(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Lcom/bumptech/glide/load/f;Ljava/lang/Exception;Lcom/bumptech/glide/load/data/d;Lcom/bumptech/glide/load/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/f;",
            "Ljava/lang/Exception;",
            "Lcom/bumptech/glide/load/data/d<",
            "*>;",
            "Lcom/bumptech/glide/load/a;",
            ")V"
        }
    .end annotation

    .line 404
    invoke-interface {p3}, Lcom/bumptech/glide/load/data/d;->cleanup()V

    .line 405
    new-instance v0, Lcom/bumptech/glide/load/engine/GlideException;

    const-string v1, "Fetching data failed"

    invoke-direct {v0, v1, p2}, Lcom/bumptech/glide/load/engine/GlideException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 406
    invoke-interface {p3}, Lcom/bumptech/glide/load/data/d;->getDataClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {v0, p1, p4, p2}, Lcom/bumptech/glide/load/engine/GlideException;->a(Lcom/bumptech/glide/load/f;Lcom/bumptech/glide/load/a;Ljava/lang/Class;)V

    .line 407
    iget-object p1, p0, Lcom/bumptech/glide/load/engine/h;->u:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 408
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    iget-object p2, p0, Lcom/bumptech/glide/load/engine/h;->z:Ljava/lang/Thread;

    if-eq p1, p2, :cond_0

    .line 409
    sget-object p1, Lcom/bumptech/glide/load/engine/h$f;->SWITCH_TO_SOURCE_SERVICE:Lcom/bumptech/glide/load/engine/h$f;

    iput-object p1, p0, Lcom/bumptech/glide/load/engine/h;->o:Lcom/bumptech/glide/load/engine/h$f;

    .line 410
    iget-object p1, p0, Lcom/bumptech/glide/load/engine/h;->m:Lcom/bumptech/glide/load/engine/h$a;

    invoke-interface {p1, p0}, Lcom/bumptech/glide/load/engine/h$a;->a(Lcom/bumptech/glide/load/engine/h;)V

    return-void

    .line 412
    :cond_0
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/h;->g()V

    return-void
.end method

.method public final a(Lcom/bumptech/glide/load/f;Ljava/lang/Object;Lcom/bumptech/glide/load/data/d;Lcom/bumptech/glide/load/a;Lcom/bumptech/glide/load/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/f;",
            "Ljava/lang/Object;",
            "Lcom/bumptech/glide/load/data/d<",
            "*>;",
            "Lcom/bumptech/glide/load/a;",
            "Lcom/bumptech/glide/load/f;",
            ")V"
        }
    .end annotation

    .line 381
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/h;->r:Lcom/bumptech/glide/load/f;

    .line 382
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/h;->B:Ljava/lang/Object;

    .line 383
    iput-object p3, p0, Lcom/bumptech/glide/load/engine/h;->D:Lcom/bumptech/glide/load/data/d;

    .line 384
    iput-object p4, p0, Lcom/bumptech/glide/load/engine/h;->C:Lcom/bumptech/glide/load/a;

    .line 385
    iput-object p5, p0, Lcom/bumptech/glide/load/engine/h;->A:Lcom/bumptech/glide/load/f;

    .line 386
    iget-object p2, p0, Lcom/bumptech/glide/load/engine/h;->a:Lcom/bumptech/glide/load/engine/g;

    invoke-virtual {p2}, Lcom/bumptech/glide/load/engine/g;->d()Ljava/util/List;

    move-result-object p2

    const/4 p3, 0x0

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    if-eq p1, p2, :cond_0

    const/4 p3, 0x1

    :cond_0
    iput-boolean p3, p0, Lcom/bumptech/glide/load/engine/h;->F:Z

    .line 388
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    iget-object p2, p0, Lcom/bumptech/glide/load/engine/h;->z:Ljava/lang/Thread;

    if-eq p1, p2, :cond_1

    .line 389
    sget-object p1, Lcom/bumptech/glide/load/engine/h$f;->DECODE_DATA:Lcom/bumptech/glide/load/engine/h$f;

    iput-object p1, p0, Lcom/bumptech/glide/load/engine/h;->o:Lcom/bumptech/glide/load/engine/h$f;

    .line 390
    iget-object p1, p0, Lcom/bumptech/glide/load/engine/h;->m:Lcom/bumptech/glide/load/engine/h$a;

    invoke-interface {p1, p0}, Lcom/bumptech/glide/load/engine/h$a;->a(Lcom/bumptech/glide/load/engine/h;)V

    return-void

    .line 394
    :cond_1
    :try_start_0
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/h;->j()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 396
    throw p1
.end method

.method public final c()V
    .locals 1

    .line 374
    sget-object v0, Lcom/bumptech/glide/load/engine/h$f;->SWITCH_TO_SOURCE_SERVICE:Lcom/bumptech/glide/load/engine/h$f;

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/h;->o:Lcom/bumptech/glide/load/engine/h$f;

    .line 375
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/h;->m:Lcom/bumptech/glide/load/engine/h$a;

    invoke-interface {v0, p0}, Lcom/bumptech/glide/load/engine/h$a;->a(Lcom/bumptech/glide/load/engine/h;)V

    return-void
.end method

.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 2

    .line 38
    check-cast p1, Lcom/bumptech/glide/load/engine/h;

    .line 6208
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/h;->g:Lcom/bumptech/glide/h;

    invoke-virtual {v0}, Lcom/bumptech/glide/h;->ordinal()I

    move-result v0

    .line 7208
    iget-object v1, p1, Lcom/bumptech/glide/load/engine/h;->g:Lcom/bumptech/glide/h;

    invoke-virtual {v1}, Lcom/bumptech/glide/h;->ordinal()I

    move-result v1

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 6202
    iget v0, p0, Lcom/bumptech/glide/load/engine/h;->n:I

    iget p1, p1, Lcom/bumptech/glide/load/engine/h;->n:I

    sub-int/2addr v0, p1

    :cond_0
    return v0
.end method

.method public final m_()Lcom/bumptech/glide/g/a/b;
    .locals 1

    .line 556
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/h;->v:Lcom/bumptech/glide/g/a/b;

    return-object v0
.end method

.method public final run()V
    .locals 5

    .line 229
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/h;->D:Lcom/bumptech/glide/load/data/d;

    const/4 v1, 0x3

    .line 231
    :try_start_0
    iget-boolean v2, p0, Lcom/bumptech/glide/load/engine/h;->t:Z

    if-eqz v2, :cond_1

    .line 232
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/h;->h()V
    :try_end_0
    .catch Lcom/bumptech/glide/load/engine/b; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 266
    invoke-interface {v0}, Lcom/bumptech/glide/load/data/d;->cleanup()V

    :cond_0
    return-void

    .line 1273
    :cond_1
    :try_start_1
    sget-object v2, Lcom/bumptech/glide/load/engine/h$1;->a:[I

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/h;->o:Lcom/bumptech/glide/load/engine/h$f;

    invoke-virtual {v3}, Lcom/bumptech/glide/load/engine/h$f;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_4

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    if-ne v2, v1, :cond_2

    .line 1283
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/h;->j()V

    goto :goto_0

    .line 1286
    :cond_2
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unrecognized run reason: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/bumptech/glide/load/engine/h;->o:Lcom/bumptech/glide/load/engine/h$f;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1280
    :cond_3
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/h;->g()V

    goto :goto_0

    .line 1275
    :cond_4
    sget-object v2, Lcom/bumptech/glide/load/engine/h$g;->INITIALIZE:Lcom/bumptech/glide/load/engine/h$g;

    invoke-virtual {p0, v2}, Lcom/bumptech/glide/load/engine/h;->a(Lcom/bumptech/glide/load/engine/h$g;)Lcom/bumptech/glide/load/engine/h$g;

    move-result-object v2

    iput-object v2, p0, Lcom/bumptech/glide/load/engine/h;->x:Lcom/bumptech/glide/load/engine/h$g;

    .line 1276
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/h;->f()Lcom/bumptech/glide/load/engine/f;

    move-result-object v2

    iput-object v2, p0, Lcom/bumptech/glide/load/engine/h;->s:Lcom/bumptech/glide/load/engine/f;

    .line 1277
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/h;->g()V
    :try_end_1
    .catch Lcom/bumptech/glide/load/engine/b; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz v0, :cond_5

    .line 266
    invoke-interface {v0}, Lcom/bumptech/glide/load/data/d;->cleanup()V

    :cond_5
    return-void

    :catchall_0
    move-exception v2

    :try_start_2
    const-string v3, "DecodeJob"

    .line 247
    invoke-static {v3, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 248
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "DecodeJob threw unexpectedly, isCancelled: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/bumptech/glide/load/engine/h;->t:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", stage: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/h;->x:Lcom/bumptech/glide/load/engine/h$g;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 254
    :cond_6
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/h;->x:Lcom/bumptech/glide/load/engine/h$g;

    sget-object v3, Lcom/bumptech/glide/load/engine/h$g;->ENCODE:Lcom/bumptech/glide/load/engine/h$g;

    if-eq v1, v3, :cond_7

    .line 255
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/h;->u:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 256
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/h;->h()V

    .line 258
    :cond_7
    iget-boolean v1, p0, Lcom/bumptech/glide/load/engine/h;->t:Z

    if-nez v1, :cond_8

    .line 259
    throw v2

    .line 261
    :cond_8
    throw v2

    :catch_0
    move-exception v1

    .line 239
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz v0, :cond_9

    .line 266
    invoke-interface {v0}, Lcom/bumptech/glide/load/data/d;->cleanup()V

    .line 268
    :cond_9
    throw v1
.end method
