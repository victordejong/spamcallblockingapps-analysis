.class public abstract Landroidx/fragment/app/a0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/fragment/app/a0$j;,
        Landroidx/fragment/app/a0$k;,
        Landroidx/fragment/app/a0$n;,
        Landroidx/fragment/app/a0$m;,
        Landroidx/fragment/app/a0$l;
    }
.end annotation


# instance fields
.field public A:Z

.field public B:Z

.field public C:Z

.field public D:Z

.field public E:Z

.field public F:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/a;",
            ">;"
        }
    .end annotation
.end field

.field public G:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public H:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field public I:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/a0$n;",
            ">;"
        }
    .end annotation
.end field

.field public J:Landroidx/fragment/app/d0;

.field public K:Ljava/lang/Runnable;

.field public final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/a0$l;",
            ">;"
        }
    .end annotation
.end field

.field public b:Z

.field public final c:Landroidx/fragment/app/h0;

.field public d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/a;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Landroidx/fragment/app/y;

.field public g:Landroidx/activity/OnBackPressedDispatcher;

.field public final h:Landroidx/activity/b;

.field public final i:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field public final k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroidx/fragment/app/Fragment;",
            "Ljava/util/HashSet<",
            "Li0/b;",
            ">;>;"
        }
    .end annotation
.end field

.field public final m:Landroidx/fragment/app/p0$a;

.field public final n:Landroidx/fragment/app/z;

.field public final o:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroidx/fragment/app/e0;",
            ">;"
        }
    .end annotation
.end field

.field public p:I

.field public q:Landroidx/fragment/app/x;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/fragment/app/x<",
            "*>;"
        }
    .end annotation
.end field

.field public r:Landroidx/fragment/app/t;

.field public s:Landroidx/fragment/app/Fragment;

.field public t:Landroidx/fragment/app/Fragment;

.field public u:Landroidx/fragment/app/w;

.field public v:Landroidx/fragment/app/x0;

.field public w:Landroidx/activity/result/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/c<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field public x:Landroidx/activity/result/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/c<",
            "Landroidx/activity/result/e;",
            ">;"
        }
    .end annotation
.end field

.field public y:Landroidx/activity/result/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/c<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public z:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroidx/fragment/app/a0$k;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/a0;->a:Ljava/util/ArrayList;

    .line 3
    new-instance v0, Landroidx/fragment/app/h0;

    invoke-direct {v0}, Landroidx/fragment/app/h0;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/a0;->c:Landroidx/fragment/app/h0;

    .line 4
    new-instance v0, Landroidx/fragment/app/y;

    invoke-direct {v0, p0}, Landroidx/fragment/app/y;-><init>(Landroidx/fragment/app/a0;)V

    iput-object v0, p0, Landroidx/fragment/app/a0;->f:Landroidx/fragment/app/y;

    .line 5
    new-instance v0, Landroidx/fragment/app/a0$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/fragment/app/a0$c;-><init>(Landroidx/fragment/app/a0;Z)V

    iput-object v0, p0, Landroidx/fragment/app/a0;->h:Landroidx/activity/b;

    .line 6
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/a0;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 7
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 8
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/a0;->j:Ljava/util/Map;

    .line 9
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 10
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/a0;->k:Ljava/util/Map;

    .line 11
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 12
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/a0;->l:Ljava/util/Map;

    .line 13
    new-instance v0, Landroidx/fragment/app/a0$d;

    invoke-direct {v0, p0}, Landroidx/fragment/app/a0$d;-><init>(Landroidx/fragment/app/a0;)V

    iput-object v0, p0, Landroidx/fragment/app/a0;->m:Landroidx/fragment/app/p0$a;

    .line 14
    new-instance v0, Landroidx/fragment/app/z;

    invoke-direct {v0, p0}, Landroidx/fragment/app/z;-><init>(Landroidx/fragment/app/a0;)V

    iput-object v0, p0, Landroidx/fragment/app/a0;->n:Landroidx/fragment/app/z;

    .line 15
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/a0;->o:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v0, -0x1

    .line 16
    iput v0, p0, Landroidx/fragment/app/a0;->p:I

    .line 17
    new-instance v0, Landroidx/fragment/app/a0$e;

    invoke-direct {v0, p0}, Landroidx/fragment/app/a0$e;-><init>(Landroidx/fragment/app/a0;)V

    iput-object v0, p0, Landroidx/fragment/app/a0;->u:Landroidx/fragment/app/w;

    .line 18
    new-instance v0, Landroidx/fragment/app/a0$f;

    invoke-direct {v0, p0}, Landroidx/fragment/app/a0$f;-><init>(Landroidx/fragment/app/a0;)V

    iput-object v0, p0, Landroidx/fragment/app/a0;->v:Landroidx/fragment/app/x0;

    .line 19
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/a0;->z:Ljava/util/ArrayDeque;

    .line 20
    new-instance v0, Landroidx/fragment/app/a0$g;

    invoke-direct {v0, p0}, Landroidx/fragment/app/a0$g;-><init>(Landroidx/fragment/app/a0;)V

    iput-object v0, p0, Landroidx/fragment/app/a0;->K:Ljava/lang/Runnable;

    return-void
.end method

.method public static N(I)Z
    .locals 1

    const-string v0, "FragmentManager"

    .line 1
    invoke-static {v0, p0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public A(Landroidx/fragment/app/a0$l;Z)V
    .locals 2

    if-nez p2, :cond_3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/a0;->q:Landroidx/fragment/app/x;

    if-nez v0, :cond_1

    .line 2
    iget-boolean p1, p0, Landroidx/fragment/app/a0;->D:Z

    if-eqz p1, :cond_0

    .line 3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "FragmentManager has been destroyed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "FragmentManager has not been attached to a host."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/a0;->R()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 6
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Can not perform this action after onSaveInstanceState"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_3
    :goto_0
    iget-object v0, p0, Landroidx/fragment/app/a0;->a:Ljava/util/ArrayList;

    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, p0, Landroidx/fragment/app/a0;->q:Landroidx/fragment/app/x;

    if-nez v1, :cond_5

    if-eqz p2, :cond_4

    .line 9
    monitor-exit v0

    return-void

    .line 10
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Activity has been destroyed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_5
    iget-object p2, p0, Landroidx/fragment/app/a0;->a:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    invoke-virtual {p0}, Landroidx/fragment/app/a0;->d0()V

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

.method public final B(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/fragment/app/a0;->b:Z

    if-nez v0, :cond_6

    .line 2
    iget-object v0, p0, Landroidx/fragment/app/a0;->q:Landroidx/fragment/app/x;

    if-nez v0, :cond_1

    .line 3
    iget-boolean p1, p0, Landroidx/fragment/app/a0;->D:Z

    if-eqz p1, :cond_0

    .line 4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "FragmentManager has been destroyed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "FragmentManager has not been attached to a host."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Landroidx/fragment/app/a0;->q:Landroidx/fragment/app/x;

    .line 7
    iget-object v1, v1, Landroidx/fragment/app/x;->c:Landroid/os/Handler;

    .line 8
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_5

    if-nez p1, :cond_3

    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/a0;->R()Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    .line 10
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Can not perform this action after onSaveInstanceState"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_3
    :goto_0
    iget-object p1, p0, Landroidx/fragment/app/a0;->F:Ljava/util/ArrayList;

    if-nez p1, :cond_4

    .line 12
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/a0;->F:Ljava/util/ArrayList;

    .line 13
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/a0;->G:Ljava/util/ArrayList;

    :cond_4
    const/4 p1, 0x1

    .line 14
    iput-boolean p1, p0, Landroidx/fragment/app/a0;->b:Z

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 15
    :try_start_0
    invoke-virtual {p0, v0, v0}, Landroidx/fragment/app/a0;->F(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    iput-boolean p1, p0, Landroidx/fragment/app/a0;->b:Z

    return-void

    :catchall_0
    move-exception v0

    iput-boolean p1, p0, Landroidx/fragment/app/a0;->b:Z

    .line 17
    throw v0

    .line 18
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Must be called from main thread of fragment host"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 19
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "FragmentManager is already executing transactions"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public C(Z)Z
    .locals 9

    .line 1
    invoke-virtual {p0, p1}, Landroidx/fragment/app/a0;->B(Z)V

    const/4 p1, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget-object v2, p0, Landroidx/fragment/app/a0;->F:Ljava/util/ArrayList;

    iget-object v3, p0, Landroidx/fragment/app/a0;->G:Ljava/util/ArrayList;

    .line 3
    iget-object v4, p0, Landroidx/fragment/app/a0;->a:Ljava/util/ArrayList;

    monitor-enter v4

    .line 4
    :try_start_0
    iget-object v5, p0, Landroidx/fragment/app/a0;->a:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 5
    monitor-exit v4

    const/4 v7, 0x0

    goto :goto_2

    .line 6
    :cond_0
    iget-object v5, p0, Landroidx/fragment/app/a0;->a:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_1
    if-ge v6, v5, :cond_1

    .line 7
    iget-object v8, p0, Landroidx/fragment/app/a0;->a:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/fragment/app/a0$l;

    invoke-interface {v8, v2, v3}, Landroidx/fragment/app/a0$l;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v8

    or-int/2addr v7, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 8
    :cond_1
    iget-object v2, p0, Landroidx/fragment/app/a0;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 9
    iget-object v2, p0, Landroidx/fragment/app/a0;->q:Landroidx/fragment/app/x;

    .line 10
    iget-object v2, v2, Landroidx/fragment/app/x;->c:Landroid/os/Handler;

    .line 11
    iget-object v3, p0, Landroidx/fragment/app/a0;->K:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 12
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_2
    if-eqz v7, :cond_2

    .line 13
    iput-boolean p1, p0, Landroidx/fragment/app/a0;->b:Z

    .line 14
    :try_start_1
    iget-object v1, p0, Landroidx/fragment/app/a0;->F:Ljava/util/ArrayList;

    iget-object v2, p0, Landroidx/fragment/app/a0;->G:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, v2}, Landroidx/fragment/app/a0;->a0(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    invoke-virtual {p0}, Landroidx/fragment/app/a0;->e()V

    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Landroidx/fragment/app/a0;->e()V

    .line 16
    throw p1

    .line 17
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/a0;->k0()V

    .line 18
    invoke-virtual {p0}, Landroidx/fragment/app/a0;->x()V

    .line 19
    iget-object p1, p0, Landroidx/fragment/app/a0;->c:Landroidx/fragment/app/h0;

    invoke-virtual {p1}, Landroidx/fragment/app/h0;->b()V

    return v1

    :catchall_1
    move-exception p1

    .line 20
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public D(Landroidx/fragment/app/a0$l;Z)V
    .locals 1

    if-eqz p2, :cond_1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/a0;->q:Landroidx/fragment/app/x;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/fragment/app/a0;->D:Z

    if-eqz v0, :cond_1

    :cond_0
    return-void

    .line 2
    :cond_1
    invoke-virtual {p0, p2}, Landroidx/fragment/app/a0;->B(Z)V

    .line 3
    iget-object p2, p0, Landroidx/fragment/app/a0;->F:Ljava/util/ArrayList;

    iget-object v0, p0, Landroidx/fragment/app/a0;->G:Ljava/util/ArrayList;

    check-cast p1, Landroidx/fragment/app/a;

    invoke-virtual {p1, p2, v0}, Landroidx/fragment/app/a;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Landroidx/fragment/app/a0;->b:Z

    .line 5
    :try_start_0
    iget-object p1, p0, Landroidx/fragment/app/a0;->F:Ljava/util/ArrayList;

    iget-object p2, p0, Landroidx/fragment/app/a0;->G:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/a0;->a0(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/a0;->e()V

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/a0;->k0()V

    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/a0;->x()V

    .line 9
    iget-object p1, p0, Landroidx/fragment/app/a0;->c:Landroidx/fragment/app/h0;

    invoke-virtual {p1}, Landroidx/fragment/app/h0;->b()V

    return-void

    :catchall_0
    move-exception p1

    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/a0;->e()V

    .line 11
    throw p1
.end method

.method public final E(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/a;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;II)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    .line 1
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/fragment/app/a;

    iget-boolean v5, v5, Landroidx/fragment/app/i0;->p:Z

    .line 2
    iget-object v6, v0, Landroidx/fragment/app/a0;->H:Ljava/util/ArrayList;

    if-nez v6, :cond_0

    .line 3
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v0, Landroidx/fragment/app/a0;->H:Ljava/util/ArrayList;

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 5
    :goto_0
    iget-object v6, v0, Landroidx/fragment/app/a0;->H:Ljava/util/ArrayList;

    iget-object v7, v0, Landroidx/fragment/app/a0;->c:Landroidx/fragment/app/h0;

    invoke-virtual {v7}, Landroidx/fragment/app/h0;->i()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 6
    iget-object v6, v0, Landroidx/fragment/app/a0;->t:Landroidx/fragment/app/Fragment;

    move v8, v3

    const/4 v9, 0x0

    :goto_1
    const/4 v11, 0x1

    if-ge v8, v4, :cond_11

    .line 7
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/fragment/app/a;

    .line 8
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    const/4 v15, 0x3

    if-nez v13, :cond_b

    .line 9
    iget-object v13, v0, Landroidx/fragment/app/a0;->H:Ljava/util/ArrayList;

    const/4 v7, 0x0

    .line 10
    :goto_2
    iget-object v14, v12, Landroidx/fragment/app/i0;->a:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v7, v14, :cond_e

    .line 11
    iget-object v14, v12, Landroidx/fragment/app/i0;->a:Ljava/util/ArrayList;

    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/fragment/app/i0$a;

    .line 12
    iget v10, v14, Landroidx/fragment/app/i0$a;->a:I

    if-eq v10, v11, :cond_a

    const/4 v11, 0x2

    const/16 v3, 0x9

    if-eq v10, v11, :cond_3

    if-eq v10, v15, :cond_2

    const/4 v11, 0x6

    if-eq v10, v11, :cond_2

    const/4 v11, 0x7

    if-eq v10, v11, :cond_a

    const/16 v11, 0x8

    if-eq v10, v11, :cond_1

    goto/16 :goto_6

    .line 13
    :cond_1
    iget-object v10, v12, Landroidx/fragment/app/i0;->a:Ljava/util/ArrayList;

    new-instance v11, Landroidx/fragment/app/i0$a;

    invoke-direct {v11, v3, v6}, Landroidx/fragment/app/i0$a;-><init>(ILandroidx/fragment/app/Fragment;)V

    invoke-virtual {v10, v7, v11}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v7, v7, 0x1

    .line 14
    iget-object v6, v14, Landroidx/fragment/app/i0$a;->b:Landroidx/fragment/app/Fragment;

    goto/16 :goto_6

    .line 15
    :cond_2
    iget-object v10, v14, Landroidx/fragment/app/i0$a;->b:Landroidx/fragment/app/Fragment;

    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 16
    iget-object v10, v14, Landroidx/fragment/app/i0$a;->b:Landroidx/fragment/app/Fragment;

    if-ne v10, v6, :cond_8

    .line 17
    iget-object v6, v12, Landroidx/fragment/app/i0;->a:Ljava/util/ArrayList;

    new-instance v11, Landroidx/fragment/app/i0$a;

    invoke-direct {v11, v3, v10}, Landroidx/fragment/app/i0$a;-><init>(ILandroidx/fragment/app/Fragment;)V

    invoke-virtual {v6, v7, v11}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v7, v7, 0x1

    const/4 v2, 0x1

    const/4 v6, 0x0

    goto/16 :goto_7

    .line 18
    :cond_3
    iget-object v10, v14, Landroidx/fragment/app/i0$a;->b:Landroidx/fragment/app/Fragment;

    .line 19
    iget v11, v10, Landroidx/fragment/app/Fragment;->mContainerId:I

    .line 20
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v17

    const/16 v16, -0x1

    add-int/lit8 v17, v17, -0x1

    move/from16 v15, v17

    const/16 v17, 0x0

    :goto_3
    if-ltz v15, :cond_7

    .line 21
    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v3, v18

    check-cast v3, Landroidx/fragment/app/Fragment;

    .line 22
    iget v2, v3, Landroidx/fragment/app/Fragment;->mContainerId:I

    if-ne v2, v11, :cond_6

    if-ne v3, v10, :cond_4

    move/from16 v18, v11

    const/16 v17, 0x1

    goto :goto_5

    :cond_4
    if-ne v3, v6, :cond_5

    .line 23
    iget-object v2, v12, Landroidx/fragment/app/i0;->a:Ljava/util/ArrayList;

    new-instance v6, Landroidx/fragment/app/i0$a;

    move/from16 v18, v11

    const/16 v11, 0x9

    invoke-direct {v6, v11, v3}, Landroidx/fragment/app/i0$a;-><init>(ILandroidx/fragment/app/Fragment;)V

    invoke-virtual {v2, v7, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v7, v7, 0x1

    const/4 v6, 0x0

    goto :goto_4

    :cond_5
    move/from16 v18, v11

    const/16 v11, 0x9

    .line 24
    :goto_4
    new-instance v2, Landroidx/fragment/app/i0$a;

    const/4 v11, 0x3

    invoke-direct {v2, v11, v3}, Landroidx/fragment/app/i0$a;-><init>(ILandroidx/fragment/app/Fragment;)V

    .line 25
    iget v11, v14, Landroidx/fragment/app/i0$a;->c:I

    iput v11, v2, Landroidx/fragment/app/i0$a;->c:I

    .line 26
    iget v11, v14, Landroidx/fragment/app/i0$a;->e:I

    iput v11, v2, Landroidx/fragment/app/i0$a;->e:I

    .line 27
    iget v11, v14, Landroidx/fragment/app/i0$a;->d:I

    iput v11, v2, Landroidx/fragment/app/i0$a;->d:I

    .line 28
    iget v11, v14, Landroidx/fragment/app/i0$a;->f:I

    iput v11, v2, Landroidx/fragment/app/i0$a;->f:I

    .line 29
    iget-object v11, v12, Landroidx/fragment/app/i0;->a:Ljava/util/ArrayList;

    invoke-virtual {v11, v7, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 30
    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    add-int/2addr v7, v2

    goto :goto_5

    :cond_6
    move/from16 v18, v11

    :goto_5
    add-int/lit8 v15, v15, -0x1

    move-object/from16 v2, p2

    move/from16 v11, v18

    const/16 v3, 0x9

    goto :goto_3

    :cond_7
    if-eqz v17, :cond_9

    .line 31
    iget-object v2, v12, Landroidx/fragment/app/i0;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v7, v7, -0x1

    :cond_8
    :goto_6
    const/4 v2, 0x1

    goto :goto_7

    :cond_9
    const/4 v2, 0x1

    .line 32
    iput v2, v14, Landroidx/fragment/app/i0$a;->a:I

    .line 33
    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_a
    const/4 v2, 0x1

    .line 34
    iget-object v3, v14, Landroidx/fragment/app/i0$a;->b:Landroidx/fragment/app/Fragment;

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_7
    add-int/2addr v7, v2

    move-object/from16 v2, p2

    move/from16 v3, p3

    const/4 v11, 0x1

    const/4 v15, 0x3

    goto/16 :goto_2

    :cond_b
    const/4 v2, 0x1

    .line 35
    iget-object v3, v0, Landroidx/fragment/app/a0;->H:Ljava/util/ArrayList;

    .line 36
    iget-object v7, v12, Landroidx/fragment/app/i0;->a:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int/2addr v7, v2

    :goto_8
    if-ltz v7, :cond_e

    .line 37
    iget-object v10, v12, Landroidx/fragment/app/i0;->a:Ljava/util/ArrayList;

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/fragment/app/i0$a;

    .line 38
    iget v11, v10, Landroidx/fragment/app/i0$a;->a:I

    if-eq v11, v2, :cond_d

    const/4 v2, 0x3

    if-eq v11, v2, :cond_c

    packed-switch v11, :pswitch_data_0

    goto :goto_9

    .line 39
    :pswitch_0
    iget-object v11, v10, Landroidx/fragment/app/i0$a;->g:Landroidx/lifecycle/f$c;

    iput-object v11, v10, Landroidx/fragment/app/i0$a;->h:Landroidx/lifecycle/f$c;

    goto :goto_9

    .line 40
    :pswitch_1
    iget-object v6, v10, Landroidx/fragment/app/i0$a;->b:Landroidx/fragment/app/Fragment;

    goto :goto_9

    :pswitch_2
    const/4 v6, 0x0

    goto :goto_9

    .line 41
    :cond_c
    :pswitch_3
    iget-object v10, v10, Landroidx/fragment/app/i0$a;->b:Landroidx/fragment/app/Fragment;

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_d
    const/4 v2, 0x3

    .line 42
    :pswitch_4
    iget-object v10, v10, Landroidx/fragment/app/i0$a;->b:Landroidx/fragment/app/Fragment;

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :goto_9
    add-int/lit8 v7, v7, -0x1

    const/4 v2, 0x1

    goto :goto_8

    :cond_e
    if-nez v9, :cond_10

    .line 43
    iget-boolean v2, v12, Landroidx/fragment/app/i0;->g:Z

    if-eqz v2, :cond_f

    goto :goto_a

    :cond_f
    const/4 v9, 0x0

    goto :goto_b

    :cond_10
    :goto_a
    const/4 v9, 0x1

    :goto_b
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v2, p2

    move/from16 v3, p3

    goto/16 :goto_1

    .line 44
    :cond_11
    iget-object v2, v0, Landroidx/fragment/app/a0;->H:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    if-nez v5, :cond_14

    .line 45
    iget v2, v0, Landroidx/fragment/app/a0;->p:I

    const/4 v3, 0x1

    if-lt v2, v3, :cond_14

    move/from16 v2, p3

    :goto_c
    if-ge v2, v4, :cond_14

    .line 46
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/a;

    .line 47
    iget-object v3, v3, Landroidx/fragment/app/i0;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_12
    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_13

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/fragment/app/i0$a;

    .line 48
    iget-object v5, v5, Landroidx/fragment/app/i0$a;->b:Landroidx/fragment/app/Fragment;

    if-eqz v5, :cond_12

    .line 49
    iget-object v6, v5, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/a0;

    if-eqz v6, :cond_12

    .line 50
    invoke-virtual {v0, v5}, Landroidx/fragment/app/a0;->h(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/g0;

    move-result-object v5

    .line 51
    iget-object v6, v0, Landroidx/fragment/app/a0;->c:Landroidx/fragment/app/h0;

    invoke-virtual {v6, v5}, Landroidx/fragment/app/h0;->j(Landroidx/fragment/app/g0;)V

    goto :goto_d

    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_14
    move/from16 v2, p3

    :goto_e
    if-ge v2, v4, :cond_17

    .line 52
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/a;

    move-object/from16 v5, p2

    .line 53
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_16

    const/4 v6, -0x1

    .line 54
    invoke-virtual {v3, v6}, Landroidx/fragment/app/a;->f(I)V

    add-int/lit8 v6, v4, -0x1

    if-ne v2, v6, :cond_15

    const/4 v6, 0x1

    goto :goto_f

    :cond_15
    const/4 v6, 0x0

    .line 55
    :goto_f
    invoke-virtual {v3, v6}, Landroidx/fragment/app/a;->l(Z)V

    goto :goto_10

    :cond_16
    const/4 v6, 0x1

    .line 56
    invoke-virtual {v3, v6}, Landroidx/fragment/app/a;->f(I)V

    .line 57
    invoke-virtual {v3}, Landroidx/fragment/app/a;->k()V

    :goto_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_17
    move-object/from16 v5, p2

    add-int/lit8 v2, v4, -0x1

    .line 58
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move/from16 v3, p3

    :goto_11
    if-ge v3, v4, :cond_1c

    .line 59
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/fragment/app/a;

    if-eqz v2, :cond_19

    .line 60
    iget-object v7, v6, Landroidx/fragment/app/i0;->a:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    :goto_12
    if-ltz v7, :cond_1b

    .line 61
    iget-object v8, v6, Landroidx/fragment/app/i0;->a:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/fragment/app/i0$a;

    .line 62
    iget-object v8, v8, Landroidx/fragment/app/i0$a;->b:Landroidx/fragment/app/Fragment;

    if-eqz v8, :cond_18

    .line 63
    invoke-virtual {v0, v8}, Landroidx/fragment/app/a0;->h(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/g0;

    move-result-object v8

    .line 64
    invoke-virtual {v8}, Landroidx/fragment/app/g0;->k()V

    :cond_18
    add-int/lit8 v7, v7, -0x1

    goto :goto_12

    .line 65
    :cond_19
    iget-object v6, v6, Landroidx/fragment/app/i0;->a:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1a
    :goto_13
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/fragment/app/i0$a;

    .line 66
    iget-object v7, v7, Landroidx/fragment/app/i0$a;->b:Landroidx/fragment/app/Fragment;

    if-eqz v7, :cond_1a

    .line 67
    invoke-virtual {v0, v7}, Landroidx/fragment/app/a0;->h(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/g0;

    move-result-object v7

    .line 68
    invoke-virtual {v7}, Landroidx/fragment/app/g0;->k()V

    goto :goto_13

    :cond_1b
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 69
    :cond_1c
    iget v3, v0, Landroidx/fragment/app/a0;->p:I

    const/4 v6, 0x1

    invoke-virtual {v0, v3, v6}, Landroidx/fragment/app/a0;->S(IZ)V

    .line 70
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    move/from16 v6, p3

    :goto_14
    if-ge v6, v4, :cond_1f

    .line 71
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/fragment/app/a;

    .line 72
    iget-object v7, v7, Landroidx/fragment/app/i0;->a:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1d
    :goto_15
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1e

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/fragment/app/i0$a;

    .line 73
    iget-object v8, v8, Landroidx/fragment/app/i0$a;->b:Landroidx/fragment/app/Fragment;

    if-eqz v8, :cond_1d

    .line 74
    iget-object v8, v8, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v8, :cond_1d

    .line 75
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/a0;->L()Landroidx/fragment/app/x0;

    move-result-object v9

    .line 76
    invoke-static {v8, v9}, Landroidx/fragment/app/w0;->g(Landroid/view/ViewGroup;Landroidx/fragment/app/x0;)Landroidx/fragment/app/w0;

    move-result-object v8

    .line 77
    invoke-virtual {v3, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_15

    :cond_1e
    add-int/lit8 v6, v6, 0x1

    goto :goto_14

    .line 78
    :cond_1f
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_16
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_20

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/fragment/app/w0;

    .line 79
    iput-boolean v2, v6, Landroidx/fragment/app/w0;->d:Z

    .line 80
    invoke-virtual {v6}, Landroidx/fragment/app/w0;->h()V

    .line 81
    invoke-virtual {v6}, Landroidx/fragment/app/w0;->c()V

    goto :goto_16

    :cond_20
    move/from16 v2, p3

    :goto_17
    if-ge v2, v4, :cond_22

    .line 82
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/a;

    .line 83
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_21

    .line 84
    iget v6, v3, Landroidx/fragment/app/a;->s:I

    if-ltz v6, :cond_21

    const/4 v6, -0x1

    .line 85
    iput v6, v3, Landroidx/fragment/app/a;->s:I

    goto :goto_18

    :cond_21
    const/4 v6, -0x1

    .line 86
    :goto_18
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    :cond_22
    return-void

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final F(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/a;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/a0;->I:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_6

    .line 2
    iget-object v3, p0, Landroidx/fragment/app/a0;->I:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/a0$n;

    const/4 v4, 0x1

    const/4 v5, -0x1

    if-eqz p1, :cond_1

    .line 3
    iget-boolean v6, v3, Landroidx/fragment/app/a0$n;->a:Z

    if-nez v6, :cond_1

    .line 4
    iget-object v6, v3, Landroidx/fragment/app/a0$n;->b:Landroidx/fragment/app/a;

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    if-eq v6, v5, :cond_1

    if-eqz p2, :cond_1

    .line 5
    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 6
    iget-object v5, p0, Landroidx/fragment/app/a0;->I:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v0, v0, -0x1

    .line 7
    iget-object v5, v3, Landroidx/fragment/app/a0$n;->b:Landroidx/fragment/app/a;

    iget-object v6, v5, Landroidx/fragment/app/a;->q:Landroidx/fragment/app/a0;

    iget-boolean v3, v3, Landroidx/fragment/app/a0$n;->a:Z

    invoke-virtual {v6, v5, v3, v1, v1}, Landroidx/fragment/app/a0;->g(Landroidx/fragment/app/a;ZZZ)V

    goto :goto_3

    .line 8
    :cond_1
    iget v6, v3, Landroidx/fragment/app/a0$n;->c:I

    if-nez v6, :cond_2

    const/4 v6, 0x1

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    :goto_2
    if-nez v6, :cond_3

    if-eqz p1, :cond_5

    .line 9
    iget-object v6, v3, Landroidx/fragment/app/a0$n;->b:Landroidx/fragment/app/a;

    .line 10
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, p1, v1, v7}, Landroidx/fragment/app/a;->n(Ljava/util/ArrayList;II)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 11
    :cond_3
    iget-object v6, p0, Landroidx/fragment/app/a0;->I:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v0, v0, -0x1

    if-eqz p1, :cond_4

    .line 12
    iget-boolean v6, v3, Landroidx/fragment/app/a0$n;->a:Z

    if-nez v6, :cond_4

    iget-object v6, v3, Landroidx/fragment/app/a0$n;->b:Landroidx/fragment/app/a;

    .line 13
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    if-eq v6, v5, :cond_4

    if-eqz p2, :cond_4

    .line 14
    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 15
    iget-object v5, v3, Landroidx/fragment/app/a0$n;->b:Landroidx/fragment/app/a;

    iget-object v6, v5, Landroidx/fragment/app/a;->q:Landroidx/fragment/app/a0;

    iget-boolean v3, v3, Landroidx/fragment/app/a0$n;->a:Z

    invoke-virtual {v6, v5, v3, v1, v1}, Landroidx/fragment/app/a0;->g(Landroidx/fragment/app/a;ZZZ)V

    goto :goto_3

    .line 16
    :cond_4
    invoke-virtual {v3}, Landroidx/fragment/app/a0$n;->a()V

    :cond_5
    :goto_3
    add-int/2addr v2, v4

    goto/16 :goto_1

    :cond_6
    return-void
.end method

.method public G(Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/a0;->c:Landroidx/fragment/app/h0;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/h0;->d(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    return-object p1
.end method

.method public H(I)Landroidx/fragment/app/Fragment;
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/a0;->c:Landroidx/fragment/app/h0;

    .line 2
    iget-object v1, v0, Landroidx/fragment/app/h0;->a:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_1

    .line 3
    iget-object v2, v0, Landroidx/fragment/app/h0;->a:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/Fragment;

    if-eqz v2, :cond_0

    .line 4
    iget v3, v2, Landroidx/fragment/app/Fragment;->mFragmentId:I

    if-ne v3, p1, :cond_0

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, v0, Landroidx/fragment/app/h0;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/g0;

    if-eqz v1, :cond_2

    .line 6
    iget-object v2, v1, Landroidx/fragment/app/g0;->c:Landroidx/fragment/app/Fragment;

    .line 7
    iget v1, v2, Landroidx/fragment/app/Fragment;->mFragmentId:I

    if-ne v1, p1, :cond_2

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    return-object v2
.end method

.method public I(Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/a0;->c:Landroidx/fragment/app/h0;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_1

    .line 2
    iget-object v1, v0, Landroidx/fragment/app/h0;->a:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_1

    .line 3
    iget-object v2, v0, Landroidx/fragment/app/h0;->a:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/Fragment;

    if-eqz v2, :cond_0

    .line 4
    iget-object v3, v2, Landroidx/fragment/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_3

    .line 5
    iget-object v0, v0, Landroidx/fragment/app/h0;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/g0;

    if-eqz v1, :cond_2

    .line 6
    iget-object v2, v1, Landroidx/fragment/app/g0;->c:Landroidx/fragment/app/Fragment;

    .line 7
    iget-object v1, v2, Landroidx/fragment/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    return-object v2
.end method

.method public final J(Landroidx/fragment/app/Fragment;)Landroid/view/ViewGroup;
    .locals 2

    .line 1
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget v0, p1, Landroidx/fragment/app/Fragment;->mContainerId:I

    const/4 v1, 0x0

    if-gtz v0, :cond_1

    return-object v1

    .line 3
    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/a0;->r:Landroidx/fragment/app/t;

    invoke-virtual {v0}, Landroidx/fragment/app/t;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    iget-object v0, p0, Landroidx/fragment/app/a0;->r:Landroidx/fragment/app/t;

    iget p1, p1, Landroidx/fragment/app/Fragment;->mContainerId:I

    invoke-virtual {v0, p1}, Landroidx/fragment/app/t;->c(I)Landroid/view/View;

    move-result-object p1

    .line 5
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 6
    check-cast p1, Landroid/view/ViewGroup;

    return-object p1

    :cond_2
    return-object v1
.end method

.method public K()Landroidx/fragment/app/w;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/a0;->s:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/a0;

    invoke-virtual {v0}, Landroidx/fragment/app/a0;->K()Landroidx/fragment/app/w;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/a0;->u:Landroidx/fragment/app/w;

    return-object v0
.end method

.method public L()Landroidx/fragment/app/x0;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/a0;->s:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/a0;

    invoke-virtual {v0}, Landroidx/fragment/app/a0;->L()Landroidx/fragment/app/x0;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/a0;->v:Landroidx/fragment/app/x0;

    return-object v0
.end method

.method public M(Landroidx/fragment/app/Fragment;)V
    .locals 2

    const/4 v0, 0x2

    .line 1
    invoke-static {v0}, Landroidx/fragment/app/a0;->N(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 2
    :cond_0
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->mHidden:Z

    .line 4
    iget-boolean v1, p1, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    .line 5
    invoke-virtual {p0, p1}, Landroidx/fragment/app/a0;->h0(Landroidx/fragment/app/Fragment;)V

    :cond_1
    return-void
.end method

.method public final O(Landroidx/fragment/app/Fragment;)Z
    .locals 5

    .line 1
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->mHasMenu:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->mMenuVisible:Z

    if-nez v0, :cond_5

    :cond_0
    iget-object p1, p1, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/a0;

    .line 2
    iget-object v0, p1, Landroidx/fragment/app/a0;->c:Landroidx/fragment/app/h0;

    invoke-virtual {v0}, Landroidx/fragment/app/h0;->g()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/Fragment;

    if-eqz v4, :cond_2

    .line 3
    invoke-virtual {p1, v4}, Landroidx/fragment/app/a0;->O(Landroidx/fragment/app/Fragment;)Z

    move-result v3

    :cond_2
    if-eqz v3, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :cond_5
    :goto_1
    return v1
.end method

.method public P(Landroidx/fragment/app/Fragment;)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1
    :cond_0
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isMenuVisible()Z

    move-result p1

    return p1
.end method

.method public Q(Landroidx/fragment/app/Fragment;)Z
    .locals 3

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    iget-object v1, p1, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/a0;

    .line 2
    iget-object v2, v1, Landroidx/fragment/app/a0;->t:Landroidx/fragment/app/Fragment;

    .line 3
    invoke-virtual {p1, v2}, Landroidx/fragment/app/Fragment;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, v1, Landroidx/fragment/app/a0;->s:Landroidx/fragment/app/Fragment;

    .line 4
    invoke-virtual {p0, p1}, Landroidx/fragment/app/a0;->Q(Landroidx/fragment/app/Fragment;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public R()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/fragment/app/a0;->B:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroidx/fragment/app/a0;->C:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public S(IZ)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/a0;->q:Landroidx/fragment/app/x;

    if-nez v0, :cond_1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "No activity"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-nez p2, :cond_2

    .line 3
    iget p2, p0, Landroidx/fragment/app/a0;->p:I

    if-ne p1, p2, :cond_2

    return-void

    .line 4
    :cond_2
    iput p1, p0, Landroidx/fragment/app/a0;->p:I

    .line 5
    iget-object p1, p0, Landroidx/fragment/app/a0;->c:Landroidx/fragment/app/h0;

    .line 6
    iget-object p2, p1, Landroidx/fragment/app/h0;->a:Ljava/lang/Object;

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 7
    iget-object v1, p1, Landroidx/fragment/app/h0;->b:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashMap;

    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/g0;

    if-eqz v0, :cond_3

    .line 8
    invoke-virtual {v0}, Landroidx/fragment/app/g0;->k()V

    goto :goto_1

    .line 9
    :cond_4
    iget-object p2, p1, Landroidx/fragment/app/h0;->b:Ljava/lang/Object;

    check-cast p2, Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_5
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/g0;

    if-eqz v0, :cond_5

    .line 10
    invoke-virtual {v0}, Landroidx/fragment/app/g0;->k()V

    .line 11
    iget-object v2, v0, Landroidx/fragment/app/g0;->c:Landroidx/fragment/app/Fragment;

    .line 12
    iget-boolean v3, v2, Landroidx/fragment/app/Fragment;->mRemoving:Z

    if-eqz v3, :cond_6

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->isInBackStack()Z

    move-result v2

    if-nez v2, :cond_6

    const/4 v1, 0x1

    :cond_6
    if-eqz v1, :cond_5

    .line 13
    invoke-virtual {p1, v0}, Landroidx/fragment/app/h0;->k(Landroidx/fragment/app/g0;)V

    goto :goto_2

    .line 14
    :cond_7
    invoke-virtual {p0}, Landroidx/fragment/app/a0;->j0()V

    .line 15
    iget-boolean p1, p0, Landroidx/fragment/app/a0;->A:Z

    if-eqz p1, :cond_8

    iget-object p1, p0, Landroidx/fragment/app/a0;->q:Landroidx/fragment/app/x;

    if-eqz p1, :cond_8

    iget p2, p0, Landroidx/fragment/app/a0;->p:I

    const/4 v0, 0x7

    if-ne p2, v0, :cond_8

    .line 16
    invoke-virtual {p1}, Landroidx/fragment/app/x;->j()V

    .line 17
    iput-boolean v1, p0, Landroidx/fragment/app/a0;->A:Z

    :cond_8
    return-void
.end method

.method public T(Landroidx/fragment/app/Fragment;I)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    .line 1
    iget-object v1, v0, Landroidx/fragment/app/a0;->c:Landroidx/fragment/app/h0;

    iget-object v2, v7, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroidx/fragment/app/h0;->h(Ljava/lang/String;)Landroidx/fragment/app/g0;

    move-result-object v1

    const/4 v8, 0x1

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Landroidx/fragment/app/g0;

    iget-object v2, v0, Landroidx/fragment/app/a0;->n:Landroidx/fragment/app/z;

    iget-object v3, v0, Landroidx/fragment/app/a0;->c:Landroidx/fragment/app/h0;

    invoke-direct {v1, v2, v3, v7}, Landroidx/fragment/app/g0;-><init>(Landroidx/fragment/app/z;Landroidx/fragment/app/h0;Landroidx/fragment/app/Fragment;)V

    .line 3
    iput v8, v1, Landroidx/fragment/app/g0;->e:I

    :cond_0
    move-object v9, v1

    .line 4
    iget-boolean v1, v7, Landroidx/fragment/app/Fragment;->mFromLayout:Z

    const/4 v10, 0x2

    if-eqz v1, :cond_1

    iget-boolean v1, v7, Landroidx/fragment/app/Fragment;->mInLayout:Z

    if-eqz v1, :cond_1

    iget v1, v7, Landroidx/fragment/app/Fragment;->mState:I

    if-ne v1, v10, :cond_1

    move/from16 v1, p2

    .line 5
    invoke-static {v1, v10}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_0

    :cond_1
    move/from16 v1, p2

    .line 6
    :goto_0
    invoke-virtual {v9}, Landroidx/fragment/app/g0;->d()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 7
    iget v1, v7, Landroidx/fragment/app/Fragment;->mState:I

    const/4 v12, 0x3

    const/4 v2, -0x1

    const/4 v3, 0x5

    const/4 v4, 0x4

    if-gt v1, v11, :cond_a

    if-ge v1, v11, :cond_2

    .line 8
    iget-object v1, v0, Landroidx/fragment/app/a0;->l:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 9
    invoke-virtual/range {p0 .. p1}, Landroidx/fragment/app/a0;->d(Landroidx/fragment/app/Fragment;)V

    .line 10
    :cond_2
    iget v1, v7, Landroidx/fragment/app/Fragment;->mState:I

    if-eq v1, v2, :cond_3

    if-eqz v1, :cond_4

    if-eq v1, v8, :cond_5

    if-eq v1, v10, :cond_7

    if-eq v1, v4, :cond_8

    if-eq v1, v3, :cond_9

    goto/16 :goto_3

    :cond_3
    if-le v11, v2, :cond_4

    .line 11
    invoke-virtual {v9}, Landroidx/fragment/app/g0;->c()V

    :cond_4
    if-lez v11, :cond_5

    .line 12
    invoke-virtual {v9}, Landroidx/fragment/app/g0;->e()V

    :cond_5
    if-le v11, v2, :cond_6

    .line 13
    invoke-virtual {v9}, Landroidx/fragment/app/g0;->j()V

    :cond_6
    if-le v11, v8, :cond_7

    .line 14
    invoke-virtual {v9}, Landroidx/fragment/app/g0;->f()V

    :cond_7
    if-le v11, v10, :cond_8

    .line 15
    invoke-virtual {v9}, Landroidx/fragment/app/g0;->a()V

    :cond_8
    if-le v11, v4, :cond_9

    .line 16
    invoke-virtual {v9}, Landroidx/fragment/app/g0;->p()V

    :cond_9
    if-le v11, v3, :cond_19

    .line 17
    invoke-virtual {v9}, Landroidx/fragment/app/g0;->n()V

    goto/16 :goto_3

    :cond_a
    if-le v1, v11, :cond_19

    if-eqz v1, :cond_17

    if-eq v1, v8, :cond_15

    if-eq v1, v10, :cond_f

    if-eq v1, v4, :cond_d

    if-eq v1, v3, :cond_c

    const/4 v5, 0x7

    if-eq v1, v5, :cond_b

    goto/16 :goto_3

    :cond_b
    if-ge v11, v5, :cond_c

    .line 18
    invoke-virtual {v9}, Landroidx/fragment/app/g0;->l()V

    :cond_c
    if-ge v11, v3, :cond_d

    .line 19
    invoke-virtual {v9}, Landroidx/fragment/app/g0;->q()V

    :cond_d
    if-ge v11, v4, :cond_f

    .line 20
    invoke-static {v12}, Landroidx/fragment/app/a0;->N(I)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 21
    invoke-virtual/range {p1 .. p1}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    .line 22
    :cond_e
    iget-object v1, v7, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v1, :cond_f

    .line 23
    iget-object v1, v0, Landroidx/fragment/app/a0;->q:Landroidx/fragment/app/x;

    invoke-virtual {v1, v7}, Landroidx/fragment/app/x;->g(Landroidx/fragment/app/Fragment;)Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, v7, Landroidx/fragment/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    if-nez v1, :cond_f

    .line 24
    invoke-virtual {v9}, Landroidx/fragment/app/g0;->o()V

    :cond_f
    if-ge v11, v10, :cond_15

    const/4 v1, 0x0

    .line 25
    iget-object v3, v7, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v3, :cond_14

    iget-object v4, v7, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v4, :cond_14

    .line 26
    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    .line 27
    iget-object v3, v7, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->clearAnimation()V

    .line 28
    invoke-virtual/range {p1 .. p1}, Landroidx/fragment/app/Fragment;->isRemovingParent()Z

    move-result v3

    if-nez v3, :cond_14

    .line 29
    iget v3, v0, Landroidx/fragment/app/a0;->p:I

    const/4 v4, 0x0

    if-le v3, v2, :cond_10

    iget-boolean v2, v0, Landroidx/fragment/app/a0;->D:Z

    if-nez v2, :cond_10

    iget-object v2, v7, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 30
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_10

    iget v2, v7, Landroidx/fragment/app/Fragment;->mPostponedAlpha:F

    cmpl-float v2, v2, v4

    if-ltz v2, :cond_10

    .line 31
    iget-object v1, v0, Landroidx/fragment/app/a0;->q:Landroidx/fragment/app/x;

    .line 32
    iget-object v1, v1, Landroidx/fragment/app/x;->b:Landroid/content/Context;

    const/4 v2, 0x0

    .line 33
    invoke-virtual/range {p1 .. p1}, Landroidx/fragment/app/Fragment;->getPopDirection()Z

    move-result v3

    .line 34
    invoke-static {v1, v7, v2, v3}, Landroidx/fragment/app/s;->a(Landroid/content/Context;Landroidx/fragment/app/Fragment;ZZ)Landroidx/fragment/app/s$a;

    move-result-object v1

    .line 35
    :cond_10
    iput v4, v7, Landroidx/fragment/app/Fragment;->mPostponedAlpha:F

    .line 36
    iget-object v13, v7, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 37
    iget-object v14, v7, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v1, :cond_12

    .line 38
    iget-object v2, v0, Landroidx/fragment/app/a0;->m:Landroidx/fragment/app/p0$a;

    .line 39
    invoke-virtual {v13, v14}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    .line 40
    new-instance v6, Li0/b;

    invoke-direct {v6}, Li0/b;-><init>()V

    .line 41
    new-instance v3, Landroidx/fragment/app/p;

    invoke-direct {v3, v7}, Landroidx/fragment/app/p;-><init>(Landroidx/fragment/app/Fragment;)V

    invoke-virtual {v6, v3}, Li0/b;->b(Li0/b$a;)V

    .line 42
    move-object v5, v2

    check-cast v5, Landroidx/fragment/app/a0$d;

    invoke-virtual {v5, v7, v6}, Landroidx/fragment/app/a0$d;->b(Landroidx/fragment/app/Fragment;Li0/b;)V

    .line 43
    iget-object v2, v1, Landroidx/fragment/app/s$a;->a:Landroid/view/animation/Animation;

    if-eqz v2, :cond_11

    .line 44
    new-instance v2, Landroidx/fragment/app/s$b;

    iget-object v1, v1, Landroidx/fragment/app/s$a;->a:Landroid/view/animation/Animation;

    invoke-direct {v2, v1, v13, v14}, Landroidx/fragment/app/s$b;-><init>(Landroid/view/animation/Animation;Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 45
    iget-object v1, v7, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v7, v1}, Landroidx/fragment/app/Fragment;->setAnimatingAway(Landroid/view/View;)V

    .line 46
    new-instance v1, Landroidx/fragment/app/q;

    invoke-direct {v1, v13, v7, v5, v6}, Landroidx/fragment/app/q;-><init>(Landroid/view/ViewGroup;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/p0$a;Li0/b;)V

    invoke-virtual {v2, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 47
    iget-object v1, v7, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    .line 48
    :cond_11
    iget-object v15, v1, Landroidx/fragment/app/s$a;->b:Landroid/animation/Animator;

    .line 49
    invoke-virtual {v7, v15}, Landroidx/fragment/app/Fragment;->setAnimator(Landroid/animation/Animator;)V

    .line 50
    new-instance v4, Landroidx/fragment/app/r;

    move-object v1, v4

    move-object v2, v13

    move-object v3, v14

    move-object v12, v4

    move-object/from16 v4, p1

    invoke-direct/range {v1 .. v6}, Landroidx/fragment/app/r;-><init>(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/p0$a;Li0/b;)V

    invoke-virtual {v15, v12}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 51
    iget-object v1, v7, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v15, v1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 52
    invoke-virtual {v15}, Landroid/animation/Animator;->start()V

    .line 53
    :cond_12
    :goto_1
    invoke-virtual {v13, v14}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 54
    invoke-static {v10}, Landroidx/fragment/app/a0;->N(I)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 55
    invoke-static {v14}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 56
    :cond_13
    iget-object v1, v7, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eq v13, v1, :cond_14

    return-void

    .line 57
    :cond_14
    iget-object v1, v0, Landroidx/fragment/app/a0;->l:Ljava/util/Map;

    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_15

    .line 58
    invoke-virtual {v9}, Landroidx/fragment/app/g0;->h()V

    :cond_15
    if-ge v11, v8, :cond_17

    .line 59
    iget-object v1, v0, Landroidx/fragment/app/a0;->l:Ljava/util/Map;

    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_16

    goto :goto_2

    .line 60
    :cond_16
    invoke-virtual {v9}, Landroidx/fragment/app/g0;->g()V

    :cond_17
    move v8, v11

    :goto_2
    if-gez v8, :cond_18

    .line 61
    invoke-virtual {v9}, Landroidx/fragment/app/g0;->i()V

    :cond_18
    move v11, v8

    .line 62
    :cond_19
    :goto_3
    iget v1, v7, Landroidx/fragment/app/Fragment;->mState:I

    if-eq v1, v11, :cond_1b

    const/4 v1, 0x3

    .line 63
    invoke-static {v1}, Landroidx/fragment/app/a0;->N(I)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 64
    invoke-virtual/range {p1 .. p1}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    .line 65
    :cond_1a
    iput v11, v7, Landroidx/fragment/app/Fragment;->mState:I

    :cond_1b
    return-void
.end method

.method public U()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/a0;->q:Landroidx/fragment/app/x;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/a0;->B:Z

    .line 3
    iput-boolean v0, p0, Landroidx/fragment/app/a0;->C:Z

    .line 4
    iget-object v1, p0, Landroidx/fragment/app/a0;->J:Landroidx/fragment/app/d0;

    .line 5
    iput-boolean v0, v1, Landroidx/fragment/app/d0;->h:Z

    .line 6
    iget-object v0, p0, Landroidx/fragment/app/a0;->c:Landroidx/fragment/app/h0;

    invoke-virtual {v0}, Landroidx/fragment/app/h0;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->noteStateNotSaved()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public V(Landroidx/fragment/app/g0;)V
    .locals 2

    .line 1
    iget-object v0, p1, Landroidx/fragment/app/g0;->c:Landroidx/fragment/app/Fragment;

    .line 2
    iget-boolean v1, v0, Landroidx/fragment/app/Fragment;->mDeferStart:Z

    if-eqz v1, :cond_1

    .line 3
    iget-boolean v1, p0, Landroidx/fragment/app/a0;->b:Z

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Landroidx/fragment/app/a0;->E:Z

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 5
    iput-boolean v1, v0, Landroidx/fragment/app/Fragment;->mDeferStart:Z

    .line 6
    invoke-virtual {p1}, Landroidx/fragment/app/g0;->k()V

    :cond_1
    return-void
.end method

.method public W()Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 1
    invoke-virtual {p0, v0, v1, v2}, Landroidx/fragment/app/a0;->X(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public final X(Ljava/lang/String;II)Z
    .locals 8

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Landroidx/fragment/app/a0;->C(Z)Z

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Landroidx/fragment/app/a0;->B(Z)V

    .line 3
    iget-object v1, p0, Landroidx/fragment/app/a0;->t:Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_0

    if-gez p2, :cond_0

    if-nez p1, :cond_0

    .line 4
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/a0;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Landroidx/fragment/app/a0;->W()Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    .line 6
    :cond_0
    iget-object v3, p0, Landroidx/fragment/app/a0;->F:Ljava/util/ArrayList;

    iget-object v4, p0, Landroidx/fragment/app/a0;->G:Ljava/util/ArrayList;

    move-object v2, p0

    move-object v5, p1

    move v6, p2

    move v7, p3

    invoke-virtual/range {v2 .. v7}, Landroidx/fragment/app/a0;->Y(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;II)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 7
    iput-boolean v0, p0, Landroidx/fragment/app/a0;->b:Z

    .line 8
    :try_start_0
    iget-object p2, p0, Landroidx/fragment/app/a0;->F:Ljava/util/ArrayList;

    iget-object p3, p0, Landroidx/fragment/app/a0;->G:Ljava/util/ArrayList;

    invoke-virtual {p0, p2, p3}, Landroidx/fragment/app/a0;->a0(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/a0;->e()V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Landroidx/fragment/app/a0;->e()V

    .line 10
    throw p1

    .line 11
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/a0;->k0()V

    .line 12
    invoke-virtual {p0}, Landroidx/fragment/app/a0;->x()V

    .line 13
    iget-object p2, p0, Landroidx/fragment/app/a0;->c:Landroidx/fragment/app/h0;

    invoke-virtual {p2}, Landroidx/fragment/app/h0;->b()V

    return p1
.end method

.method public Y(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;II)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/a;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/String;",
            "II)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/a0;->d:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x1

    if-nez p3, :cond_2

    if-gez p4, :cond_2

    and-int/lit8 v3, p5, 0x1

    if-nez v3, :cond_2

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p3

    sub-int/2addr p3, v2

    if-gez p3, :cond_1

    return v1

    .line 3
    :cond_1
    iget-object p4, p0, Landroidx/fragment/app/a0;->d:Ljava/util/ArrayList;

    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :cond_2
    const/4 v3, -0x1

    if-nez p3, :cond_3

    if-ltz p4, :cond_b

    .line 5
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v2

    :goto_0
    if-ltz v0, :cond_6

    .line 6
    iget-object v4, p0, Landroidx/fragment/app/a0;->d:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/a;

    if-eqz p3, :cond_4

    .line 7
    iget-object v5, v4, Landroidx/fragment/app/i0;->i:Ljava/lang/String;

    .line 8
    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_1

    :cond_4
    if-ltz p4, :cond_5

    .line 9
    iget v4, v4, Landroidx/fragment/app/a;->s:I

    if-ne p4, v4, :cond_5

    goto :goto_1

    :cond_5
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_6
    :goto_1
    if-gez v0, :cond_7

    return v1

    :cond_7
    and-int/2addr p5, v2

    if-eqz p5, :cond_a

    :cond_8
    :goto_2
    add-int/2addr v0, v3

    if-ltz v0, :cond_a

    .line 10
    iget-object p5, p0, Landroidx/fragment/app/a0;->d:Ljava/util/ArrayList;

    invoke-virtual {p5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroidx/fragment/app/a;

    if-eqz p3, :cond_9

    .line 11
    iget-object v4, p5, Landroidx/fragment/app/i0;->i:Ljava/lang/String;

    .line 12
    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    :cond_9
    if-ltz p4, :cond_a

    iget p5, p5, Landroidx/fragment/app/a;->s:I

    if-ne p4, p5, :cond_a

    goto :goto_2

    :cond_a
    move v3, v0

    .line 13
    :cond_b
    iget-object p3, p0, Landroidx/fragment/app/a0;->d:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    sub-int/2addr p3, v2

    if-ne v3, p3, :cond_c

    return v1

    .line 14
    :cond_c
    iget-object p3, p0, Landroidx/fragment/app/a0;->d:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    sub-int/2addr p3, v2

    :goto_3
    if-le p3, v3, :cond_d

    .line 15
    iget-object p4, p0, Landroidx/fragment/app/a0;->d:Ljava/util/ArrayList;

    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    sget-object p4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p3, p3, -0x1

    goto :goto_3

    :cond_d
    :goto_4
    return v2
.end method

.method public Z(Landroidx/fragment/app/Fragment;)V
    .locals 3

    const/4 v0, 0x2

    .line 1
    invoke-static {v0}, Landroidx/fragment/app/a0;->N(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isInBackStack()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 4
    iget-boolean v2, p1, Landroidx/fragment/app/Fragment;->mDetached:Z

    if-eqz v2, :cond_1

    if-eqz v0, :cond_3

    .line 5
    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/a0;->c:Landroidx/fragment/app/h0;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/h0;->l(Landroidx/fragment/app/Fragment;)V

    .line 6
    invoke-virtual {p0, p1}, Landroidx/fragment/app/a0;->O(Landroidx/fragment/app/Fragment;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    iput-boolean v1, p0, Landroidx/fragment/app/a0;->A:Z

    .line 8
    :cond_2
    iput-boolean v1, p1, Landroidx/fragment/app/Fragment;->mRemoving:Z

    .line 9
    invoke-virtual {p0, p1}, Landroidx/fragment/app/a0;->h0(Landroidx/fragment/app/Fragment;)V

    :cond_3
    return-void
.end method

.method public a(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/g0;
    .locals 3

    const/4 v0, 0x2

    .line 1
    invoke-static {v0}, Landroidx/fragment/app/a0;->N(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/fragment/app/a0;->h(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/g0;

    move-result-object v0

    .line 3
    iput-object p0, p1, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/a0;

    .line 4
    iget-object v1, p0, Landroidx/fragment/app/a0;->c:Landroidx/fragment/app/h0;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/h0;->j(Landroidx/fragment/app/g0;)V

    .line 5
    iget-boolean v1, p1, Landroidx/fragment/app/Fragment;->mDetached:Z

    if-nez v1, :cond_2

    .line 6
    iget-object v1, p0, Landroidx/fragment/app/a0;->c:Landroidx/fragment/app/h0;

    invoke-virtual {v1, p1}, Landroidx/fragment/app/h0;->a(Landroidx/fragment/app/Fragment;)V

    const/4 v1, 0x0

    .line 7
    iput-boolean v1, p1, Landroidx/fragment/app/Fragment;->mRemoving:Z

    .line 8
    iget-object v2, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-nez v2, :cond_1

    .line 9
    iput-boolean v1, p1, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    .line 10
    :cond_1
    invoke-virtual {p0, p1}, Landroidx/fragment/app/a0;->O(Landroidx/fragment/app/Fragment;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    .line 11
    iput-boolean p1, p0, Landroidx/fragment/app/a0;->A:Z

    :cond_2
    return-object v0
.end method

.method public final a0(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/a;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_6

    .line 3
    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/a0;->F(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 4
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    .line 5
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/a;

    iget-boolean v3, v3, Landroidx/fragment/app/i0;->p:Z

    if-nez v3, :cond_3

    if-eq v2, v1, :cond_1

    .line 6
    invoke-virtual {p0, p1, p2, v2, v1}, Landroidx/fragment/app/a0;->E(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    :cond_1
    add-int/lit8 v2, v1, 0x1

    .line 7
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_1
    if-ge v2, v0, :cond_2

    .line 8
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 9
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/a;

    iget-boolean v3, v3, Landroidx/fragment/app/i0;->p:Z

    if-nez v3, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 10
    :cond_2
    invoke-virtual {p0, p1, p2, v1, v2}, Landroidx/fragment/app/a0;->E(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    add-int/lit8 v1, v2, -0x1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    if-eq v2, v0, :cond_5

    .line 11
    invoke-virtual {p0, p1, p2, v2, v0}, Landroidx/fragment/app/a0;->E(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    :cond_5
    return-void

    .line 12
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Internal error with the back stack records"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Landroidx/fragment/app/x;Landroidx/fragment/app/t;Landroidx/fragment/app/Fragment;)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SyntheticAccessor"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/x<",
            "*>;",
            "Landroidx/fragment/app/t;",
            "Landroidx/fragment/app/Fragment;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/a0;->q:Landroidx/fragment/app/x;

    if-nez v0, :cond_e

    .line 2
    iput-object p1, p0, Landroidx/fragment/app/a0;->q:Landroidx/fragment/app/x;

    .line 3
    iput-object p2, p0, Landroidx/fragment/app/a0;->r:Landroidx/fragment/app/t;

    .line 4
    iput-object p3, p0, Landroidx/fragment/app/a0;->s:Landroidx/fragment/app/Fragment;

    if-eqz p3, :cond_0

    .line 5
    new-instance p2, Landroidx/fragment/app/a0$h;

    invoke-direct {p2, p0, p3}, Landroidx/fragment/app/a0$h;-><init>(Landroidx/fragment/app/a0;Landroidx/fragment/app/Fragment;)V

    .line 6
    iget-object v0, p0, Landroidx/fragment/app/a0;->o:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_0
    instance-of p2, p1, Landroidx/fragment/app/e0;

    if-eqz p2, :cond_1

    .line 8
    move-object p2, p1

    check-cast p2, Landroidx/fragment/app/e0;

    .line 9
    iget-object v0, p0, Landroidx/fragment/app/a0;->o:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    :cond_1
    :goto_0
    iget-object p2, p0, Landroidx/fragment/app/a0;->s:Landroidx/fragment/app/Fragment;

    if-eqz p2, :cond_2

    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/a0;->k0()V

    .line 12
    :cond_2
    instance-of p2, p1, Landroidx/activity/c;

    if-eqz p2, :cond_4

    .line 13
    move-object p2, p1

    check-cast p2, Landroidx/activity/c;

    .line 14
    invoke-interface {p2}, Landroidx/activity/c;->b()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/a0;->g:Landroidx/activity/OnBackPressedDispatcher;

    if-eqz p3, :cond_3

    move-object p2, p3

    .line 15
    :cond_3
    iget-object v1, p0, Landroidx/fragment/app/a0;->h:Landroidx/activity/b;

    invoke-virtual {v0, p2, v1}, Landroidx/activity/OnBackPressedDispatcher;->a(Landroidx/lifecycle/j;Landroidx/activity/b;)V

    :cond_4
    if-eqz p3, :cond_6

    .line 16
    iget-object p1, p3, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/a0;

    .line 17
    iget-object p1, p1, Landroidx/fragment/app/a0;->J:Landroidx/fragment/app/d0;

    .line 18
    iget-object p2, p1, Landroidx/fragment/app/d0;->d:Ljava/util/HashMap;

    iget-object v0, p3, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/fragment/app/d0;

    if-nez p2, :cond_5

    .line 19
    new-instance p2, Landroidx/fragment/app/d0;

    iget-boolean v0, p1, Landroidx/fragment/app/d0;->f:Z

    invoke-direct {p2, v0}, Landroidx/fragment/app/d0;-><init>(Z)V

    .line 20
    iget-object p1, p1, Landroidx/fragment/app/d0;->d:Ljava/util/HashMap;

    iget-object v0, p3, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    :cond_5
    iput-object p2, p0, Landroidx/fragment/app/a0;->J:Landroidx/fragment/app/d0;

    goto :goto_3

    .line 22
    :cond_6
    instance-of p2, p1, Landroidx/lifecycle/d0;

    if-eqz p2, :cond_b

    .line 23
    check-cast p1, Landroidx/lifecycle/d0;

    invoke-interface {p1}, Landroidx/lifecycle/d0;->getViewModelStore()Landroidx/lifecycle/c0;

    move-result-object p1

    .line 24
    sget-object p2, Landroidx/fragment/app/d0;->i:Landroidx/lifecycle/z;

    .line 25
    const-class v0, Landroidx/fragment/app/d0;

    .line 26
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    const-string v2, "androidx.lifecycle.ViewModelProvider.DefaultKey:"

    .line 27
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/a;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 28
    iget-object v2, p1, Landroidx/lifecycle/c0;->a:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/lifecycle/x;

    .line 29
    invoke-virtual {v0, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 30
    instance-of p1, p2, Landroidx/lifecycle/b0;

    if-eqz p1, :cond_9

    .line 31
    check-cast p2, Landroidx/lifecycle/b0;

    invoke-virtual {p2, v2}, Landroidx/lifecycle/b0;->b(Landroidx/lifecycle/x;)V

    goto :goto_2

    .line 32
    :cond_7
    instance-of v2, p2, Landroidx/lifecycle/a0;

    if-eqz v2, :cond_8

    .line 33
    check-cast p2, Landroidx/lifecycle/a0;

    invoke-virtual {p2, v1, v0}, Landroidx/lifecycle/a0;->c(Ljava/lang/String;Ljava/lang/Class;)Landroidx/lifecycle/x;

    move-result-object p2

    goto :goto_1

    .line 34
    :cond_8
    check-cast p2, Landroidx/fragment/app/d0$a;

    invoke-virtual {p2, v0}, Landroidx/fragment/app/d0$a;->a(Ljava/lang/Class;)Landroidx/lifecycle/x;

    move-result-object p2

    :goto_1
    move-object v2, p2

    .line 35
    iget-object p1, p1, Landroidx/lifecycle/c0;->a:Ljava/util/HashMap;

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/lifecycle/x;

    if-eqz p1, :cond_9

    .line 36
    invoke-virtual {p1}, Landroidx/lifecycle/x;->a()V

    .line 37
    :cond_9
    :goto_2
    check-cast v2, Landroidx/fragment/app/d0;

    .line 38
    iput-object v2, p0, Landroidx/fragment/app/a0;->J:Landroidx/fragment/app/d0;

    goto :goto_3

    .line 39
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Local and anonymous classes can not be ViewModels"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 40
    :cond_b
    new-instance p1, Landroidx/fragment/app/d0;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Landroidx/fragment/app/d0;-><init>(Z)V

    iput-object p1, p0, Landroidx/fragment/app/a0;->J:Landroidx/fragment/app/d0;

    .line 41
    :goto_3
    iget-object p1, p0, Landroidx/fragment/app/a0;->J:Landroidx/fragment/app/d0;

    invoke-virtual {p0}, Landroidx/fragment/app/a0;->R()Z

    move-result p2

    .line 42
    iput-boolean p2, p1, Landroidx/fragment/app/d0;->h:Z

    .line 43
    iget-object p1, p0, Landroidx/fragment/app/a0;->c:Landroidx/fragment/app/h0;

    iget-object p2, p0, Landroidx/fragment/app/a0;->J:Landroidx/fragment/app/d0;

    .line 44
    iput-object p2, p1, Landroidx/fragment/app/h0;->c:Ljava/lang/Object;

    .line 45
    iget-object p1, p0, Landroidx/fragment/app/a0;->q:Landroidx/fragment/app/x;

    instance-of p2, p1, Landroidx/activity/result/d;

    if-eqz p2, :cond_d

    .line 46
    check-cast p1, Landroidx/activity/result/d;

    .line 47
    invoke-interface {p1}, Landroidx/activity/result/d;->i()Landroidx/activity/result/ActivityResultRegistry;

    move-result-object p1

    if-eqz p3, :cond_c

    .line 48
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p3, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    const-string v0, ":"

    invoke-static {p2, p3, v0}, Landroid/support/v4/media/b;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_4

    :cond_c
    const-string p2, ""

    :goto_4
    const-string p3, "FragmentManager:"

    .line 49
    invoke-static {p3, p2}, Lcom/google/android/gms/internal/ads/a;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "StartActivityForResult"

    .line 50
    invoke-static {p2, p3}, Lcom/google/android/gms/internal/ads/a;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    new-instance v0, Ld/c;

    invoke-direct {v0}, Ld/c;-><init>()V

    new-instance v1, Landroidx/fragment/app/a0$i;

    invoke-direct {v1, p0}, Landroidx/fragment/app/a0$i;-><init>(Landroidx/fragment/app/a0;)V

    invoke-virtual {p1, p3, v0, v1}, Landroidx/activity/result/ActivityResultRegistry;->d(Ljava/lang/String;Ld/a;Landroidx/activity/result/b;)Landroidx/activity/result/c;

    move-result-object p3

    iput-object p3, p0, Landroidx/fragment/app/a0;->w:Landroidx/activity/result/c;

    const-string p3, "StartIntentSenderForResult"

    .line 51
    invoke-static {p2, p3}, Lcom/google/android/gms/internal/ads/a;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    new-instance v0, Landroidx/fragment/app/a0$j;

    invoke-direct {v0}, Landroidx/fragment/app/a0$j;-><init>()V

    new-instance v1, Landroidx/fragment/app/a0$a;

    invoke-direct {v1, p0}, Landroidx/fragment/app/a0$a;-><init>(Landroidx/fragment/app/a0;)V

    invoke-virtual {p1, p3, v0, v1}, Landroidx/activity/result/ActivityResultRegistry;->d(Ljava/lang/String;Ld/a;Landroidx/activity/result/b;)Landroidx/activity/result/c;

    move-result-object p3

    iput-object p3, p0, Landroidx/fragment/app/a0;->x:Landroidx/activity/result/c;

    const-string p3, "RequestPermissions"

    .line 52
    invoke-static {p2, p3}, Lcom/google/android/gms/internal/ads/a;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ld/b;

    invoke-direct {p3}, Ld/b;-><init>()V

    new-instance v0, Landroidx/fragment/app/a0$b;

    invoke-direct {v0, p0}, Landroidx/fragment/app/a0$b;-><init>(Landroidx/fragment/app/a0;)V

    invoke-virtual {p1, p2, p3, v0}, Landroidx/activity/result/ActivityResultRegistry;->d(Ljava/lang/String;Ld/a;Landroidx/activity/result/b;)Landroidx/activity/result/c;

    move-result-object p1

    iput-object p1, p0, Landroidx/fragment/app/a0;->y:Landroidx/activity/result/c;

    :cond_d
    return-void

    .line 53
    :cond_e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Already attached"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b0(Landroid/os/Parcelable;)V
    .locals 17

    move-object/from16 v0, p0

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    move-object/from16 v1, p1

    check-cast v1, Landroidx/fragment/app/c0;

    .line 2
    iget-object v2, v1, Landroidx/fragment/app/c0;->a:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v2, v0, Landroidx/fragment/app/a0;->c:Landroidx/fragment/app/h0;

    .line 4
    iget-object v2, v2, Landroidx/fragment/app/h0;->b:Ljava/lang/Object;

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 5
    iget-object v2, v1, Landroidx/fragment/app/c0;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x2

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Landroidx/fragment/app/f0;

    if-eqz v10, :cond_2

    .line 6
    iget-object v3, v0, Landroidx/fragment/app/a0;->J:Landroidx/fragment/app/d0;

    iget-object v5, v10, Landroidx/fragment/app/f0;->b:Ljava/lang/String;

    .line 7
    iget-object v3, v3, Landroidx/fragment/app/d0;->c:Ljava/util/HashMap;

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/Fragment;

    if-eqz v3, :cond_4

    .line 8
    invoke-static {v4}, Landroidx/fragment/app/a0;->N(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 9
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    .line 10
    :cond_3
    new-instance v5, Landroidx/fragment/app/g0;

    iget-object v6, v0, Landroidx/fragment/app/a0;->n:Landroidx/fragment/app/z;

    iget-object v7, v0, Landroidx/fragment/app/a0;->c:Landroidx/fragment/app/h0;

    invoke-direct {v5, v6, v7, v3, v10}, Landroidx/fragment/app/g0;-><init>(Landroidx/fragment/app/z;Landroidx/fragment/app/h0;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/f0;)V

    goto :goto_1

    .line 11
    :cond_4
    new-instance v3, Landroidx/fragment/app/g0;

    iget-object v6, v0, Landroidx/fragment/app/a0;->n:Landroidx/fragment/app/z;

    iget-object v7, v0, Landroidx/fragment/app/a0;->c:Landroidx/fragment/app/h0;

    iget-object v5, v0, Landroidx/fragment/app/a0;->q:Landroidx/fragment/app/x;

    .line 12
    iget-object v5, v5, Landroidx/fragment/app/x;->b:Landroid/content/Context;

    .line 13
    invoke-virtual {v5}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    .line 14
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/a0;->K()Landroidx/fragment/app/w;

    move-result-object v9

    move-object v5, v3

    invoke-direct/range {v5 .. v10}, Landroidx/fragment/app/g0;-><init>(Landroidx/fragment/app/z;Landroidx/fragment/app/h0;Ljava/lang/ClassLoader;Landroidx/fragment/app/w;Landroidx/fragment/app/f0;)V

    .line 15
    :goto_1
    iget-object v3, v5, Landroidx/fragment/app/g0;->c:Landroidx/fragment/app/Fragment;

    .line 16
    iput-object v0, v3, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/a0;

    .line 17
    invoke-static {v4}, Landroidx/fragment/app/a0;->N(I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 18
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    .line 19
    :cond_5
    iget-object v3, v0, Landroidx/fragment/app/a0;->q:Landroidx/fragment/app/x;

    .line 20
    iget-object v3, v3, Landroidx/fragment/app/x;->b:Landroid/content/Context;

    .line 21
    invoke-virtual {v3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroidx/fragment/app/g0;->m(Ljava/lang/ClassLoader;)V

    .line 22
    iget-object v3, v0, Landroidx/fragment/app/a0;->c:Landroidx/fragment/app/h0;

    invoke-virtual {v3, v5}, Landroidx/fragment/app/h0;->j(Landroidx/fragment/app/g0;)V

    .line 23
    iget v3, v0, Landroidx/fragment/app/a0;->p:I

    .line 24
    iput v3, v5, Landroidx/fragment/app/g0;->e:I

    goto :goto_0

    .line 25
    :cond_6
    iget-object v2, v0, Landroidx/fragment/app/a0;->J:Landroidx/fragment/app/d0;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    new-instance v3, Ljava/util/ArrayList;

    iget-object v2, v2, Landroidx/fragment/app/d0;->c:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 27
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v5, 0x1

    if-eqz v3, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/Fragment;

    .line 28
    iget-object v6, v0, Landroidx/fragment/app/a0;->c:Landroidx/fragment/app/h0;

    iget-object v7, v3, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroidx/fragment/app/h0;->c(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 29
    invoke-static {v4}, Landroidx/fragment/app/a0;->N(I)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 30
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    iget-object v6, v1, Landroidx/fragment/app/c0;->a:Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 31
    :cond_8
    iget-object v6, v0, Landroidx/fragment/app/a0;->J:Landroidx/fragment/app/d0;

    invoke-virtual {v6, v3}, Landroidx/fragment/app/d0;->d(Landroidx/fragment/app/Fragment;)V

    .line 32
    iput-object v0, v3, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/a0;

    .line 33
    new-instance v6, Landroidx/fragment/app/g0;

    iget-object v7, v0, Landroidx/fragment/app/a0;->n:Landroidx/fragment/app/z;

    iget-object v8, v0, Landroidx/fragment/app/a0;->c:Landroidx/fragment/app/h0;

    invoke-direct {v6, v7, v8, v3}, Landroidx/fragment/app/g0;-><init>(Landroidx/fragment/app/z;Landroidx/fragment/app/h0;Landroidx/fragment/app/Fragment;)V

    .line 34
    iput v5, v6, Landroidx/fragment/app/g0;->e:I

    .line 35
    invoke-virtual {v6}, Landroidx/fragment/app/g0;->k()V

    .line 36
    iput-boolean v5, v3, Landroidx/fragment/app/Fragment;->mRemoving:Z

    .line 37
    invoke-virtual {v6}, Landroidx/fragment/app/g0;->k()V

    goto :goto_2

    .line 38
    :cond_9
    iget-object v2, v0, Landroidx/fragment/app/a0;->c:Landroidx/fragment/app/h0;

    iget-object v3, v1, Landroidx/fragment/app/c0;->b:Ljava/util/ArrayList;

    .line 39
    iget-object v6, v2, Landroidx/fragment/app/h0;->a:Ljava/lang/Object;

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    if-eqz v3, :cond_c

    .line 40
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 41
    invoke-virtual {v2, v6}, Landroidx/fragment/app/h0;->d(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v7

    if-eqz v7, :cond_b

    .line 42
    invoke-static {v4}, Landroidx/fragment/app/a0;->N(I)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 43
    invoke-virtual {v7}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    .line 44
    :cond_a
    invoke-virtual {v2, v7}, Landroidx/fragment/app/h0;->a(Landroidx/fragment/app/Fragment;)V

    goto :goto_3

    .line 45
    :cond_b
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No instantiated fragment for ("

    const-string v3, ")"

    invoke-static {v2, v6, v3}, Landroid/support/v4/media/b;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 46
    :cond_c
    iget-object v2, v1, Landroidx/fragment/app/c0;->c:[Landroidx/fragment/app/b;

    const/4 v3, 0x0

    const/4 v6, 0x0

    if-eqz v2, :cond_11

    .line 47
    new-instance v2, Ljava/util/ArrayList;

    iget-object v7, v1, Landroidx/fragment/app/c0;->c:[Landroidx/fragment/app/b;

    array-length v7, v7

    invoke-direct {v2, v7}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, v0, Landroidx/fragment/app/a0;->d:Ljava/util/ArrayList;

    const/4 v2, 0x0

    .line 48
    :goto_4
    iget-object v7, v1, Landroidx/fragment/app/c0;->c:[Landroidx/fragment/app/b;

    array-length v8, v7

    if-ge v2, v8, :cond_12

    .line 49
    aget-object v7, v7, v2

    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    new-instance v8, Landroidx/fragment/app/a;

    invoke-direct {v8, v0}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/a0;)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 51
    :goto_5
    iget-object v11, v7, Landroidx/fragment/app/b;->a:[I

    array-length v12, v11

    if-ge v9, v12, :cond_f

    .line 52
    new-instance v12, Landroidx/fragment/app/i0$a;

    invoke-direct {v12}, Landroidx/fragment/app/i0$a;-><init>()V

    add-int/lit8 v13, v9, 0x1

    .line 53
    aget v9, v11, v9

    iput v9, v12, Landroidx/fragment/app/i0$a;->a:I

    .line 54
    invoke-static {v4}, Landroidx/fragment/app/a0;->N(I)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 55
    invoke-virtual {v8}, Landroidx/fragment/app/a;->toString()Ljava/lang/String;

    iget-object v9, v7, Landroidx/fragment/app/b;->a:[I

    aget v9, v9, v13

    .line 56
    :cond_d
    iget-object v9, v7, Landroidx/fragment/app/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    if-eqz v9, :cond_e

    .line 57
    iget-object v11, v0, Landroidx/fragment/app/a0;->c:Landroidx/fragment/app/h0;

    invoke-virtual {v11, v9}, Landroidx/fragment/app/h0;->d(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v9

    .line 58
    iput-object v9, v12, Landroidx/fragment/app/i0$a;->b:Landroidx/fragment/app/Fragment;

    goto :goto_6

    .line 59
    :cond_e
    iput-object v3, v12, Landroidx/fragment/app/i0$a;->b:Landroidx/fragment/app/Fragment;

    .line 60
    :goto_6
    invoke-static {}, Landroidx/lifecycle/f$c;->values()[Landroidx/lifecycle/f$c;

    move-result-object v9

    iget-object v11, v7, Landroidx/fragment/app/b;->c:[I

    aget v11, v11, v10

    aget-object v9, v9, v11

    iput-object v9, v12, Landroidx/fragment/app/i0$a;->g:Landroidx/lifecycle/f$c;

    .line 61
    invoke-static {}, Landroidx/lifecycle/f$c;->values()[Landroidx/lifecycle/f$c;

    move-result-object v9

    iget-object v11, v7, Landroidx/fragment/app/b;->d:[I

    aget v11, v11, v10

    aget-object v9, v9, v11

    iput-object v9, v12, Landroidx/fragment/app/i0$a;->h:Landroidx/lifecycle/f$c;

    .line 62
    iget-object v9, v7, Landroidx/fragment/app/b;->a:[I

    add-int/lit8 v11, v13, 0x1

    aget v13, v9, v13

    iput v13, v12, Landroidx/fragment/app/i0$a;->c:I

    add-int/lit8 v14, v11, 0x1

    .line 63
    aget v11, v9, v11

    iput v11, v12, Landroidx/fragment/app/i0$a;->d:I

    add-int/lit8 v15, v14, 0x1

    .line 64
    aget v14, v9, v14

    iput v14, v12, Landroidx/fragment/app/i0$a;->e:I

    add-int/lit8 v16, v15, 0x1

    .line 65
    aget v9, v9, v15

    iput v9, v12, Landroidx/fragment/app/i0$a;->f:I

    .line 66
    iput v13, v8, Landroidx/fragment/app/i0;->b:I

    .line 67
    iput v11, v8, Landroidx/fragment/app/i0;->c:I

    .line 68
    iput v14, v8, Landroidx/fragment/app/i0;->d:I

    .line 69
    iput v9, v8, Landroidx/fragment/app/i0;->e:I

    .line 70
    invoke-virtual {v8, v12}, Landroidx/fragment/app/i0;->b(Landroidx/fragment/app/i0$a;)V

    add-int/lit8 v10, v10, 0x1

    move/from16 v9, v16

    goto :goto_5

    .line 71
    :cond_f
    iget v9, v7, Landroidx/fragment/app/b;->e:I

    iput v9, v8, Landroidx/fragment/app/i0;->f:I

    .line 72
    iget-object v9, v7, Landroidx/fragment/app/b;->f:Ljava/lang/String;

    iput-object v9, v8, Landroidx/fragment/app/i0;->i:Ljava/lang/String;

    .line 73
    iget v9, v7, Landroidx/fragment/app/b;->g:I

    iput v9, v8, Landroidx/fragment/app/a;->s:I

    .line 74
    iput-boolean v5, v8, Landroidx/fragment/app/i0;->g:Z

    .line 75
    iget v9, v7, Landroidx/fragment/app/b;->h:I

    iput v9, v8, Landroidx/fragment/app/i0;->j:I

    .line 76
    iget-object v9, v7, Landroidx/fragment/app/b;->i:Ljava/lang/CharSequence;

    iput-object v9, v8, Landroidx/fragment/app/i0;->k:Ljava/lang/CharSequence;

    .line 77
    iget v9, v7, Landroidx/fragment/app/b;->j:I

    iput v9, v8, Landroidx/fragment/app/i0;->l:I

    .line 78
    iget-object v9, v7, Landroidx/fragment/app/b;->k:Ljava/lang/CharSequence;

    iput-object v9, v8, Landroidx/fragment/app/i0;->m:Ljava/lang/CharSequence;

    .line 79
    iget-object v9, v7, Landroidx/fragment/app/b;->l:Ljava/util/ArrayList;

    iput-object v9, v8, Landroidx/fragment/app/i0;->n:Ljava/util/ArrayList;

    .line 80
    iget-object v9, v7, Landroidx/fragment/app/b;->m:Ljava/util/ArrayList;

    iput-object v9, v8, Landroidx/fragment/app/i0;->o:Ljava/util/ArrayList;

    .line 81
    iget-boolean v7, v7, Landroidx/fragment/app/b;->n:Z

    iput-boolean v7, v8, Landroidx/fragment/app/i0;->p:Z

    .line 82
    invoke-virtual {v8, v5}, Landroidx/fragment/app/a;->f(I)V

    .line 83
    invoke-static {v4}, Landroidx/fragment/app/a0;->N(I)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 84
    invoke-virtual {v8}, Landroidx/fragment/app/a;->toString()Ljava/lang/String;

    .line 85
    new-instance v7, Landroidx/fragment/app/v0;

    const-string v9, "FragmentManager"

    invoke-direct {v7, v9}, Landroidx/fragment/app/v0;-><init>(Ljava/lang/String;)V

    .line 86
    new-instance v9, Ljava/io/PrintWriter;

    invoke-direct {v9, v7}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    const-string v7, "  "

    .line 87
    invoke-virtual {v8, v7, v9, v6}, Landroidx/fragment/app/a;->j(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    .line 88
    invoke-virtual {v9}, Ljava/io/PrintWriter;->close()V

    .line 89
    :cond_10
    iget-object v7, v0, Landroidx/fragment/app/a0;->d:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_4

    .line 90
    :cond_11
    iput-object v3, v0, Landroidx/fragment/app/a0;->d:Ljava/util/ArrayList;

    .line 91
    :cond_12
    iget-object v2, v0, Landroidx/fragment/app/a0;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    iget v3, v1, Landroidx/fragment/app/c0;->d:I

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 92
    iget-object v2, v1, Landroidx/fragment/app/c0;->e:Ljava/lang/String;

    if-eqz v2, :cond_13

    .line 93
    invoke-virtual {v0, v2}, Landroidx/fragment/app/a0;->G(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    iput-object v2, v0, Landroidx/fragment/app/a0;->t:Landroidx/fragment/app/Fragment;

    .line 94
    invoke-virtual {v0, v2}, Landroidx/fragment/app/a0;->t(Landroidx/fragment/app/Fragment;)V

    .line 95
    :cond_13
    iget-object v2, v1, Landroidx/fragment/app/c0;->f:Ljava/util/ArrayList;

    if-eqz v2, :cond_14

    .line 96
    :goto_7
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v6, v3, :cond_14

    .line 97
    iget-object v3, v1, Landroidx/fragment/app/c0;->g:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 98
    iget-object v4, v0, Landroidx/fragment/app/a0;->q:Landroidx/fragment/app/x;

    .line 99
    iget-object v4, v4, Landroidx/fragment/app/x;->b:Landroid/content/Context;

    .line 100
    invoke-virtual {v4}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 101
    iget-object v4, v0, Landroidx/fragment/app/a0;->j:Ljava/util/Map;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 102
    :cond_14
    new-instance v2, Ljava/util/ArrayDeque;

    iget-object v1, v1, Landroidx/fragment/app/c0;->h:Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayDeque;-><init>(Ljava/util/Collection;)V

    iput-object v2, v0, Landroidx/fragment/app/a0;->z:Ljava/util/ArrayDeque;

    return-void
.end method

.method public c(Landroidx/fragment/app/Fragment;)V
    .locals 2

    const/4 v0, 0x2

    .line 1
    invoke-static {v0}, Landroidx/fragment/app/a0;->N(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 2
    :cond_0
    iget-boolean v1, p1, Landroidx/fragment/app/Fragment;->mDetached:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, p1, Landroidx/fragment/app/Fragment;->mDetached:Z

    .line 4
    iget-boolean v1, p1, Landroidx/fragment/app/Fragment;->mAdded:Z

    if-nez v1, :cond_2

    .line 5
    iget-object v1, p0, Landroidx/fragment/app/a0;->c:Landroidx/fragment/app/h0;

    invoke-virtual {v1, p1}, Landroidx/fragment/app/h0;->a(Landroidx/fragment/app/Fragment;)V

    .line 6
    invoke-static {v0}, Landroidx/fragment/app/a0;->N(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    .line 7
    :cond_1
    invoke-virtual {p0, p1}, Landroidx/fragment/app/a0;->O(Landroidx/fragment/app/Fragment;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Landroidx/fragment/app/a0;->A:Z

    :cond_2
    return-void
.end method

.method public c0()Landroid/os/Parcelable;
    .locals 11

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/a0;->f()Ljava/util/Set;

    move-result-object v0

    .line 2
    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/w0;

    .line 3
    iget-boolean v3, v1, Landroidx/fragment/app/w0;->e:Z

    if-eqz v3, :cond_0

    .line 4
    iput-boolean v2, v1, Landroidx/fragment/app/w0;->e:Z

    .line 5
    invoke-virtual {v1}, Landroidx/fragment/app/w0;->c()V

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/a0;->z()V

    const/4 v0, 0x1

    .line 7
    invoke-virtual {p0, v0}, Landroidx/fragment/app/a0;->C(Z)Z

    .line 8
    iput-boolean v0, p0, Landroidx/fragment/app/a0;->B:Z

    .line 9
    iget-object v1, p0, Landroidx/fragment/app/a0;->J:Landroidx/fragment/app/d0;

    .line 10
    iput-boolean v0, v1, Landroidx/fragment/app/d0;->h:Z

    .line 11
    iget-object v0, p0, Landroidx/fragment/app/a0;->c:Landroidx/fragment/app/h0;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, v0, Landroidx/fragment/app/h0;->b:Ljava/lang/Object;

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 13
    iget-object v0, v0, Landroidx/fragment/app/h0;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-eqz v3, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/g0;

    if-eqz v3, :cond_2

    .line 14
    iget-object v6, v3, Landroidx/fragment/app/g0;->c:Landroidx/fragment/app/Fragment;

    .line 15
    new-instance v7, Landroidx/fragment/app/f0;

    invoke-direct {v7, v6}, Landroidx/fragment/app/f0;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 16
    iget-object v8, v3, Landroidx/fragment/app/g0;->c:Landroidx/fragment/app/Fragment;

    iget v9, v8, Landroidx/fragment/app/Fragment;->mState:I

    const/4 v10, -0x1

    if-le v9, v10, :cond_c

    iget-object v9, v7, Landroidx/fragment/app/f0;->m:Landroid/os/Bundle;

    if-nez v9, :cond_c

    .line 17
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 18
    iget-object v9, v3, Landroidx/fragment/app/g0;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v9, v8}, Landroidx/fragment/app/Fragment;->performSaveInstanceState(Landroid/os/Bundle;)V

    .line 19
    iget-object v9, v3, Landroidx/fragment/app/g0;->a:Landroidx/fragment/app/z;

    iget-object v10, v3, Landroidx/fragment/app/g0;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v9, v10, v8, v2}, Landroidx/fragment/app/z;->j(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V

    .line 20
    invoke-virtual {v8}, Landroid/os/Bundle;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_3

    goto :goto_2

    :cond_3
    move-object v4, v8

    .line 21
    :goto_2
    iget-object v8, v3, Landroidx/fragment/app/g0;->c:Landroidx/fragment/app/Fragment;

    iget-object v8, v8, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v8, :cond_4

    .line 22
    invoke-virtual {v3}, Landroidx/fragment/app/g0;->o()V

    .line 23
    :cond_4
    iget-object v8, v3, Landroidx/fragment/app/g0;->c:Landroidx/fragment/app/Fragment;

    iget-object v8, v8, Landroidx/fragment/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    if-eqz v8, :cond_6

    if-nez v4, :cond_5

    .line 24
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 25
    :cond_5
    iget-object v8, v3, Landroidx/fragment/app/g0;->c:Landroidx/fragment/app/Fragment;

    iget-object v8, v8, Landroidx/fragment/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    const-string v9, "android:view_state"

    invoke-virtual {v4, v9, v8}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 26
    :cond_6
    iget-object v8, v3, Landroidx/fragment/app/g0;->c:Landroidx/fragment/app/Fragment;

    iget-object v8, v8, Landroidx/fragment/app/Fragment;->mSavedViewRegistryState:Landroid/os/Bundle;

    if-eqz v8, :cond_8

    if-nez v4, :cond_7

    .line 27
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 28
    :cond_7
    iget-object v8, v3, Landroidx/fragment/app/g0;->c:Landroidx/fragment/app/Fragment;

    iget-object v8, v8, Landroidx/fragment/app/Fragment;->mSavedViewRegistryState:Landroid/os/Bundle;

    const-string v9, "android:view_registry_state"

    invoke-virtual {v4, v9, v8}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 29
    :cond_8
    iget-object v8, v3, Landroidx/fragment/app/g0;->c:Landroidx/fragment/app/Fragment;

    iget-boolean v8, v8, Landroidx/fragment/app/Fragment;->mUserVisibleHint:Z

    if-nez v8, :cond_a

    if-nez v4, :cond_9

    .line 30
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 31
    :cond_9
    iget-object v8, v3, Landroidx/fragment/app/g0;->c:Landroidx/fragment/app/Fragment;

    iget-boolean v8, v8, Landroidx/fragment/app/Fragment;->mUserVisibleHint:Z

    const-string v9, "android:user_visible_hint"

    invoke-virtual {v4, v9, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 32
    :cond_a
    iput-object v4, v7, Landroidx/fragment/app/f0;->m:Landroid/os/Bundle;

    .line 33
    iget-object v8, v3, Landroidx/fragment/app/g0;->c:Landroidx/fragment/app/Fragment;

    iget-object v8, v8, Landroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    if-eqz v8, :cond_d

    if-nez v4, :cond_b

    .line 34
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    iput-object v4, v7, Landroidx/fragment/app/f0;->m:Landroid/os/Bundle;

    .line 35
    :cond_b
    iget-object v4, v7, Landroidx/fragment/app/f0;->m:Landroid/os/Bundle;

    iget-object v8, v3, Landroidx/fragment/app/g0;->c:Landroidx/fragment/app/Fragment;

    iget-object v8, v8, Landroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    const-string v9, "android:target_state"

    invoke-virtual {v4, v9, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    iget-object v3, v3, Landroidx/fragment/app/g0;->c:Landroidx/fragment/app/Fragment;

    iget v3, v3, Landroidx/fragment/app/Fragment;->mTargetRequestCode:I

    if-eqz v3, :cond_d

    .line 37
    iget-object v4, v7, Landroidx/fragment/app/f0;->m:Landroid/os/Bundle;

    const-string v8, "android:target_req_state"

    invoke-virtual {v4, v8, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_3

    .line 38
    :cond_c
    iget-object v3, v8, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    iput-object v3, v7, Landroidx/fragment/app/f0;->m:Landroid/os/Bundle;

    .line 39
    :cond_d
    :goto_3
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    invoke-static {v5}, Landroidx/fragment/app/a0;->N(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 41
    invoke-static {v6}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    iget-object v3, v7, Landroidx/fragment/app/f0;->m:Landroid/os/Bundle;

    invoke-static {v3}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    goto/16 :goto_1

    .line 42
    :cond_e
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 43
    invoke-static {v5}, Landroidx/fragment/app/a0;->N(I)Z

    return-object v4

    .line 44
    :cond_f
    iget-object v0, p0, Landroidx/fragment/app/a0;->c:Landroidx/fragment/app/h0;

    .line 45
    iget-object v3, v0, Landroidx/fragment/app/h0;->a:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    monitor-enter v3

    .line 46
    :try_start_0
    iget-object v6, v0, Landroidx/fragment/app/h0;->a:Ljava/lang/Object;

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_10

    .line 47
    monitor-exit v3

    move-object v6, v4

    goto :goto_5

    .line 48
    :cond_10
    new-instance v6, Ljava/util/ArrayList;

    iget-object v7, v0, Landroidx/fragment/app/h0;->a:Ljava/lang/Object;

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 49
    iget-object v0, v0, Landroidx/fragment/app/h0;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_11
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_12

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/fragment/app/Fragment;

    .line 50
    iget-object v8, v7, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    invoke-static {v5}, Landroidx/fragment/app/a0;->N(I)Z

    move-result v8

    if-eqz v8, :cond_11

    .line 52
    invoke-virtual {v7}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    goto :goto_4

    .line 53
    :cond_12
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    :goto_5
    iget-object v0, p0, Landroidx/fragment/app/a0;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_14

    .line 55
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_14

    .line 56
    new-array v4, v0, [Landroidx/fragment/app/b;

    :goto_6
    if-ge v2, v0, :cond_14

    .line 57
    new-instance v3, Landroidx/fragment/app/b;

    iget-object v7, p0, Landroidx/fragment/app/a0;->d:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/fragment/app/a;

    invoke-direct {v3, v7}, Landroidx/fragment/app/b;-><init>(Landroidx/fragment/app/a;)V

    aput-object v3, v4, v2

    .line 58
    invoke-static {v5}, Landroidx/fragment/app/a0;->N(I)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 59
    iget-object v3, p0, Landroidx/fragment/app/a0;->d:Ljava/util/ArrayList;

    .line 60
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 61
    :cond_14
    new-instance v0, Landroidx/fragment/app/c0;

    invoke-direct {v0}, Landroidx/fragment/app/c0;-><init>()V

    .line 62
    iput-object v1, v0, Landroidx/fragment/app/c0;->a:Ljava/util/ArrayList;

    .line 63
    iput-object v6, v0, Landroidx/fragment/app/c0;->b:Ljava/util/ArrayList;

    .line 64
    iput-object v4, v0, Landroidx/fragment/app/c0;->c:[Landroidx/fragment/app/b;

    .line 65
    iget-object v1, p0, Landroidx/fragment/app/a0;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    iput v1, v0, Landroidx/fragment/app/c0;->d:I

    .line 66
    iget-object v1, p0, Landroidx/fragment/app/a0;->t:Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_15

    .line 67
    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    iput-object v1, v0, Landroidx/fragment/app/c0;->e:Ljava/lang/String;

    .line 68
    :cond_15
    iget-object v1, v0, Landroidx/fragment/app/c0;->f:Ljava/util/ArrayList;

    iget-object v2, p0, Landroidx/fragment/app/a0;->j:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 69
    iget-object v1, v0, Landroidx/fragment/app/c0;->g:Ljava/util/ArrayList;

    iget-object v2, p0, Landroidx/fragment/app/a0;->j:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 70
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroidx/fragment/app/a0;->z:Ljava/util/ArrayDeque;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Landroidx/fragment/app/c0;->h:Ljava/util/ArrayList;

    return-object v0

    :catchall_0
    move-exception v0

    .line 71
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final d(Landroidx/fragment/app/Fragment;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/a0;->l:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Li0/b;

    .line 3
    invoke-virtual {v2}, Li0/b;->a()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 5
    invoke-virtual {p0, p1}, Landroidx/fragment/app/a0;->i(Landroidx/fragment/app/Fragment;)V

    .line 6
    iget-object v0, p0, Landroidx/fragment/app/a0;->l:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public d0()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/a0;->a:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Landroidx/fragment/app/a0;->I:Ljava/util/ArrayList;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 4
    :goto_0
    iget-object v4, p0, Landroidx/fragment/app/a0;->a:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v3, :cond_1

    const/4 v2, 0x1

    :cond_1
    if-nez v1, :cond_2

    if-eqz v2, :cond_3

    .line 5
    :cond_2
    iget-object v1, p0, Landroidx/fragment/app/a0;->q:Landroidx/fragment/app/x;

    .line 6
    iget-object v1, v1, Landroidx/fragment/app/x;->c:Landroid/os/Handler;

    .line 7
    iget-object v2, p0, Landroidx/fragment/app/a0;->K:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 8
    iget-object v1, p0, Landroidx/fragment/app/a0;->q:Landroidx/fragment/app/x;

    .line 9
    iget-object v1, v1, Landroidx/fragment/app/x;->c:Landroid/os/Handler;

    .line 10
    iget-object v2, p0, Landroidx/fragment/app/a0;->K:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/a0;->k0()V

    .line 12
    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final e()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Landroidx/fragment/app/a0;->b:Z

    .line 2
    iget-object v0, p0, Landroidx/fragment/app/a0;->G:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3
    iget-object v0, p0, Landroidx/fragment/app/a0;->F:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public e0(Landroidx/fragment/app/Fragment;Z)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Landroidx/fragment/app/a0;->J(Landroidx/fragment/app/Fragment;)Landroid/view/ViewGroup;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    instance-of v0, p1, Landroidx/fragment/app/u;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Landroidx/fragment/app/u;

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Landroidx/fragment/app/u;->setDrawDisappearingViewsLast(Z)V

    :cond_0
    return-void
.end method

.method public final f()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroidx/fragment/app/w0;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2
    iget-object v1, p0, Landroidx/fragment/app/a0;->c:Landroidx/fragment/app/h0;

    invoke-virtual {v1}, Landroidx/fragment/app/h0;->f()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/g0;

    .line 3
    iget-object v2, v2, Landroidx/fragment/app/g0;->c:Landroidx/fragment/app/Fragment;

    .line 4
    iget-object v2, v2, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/a0;->L()Landroidx/fragment/app/x0;

    move-result-object v3

    .line 6
    invoke-static {v2, v3}, Landroidx/fragment/app/w0;->g(Landroid/view/ViewGroup;Landroidx/fragment/app/x0;)Landroidx/fragment/app/w0;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public f0(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/f$c;)V
    .locals 2

    .line 1
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroidx/fragment/app/a0;->G(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/x;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/a0;

    if-ne v0, p0, :cond_1

    .line 2
    :cond_0
    iput-object p2, p1, Landroidx/fragment/app/Fragment;->mMaxState:Landroidx/lifecycle/f$c;

    return-void

    .line 3
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not an active fragment of FragmentManager "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public g(Landroidx/fragment/app/a;ZZZ)V
    .locals 9

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p1, p4}, Landroidx/fragment/app/a;->l(Z)V

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroidx/fragment/app/a;->k()V

    .line 3
    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    const/4 v8, 0x1

    invoke-direct {v2, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 4
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p3, :cond_1

    .line 7
    iget p2, p0, Landroidx/fragment/app/a0;->p:I

    if-lt p2, v8, :cond_1

    .line 8
    iget-object p2, p0, Landroidx/fragment/app/a0;->q:Landroidx/fragment/app/x;

    .line 9
    iget-object v0, p2, Landroidx/fragment/app/x;->b:Landroid/content/Context;

    .line 10
    iget-object v1, p0, Landroidx/fragment/app/a0;->r:Landroidx/fragment/app/t;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    iget-object v7, p0, Landroidx/fragment/app/a0;->m:Landroidx/fragment/app/p0$a;

    invoke-static/range {v0 .. v7}, Landroidx/fragment/app/p0;->q(Landroid/content/Context;Landroidx/fragment/app/t;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZLandroidx/fragment/app/p0$a;)V

    :cond_1
    if-eqz p4, :cond_2

    .line 11
    iget p2, p0, Landroidx/fragment/app/a0;->p:I

    invoke-virtual {p0, p2, v8}, Landroidx/fragment/app/a0;->S(IZ)V

    .line 12
    :cond_2
    iget-object p2, p0, Landroidx/fragment/app/a0;->c:Landroidx/fragment/app/h0;

    invoke-virtual {p2}, Landroidx/fragment/app/h0;->g()Ljava/util/List;

    move-result-object p2

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroidx/fragment/app/Fragment;

    if-eqz p3, :cond_3

    .line 13
    iget-object v0, p3, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-boolean v0, p3, Landroidx/fragment/app/Fragment;->mIsNewlyAdded:Z

    if-eqz v0, :cond_3

    iget v0, p3, Landroidx/fragment/app/Fragment;->mContainerId:I

    .line 14
    invoke-virtual {p1, v0}, Landroidx/fragment/app/a;->m(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 15
    iget v0, p3, Landroidx/fragment/app/Fragment;->mPostponedAlpha:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-lez v2, :cond_4

    .line 16
    iget-object v2, p3, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_4
    if-eqz p4, :cond_5

    .line 17
    iput v1, p3, Landroidx/fragment/app/Fragment;->mPostponedAlpha:F

    goto :goto_1

    :cond_5
    const/high16 v0, -0x40800000    # -1.0f

    .line 18
    iput v0, p3, Landroidx/fragment/app/Fragment;->mPostponedAlpha:F

    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p3, Landroidx/fragment/app/Fragment;->mIsNewlyAdded:Z

    goto :goto_1

    :cond_6
    return-void
.end method

.method public g0(Landroidx/fragment/app/Fragment;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 1
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroidx/fragment/app/a0;->G(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/x;

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/a0;

    if-ne v0, p0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not an active fragment of FragmentManager "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/fragment/app/a0;->t:Landroidx/fragment/app/Fragment;

    .line 4
    iput-object p1, p0, Landroidx/fragment/app/a0;->t:Landroidx/fragment/app/Fragment;

    .line 5
    invoke-virtual {p0, v0}, Landroidx/fragment/app/a0;->t(Landroidx/fragment/app/Fragment;)V

    .line 6
    iget-object p1, p0, Landroidx/fragment/app/a0;->t:Landroidx/fragment/app/Fragment;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/a0;->t(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public h(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/g0;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/a0;->c:Landroidx/fragment/app/h0;

    iget-object v1, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/h0;->h(Ljava/lang/String;)Landroidx/fragment/app/g0;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Landroidx/fragment/app/g0;

    iget-object v1, p0, Landroidx/fragment/app/a0;->n:Landroidx/fragment/app/z;

    iget-object v2, p0, Landroidx/fragment/app/a0;->c:Landroidx/fragment/app/h0;

    invoke-direct {v0, v1, v2, p1}, Landroidx/fragment/app/g0;-><init>(Landroidx/fragment/app/z;Landroidx/fragment/app/h0;Landroidx/fragment/app/Fragment;)V

    .line 3
    iget-object p1, p0, Landroidx/fragment/app/a0;->q:Landroidx/fragment/app/x;

    .line 4
    iget-object p1, p1, Landroidx/fragment/app/x;->b:Landroid/content/Context;

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/fragment/app/g0;->m(Ljava/lang/ClassLoader;)V

    .line 6
    iget p1, p0, Landroidx/fragment/app/a0;->p:I

    .line 7
    iput p1, v0, Landroidx/fragment/app/g0;->e:I

    return-object v0
.end method

.method public final h0(Landroidx/fragment/app/Fragment;)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Landroidx/fragment/app/a0;->J(Landroidx/fragment/app/Fragment;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getEnterAnim()I

    move-result v1

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getExitAnim()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getPopEnterAnim()I

    move-result v1

    add-int/2addr v1, v2

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getPopExitAnim()I

    move-result v2

    add-int/2addr v2, v1

    if-lez v2, :cond_1

    const v1, 0x7f0903bc

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 4
    invoke-virtual {v0, v1, p1}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    .line 5
    :cond_0
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 6
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getPopDirection()Z

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->setPopDirection(Z)V

    :cond_1
    return-void
.end method

.method public final i(Landroidx/fragment/app/Fragment;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->performDestroyView()V

    .line 2
    iget-object v0, p0, Landroidx/fragment/app/a0;->n:Landroidx/fragment/app/z;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/z;->n(Landroidx/fragment/app/Fragment;Z)V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 4
    iput-object v0, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 5
    iput-object v0, p1, Landroidx/fragment/app/Fragment;->mViewLifecycleOwner:Landroidx/fragment/app/u0;

    .line 6
    iget-object v2, p1, Landroidx/fragment/app/Fragment;->mViewLifecycleOwnerLiveData:Landroidx/lifecycle/o;

    invoke-virtual {v2, v0}, Landroidx/lifecycle/o;->h(Ljava/lang/Object;)V

    .line 7
    iput-boolean v1, p1, Landroidx/fragment/app/Fragment;->mInLayout:Z

    return-void
.end method

.method public i0(Landroidx/fragment/app/Fragment;)V
    .locals 1

    const/4 v0, 0x2

    .line 1
    invoke-static {v0}, Landroidx/fragment/app/a0;->N(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 2
    :cond_0
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->mHidden:Z

    .line 4
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    :cond_1
    return-void
.end method

.method public j(Landroidx/fragment/app/Fragment;)V
    .locals 3

    const/4 v0, 0x2

    .line 1
    invoke-static {v0}, Landroidx/fragment/app/a0;->N(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 2
    :cond_0
    iget-boolean v1, p1, Landroidx/fragment/app/Fragment;->mDetached:Z

    if-nez v1, :cond_3

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, p1, Landroidx/fragment/app/Fragment;->mDetached:Z

    .line 4
    iget-boolean v2, p1, Landroidx/fragment/app/Fragment;->mAdded:Z

    if-eqz v2, :cond_3

    .line 5
    invoke-static {v0}, Landroidx/fragment/app/a0;->N(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    .line 6
    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/a0;->c:Landroidx/fragment/app/h0;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/h0;->l(Landroidx/fragment/app/Fragment;)V

    .line 7
    invoke-virtual {p0, p1}, Landroidx/fragment/app/a0;->O(Landroidx/fragment/app/Fragment;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    iput-boolean v1, p0, Landroidx/fragment/app/a0;->A:Z

    .line 9
    :cond_2
    invoke-virtual {p0, p1}, Landroidx/fragment/app/a0;->h0(Landroidx/fragment/app/Fragment;)V

    :cond_3
    return-void
.end method

.method public final j0()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/a0;->c:Landroidx/fragment/app/h0;

    invoke-virtual {v0}, Landroidx/fragment/app/h0;->f()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/g0;

    .line 2
    invoke-virtual {p0, v1}, Landroidx/fragment/app/a0;->V(Landroidx/fragment/app/g0;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public k(Landroid/content/res/Configuration;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/a0;->c:Landroidx/fragment/app/h0;

    invoke-virtual {v0}, Landroidx/fragment/app/h0;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v1, p1}, Landroidx/fragment/app/Fragment;->performConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final k0()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/a0;->a:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Landroidx/fragment/app/a0;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p0, Landroidx/fragment/app/a0;->h:Landroidx/activity/b;

    .line 4
    iput-boolean v2, v1, Landroidx/activity/b;->a:Z

    .line 5
    monitor-exit v0

    return-void

    .line 6
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    iget-object v0, p0, Landroidx/fragment/app/a0;->h:Landroidx/activity/b;

    .line 8
    iget-object v1, p0, Landroidx/fragment/app/a0;->d:Ljava/util/ArrayList;

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-lez v1, :cond_2

    .line 9
    iget-object v1, p0, Landroidx/fragment/app/a0;->s:Landroidx/fragment/app/Fragment;

    .line 10
    invoke-virtual {p0, v1}, Landroidx/fragment/app/a0;->Q(Landroidx/fragment/app/Fragment;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 11
    :goto_1
    iput-boolean v2, v0, Landroidx/activity/b;->a:Z

    return-void

    :catchall_0
    move-exception v1

    .line 12
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public l(Landroid/view/MenuItem;)Z
    .locals 4

    .line 1
    iget v0, p0, Landroidx/fragment/app/a0;->p:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/a0;->c:Landroidx/fragment/app/h0;

    invoke-virtual {v0}, Landroidx/fragment/app/h0;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/Fragment;

    if-eqz v3, :cond_1

    .line 3
    invoke-virtual {v3, p1}, Landroidx/fragment/app/Fragment;->performContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v2

    :cond_2
    return v1
.end method

.method public m()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Landroidx/fragment/app/a0;->B:Z

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/a0;->C:Z

    .line 3
    iget-object v1, p0, Landroidx/fragment/app/a0;->J:Landroidx/fragment/app/d0;

    .line 4
    iput-boolean v0, v1, Landroidx/fragment/app/d0;->h:Z

    const/4 v0, 0x1

    .line 5
    invoke-virtual {p0, v0}, Landroidx/fragment/app/a0;->w(I)V

    return-void
.end method

.method public n(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .locals 7

    .line 1
    iget v0, p0, Landroidx/fragment/app/a0;->p:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    .line 2
    iget-object v3, p0, Landroidx/fragment/app/a0;->c:Landroidx/fragment/app/h0;

    invoke-virtual {v3}, Landroidx/fragment/app/h0;->i()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/fragment/app/Fragment;

    if-eqz v5, :cond_1

    .line 3
    invoke-virtual {p0, v5}, Landroidx/fragment/app/a0;->P(Landroidx/fragment/app/Fragment;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v5, p1, p2}, Landroidx/fragment/app/Fragment;->performCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v6

    if-eqz v6, :cond_1

    if-nez v0, :cond_2

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5
    :cond_2
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x1

    goto :goto_0

    .line 6
    :cond_3
    iget-object p1, p0, Landroidx/fragment/app/a0;->e:Ljava/util/ArrayList;

    if-eqz p1, :cond_6

    .line 7
    :goto_1
    iget-object p1, p0, Landroidx/fragment/app/a0;->e:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v1, p1, :cond_6

    .line 8
    iget-object p1, p0, Landroidx/fragment/app/a0;->e:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_4

    .line 9
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    .line 10
    :cond_4
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->onDestroyOptionsMenu()V

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 11
    :cond_6
    iput-object v0, p0, Landroidx/fragment/app/a0;->e:Ljava/util/ArrayList;

    return v4
.end method

.method public o()V
    .locals 3

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroidx/fragment/app/a0;->D:Z

    .line 2
    invoke-virtual {p0, v0}, Landroidx/fragment/app/a0;->C(Z)Z

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/a0;->z()V

    const/4 v0, -0x1

    .line 4
    invoke-virtual {p0, v0}, Landroidx/fragment/app/a0;->w(I)V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Landroidx/fragment/app/a0;->q:Landroidx/fragment/app/x;

    .line 6
    iput-object v0, p0, Landroidx/fragment/app/a0;->r:Landroidx/fragment/app/t;

    .line 7
    iput-object v0, p0, Landroidx/fragment/app/a0;->s:Landroidx/fragment/app/Fragment;

    .line 8
    iget-object v1, p0, Landroidx/fragment/app/a0;->g:Landroidx/activity/OnBackPressedDispatcher;

    if-eqz v1, :cond_1

    .line 9
    iget-object v1, p0, Landroidx/fragment/app/a0;->h:Landroidx/activity/b;

    .line 10
    iget-object v1, v1, Landroidx/activity/b;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/activity/a;

    .line 11
    invoke-interface {v2}, Landroidx/activity/a;->cancel()V

    goto :goto_0

    .line 12
    :cond_0
    iput-object v0, p0, Landroidx/fragment/app/a0;->g:Landroidx/activity/OnBackPressedDispatcher;

    .line 13
    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/a0;->w:Landroidx/activity/result/c;

    if-eqz v0, :cond_2

    .line 14
    invoke-virtual {v0}, Landroidx/activity/result/c;->b()V

    .line 15
    iget-object v0, p0, Landroidx/fragment/app/a0;->x:Landroidx/activity/result/c;

    invoke-virtual {v0}, Landroidx/activity/result/c;->b()V

    .line 16
    iget-object v0, p0, Landroidx/fragment/app/a0;->y:Landroidx/activity/result/c;

    invoke-virtual {v0}, Landroidx/activity/result/c;->b()V

    :cond_2
    return-void
.end method

.method public p()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/a0;->c:Landroidx/fragment/app/h0;

    invoke-virtual {v0}, Landroidx/fragment/app/h0;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->performLowMemory()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public q(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/a0;->c:Landroidx/fragment/app/h0;

    invoke-virtual {v0}, Landroidx/fragment/app/h0;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v1, p1}, Landroidx/fragment/app/Fragment;->performMultiWindowModeChanged(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public r(Landroid/view/MenuItem;)Z
    .locals 4

    .line 1
    iget v0, p0, Landroidx/fragment/app/a0;->p:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/a0;->c:Landroidx/fragment/app/h0;

    invoke-virtual {v0}, Landroidx/fragment/app/h0;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/Fragment;

    if-eqz v3, :cond_1

    .line 3
    invoke-virtual {v3, p1}, Landroidx/fragment/app/Fragment;->performOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v2

    :cond_2
    return v1
.end method

.method public s(Landroid/view/Menu;)V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/fragment/app/a0;->p:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/a0;->c:Landroidx/fragment/app/h0;

    invoke-virtual {v0}, Landroidx/fragment/app/h0;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {v1, p1}, Landroidx/fragment/app/Fragment;->performOptionsMenuClosed(Landroid/view/Menu;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final t(Landroidx/fragment/app/Fragment;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroidx/fragment/app/a0;->G(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->performPrimaryNavigationFragmentChanged()V

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "FragmentManager{"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " in "

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    iget-object v1, p0, Landroidx/fragment/app/a0;->s:Landroidx/fragment/app/Fragment;

    const-string v2, "}"

    const-string v3, "{"

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 7
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    iget-object v1, p0, Landroidx/fragment/app/a0;->s:Landroidx/fragment/app/Fragment;

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 11
    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/a0;->q:Landroidx/fragment/app/x;

    if-eqz v1, :cond_1

    .line 12
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 13
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    iget-object v1, p0, Landroidx/fragment/app/a0;->q:Landroidx/fragment/app/x;

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string v1, "null"

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v1, "}}"

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/a0;->c:Landroidx/fragment/app/h0;

    invoke-virtual {v0}, Landroidx/fragment/app/h0;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v1, p1}, Landroidx/fragment/app/Fragment;->performPictureInPictureModeChanged(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public v(Landroid/view/Menu;)Z
    .locals 5

    .line 1
    iget v0, p0, Landroidx/fragment/app/a0;->p:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/a0;->c:Landroidx/fragment/app/h0;

    invoke-virtual {v0}, Landroidx/fragment/app/h0;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/Fragment;

    if-eqz v3, :cond_1

    .line 3
    invoke-virtual {p0, v3}, Landroidx/fragment/app/a0;->P(Landroidx/fragment/app/Fragment;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3, p1}, Landroidx/fragment/app/Fragment;->performPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public final w(I)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1
    :try_start_0
    iput-boolean v0, p0, Landroidx/fragment/app/a0;->b:Z

    .line 2
    iget-object v2, p0, Landroidx/fragment/app/a0;->c:Landroidx/fragment/app/h0;

    .line 3
    iget-object v2, v2, Landroidx/fragment/app/h0;->b:Ljava/lang/Object;

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/g0;

    if-eqz v3, :cond_0

    .line 4
    iput p1, v3, Landroidx/fragment/app/g0;->e:I

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0, p1, v1}, Landroidx/fragment/app/a0;->S(IZ)V

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/a0;->f()Ljava/util/Set;

    move-result-object p1

    .line 7
    check-cast p1, Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/w0;

    .line 8
    invoke-virtual {v2}, Landroidx/fragment/app/w0;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 9
    :cond_2
    iput-boolean v1, p0, Landroidx/fragment/app/a0;->b:Z

    .line 10
    invoke-virtual {p0, v0}, Landroidx/fragment/app/a0;->C(Z)Z

    return-void

    :catchall_0
    move-exception p1

    .line 11
    iput-boolean v1, p0, Landroidx/fragment/app/a0;->b:Z

    .line 12
    throw p1
.end method

.method public final x()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/fragment/app/a0;->E:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/a0;->E:Z

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/a0;->j0()V

    :cond_0
    return-void
.end method

.method public y(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5

    const-string v0, "    "

    .line 1
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/a;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Landroidx/fragment/app/a0;->c:Landroidx/fragment/app/h0;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4
    iget-object v3, v1, Landroidx/fragment/app/h0;->b:Ljava/lang/Object;

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 5
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "Active Fragments:"

    .line 6
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7
    iget-object v3, v1, Landroidx/fragment/app/h0;->b:Ljava/lang/Object;

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/g0;

    .line 8
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-eqz v4, :cond_0

    .line 9
    iget-object v4, v4, Landroidx/fragment/app/g0;->c:Landroidx/fragment/app/Fragment;

    .line 10
    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 11
    invoke-virtual {v4, v2, p2, p3, p4}, Landroidx/fragment/app/Fragment;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v4, "null"

    .line 12
    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 13
    :cond_1
    iget-object p2, v1, Landroidx/fragment/app/h0;->a:Ljava/lang/Object;

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 p4, 0x0

    if-lez p2, :cond_2

    .line 14
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Added Fragments:"

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_1
    if-ge v2, p2, :cond_2

    .line 15
    iget-object v3, v1, Landroidx/fragment/app/h0;->a:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/Fragment;

    .line 16
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  #"

    .line 17
    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 18
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v4, ": "

    .line 19
    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 20
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 21
    :cond_2
    iget-object p2, p0, Landroidx/fragment/app/a0;->e:Ljava/util/ArrayList;

    if-eqz p2, :cond_3

    .line 22
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_3

    .line 23
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Fragments Created Menus:"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_2
    if-ge v1, p2, :cond_3

    .line 24
    iget-object v2, p0, Landroidx/fragment/app/a0;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/Fragment;

    .line 25
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  #"

    .line 26
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 27
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ": "

    .line 28
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 29
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 30
    :cond_3
    iget-object p2, p0, Landroidx/fragment/app/a0;->d:Ljava/util/ArrayList;

    if-eqz p2, :cond_4

    .line 31
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_4

    .line 32
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Back Stack:"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_3
    if-ge v1, p2, :cond_4

    .line 33
    iget-object v2, p0, Landroidx/fragment/app/a0;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/a;

    .line 34
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  #"

    .line 35
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 36
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ": "

    .line 37
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 38
    invoke-virtual {v2}, Landroidx/fragment/app/a;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v3, 0x1

    .line 39
    invoke-virtual {v2, v0, p3, v3}, Landroidx/fragment/app/a;->j(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 40
    :cond_4
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 41
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Back Stack Index: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroidx/fragment/app/a0;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 42
    iget-object p2, p0, Landroidx/fragment/app/a0;->a:Ljava/util/ArrayList;

    monitor-enter p2

    .line 43
    :try_start_0
    iget-object v0, p0, Landroidx/fragment/app/a0;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 44
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Pending Actions:"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_4
    if-ge p4, v0, :cond_5

    .line 45
    iget-object v1, p0, Landroidx/fragment/app/a0;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/a0$l;

    .line 46
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  #"

    .line 47
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, ": "

    .line 49
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_4

    .line 51
    :cond_5
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "FragmentManager misc state:"

    .line 53
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "  mHost="

    .line 55
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 56
    iget-object p2, p0, Landroidx/fragment/app/a0;->q:Landroidx/fragment/app/x;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 57
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "  mContainer="

    .line 58
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 59
    iget-object p2, p0, Landroidx/fragment/app/a0;->r:Landroidx/fragment/app/t;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 60
    iget-object p2, p0, Landroidx/fragment/app/a0;->s:Landroidx/fragment/app/Fragment;

    if-eqz p2, :cond_6

    .line 61
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "  mParent="

    .line 62
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 63
    iget-object p2, p0, Landroidx/fragment/app/a0;->s:Landroidx/fragment/app/Fragment;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 64
    :cond_6
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "  mCurState="

    .line 65
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 66
    iget p2, p0, Landroidx/fragment/app/a0;->p:I

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(I)V

    const-string p2, " mStateSaved="

    .line 67
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 68
    iget-boolean p2, p0, Landroidx/fragment/app/a0;->B:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Z)V

    const-string p2, " mStopped="

    .line 69
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 70
    iget-boolean p2, p0, Landroidx/fragment/app/a0;->C:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Z)V

    const-string p2, " mDestroyed="

    .line 71
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 72
    iget-boolean p2, p0, Landroidx/fragment/app/a0;->D:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Z)V

    .line 73
    iget-boolean p2, p0, Landroidx/fragment/app/a0;->A:Z

    if-eqz p2, :cond_7

    .line 74
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "  mNeedMenuInvalidate="

    .line 75
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 76
    iget-boolean p1, p0, Landroidx/fragment/app/a0;->A:Z

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->println(Z)V

    :cond_7
    return-void

    :catchall_0
    move-exception p1

    .line 77
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final z()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/a0;->f()Ljava/util/Set;

    move-result-object v0

    .line 2
    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/w0;

    .line 3
    invoke-virtual {v1}, Landroidx/fragment/app/w0;->e()V

    goto :goto_0

    :cond_0
    return-void
.end method
