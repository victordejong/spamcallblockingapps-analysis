.class Landroidx/work/impl/background/systemjob/a;
.super Ljava/lang/Object;
.source "SystemJobInfoConverter.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Landroid/content/ComponentName;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-string/jumbo v0, "SystemJobInfoConverter"

    invoke-static {v0}, Landroidx/work/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/work/impl/background/systemjob/a;->a:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 57
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Landroidx/work/impl/background/systemjob/SystemJobService;

    invoke-direct {v1, v0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v1, p0, Landroidx/work/impl/background/systemjob/a;->b:Landroid/content/ComponentName;

    .line 58
    return-void
.end method

.method static a(Landroidx/work/m;)I
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 140
    sget-object v2, Landroidx/work/impl/background/systemjob/a$1;->a:[I

    invoke-virtual {p0}, Landroidx/work/m;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 158
    :cond_0
    invoke-static {}, Landroidx/work/l;->a()Landroidx/work/l;

    move-result-object v2

    sget-object v3, Landroidx/work/impl/background/systemjob/a;->a:Ljava/lang/String;

    const-string/jumbo v4, "API version too low. Cannot convert network type value %s"

    new-array v5, v1, [Ljava/lang/Object;

    aput-object p0, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-array v0, v0, [Ljava/lang/Throwable;

    invoke-virtual {v2, v3, v4, v0}, Landroidx/work/l;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    move v0, v1

    .line 160
    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    move v0, v1

    .line 144
    goto :goto_0

    .line 146
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 148
    :pswitch_3
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_0

    .line 149
    const/4 v0, 0x3

    goto :goto_0

    .line 153
    :pswitch_4
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_0

    .line 154
    const/4 v0, 0x4

    goto :goto_0

    .line 140
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private static a(Landroidx/work/d$a;)Landroid/app/job/JobInfo$TriggerContentUri;
    .locals 3

    .prologue
    .line 128
    invoke-virtual {p0}, Landroidx/work/d$a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 130
    :goto_0
    new-instance v1, Landroid/app/job/JobInfo$TriggerContentUri;

    invoke-virtual {p0}, Landroidx/work/d$a;->a()Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/app/job/JobInfo$TriggerContentUri;-><init>(Landroid/net/Uri;I)V

    return-object v1

    .line 128
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method a(Landroidx/work/impl/b/p;I)Landroid/app/job/JobInfo;
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 70
    iget-object v3, p1, Landroidx/work/impl/b/p;->j:Landroidx/work/c;

    .line 71
    invoke-virtual {v3}, Landroidx/work/c;->a()Landroidx/work/m;

    move-result-object v0

    invoke-static {v0}, Landroidx/work/impl/background/systemjob/a;->a(Landroidx/work/m;)I

    move-result v0

    .line 72
    new-instance v4, Landroid/os/PersistableBundle;

    invoke-direct {v4}, Landroid/os/PersistableBundle;-><init>()V

    .line 73
    const-string/jumbo v5, "EXTRA_WORK_SPEC_ID"

    iget-object v6, p1, Landroidx/work/impl/b/p;->a:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const-string/jumbo v5, "EXTRA_IS_PERIODIC"

    invoke-virtual {p1}, Landroidx/work/impl/b/p;->a()Z

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 75
    new-instance v5, Landroid/app/job/JobInfo$Builder;

    iget-object v6, p0, Landroidx/work/impl/background/systemjob/a;->b:Landroid/content/ComponentName;

    invoke-direct {v5, p2, v6}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 76
    invoke-virtual {v5, v0}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    .line 77
    invoke-virtual {v3}, Landroidx/work/c;->b()Z

    move-result v5

    invoke-virtual {v0, v5}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    .line 78
    invoke-virtual {v3}, Landroidx/work/c;->c()Z

    move-result v5

    invoke-virtual {v0, v5}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    .line 79
    invoke-virtual {v0, v4}, Landroid/app/job/JobInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;

    move-result-object v4

    .line 81
    invoke-virtual {v3}, Landroidx/work/c;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 83
    iget-object v0, p1, Landroidx/work/impl/b/p;->l:Landroidx/work/a;

    sget-object v5, Landroidx/work/a;->b:Landroidx/work/a;

    if-ne v0, v5, :cond_1

    move v0, v1

    .line 85
    :goto_0
    iget-wide v6, p1, Landroidx/work/impl/b/p;->m:J

    invoke-virtual {v4, v6, v7, v0}, Landroid/app/job/JobInfo$Builder;->setBackoffCriteria(JI)Landroid/app/job/JobInfo$Builder;

    .line 88
    :cond_0
    invoke-virtual {p1}, Landroidx/work/impl/b/p;->c()J

    move-result-wide v6

    .line 89
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 90
    sub-long/2addr v6, v8

    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    .line 92
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1c

    if-gt v0, v5, :cond_2

    .line 96
    invoke-virtual {v4, v6, v7}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    .line 106
    :goto_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v0, v2, :cond_5

    invoke-virtual {v3}, Landroidx/work/c;->i()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 107
    invoke-virtual {v3}, Landroidx/work/c;->h()Landroidx/work/d;

    move-result-object v0

    .line 108
    invoke-virtual {v0}, Landroidx/work/d;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/work/d$a;

    .line 109
    invoke-static {v0}, Landroidx/work/impl/background/systemjob/a;->a(Landroidx/work/d$a;)Landroid/app/job/JobInfo$TriggerContentUri;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/app/job/JobInfo$Builder;->addTriggerContentUri(Landroid/app/job/JobInfo$TriggerContentUri;)Landroid/app/job/JobInfo$Builder;

    goto :goto_2

    :cond_1
    move v0, v2

    .line 83
    goto :goto_0

    .line 98
    :cond_2
    cmp-long v0, v6, v10

    if-lez v0, :cond_3

    .line 100
    invoke-virtual {v4, v6, v7}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    goto :goto_1

    .line 102
    :cond_3
    invoke-virtual {v4, v2}, Landroid/app/job/JobInfo$Builder;->setImportantWhileForeground(Z)Landroid/app/job/JobInfo$Builder;

    goto :goto_1

    .line 111
    :cond_4
    invoke-virtual {v3}, Landroidx/work/c;->f()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Landroid/app/job/JobInfo$Builder;->setTriggerContentUpdateDelay(J)Landroid/app/job/JobInfo$Builder;

    .line 112
    invoke-virtual {v3}, Landroidx/work/c;->g()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Landroid/app/job/JobInfo$Builder;->setTriggerContentMaxDelay(J)Landroid/app/job/JobInfo$Builder;

    .line 117
    :cond_5
    invoke-virtual {v4, v1}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    .line 118
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_6

    .line 119
    invoke-virtual {v3}, Landroidx/work/c;->d()Z

    move-result v0

    invoke-virtual {v4, v0}, Landroid/app/job/JobInfo$Builder;->setRequiresBatteryNotLow(Z)Landroid/app/job/JobInfo$Builder;

    .line 120
    invoke-virtual {v3}, Landroidx/work/c;->e()Z

    move-result v0

    invoke-virtual {v4, v0}, Landroid/app/job/JobInfo$Builder;->setRequiresStorageNotLow(Z)Landroid/app/job/JobInfo$Builder;

    .line 122
    :cond_6
    invoke-virtual {v4}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v0

    return-object v0
.end method
