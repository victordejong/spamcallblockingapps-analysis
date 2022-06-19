.class public Lra1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lm91$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lra1$e;,
        Lra1$f;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "ra1"

.field public static b:Ljava/util/concurrent/ScheduledExecutorService;

.field public static c:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field public static d:Lra1$e;

.field public static f:Landroid/os/Handler;

.field public static g:Z

.field public static h:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lra1$f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lra1;->b:Ljava/util/concurrent/ScheduledExecutorService;

    const/4 v0, 0x0

    sput-object v0, Lra1;->c:Ljava/util/concurrent/ScheduledFuture;

    sput-object v0, Lra1;->d:Lra1$e;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lra1;->f:Landroid/os/Handler;

    const/4 v0, 0x0

    sput-boolean v0, Lra1;->g:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Z
    .locals 1

    sget-boolean v0, Lra1;->g:Z

    return v0
.end method

.method public static synthetic b()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lra1;->f:Landroid/os/Handler;

    return-object v0
.end method

.method public static synthetic c()Ljava/lang/String;
    .locals 1

    sget-object v0, Lra1;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static d()V
    .locals 4

    const-class v0, Lra1;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cancel()"

    invoke-static {v0, v1}, Lj91;->q(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    sput-boolean v0, Lra1;->g:Z

    sget-object v0, Lra1;->h:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lra1$f;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    sget-object v2, Lra1;->f:Landroid/os/Handler;

    new-instance v3, Lra1$d;

    invoke-direct {v3, v0}, Lra1$d;-><init>(Lra1$f;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    sput-object v1, Lra1;->h:Ljava/lang/ref/WeakReference;

    sget-object v0, Lra1;->c:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    sput-object v1, Lra1;->c:Ljava/util/concurrent/ScheduledFuture;

    :cond_2
    return-void
.end method

.method public static e(Li91;Ln91$b;ILandroid/content/Context;Lra1$f;ZZ)V
    .locals 10

    sget-object v0, Lra1;->b:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v9, Lra1$c;

    move-object v1, v9

    move-object v2, p0

    move v3, p2

    move-object v4, p1

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    move/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lra1$c;-><init>(Li91;ILn91$b;Landroid/content/Context;Lra1$f;ZZ)V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x0

    invoke-interface {v0, v9, v2, v3, v1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    sput-object v0, Lra1;->c:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public static g(Lra1$e;)V
    .locals 0

    sput-object p0, Lra1;->d:Lra1$e;

    return-void
.end method

.method public static h(Li91;Ln91$b;Z)V
    .locals 16

    move-object/from16 v8, p0

    const/4 v9, 0x1

    sput-boolean v9, Lra1;->g:Z

    new-instance v10, Ln91$b;

    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Ln91$b;-><init>(Ln91$b;)V

    sget-object v0, Lr71$a;->d:Lr71$a;

    invoke-virtual {v0}, Lr71$a;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iput-boolean v1, v10, Ln91$b;->b:Z

    :cond_0
    iget-object v0, v10, Ln91$b;->a:Ln91$a;

    sget-object v2, Ln91$a;->y:Ln91$a;

    if-eq v0, v2, :cond_1

    sget-object v0, Lr71$a;->j:Lr71$a;

    invoke-virtual {v0}, Lr71$a;->a()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, v10, Ln91$b;->b:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    sget-object v0, Lra1;->d:Lra1$e;

    if-nez v0, :cond_2

    sget-object v0, Lra1;->a:Ljava/lang/String;

    const-string v1, "AdapterProvider is not ready. Skipping call"

    invoke-static {v0, v1}, Lj91;->G(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-interface {v0}, Lra1$e;->a()Lra1$f;

    move-result-object v11

    sget-object v0, Lra1;->h:Ljava/lang/ref/WeakReference;

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lra1$f;

    goto :goto_0

    :cond_3
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_4

    sget-object v3, Lra1;->f:Landroid/os/Handler;

    new-instance v4, Lra1$a;

    invoke-direct {v4, v0}, Lra1$a;-><init>(Lra1$f;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v11}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lra1;->h:Ljava/lang/ref/WeakReference;

    invoke-static {}, Lfa1;->k()Landroid/content/Context;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Li91;->s()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual/range {p0 .. p0}, Li91;->q()Z

    move-result v0

    if-nez v0, :cond_9

    new-instance v0, Lq81;

    invoke-direct {v0}, Lq81;-><init>()V

    invoke-virtual {v0, v8}, Lq81;->W(Li91;)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_5

    invoke-virtual {v0, v3}, Lq81;->Q(Landroid/database/Cursor;)Lq81;

    goto :goto_1

    :cond_5
    move-object v0, v2

    :goto_1
    if-eqz v3, :cond_6

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_6
    if-eqz v0, :cond_7

    iget-object v3, v0, Lq81;->f:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v3, v0, Lq81;->f:Ljava/lang/String;

    goto :goto_2

    :cond_7
    move-object v3, v2

    :goto_2
    if-nez v3, :cond_a

    new-instance v4, Lx81;

    invoke-direct {v4}, Lx81;-><init>()V

    invoke-virtual {v4, v8}, Lx81;->P(Li91;)V

    iget-wide v5, v4, Lx81;->d:J

    const-wide/16 v13, 0x1

    cmp-long v7, v5, v13

    if-gez v7, :cond_8

    move-object v4, v2

    :cond_8
    if-eqz v4, :cond_a

    iget-object v5, v4, Lx81;->f:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_a

    iget-object v3, v4, Lx81;->f:Ljava/lang/String;

    goto :goto_3

    :cond_9
    move-object v0, v2

    move-object v3, v0

    :cond_a
    :goto_3
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_b

    iget-object v4, v10, Ln91$b;->f:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_b

    iget-object v3, v10, Ln91$b;->f:Ljava/lang/String;

    :cond_b
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-virtual/range {p0 .. p0}, Li91;->s()Z

    move-result v4

    if-nez v4, :cond_c

    invoke-virtual/range {p0 .. p0}, Li91;->q()Z

    move-result v4

    if-nez v4, :cond_c

    new-instance v3, Lu81;

    invoke-direct {v3}, Lu81;-><init>()V

    invoke-virtual {v3, v8, v2}, Lu81;->F(Li91;Ljava/lang/String;)Lu81;

    iget-object v3, v3, Lu81;->d:Ljava/lang/String;

    :cond_c
    if-eqz v3, :cond_d

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_e

    :cond_d
    invoke-virtual/range {p0 .. p0}, Li91;->m()Ljava/lang/String;

    move-result-object v3

    :cond_e
    move-object v13, v3

    if-eqz v0, :cond_f

    const/4 v14, 0x1

    goto :goto_4

    :cond_f
    const/4 v14, 0x0

    :goto_4
    iget-boolean v0, v10, Ln91$b;->b:Z

    if-eqz v0, :cond_10

    iget-object v0, v10, Ln91$b;->a:Ln91$a;

    sget-object v2, Ln91$a;->f:Ln91$a;

    if-eq v0, v2, :cond_10

    const/4 v0, 0x2

    const/4 v15, 0x2

    goto :goto_5

    :cond_10
    const/4 v15, 0x0

    :goto_5
    sget-object v7, Lra1;->f:Landroid/os/Handler;

    new-instance v6, Lra1$b;

    move-object v0, v6

    move-object v1, v11

    move-object/from16 v2, p0

    move-object v3, v10

    move-object v4, v13

    move v5, v15

    move-object v9, v6

    move/from16 v6, p2

    move-object/from16 p1, v11

    move-object v11, v7

    move v7, v14

    invoke-direct/range {v0 .. v7}, Lra1$b;-><init>(Lra1$f;Li91;Ln91$b;Ljava/lang/String;IZZ)V

    invoke-virtual {v11, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    sget-object v0, Lra1;->c:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_11

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_11
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    invoke-static {v8, v13}, Lz91;->v(Li91;Ljava/lang/String;)V

    return-void

    :cond_12
    sget-object v0, Lr71$a;->j:Lr71$a;

    invoke-virtual {v0}, Lr71$a;->a()Z

    move-result v0

    if-nez v0, :cond_13

    return-void

    :cond_13
    iget-object v0, v10, Ln91$b;->a:Ln91$a;

    sget-object v1, Ln91$a;->f:Ln91$a;

    if-eq v0, v1, :cond_15

    invoke-virtual/range {p0 .. p0}, Li91;->q()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-virtual/range {p0 .. p0}, Li91;->s()Z

    move-result v0

    if-eqz v0, :cond_14

    goto :goto_6

    :cond_14
    move-object/from16 v0, p0

    move-object v1, v10

    move v2, v15

    move-object v3, v12

    move-object/from16 v4, p1

    move/from16 v5, p2

    move v6, v14

    invoke-static/range {v0 .. v6}, Lra1;->e(Li91;Ln91$b;ILandroid/content/Context;Lra1$f;ZZ)V

    :cond_15
    :goto_6
    return-void
.end method

.method public static j()Z
    .locals 1

    invoke-static {}, Lr71;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lra1;->d:Lra1$e;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lra1$e;->a()Lra1$f;

    move-result-object v0

    invoke-interface {v0}, Lra1$f;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public f()V
    .locals 2

    sget-object v0, Lm91$c;->g:Lm91$c;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-static {p0, v0, v1}, Lm91;->d(Lm91$b;Ljava/util/EnumSet;[Ljava/lang/Class;)V

    return-void
.end method

.method public i(Lm91$c;Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm91$c;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    sget-object p1, Lra1;->h:Ljava/lang/ref/WeakReference;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lra1$f;

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-interface {p1}, Lra1$f;->d()V

    return-void
.end method
