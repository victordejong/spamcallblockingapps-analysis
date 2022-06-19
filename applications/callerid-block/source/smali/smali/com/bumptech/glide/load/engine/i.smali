.class public Lcom/bumptech/glide/load/engine/i;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bumptech/glide/load/engine/k;
.implements Lcom/bumptech/glide/load/engine/y/h$a;
.implements Lcom/bumptech/glide/load/engine/n$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/engine/i$b;,
        Lcom/bumptech/glide/load/engine/i$a;,
        Lcom/bumptech/glide/load/engine/i$c;,
        Lcom/bumptech/glide/load/engine/i$d;
    }
.end annotation


# static fields
.field private static final i:Z


# instance fields
.field private final a:Lcom/bumptech/glide/load/engine/p;

.field private final b:Lcom/bumptech/glide/load/engine/m;

.field private final c:Lcom/bumptech/glide/load/engine/y/h;

.field private final d:Lcom/bumptech/glide/load/engine/i$b;

.field private final e:Lcom/bumptech/glide/load/engine/v;

.field private final f:Lcom/bumptech/glide/load/engine/i$c;

.field private final g:Lcom/bumptech/glide/load/engine/i$a;

.field private final h:Lcom/bumptech/glide/load/engine/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "Engine"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/bumptech/glide/load/engine/i;->i:Z

    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/load/engine/y/h;Lcom/bumptech/glide/load/engine/y/a$a;Lcom/bumptech/glide/load/engine/z/a;Lcom/bumptech/glide/load/engine/z/a;Lcom/bumptech/glide/load/engine/z/a;Lcom/bumptech/glide/load/engine/z/a;Lcom/bumptech/glide/load/engine/p;Lcom/bumptech/glide/load/engine/m;Lcom/bumptech/glide/load/engine/a;Lcom/bumptech/glide/load/engine/i$b;Lcom/bumptech/glide/load/engine/i$a;Lcom/bumptech/glide/load/engine/v;Z)V
    .locals 11

    move-object v7, p0

    move-object v8, p1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v8, v7, Lcom/bumptech/glide/load/engine/i;->c:Lcom/bumptech/glide/load/engine/y/h;

    new-instance v9, Lcom/bumptech/glide/load/engine/i$c;

    move-object v0, p2

    invoke-direct {v9, p2}, Lcom/bumptech/glide/load/engine/i$c;-><init>(Lcom/bumptech/glide/load/engine/y/a$a;)V

    iput-object v9, v7, Lcom/bumptech/glide/load/engine/i;->f:Lcom/bumptech/glide/load/engine/i$c;

    if-nez p9, :cond_0

    new-instance v0, Lcom/bumptech/glide/load/engine/a;

    move/from16 v1, p13

    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/engine/a;-><init>(Z)V

    goto :goto_0

    :cond_0
    move-object/from16 v0, p9

    :goto_0
    iput-object v0, v7, Lcom/bumptech/glide/load/engine/i;->h:Lcom/bumptech/glide/load/engine/a;

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/load/engine/a;->f(Lcom/bumptech/glide/load/engine/n$a;)V

    if-nez p8, :cond_1

    new-instance v0, Lcom/bumptech/glide/load/engine/m;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/m;-><init>()V

    goto :goto_1

    :cond_1
    move-object/from16 v0, p8

    :goto_1
    iput-object v0, v7, Lcom/bumptech/glide/load/engine/i;->b:Lcom/bumptech/glide/load/engine/m;

    if-nez p7, :cond_2

    new-instance v0, Lcom/bumptech/glide/load/engine/p;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/p;-><init>()V

    goto :goto_2

    :cond_2
    move-object/from16 v0, p7

    :goto_2
    iput-object v0, v7, Lcom/bumptech/glide/load/engine/i;->a:Lcom/bumptech/glide/load/engine/p;

    if-nez p10, :cond_3

    new-instance v10, Lcom/bumptech/glide/load/engine/i$b;

    move-object v0, v10

    move-object v1, p3

    move-object v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object v5, p0

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/bumptech/glide/load/engine/i$b;-><init>(Lcom/bumptech/glide/load/engine/z/a;Lcom/bumptech/glide/load/engine/z/a;Lcom/bumptech/glide/load/engine/z/a;Lcom/bumptech/glide/load/engine/z/a;Lcom/bumptech/glide/load/engine/k;Lcom/bumptech/glide/load/engine/n$a;)V

    goto :goto_3

    :cond_3
    move-object/from16 v10, p10

    :goto_3
    iput-object v10, v7, Lcom/bumptech/glide/load/engine/i;->d:Lcom/bumptech/glide/load/engine/i$b;

    if-nez p11, :cond_4

    new-instance v0, Lcom/bumptech/glide/load/engine/i$a;

    invoke-direct {v0, v9}, Lcom/bumptech/glide/load/engine/i$a;-><init>(Lcom/bumptech/glide/load/engine/DecodeJob$e;)V

    goto :goto_4

    :cond_4
    move-object/from16 v0, p11

    :goto_4
    iput-object v0, v7, Lcom/bumptech/glide/load/engine/i;->g:Lcom/bumptech/glide/load/engine/i$a;

    if-nez p12, :cond_5

    new-instance v0, Lcom/bumptech/glide/load/engine/v;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/v;-><init>()V

    goto :goto_5

    :cond_5
    move-object/from16 v0, p12

    :goto_5
    iput-object v0, v7, Lcom/bumptech/glide/load/engine/i;->e:Lcom/bumptech/glide/load/engine/v;

    invoke-interface {p1, p0}, Lcom/bumptech/glide/load/engine/y/h;->c(Lcom/bumptech/glide/load/engine/y/h$a;)V

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/load/engine/y/h;Lcom/bumptech/glide/load/engine/y/a$a;Lcom/bumptech/glide/load/engine/z/a;Lcom/bumptech/glide/load/engine/z/a;Lcom/bumptech/glide/load/engine/z/a;Lcom/bumptech/glide/load/engine/z/a;Z)V
    .locals 14

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v13, p7

    invoke-direct/range {v0 .. v13}, Lcom/bumptech/glide/load/engine/i;-><init>(Lcom/bumptech/glide/load/engine/y/h;Lcom/bumptech/glide/load/engine/y/a$a;Lcom/bumptech/glide/load/engine/z/a;Lcom/bumptech/glide/load/engine/z/a;Lcom/bumptech/glide/load/engine/z/a;Lcom/bumptech/glide/load/engine/z/a;Lcom/bumptech/glide/load/engine/p;Lcom/bumptech/glide/load/engine/m;Lcom/bumptech/glide/load/engine/a;Lcom/bumptech/glide/load/engine/i$b;Lcom/bumptech/glide/load/engine/i$a;Lcom/bumptech/glide/load/engine/v;Z)V

    return-void
.end method

.method private e(Lcom/bumptech/glide/load/c;)Lcom/bumptech/glide/load/engine/n;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/c;",
            ")",
            "Lcom/bumptech/glide/load/engine/n<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/i;->c:Lcom/bumptech/glide/load/engine/y/h;

    invoke-interface {v0, p1}, Lcom/bumptech/glide/load/engine/y/h;->e(Lcom/bumptech/glide/load/c;)Lcom/bumptech/glide/load/engine/s;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    instance-of v0, v2, Lcom/bumptech/glide/load/engine/n;

    if-eqz v0, :cond_1

    move-object p1, v2

    check-cast p1, Lcom/bumptech/glide/load/engine/n;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/bumptech/glide/load/engine/n;

    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object v1, v0

    move-object v5, p1

    move-object v6, p0

    invoke-direct/range {v1 .. v6}, Lcom/bumptech/glide/load/engine/n;-><init>(Lcom/bumptech/glide/load/engine/s;ZZLcom/bumptech/glide/load/c;Lcom/bumptech/glide/load/engine/n$a;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method private g(Lcom/bumptech/glide/load/c;)Lcom/bumptech/glide/load/engine/n;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/c;",
            ")",
            "Lcom/bumptech/glide/load/engine/n<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/i;->h:Lcom/bumptech/glide/load/engine/a;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/engine/a;->e(Lcom/bumptech/glide/load/c;)Lcom/bumptech/glide/load/engine/n;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/bumptech/glide/load/engine/n;->b()V

    :cond_0
    return-object p1
.end method

.method private h(Lcom/bumptech/glide/load/c;)Lcom/bumptech/glide/load/engine/n;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/c;",
            ")",
            "Lcom/bumptech/glide/load/engine/n<",
            "*>;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/engine/i;->e(Lcom/bumptech/glide/load/c;)Lcom/bumptech/glide/load/engine/n;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/n;->b()V

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/i;->h:Lcom/bumptech/glide/load/engine/a;

    invoke-virtual {v1, p1, v0}, Lcom/bumptech/glide/load/engine/a;->a(Lcom/bumptech/glide/load/c;Lcom/bumptech/glide/load/engine/n;)V

    :cond_0
    return-object v0
.end method

.method private i(Lcom/bumptech/glide/load/engine/l;ZJ)Lcom/bumptech/glide/load/engine/n;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/l;",
            "ZJ)",
            "Lcom/bumptech/glide/load/engine/n<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/engine/i;->g(Lcom/bumptech/glide/load/c;)Lcom/bumptech/glide/load/engine/n;

    move-result-object p2

    if-eqz p2, :cond_2

    sget-boolean v0, Lcom/bumptech/glide/load/engine/i;->i:Z

    if-eqz v0, :cond_1

    const-string v0, "Loaded resource from active resources"

    invoke-static {v0, p3, p4, p1}, Lcom/bumptech/glide/load/engine/i;->j(Ljava/lang/String;JLcom/bumptech/glide/load/c;)V

    :cond_1
    return-object p2

    :cond_2
    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/engine/i;->h(Lcom/bumptech/glide/load/c;)Lcom/bumptech/glide/load/engine/n;

    move-result-object p2

    if-eqz p2, :cond_4

    sget-boolean v0, Lcom/bumptech/glide/load/engine/i;->i:Z

    if-eqz v0, :cond_3

    const-string v0, "Loaded resource from cache"

    invoke-static {v0, p3, p4, p1}, Lcom/bumptech/glide/load/engine/i;->j(Ljava/lang/String;JLcom/bumptech/glide/load/c;)V

    :cond_3
    return-object p2

    :cond_4
    return-object v0
.end method

.method private static j(Ljava/lang/String;JLcom/bumptech/glide/load/c;)V
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " in "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Lcom/bumptech/glide/o/f;->a(J)D

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p0, "ms, key: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Engine"

    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private l(Lcom/bumptech/glide/d;Ljava/lang/Object;Lcom/bumptech/glide/load/c;IILjava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/load/engine/h;Ljava/util/Map;ZZLcom/bumptech/glide/load/e;ZZZZLcom/bumptech/glide/request/f;Ljava/util/concurrent/Executor;Lcom/bumptech/glide/load/engine/l;J)Lcom/bumptech/glide/load/engine/i$d;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/d;",
            "Ljava/lang/Object;",
            "Lcom/bumptech/glide/load/c;",
            "II",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "TR;>;",
            "Lcom/bumptech/glide/Priority;",
            "Lcom/bumptech/glide/load/engine/h;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/bumptech/glide/load/h<",
            "*>;>;ZZ",
            "Lcom/bumptech/glide/load/e;",
            "ZZZZ",
            "Lcom/bumptech/glide/request/f;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/bumptech/glide/load/engine/l;",
            "J)",
            "Lcom/bumptech/glide/load/engine/i$d;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p18

    move-object/from16 v2, p19

    move-object/from16 v15, p20

    move-wide/from16 v13, p21

    iget-object v3, v0, Lcom/bumptech/glide/load/engine/i;->a:Lcom/bumptech/glide/load/engine/p;

    move/from16 v12, p17

    invoke-virtual {v3, v15, v12}, Lcom/bumptech/glide/load/engine/p;->a(Lcom/bumptech/glide/load/c;Z)Lcom/bumptech/glide/load/engine/j;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3, v1, v2}, Lcom/bumptech/glide/load/engine/j;->b(Lcom/bumptech/glide/request/f;Ljava/util/concurrent/Executor;)V

    sget-boolean v2, Lcom/bumptech/glide/load/engine/i;->i:Z

    if-eqz v2, :cond_0

    const-string v2, "Added to existing load"

    invoke-static {v2, v13, v14, v15}, Lcom/bumptech/glide/load/engine/i;->j(Ljava/lang/String;JLcom/bumptech/glide/load/c;)V

    :cond_0
    new-instance v2, Lcom/bumptech/glide/load/engine/i$d;

    invoke-direct {v2, v0, v1, v3}, Lcom/bumptech/glide/load/engine/i$d;-><init>(Lcom/bumptech/glide/load/engine/i;Lcom/bumptech/glide/request/f;Lcom/bumptech/glide/load/engine/j;)V

    return-object v2

    :cond_1
    iget-object v3, v0, Lcom/bumptech/glide/load/engine/i;->d:Lcom/bumptech/glide/load/engine/i$b;

    move-object/from16 v4, p20

    move/from16 v5, p14

    move/from16 v6, p15

    move/from16 v7, p16

    move/from16 v8, p17

    invoke-virtual/range {v3 .. v8}, Lcom/bumptech/glide/load/engine/i$b;->a(Lcom/bumptech/glide/load/c;ZZZZ)Lcom/bumptech/glide/load/engine/j;

    move-result-object v11

    move-object/from16 v19, v11

    iget-object v3, v0, Lcom/bumptech/glide/load/engine/i;->g:Lcom/bumptech/glide/load/engine/i$a;

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p20

    move-object/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move-object/from16 v10, p6

    move-object v1, v11

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    move-object/from16 v13, p9

    move-object/from16 v14, p10

    move-object v2, v15

    move/from16 v15, p11

    move/from16 v16, p12

    move/from16 v17, p17

    move-object/from16 v18, p13

    invoke-virtual/range {v3 .. v19}, Lcom/bumptech/glide/load/engine/i$a;->a(Lcom/bumptech/glide/d;Ljava/lang/Object;Lcom/bumptech/glide/load/engine/l;Lcom/bumptech/glide/load/c;IILjava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/load/engine/h;Ljava/util/Map;ZZZLcom/bumptech/glide/load/e;Lcom/bumptech/glide/load/engine/DecodeJob$b;)Lcom/bumptech/glide/load/engine/DecodeJob;

    move-result-object v3

    iget-object v4, v0, Lcom/bumptech/glide/load/engine/i;->a:Lcom/bumptech/glide/load/engine/p;

    invoke-virtual {v4, v2, v1}, Lcom/bumptech/glide/load/engine/p;->c(Lcom/bumptech/glide/load/c;Lcom/bumptech/glide/load/engine/j;)V

    move-object v5, v1

    move-object v4, v2

    move-object/from16 v1, p18

    move-object/from16 v2, p19

    invoke-virtual {v5, v1, v2}, Lcom/bumptech/glide/load/engine/j;->b(Lcom/bumptech/glide/request/f;Ljava/util/concurrent/Executor;)V

    invoke-virtual {v5, v3}, Lcom/bumptech/glide/load/engine/j;->s(Lcom/bumptech/glide/load/engine/DecodeJob;)V

    sget-boolean v2, Lcom/bumptech/glide/load/engine/i;->i:Z

    if-eqz v2, :cond_2

    const-string v2, "Started new load"

    move-wide/from16 v6, p21

    invoke-static {v2, v6, v7, v4}, Lcom/bumptech/glide/load/engine/i;->j(Ljava/lang/String;JLcom/bumptech/glide/load/c;)V

    :cond_2
    new-instance v2, Lcom/bumptech/glide/load/engine/i$d;

    invoke-direct {v2, v0, v1, v5}, Lcom/bumptech/glide/load/engine/i$d;-><init>(Lcom/bumptech/glide/load/engine/i;Lcom/bumptech/glide/request/f;Lcom/bumptech/glide/load/engine/j;)V

    return-object v2
.end method


# virtual methods
.method public a(Lcom/bumptech/glide/load/engine/s;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/s<",
            "*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/i;->e:Lcom/bumptech/glide/load/engine/v;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/bumptech/glide/load/engine/v;->a(Lcom/bumptech/glide/load/engine/s;Z)V

    return-void
.end method

.method public declared-synchronized b(Lcom/bumptech/glide/load/engine/j;Lcom/bumptech/glide/load/c;Lcom/bumptech/glide/load/engine/n;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/j<",
            "*>;",
            "Lcom/bumptech/glide/load/c;",
            "Lcom/bumptech/glide/load/engine/n<",
            "*>;)V"
        }
    .end annotation

    monitor-enter p0

    if-eqz p3, :cond_0

    :try_start_0
    invoke-virtual {p3}, Lcom/bumptech/glide/load/engine/n;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/i;->h:Lcom/bumptech/glide/load/engine/a;

    invoke-virtual {v0, p2, p3}, Lcom/bumptech/glide/load/engine/a;->a(Lcom/bumptech/glide/load/c;Lcom/bumptech/glide/load/engine/n;)V

    :cond_0
    iget-object p3, p0, Lcom/bumptech/glide/load/engine/i;->a:Lcom/bumptech/glide/load/engine/p;

    invoke-virtual {p3, p2, p1}, Lcom/bumptech/glide/load/engine/p;->d(Lcom/bumptech/glide/load/c;Lcom/bumptech/glide/load/engine/j;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized c(Lcom/bumptech/glide/load/engine/j;Lcom/bumptech/glide/load/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/j<",
            "*>;",
            "Lcom/bumptech/glide/load/c;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/i;->a:Lcom/bumptech/glide/load/engine/p;

    invoke-virtual {v0, p2, p1}, Lcom/bumptech/glide/load/engine/p;->d(Lcom/bumptech/glide/load/c;Lcom/bumptech/glide/load/engine/j;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public d(Lcom/bumptech/glide/load/c;Lcom/bumptech/glide/load/engine/n;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/c;",
            "Lcom/bumptech/glide/load/engine/n<",
            "*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/i;->h:Lcom/bumptech/glide/load/engine/a;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/engine/a;->d(Lcom/bumptech/glide/load/c;)V

    invoke-virtual {p2}, Lcom/bumptech/glide/load/engine/n;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/i;->c:Lcom/bumptech/glide/load/engine/y/h;

    invoke-interface {v0, p1, p2}, Lcom/bumptech/glide/load/engine/y/h;->d(Lcom/bumptech/glide/load/c;Lcom/bumptech/glide/load/engine/s;)Lcom/bumptech/glide/load/engine/s;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/bumptech/glide/load/engine/i;->e:Lcom/bumptech/glide/load/engine/v;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/bumptech/glide/load/engine/v;->a(Lcom/bumptech/glide/load/engine/s;Z)V

    :goto_0
    return-void
.end method

.method public f(Lcom/bumptech/glide/d;Ljava/lang/Object;Lcom/bumptech/glide/load/c;IILjava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/load/engine/h;Ljava/util/Map;ZZLcom/bumptech/glide/load/e;ZZZZLcom/bumptech/glide/request/f;Ljava/util/concurrent/Executor;)Lcom/bumptech/glide/load/engine/i$d;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/d;",
            "Ljava/lang/Object;",
            "Lcom/bumptech/glide/load/c;",
            "II",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "TR;>;",
            "Lcom/bumptech/glide/Priority;",
            "Lcom/bumptech/glide/load/engine/h;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/bumptech/glide/load/h<",
            "*>;>;ZZ",
            "Lcom/bumptech/glide/load/e;",
            "ZZZZ",
            "Lcom/bumptech/glide/request/f;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/bumptech/glide/load/engine/i$d;"
        }
    .end annotation

    move-object/from16 v15, p0

    sget-boolean v0, Lcom/bumptech/glide/load/engine/i;->i:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/bumptech/glide/o/f;->b()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    move-wide v13, v0

    iget-object v0, v15, Lcom/bumptech/glide/load/engine/i;->b:Lcom/bumptech/glide/load/engine/m;

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move-object/from16 v5, p10

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p13

    invoke-virtual/range {v0 .. v8}, Lcom/bumptech/glide/load/engine/m;->a(Ljava/lang/Object;Lcom/bumptech/glide/load/c;IILjava/util/Map;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/e;)Lcom/bumptech/glide/load/engine/l;

    move-result-object v0

    monitor-enter p0

    move/from16 v12, p14

    :try_start_0
    invoke-direct {v15, v0, v12, v13, v14}, Lcom/bumptech/glide/load/engine/i;->i(Lcom/bumptech/glide/load/engine/l;ZJ)Lcom/bumptech/glide/load/engine/n;

    move-result-object v1

    if-nez v1, :cond_1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v12, p11

    move-wide/from16 v22, v13

    move/from16 v13, p12

    move-object/from16 v14, p13

    move/from16 v15, p14

    move/from16 v16, p15

    move/from16 v17, p16

    move/from16 v18, p17

    move-object/from16 v19, p18

    move-object/from16 v20, p19

    move-object/from16 v21, v0

    invoke-direct/range {v1 .. v23}, Lcom/bumptech/glide/load/engine/i;->l(Lcom/bumptech/glide/d;Ljava/lang/Object;Lcom/bumptech/glide/load/c;IILjava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/load/engine/h;Ljava/util/Map;ZZLcom/bumptech/glide/load/e;ZZZZLcom/bumptech/glide/request/f;Ljava/util/concurrent/Executor;Lcom/bumptech/glide/load/engine/l;J)Lcom/bumptech/glide/load/engine/i$d;

    move-result-object v0

    monitor-exit p0

    return-object v0

    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/bumptech/glide/load/DataSource;->f:Lcom/bumptech/glide/load/DataSource;

    const/4 v2, 0x0

    move-object/from16 v3, p18

    invoke-interface {v3, v1, v0, v2}, Lcom/bumptech/glide/request/f;->c(Lcom/bumptech/glide/load/engine/s;Lcom/bumptech/glide/load/DataSource;Z)V

    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public k(Lcom/bumptech/glide/load/engine/s;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/s<",
            "*>;)V"
        }
    .end annotation

    instance-of v0, p1, Lcom/bumptech/glide/load/engine/n;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/bumptech/glide/load/engine/n;

    invoke-virtual {p1}, Lcom/bumptech/glide/load/engine/n;->g()V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot release anything but an EngineResource"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
