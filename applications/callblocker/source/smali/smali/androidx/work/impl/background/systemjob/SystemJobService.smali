.class public Landroidx/work/impl/background/systemjob/SystemJobService;
.super Landroid/app/job/JobService;
.source "SystemJobService.java"

# interfaces
.implements Landroidx/work/impl/a;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Landroidx/work/impl/i;

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/app/job/JobParameters;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-string/jumbo v0, "SystemJobService"

    invoke-static {v0}, Landroidx/work/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/work/impl/background/systemjob/SystemJobService;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/work/impl/background/systemjob/SystemJobService;->c:Ljava/util/Map;

    return-void
.end method

.method private static a(Landroid/app/job/JobParameters;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 187
    :try_start_0
    invoke-virtual {p0}, Landroid/app/job/JobParameters;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v0

    .line 188
    if-eqz v0, :cond_0

    const-string/jumbo v1, "EXTRA_WORK_SPEC_ID"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 189
    const-string/jumbo v1, "EXTRA_WORK_SPEC_ID"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 194
    :goto_0
    return-object v0

    .line 191
    :catch_0
    move-exception v0

    .line 194
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;Z)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 173
    invoke-static {}, Landroidx/work/l;->a()Landroidx/work/l;

    move-result-object v0

    sget-object v1, Landroidx/work/impl/background/systemjob/SystemJobService;->a:Ljava/lang/String;

    const-string/jumbo v2, "%s executed on JobScheduler"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Throwable;

    invoke-virtual {v0, v1, v2, v3}, Landroidx/work/l;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 175
    iget-object v1, p0, Landroidx/work/impl/background/systemjob/SystemJobService;->c:Ljava/util/Map;

    monitor-enter v1

    .line 176
    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/background/systemjob/SystemJobService;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobParameters;

    .line 177
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    if-eqz v0, :cond_0

    .line 179
    invoke-virtual {p0, v0, p2}, Landroidx/work/impl/background/systemjob/SystemJobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 181
    :cond_0
    return-void

    .line 177
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    .line 55
    invoke-super {p0}, Landroid/app/job/JobService;->onCreate()V

    .line 57
    :try_start_0
    invoke-virtual {p0}, Landroidx/work/impl/background/systemjob/SystemJobService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/work/impl/i;->b(Landroid/content/Context;)Landroidx/work/impl/i;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/impl/background/systemjob/SystemJobService;->b:Landroidx/work/impl/i;

    .line 58
    iget-object v0, p0, Landroidx/work/impl/background/systemjob/SystemJobService;->b:Landroidx/work/impl/i;

    invoke-virtual {v0}, Landroidx/work/impl/i;->f()Landroidx/work/impl/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/work/impl/c;->a(Landroidx/work/impl/a;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :goto_0
    return-void

    .line 59
    :catch_0
    move-exception v0

    .line 69
    const-class v0, Landroid/app/Application;

    invoke-virtual {p0}, Landroidx/work/impl/background/systemjob/SystemJobService;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "WorkManager needs to be initialized via a ContentProvider#onCreate() or an Application#onCreate()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_0
    invoke-static {}, Landroidx/work/l;->a()Landroidx/work/l;

    move-result-object v0

    sget-object v1, Landroidx/work/impl/background/systemjob/SystemJobService;->a:Ljava/lang/String;

    const-string/jumbo v2, "Could not find WorkManager instance; this may be because an auto-backup is in progress. Ignoring JobScheduler commands for now. Please make sure that you are initializing WorkManager if you have manually disabled WorkManagerInitializer."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Throwable;

    invoke-virtual {v0, v1, v2, v3}, Landroidx/work/l;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 85
    invoke-super {p0}, Landroid/app/job/JobService;->onDestroy()V

    .line 86
    iget-object v0, p0, Landroidx/work/impl/background/systemjob/SystemJobService;->b:Landroidx/work/impl/i;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Landroidx/work/impl/background/systemjob/SystemJobService;->b:Landroidx/work/impl/i;

    invoke-virtual {v0}, Landroidx/work/impl/i;->f()Landroidx/work/impl/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/work/impl/c;->b(Landroidx/work/impl/a;)V

    .line 89
    :cond_0
    return-void
.end method

.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 93
    iget-object v2, p0, Landroidx/work/impl/background/systemjob/SystemJobService;->b:Landroidx/work/impl/i;

    if-nez v2, :cond_0

    .line 94
    invoke-static {}, Landroidx/work/l;->a()Landroidx/work/l;

    move-result-object v2

    sget-object v3, Landroidx/work/impl/background/systemjob/SystemJobService;->a:Ljava/lang/String;

    const-string/jumbo v4, "WorkManager is not initialized; requesting retry."

    new-array v5, v0, [Ljava/lang/Throwable;

    invoke-virtual {v2, v3, v4, v5}, Landroidx/work/l;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 95
    invoke-virtual {p0, p1, v1}, Landroidx/work/impl/background/systemjob/SystemJobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 146
    :goto_0
    return v0

    .line 99
    :cond_0
    invoke-static {p1}, Landroidx/work/impl/background/systemjob/SystemJobService;->a(Landroid/app/job/JobParameters;)Ljava/lang/String;

    move-result-object v2

    .line 100
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 101
    invoke-static {}, Landroidx/work/l;->a()Landroidx/work/l;

    move-result-object v1

    sget-object v2, Landroidx/work/impl/background/systemjob/SystemJobService;->a:Ljava/lang/String;

    const-string/jumbo v3, "WorkSpec id not found!"

    new-array v4, v0, [Ljava/lang/Throwable;

    invoke-virtual {v1, v2, v3, v4}, Landroidx/work/l;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    goto :goto_0

    .line 105
    :cond_1
    iget-object v3, p0, Landroidx/work/impl/background/systemjob/SystemJobService;->c:Ljava/util/Map;

    monitor-enter v3

    .line 106
    :try_start_0
    iget-object v4, p0, Landroidx/work/impl/background/systemjob/SystemJobService;->c:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 109
    invoke-static {}, Landroidx/work/l;->a()Landroidx/work/l;

    move-result-object v1

    sget-object v4, Landroidx/work/impl/background/systemjob/SystemJobService;->a:Ljava/lang/String;

    const-string/jumbo v5, "Job is already being executed by SystemJobService: %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Throwable;

    invoke-virtual {v1, v4, v2, v5}, Landroidx/work/l;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 111
    monitor-exit v3

    goto :goto_0

    .line 120
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 118
    :cond_2
    :try_start_1
    invoke-static {}, Landroidx/work/l;->a()Landroidx/work/l;

    move-result-object v0

    sget-object v4, Landroidx/work/impl/background/systemjob/SystemJobService;->a:Ljava/lang/String;

    const-string/jumbo v5, "onStartJob for %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Throwable;

    invoke-virtual {v0, v4, v5, v6}, Landroidx/work/l;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 119
    iget-object v0, p0, Landroidx/work/impl/background/systemjob/SystemJobService;->c:Ljava/util/Map;

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 122
    const/4 v0, 0x0

    .line 123
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-lt v3, v4, :cond_5

    .line 124
    new-instance v0, Landroidx/work/WorkerParameters$a;

    invoke-direct {v0}, Landroidx/work/WorkerParameters$a;-><init>()V

    .line 125
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getTriggeredContentUris()[Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 127
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getTriggeredContentUris()[Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v0, Landroidx/work/WorkerParameters$a;->b:Ljava/util/List;

    .line 129
    :cond_3
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getTriggeredContentAuthorities()[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 131
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getTriggeredContentAuthorities()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v0, Landroidx/work/WorkerParameters$a;->a:Ljava/util/List;

    .line 133
    :cond_4
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1c

    if-lt v3, v4, :cond_5

    .line 134
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getNetwork()Landroid/net/Network;

    move-result-object v3

    iput-object v3, v0, Landroidx/work/WorkerParameters$a;->c:Landroid/net/Network;

    .line 145
    :cond_5
    iget-object v3, p0, Landroidx/work/impl/background/systemjob/SystemJobService;->b:Landroidx/work/impl/i;

    invoke-virtual {v3, v2, v0}, Landroidx/work/impl/i;->a(Ljava/lang/String;Landroidx/work/WorkerParameters$a;)V

    move v0, v1

    .line 146
    goto/16 :goto_0
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 151
    iget-object v2, p0, Landroidx/work/impl/background/systemjob/SystemJobService;->b:Landroidx/work/impl/i;

    if-nez v2, :cond_1

    .line 152
    invoke-static {}, Landroidx/work/l;->a()Landroidx/work/l;

    move-result-object v2

    sget-object v3, Landroidx/work/impl/background/systemjob/SystemJobService;->a:Ljava/lang/String;

    const-string/jumbo v4, "WorkManager is not initialized; requesting retry."

    new-array v1, v1, [Ljava/lang/Throwable;

    invoke-virtual {v2, v3, v4, v1}, Landroidx/work/l;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 168
    :cond_0
    :goto_0
    return v0

    .line 156
    :cond_1
    invoke-static {p1}, Landroidx/work/impl/background/systemjob/SystemJobService;->a(Landroid/app/job/JobParameters;)Ljava/lang/String;

    move-result-object v2

    .line 157
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 158
    invoke-static {}, Landroidx/work/l;->a()Landroidx/work/l;

    move-result-object v0

    sget-object v2, Landroidx/work/impl/background/systemjob/SystemJobService;->a:Ljava/lang/String;

    const-string/jumbo v3, "WorkSpec id not found!"

    new-array v4, v1, [Ljava/lang/Throwable;

    invoke-virtual {v0, v2, v3, v4}, Landroidx/work/l;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    move v0, v1

    .line 159
    goto :goto_0

    .line 162
    :cond_2
    invoke-static {}, Landroidx/work/l;->a()Landroidx/work/l;

    move-result-object v3

    sget-object v4, Landroidx/work/impl/background/systemjob/SystemJobService;->a:Ljava/lang/String;

    const-string/jumbo v5, "onStopJob for %s"

    new-array v6, v0, [Ljava/lang/Object;

    aput-object v2, v6, v1

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v1, [Ljava/lang/Throwable;

    invoke-virtual {v3, v4, v5, v6}, Landroidx/work/l;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 164
    iget-object v3, p0, Landroidx/work/impl/background/systemjob/SystemJobService;->c:Ljava/util/Map;

    monitor-enter v3

    .line 165
    :try_start_0
    iget-object v4, p0, Landroidx/work/impl/background/systemjob/SystemJobService;->c:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    iget-object v3, p0, Landroidx/work/impl/background/systemjob/SystemJobService;->b:Landroidx/work/impl/i;

    invoke-virtual {v3, v2}, Landroidx/work/impl/i;->b(Ljava/lang/String;)V

    .line 168
    iget-object v3, p0, Landroidx/work/impl/background/systemjob/SystemJobService;->b:Landroidx/work/impl/i;

    invoke-virtual {v3}, Landroidx/work/impl/i;->f()Landroidx/work/impl/c;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroidx/work/impl/c;->f(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 166
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
