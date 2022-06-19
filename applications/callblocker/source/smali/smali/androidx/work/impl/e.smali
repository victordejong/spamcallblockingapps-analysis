.class public Landroidx/work/impl/e;
.super Ljava/lang/Object;
.source "Schedulers.java"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-string/jumbo v0, "Schedulers"

    invoke-static {v0}, Landroidx/work/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/work/impl/e;->a:Ljava/lang/String;

    return-void
.end method

.method private static a(Landroid/content/Context;)Landroidx/work/impl/d;
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 122
    :try_start_0
    const-string/jumbo v0, "androidx.work.impl.background.gcm.GcmScheduler"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 123
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Landroid/content/Context;

    aput-object v3, v1, v2

    .line 124
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/work/impl/d;

    .line 125
    invoke-static {}, Landroidx/work/l;->a()Landroidx/work/l;

    move-result-object v1

    sget-object v2, Landroidx/work/impl/e;->a:Ljava/lang/String;

    const-string/jumbo v3, "Created %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "androidx.work.impl.background.gcm.GcmScheduler"

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Throwable;

    invoke-virtual {v1, v2, v3, v4}, Landroidx/work/l;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    :goto_0
    return-object v0

    .line 127
    :catch_0
    move-exception v0

    .line 128
    invoke-static {}, Landroidx/work/l;->a()Landroidx/work/l;

    move-result-object v1

    sget-object v2, Landroidx/work/impl/e;->a:Ljava/lang/String;

    const-string/jumbo v3, "Unable to create GCM Scheduler"

    new-array v4, v8, [Ljava/lang/Throwable;

    aput-object v0, v4, v7

    invoke-virtual {v1, v2, v3, v4}, Landroidx/work/l;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 129
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static a(Landroid/content/Context;Landroidx/work/impl/i;)Landroidx/work/impl/d;
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 104
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 105
    new-instance v0, Landroidx/work/impl/background/systemjob/b;

    invoke-direct {v0, p0, p1}, Landroidx/work/impl/background/systemjob/b;-><init>(Landroid/content/Context;Landroidx/work/impl/i;)V

    .line 106
    const-class v1, Landroidx/work/impl/background/systemjob/SystemJobService;

    invoke-static {p0, v1, v2}, Landroidx/work/impl/utils/d;->a(Landroid/content/Context;Ljava/lang/Class;Z)V

    .line 107
    invoke-static {}, Landroidx/work/l;->a()Landroidx/work/l;

    move-result-object v1

    sget-object v2, Landroidx/work/impl/e;->a:Ljava/lang/String;

    const-string/jumbo v3, "Created SystemJobScheduler and enabled SystemJobService"

    new-array v4, v4, [Ljava/lang/Throwable;

    invoke-virtual {v1, v2, v3, v4}, Landroidx/work/l;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 116
    :cond_0
    :goto_0
    return-object v0

    .line 109
    :cond_1
    invoke-static {p0}, Landroidx/work/impl/e;->a(Landroid/content/Context;)Landroidx/work/impl/d;

    move-result-object v0

    .line 110
    if-nez v0, :cond_0

    .line 111
    new-instance v0, Landroidx/work/impl/background/systemalarm/f;

    invoke-direct {v0, p0}, Landroidx/work/impl/background/systemalarm/f;-><init>(Landroid/content/Context;)V

    .line 112
    const-class v1, Landroidx/work/impl/background/systemalarm/SystemAlarmService;

    invoke-static {p0, v1, v2}, Landroidx/work/impl/utils/d;->a(Landroid/content/Context;Ljava/lang/Class;Z)V

    .line 113
    invoke-static {}, Landroidx/work/l;->a()Landroidx/work/l;

    move-result-object v1

    sget-object v2, Landroidx/work/impl/e;->a:Ljava/lang/String;

    const-string/jumbo v3, "Created SystemAlarmScheduler"

    new-array v4, v4, [Ljava/lang/Throwable;

    invoke-virtual {v1, v2, v3, v4}, Landroidx/work/l;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static a(Landroidx/work/b;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/work/b;",
            "Landroidx/work/impl/WorkDatabase;",
            "Ljava/util/List",
            "<",
            "Landroidx/work/impl/d;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 62
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 95
    :cond_0
    return-void

    .line 66
    :cond_1
    invoke-virtual {p1}, Landroidx/work/impl/WorkDatabase;->o()Landroidx/work/impl/b/q;

    move-result-object v1

    .line 69
    invoke-virtual {p1}, Landroidx/work/impl/WorkDatabase;->g()V

    .line 72
    :try_start_0
    invoke-virtual {p0}, Landroidx/work/b;->h()I

    move-result v0

    .line 71
    invoke-interface {v1, v0}, Landroidx/work/impl/b/q;->a(I)Ljava/util/List;

    move-result-object v2

    .line 73
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 74
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 79
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/work/impl/b/p;

    .line 80
    iget-object v0, v0, Landroidx/work/impl/b/p;->a:Ljava/lang/String;

    invoke-interface {v1, v0, v4, v5}, Landroidx/work/impl/b/q;->b(Ljava/lang/String;J)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 85
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroidx/work/impl/WorkDatabase;->h()V

    .line 86
    throw v0

    .line 83
    :cond_2
    :try_start_1
    invoke-virtual {p1}, Landroidx/work/impl/WorkDatabase;->j()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    invoke-virtual {p1}, Landroidx/work/impl/WorkDatabase;->h()V

    .line 88
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 89
    const/4 v0, 0x0

    new-array v0, v0, [Landroidx/work/impl/b/p;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/work/impl/b/p;

    .line 91
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/work/impl/d;

    .line 92
    invoke-interface {v1, v0}, Landroidx/work/impl/d;->a([Landroidx/work/impl/b/p;)V

    goto :goto_1
.end method
