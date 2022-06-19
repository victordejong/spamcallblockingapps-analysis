.class public Lg9/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg9/i$c;,
        Lg9/i$b;,
        Lg9/i$a;
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/util/concurrent/ExecutorService;

.field public final c:Lg9/j;

.field public final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lg9/c;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lg9/a;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lg9/a;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Landroid/os/Handler;

.field public final i:Landroid/os/Handler;

.field public final j:Lg9/d;

.field public final k:Lg9/z;

.field public final l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lg9/c;",
            ">;"
        }
    .end annotation
.end field

.field public final m:Z

.field public n:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;Landroid/os/Handler;Lg9/j;Lg9/d;Lg9/z;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lg9/i$b;

    invoke-direct {v0}, Lg9/i$b;-><init>()V

    .line 3
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 4
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    sget-object v2, Lg9/d0;->a:Ljava/lang/StringBuilder;

    .line 5
    new-instance v2, Lg9/c0;

    invoke-direct {v2, v1}, Lg9/c0;-><init>(Landroid/os/Looper;)V

    .line 6
    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    const-wide/16 v3, 0x3e8

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 7
    iput-object p1, p0, Lg9/i;->a:Landroid/content/Context;

    .line 8
    iput-object p2, p0, Lg9/i;->b:Ljava/util/concurrent/ExecutorService;

    .line 9
    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p2, p0, Lg9/i;->d:Ljava/util/Map;

    .line 10
    new-instance p2, Ljava/util/WeakHashMap;

    invoke-direct {p2}, Ljava/util/WeakHashMap;-><init>()V

    iput-object p2, p0, Lg9/i;->e:Ljava/util/Map;

    .line 11
    new-instance p2, Ljava/util/WeakHashMap;

    invoke-direct {p2}, Ljava/util/WeakHashMap;-><init>()V

    iput-object p2, p0, Lg9/i;->f:Ljava/util/Map;

    .line 12
    new-instance p2, Ljava/util/LinkedHashSet;

    invoke-direct {p2}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p2, p0, Lg9/i;->g:Ljava/util/Set;

    .line 13
    new-instance p2, Lg9/i$a;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0, p0}, Lg9/i$a;-><init>(Landroid/os/Looper;Lg9/i;)V

    iput-object p2, p0, Lg9/i;->h:Landroid/os/Handler;

    .line 14
    iput-object p4, p0, Lg9/i;->c:Lg9/j;

    .line 15
    iput-object p3, p0, Lg9/i;->i:Landroid/os/Handler;

    .line 16
    iput-object p5, p0, Lg9/i;->j:Lg9/d;

    .line 17
    iput-object p6, p0, Lg9/i;->k:Lg9/z;

    .line 18
    new-instance p2, Ljava/util/ArrayList;

    const/4 p3, 0x4

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p2, p0, Lg9/i;->l:Ljava/util/List;

    .line 19
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const/4 p3, 0x1

    const/4 p4, 0x0

    :try_start_0
    const-string p5, "airplane_mode_on"

    .line 20
    invoke-static {p2, p5, p4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :catch_0
    :cond_0
    const/4 p2, 0x0

    .line 21
    :goto_0
    iput-boolean p2, p0, Lg9/i;->n:Z

    const-string p2, "android.permission.ACCESS_NETWORK_STATE"

    .line 22
    invoke-virtual {p1, p2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 p3, 0x0

    .line 23
    :goto_1
    iput-boolean p3, p0, Lg9/i;->m:Z

    .line 24
    new-instance p1, Lg9/i$c;

    invoke-direct {p1, p0}, Lg9/i$c;-><init>(Lg9/i;)V

    .line 25
    new-instance p2, Landroid/content/IntentFilter;

    invoke-direct {p2}, Landroid/content/IntentFilter;-><init>()V

    const-string p3, "android.intent.action.AIRPLANE_MODE"

    .line 26
    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 27
    iget-object p3, p1, Lg9/i$c;->a:Lg9/i;

    iget-boolean p3, p3, Lg9/i;->m:Z

    if-eqz p3, :cond_2

    const-string p3, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 28
    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 29
    :cond_2
    iget-object p3, p1, Lg9/i$c;->a:Lg9/i;

    iget-object p3, p3, Lg9/i;->a:Landroid/content/Context;

    invoke-virtual {p3, p1, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final a(Lg9/c;)V
    .locals 3

    .line 1
    iget-object v0, p1, Lg9/c;->n:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return-void

    .line 2
    :cond_1
    iget-object v0, p1, Lg9/c;->m:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->prepareToDraw()V

    .line 4
    :cond_2
    iget-object v0, p0, Lg9/i;->l:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object p1, p0, Lg9/i;->h:Landroid/os/Handler;

    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_3

    .line 6
    iget-object p1, p0, Lg9/i;->h:Landroid/os/Handler;

    const-wide/16 v1, 0xc8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_3
    return-void
.end method

.method public b(Lg9/c;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lg9/i;->h:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public c(Lg9/c;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lg9/i;->h:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public d(Lg9/c;Z)V
    .locals 3

    .line 1
    iget-object v0, p1, Lg9/c;->b:Lg9/s;

    .line 2
    iget-boolean v0, v0, Lg9/s;->m:Z

    if-eqz v0, :cond_1

    .line 3
    invoke-static {p1}, Lg9/d0;->c(Lg9/c;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "for error"

    invoke-static {v1}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p2, :cond_0

    const-string p2, " (will replay)"

    goto :goto_0

    :cond_0
    const-string p2, ""

    :goto_0
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "Dispatcher"

    const-string v2, "batched"

    invoke-static {v1, v2, v0, p2}, Lg9/d0;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :cond_1
    iget-object p2, p0, Lg9/i;->d:Ljava/util/Map;

    .line 5
    iget-object v0, p1, Lg9/c;->f:Ljava/lang/String;

    .line 6
    invoke-interface {p2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-virtual {p0, p1}, Lg9/i;->a(Lg9/c;)V

    return-void
.end method

.method public e(Lg9/a;Z)V
    .locals 10

    .line 1
    iget-object v0, p0, Lg9/i;->g:Ljava/util/Set;

    .line 2
    iget-object v1, p1, Lg9/a;->j:Ljava/lang/Object;

    .line 3
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "Dispatcher"

    if-eqz v0, :cond_1

    .line 4
    iget-object p2, p0, Lg9/i;->f:Ljava/util/Map;

    invoke-virtual {p1}, Lg9/a;->d()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object p2, p1, Lg9/a;->a:Lg9/s;

    .line 6
    iget-boolean p2, p2, Lg9/s;->m:Z

    if-eqz p2, :cond_0

    .line 7
    iget-object p2, p1, Lg9/a;->b:Lg9/v;

    invoke-virtual {p2}, Lg9/v;->b()Ljava/lang/String;

    move-result-object p2

    const-string v0, "because tag \'"

    invoke-static {v0}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 8
    iget-object p1, p1, Lg9/a;->j:Ljava/lang/Object;

    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\' is paused"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "paused"

    .line 10
    invoke-static {v1, v0, p2, p1}, Lg9/d0;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    .line 11
    :cond_1
    iget-object v0, p0, Lg9/i;->d:Ljava/util/Map;

    .line 12
    iget-object v2, p1, Lg9/a;->i:Ljava/lang/String;

    .line 13
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg9/c;

    if-eqz v0, :cond_8

    .line 14
    iget-object p2, v0, Lg9/c;->b:Lg9/s;

    iget-boolean p2, p2, Lg9/s;->m:Z

    .line 15
    iget-object v1, p1, Lg9/a;->b:Lg9/v;

    .line 16
    iget-object v2, v0, Lg9/c;->k:Lg9/a;

    const-string v3, "to "

    const-string v4, "joined"

    const-string v5, "Hunter"

    if-nez v2, :cond_4

    .line 17
    iput-object p1, v0, Lg9/c;->k:Lg9/a;

    if-eqz p2, :cond_7

    .line 18
    iget-object p1, v0, Lg9/c;->l:Ljava/util/List;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    .line 19
    :cond_2
    invoke-virtual {v1}, Lg9/v;->b()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v3}, Lg9/d0;->d(Lg9/c;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v5, v4, p1, p2}, Lg9/d0;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 20
    :cond_3
    :goto_0
    invoke-virtual {v1}, Lg9/v;->b()Ljava/lang/String;

    move-result-object p1

    const-string p2, "to empty hunter"

    invoke-static {v5, v4, p1, p2}, Lg9/d0;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 21
    :cond_4
    iget-object v2, v0, Lg9/c;->l:Ljava/util/List;

    if-nez v2, :cond_5

    .line 22
    new-instance v2, Ljava/util/ArrayList;

    const/4 v6, 0x3

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, v0, Lg9/c;->l:Ljava/util/List;

    .line 23
    :cond_5
    iget-object v2, v0, Lg9/c;->l:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_6

    .line 24
    invoke-virtual {v1}, Lg9/v;->b()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, v3}, Lg9/d0;->d(Lg9/c;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v4, p2, v1}, Lg9/d0;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    :cond_6
    iget-object p1, p1, Lg9/a;->b:Lg9/v;

    iget p1, p1, Lg9/v;->r:I

    .line 26
    invoke-static {p1}, Lt/g;->c(I)I

    move-result p2

    iget v1, v0, Lg9/c;->s:I

    invoke-static {v1}, Lt/g;->c(I)I

    move-result v1

    if-le p2, v1, :cond_7

    .line 27
    iput p1, v0, Lg9/c;->s:I

    :cond_7
    :goto_1
    return-void

    .line 28
    :cond_8
    iget-object v0, p0, Lg9/i;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 29
    iget-object p2, p1, Lg9/a;->a:Lg9/s;

    .line 30
    iget-boolean p2, p2, Lg9/s;->m:Z

    if-eqz p2, :cond_9

    .line 31
    iget-object p1, p1, Lg9/a;->b:Lg9/v;

    invoke-virtual {p1}, Lg9/v;->b()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ignored"

    const-string v0, "because shut down"

    invoke-static {v1, p2, p1, v0}, Lg9/d0;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    return-void

    .line 32
    :cond_a
    iget-object v3, p1, Lg9/a;->a:Lg9/s;

    .line 33
    iget-object v5, p0, Lg9/i;->j:Lg9/d;

    iget-object v6, p0, Lg9/i;->k:Lg9/z;

    sget-object v0, Lg9/c;->t:Ljava/lang/Object;

    .line 34
    iget-object v0, p1, Lg9/a;->b:Lg9/v;

    .line 35
    iget-object v2, v3, Lg9/s;->c:Ljava/util/List;

    const/4 v4, 0x0

    .line 36
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    :goto_2
    if-ge v4, v7, :cond_c

    .line 37
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lg9/x;

    .line 38
    invoke-virtual {v8, v0}, Lg9/x;->c(Lg9/v;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 39
    new-instance v0, Lg9/c;

    move-object v2, v0

    move-object v4, p0

    move-object v7, p1

    invoke-direct/range {v2 .. v8}, Lg9/c;-><init>(Lg9/s;Lg9/i;Lg9/d;Lg9/z;Lg9/a;Lg9/x;)V

    goto :goto_3

    :cond_b
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 40
    :cond_c
    new-instance v0, Lg9/c;

    sget-object v8, Lg9/c;->w:Lg9/x;

    move-object v2, v0

    move-object v4, p0

    move-object v7, p1

    invoke-direct/range {v2 .. v8}, Lg9/c;-><init>(Lg9/s;Lg9/i;Lg9/d;Lg9/z;Lg9/a;Lg9/x;)V

    .line 41
    :goto_3
    iget-object v2, p0, Lg9/i;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v2

    iput-object v2, v0, Lg9/c;->n:Ljava/util/concurrent/Future;

    .line 42
    iget-object v2, p0, Lg9/i;->d:Ljava/util/Map;

    .line 43
    iget-object v3, p1, Lg9/a;->i:Ljava/lang/String;

    .line 44
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_d

    .line 45
    iget-object p2, p0, Lg9/i;->e:Ljava/util/Map;

    invoke-virtual {p1}, Lg9/a;->d()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    :cond_d
    iget-object p2, p1, Lg9/a;->a:Lg9/s;

    .line 47
    iget-boolean p2, p2, Lg9/s;->m:Z

    if-eqz p2, :cond_e

    .line 48
    iget-object p1, p1, Lg9/a;->b:Lg9/v;

    invoke-virtual {p1}, Lg9/v;->b()Ljava/lang/String;

    move-result-object p1

    const-string p2, "enqueued"

    const-string v0, ""

    .line 49
    invoke-static {v1, p2, p1, v0}, Lg9/d0;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    return-void
.end method
