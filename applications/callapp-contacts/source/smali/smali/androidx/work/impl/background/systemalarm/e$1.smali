.class final Landroidx/work/impl/background/systemalarm/e$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/work/impl/background/systemalarm/e;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/work/impl/background/systemalarm/e;


# direct methods
.method constructor <init>(Landroidx/work/impl/background/systemalarm/e;)V
    .locals 0

    .line 253
    iput-object p1, p0, Landroidx/work/impl/background/systemalarm/e$1;->a:Landroidx/work/impl/background/systemalarm/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    .line 256
    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/e$1;->a:Landroidx/work/impl/background/systemalarm/e;

    iget-object v0, v0, Landroidx/work/impl/background/systemalarm/e;->h:Ljava/util/List;

    monitor-enter v0

    .line 257
    :try_start_0
    iget-object v1, p0, Landroidx/work/impl/background/systemalarm/e$1;->a:Landroidx/work/impl/background/systemalarm/e;

    iget-object v2, v1, Landroidx/work/impl/background/systemalarm/e;->h:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    iput-object v2, v1, Landroidx/work/impl/background/systemalarm/e;->i:Landroid/content/Intent;

    .line 258
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 260
    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/e$1;->a:Landroidx/work/impl/background/systemalarm/e;

    iget-object v0, v0, Landroidx/work/impl/background/systemalarm/e;->i:Landroid/content/Intent;

    if-eqz v0, :cond_11

    .line 261
    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/e$1;->a:Landroidx/work/impl/background/systemalarm/e;

    iget-object v0, v0, Landroidx/work/impl/background/systemalarm/e;->i:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 262
    iget-object v1, p0, Landroidx/work/impl/background/systemalarm/e$1;->a:Landroidx/work/impl/background/systemalarm/e;

    iget-object v1, v1, Landroidx/work/impl/background/systemalarm/e;->i:Landroid/content/Intent;

    const-string v2, "KEY_START_ID"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 264
    invoke-static {}, Landroidx/work/k;->a()Landroidx/work/k;

    sget-object v2, Landroidx/work/impl/background/systemalarm/e;->a:Ljava/lang/String;

    const-string v2, "Processing command %s, %s"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Object;

    iget-object v6, p0, Landroidx/work/impl/background/systemalarm/e$1;->a:Landroidx/work/impl/background/systemalarm/e;

    iget-object v6, v6, Landroidx/work/impl/background/systemalarm/e;->i:Landroid/content/Intent;

    aput-object v6, v5, v3

    .line 266
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    .line 265
    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 267
    iget-object v2, p0, Landroidx/work/impl/background/systemalarm/e$1;->a:Landroidx/work/impl/background/systemalarm/e;

    iget-object v2, v2, Landroidx/work/impl/background/systemalarm/e;->b:Landroid/content/Context;

    const-string v5, "%s (%s)"

    new-array v6, v4, [Ljava/lang/Object;

    aput-object v0, v6, v3

    .line 269
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 267
    invoke-static {v2, v5}, Landroidx/work/impl/utils/k;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    .line 271
    :try_start_1
    invoke-static {}, Landroidx/work/k;->a()Landroidx/work/k;

    sget-object v5, Landroidx/work/impl/background/systemalarm/e;->a:Ljava/lang/String;

    const-string v5, "Acquiring operation wake lock (%s) %s"

    new-array v6, v4, [Ljava/lang/Object;

    aput-object v0, v6, v3

    aput-object v2, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 276
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 277
    iget-object v5, p0, Landroidx/work/impl/background/systemalarm/e$1;->a:Landroidx/work/impl/background/systemalarm/e;

    iget-object v5, v5, Landroidx/work/impl/background/systemalarm/e;->g:Landroidx/work/impl/background/systemalarm/b;

    iget-object v6, p0, Landroidx/work/impl/background/systemalarm/e$1;->a:Landroidx/work/impl/background/systemalarm/e;

    iget-object v6, v6, Landroidx/work/impl/background/systemalarm/e;->i:Landroid/content/Intent;

    iget-object v8, p0, Landroidx/work/impl/background/systemalarm/e$1;->a:Landroidx/work/impl/background/systemalarm/e;

    .line 1154
    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    const-string v10, "ACTION_CONSTRAINTS_CHANGED"

    .line 1156
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 1300
    invoke-static {}, Landroidx/work/k;->a()Landroidx/work/k;

    const-string v9, "Handling constraints changed %s"

    new-array v10, v7, [Ljava/lang/Object;

    aput-object v6, v10, v3

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 1303
    new-instance v6, Landroidx/work/impl/background/systemalarm/c;

    iget-object v5, v5, Landroidx/work/impl/background/systemalarm/b;->b:Landroid/content/Context;

    invoke-direct {v6, v5, v1, v8}, Landroidx/work/impl/background/systemalarm/c;-><init>(Landroid/content/Context;ILandroidx/work/impl/background/systemalarm/e;)V

    .line 2063
    iget-object v1, v6, Landroidx/work/impl/background/systemalarm/c;->c:Landroidx/work/impl/background/systemalarm/e;

    .line 2185
    iget-object v1, v1, Landroidx/work/impl/background/systemalarm/e;->f:Landroidx/work/impl/j;

    .line 2317
    iget-object v1, v1, Landroidx/work/impl/j;->c:Landroidx/work/impl/WorkDatabase;

    .line 2064
    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->j()Landroidx/work/impl/model/WorkSpecDao;

    move-result-object v1

    .line 2065
    invoke-interface {v1}, Landroidx/work/impl/model/WorkSpecDao;->getScheduledWork()Ljava/util/List;

    move-result-object v1

    .line 2069
    iget-object v5, v6, Landroidx/work/impl/background/systemalarm/c;->a:Landroid/content/Context;

    invoke-static {v5, v1}, Landroidx/work/impl/background/systemalarm/ConstraintProxy;->a(Landroid/content/Context;Ljava/util/List;)V

    .line 2072
    iget-object v5, v6, Landroidx/work/impl/background/systemalarm/c;->d:Landroidx/work/impl/a/d;

    invoke-virtual {v5, v1}, Landroidx/work/impl/a/d;->a(Ljava/lang/Iterable;)V

    .line 2074
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    invoke-direct {v5, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 2076
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 2077
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/work/impl/model/WorkSpec;

    .line 2078
    iget-object v11, v10, Landroidx/work/impl/model/WorkSpec;->id:Ljava/lang/String;

    .line 2079
    invoke-virtual {v10}, Landroidx/work/impl/model/WorkSpec;->calculateNextRunTime()J

    move-result-wide v12

    cmp-long v14, v8, v12

    if-ltz v14, :cond_0

    .line 2080
    invoke-virtual {v10}, Landroidx/work/impl/model/WorkSpec;->hasConstraints()Z

    move-result v12

    if-eqz v12, :cond_1

    iget-object v12, v6, Landroidx/work/impl/background/systemalarm/c;->d:Landroidx/work/impl/a/d;

    .line 2081
    invoke-virtual {v12, v11}, Landroidx/work/impl/a/d;->a(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 2082
    :cond_1
    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2086
    :cond_2
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/work/impl/model/WorkSpec;

    .line 2087
    iget-object v5, v5, Landroidx/work/impl/model/WorkSpec;->id:Ljava/lang/String;

    .line 2088
    iget-object v8, v6, Landroidx/work/impl/background/systemalarm/c;->a:Landroid/content/Context;

    invoke-static {v8, v5}, Landroidx/work/impl/background/systemalarm/b;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    .line 2089
    invoke-static {}, Landroidx/work/k;->a()Landroidx/work/k;

    const-string v9, "Creating a delay_met command for workSpec with id (%s)"

    new-array v10, v7, [Ljava/lang/Object;

    aput-object v5, v10, v3

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 2091
    iget-object v5, v6, Landroidx/work/impl/background/systemalarm/c;->c:Landroidx/work/impl/background/systemalarm/e;

    new-instance v9, Landroidx/work/impl/background/systemalarm/e$a;

    iget-object v10, v6, Landroidx/work/impl/background/systemalarm/c;->c:Landroidx/work/impl/background/systemalarm/e;

    iget v11, v6, Landroidx/work/impl/background/systemalarm/c;->b:I

    invoke-direct {v9, v10, v8, v11}, Landroidx/work/impl/background/systemalarm/e$a;-><init>(Landroidx/work/impl/background/systemalarm/e;Landroid/content/Intent;I)V

    invoke-virtual {v5, v9}, Landroidx/work/impl/background/systemalarm/e;->a(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 2095
    :cond_3
    iget-object v1, v6, Landroidx/work/impl/background/systemalarm/c;->d:Landroidx/work/impl/a/d;

    invoke-virtual {v1}, Landroidx/work/impl/a/d;->a()V

    goto/16 :goto_5

    :cond_4
    const-string v10, "ACTION_RESCHEDULE"

    .line 1158
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 3313
    invoke-static {}, Landroidx/work/k;->a()Landroidx/work/k;

    const-string v5, "Handling reschedule %s, %s"

    new-array v9, v4, [Ljava/lang/Object;

    aput-object v6, v9, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v9, v7

    invoke-static {v5, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 4185
    iget-object v1, v8, Landroidx/work/impl/background/systemalarm/e;->f:Landroidx/work/impl/j;

    .line 3314
    invoke-virtual {v1}, Landroidx/work/impl/j;->c()V

    goto/16 :goto_5

    .line 1161
    :cond_5
    invoke-virtual {v6}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    const-string v11, "KEY_WORKSPEC_ID"

    .line 1162
    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroidx/work/impl/background/systemalarm/b;->a(Landroid/os/Bundle;[Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_6

    .line 1163
    invoke-static {}, Landroidx/work/k;->a()Landroidx/work/k;

    move-result-object v1

    sget-object v5, Landroidx/work/impl/background/systemalarm/b;->a:Ljava/lang/String;

    const-string v6, "Invalid request for %s, requires %s."

    new-array v8, v4, [Ljava/lang/Object;

    aput-object v9, v8, v3

    const-string v9, "KEY_WORKSPEC_ID"

    aput-object v9, v8, v7

    .line 1164
    invoke-static {v6, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-array v8, v3, [Ljava/lang/Throwable;

    .line 1163
    invoke-virtual {v1, v5, v6, v8}, Landroidx/work/k;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    goto/16 :goto_5

    :cond_6
    const-string v10, "ACTION_SCHEDULE_WORK"

    .line 1168
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 4188
    invoke-virtual {v6}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    const-string v9, "KEY_WORKSPEC_ID"

    .line 4189
    invoke-virtual {v6, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 4190
    invoke-static {}, Landroidx/work/k;->a()Landroidx/work/k;

    const-string v9, "Handling schedule work for %s"

    new-array v10, v7, [Ljava/lang/Object;

    aput-object v6, v10, v3

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 5185
    iget-object v9, v8, Landroidx/work/impl/background/systemalarm/e;->f:Landroidx/work/impl/j;

    .line 5317
    iget-object v9, v9, Landroidx/work/impl/j;->c:Landroidx/work/impl/WorkDatabase;

    .line 4194
    invoke-virtual {v9}, Landroidx/work/impl/WorkDatabase;->e()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 4197
    :try_start_2
    invoke-virtual {v9}, Landroidx/work/impl/WorkDatabase;->j()Landroidx/work/impl/model/WorkSpecDao;

    move-result-object v10

    .line 4198
    invoke-interface {v10, v6}, Landroidx/work/impl/model/WorkSpecDao;->getWorkSpec(Ljava/lang/String;)Landroidx/work/impl/model/WorkSpec;

    move-result-object v10

    if-nez v10, :cond_7

    .line 4208
    invoke-static {}, Landroidx/work/k;->a()Landroidx/work/k;

    move-result-object v1

    sget-object v5, Landroidx/work/impl/background/systemalarm/b;->a:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v10, "Skipping scheduling "

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " because it\'s no longer in the DB"

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroidx/work/k;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4252
    :goto_2
    :try_start_3
    invoke-virtual {v9}, Landroidx/work/impl/WorkDatabase;->f()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto/16 :goto_5

    .line 4212
    :cond_7
    :try_start_4
    iget-object v11, v10, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/t$a;

    invoke-virtual {v11}, Landroidx/work/t$a;->isFinished()Z

    move-result v11

    if-eqz v11, :cond_8

    .line 4216
    invoke-static {}, Landroidx/work/k;->a()Landroidx/work/k;

    move-result-object v1

    sget-object v5, Landroidx/work/impl/background/systemalarm/b;->a:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v10, "Skipping scheduling "

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "because it is finished."

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroidx/work/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 4223
    :cond_8
    invoke-virtual {v10}, Landroidx/work/impl/model/WorkSpec;->calculateNextRunTime()J

    move-result-wide v11

    .line 4225
    invoke-virtual {v10}, Landroidx/work/impl/model/WorkSpec;->hasConstraints()Z

    move-result v10

    if-nez v10, :cond_9

    .line 4226
    invoke-static {}, Landroidx/work/k;->a()Landroidx/work/k;

    const-string v1, "Setting up Alarms for %s at %s"

    new-array v10, v4, [Ljava/lang/Object;

    aput-object v6, v10, v3

    .line 4227
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v10, v7

    invoke-static {v1, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 4228
    iget-object v1, v5, Landroidx/work/impl/background/systemalarm/b;->b:Landroid/content/Context;

    .line 6185
    iget-object v5, v8, Landroidx/work/impl/background/systemalarm/e;->f:Landroidx/work/impl/j;

    .line 4228
    invoke-static {v1, v5, v6, v11, v12}, Landroidx/work/impl/background/systemalarm/a;->a(Landroid/content/Context;Landroidx/work/impl/j;Ljava/lang/String;J)V

    goto :goto_3

    .line 4231
    :cond_9
    invoke-static {}, Landroidx/work/k;->a()Landroidx/work/k;

    const-string v10, "Opportunistically setting an alarm for %s at %s"

    new-array v13, v4, [Ljava/lang/Object;

    aput-object v6, v13, v3

    .line 4233
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v13, v7

    .line 4232
    invoke-static {v10, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 4234
    iget-object v10, v5, Landroidx/work/impl/background/systemalarm/b;->b:Landroid/content/Context;

    .line 7185
    iget-object v13, v8, Landroidx/work/impl/background/systemalarm/e;->f:Landroidx/work/impl/j;

    .line 4234
    invoke-static {v10, v13, v6, v11, v12}, Landroidx/work/impl/background/systemalarm/a;->a(Landroid/content/Context;Landroidx/work/impl/j;Ljava/lang/String;J)V

    .line 4242
    iget-object v5, v5, Landroidx/work/impl/background/systemalarm/b;->b:Landroid/content/Context;

    invoke-static {v5}, Landroidx/work/impl/background/systemalarm/b;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v5

    .line 4243
    new-instance v6, Landroidx/work/impl/background/systemalarm/e$a;

    invoke-direct {v6, v8, v5, v1}, Landroidx/work/impl/background/systemalarm/e$a;-><init>(Landroidx/work/impl/background/systemalarm/e;Landroid/content/Intent;I)V

    invoke-virtual {v8, v6}, Landroidx/work/impl/background/systemalarm/e;->a(Ljava/lang/Runnable;)V

    .line 4250
    :goto_3
    invoke-virtual {v9}, Landroidx/work/impl/WorkDatabase;->g()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v1

    .line 4252
    :try_start_5
    invoke-virtual {v9}, Landroidx/work/impl/WorkDatabase;->f()V

    .line 4253
    throw v1

    :cond_a
    const-string v10, "ACTION_DELAY_MET"

    .line 1170
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 7261
    invoke-virtual {v6}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    .line 7262
    iget-object v9, v5, Landroidx/work/impl/background/systemalarm/b;->d:Ljava/lang/Object;

    monitor-enter v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    const-string v10, "KEY_WORKSPEC_ID"

    .line 7263
    invoke-virtual {v6, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 7264
    invoke-static {}, Landroidx/work/k;->a()Landroidx/work/k;

    const-string v10, "Handing delay met for %s"

    new-array v11, v7, [Ljava/lang/Object;

    aput-object v6, v11, v3

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 7268
    iget-object v10, v5, Landroidx/work/impl/background/systemalarm/b;->c:Ljava/util/Map;

    invoke-interface {v10, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_d

    .line 7269
    new-instance v10, Landroidx/work/impl/background/systemalarm/d;

    iget-object v11, v5, Landroidx/work/impl/background/systemalarm/b;->b:Landroid/content/Context;

    invoke-direct {v10, v11, v1, v6, v8}, Landroidx/work/impl/background/systemalarm/d;-><init>(Landroid/content/Context;ILjava/lang/String;Landroidx/work/impl/background/systemalarm/e;)V

    .line 7271
    iget-object v1, v5, Landroidx/work/impl/background/systemalarm/b;->c:Ljava/util/Map;

    invoke-interface {v1, v6, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8186
    iget-object v1, v10, Landroidx/work/impl/background/systemalarm/d;->a:Landroid/content/Context;

    const-string v5, "%s (%s)"

    new-array v6, v4, [Ljava/lang/Object;

    iget-object v8, v10, Landroidx/work/impl/background/systemalarm/d;->c:Ljava/lang/String;

    aput-object v8, v6, v3

    iget v8, v10, Landroidx/work/impl/background/systemalarm/d;->b:I

    .line 8188
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 8186
    invoke-static {v1, v5}, Landroidx/work/impl/utils/k;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, v10, Landroidx/work/impl/background/systemalarm/d;->f:Landroid/os/PowerManager$WakeLock;

    .line 8189
    invoke-static {}, Landroidx/work/k;->a()Landroidx/work/k;

    const-string v1, "Acquiring wakelock %s for WorkSpec %s"

    new-array v5, v4, [Ljava/lang/Object;

    iget-object v6, v10, Landroidx/work/impl/background/systemalarm/d;->f:Landroid/os/PowerManager$WakeLock;

    aput-object v6, v5, v3

    iget-object v6, v10, Landroidx/work/impl/background/systemalarm/d;->c:Ljava/lang/String;

    aput-object v6, v5, v7

    .line 8190
    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 8191
    iget-object v1, v10, Landroidx/work/impl/background/systemalarm/d;->f:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 8193
    iget-object v1, v10, Landroidx/work/impl/background/systemalarm/d;->d:Landroidx/work/impl/background/systemalarm/e;

    .line 9185
    iget-object v1, v1, Landroidx/work/impl/background/systemalarm/e;->f:Landroidx/work/impl/j;

    .line 9317
    iget-object v1, v1, Landroidx/work/impl/j;->c:Landroidx/work/impl/WorkDatabase;

    .line 8195
    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->j()Landroidx/work/impl/model/WorkSpecDao;

    move-result-object v1

    iget-object v5, v10, Landroidx/work/impl/background/systemalarm/d;->c:Ljava/lang/String;

    .line 8196
    invoke-interface {v1, v5}, Landroidx/work/impl/model/WorkSpecDao;->getWorkSpec(Ljava/lang/String;)Landroidx/work/impl/model/WorkSpec;

    move-result-object v1

    if-nez v1, :cond_b

    .line 8202
    invoke-virtual {v10}, Landroidx/work/impl/background/systemalarm/d;->a()V

    goto :goto_4

    .line 8208
    :cond_b
    invoke-virtual {v1}, Landroidx/work/impl/model/WorkSpec;->hasConstraints()Z

    move-result v5

    iput-boolean v5, v10, Landroidx/work/impl/background/systemalarm/d;->g:Z

    .line 8210
    iget-boolean v5, v10, Landroidx/work/impl/background/systemalarm/d;->g:Z

    if-nez v5, :cond_c

    .line 8211
    invoke-static {}, Landroidx/work/k;->a()Landroidx/work/k;

    const-string v1, "No constraints for %s"

    new-array v5, v7, [Ljava/lang/Object;

    iget-object v6, v10, Landroidx/work/impl/background/systemalarm/d;->c:Ljava/lang/String;

    aput-object v6, v5, v3

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 8212
    iget-object v1, v10, Landroidx/work/impl/background/systemalarm/d;->c:Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroidx/work/impl/background/systemalarm/d;->a(Ljava/util/List;)V

    goto :goto_4

    .line 8215
    :cond_c
    iget-object v5, v10, Landroidx/work/impl/background/systemalarm/d;->e:Landroidx/work/impl/a/d;

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroidx/work/impl/a/d;->a(Ljava/lang/Iterable;)V

    goto :goto_4

    .line 7274
    :cond_d
    invoke-static {}, Landroidx/work/k;->a()Landroidx/work/k;

    const-string v1, "WorkSpec %s is already being handled for ACTION_DELAY_MET"

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v6, v5, v3

    .line 7275
    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 7278
    :goto_4
    monitor-exit v9

    goto :goto_5

    :catchall_1
    move-exception v1

    monitor-exit v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v1

    :cond_e
    const-string v10, "ACTION_STOP_WORK"

    .line 1172
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_f

    .line 10285
    invoke-virtual {v6}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v6, "KEY_WORKSPEC_ID"

    .line 10286
    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 10287
    invoke-static {}, Landroidx/work/k;->a()Landroidx/work/k;

    const-string v6, "Handing stopWork work for %s"

    new-array v9, v7, [Ljava/lang/Object;

    aput-object v1, v9, v3

    invoke-static {v6, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 11185
    iget-object v6, v8, Landroidx/work/impl/background/systemalarm/e;->f:Landroidx/work/impl/j;

    .line 10289
    invoke-virtual {v6, v1}, Landroidx/work/impl/j;->c(Ljava/lang/String;)V

    .line 10290
    iget-object v5, v5, Landroidx/work/impl/background/systemalarm/b;->b:Landroid/content/Context;

    .line 12185
    iget-object v6, v8, Landroidx/work/impl/background/systemalarm/e;->f:Landroidx/work/impl/j;

    .line 10290
    invoke-static {v5, v6, v1}, Landroidx/work/impl/background/systemalarm/a;->a(Landroid/content/Context;Landroidx/work/impl/j;Ljava/lang/String;)V

    .line 10293
    invoke-virtual {v8, v1, v3}, Landroidx/work/impl/background/systemalarm/e;->a(Ljava/lang/String;Z)V

    goto :goto_5

    :cond_f
    const-string v8, "ACTION_EXECUTION_COMPLETED"

    .line 1174
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 12321
    invoke-virtual {v6}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    const-string v9, "KEY_WORKSPEC_ID"

    .line 12322
    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "KEY_NEEDS_RESCHEDULE"

    .line 12323
    invoke-virtual {v8, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    .line 12324
    invoke-static {}, Landroidx/work/k;->a()Landroidx/work/k;

    const-string v10, "Handling onExecutionCompleted %s, %s"

    new-array v11, v4, [Ljava/lang/Object;

    aput-object v6, v11, v3

    .line 12326
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v11, v7

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 12328
    invoke-virtual {v5, v9, v8}, Landroidx/work/impl/background/systemalarm/b;->a(Ljava/lang/String;Z)V

    goto :goto_5

    .line 1177
    :cond_10
    invoke-static {}, Landroidx/work/k;->a()Landroidx/work/k;

    move-result-object v1

    sget-object v5, Landroidx/work/impl/background/systemalarm/b;->a:Ljava/lang/String;

    const-string v8, "Ignoring intent %s"

    new-array v9, v7, [Ljava/lang/Object;

    aput-object v6, v9, v3

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroidx/work/k;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 285
    :goto_5
    invoke-static {}, Landroidx/work/k;->a()Landroidx/work/k;

    sget-object v1, Landroidx/work/impl/background/systemalarm/e;->a:Ljava/lang/String;

    const-string v1, "Releasing operation wake lock (%s) %s"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v3

    aput-object v2, v4, v7

    .line 287
    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 291
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 293
    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/e$1;->a:Landroidx/work/impl/background/systemalarm/e;

    new-instance v1, Landroidx/work/impl/background/systemalarm/e$c;

    invoke-direct {v1, v0}, Landroidx/work/impl/background/systemalarm/e$c;-><init>(Landroidx/work/impl/background/systemalarm/e;)V

    :goto_6
    invoke-virtual {v0, v1}, Landroidx/work/impl/background/systemalarm/e;->a(Ljava/lang/Runnable;)V

    return-void

    :catchall_2
    move-exception v1

    .line 280
    :try_start_8
    invoke-static {}, Landroidx/work/k;->a()Landroidx/work/k;

    move-result-object v5

    sget-object v6, Landroidx/work/impl/background/systemalarm/e;->a:Ljava/lang/String;

    const-string v8, "Unexpected error in onHandleIntent"

    new-array v9, v7, [Ljava/lang/Throwable;

    aput-object v1, v9, v3

    invoke-virtual {v5, v6, v8, v9}, Landroidx/work/k;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 285
    invoke-static {}, Landroidx/work/k;->a()Landroidx/work/k;

    sget-object v1, Landroidx/work/impl/background/systemalarm/e;->a:Ljava/lang/String;

    const-string v1, "Releasing operation wake lock (%s) %s"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v3

    aput-object v2, v4, v7

    .line 287
    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 291
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 293
    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/e$1;->a:Landroidx/work/impl/background/systemalarm/e;

    new-instance v1, Landroidx/work/impl/background/systemalarm/e$c;

    invoke-direct {v1, v0}, Landroidx/work/impl/background/systemalarm/e$c;-><init>(Landroidx/work/impl/background/systemalarm/e;)V

    goto :goto_6

    :catchall_3
    move-exception v1

    .line 285
    invoke-static {}, Landroidx/work/k;->a()Landroidx/work/k;

    sget-object v5, Landroidx/work/impl/background/systemalarm/e;->a:Ljava/lang/String;

    const-string v5, "Releasing operation wake lock (%s) %s"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v3

    aput-object v2, v4, v7

    .line 287
    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 291
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 293
    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/e$1;->a:Landroidx/work/impl/background/systemalarm/e;

    new-instance v2, Landroidx/work/impl/background/systemalarm/e$c;

    invoke-direct {v2, v0}, Landroidx/work/impl/background/systemalarm/e$c;-><init>(Landroidx/work/impl/background/systemalarm/e;)V

    invoke-virtual {v0, v2}, Landroidx/work/impl/background/systemalarm/e;->a(Ljava/lang/Runnable;)V

    .line 295
    throw v1

    :cond_11
    return-void

    :catchall_4
    move-exception v1

    .line 258
    :try_start_9
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    throw v1
.end method
