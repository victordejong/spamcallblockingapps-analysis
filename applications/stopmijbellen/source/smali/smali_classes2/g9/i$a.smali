.class public Lg9/i$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg9/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Lg9/i;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lg9/i;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2
    iput-object p2, p0, Lg9/i$a;->a:Lg9/i;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget v2, v1, Landroid/os/Message;->what:I

    const/4 v3, 0x0

    const/4 v4, 0x2

    const-string v5, "canceled"

    const-string v6, ""

    const-string v7, "Dispatcher"

    packed-switch v2, :pswitch_data_0

    .line 2
    :pswitch_0
    sget-object v2, Lg9/s;->n:Landroid/os/Handler;

    new-instance v3, Lg9/i$a$a;

    invoke-direct {v3, v0, v1}, Lg9/i$a$a;-><init>(Lg9/i$a;Landroid/os/Message;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_11

    .line 3
    :pswitch_1
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4
    iget-object v2, v0, Lg9/i$a;->a:Lg9/i;

    .line 5
    iget-object v4, v2, Lg9/i;->g:Ljava/util/Set;

    invoke-interface {v4, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    goto/16 :goto_11

    .line 6
    :cond_0
    iget-object v4, v2, Lg9/i;->f:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 7
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lg9/a;

    .line 8
    iget-object v6, v5, Lg9/a;->j:Ljava/lang/Object;

    .line 9
    invoke-virtual {v6, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    if-nez v3, :cond_2

    .line 10
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 11
    :cond_2
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_3
    if-eqz v3, :cond_28

    .line 13
    iget-object v1, v2, Lg9/i;->i:Landroid/os/Handler;

    const/16 v2, 0xd

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_11

    .line 14
    :pswitch_2
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 15
    iget-object v2, v0, Lg9/i$a;->a:Lg9/i;

    .line 16
    iget-object v3, v2, Lg9/i;->g:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto/16 :goto_11

    .line 17
    :cond_4
    iget-object v3, v2, Lg9/i;->d:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_28

    .line 18
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg9/c;

    .line 19
    iget-object v6, v4, Lg9/c;->b:Lg9/s;

    .line 20
    iget-boolean v6, v6, Lg9/s;->m:Z

    .line 21
    iget-object v10, v4, Lg9/c;->k:Lg9/a;

    .line 22
    iget-object v11, v4, Lg9/c;->l:Ljava/util/List;

    if-eqz v11, :cond_6

    .line 23
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_6

    const/4 v12, 0x1

    goto :goto_2

    :cond_6
    const/4 v12, 0x0

    :goto_2
    if-nez v10, :cond_7

    if-nez v12, :cond_7

    goto :goto_1

    :cond_7
    const-string v13, "\' was paused"

    const-string v14, "because tag \'"

    const-string v15, "paused"

    if-eqz v10, :cond_8

    .line 24
    iget-object v8, v10, Lg9/a;->j:Ljava/lang/Object;

    .line 25
    invoke-virtual {v8, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 26
    invoke-virtual {v4, v10}, Lg9/c;->d(Lg9/a;)V

    .line 27
    iget-object v8, v2, Lg9/i;->f:Ljava/util/Map;

    invoke-virtual {v10}, Lg9/a;->d()Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v8, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v6, :cond_8

    .line 28
    iget-object v8, v10, Lg9/a;->b:Lg9/v;

    invoke-virtual {v8}, Lg9/v;->b()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v15, v8, v9}, Lg9/d0;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    if-eqz v12, :cond_b

    .line 29
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    :goto_3
    if-ltz v8, :cond_b

    .line 30
    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lg9/a;

    .line 31
    iget-object v10, v9, Lg9/a;->j:Ljava/lang/Object;

    .line 32
    invoke-virtual {v10, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_9

    goto :goto_4

    .line 33
    :cond_9
    invoke-virtual {v4, v9}, Lg9/c;->d(Lg9/a;)V

    .line 34
    iget-object v10, v2, Lg9/i;->f:Ljava/util/Map;

    invoke-virtual {v9}, Lg9/a;->d()Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v10, v12, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v6, :cond_a

    .line 35
    iget-object v9, v9, Lg9/a;->b:Lg9/v;

    invoke-virtual {v9}, Lg9/v;->b()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v15, v9, v10}, Lg9/d0;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    :goto_4
    add-int/lit8 v8, v8, -0x1

    goto :goto_3

    .line 36
    :cond_b
    invoke-virtual {v4}, Lg9/c;->b()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 37
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    if-eqz v6, :cond_5

    .line 38
    invoke-static {v4}, Lg9/d0;->c(Lg9/c;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "all actions paused"

    invoke-static {v7, v5, v4, v6}, Lg9/d0;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 39
    :pswitch_3
    iget-object v2, v0, Lg9/i$a;->a:Lg9/i;

    iget v1, v1, Landroid/os/Message;->arg1:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_c

    const/4 v8, 0x1

    goto :goto_5

    :cond_c
    const/4 v8, 0x0

    .line 40
    :goto_5
    iput-boolean v8, v2, Lg9/i;->n:Z

    goto/16 :goto_11

    .line 41
    :pswitch_4
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/NetworkInfo;

    .line 42
    iget-object v2, v0, Lg9/i$a;->a:Lg9/i;

    .line 43
    iget-object v3, v2, Lg9/i;->b:Ljava/util/concurrent/ExecutorService;

    instance-of v5, v3, Lg9/u;

    if-eqz v5, :cond_11

    .line 44
    check-cast v3, Lg9/u;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x3

    if-eqz v1, :cond_10

    .line 45
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v8

    if-nez v8, :cond_d

    goto :goto_6

    .line 46
    :cond_d
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v8

    if-eqz v8, :cond_f

    const/4 v9, 0x1

    if-eq v8, v9, :cond_e

    const/4 v4, 0x6

    if-eq v8, v4, :cond_e

    const/16 v4, 0x9

    if-eq v8, v4, :cond_e

    .line 47
    invoke-virtual {v3, v5}, Ljava/util/concurrent/ThreadPoolExecutor;->setCorePoolSize(I)V

    .line 48
    invoke-virtual {v3, v5}, Ljava/util/concurrent/ThreadPoolExecutor;->setMaximumPoolSize(I)V

    goto :goto_7

    :cond_e
    const/4 v4, 0x4

    .line 49
    invoke-virtual {v3, v4}, Ljava/util/concurrent/ThreadPoolExecutor;->setCorePoolSize(I)V

    .line 50
    invoke-virtual {v3, v4}, Ljava/util/concurrent/ThreadPoolExecutor;->setMaximumPoolSize(I)V

    goto :goto_7

    .line 51
    :cond_f
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v8

    packed-switch v8, :pswitch_data_1

    packed-switch v8, :pswitch_data_2

    .line 52
    invoke-virtual {v3, v5}, Ljava/util/concurrent/ThreadPoolExecutor;->setCorePoolSize(I)V

    .line 53
    invoke-virtual {v3, v5}, Ljava/util/concurrent/ThreadPoolExecutor;->setMaximumPoolSize(I)V

    goto :goto_7

    :pswitch_5
    const/4 v5, 0x1

    .line 54
    invoke-virtual {v3, v5}, Ljava/util/concurrent/ThreadPoolExecutor;->setCorePoolSize(I)V

    .line 55
    invoke-virtual {v3, v5}, Ljava/util/concurrent/ThreadPoolExecutor;->setMaximumPoolSize(I)V

    goto :goto_7

    .line 56
    :pswitch_6
    invoke-virtual {v3, v5}, Ljava/util/concurrent/ThreadPoolExecutor;->setCorePoolSize(I)V

    .line 57
    invoke-virtual {v3, v5}, Ljava/util/concurrent/ThreadPoolExecutor;->setMaximumPoolSize(I)V

    goto :goto_7

    .line 58
    :pswitch_7
    invoke-virtual {v3, v4}, Ljava/util/concurrent/ThreadPoolExecutor;->setCorePoolSize(I)V

    .line 59
    invoke-virtual {v3, v4}, Ljava/util/concurrent/ThreadPoolExecutor;->setMaximumPoolSize(I)V

    goto :goto_7

    .line 60
    :cond_10
    :goto_6
    invoke-virtual {v3, v5}, Ljava/util/concurrent/ThreadPoolExecutor;->setCorePoolSize(I)V

    .line 61
    invoke-virtual {v3, v5}, Ljava/util/concurrent/ThreadPoolExecutor;->setMaximumPoolSize(I)V

    :cond_11
    :goto_7
    if-eqz v1, :cond_28

    .line 62
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 63
    iget-object v1, v2, Lg9/i;->e:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_28

    .line 64
    iget-object v1, v2, Lg9/i;->e:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 65
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_28

    .line 66
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg9/a;

    .line 67
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 68
    iget-object v4, v3, Lg9/a;->a:Lg9/s;

    .line 69
    iget-boolean v4, v4, Lg9/s;->m:Z

    if-eqz v4, :cond_12

    .line 70
    iget-object v4, v3, Lg9/a;->b:Lg9/v;

    .line 71
    invoke-virtual {v4}, Lg9/v;->b()Ljava/lang/String;

    move-result-object v4

    const-string v5, "replaying"

    .line 72
    invoke-static {v7, v5, v4, v6}, Lg9/d0;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_12
    const/4 v4, 0x0

    .line 73
    invoke-virtual {v2, v3, v4}, Lg9/i;->e(Lg9/a;Z)V

    goto :goto_8

    .line 74
    :pswitch_8
    iget-object v1, v0, Lg9/i$a;->a:Lg9/i;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, v1, Lg9/i;->l:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 76
    iget-object v3, v1, Lg9/i;->l:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 77
    iget-object v1, v1, Lg9/i;->i:Landroid/os/Handler;

    const/16 v3, 0x8

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 78
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_13

    goto/16 :goto_11

    :cond_13
    const/4 v1, 0x0

    .line 79
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg9/c;

    .line 80
    iget-object v1, v1, Lg9/c;->b:Lg9/s;

    .line 81
    iget-boolean v1, v1, Lg9/s;->m:Z

    if-eqz v1, :cond_28

    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg9/c;

    .line 84
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_14

    const-string v4, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    :cond_14
    invoke-static {v3}, Lg9/d0;->c(Lg9/c;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    .line 86
    :cond_15
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "delivered"

    .line 87
    invoke-static {v7, v2, v1, v6}, Lg9/d0;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_11

    .line 88
    :pswitch_9
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lg9/c;

    .line 89
    iget-object v2, v0, Lg9/i$a;->a:Lg9/i;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lg9/i;->d(Lg9/c;Z)V

    goto/16 :goto_11

    .line 90
    :pswitch_a
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lg9/c;

    .line 91
    iget-object v2, v0, Lg9/i$a;->a:Lg9/i;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    iget-object v4, v1, Lg9/c;->n:Ljava/util/concurrent/Future;

    if-eqz v4, :cond_16

    invoke-interface {v4}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v4

    if-eqz v4, :cond_16

    const/4 v4, 0x1

    goto :goto_a

    :cond_16
    const/4 v4, 0x0

    :goto_a
    if-eqz v4, :cond_17

    goto/16 :goto_11

    .line 93
    :cond_17
    iget-object v4, v2, Lg9/i;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v4}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v4

    if-eqz v4, :cond_18

    const/4 v5, 0x0

    .line 94
    invoke-virtual {v2, v1, v5}, Lg9/i;->d(Lg9/c;Z)V

    goto/16 :goto_11

    :cond_18
    const/4 v5, 0x0

    .line 95
    iget-boolean v4, v2, Lg9/i;->m:Z

    if-eqz v4, :cond_19

    .line 96
    iget-object v3, v2, Lg9/i;->a:Landroid/content/Context;

    sget-object v4, Lg9/d0;->a:Ljava/lang/StringBuilder;

    const-string v4, "connectivity"

    .line 97
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 98
    check-cast v3, Landroid/net/ConnectivityManager;

    .line 99
    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    .line 100
    :cond_19
    iget-boolean v4, v2, Lg9/i;->n:Z

    .line 101
    iget v8, v1, Lg9/c;->r:I

    if-lez v8, :cond_1a

    const/4 v9, 0x1

    goto :goto_b

    :cond_1a
    const/4 v9, 0x0

    :goto_b
    if-nez v9, :cond_1b

    const/4 v4, 0x0

    goto :goto_c

    :cond_1b
    const/4 v9, 0x1

    sub-int/2addr v8, v9

    .line 102
    iput v8, v1, Lg9/c;->r:I

    .line 103
    iget-object v8, v1, Lg9/c;->j:Lg9/x;

    invoke-virtual {v8, v4, v3}, Lg9/x;->g(ZLandroid/net/NetworkInfo;)Z

    move-result v4

    :goto_c
    if-eqz v4, :cond_1e

    .line 104
    iget-object v3, v1, Lg9/c;->b:Lg9/s;

    .line 105
    iget-boolean v3, v3, Lg9/s;->m:Z

    if-eqz v3, :cond_1c

    .line 106
    invoke-static {v1}, Lg9/d0;->c(Lg9/c;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "retrying"

    .line 107
    invoke-static {v7, v4, v3, v6}, Lg9/d0;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    :cond_1c
    iget-object v3, v1, Lg9/c;->p:Ljava/lang/Exception;

    .line 109
    instance-of v3, v3, Lg9/q$a;

    if-eqz v3, :cond_1d

    .line 110
    iget v3, v1, Lg9/c;->i:I

    const/4 v4, 0x1

    or-int/2addr v3, v4

    iput v3, v1, Lg9/c;->i:I

    .line 111
    :cond_1d
    iget-object v2, v2, Lg9/i;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v2

    iput-object v2, v1, Lg9/c;->n:Ljava/util/concurrent/Future;

    goto/16 :goto_11

    .line 112
    :cond_1e
    iget-boolean v3, v2, Lg9/i;->m:Z

    if-eqz v3, :cond_1f

    .line 113
    iget-object v3, v1, Lg9/c;->j:Lg9/x;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    instance-of v3, v3, Lg9/q;

    if-eqz v3, :cond_1f

    const/4 v3, 0x1

    goto :goto_d

    :cond_1f
    const/4 v3, 0x0

    .line 115
    :goto_d
    invoke-virtual {v2, v1, v3}, Lg9/i;->d(Lg9/c;Z)V

    if-eqz v3, :cond_28

    .line 116
    iget-object v3, v1, Lg9/c;->k:Lg9/a;

    if-eqz v3, :cond_20

    .line 117
    invoke-virtual {v3}, Lg9/a;->d()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_20

    const/4 v6, 0x1

    .line 118
    iput-boolean v6, v3, Lg9/a;->k:Z

    .line 119
    iget-object v6, v2, Lg9/i;->e:Ljava/util/Map;

    invoke-interface {v6, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    :cond_20
    iget-object v1, v1, Lg9/c;->l:Ljava/util/List;

    if-eqz v1, :cond_28

    .line 121
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v8, 0x0

    :goto_e
    if-ge v8, v3, :cond_28

    .line 122
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg9/a;

    .line 123
    invoke-virtual {v4}, Lg9/a;->d()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_21

    const/4 v6, 0x1

    .line 124
    iput-boolean v6, v4, Lg9/a;->k:Z

    .line 125
    iget-object v6, v2, Lg9/i;->e:Ljava/util/Map;

    invoke-interface {v6, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_21
    add-int/lit8 v8, v8, 0x1

    goto :goto_e

    :pswitch_b
    const/4 v5, 0x0

    .line 126
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lg9/c;

    .line 127
    iget-object v2, v0, Lg9/i$a;->a:Lg9/i;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    iget v3, v1, Lg9/c;->h:I

    and-int/2addr v3, v4

    if-nez v3, :cond_22

    const/4 v8, 0x1

    goto :goto_f

    :cond_22
    const/4 v8, 0x0

    :goto_f
    if-eqz v8, :cond_25

    .line 129
    iget-object v3, v2, Lg9/i;->j:Lg9/d;

    .line 130
    iget-object v4, v1, Lg9/c;->f:Ljava/lang/String;

    .line 131
    iget-object v5, v1, Lg9/c;->m:Landroid/graphics/Bitmap;

    .line 132
    check-cast v3, Lg9/n;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v4, :cond_24

    if-eqz v5, :cond_24

    .line 133
    invoke-static {v5}, Lg9/d0;->b(Landroid/graphics/Bitmap;)I

    move-result v6

    .line 134
    iget-object v8, v3, Lg9/n;->a:Landroid/util/LruCache;

    invoke-virtual {v8}, Landroid/util/LruCache;->maxSize()I

    move-result v8

    if-le v6, v8, :cond_23

    .line 135
    iget-object v3, v3, Lg9/n;->a:Landroid/util/LruCache;

    invoke-virtual {v3, v4}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10

    .line 136
    :cond_23
    iget-object v3, v3, Lg9/n;->a:Landroid/util/LruCache;

    new-instance v8, Lg9/n$a;

    invoke-direct {v8, v5, v6}, Lg9/n$a;-><init>(Landroid/graphics/Bitmap;I)V

    invoke-virtual {v3, v4, v8}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10

    .line 137
    :cond_24
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "key == null || bitmap == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 138
    :cond_25
    :goto_10
    iget-object v3, v2, Lg9/i;->d:Ljava/util/Map;

    .line 139
    iget-object v4, v1, Lg9/c;->f:Ljava/lang/String;

    .line 140
    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    invoke-virtual {v2, v1}, Lg9/i;->a(Lg9/c;)V

    .line 142
    iget-object v2, v1, Lg9/c;->b:Lg9/s;

    .line 143
    iget-boolean v2, v2, Lg9/s;->m:Z

    if-eqz v2, :cond_28

    .line 144
    invoke-static {v1}, Lg9/d0;->c(Lg9/c;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "batched"

    const-string v3, "for completion"

    invoke-static {v7, v2, v1, v3}, Lg9/d0;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_11

    .line 145
    :pswitch_c
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lg9/a;

    .line 146
    iget-object v2, v0, Lg9/i$a;->a:Lg9/i;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    iget-object v3, v1, Lg9/a;->i:Ljava/lang/String;

    .line 148
    iget-object v4, v2, Lg9/i;->d:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg9/c;

    if-eqz v4, :cond_26

    .line 149
    invoke-virtual {v4, v1}, Lg9/c;->d(Lg9/a;)V

    .line 150
    invoke-virtual {v4}, Lg9/c;->b()Z

    move-result v4

    if-eqz v4, :cond_26

    .line 151
    iget-object v4, v2, Lg9/i;->d:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    iget-object v3, v1, Lg9/a;->a:Lg9/s;

    .line 153
    iget-boolean v3, v3, Lg9/s;->m:Z

    if-eqz v3, :cond_26

    .line 154
    iget-object v3, v1, Lg9/a;->b:Lg9/v;

    .line 155
    invoke-virtual {v3}, Lg9/v;->b()Ljava/lang/String;

    move-result-object v3

    .line 156
    invoke-static {v7, v5, v3, v6}, Lg9/d0;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    :cond_26
    iget-object v3, v2, Lg9/i;->g:Ljava/util/Set;

    .line 158
    iget-object v4, v1, Lg9/a;->j:Ljava/lang/Object;

    .line 159
    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 160
    iget-object v3, v2, Lg9/i;->f:Ljava/util/Map;

    invoke-virtual {v1}, Lg9/a;->d()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    iget-object v3, v1, Lg9/a;->a:Lg9/s;

    .line 162
    iget-boolean v3, v3, Lg9/s;->m:Z

    if-eqz v3, :cond_27

    .line 163
    iget-object v3, v1, Lg9/a;->b:Lg9/v;

    .line 164
    invoke-virtual {v3}, Lg9/v;->b()Ljava/lang/String;

    move-result-object v3

    const-string v4, "because paused request got canceled"

    invoke-static {v7, v5, v3, v4}, Lg9/d0;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    :cond_27
    iget-object v2, v2, Lg9/i;->e:Ljava/util/Map;

    invoke-virtual {v1}, Lg9/a;->d()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg9/a;

    if-eqz v1, :cond_28

    .line 166
    iget-object v2, v1, Lg9/a;->a:Lg9/s;

    .line 167
    iget-boolean v2, v2, Lg9/s;->m:Z

    if-eqz v2, :cond_28

    .line 168
    iget-object v1, v1, Lg9/a;->b:Lg9/v;

    .line 169
    invoke-virtual {v1}, Lg9/v;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "from replaying"

    invoke-static {v7, v5, v1, v2}, Lg9/d0;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11

    .line 170
    :pswitch_d
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lg9/a;

    .line 171
    iget-object v2, v0, Lg9/i$a;->a:Lg9/i;

    const/4 v3, 0x1

    .line 172
    invoke-virtual {v2, v1, v3}, Lg9/i;->e(Lg9/a;Z)V

    :cond_28
    :goto_11
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xc
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method
