.class public Lr1/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "Alarms"

    .line 1
    invoke-static {v0}, Lo1/h;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lr1/a;->a:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 5

    const-string v0, "alarm"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 2
    invoke-static {p0, p1}, Landroidx/work/impl/background/systemalarm/a;->c(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 3
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_0

    const/high16 v2, 0x24000000

    goto :goto_0

    :cond_0
    const/high16 v2, 0x20000000

    .line 4
    :goto_0
    invoke-static {p0, p2, v1, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    if-eqz p0, :cond_1

    if-eqz v0, :cond_1

    .line 5
    invoke-static {}, Lo1/h;->c()Lo1/h;

    move-result-object v1

    sget-object v2, Lr1/a;->a:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 p1, 0x1

    .line 6
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v3, p1

    const-string p1, "Cancelling existing alarm with (workSpecId, systemId) (%s, %s)"

    .line 7
    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array p2, v4, [Ljava/lang/Throwable;

    invoke-virtual {v1, v2, p1, p2}, Lo1/h;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 8
    invoke-virtual {v0, p0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :cond_1
    return-void
.end method

.method public static b(Landroid/content/Context;Lp1/j;Ljava/lang/String;J)V
    .locals 9

    .line 1
    iget-object p1, p1, Lp1/j;->c:Landroidx/work/impl/WorkDatabase;

    .line 2
    invoke-virtual {p1}, Landroidx/work/impl/WorkDatabase;->n()Lx1/h;

    move-result-object v0

    .line 3
    check-cast v0, Lx1/i;

    invoke-virtual {v0, p2}, Lx1/i;->a(Ljava/lang/String;)Lx1/g;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    iget p1, v1, Lx1/g;->b:I

    invoke-static {p0, p2, p1}, Lr1/a;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 5
    iget p1, v1, Lx1/g;->b:I

    invoke-static {p0, p2, p1, p3, p4}, Lr1/a;->c(Landroid/content/Context;Ljava/lang/String;IJ)V

    goto :goto_2

    .line 6
    :cond_0
    const-class v1, Ly1/f;

    monitor-enter v1

    :try_start_0
    const-string v2, "next_alarm_manager_id"

    .line 7
    invoke-virtual {p1}, Ld1/f;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 8
    :try_start_1
    invoke-virtual {p1}, Landroidx/work/impl/WorkDatabase;->m()Lx1/e;

    move-result-object v3

    check-cast v3, Lx1/f;

    invoke-virtual {v3, v2}, Lx1/f;->a(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 9
    invoke-virtual {v3}, Ljava/lang/Long;->intValue()I

    move-result v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    const v5, 0x7fffffff

    if-ne v3, v5, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v3, 0x1

    .line 10
    :goto_1
    invoke-virtual {p1}, Landroidx/work/impl/WorkDatabase;->m()Lx1/e;

    move-result-object v5

    new-instance v6, Lx1/d;

    int-to-long v7, v4

    invoke-direct {v6, v2, v7, v8}, Lx1/d;-><init>(Ljava/lang/String;J)V

    check-cast v5, Lx1/f;

    invoke-virtual {v5, v6}, Lx1/f;->b(Lx1/d;)V

    .line 11
    invoke-virtual {p1}, Ld1/f;->k()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    :try_start_2
    invoke-virtual {p1}, Ld1/f;->g()V

    .line 13
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 14
    new-instance p1, Lx1/g;

    invoke-direct {p1, p2, v3}, Lx1/g;-><init>(Ljava/lang/String;I)V

    .line 15
    invoke-virtual {v0, p1}, Lx1/i;->b(Lx1/g;)V

    .line 16
    invoke-static {p0, p2, v3, p3, p4}, Lr1/a;->c(Landroid/content/Context;Ljava/lang/String;IJ)V

    :goto_2
    return-void

    :catchall_0
    move-exception p0

    .line 17
    :try_start_3
    invoke-virtual {p1}, Ld1/f;->g()V

    .line 18
    throw p0

    :catchall_1
    move-exception p0

    .line 19
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;IJ)V
    .locals 3

    const-string v0, "alarm"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_0

    const/high16 v1, 0xc000000

    goto :goto_0

    :cond_0
    const/high16 v1, 0x8000000

    .line 3
    :goto_0
    invoke-static {p0, p1}, Landroidx/work/impl/background/systemalarm/a;->c(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 4
    invoke-static {p0, p2, p1, v1}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    .line 5
    invoke-virtual {v0, p1, p3, p4, p0}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    :cond_1
    return-void
.end method
