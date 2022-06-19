.class public Ln8/b;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 2
    iput-object p2, p0, Ln8/b;->a:Landroid/content/Context;

    .line 3
    invoke-static {p2}, Lf8/g;->v(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onChange(Z)V
    .locals 6

    .line 1
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object p1, p0, Ln8/b;->a:Landroid/content/Context;

    invoke-static {p1}, Lf8/h;->s(Landroid/content/Context;)J

    move-result-wide v2

    const-wide/16 v4, 0x7d0

    add-long/2addr v2, v4

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    .line 3
    iget-object p1, p0, Ln8/b;->a:Landroid/content/Context;

    const/4 v0, 0x0

    const-string v1, "contactssyncschedulestarted"

    .line 4
    invoke-static {p1, v1, v0}, Lf8/h;->f(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_0

    .line 5
    iget-object p1, p0, Ln8/b;->a:Landroid/content/Context;

    const/4 v0, 0x1

    .line 6
    invoke-static {p1, v1, v0}, Lf8/h;->g0(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 7
    invoke-static {}, Lba/b;->b()Lba/b;

    move-result-object p1

    new-instance v0, Lk8/e;

    const/4 v1, 0x2

    const-string v2, "GPref.setContactsSyncScheduleStarted"

    invoke-direct {v0, v2, v1}, Lk8/e;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p1, v0}, Lba/b;->g(Ljava/lang/Object;)V

    .line 8
    new-instance p1, Ljava/util/Timer;

    invoke-direct {p1}, Ljava/util/Timer;-><init>()V

    new-instance v0, Ln8/a;

    const-string v1, ".syncContactsIfNeed"

    invoke-direct {v0, p0, v1}, Ln8/a;-><init>(Ln8/b;Ljava/lang/String;)V

    const-wide/16 v1, 0x1388

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    :cond_0
    return-void
.end method
