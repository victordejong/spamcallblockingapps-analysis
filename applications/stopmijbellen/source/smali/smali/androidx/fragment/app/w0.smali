.class public abstract Landroidx/fragment/app/w0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/fragment/app/w0$c;,
        Landroidx/fragment/app/w0$d;
    }
.end annotation


# instance fields
.field public final a:Landroid/view/ViewGroup;

.field public final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/w0$d;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/w0$d;",
            ">;"
        }
    .end annotation
.end field

.field public d:Z

.field public e:Z


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/w0;->b:Ljava/util/ArrayList;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/w0;->c:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Landroidx/fragment/app/w0;->d:Z

    .line 5
    iput-boolean v0, p0, Landroidx/fragment/app/w0;->e:Z

    .line 6
    iput-object p1, p0, Landroidx/fragment/app/w0;->a:Landroid/view/ViewGroup;

    return-void
.end method

.method public static f(Landroid/view/ViewGroup;Landroidx/fragment/app/a0;)Landroidx/fragment/app/w0;
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroidx/fragment/app/a0;->L()Landroidx/fragment/app/x0;

    move-result-object p1

    .line 2
    invoke-static {p0, p1}, Landroidx/fragment/app/w0;->g(Landroid/view/ViewGroup;Landroidx/fragment/app/x0;)Landroidx/fragment/app/w0;

    move-result-object p0

    return-object p0
.end method

.method public static g(Landroid/view/ViewGroup;Landroidx/fragment/app/x0;)Landroidx/fragment/app/w0;
    .locals 3

    const v0, 0x7f09030a

    .line 1
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    .line 2
    instance-of v2, v1, Landroidx/fragment/app/w0;

    if-eqz v2, :cond_0

    .line 3
    check-cast v1, Landroidx/fragment/app/w0;

    return-object v1

    .line 4
    :cond_0
    check-cast p1, Landroidx/fragment/app/a0$f;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance p1, Landroidx/fragment/app/c;

    invoke-direct {p1, p0}, Landroidx/fragment/app/c;-><init>(Landroid/view/ViewGroup;)V

    .line 6
    invoke-virtual {p0, v0, p1}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    return-object p1
.end method


# virtual methods
.method public final a(Landroidx/fragment/app/w0$d$c;Landroidx/fragment/app/w0$d$b;Landroidx/fragment/app/g0;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/w0;->b:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2
    :try_start_0
    new-instance v1, Li0/b;

    invoke-direct {v1}, Li0/b;-><init>()V

    .line 3
    iget-object v2, p3, Landroidx/fragment/app/g0;->c:Landroidx/fragment/app/Fragment;

    .line 4
    invoke-virtual {p0, v2}, Landroidx/fragment/app/w0;->d(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/w0$d;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5
    invoke-virtual {v2, p1, p2}, Landroidx/fragment/app/w0$d;->c(Landroidx/fragment/app/w0$d$c;Landroidx/fragment/app/w0$d$b;)V

    .line 6
    monitor-exit v0

    return-void

    .line 7
    :cond_0
    new-instance v2, Landroidx/fragment/app/w0$c;

    invoke-direct {v2, p1, p2, p3, v1}, Landroidx/fragment/app/w0$c;-><init>(Landroidx/fragment/app/w0$d$c;Landroidx/fragment/app/w0$d$b;Landroidx/fragment/app/g0;Li0/b;)V

    .line 8
    iget-object p1, p0, Landroidx/fragment/app/w0;->b:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    new-instance p1, Landroidx/fragment/app/w0$a;

    invoke-direct {p1, p0, v2}, Landroidx/fragment/app/w0$a;-><init>(Landroidx/fragment/app/w0;Landroidx/fragment/app/w0$c;)V

    .line 10
    iget-object p2, v2, Landroidx/fragment/app/w0$d;->d:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    new-instance p1, Landroidx/fragment/app/w0$b;

    invoke-direct {p1, p0, v2}, Landroidx/fragment/app/w0$b;-><init>(Landroidx/fragment/app/w0;Landroidx/fragment/app/w0$c;)V

    .line 12
    iget-object p2, v2, Landroidx/fragment/app/w0$d;->d:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public abstract b(Ljava/util/List;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/fragment/app/w0$d;",
            ">;Z)V"
        }
    .end annotation
.end method

.method public c()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Landroidx/fragment/app/w0;->e:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/w0;->a:Landroid/view/ViewGroup;

    sget-object v1, Lm0/v;->a:Ljava/util/WeakHashMap;

    .line 3
    invoke-static {v0}, Lm0/v$g;->b(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/w0;->e()V

    .line 5
    iput-boolean v1, p0, Landroidx/fragment/app/w0;->d:Z

    return-void

    .line 6
    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/w0;->b:Ljava/util/ArrayList;

    monitor-enter v0

    .line 7
    :try_start_0
    iget-object v2, p0, Landroidx/fragment/app/w0;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    .line 8
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Landroidx/fragment/app/w0;->c:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 9
    iget-object v3, p0, Landroidx/fragment/app/w0;->c:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 10
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/w0$d;

    const/4 v4, 0x2

    .line 11
    invoke-static {v4}, Landroidx/fragment/app/a0;->N(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 12
    invoke-static {v3}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 13
    :cond_3
    invoke-virtual {v3}, Landroidx/fragment/app/w0$d;->a()V

    .line 14
    iget-boolean v4, v3, Landroidx/fragment/app/w0$d;->g:Z

    if-nez v4, :cond_2

    .line 15
    iget-object v4, p0, Landroidx/fragment/app/w0;->c:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 16
    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/w0;->i()V

    .line 17
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Landroidx/fragment/app/w0;->b:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 18
    iget-object v3, p0, Landroidx/fragment/app/w0;->b:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 19
    iget-object v3, p0, Landroidx/fragment/app/w0;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 20
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/w0$d;

    .line 21
    invoke-virtual {v4}, Landroidx/fragment/app/w0$d;->d()V

    goto :goto_1

    .line 22
    :cond_5
    iget-boolean v3, p0, Landroidx/fragment/app/w0;->d:Z

    invoke-virtual {p0, v2, v3}, Landroidx/fragment/app/w0;->b(Ljava/util/List;Z)V

    .line 23
    iput-boolean v1, p0, Landroidx/fragment/app/w0;->d:Z

    .line 24
    :cond_6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final d(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/w0$d;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/w0;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/w0$d;

    .line 2
    iget-object v2, v1, Landroidx/fragment/app/w0$d;->c:Landroidx/fragment/app/Fragment;

    .line 3
    invoke-virtual {v2, p1}, Landroidx/fragment/app/Fragment;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    iget-boolean v2, v1, Landroidx/fragment/app/w0$d;->f:Z

    if-nez v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public e()V
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/w0;->a:Landroid/view/ViewGroup;

    sget-object v1, Lm0/v;->a:Ljava/util/WeakHashMap;

    .line 2
    invoke-static {v0}, Lm0/v$g;->b(Landroid/view/View;)Z

    move-result v0

    .line 3
    iget-object v1, p0, Landroidx/fragment/app/w0;->b:Ljava/util/ArrayList;

    monitor-enter v1

    .line 4
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/w0;->i()V

    .line 5
    iget-object v2, p0, Landroidx/fragment/app/w0;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/w0$d;

    .line 6
    invoke-virtual {v3}, Landroidx/fragment/app/w0$d;->d()V

    goto :goto_0

    .line 7
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Landroidx/fragment/app/w0;->c:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 8
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x2

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/w0$d;

    .line 9
    invoke-static {v4}, Landroidx/fragment/app/a0;->N(I)Z

    move-result v4

    if-eqz v4, :cond_2

    if-eqz v0, :cond_1

    goto :goto_2

    .line 10
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Container "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Landroidx/fragment/app/w0;->a:Landroid/view/ViewGroup;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " is not attached to window. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    invoke-static {v3}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 11
    :cond_2
    invoke-virtual {v3}, Landroidx/fragment/app/w0$d;->a()V

    goto :goto_1

    .line 12
    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Landroidx/fragment/app/w0;->b:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 13
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/w0$d;

    .line 14
    invoke-static {v4}, Landroidx/fragment/app/a0;->N(I)Z

    move-result v5

    if-eqz v5, :cond_5

    if-eqz v0, :cond_4

    goto :goto_4

    .line 15
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Container "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Landroidx/fragment/app/w0;->a:Landroid/view/ViewGroup;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " is not attached to window. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4
    invoke-static {v3}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 16
    :cond_5
    invoke-virtual {v3}, Landroidx/fragment/app/w0$d;->a()V

    goto :goto_3

    .line 17
    :cond_6
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public h()V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/w0;->b:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/w0;->i()V

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, p0, Landroidx/fragment/app/w0;->e:Z

    .line 4
    iget-object v1, p0, Landroidx/fragment/app/w0;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    .line 5
    iget-object v2, p0, Landroidx/fragment/app/w0;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/w0$d;

    .line 6
    iget-object v3, v2, Landroidx/fragment/app/w0$d;->c:Landroidx/fragment/app/Fragment;

    .line 7
    iget-object v3, v3, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-static {v3}, Landroidx/fragment/app/w0$d$c;->c(Landroid/view/View;)Landroidx/fragment/app/w0$d$c;

    move-result-object v3

    .line 8
    iget-object v4, v2, Landroidx/fragment/app/w0$d;->a:Landroidx/fragment/app/w0$d$c;

    .line 9
    sget-object v5, Landroidx/fragment/app/w0$d$c;->b:Landroidx/fragment/app/w0$d$c;

    if-ne v4, v5, :cond_0

    if-eq v3, v5, :cond_0

    .line 10
    iget-object v1, v2, Landroidx/fragment/app/w0$d;->c:Landroidx/fragment/app/Fragment;

    .line 11
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isPostponed()Z

    move-result v1

    iput-boolean v1, p0, Landroidx/fragment/app/w0;->e:Z

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 12
    :cond_1
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final i()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/w0;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/w0$d;

    .line 2
    iget-object v2, v1, Landroidx/fragment/app/w0$d;->b:Landroidx/fragment/app/w0$d$b;

    .line 3
    sget-object v3, Landroidx/fragment/app/w0$d$b;->b:Landroidx/fragment/app/w0$d$b;

    if-ne v2, v3, :cond_0

    .line 4
    iget-object v2, v1, Landroidx/fragment/app/w0$d;->c:Landroidx/fragment/app/Fragment;

    .line 5
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->requireView()Landroid/view/View;

    move-result-object v2

    .line 6
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    invoke-static {v2}, Landroidx/fragment/app/w0$d$c;->b(I)Landroidx/fragment/app/w0$d$c;

    move-result-object v2

    .line 7
    sget-object v3, Landroidx/fragment/app/w0$d$b;->a:Landroidx/fragment/app/w0$d$b;

    invoke-virtual {v1, v2, v3}, Landroidx/fragment/app/w0$d;->c(Landroidx/fragment/app/w0$d$c;Landroidx/fragment/app/w0$d$b;)V

    goto :goto_0

    :cond_1
    return-void
.end method
