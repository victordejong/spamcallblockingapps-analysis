.class public abstract Landroidx/work/impl/utils/a;
.super Ljava/lang/Object;
.source "CancelWorkRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Landroidx/work/impl/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Landroidx/work/impl/b;

    invoke-direct {v0}, Landroidx/work/impl/b;-><init>()V

    iput-object v0, p0, Landroidx/work/impl/utils/a;->a:Landroidx/work/impl/b;

    return-void
.end method

.method public static a(Ljava/lang/String;Landroidx/work/impl/i;Z)Landroidx/work/impl/utils/a;
    .locals 1

    .prologue
    .line 176
    new-instance v0, Landroidx/work/impl/utils/a$2;

    invoke-direct {v0, p1, p0, p2}, Landroidx/work/impl/utils/a$2;-><init>(Landroidx/work/impl/i;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public static a(Ljava/util/UUID;Landroidx/work/impl/i;)Landroidx/work/impl/utils/a;
    .locals 1

    .prologue
    .line 116
    new-instance v0, Landroidx/work/impl/utils/a$1;

    invoke-direct {v0, p1, p0}, Landroidx/work/impl/utils/a$1;-><init>(Landroidx/work/impl/i;Ljava/util/UUID;)V

    return-object v0
.end method

.method private a(Landroidx/work/impl/WorkDatabase;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 89
    invoke-virtual {p1}, Landroidx/work/impl/WorkDatabase;->o()Landroidx/work/impl/b/q;

    move-result-object v1

    .line 90
    invoke-virtual {p1}, Landroidx/work/impl/WorkDatabase;->p()Landroidx/work/impl/b/b;

    move-result-object v2

    .line 93
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 94
    invoke-virtual {v3, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 95
    :goto_0
    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 96
    invoke-virtual {v3}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 98
    invoke-interface {v1, v0}, Landroidx/work/impl/b/q;->f(Ljava/lang/String;)Landroidx/work/s$a;

    move-result-object v4

    .line 99
    sget-object v5, Landroidx/work/s$a;->c:Landroidx/work/s$a;

    if-eq v4, v5, :cond_0

    sget-object v5, Landroidx/work/s$a;->d:Landroidx/work/s$a;

    if-eq v4, v5, :cond_0

    .line 100
    sget-object v4, Landroidx/work/s$a;->f:Landroidx/work/s$a;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-interface {v1, v4, v5}, Landroidx/work/impl/b/q;->a(Landroidx/work/s$a;[Ljava/lang/String;)I

    .line 102
    :cond_0
    invoke-interface {v2, v0}, Landroidx/work/impl/b/b;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 104
    :cond_1
    return-void
.end method


# virtual methods
.method public a()Landroidx/work/n;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Landroidx/work/impl/utils/a;->a:Landroidx/work/impl/b;

    return-object v0
.end method

.method a(Landroidx/work/impl/i;)V
    .locals 3

    .prologue
    .line 82
    .line 83
    invoke-virtual {p1}, Landroidx/work/impl/i;->d()Landroidx/work/b;

    move-result-object v0

    .line 84
    invoke-virtual {p1}, Landroidx/work/impl/i;->c()Landroidx/work/impl/WorkDatabase;

    move-result-object v1

    .line 85
    invoke-virtual {p1}, Landroidx/work/impl/i;->e()Ljava/util/List;

    move-result-object v2

    .line 82
    invoke-static {v0, v1, v2}, Landroidx/work/impl/e;->a(Landroidx/work/b;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    .line 86
    return-void
.end method

.method a(Landroidx/work/impl/i;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 71
    invoke-virtual {p1}, Landroidx/work/impl/i;->c()Landroidx/work/impl/WorkDatabase;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Landroidx/work/impl/utils/a;->a(Landroidx/work/impl/WorkDatabase;Ljava/lang/String;)V

    .line 73
    invoke-virtual {p1}, Landroidx/work/impl/i;->f()Landroidx/work/impl/c;

    move-result-object v0

    .line 74
    invoke-virtual {v0, p2}, Landroidx/work/impl/c;->d(Ljava/lang/String;)Z

    .line 76
    invoke-virtual {p1}, Landroidx/work/impl/i;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/work/impl/d;

    .line 77
    invoke-interface {v0, p2}, Landroidx/work/impl/d;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 79
    :cond_0
    return-void
.end method

.method abstract b()V
.end method

.method public run()V
    .locals 3

    .prologue
    .line 61
    :try_start_0
    invoke-virtual {p0}, Landroidx/work/impl/utils/a;->b()V

    .line 62
    iget-object v0, p0, Landroidx/work/impl/utils/a;->a:Landroidx/work/impl/b;

    sget-object v1, Landroidx/work/n;->a:Landroidx/work/n$a$c;

    invoke-virtual {v0, v1}, Landroidx/work/impl/b;->a(Landroidx/work/n$a;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :goto_0
    return-void

    .line 63
    :catch_0
    move-exception v0

    .line 64
    iget-object v1, p0, Landroidx/work/impl/utils/a;->a:Landroidx/work/impl/b;

    new-instance v2, Landroidx/work/n$a$a;

    invoke-direct {v2, v0}, Landroidx/work/n$a$a;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroidx/work/impl/b;->a(Landroidx/work/n$a;)V

    goto :goto_0
.end method
