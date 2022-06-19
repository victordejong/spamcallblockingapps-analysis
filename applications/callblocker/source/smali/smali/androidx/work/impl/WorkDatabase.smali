.class public abstract Landroidx/work/impl/WorkDatabase;
.super Landroidx/room/i;
.source "WorkDatabase.java"


# static fields
.field private static final d:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 93
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x7

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Landroidx/work/impl/WorkDatabase;->d:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Landroidx/room/i;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/util/concurrent/Executor;Z)Landroidx/work/impl/WorkDatabase;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 111
    if-eqz p2, :cond_0

    .line 112
    const-class v0, Landroidx/work/impl/WorkDatabase;

    invoke-static {p0, v0}, Landroidx/room/h;->a(Landroid/content/Context;Ljava/lang/Class;)Landroidx/room/i$a;

    move-result-object v0

    .line 113
    invoke-virtual {v0}, Landroidx/room/i$a;->a()Landroidx/room/i$a;

    move-result-object v0

    .line 134
    :goto_0
    invoke-virtual {v0, p1}, Landroidx/room/i$a;->a(Ljava/util/concurrent/Executor;)Landroidx/room/i$a;

    move-result-object v0

    .line 135
    invoke-static {}, Landroidx/work/impl/WorkDatabase;->l()Landroidx/room/i$b;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/room/i$a;->a(Landroidx/room/i$b;)Landroidx/room/i$a;

    move-result-object v0

    new-array v1, v6, [Landroidx/room/a/a;

    sget-object v2, Landroidx/work/impl/g;->a:Landroidx/room/a/a;

    aput-object v2, v1, v5

    .line 136
    invoke-virtual {v0, v1}, Landroidx/room/i$a;->a([Landroidx/room/a/a;)Landroidx/room/i$a;

    move-result-object v0

    new-array v1, v6, [Landroidx/room/a/a;

    new-instance v2, Landroidx/work/impl/g$a;

    const/4 v3, 0x2

    const/4 v4, 0x3

    invoke-direct {v2, p0, v3, v4}, Landroidx/work/impl/g$a;-><init>(Landroid/content/Context;II)V

    aput-object v2, v1, v5

    .line 137
    invoke-virtual {v0, v1}, Landroidx/room/i$a;->a([Landroidx/room/a/a;)Landroidx/room/i$a;

    move-result-object v0

    new-array v1, v6, [Landroidx/room/a/a;

    sget-object v2, Landroidx/work/impl/g;->b:Landroidx/room/a/a;

    aput-object v2, v1, v5

    .line 140
    invoke-virtual {v0, v1}, Landroidx/room/i$a;->a([Landroidx/room/a/a;)Landroidx/room/i$a;

    move-result-object v0

    new-array v1, v6, [Landroidx/room/a/a;

    sget-object v2, Landroidx/work/impl/g;->c:Landroidx/room/a/a;

    aput-object v2, v1, v5

    .line 141
    invoke-virtual {v0, v1}, Landroidx/room/i$a;->a([Landroidx/room/a/a;)Landroidx/room/i$a;

    move-result-object v0

    new-array v1, v6, [Landroidx/room/a/a;

    new-instance v2, Landroidx/work/impl/g$a;

    const/4 v3, 0x5

    const/4 v4, 0x6

    invoke-direct {v2, p0, v3, v4}, Landroidx/work/impl/g$a;-><init>(Landroid/content/Context;II)V

    aput-object v2, v1, v5

    .line 142
    invoke-virtual {v0, v1}, Landroidx/room/i$a;->a([Landroidx/room/a/a;)Landroidx/room/i$a;

    move-result-object v0

    new-array v1, v6, [Landroidx/room/a/a;

    sget-object v2, Landroidx/work/impl/g;->d:Landroidx/room/a/a;

    aput-object v2, v1, v5

    .line 145
    invoke-virtual {v0, v1}, Landroidx/room/i$a;->a([Landroidx/room/a/a;)Landroidx/room/i$a;

    move-result-object v0

    new-array v1, v6, [Landroidx/room/a/a;

    sget-object v2, Landroidx/work/impl/g;->e:Landroidx/room/a/a;

    aput-object v2, v1, v5

    .line 146
    invoke-virtual {v0, v1}, Landroidx/room/i$a;->a([Landroidx/room/a/a;)Landroidx/room/i$a;

    move-result-object v0

    new-array v1, v6, [Landroidx/room/a/a;

    sget-object v2, Landroidx/work/impl/g;->f:Landroidx/room/a/a;

    aput-object v2, v1, v5

    .line 147
    invoke-virtual {v0, v1}, Landroidx/room/i$a;->a([Landroidx/room/a/a;)Landroidx/room/i$a;

    move-result-object v0

    new-array v1, v6, [Landroidx/room/a/a;

    new-instance v2, Landroidx/work/impl/g$b;

    invoke-direct {v2, p0}, Landroidx/work/impl/g$b;-><init>(Landroid/content/Context;)V

    aput-object v2, v1, v5

    .line 148
    invoke-virtual {v0, v1}, Landroidx/room/i$a;->a([Landroidx/room/a/a;)Landroidx/room/i$a;

    move-result-object v0

    new-array v1, v6, [Landroidx/room/a/a;

    new-instance v2, Landroidx/work/impl/g$a;

    const/16 v3, 0xa

    const/16 v4, 0xb

    invoke-direct {v2, p0, v3, v4}, Landroidx/work/impl/g$a;-><init>(Landroid/content/Context;II)V

    aput-object v2, v1, v5

    .line 149
    invoke-virtual {v0, v1}, Landroidx/room/i$a;->a([Landroidx/room/a/a;)Landroidx/room/i$a;

    move-result-object v0

    .line 152
    invoke-virtual {v0}, Landroidx/room/i$a;->b()Landroidx/room/i$a;

    move-result-object v0

    .line 153
    invoke-virtual {v0}, Landroidx/room/i$a;->c()Landroidx/room/i;

    move-result-object v0

    check-cast v0, Landroidx/work/impl/WorkDatabase;

    .line 134
    return-object v0

    .line 115
    :cond_0
    invoke-static {}, Landroidx/work/impl/h;->a()Ljava/lang/String;

    move-result-object v0

    .line 116
    const-class v1, Landroidx/work/impl/WorkDatabase;

    invoke-static {p0, v1, v0}, Landroidx/room/h;->a(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroidx/room/i$a;

    move-result-object v0

    .line 117
    new-instance v1, Landroidx/work/impl/WorkDatabase$1;

    invoke-direct {v1, p0}, Landroidx/work/impl/WorkDatabase$1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/room/i$a;->a(Landroidx/i/a/c$c;)Landroidx/room/i$a;

    goto/16 :goto_0
.end method

.method static l()Landroidx/room/i$b;
    .locals 1

    .prologue
    .line 157
    new-instance v0, Landroidx/work/impl/WorkDatabase$2;

    invoke-direct {v0}, Landroidx/work/impl/WorkDatabase$2;-><init>()V

    return-object v0
.end method

.method static m()Ljava/lang/String;
    .locals 4

    .prologue
    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "DELETE FROM workspec WHERE state IN (2, 3, 5) AND (period_start_time + minimum_retention_duration) < "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroidx/work/impl/WorkDatabase;->n()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " AND (SELECT COUNT(*)=0 FROM dependency WHERE     prerequisite_id=id AND     work_spec_id NOT IN         (SELECT id FROM workspec WHERE state IN (2, 3, 5)))"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static n()J
    .locals 4

    .prologue
    .line 181
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Landroidx/work/impl/WorkDatabase;->d:J

    sub-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public abstract o()Landroidx/work/impl/b/q;
.end method

.method public abstract p()Landroidx/work/impl/b/b;
.end method

.method public abstract q()Landroidx/work/impl/b/t;
.end method

.method public abstract r()Landroidx/work/impl/b/h;
.end method

.method public abstract s()Landroidx/work/impl/b/k;
.end method

.method public abstract t()Landroidx/work/impl/b/n;
.end method

.method public abstract u()Landroidx/work/impl/b/e;
.end method
