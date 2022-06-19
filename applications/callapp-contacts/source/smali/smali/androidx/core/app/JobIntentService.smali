.class public abstract Landroidx/core/app/JobIntentService;
.super Landroid/app/Service;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/app/JobIntentService$a;,
        Landroidx/core/app/JobIntentService$d;,
        Landroidx/core/app/JobIntentService$e;,
        Landroidx/core/app/JobIntentService$g;,
        Landroidx/core/app/JobIntentService$f;,
        Landroidx/core/app/JobIntentService$c;,
        Landroidx/core/app/JobIntentService$b;,
        Landroidx/core/app/JobIntentService$h;
    }
.end annotation


# static fields
.field static final h:Ljava/lang/Object;

.field static final i:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/content/ComponentName;",
            "Landroidx/core/app/JobIntentService$h;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:Landroidx/core/app/JobIntentService$b;

.field b:Landroidx/core/app/JobIntentService$h;

.field c:Landroidx/core/app/JobIntentService$a;

.field d:Z

.field e:Z

.field f:Z

.field final g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/core/app/JobIntentService$d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 105
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/core/app/JobIntentService;->h:Ljava/lang/Object;

    .line 106
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroidx/core/app/JobIntentService;->i:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 416
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    .line 99
    iput-boolean v0, p0, Landroidx/core/app/JobIntentService;->d:Z

    .line 100
    iput-boolean v0, p0, Landroidx/core/app/JobIntentService;->e:Z

    .line 101
    iput-boolean v0, p0, Landroidx/core/app/JobIntentService;->f:Z

    .line 417
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    .line 418
    iput-object v0, p0, Landroidx/core/app/JobIntentService;->g:Ljava/util/ArrayList;

    return-void

    .line 420
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/core/app/JobIntentService;->g:Ljava/util/ArrayList;

    return-void
.end method

.method private static a(Landroid/content/Context;Landroid/content/ComponentName;ZI)Landroidx/core/app/JobIntentService$h;
    .locals 3

    .line 529
    sget-object v0, Landroidx/core/app/JobIntentService;->i:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/core/app/JobIntentService$h;

    if-nez v1, :cond_2

    .line 531
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_1

    if-eqz p2, :cond_0

    .line 535
    new-instance p2, Landroidx/core/app/JobIntentService$g;

    invoke-direct {p2, p0, p1, p3}, Landroidx/core/app/JobIntentService$g;-><init>(Landroid/content/Context;Landroid/content/ComponentName;I)V

    goto :goto_0

    .line 533
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Can\'t be here without a job id"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 537
    :cond_1
    new-instance p2, Landroidx/core/app/JobIntentService$c;

    invoke-direct {p2, p0, p1}, Landroidx/core/app/JobIntentService$c;-><init>(Landroid/content/Context;Landroid/content/ComponentName;)V

    :goto_0
    move-object v1, p2

    .line 539
    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/Class;ILandroid/content/Intent;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "*>;I",
            "Landroid/content/Intent;",
            ")V"
        }
    .end annotation

    .line 501
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p0, p1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz p3, :cond_0

    .line 1520
    sget-object p1, Landroidx/core/app/JobIntentService;->h:Ljava/lang/Object;

    monitor-enter p1

    const/4 v1, 0x1

    .line 1521
    :try_start_0
    invoke-static {p0, v0, v1, p2}, Landroidx/core/app/JobIntentService;->a(Landroid/content/Context;Landroid/content/ComponentName;ZI)Landroidx/core/app/JobIntentService$h;

    move-result-object p0

    .line 1522
    invoke-virtual {p0, p2}, Landroidx/core/app/JobIntentService$h;->a(I)V

    .line 1523
    invoke-virtual {p0, p3}, Landroidx/core/app/JobIntentService$h;->a(Landroid/content/Intent;)V

    .line 1524
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 1518
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "work must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method protected abstract a(Landroid/content/Intent;)V
.end method

.method final a(Z)V
    .locals 2

    .line 607
    iget-object v0, p0, Landroidx/core/app/JobIntentService;->c:Landroidx/core/app/JobIntentService$a;

    if-nez v0, :cond_1

    .line 608
    new-instance v0, Landroidx/core/app/JobIntentService$a;

    invoke-direct {v0, p0}, Landroidx/core/app/JobIntentService$a;-><init>(Landroidx/core/app/JobIntentService;)V

    iput-object v0, p0, Landroidx/core/app/JobIntentService;->c:Landroidx/core/app/JobIntentService$a;

    .line 609
    iget-object v0, p0, Landroidx/core/app/JobIntentService;->b:Landroidx/core/app/JobIntentService$h;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 610
    invoke-virtual {v0}, Landroidx/core/app/JobIntentService$h;->b()V

    .line 613
    :cond_0
    iget-object p1, p0, Landroidx/core/app/JobIntentService;->c:Landroidx/core/app/JobIntentService$a;

    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {p1, v0, v1}, Landroidx/core/app/JobIntentService$a;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_1
    return-void
.end method

.method final a()Z
    .locals 2

    .line 599
    iget-object v0, p0, Landroidx/core/app/JobIntentService;->c:Landroidx/core/app/JobIntentService$a;

    if-eqz v0, :cond_0

    .line 600
    iget-boolean v1, p0, Landroidx/core/app/JobIntentService;->d:Z

    invoke-virtual {v0, v1}, Landroidx/core/app/JobIntentService$a;->cancel(Z)Z

    :cond_0
    const/4 v0, 0x1

    .line 602
    iput-boolean v0, p0, Landroidx/core/app/JobIntentService;->e:Z

    return v0
.end method

.method final b()V
    .locals 2

    .line 618
    iget-object v0, p0, Landroidx/core/app/JobIntentService;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 619
    monitor-enter v0

    const/4 v1, 0x0

    .line 620
    :try_start_0
    iput-object v1, p0, Landroidx/core/app/JobIntentService;->c:Landroidx/core/app/JobIntentService$a;

    .line 629
    iget-object v1, p0, Landroidx/core/app/JobIntentService;->g:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    .line 630
    invoke-virtual {p0, v1}, Landroidx/core/app/JobIntentService;->a(Z)V

    goto :goto_0

    .line 631
    :cond_0
    iget-boolean v1, p0, Landroidx/core/app/JobIntentService;->f:Z

    if-nez v1, :cond_1

    .line 632
    iget-object v1, p0, Landroidx/core/app/JobIntentService;->b:Landroidx/core/app/JobIntentService$h;

    invoke-virtual {v1}, Landroidx/core/app/JobIntentService$h;->c()V

    .line 634
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    return-void
.end method

.method c()Landroidx/core/app/JobIntentService$e;
    .locals 3

    .line 639
    iget-object v0, p0, Landroidx/core/app/JobIntentService;->a:Landroidx/core/app/JobIntentService$b;

    if-eqz v0, :cond_0

    .line 640
    invoke-interface {v0}, Landroidx/core/app/JobIntentService$b;->b()Landroidx/core/app/JobIntentService$e;

    move-result-object v0

    return-object v0

    .line 642
    :cond_0
    iget-object v0, p0, Landroidx/core/app/JobIntentService;->g:Ljava/util/ArrayList;

    monitor-enter v0

    .line 643
    :try_start_0
    iget-object v1, p0, Landroidx/core/app/JobIntentService;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 644
    iget-object v1, p0, Landroidx/core/app/JobIntentService;->g:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/core/app/JobIntentService$e;

    monitor-exit v0

    return-object v1

    :cond_1
    const/4 v1, 0x0

    .line 646
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 648
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 465
    iget-object p1, p0, Landroidx/core/app/JobIntentService;->a:Landroidx/core/app/JobIntentService$b;

    if-eqz p1, :cond_0

    .line 466
    invoke-interface {p1}, Landroidx/core/app/JobIntentService$b;->a()Landroid/os/IBinder;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 3

    .line 426
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 428
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_0

    .line 429
    new-instance v0, Landroidx/core/app/JobIntentService$f;

    invoke-direct {v0, p0}, Landroidx/core/app/JobIntentService$f;-><init>(Landroidx/core/app/JobIntentService;)V

    iput-object v0, p0, Landroidx/core/app/JobIntentService;->a:Landroidx/core/app/JobIntentService$b;

    .line 430
    iput-object v1, p0, Landroidx/core/app/JobIntentService;->b:Landroidx/core/app/JobIntentService$h;

    return-void

    .line 432
    :cond_0
    iput-object v1, p0, Landroidx/core/app/JobIntentService;->a:Landroidx/core/app/JobIntentService$b;

    .line 433
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x0

    .line 434
    invoke-static {p0, v0, v1, v1}, Landroidx/core/app/JobIntentService;->a(Landroid/content/Context;Landroid/content/ComponentName;ZI)Landroidx/core/app/JobIntentService$h;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/app/JobIntentService;->b:Landroidx/core/app/JobIntentService$h;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 476
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 477
    iget-object v0, p0, Landroidx/core/app/JobIntentService;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 478
    monitor-enter v0

    const/4 v1, 0x1

    .line 479
    :try_start_0
    iput-boolean v1, p0, Landroidx/core/app/JobIntentService;->f:Z

    .line 480
    iget-object v1, p0, Landroidx/core/app/JobIntentService;->b:Landroidx/core/app/JobIntentService$h;

    invoke-virtual {v1}, Landroidx/core/app/JobIntentService$h;->c()V

    .line 481
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    .line 444
    iget-object p2, p0, Landroidx/core/app/JobIntentService;->g:Ljava/util/ArrayList;

    if-eqz p2, :cond_1

    .line 445
    iget-object p2, p0, Landroidx/core/app/JobIntentService;->b:Landroidx/core/app/JobIntentService$h;

    invoke-virtual {p2}, Landroidx/core/app/JobIntentService$h;->a()V

    .line 447
    iget-object p2, p0, Landroidx/core/app/JobIntentService;->g:Ljava/util/ArrayList;

    monitor-enter p2

    .line 448
    :try_start_0
    iget-object v0, p0, Landroidx/core/app/JobIntentService;->g:Ljava/util/ArrayList;

    new-instance v1, Landroidx/core/app/JobIntentService$d;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    :goto_0
    invoke-direct {v1, p0, p1, p3}, Landroidx/core/app/JobIntentService$d;-><init>(Landroidx/core/app/JobIntentService;Landroid/content/Intent;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    .line 450
    invoke-virtual {p0, p1}, Landroidx/core/app/JobIntentService;->a(Z)V

    .line 451
    monitor-exit p2

    const/4 p1, 0x3

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    const/4 p1, 0x2

    return p1
.end method
