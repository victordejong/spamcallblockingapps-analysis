.class public Laa1$b;
.super Landroid/database/ContentObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laa1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    invoke-static {}, Laa1;->c()Laa1;

    move-result-object p1

    invoke-static {p1}, Laa1;->d(Laa1;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {}, Laa1;->f()Laa1;

    move-result-object p1

    invoke-static {p1}, Laa1;->d(Laa1;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_0
    invoke-static {}, Laa1;->f()Laa1;

    move-result-object p1

    invoke-static {}, Laa1;->f()Laa1;

    move-result-object v0

    invoke-static {v0}, Laa1;->g(Laa1;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Laa1$b$a;

    invoke-direct {v1, p0}, Laa1$b$a;-><init>(Laa1$b;)V

    const-wide/16 v2, 0x0

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    invoke-static {p1, v0}, Laa1;->e(Laa1;Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    invoke-virtual {p0, p1}, Laa1$b;->onChange(Z)V

    return-void
.end method
