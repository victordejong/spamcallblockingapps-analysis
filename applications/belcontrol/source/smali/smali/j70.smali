.class public abstract Lj70;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Li50;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Li50;

    invoke-direct {v0}, Li50;-><init>()V

    iput-object v0, p0, Lj70;->a:Li50;

    return-void
.end method

.method public static b(Ljava/lang/String;Lo50;Z)Lj70;
    .locals 1

    new-instance v0, Lj70$b;

    invoke-direct {v0, p1, p0, p2}, Lj70$b;-><init>(Lo50;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public static c(Ljava/lang/String;Lo50;)Lj70;
    .locals 1

    new-instance v0, Lj70$a;

    invoke-direct {v0, p1, p0}, Lj70$a;-><init>(Lo50;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public a(Lo50;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Lo50;->n()Landroidx/work/impl/WorkDatabase;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lj70;->e(Landroidx/work/impl/WorkDatabase;Ljava/lang/String;)V

    invoke-virtual {p1}, Lo50;->l()Lj50;

    move-result-object v0

    invoke-virtual {v0, p2}, Lj50;->h(Ljava/lang/String;)Z

    invoke-virtual {p1}, Lo50;->m()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lk50;

    invoke-interface {v0, p2}, Lk50;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public d()La50;
    .locals 1

    iget-object v0, p0, Lj70;->a:Li50;

    return-object v0
.end method

.method public final e(Landroidx/work/impl/WorkDatabase;Ljava/lang/String;)V
    .locals 5

    invoke-virtual {p1}, Landroidx/work/impl/WorkDatabase;->y()Ld70;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/work/impl/WorkDatabase;->s()Lu60;

    move-result-object p1

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {v1, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :goto_0
    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {v1}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-interface {v0, p2}, Ld70;->e(Ljava/lang/String;)Ld50;

    move-result-object v2

    sget-object v3, Ld50;->c:Ld50;

    if-eq v2, v3, :cond_0

    sget-object v3, Ld50;->d:Ld50;

    if-eq v2, v3, :cond_0

    sget-object v2, Ld50;->g:Ld50;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-interface {v0, v2, v3}, Ld70;->a(Ld50;[Ljava/lang/String;)I

    :cond_0
    invoke-interface {p1, p2}, Lu60;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public f(Lo50;)V
    .locals 2

    invoke-virtual {p1}, Lo50;->h()Lr40;

    move-result-object v0

    invoke-virtual {p1}, Lo50;->n()Landroidx/work/impl/WorkDatabase;

    move-result-object v1

    invoke-virtual {p1}, Lo50;->m()Ljava/util/List;

    move-result-object p1

    invoke-static {v0, v1, p1}, Ll50;->b(Lr40;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    return-void
.end method

.method public abstract g()V
.end method

.method public run()V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lj70;->g()V

    iget-object v0, p0, Lj70;->a:Li50;

    sget-object v1, La50;->a:La50$b$c;

    invoke-virtual {v0, v1}, Li50;->a(La50$b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lj70;->a:Li50;

    new-instance v2, La50$b$a;

    invoke-direct {v2, v0}, La50$b$a;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Li50;->a(La50$b;)V

    :goto_0
    return-void
.end method
