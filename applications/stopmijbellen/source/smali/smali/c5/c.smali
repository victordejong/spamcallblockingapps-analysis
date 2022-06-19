.class public Lc5/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc5/b;
.implements Lc5/a;


# instance fields
.field public final a:Lf/t;

.field public final b:Ljava/lang/Object;

.field public c:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public constructor <init>(Lf/t;ILjava/util/concurrent/TimeUnit;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lc5/c;->b:Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lc5/c;->a:Lf/t;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lc5/c;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-static {p2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    const-string v1, "FirebaseCrashlytics"

    const/4 v2, 0x2

    .line 3
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 4
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v1, p0, Lc5/c;->c:Ljava/util/concurrent/CountDownLatch;

    .line 5
    iget-object v1, p0, Lc5/c;->a:Lf/t;

    .line 6
    iget-object v1, v1, Lf/t;->a:Ljava/lang/Object;

    check-cast v1, Lx4/a;

    const-string v3, "clx"

    invoke-interface {v1, v3, p1, p2}, Lx4/a;->e(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    const-string p1, "FirebaseCrashlytics"

    .line 7
    invoke-static {p1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    .line 8
    :try_start_1
    iget-object p2, p0, Lc5/c;->c:Ljava/util/concurrent/CountDownLatch;

    const/16 v1, 0x1f4

    int-to-long v3, v1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2, v3, v4, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "FirebaseCrashlytics"

    .line 9
    invoke-static {p2, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    goto :goto_0

    :cond_0
    const-string p2, "Timeout exceeded while awaiting app exception callback from Analytics listener."

    const-string v1, "FirebaseCrashlytics"

    .line 10
    invoke-static {v1, p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 11
    :catch_0
    :goto_0
    :try_start_2
    iput-object p1, p0, Lc5/c;->c:Ljava/util/concurrent/CountDownLatch;

    .line 12
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public b(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object p2, p0, Lc5/c;->c:Ljava/util/concurrent/CountDownLatch;

    if-nez p2, :cond_0

    return-void

    :cond_0
    const-string v0, "_ae"

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_1
    return-void
.end method
