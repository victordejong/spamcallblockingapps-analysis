.class final Lleakcanary/a$g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lleakcanary/a$g;->apply(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Set;


# direct methods
.method constructor <init>(Ljava/util/Set;)V
    .locals 0

    iput-object p1, p0, Lleakcanary/a$g$a;->a:Ljava/util/Set;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 158
    sget-object v0, Lleakcanary/a;->Companion:Lleakcanary/a$e;

    .line 1726
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const-string v1, "Thread.currentThread()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/p;->a()V

    .line 1727
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/lang/ThreadGroup;->getParent()Ljava/lang/ThreadGroup;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/ThreadGroup;->getParent()Ljava/lang/ThreadGroup;

    move-result-object v0

    const-string v1, "rootGroup.parent"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 1728
    :cond_1
    invoke-virtual {v0}, Ljava/lang/ThreadGroup;->activeCount()I

    move-result v1

    new-array v1, v1, [Ljava/lang/Thread;

    :goto_1
    const/4 v2, 0x1

    .line 1729
    invoke-virtual {v0, v1, v2}, Ljava/lang/ThreadGroup;->enumerate([Ljava/lang/Thread;Z)I

    move-result v3

    array-length v4, v1

    if-ne v3, v4, :cond_2

    .line 1730
    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [Ljava/lang/Thread;

    goto :goto_1

    .line 1793
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/Collection;

    .line 1802
    array-length v3, v1

    const/4 v4, 0x0

    :goto_2
    const/4 v5, 0x0

    if-ge v4, v3, :cond_5

    aget-object v6, v1, v4

    .line 1732
    instance-of v7, v6, Landroid/os/HandlerThread;

    if-eqz v7, :cond_3

    move-object v5, v6

    check-cast v5, Landroid/os/HandlerThread;

    :cond_3
    if-eqz v5, :cond_4

    .line 1801
    invoke-interface {v0, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1804
    :cond_5
    check-cast v0, Ljava/util/List;

    .line 158
    check-cast v0, Ljava/lang/Iterable;

    .line 787
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 796
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 795
    check-cast v3, Landroid/os/HandlerThread;

    .line 160
    invoke-virtual {v3}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v4

    const/4 v6, -0x1

    if-eq v4, v6, :cond_8

    .line 161
    iget-object v6, p0, Lleakcanary/a$g$a;->a:Ljava/util/Set;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    goto :goto_4

    .line 164
    :cond_7
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4, v3}, Lkotlin/t;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/n;

    move-result-object v3

    goto :goto_5

    :cond_8
    :goto_4
    move-object v3, v5

    :goto_5
    if-eqz v3, :cond_6

    .line 795
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 798
    :cond_9
    check-cast v1, Ljava/util/List;

    .line 167
    iget-object v0, p0, Lleakcanary/a$g$a;->a:Ljava/util/Set;

    check-cast v0, Ljava/util/Collection;

    check-cast v1, Ljava/lang/Iterable;

    .line 799
    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v1, v4}, Lkotlin/a/n;->a(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v3, Ljava/util/Collection;

    .line 800
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 801
    check-cast v6, Lkotlin/n;

    .line 2027
    iget-object v6, v6, Lkotlin/n;->a:Ljava/lang/Object;

    .line 167
    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 802
    :cond_a
    check-cast v3, Ljava/util/List;

    check-cast v3, Ljava/lang/Iterable;

    .line 167
    invoke-static {v0, v3}, Lkotlin/a/n;->a(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 803
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {v1, v4}, Lkotlin/a/n;->a(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 804
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 805
    check-cast v3, Lkotlin/n;

    .line 2028
    iget-object v3, v3, Lkotlin/n;->b:Ljava/lang/Object;

    .line 169
    check-cast v3, Landroid/os/HandlerThread;

    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 806
    :cond_b
    check-cast v0, Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 807
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/HandlerThread;

    .line 171
    sget-object v3, Ld/a;->a:Ld/a;

    .line 808
    invoke-static {}, Ld/a;->a()Ld/a$a;

    move-result-object v3

    if-eqz v3, :cond_c

    .line 171
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Setting up flushing for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 172
    :cond_c
    new-instance v3, Lkotlin/jvm/internal/ab$a;

    invoke-direct {v3}, Lkotlin/jvm/internal/ab$a;-><init>()V

    iput-boolean v2, v3, Lkotlin/jvm/internal/ab$a;->a:Z

    .line 173
    new-instance v4, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 174
    sget-object v5, Lleakcanary/a;->Companion:Lleakcanary/a$e;

    new-instance v5, Lleakcanary/a$g$a$a;

    invoke-direct {v5, v1, v3, v4}, Lleakcanary/a$g$a$a;-><init>(Landroid/os/HandlerThread;Lkotlin/jvm/internal/ab$a;Landroid/os/Handler;)V

    check-cast v5, Lkotlin/jvm/functions/Function0;

    .line 2710
    :try_start_0
    new-instance v1, Lleakcanary/a$e$d;

    invoke-direct {v1, v5}, Lleakcanary/a$e$d;-><init>(Lkotlin/jvm/functions/Function0;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v4, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_8

    :catch_0
    nop

    goto :goto_8

    :cond_d
    return-void
.end method
