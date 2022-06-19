.class public Landroidx/work/impl/utils/ForceStopRunnable;
.super Ljava/lang/Object;
.source "ForceStopRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/impl/utils/ForceStopRunnable$BroadcastReceiver;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:J


# instance fields
.field private final c:Landroid/content/Context;

.field private final d:Landroidx/work/impl/i;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 62
    const-string/jumbo v0, "ForceStopRunnable"

    invoke-static {v0}, Landroidx/work/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/work/impl/utils/ForceStopRunnable;->a:Ljava/lang/String;

    .line 69
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xe42

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Landroidx/work/impl/utils/ForceStopRunnable;->b:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/impl/i;)V
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/impl/utils/ForceStopRunnable;->c:Landroid/content/Context;

    .line 76
    iput-object p2, p0, Landroidx/work/impl/utils/ForceStopRunnable;->d:Landroidx/work/impl/i;

    .line 77
    return-void
.end method

.method private static a(Landroid/content/Context;I)Landroid/app/PendingIntent;
    .locals 2

    .prologue
    .line 195
    invoke-static {p0}, Landroidx/work/impl/utils/ForceStopRunnable;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 196
    const/4 v1, -0x1

    invoke-static {p0, v1, v0, p1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method static a(Landroid/content/Context;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 204
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 205
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Landroidx/work/impl/utils/ForceStopRunnable$BroadcastReceiver;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 206
    const-string/jumbo v1, "ACTION_FORCE_STOP_RESCHEDULE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 207
    return-object v0
.end method

.method static b(Landroid/content/Context;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 211
    const-string/jumbo v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 213
    const/high16 v1, 0x8000000

    invoke-static {p0, v1}, Landroidx/work/impl/utils/ForceStopRunnable;->a(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 214
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Landroidx/work/impl/utils/ForceStopRunnable;->b:J

    add-long/2addr v2, v4

    .line 215
    if-eqz v0, :cond_0

    .line 216
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x13

    if-lt v4, v5, :cond_1

    .line 217
    invoke-virtual {v0, v6, v2, v3, v1}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 222
    :cond_0
    :goto_0
    return-void

    .line 219
    :cond_1
    invoke-virtual {v0, v6, v2, v3, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method


# virtual methods
.method public a()Z
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Landroidx/work/impl/utils/ForceStopRunnable;->c:Landroid/content/Context;

    const/high16 v1, 0x20000000

    invoke-static {v0, v1}, Landroidx/work/impl/utils/ForceStopRunnable;->a(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 129
    if-nez v0, :cond_0

    .line 130
    iget-object v0, p0, Landroidx/work/impl/utils/ForceStopRunnable;->c:Landroid/content/Context;

    invoke-static {v0}, Landroidx/work/impl/utils/ForceStopRunnable;->b(Landroid/content/Context;)V

    .line 131
    const/4 v0, 0x1

    .line 133
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Z
    .locals 10

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 148
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_0

    .line 149
    iget-object v2, p0, Landroidx/work/impl/utils/ForceStopRunnable;->c:Landroid/content/Context;

    invoke-static {v2}, Landroidx/work/impl/background/systemjob/b;->b(Landroid/content/Context;)V

    .line 153
    :cond_0
    iget-object v2, p0, Landroidx/work/impl/utils/ForceStopRunnable;->d:Landroidx/work/impl/i;

    invoke-virtual {v2}, Landroidx/work/impl/i;->c()Landroidx/work/impl/WorkDatabase;

    move-result-object v2

    .line 154
    invoke-virtual {v2}, Landroidx/work/impl/WorkDatabase;->o()Landroidx/work/impl/b/q;

    move-result-object v3

    .line 155
    invoke-virtual {v2}, Landroidx/work/impl/WorkDatabase;->t()Landroidx/work/impl/b/n;

    move-result-object v4

    .line 156
    invoke-virtual {v2}, Landroidx/work/impl/WorkDatabase;->g()V

    .line 159
    :try_start_0
    invoke-interface {v3}, Landroidx/work/impl/b/q;->d()Ljava/util/List;

    move-result-object v5

    .line 160
    if-eqz v5, :cond_1

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    move v1, v0

    .line 161
    :cond_1
    if-eqz v1, :cond_2

    .line 169
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/work/impl/b/p;

    .line 170
    sget-object v6, Landroidx/work/s$a;->a:Landroidx/work/s$a;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    iget-object v9, v0, Landroidx/work/impl/b/p;->a:Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-interface {v3, v6, v7}, Landroidx/work/impl/b/q;->a(Landroidx/work/s$a;[Ljava/lang/String;)I

    .line 171
    iget-object v0, v0, Landroidx/work/impl/b/p;->a:Ljava/lang/String;

    const-wide/16 v6, -0x1

    invoke-interface {v3, v0, v6, v7}, Landroidx/work/impl/b/q;->b(Ljava/lang/String;J)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 177
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroidx/work/impl/WorkDatabase;->h()V

    .line 178
    throw v0

    .line 174
    :cond_2
    :try_start_1
    invoke-interface {v4}, Landroidx/work/impl/b/n;->a()V

    .line 175
    invoke-virtual {v2}, Landroidx/work/impl/WorkDatabase;->j()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 177
    invoke-virtual {v2}, Landroidx/work/impl/WorkDatabase;->h()V

    .line 179
    return v1
.end method

.method c()Z
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Landroidx/work/impl/utils/ForceStopRunnable;->d:Landroidx/work/impl/i;

    invoke-virtual {v0}, Landroidx/work/impl/i;->h()Landroidx/work/impl/utils/e;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/work/impl/utils/e;->a()Z

    move-result v0

    return v0
.end method

.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 82
    iget-object v0, p0, Landroidx/work/impl/utils/ForceStopRunnable;->c:Landroid/content/Context;

    invoke-static {v0}, Landroidx/work/impl/h;->a(Landroid/content/Context;)V

    .line 85
    invoke-static {}, Landroidx/work/l;->a()Landroidx/work/l;

    move-result-object v0

    sget-object v1, Landroidx/work/impl/utils/ForceStopRunnable;->a:Ljava/lang/String;

    const-string/jumbo v2, "Performing cleanup operations."

    new-array v3, v5, [Ljava/lang/Throwable;

    invoke-virtual {v0, v1, v2, v3}, Landroidx/work/l;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 87
    :try_start_0
    invoke-virtual {p0}, Landroidx/work/impl/utils/ForceStopRunnable;->b()Z

    move-result v0

    .line 88
    invoke-virtual {p0}, Landroidx/work/impl/utils/ForceStopRunnable;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 89
    invoke-static {}, Landroidx/work/l;->a()Landroidx/work/l;

    move-result-object v0

    sget-object v1, Landroidx/work/impl/utils/ForceStopRunnable;->a:Ljava/lang/String;

    const-string/jumbo v2, "Rescheduling Workers."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Throwable;

    invoke-virtual {v0, v1, v2, v3}, Landroidx/work/l;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 90
    iget-object v0, p0, Landroidx/work/impl/utils/ForceStopRunnable;->d:Landroidx/work/impl/i;

    invoke-virtual {v0}, Landroidx/work/impl/i;->i()V

    .line 92
    iget-object v0, p0, Landroidx/work/impl/utils/ForceStopRunnable;->d:Landroidx/work/impl/i;

    invoke-virtual {v0}, Landroidx/work/impl/i;->h()Landroidx/work/impl/utils/e;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/work/impl/utils/e;->a(Z)V

    .line 103
    :cond_0
    :goto_0
    iget-object v0, p0, Landroidx/work/impl/utils/ForceStopRunnable;->d:Landroidx/work/impl/i;

    invoke-virtual {v0}, Landroidx/work/impl/i;->j()V

    .line 117
    return-void

    .line 93
    :cond_1
    invoke-virtual {p0}, Landroidx/work/impl/utils/ForceStopRunnable;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 94
    invoke-static {}, Landroidx/work/l;->a()Landroidx/work/l;

    move-result-object v0

    sget-object v1, Landroidx/work/impl/utils/ForceStopRunnable;->a:Ljava/lang/String;

    const-string/jumbo v2, "Application was force-stopped, rescheduling."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Throwable;

    invoke-virtual {v0, v1, v2, v3}, Landroidx/work/l;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 95
    iget-object v0, p0, Landroidx/work/impl/utils/ForceStopRunnable;->d:Landroidx/work/impl/i;

    invoke-virtual {v0}, Landroidx/work/impl/i;->i()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteCantOpenDatabaseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/sqlite/SQLiteAccessPermException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 104
    :catch_0
    move-exception v0

    .line 111
    :goto_1
    const-string/jumbo v1, "The file system on the device is in a bad state. WorkManager cannot access the app\'s internal data store."

    .line 114
    invoke-static {}, Landroidx/work/l;->a()Landroidx/work/l;

    move-result-object v2

    sget-object v3, Landroidx/work/impl/utils/ForceStopRunnable;->a:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Throwable;

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v1, v4}, Landroidx/work/l;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 115
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 96
    :cond_2
    if-eqz v0, :cond_0

    .line 97
    :try_start_1
    invoke-static {}, Landroidx/work/l;->a()Landroidx/work/l;

    move-result-object v0

    sget-object v1, Landroidx/work/impl/utils/ForceStopRunnable;->a:Ljava/lang/String;

    const-string/jumbo v2, "Found unfinished work, scheduling it."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Throwable;

    invoke-virtual {v0, v1, v2, v3}, Landroidx/work/l;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 98
    iget-object v0, p0, Landroidx/work/impl/utils/ForceStopRunnable;->d:Landroidx/work/impl/i;

    .line 99
    invoke-virtual {v0}, Landroidx/work/impl/i;->d()Landroidx/work/b;

    move-result-object v0

    iget-object v1, p0, Landroidx/work/impl/utils/ForceStopRunnable;->d:Landroidx/work/impl/i;

    .line 100
    invoke-virtual {v1}, Landroidx/work/impl/i;->c()Landroidx/work/impl/WorkDatabase;

    move-result-object v1

    iget-object v2, p0, Landroidx/work/impl/utils/ForceStopRunnable;->d:Landroidx/work/impl/i;

    .line 101
    invoke-virtual {v2}, Landroidx/work/impl/i;->e()Ljava/util/List;

    move-result-object v2

    .line 98
    invoke-static {v0, v1, v2}, Landroidx/work/impl/e;->a(Landroidx/work/b;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteCantOpenDatabaseException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/database/sqlite/SQLiteAccessPermException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 104
    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1
.end method
