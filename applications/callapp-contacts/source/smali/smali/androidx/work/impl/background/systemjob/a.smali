.class final Landroidx/work/impl/background/systemjob/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Landroid/content/ComponentName;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "SystemJobInfoConverter"

    .line 47
    invoke-static {v0}, Landroidx/work/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/work/impl/background/systemjob/a;->a:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 57
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Landroidx/work/impl/background/systemjob/SystemJobService;

    invoke-direct {v0, p1, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Landroidx/work/impl/background/systemjob/a;->b:Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method final a(Landroidx/work/impl/model/WorkSpec;I)Landroid/app/job/JobInfo;
    .locals 10

    .line 70
    iget-object v0, p1, Landroidx/work/impl/model/WorkSpec;->constraints:Landroidx/work/b;

    .line 1105
    iget-object v1, v0, Landroidx/work/b;->b:Landroidx/work/l;

    .line 1140
    sget-object v2, Landroidx/work/impl/background/systemjob/a$1;->a:[I

    invoke-virtual {v1}, Landroidx/work/l;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/16 v3, 0x1a

    const/16 v4, 0x18

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eq v2, v9, :cond_5

    if-eq v2, v7, :cond_3

    if-eq v2, v6, :cond_4

    if-eq v2, v5, :cond_1

    const/4 v6, 0x5

    if-eq v2, v6, :cond_0

    goto :goto_0

    .line 1153
    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v3, :cond_2

    goto :goto_1

    .line 1148
    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v4, :cond_2

    const/4 v5, 0x3

    goto :goto_1

    .line 1158
    :cond_2
    :goto_0
    invoke-static {}, Landroidx/work/k;->a()Landroidx/work/k;

    new-array v2, v9, [Ljava/lang/Object;

    aput-object v1, v2, v8

    const-string v1, "API version too low. Cannot convert network type value %s"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    :cond_3
    const/4 v5, 0x1

    goto :goto_1

    :cond_4
    const/4 v5, 0x2

    goto :goto_1

    :cond_5
    const/4 v5, 0x0

    .line 72
    :goto_1
    new-instance v1, Landroid/os/PersistableBundle;

    invoke-direct {v1}, Landroid/os/PersistableBundle;-><init>()V

    .line 73
    iget-object v2, p1, Landroidx/work/impl/model/WorkSpec;->id:Ljava/lang/String;

    const-string v6, "EXTRA_WORK_SPEC_ID"

    invoke-virtual {v1, v6, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    invoke-virtual {p1}, Landroidx/work/impl/model/WorkSpec;->isPeriodic()Z

    move-result v2

    const-string v6, "EXTRA_IS_PERIODIC"

    invoke-virtual {v1, v6, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 75
    new-instance v2, Landroid/app/job/JobInfo$Builder;

    iget-object v6, p0, Landroidx/work/impl/background/systemjob/a;->b:Landroid/content/ComponentName;

    invoke-direct {v2, p2, v6}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 76
    invoke-virtual {v2, v5}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    move-result-object p2

    .line 2121
    iget-boolean v2, v0, Landroidx/work/b;->c:Z

    .line 77
    invoke-virtual {p2, v2}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object p2

    .line 2138
    iget-boolean v2, v0, Landroidx/work/b;->d:Z

    .line 78
    invoke-virtual {p2, v2}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object p2

    .line 79
    invoke-virtual {p2, v1}, Landroid/app/job/JobInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;

    move-result-object p2

    .line 3138
    iget-boolean v1, v0, Landroidx/work/b;->d:Z

    if-nez v1, :cond_7

    .line 83
    iget-object v1, p1, Landroidx/work/impl/model/WorkSpec;->backoffPolicy:Landroidx/work/a;

    sget-object v2, Landroidx/work/a;->LINEAR:Landroidx/work/a;

    if-ne v1, v2, :cond_6

    const/4 v1, 0x0

    goto :goto_2

    :cond_6
    const/4 v1, 0x1

    .line 85
    :goto_2
    iget-wide v5, p1, Landroidx/work/impl/model/WorkSpec;->backoffDelayDuration:J

    invoke-virtual {p2, v5, v6, v1}, Landroid/app/job/JobInfo$Builder;->setBackoffCriteria(JI)Landroid/app/job/JobInfo$Builder;

    .line 88
    :cond_7
    invoke-virtual {p1}, Landroidx/work/impl/model/WorkSpec;->calculateNextRunTime()J

    move-result-wide v1

    .line 89
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v1, v5

    const-wide/16 v5, 0x0

    .line 90
    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 92
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x1c

    if-gt p1, v7, :cond_8

    .line 96
    invoke-virtual {p2, v1, v2}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    goto :goto_3

    :cond_8
    cmp-long p1, v1, v5

    if-lez p1, :cond_9

    .line 100
    invoke-virtual {p2, v1, v2}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    goto :goto_3

    .line 102
    :cond_9
    invoke-virtual {p2, v9}, Landroid/app/job/JobInfo$Builder;->setImportantWhileForeground(Z)Landroid/app/job/JobInfo$Builder;

    .line 106
    :goto_3
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v4, :cond_b

    invoke-virtual {v0}, Landroidx/work/b;->a()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 3235
    iget-object p1, v0, Landroidx/work/b;->i:Landroidx/work/c;

    .line 4056
    iget-object p1, p1, Landroidx/work/c;->a:Ljava/util/Set;

    .line 108
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/work/c$a;

    .line 5104
    iget-boolean v2, v1, Landroidx/work/c$a;->b:Z

    .line 4130
    new-instance v4, Landroid/app/job/JobInfo$TriggerContentUri;

    .line 6097
    iget-object v1, v1, Landroidx/work/c$a;->a:Landroid/net/Uri;

    .line 4130
    invoke-direct {v4, v1, v2}, Landroid/app/job/JobInfo$TriggerContentUri;-><init>(Landroid/net/Uri;I)V

    .line 109
    invoke-virtual {p2, v4}, Landroid/app/job/JobInfo$Builder;->addTriggerContentUri(Landroid/app/job/JobInfo$TriggerContentUri;)Landroid/app/job/JobInfo$Builder;

    goto :goto_4

    .line 6189
    :cond_a
    iget-wide v1, v0, Landroidx/work/b;->g:J

    .line 111
    invoke-virtual {p2, v1, v2}, Landroid/app/job/JobInfo$Builder;->setTriggerContentUpdateDelay(J)Landroid/app/job/JobInfo$Builder;

    .line 6207
    iget-wide v1, v0, Landroidx/work/b;->h:J

    .line 112
    invoke-virtual {p2, v1, v2}, Landroid/app/job/JobInfo$Builder;->setTriggerContentMaxDelay(J)Landroid/app/job/JobInfo$Builder;

    .line 117
    :cond_b
    invoke-virtual {p2, v8}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    .line 118
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v3, :cond_c

    .line 7155
    iget-boolean p1, v0, Landroidx/work/b;->e:Z

    .line 119
    invoke-virtual {p2, p1}, Landroid/app/job/JobInfo$Builder;->setRequiresBatteryNotLow(Z)Landroid/app/job/JobInfo$Builder;

    .line 7171
    iget-boolean p1, v0, Landroidx/work/b;->f:Z

    .line 120
    invoke-virtual {p2, p1}, Landroid/app/job/JobInfo$Builder;->setRequiresStorageNotLow(Z)Landroid/app/job/JobInfo$Builder;

    .line 122
    :cond_c
    invoke-virtual {p2}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object p1

    return-object p1
.end method
