.class public final Lcom/criteo/publisher/f/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/criteo/publisher/c/a;


# instance fields
.field private final a:Lcom/criteo/publisher/f/w;

.field private final b:Lcom/criteo/publisher/f/ac;

.field private final c:Lcom/criteo/publisher/h;

.field private final d:Lcom/criteo/publisher/model/t;

.field private final e:Lcom/criteo/publisher/k/a;

.field private final f:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Lcom/criteo/publisher/f/w;Lcom/criteo/publisher/f/ac;Lcom/criteo/publisher/h;Lcom/criteo/publisher/model/t;Lcom/criteo/publisher/k/a;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/criteo/publisher/f/q;->a:Lcom/criteo/publisher/f/w;

    .line 70
    iput-object p2, p0, Lcom/criteo/publisher/f/q;->b:Lcom/criteo/publisher/f/ac;

    .line 71
    iput-object p3, p0, Lcom/criteo/publisher/f/q;->c:Lcom/criteo/publisher/h;

    .line 72
    iput-object p4, p0, Lcom/criteo/publisher/f/q;->d:Lcom/criteo/publisher/model/t;

    .line 73
    iput-object p5, p0, Lcom/criteo/publisher/f/q;->e:Lcom/criteo/publisher/k/a;

    .line 74
    iput-object p6, p0, Lcom/criteo/publisher/f/q;->f:Ljava/util/concurrent/Executor;

    return-void
.end method

.method static synthetic a(Lcom/criteo/publisher/f/q;)Lcom/criteo/publisher/f/w;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/criteo/publisher/f/q;->a:Lcom/criteo/publisher/f/w;

    return-object p0
.end method

.method static synthetic a(Lcom/criteo/publisher/f/q;Lcom/criteo/publisher/model/o;)V
    .locals 1

    .line 1219
    sget-object v0, Lcom/criteo/publisher/f/-$$Lambda$q$pYPT5o-HAsbZVcjDnE6oZT6BNsY;->INSTANCE:Lcom/criteo/publisher/f/-$$Lambda$q$pYPT5o-HAsbZVcjDnE6oZT6BNsY;

    invoke-direct {p0, p1, v0}, Lcom/criteo/publisher/f/q;->a(Lcom/criteo/publisher/model/o;Lcom/criteo/publisher/f/w$a;)V

    return-void
.end method

.method static synthetic a(Lcom/criteo/publisher/f/q;Lcom/criteo/publisher/model/o;Lcom/criteo/publisher/f/w$a;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/criteo/publisher/f/q;->a(Lcom/criteo/publisher/model/o;Lcom/criteo/publisher/f/w$a;)V

    return-void
.end method

.method private static synthetic a(Lcom/criteo/publisher/f/s$a;)V
    .locals 1

    const/4 v0, 0x1

    .line 220
    invoke-virtual {p0, v0}, Lcom/criteo/publisher/f/s$a;->a(Z)Lcom/criteo/publisher/f/s$a;

    .line 221
    invoke-virtual {p0, v0}, Lcom/criteo/publisher/f/s$a;->c(Z)Lcom/criteo/publisher/f/s$a;

    return-void
.end method

.method private a(Lcom/criteo/publisher/model/o;Lcom/criteo/publisher/f/w$a;)V
    .locals 2

    .line 291
    invoke-virtual {p1}, Lcom/criteo/publisher/model/o;->f()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/criteo/publisher/model/q;

    .line 292
    iget-object v1, p0, Lcom/criteo/publisher/f/q;->a:Lcom/criteo/publisher/f/w;

    invoke-virtual {v0}, Lcom/criteo/publisher/model/q;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, p2}, Lcom/criteo/publisher/f/w;->a(Ljava/lang/String;Lcom/criteo/publisher/f/w$a;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/criteo/publisher/f/q;)Lcom/criteo/publisher/f/ac;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/criteo/publisher/f/q;->b:Lcom/criteo/publisher/f/ac;

    return-object p0
.end method

.method static synthetic b(Lcom/criteo/publisher/f/q;Lcom/criteo/publisher/model/o;)V
    .locals 1

    .line 2215
    sget-object v0, Lcom/criteo/publisher/f/-$$Lambda$q$ic2cEAcO27GMzYxBov1a120GeUY;->INSTANCE:Lcom/criteo/publisher/f/-$$Lambda$q$ic2cEAcO27GMzYxBov1a120GeUY;

    invoke-direct {p0, p1, v0}, Lcom/criteo/publisher/f/q;->a(Lcom/criteo/publisher/model/o;Lcom/criteo/publisher/f/w$a;)V

    return-void
.end method

.method private static synthetic b(Lcom/criteo/publisher/f/s$a;)V
    .locals 1

    const/4 v0, 0x1

    .line 215
    invoke-virtual {p0, v0}, Lcom/criteo/publisher/f/s$a;->c(Z)Lcom/criteo/publisher/f/s$a;

    return-void
.end method

.method private b()Z
    .locals 1

    .line 297
    iget-object v0, p0, Lcom/criteo/publisher/f/q;->d:Lcom/criteo/publisher/model/t;

    invoke-virtual {v0}, Lcom/criteo/publisher/model/t;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/criteo/publisher/f/q;->e:Lcom/criteo/publisher/k/a;

    invoke-virtual {v0}, Lcom/criteo/publisher/k/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method static synthetic c(Lcom/criteo/publisher/f/q;)Lcom/criteo/publisher/h;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/criteo/publisher/f/q;->c:Lcom/criteo/publisher/h;

    return-object p0
.end method

.method public static synthetic lambda$ic2cEAcO27GMzYxBov1a120GeUY(Lcom/criteo/publisher/f/s$a;)V
    .locals 0

    invoke-static {p0}, Lcom/criteo/publisher/f/q;->b(Lcom/criteo/publisher/f/s$a;)V

    return-void
.end method

.method public static synthetic lambda$pYPT5o-HAsbZVcjDnE6oZT6BNsY(Lcom/criteo/publisher/f/s$a;)V
    .locals 0

    invoke-static {p0}, Lcom/criteo/publisher/f/q;->a(Lcom/criteo/publisher/f/s$a;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 85
    invoke-direct {p0}, Lcom/criteo/publisher/f/q;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/criteo/publisher/f/q;->f:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/criteo/publisher/f/q$a;

    invoke-direct {v1, p0}, Lcom/criteo/publisher/f/q$a;-><init>(Lcom/criteo/publisher/f/q;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Lcom/criteo/publisher/model/n;Lcom/criteo/publisher/model/s;)V
    .locals 1

    .line 239
    invoke-direct {p0}, Lcom/criteo/publisher/f/q;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 243
    :cond_0
    iget-object p1, p0, Lcom/criteo/publisher/f/q;->f:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/criteo/publisher/f/q$e;

    invoke-direct {v0, p0, p2}, Lcom/criteo/publisher/f/q$e;-><init>(Lcom/criteo/publisher/f/q;Lcom/criteo/publisher/model/s;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Lcom/criteo/publisher/model/o;)V
    .locals 2

    .line 105
    invoke-direct {p0}, Lcom/criteo/publisher/f/q;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/criteo/publisher/f/q;->f:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/criteo/publisher/f/q$b;

    invoke-direct {v1, p0, p1}, Lcom/criteo/publisher/f/q$b;-><init>(Lcom/criteo/publisher/f/q;Lcom/criteo/publisher/model/o;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Lcom/criteo/publisher/model/o;Lcom/criteo/publisher/model/r;)V
    .locals 2

    .line 142
    invoke-direct {p0}, Lcom/criteo/publisher/f/q;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/criteo/publisher/f/q;->f:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/criteo/publisher/f/q$c;

    invoke-direct {v1, p0, p1, p2}, Lcom/criteo/publisher/f/q$c;-><init>(Lcom/criteo/publisher/f/q;Lcom/criteo/publisher/model/o;Lcom/criteo/publisher/model/r;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Lcom/criteo/publisher/model/o;Ljava/lang/Exception;)V
    .locals 2

    .line 189
    invoke-direct {p0}, Lcom/criteo/publisher/f/q;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/criteo/publisher/f/q;->f:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/criteo/publisher/f/q$d;

    invoke-direct {v1, p0, p2, p1}, Lcom/criteo/publisher/f/q$d;-><init>(Lcom/criteo/publisher/f/q;Ljava/lang/Exception;Lcom/criteo/publisher/model/o;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Lcom/criteo/publisher/model/s;)V
    .locals 2

    .line 269
    invoke-direct {p0}, Lcom/criteo/publisher/f/q;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/criteo/publisher/f/q;->f:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/criteo/publisher/f/q$f;

    invoke-direct {v1, p0, p1}, Lcom/criteo/publisher/f/q$f;-><init>(Lcom/criteo/publisher/f/q;Lcom/criteo/publisher/model/s;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
