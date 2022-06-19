.class public abstract Landroidx/work/impl/utils/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Landroidx/work/impl/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Landroidx/work/impl/c;

    invoke-direct {v0}, Landroidx/work/impl/c;-><init>()V

    iput-object v0, p0, Landroidx/work/impl/utils/a;->a:Landroidx/work/impl/c;

    return-void
.end method

.method public static a(Ljava/lang/String;Landroidx/work/impl/j;)Landroidx/work/impl/utils/a;
    .locals 1

    .line 143
    new-instance v0, Landroidx/work/impl/utils/a$2;

    invoke-direct {v0, p1, p0}, Landroidx/work/impl/utils/a$2;-><init>(Landroidx/work/impl/j;Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(Ljava/util/UUID;Landroidx/work/impl/j;)Landroidx/work/impl/utils/a;
    .locals 1

    .line 116
    new-instance v0, Landroidx/work/impl/utils/a$1;

    invoke-direct {v0, p1, p0}, Landroidx/work/impl/utils/a$1;-><init>(Landroidx/work/impl/j;Ljava/util/UUID;)V

    return-object v0
.end method

.method static a(Landroidx/work/impl/j;)V
    .locals 2

    .line 4327
    iget-object v0, p0, Landroidx/work/impl/j;->b:Landroidx/work/Configuration;

    .line 5317
    iget-object v1, p0, Landroidx/work/impl/j;->c:Landroidx/work/impl/WorkDatabase;

    .line 5337
    iget-object p0, p0, Landroidx/work/impl/j;->e:Ljava/util/List;

    .line 82
    invoke-static {v0, v1, p0}, Landroidx/work/impl/f;->a(Landroidx/work/Configuration;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    return-void
.end method

.method static a(Landroidx/work/impl/j;Ljava/lang/String;)V
    .locals 7

    .line 1317
    iget-object v0, p0, Landroidx/work/impl/j;->c:Landroidx/work/impl/WorkDatabase;

    .line 2089
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->j()Landroidx/work/impl/model/WorkSpecDao;

    move-result-object v1

    .line 2090
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->k()Landroidx/work/impl/model/DependencyDao;

    move-result-object v0

    .line 2093
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 2094
    invoke-virtual {v2, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 2095
    :goto_0
    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 2096
    invoke-virtual {v2}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2098
    invoke-interface {v1, v3}, Landroidx/work/impl/model/WorkSpecDao;->getState(Ljava/lang/String;)Landroidx/work/t$a;

    move-result-object v4

    .line 2099
    sget-object v5, Landroidx/work/t$a;->SUCCEEDED:Landroidx/work/t$a;

    if-eq v4, v5, :cond_0

    sget-object v5, Landroidx/work/t$a;->FAILED:Landroidx/work/t$a;

    if-eq v4, v5, :cond_0

    .line 2100
    sget-object v4, Landroidx/work/t$a;->CANCELLED:Landroidx/work/t$a;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    invoke-interface {v1, v4, v5}, Landroidx/work/impl/model/WorkSpecDao;->setState(Landroidx/work/t$a;[Ljava/lang/String;)I

    .line 2102
    :cond_0
    invoke-interface {v0, v3}, Landroidx/work/impl/model/DependencyDao;->getDependentWorkIds(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 2346
    :cond_1
    iget-object v0, p0, Landroidx/work/impl/j;->f:Landroidx/work/impl/d;

    .line 74
    invoke-virtual {v0, p1}, Landroidx/work/impl/d;->c(Ljava/lang/String;)Z

    .line 3337
    iget-object p0, p0, Landroidx/work/impl/j;->e:Ljava/util/List;

    .line 76
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/work/impl/e;

    .line 77
    invoke-interface {v0, p1}, Landroidx/work/impl/e;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public static b(Landroidx/work/impl/j;)Landroidx/work/impl/utils/a;
    .locals 1

    .line 207
    new-instance v0, Landroidx/work/impl/utils/a$4;

    invoke-direct {v0, p0}, Landroidx/work/impl/utils/a$4;-><init>(Landroidx/work/impl/j;)V

    return-object v0
.end method

.method public static b(Ljava/lang/String;Landroidx/work/impl/j;)Landroidx/work/impl/utils/a;
    .locals 2

    .line 176
    new-instance v0, Landroidx/work/impl/utils/a$3;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1}, Landroidx/work/impl/utils/a$3;-><init>(Landroidx/work/impl/j;Ljava/lang/String;Z)V

    return-object v0
.end method


# virtual methods
.method abstract a()V
.end method

.method public run()V
    .locals 3

    .line 61
    :try_start_0
    invoke-virtual {p0}, Landroidx/work/impl/utils/a;->a()V

    .line 62
    iget-object v0, p0, Landroidx/work/impl/utils/a;->a:Landroidx/work/impl/c;

    sget-object v1, Landroidx/work/n;->a:Landroidx/work/n$a$c;

    invoke-virtual {v0, v1}, Landroidx/work/impl/c;->a(Landroidx/work/n$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 64
    iget-object v1, p0, Landroidx/work/impl/utils/a;->a:Landroidx/work/impl/c;

    new-instance v2, Landroidx/work/n$a$a;

    invoke-direct {v2, v0}, Landroidx/work/n$a$a;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroidx/work/impl/c;->a(Landroidx/work/n$a;)V

    return-void
.end method
