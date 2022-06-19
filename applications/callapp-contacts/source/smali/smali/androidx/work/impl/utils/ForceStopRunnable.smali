.class public final Landroidx/work/impl/utils/ForceStopRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

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

.field private final d:Landroidx/work/impl/j;

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "ForceStopRunnable"

    .line 67
    invoke-static {v0}, Landroidx/work/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/work/impl/utils/ForceStopRunnable;->a:Ljava/lang/String;

    .line 77
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xe42

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Landroidx/work/impl/utils/ForceStopRunnable;->b:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/impl/j;)V
    .locals 0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroidx/work/impl/utils/ForceStopRunnable;->c:Landroid/content/Context;

    .line 85
    iput-object p2, p0, Landroidx/work/impl/utils/ForceStopRunnable;->d:Landroidx/work/impl/j;

    const/4 p1, 0x0

    .line 86
    iput p1, p0, Landroidx/work/impl/utils/ForceStopRunnable;->e:I

    return-void
.end method

.method private static a(Landroid/content/Context;I)Landroid/app/PendingIntent;
    .locals 2

    .line 272
    invoke-static {p0}, Landroidx/work/impl/utils/ForceStopRunnable;->b(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, -0x1

    .line 273
    invoke-static {p0, v1, v0, p1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method static a(Landroid/content/Context;)V
    .locals 6

    const-string v0, "alarm"

    .line 288
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    const/high16 v1, 0x8000000

    .line 290
    invoke-static {p0, v1}, Landroidx/work/impl/utils/ForceStopRunnable;->a(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object p0

    .line 291
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-wide v3, Landroidx/work/impl/utils/ForceStopRunnable;->b:J

    add-long/2addr v1, v3

    if-eqz v0, :cond_1

    .line 293
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    const/4 v5, 0x0

    if-lt v3, v4, :cond_0

    .line 294
    invoke-virtual {v0, v5, v1, v2, p0}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    return-void

    .line 296
    :cond_0
    invoke-virtual {v0, v5, v1, v2, p0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    :cond_1
    return-void
.end method

.method private a()Z
    .locals 12

    .line 195
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x17

    if-lt v0, v2, :cond_0

    .line 199
    iget-object v0, p0, Landroidx/work/impl/utils/ForceStopRunnable;->c:Landroid/content/Context;

    iget-object v2, p0, Landroidx/work/impl/utils/ForceStopRunnable;->d:Landroidx/work/impl/j;

    invoke-static {v0, v2}, Landroidx/work/impl/background/systemjob/b;->a(Landroid/content/Context;Landroidx/work/impl/j;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 202
    :goto_0
    iget-object v2, p0, Landroidx/work/impl/utils/ForceStopRunnable;->d:Landroidx/work/impl/j;

    .line 7317
    iget-object v2, v2, Landroidx/work/impl/j;->c:Landroidx/work/impl/WorkDatabase;

    .line 203
    invoke-virtual {v2}, Landroidx/work/impl/WorkDatabase;->j()Landroidx/work/impl/model/WorkSpecDao;

    move-result-object v3

    .line 204
    invoke-virtual {v2}, Landroidx/work/impl/WorkDatabase;->o()Landroidx/work/impl/model/WorkProgressDao;

    move-result-object v4

    .line 205
    invoke-virtual {v2}, Landroidx/work/impl/WorkDatabase;->e()V

    .line 208
    :try_start_0
    invoke-interface {v3}, Landroidx/work/impl/model/WorkSpecDao;->getRunningWork()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x1

    if-eqz v5, :cond_1

    .line 209
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    const/4 v7, 0x1

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    :goto_1
    if-eqz v7, :cond_2

    .line 218
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/work/impl/model/WorkSpec;

    .line 219
    sget-object v9, Landroidx/work/t$a;->ENQUEUED:Landroidx/work/t$a;

    new-array v10, v6, [Ljava/lang/String;

    iget-object v11, v8, Landroidx/work/impl/model/WorkSpec;->id:Ljava/lang/String;

    aput-object v11, v10, v1

    invoke-interface {v3, v9, v10}, Landroidx/work/impl/model/WorkSpecDao;->setState(Landroidx/work/t$a;[Ljava/lang/String;)I

    .line 220
    iget-object v8, v8, Landroidx/work/impl/model/WorkSpec;->id:Ljava/lang/String;

    const-wide/16 v9, -0x1

    invoke-interface {v3, v8, v9, v10}, Landroidx/work/impl/model/WorkSpecDao;->markWorkSpecScheduled(Ljava/lang/String;J)I

    goto :goto_2

    .line 223
    :cond_2
    invoke-interface {v4}, Landroidx/work/impl/model/WorkProgressDao;->deleteAll()V

    .line 224
    invoke-virtual {v2}, Landroidx/work/impl/WorkDatabase;->g()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    invoke-virtual {v2}, Landroidx/work/impl/WorkDatabase;->f()V

    if-nez v7, :cond_4

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    return v1

    :cond_4
    :goto_3
    return v6

    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroidx/work/impl/WorkDatabase;->f()V

    .line 227
    throw v0
.end method

.method private static b(Landroid/content/Context;)Landroid/content/Intent;
    .locals 3

    .line 281
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 282
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Landroidx/work/impl/utils/ForceStopRunnable$BroadcastReceiver;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string p0, "ACTION_FORCE_STOP_RESCHEDULE"

    .line 283
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 9

    const-string v0, "reschedule_needed"

    .line 1244
    iget-object v1, p0, Landroidx/work/impl/utils/ForceStopRunnable;->d:Landroidx/work/impl/j;

    invoke-virtual {v1}, Landroidx/work/impl/j;->b()Landroidx/work/a/a;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 1247
    :cond_0
    invoke-static {}, Landroidx/work/k;->a()Landroidx/work/k;

    .line 1248
    iget-object v1, p0, Landroidx/work/impl/utils/ForceStopRunnable;->d:Landroidx/work/impl/j;

    .line 1327
    iget-object v1, v1, Landroidx/work/impl/j;->b:Landroidx/work/Configuration;

    .line 1249
    iget-object v4, p0, Landroidx/work/impl/utils/ForceStopRunnable;->c:Landroid/content/Context;

    invoke-static {v4, v1}, Landroidx/work/impl/utils/f;->a(Landroid/content/Context;Landroidx/work/Configuration;)Z

    move-result v1

    .line 1250
    invoke-static {}, Landroidx/work/k;->a()Landroidx/work/k;

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v2

    const-string v5, "Is default app process = %s"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    :goto_0
    if-nez v1, :cond_1

    return-void

    .line 97
    :catch_0
    :cond_1
    :goto_1
    iget-object v1, p0, Landroidx/work/impl/utils/ForceStopRunnable;->c:Landroid/content/Context;

    invoke-static {v1}, Landroidx/work/impl/i;->a(Landroid/content/Context;)V

    .line 100
    invoke-static {}, Landroidx/work/k;->a()Landroidx/work/k;

    .line 2165
    :try_start_0
    invoke-direct {p0}, Landroidx/work/impl/utils/ForceStopRunnable;->a()Z

    move-result v1

    .line 2236
    iget-object v4, p0, Landroidx/work/impl/utils/ForceStopRunnable;->d:Landroidx/work/impl/j;

    .line 2364
    iget-object v4, v4, Landroidx/work/impl/j;->g:Landroidx/work/impl/utils/e;

    .line 3096
    iget-object v4, v4, Landroidx/work/impl/utils/e;->a:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v4}, Landroidx/work/impl/WorkDatabase;->p()Landroidx/work/impl/model/PreferenceDao;

    move-result-object v4

    invoke-interface {v4, v0}, Landroidx/work/impl/model/PreferenceDao;->getLongValue(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 3097
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x1

    cmp-long v8, v4, v6

    if-nez v8, :cond_2

    const/4 v4, 0x1

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_2
    if-eqz v4, :cond_3

    .line 2167
    invoke-static {}, Landroidx/work/k;->a()Landroidx/work/k;

    .line 2168
    iget-object v1, p0, Landroidx/work/impl/utils/ForceStopRunnable;->d:Landroidx/work/impl/j;

    invoke-virtual {v1}, Landroidx/work/impl/j;->c()V

    .line 2170
    iget-object v1, p0, Landroidx/work/impl/utils/ForceStopRunnable;->d:Landroidx/work/impl/j;

    .line 3364
    iget-object v1, v1, Landroidx/work/impl/j;->g:Landroidx/work/impl/utils/e;

    .line 4104
    new-instance v4, Landroidx/work/impl/model/Preference;

    invoke-direct {v4, v0, v2}, Landroidx/work/impl/model/Preference;-><init>(Ljava/lang/String;Z)V

    .line 4105
    iget-object v1, v1, Landroidx/work/impl/utils/e;->a:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->p()Landroidx/work/impl/model/PreferenceDao;

    move-result-object v1

    invoke-interface {v1, v4}, Landroidx/work/impl/model/PreferenceDao;->insertPreference(Landroidx/work/impl/model/Preference;)V

    goto :goto_4

    .line 4151
    :cond_3
    iget-object v4, p0, Landroidx/work/impl/utils/ForceStopRunnable;->c:Landroid/content/Context;

    const/high16 v5, 0x20000000

    invoke-static {v4, v5}, Landroidx/work/impl/utils/ForceStopRunnable;->a(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v4

    if-nez v4, :cond_4

    .line 4153
    iget-object v4, p0, Landroidx/work/impl/utils/ForceStopRunnable;->c:Landroid/content/Context;

    invoke-static {v4}, Landroidx/work/impl/utils/ForceStopRunnable;->a(Landroid/content/Context;)V

    const/4 v4, 0x1

    goto :goto_3

    :cond_4
    const/4 v4, 0x0

    :goto_3
    if-eqz v4, :cond_5

    .line 2172
    invoke-static {}, Landroidx/work/k;->a()Landroidx/work/k;

    .line 2173
    iget-object v1, p0, Landroidx/work/impl/utils/ForceStopRunnable;->d:Landroidx/work/impl/j;

    invoke-virtual {v1}, Landroidx/work/impl/j;->c()V

    goto :goto_4

    :cond_5
    if-eqz v1, :cond_6

    .line 2175
    invoke-static {}, Landroidx/work/k;->a()Landroidx/work/k;

    .line 2176
    iget-object v1, p0, Landroidx/work/impl/utils/ForceStopRunnable;->d:Landroidx/work/impl/j;

    .line 4327
    iget-object v1, v1, Landroidx/work/impl/j;->b:Landroidx/work/Configuration;

    .line 2177
    iget-object v4, p0, Landroidx/work/impl/utils/ForceStopRunnable;->d:Landroidx/work/impl/j;

    .line 5317
    iget-object v4, v4, Landroidx/work/impl/j;->c:Landroidx/work/impl/WorkDatabase;

    .line 2178
    iget-object v5, p0, Landroidx/work/impl/utils/ForceStopRunnable;->d:Landroidx/work/impl/j;

    .line 5337
    iget-object v5, v5, Landroidx/work/impl/j;->e:Ljava/util/List;

    .line 2176
    invoke-static {v1, v4, v5}, Landroidx/work/impl/f;->a(Landroidx/work/Configuration;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    .line 2181
    :cond_6
    :goto_4
    iget-object v1, p0, Landroidx/work/impl/utils/ForceStopRunnable;->d:Landroidx/work/impl/j;

    invoke-virtual {v1}, Landroidx/work/impl/j;->d()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteCantOpenDatabaseException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Landroid/database/sqlite/SQLiteTableLockedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/database/sqlite/SQLiteAccessPermException; {:try_start_0 .. :try_end_0} :catch_1

    return-void

    :catch_1
    move-exception v1

    goto :goto_5

    :catch_2
    move-exception v1

    goto :goto_5

    :catch_3
    move-exception v1

    goto :goto_5

    :catch_4
    move-exception v1

    goto :goto_5

    :catch_5
    move-exception v1

    goto :goto_5

    :catch_6
    move-exception v1

    .line 110
    :goto_5
    iget v4, p0, Landroidx/work/impl/utils/ForceStopRunnable;->e:I

    add-int/2addr v4, v3

    iput v4, p0, Landroidx/work/impl/utils/ForceStopRunnable;->e:I

    const/4 v5, 0x3

    if-lt v4, v5, :cond_8

    const-string v0, "The file system on the device is in a bad state. WorkManager cannot access the app\'s internal data store."

    .line 119
    invoke-static {}, Landroidx/work/k;->a()Landroidx/work/k;

    move-result-object v4

    sget-object v5, Landroidx/work/impl/utils/ForceStopRunnable;->a:Ljava/lang/String;

    new-array v6, v3, [Ljava/lang/Throwable;

    aput-object v1, v6, v2

    invoke-virtual {v4, v5, v0, v6}, Landroidx/work/k;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 120
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4, v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 121
    iget-object v0, p0, Landroidx/work/impl/utils/ForceStopRunnable;->d:Landroidx/work/impl/j;

    .line 6327
    iget-object v0, v0, Landroidx/work/impl/j;->b:Landroidx/work/Configuration;

    .line 122
    invoke-virtual {v0}, Landroidx/work/Configuration;->getExceptionHandler()Landroidx/work/h;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 124
    invoke-static {}, Landroidx/work/k;->a()Landroidx/work/k;

    new-array v0, v3, [Ljava/lang/Throwable;

    aput-object v4, v0, v2

    return-void

    .line 130
    :cond_7
    throw v4

    :cond_8
    int-to-long v4, v4

    const-wide/16 v6, 0x12c

    mul-long v4, v4, v6

    .line 134
    invoke-static {}, Landroidx/work/k;->a()Landroidx/work/k;

    new-array v8, v3, [Ljava/lang/Object;

    .line 135
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v8, v2

    const-string v4, "Retrying after %s"

    invoke-static {v4, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    new-array v4, v3, [Ljava/lang/Throwable;

    aput-object v1, v4, v2

    .line 136
    iget v1, p0, Landroidx/work/impl/utils/ForceStopRunnable;->e:I

    int-to-long v4, v1

    mul-long v4, v4, v6

    .line 7261
    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method
