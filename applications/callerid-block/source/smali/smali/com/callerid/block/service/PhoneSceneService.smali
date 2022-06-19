.class public Lcom/callerid/block/service/PhoneSceneService;
.super Landroid/app/Service;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callerid/block/service/PhoneSceneService$j;
    }
.end annotation


# instance fields
.field private b:I

.field private c:Ljava/lang/String;

.field private d:Lcom/callerid/block/service/PhoneSceneService$j;

.field private e:Lcom/callerid/block/util/i;

.field private f:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lcom/callerid/block/service/PhoneSceneService$j;

    invoke-direct {v0, p0}, Lcom/callerid/block/service/PhoneSceneService$j;-><init>(Lcom/callerid/block/service/PhoneSceneService;)V

    iput-object v0, p0, Lcom/callerid/block/service/PhoneSceneService;->d:Lcom/callerid/block/service/PhoneSceneService$j;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/callerid/block/service/PhoneSceneService;->f:J

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p2, :cond_1

    :try_start_0
    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/callerid/block/service/PhoneSceneService$h;

    invoke-direct {v0, p0, p1}, Lcom/callerid/block/service/PhoneSceneService$h;-><init>(Lcom/callerid/block/service/PhoneSceneService;Landroid/content/Context;)V

    invoke-static {p1, p2, p3, v0}, Lcom/callerid/block/h/a/f/t;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/callerid/block/h/a/f/s;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic b(Lcom/callerid/block/service/PhoneSceneService;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/callerid/block/service/PhoneSceneService;->q(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lcom/callerid/block/service/PhoneSceneService;)J
    .locals 2

    iget-wide v0, p0, Lcom/callerid/block/service/PhoneSceneService;->f:J

    return-wide v0
.end method

.method static synthetic d(Lcom/callerid/block/service/PhoneSceneService;Landroid/content/Context;IJLjava/lang/String;ZZ)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/callerid/block/service/PhoneSceneService;->s(Landroid/content/Context;IJLjava/lang/String;ZZ)V

    return-void
.end method

.method static synthetic e(Lcom/callerid/block/service/PhoneSceneService;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/callerid/block/service/PhoneSceneService;->p(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic f(Lcom/callerid/block/service/PhoneSceneService;)Lcom/callerid/block/util/i;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/service/PhoneSceneService;->e:Lcom/callerid/block/util/i;

    return-object p0
.end method

.method static synthetic g(Lcom/callerid/block/service/PhoneSceneService;)Lcom/callerid/block/service/PhoneSceneService$j;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/service/PhoneSceneService;->d:Lcom/callerid/block/service/PhoneSceneService$j;

    return-object p0
.end method

.method static synthetic h(Lcom/callerid/block/service/PhoneSceneService;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/callerid/block/service/PhoneSceneService;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private i(Landroid/content/Context;)V
    .locals 0

    invoke-static {p1}, Lcom/callerid/block/f/c;->Z(Landroid/content/Context;)V

    return-void
.end method

.method private j(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/callerid/block/util/a;->b()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/callerid/block/util/n0;->O0(Landroid/content/Context;J)V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lcom/callerid/block/util/n0;->D1(Landroid/content/Context;Ljava/lang/Boolean;)V

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/callerid/block/util/n0;->R0(Landroid/content/Context;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, ""

    if-eqz p2, :cond_2

    :try_start_1
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/callerid/block/service/PhoneSceneService;->e:Lcom/callerid/block/util/i;

    if-nez v0, :cond_1

    new-instance v0, Lcom/callerid/block/util/i;

    invoke-direct {v0, p1}, Lcom/callerid/block/util/i;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/callerid/block/service/PhoneSceneService;->e:Lcom/callerid/block/util/i;

    :cond_1
    invoke-static {}, Lcom/callerid/block/util/c0;->a()Lcom/callerid/block/util/c0;

    move-result-object v0

    iget-object v0, v0, Lcom/callerid/block/util/c0;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/callerid/block/service/PhoneSceneService$a;

    invoke-direct {v1, p0, p2, p1}, Lcom/callerid/block/service/PhoneSceneService$a;-><init>(Lcom/callerid/block/service/PhoneSceneService;Ljava/lang/String;Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_2
    :goto_0
    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object v1

    const-string v2, "unknown_number_call"

    invoke-virtual {v1, v2}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/callerid/block/util/n0;->A(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object p2

    const-string v0, "unknown_number_call_blocked"

    invoke-virtual {p2, v0}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/callerid/block/util/t0;->h(Landroid/content/Context;)V

    :goto_1
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    goto :goto_2

    :cond_3
    invoke-direct {p0, p1, p2, v0}, Lcom/callerid/block/service/PhoneSceneService;->q(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method

.method private k(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8

    invoke-static {p1}, Lcom/callerid/block/util/t0;->h0(Landroid/content/Context;)V

    invoke-static {}, Lcom/callerid/block/util/n0;->e()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-static {p1}, Lcom/callerid/block/util/i0;->d(Landroid/content/Context;)V

    :cond_0
    if-eqz p2, :cond_1

    const-string v0, ""

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v3, 0x1

    :try_start_0
    iget-wide v4, p0, Lcom/callerid/block/service/PhoneSceneService;->f:J

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v7, p2

    invoke-direct/range {v1 .. v7}, Lcom/callerid/block/service/PhoneSceneService;->r(Landroid/content/Context;IJILjava/lang/String;)V

    iget-object v0, p0, Lcom/callerid/block/service/PhoneSceneService;->c:Ljava/lang/String;

    new-instance v1, Lcom/callerid/block/service/PhoneSceneService$e;

    invoke-direct {v1, p0, p1, p2}, Lcom/callerid/block/service/PhoneSceneService$e;-><init>(Lcom/callerid/block/service/PhoneSceneService;Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p1, v0, v1}, Lcom/callerid/block/h/a/f/r;->a(Landroid/content/Context;Ljava/lang/String;Lcom/callerid/block/h/a/f/q;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method private l(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/callerid/block/f/b;->a:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/callerid/block/service/PhoneSceneService;->i(Landroid/content/Context;)V

    :cond_0
    invoke-static {}, Lcom/callerid/block/util/n0;->e()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-static {p1}, Lcom/callerid/block/util/i0;->d(Landroid/content/Context;)V

    :cond_1
    if-eqz p2, :cond_2

    const-string v0, ""

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/callerid/block/util/c0;->a()Lcom/callerid/block/util/c0;

    move-result-object v0

    iget-object v0, v0, Lcom/callerid/block/util/c0;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/callerid/block/service/PhoneSceneService$b;

    invoke-direct {v1, p0, p1, p2}, Lcom/callerid/block/service/PhoneSceneService$b;-><init>(Lcom/callerid/block/service/PhoneSceneService;Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method private m(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    sget-object v0, Lcom/callerid/block/f/b;->a:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/callerid/block/service/PhoneSceneService;->i(Landroid/content/Context;)V

    :cond_0
    invoke-static {}, Lcom/callerid/block/util/n0;->e()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-static {p1}, Lcom/callerid/block/util/i0;->d(Landroid/content/Context;)V

    :cond_1
    invoke-static {p1}, Lcom/callerid/block/util/t0;->h0(Landroid/content/Context;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u672a\u63a5,\u6765\u7535\u53f7\u7801="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "testmiss"

    invoke-static {v1, v0}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_5

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {p1}, Lcom/callerid/block/util/n0;->E(Landroid/content/Context;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/callerid/block/service/PhoneSceneService;->f:J

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "internalDate:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/callerid/block/service/PhoneSceneService;->f:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/callerid/block/service/PhoneSceneService;->e:Lcom/callerid/block/util/i;

    if-nez v0, :cond_3

    new-instance v0, Lcom/callerid/block/util/i;

    invoke-direct {v0, p1}, Lcom/callerid/block/util/i;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/callerid/block/service/PhoneSceneService;->e:Lcom/callerid/block/util/i;

    :cond_3
    invoke-static {}, Lcom/callerid/block/util/c0;->a()Lcom/callerid/block/util/c0;

    move-result-object v0

    iget-object v0, v0, Lcom/callerid/block/util/c0;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/callerid/block/service/PhoneSceneService$c;

    invoke-direct {v1, p0, p1, p2}, Lcom/callerid/block/service/PhoneSceneService$c;-><init>(Lcom/callerid/block/service/PhoneSceneService;Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    invoke-static {p1}, Lcom/callerid/block/util/n0;->U(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Lcom/callerid/block/service/PhoneSceneService$d;

    invoke-direct {v0, p0, p2}, Lcom/callerid/block/service/PhoneSceneService$d;-><init>(Lcom/callerid/block/service/PhoneSceneService;Ljava/lang/String;)V

    invoke-static {p1, p2, v0}, Lcom/callerid/block/h/a/f/l;->a(Landroid/content/Context;Ljava/lang/String;Lcom/callerid/block/h/a/f/k;)V

    :cond_4
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return-void

    :cond_5
    :goto_0
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return-void
.end method

.method private n(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/callerid/block/util/a;->b()V

    invoke-static {p1}, Lcom/callerid/block/util/n0;->Z(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/callerid/block/service/PhoneSceneService;->t(Landroid/content/Context;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private o(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/callerid/block/f/b;->a:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/callerid/block/service/PhoneSceneService;->i(Landroid/content/Context;)V

    :cond_0
    invoke-static {p1}, Lcom/callerid/block/util/t0;->h0(Landroid/content/Context;)V

    if-eqz p2, :cond_1

    const-string p1, ""

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    nop

    :cond_1
    return-void
.end method

.method private p(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    :try_start_0
    invoke-static {p1}, Lcom/callerid/block/util/t0;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lcom/callerid/block/util/t0;->Y(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/callerid/block/service/PhoneSceneService$g;

    invoke-direct {v0, p0, p1}, Lcom/callerid/block/service/PhoneSceneService$g;-><init>(Lcom/callerid/block/service/PhoneSceneService;Landroid/content/Context;)V

    invoke-static {p1, p2, p4, p3, v0}, Lcom/callerid/block/h/a/e/j/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/callerid/block/h/a/e/j/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private q(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lcom/callerid/block/util/n0;->Z(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/callerid/block/service/PhoneSceneService;->u(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method private r(Landroid/content/Context;IJILjava/lang/String;)V
    .locals 9

    invoke-static {p1}, Lcom/callerid/block/util/n0;->P(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/callerid/block/service/PhoneSceneService$f;

    move-object v1, v0

    move-object v2, p0

    move v3, p5

    move-object v4, p1

    move v5, p2

    move-object v6, p6

    move-wide v7, p3

    invoke-direct/range {v1 .. v8}, Lcom/callerid/block/service/PhoneSceneService$f;-><init>(Lcom/callerid/block/service/PhoneSceneService;ILandroid/content/Context;ILjava/lang/String;J)V

    invoke-static {p1, p6, v0}, Lcom/callerid/block/h/a/f/r;->a(Landroid/content/Context;Ljava/lang/String;Lcom/callerid/block/h/a/f/q;)V

    :cond_0
    return-void
.end method

.method private s(Landroid/content/Context;IJLjava/lang/String;ZZ)V
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GetShowMissDialog="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/callerid/block/util/n0;->U(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "testmiss"

    invoke-static {v1, v0}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/callerid/block/util/n0;->U(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p7, :cond_0

    const-string v0, "\u5df2\u62e6\u622a"

    invoke-static {v1, v0}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    if-eqz p6, :cond_1

    const-string v0, "\u8054\u7cfb\u4eba\u7684\u672a\u63a5\u6765\u7535"

    invoke-static {v1, v0}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const-string v0, "\u964c\u751f\u4eba\u7684\u672a\u63a5\u6765\u7535"

    invoke-static {v1, v0}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    :goto_0
    const/4 v8, 0x4

    move-object v2, p1

    move v3, p2

    move-object v5, p5

    move-wide v6, p3

    invoke-static/range {v2 .. v8}, Lcom/callerid/block/util/m0;->b(Landroid/content/Context;IILjava/lang/String;JI)V

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object v0

    const-string v1, "showmissed_close"

    invoke-virtual {v0, v1}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private t(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object v0

    const-string v1, "outgoing"

    invoke-virtual {v0, v1}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    new-instance v0, Lcom/callerid/block/service/PhoneSceneService$i;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/callerid/block/service/PhoneSceneService$i;-><init>(Lcom/callerid/block/service/PhoneSceneService;Landroid/content/Context;Ljava/lang/String;I)V

    invoke-static {p1, p2, v0}, Lcom/callerid/block/h/a/f/r;->a(Landroid/content/Context;Ljava/lang/String;Lcom/callerid/block/h/a/f/q;)V

    return-void
.end method

.method private u(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V
    .locals 5

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object v0

    const-string v1, "incoming"

    invoke-virtual {v0, v1}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    const-string v0, ""

    if-eqz p2, :cond_3

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_1

    :cond_0
    const-string v1, "showfloat"

    const-string v2, "testyahu"

    if-eqz p4, :cond_2

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object v0

    const-string v3, "incoming_contact"

    invoke-virtual {v0, v3}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object v0

    invoke-static {}, Lcom/callerid/block/util/k;->a()Ljava/lang/String;

    move-result-object v3

    const-string v4, "contact"

    invoke-virtual {v0, v3, v4}, Lcom/callerid/block/util/k;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u8054\u7cfb\u4eba\u6765\u7535\uff1a"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/callerid/block/util/k;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/callerid/block/util/n0;->a0(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, p2, p3, v0, p4}, Lcom/callerid/block/f/c;->h0(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)V

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object p1

    const-string p2, "showfloat_incoming_contact"

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object p1

    const-string p2, "show_close_is_contact"

    :goto_0
    invoke-virtual {p1, p2}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object p1

    const/4 p4, 0x1

    invoke-static {p1, p2, p3, p4, v0}, Lcom/callerid/block/f/c;->h0(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)V

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object p1

    invoke-static {}, Lcom/callerid/block/util/k;->a()Ljava/lang/String;

    move-result-object p2

    const-string p3, "stranger"

    invoke-virtual {p1, p2, p3}, Lcom/callerid/block/util/k;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "\u964c\u751f\u4eba\u6765\u7535\uff1a"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/callerid/block/util/k;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object p1

    const-string p2, "incoming_not_contact"

    invoke-virtual {p1, p2}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    :goto_1
    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object p1

    const-string p4, "incoming_number_null_empty"

    invoke-virtual {p1, p4}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object p1

    const/4 p4, 0x3

    invoke-static {p1, p2, p3, p4, v0}, Lcom/callerid/block/f/c;->h0(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)V

    :goto_2
    return-void
.end method

.method private v(ILjava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/callerid/block/util/d0;->f()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/callerid/block/service/PhoneSceneService;->b:I

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object p1

    sget-object v0, Lcom/callerid/block/util/s0;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/callerid/block/service/PhoneSceneService;->o(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x6

    invoke-static {p1, p2}, Lcom/callerid/block/util/j0;->b(Landroid/content/Context;I)V

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/callerid/block/util/n0;->x(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    :goto_0
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/callerid/block/h/a/e/l/a;->b(Landroid/content/Context;)V

    goto :goto_1

    :pswitch_1
    sput-boolean v0, Lcom/callerid/block/util/t0;->b:Z

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object p1

    sget-object v0, Lcom/callerid/block/util/s0;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/callerid/block/service/PhoneSceneService;->k(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/callerid/block/util/n0;->x(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :pswitch_2
    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object p1

    sget-object v0, Lcom/callerid/block/util/s0;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/callerid/block/service/PhoneSceneService;->m(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/callerid/block/util/n0;->x(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/callerid/block/h/a/e/l/a;->b(Landroid/content/Context;)V

    goto :goto_2

    :pswitch_3
    const/4 p1, 0x1

    sput-boolean p1, Lcom/callerid/block/util/t0;->b:Z

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/callerid/block/service/PhoneSceneService;->l(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_4
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/callerid/block/service/PhoneSceneService;->n(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    :goto_1
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    goto :goto_2

    :pswitch_5
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/callerid/block/service/PhoneSceneService;->j(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 0

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    const-string v1, "telephonering_sence"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/callerid/block/service/PhoneSceneService;->b:I

    const-string v0, "telephonering_num"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/callerid/block/service/PhoneSceneService;->c:Ljava/lang/String;

    iget v1, p0, Lcom/callerid/block/service/PhoneSceneService;->b:I

    if-eqz v1, :cond_0

    invoke-direct {p0, v1, v0}, Lcom/callerid/block/service/PhoneSceneService;->v(ILjava/lang/String;)V

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1
.end method
