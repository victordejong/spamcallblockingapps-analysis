.class Landroidx/work/impl/background/systemalarm/c;
.super Ljava/lang/Object;
.source "ConstraintsCommandHandler.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:I

.field private final d:Landroidx/work/impl/background/systemalarm/e;

.field private final e:Landroidx/work/impl/a/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-string/jumbo v0, "ConstraintsCmdHandler"

    invoke-static {v0}, Landroidx/work/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/work/impl/background/systemalarm/c;->a:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;ILandroidx/work/impl/background/systemalarm/e;)V
    .locals 4

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Landroidx/work/impl/background/systemalarm/c;->b:Landroid/content/Context;

    .line 55
    iput p2, p0, Landroidx/work/impl/background/systemalarm/c;->c:I

    .line 56
    iput-object p3, p0, Landroidx/work/impl/background/systemalarm/c;->d:Landroidx/work/impl/background/systemalarm/e;

    .line 57
    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/c;->d:Landroidx/work/impl/background/systemalarm/e;

    invoke-virtual {v0}, Landroidx/work/impl/background/systemalarm/e;->e()Landroidx/work/impl/utils/b/a;

    move-result-object v0

    .line 58
    new-instance v1, Landroidx/work/impl/a/d;

    iget-object v2, p0, Landroidx/work/impl/background/systemalarm/c;->b:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Landroidx/work/impl/a/d;-><init>(Landroid/content/Context;Landroidx/work/impl/utils/b/a;Landroidx/work/impl/a/c;)V

    iput-object v1, p0, Landroidx/work/impl/background/systemalarm/c;->e:Landroidx/work/impl/a/d;

    .line 59
    return-void
.end method


# virtual methods
.method a()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 63
    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/c;->d:Landroidx/work/impl/background/systemalarm/e;

    invoke-virtual {v0}, Landroidx/work/impl/background/systemalarm/e;->d()Landroidx/work/impl/i;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/work/impl/i;->c()Landroidx/work/impl/WorkDatabase;

    move-result-object v0

    .line 64
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->o()Landroidx/work/impl/b/q;

    move-result-object v0

    .line 65
    invoke-interface {v0}, Landroidx/work/impl/b/q;->c()Ljava/util/List;

    move-result-object v0

    .line 69
    iget-object v1, p0, Landroidx/work/impl/background/systemalarm/c;->b:Landroid/content/Context;

    invoke-static {v1, v0}, Landroidx/work/impl/background/systemalarm/ConstraintProxy;->a(Landroid/content/Context;Ljava/util/List;)V

    .line 72
    iget-object v1, p0, Landroidx/work/impl/background/systemalarm/c;->e:Landroidx/work/impl/a/d;

    invoke-virtual {v1, v0}, Landroidx/work/impl/a/d;->a(Ljava/lang/Iterable;)V

    .line 74
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 76
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 77
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/work/impl/b/p;

    .line 78
    iget-object v5, v0, Landroidx/work/impl/b/p;->a:Ljava/lang/String;

    .line 79
    invoke-virtual {v0}, Landroidx/work/impl/b/p;->c()J

    move-result-wide v6

    .line 80
    cmp-long v6, v2, v6

    if-ltz v6, :cond_0

    invoke-virtual {v0}, Landroidx/work/impl/b/p;->d()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Landroidx/work/impl/background/systemalarm/c;->e:Landroidx/work/impl/a/d;

    .line 81
    invoke-virtual {v6, v5}, Landroidx/work/impl/a/d;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 82
    :cond_1
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 86
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/work/impl/b/p;

    .line 87
    iget-object v0, v0, Landroidx/work/impl/b/p;->a:Ljava/lang/String;

    .line 88
    iget-object v2, p0, Landroidx/work/impl/background/systemalarm/c;->b:Landroid/content/Context;

    invoke-static {v2, v0}, Landroidx/work/impl/background/systemalarm/b;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 89
    invoke-static {}, Landroidx/work/l;->a()Landroidx/work/l;

    move-result-object v3

    sget-object v4, Landroidx/work/impl/background/systemalarm/c;->a:Ljava/lang/String;

    const-string/jumbo v5, "Creating a delay_met command for workSpec with id (%s)"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v5, v8, [Ljava/lang/Throwable;

    invoke-virtual {v3, v4, v0, v5}, Landroidx/work/l;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 91
    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/c;->d:Landroidx/work/impl/background/systemalarm/e;

    new-instance v3, Landroidx/work/impl/background/systemalarm/e$a;

    iget-object v4, p0, Landroidx/work/impl/background/systemalarm/c;->d:Landroidx/work/impl/background/systemalarm/e;

    iget v5, p0, Landroidx/work/impl/background/systemalarm/c;->c:I

    invoke-direct {v3, v4, v2, v5}, Landroidx/work/impl/background/systemalarm/e$a;-><init>(Landroidx/work/impl/background/systemalarm/e;Landroid/content/Intent;I)V

    invoke-virtual {v0, v3}, Landroidx/work/impl/background/systemalarm/e;->a(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 95
    :cond_3
    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/c;->e:Landroidx/work/impl/a/d;

    invoke-virtual {v0}, Landroidx/work/impl/a/d;->a()V

    .line 96
    return-void
.end method
