.class public abstract Landroidx/work/impl/WorkDatabase;
.super Landroidx/room/h;
.source "SourceFile"


# static fields
.field private static final i:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 94
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Landroidx/work/impl/WorkDatabase;->i:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 80
    invoke-direct {p0}, Landroidx/room/h;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/util/concurrent/Executor;Z)Landroidx/work/impl/WorkDatabase;
    .locals 5

    .line 112
    const-class v0, Landroidx/work/impl/WorkDatabase;

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    .line 1073
    new-instance p2, Landroidx/room/h$a;

    const/4 v2, 0x0

    invoke-direct {p2, p0, v0, v2}, Landroidx/room/h$a;-><init>(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)V

    .line 1687
    iput-boolean v1, p2, Landroidx/room/h$a;->d:Z

    goto :goto_0

    .line 116
    :cond_0
    invoke-static {}, Landroidx/work/impl/i;->a()Ljava/lang/String;

    move-result-object p2

    .line 2051
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    .line 2056
    new-instance v2, Landroidx/room/h$a;

    invoke-direct {v2, p0, v0, p2}, Landroidx/room/h$a;-><init>(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)V

    .line 118
    new-instance p2, Landroidx/work/impl/WorkDatabase$1;

    invoke-direct {p2, p0}, Landroidx/work/impl/WorkDatabase$1;-><init>(Landroid/content/Context;)V

    .line 2636
    iput-object p2, v2, Landroidx/room/h$a;->c:Landroidx/sqlite/db/SupportSQLiteOpenHelper$b;

    move-object p2, v2

    .line 2733
    :goto_0
    iput-object p1, p2, Landroidx/room/h$a;->b:Ljava/util/concurrent/Executor;

    .line 3158
    new-instance p1, Landroidx/work/impl/WorkDatabase$2;

    invoke-direct {p1}, Landroidx/work/impl/WorkDatabase$2;-><init>()V

    .line 3869
    iget-object v0, p2, Landroidx/room/h$a;->a:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 3870
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p2, Landroidx/room/h$a;->a:Ljava/util/ArrayList;

    .line 3872
    :cond_1
    iget-object v0, p2, Landroidx/room/h$a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array p1, v1, [Landroidx/room/a/a;

    .line 136
    sget-object v0, Landroidx/work/impl/h;->a:Landroidx/room/a/a;

    const/4 v2, 0x0

    aput-object v0, p1, v2

    .line 137
    invoke-virtual {p2, p1}, Landroidx/room/h$a;->a([Landroidx/room/a/a;)Landroidx/room/h$a;

    move-result-object p1

    new-array p2, v1, [Landroidx/room/a/a;

    new-instance v0, Landroidx/work/impl/h$a;

    const/4 v3, 0x2

    const/4 v4, 0x3

    invoke-direct {v0, p0, v3, v4}, Landroidx/work/impl/h$a;-><init>(Landroid/content/Context;II)V

    aput-object v0, p2, v2

    .line 138
    invoke-virtual {p1, p2}, Landroidx/room/h$a;->a([Landroidx/room/a/a;)Landroidx/room/h$a;

    move-result-object p1

    new-array p2, v1, [Landroidx/room/a/a;

    sget-object v0, Landroidx/work/impl/h;->b:Landroidx/room/a/a;

    aput-object v0, p2, v2

    .line 141
    invoke-virtual {p1, p2}, Landroidx/room/h$a;->a([Landroidx/room/a/a;)Landroidx/room/h$a;

    move-result-object p1

    new-array p2, v1, [Landroidx/room/a/a;

    sget-object v0, Landroidx/work/impl/h;->c:Landroidx/room/a/a;

    aput-object v0, p2, v2

    .line 142
    invoke-virtual {p1, p2}, Landroidx/room/h$a;->a([Landroidx/room/a/a;)Landroidx/room/h$a;

    move-result-object p1

    new-array p2, v1, [Landroidx/room/a/a;

    new-instance v0, Landroidx/work/impl/h$a;

    const/4 v3, 0x5

    const/4 v4, 0x6

    invoke-direct {v0, p0, v3, v4}, Landroidx/work/impl/h$a;-><init>(Landroid/content/Context;II)V

    aput-object v0, p2, v2

    .line 143
    invoke-virtual {p1, p2}, Landroidx/room/h$a;->a([Landroidx/room/a/a;)Landroidx/room/h$a;

    move-result-object p1

    new-array p2, v1, [Landroidx/room/a/a;

    sget-object v0, Landroidx/work/impl/h;->d:Landroidx/room/a/a;

    aput-object v0, p2, v2

    .line 146
    invoke-virtual {p1, p2}, Landroidx/room/h$a;->a([Landroidx/room/a/a;)Landroidx/room/h$a;

    move-result-object p1

    new-array p2, v1, [Landroidx/room/a/a;

    sget-object v0, Landroidx/work/impl/h;->e:Landroidx/room/a/a;

    aput-object v0, p2, v2

    .line 147
    invoke-virtual {p1, p2}, Landroidx/room/h$a;->a([Landroidx/room/a/a;)Landroidx/room/h$a;

    move-result-object p1

    new-array p2, v1, [Landroidx/room/a/a;

    sget-object v0, Landroidx/work/impl/h;->f:Landroidx/room/a/a;

    aput-object v0, p2, v2

    .line 148
    invoke-virtual {p1, p2}, Landroidx/room/h$a;->a([Landroidx/room/a/a;)Landroidx/room/h$a;

    move-result-object p1

    new-array p2, v1, [Landroidx/room/a/a;

    new-instance v0, Landroidx/work/impl/h$b;

    invoke-direct {v0, p0}, Landroidx/work/impl/h$b;-><init>(Landroid/content/Context;)V

    aput-object v0, p2, v2

    .line 149
    invoke-virtual {p1, p2}, Landroidx/room/h$a;->a([Landroidx/room/a/a;)Landroidx/room/h$a;

    move-result-object p1

    new-array p2, v1, [Landroidx/room/a/a;

    new-instance v0, Landroidx/work/impl/h$a;

    const/16 v3, 0xa

    const/16 v4, 0xb

    invoke-direct {v0, p0, v3, v4}, Landroidx/work/impl/h$a;-><init>(Landroid/content/Context;II)V

    aput-object v0, p2, v2

    .line 150
    invoke-virtual {p1, p2}, Landroidx/room/h$a;->a([Landroidx/room/a/a;)Landroidx/room/h$a;

    move-result-object p0

    .line 4809
    iput-boolean v2, p0, Landroidx/room/h$a;->e:Z

    .line 4810
    iput-boolean v1, p0, Landroidx/room/h$a;->f:Z

    .line 154
    invoke-virtual {p0}, Landroidx/room/h$a;->a()Landroidx/room/h;

    move-result-object p0

    check-cast p0, Landroidx/work/impl/WorkDatabase;

    return-object p0

    .line 2052
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot build a database with null or empty name. If you are trying to create an in memory database, use Room.inMemoryDatabaseBuilder"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static i()Ljava/lang/String;
    .locals 5

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DELETE FROM workspec WHERE state IN (2, 3, 5) AND (period_start_time + minimum_retention_duration) < "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 5182
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-wide v3, Landroidx/work/impl/WorkDatabase;->i:J

    sub-long/2addr v1, v3

    .line 178
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " AND (SELECT COUNT(*)=0 FROM dependency WHERE     prerequisite_id=id AND     work_spec_id NOT IN         (SELECT id FROM workspec WHERE state IN (2, 3, 5)))"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract j()Landroidx/work/impl/model/WorkSpecDao;
.end method

.method public abstract k()Landroidx/work/impl/model/DependencyDao;
.end method

.method public abstract l()Landroidx/work/impl/model/WorkTagDao;
.end method

.method public abstract m()Landroidx/work/impl/model/SystemIdInfoDao;
.end method

.method public abstract n()Landroidx/work/impl/model/WorkNameDao;
.end method

.method public abstract o()Landroidx/work/impl/model/WorkProgressDao;
.end method

.method public abstract p()Landroidx/work/impl/model/PreferenceDao;
.end method
