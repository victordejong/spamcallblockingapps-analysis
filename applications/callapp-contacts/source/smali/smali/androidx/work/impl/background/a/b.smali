.class public Landroidx/work/impl/background/a/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/work/impl/a/c;
.implements Landroidx/work/impl/b;
.implements Landroidx/work/impl/e;


# static fields
.field private static final b:Ljava/lang/String;


# instance fields
.field a:Ljava/lang/Boolean;

.field private final c:Landroid/content/Context;

.field private final d:Landroidx/work/impl/j;

.field private final e:Landroidx/work/impl/a/d;

.field private final f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroidx/work/impl/model/WorkSpec;",
            ">;"
        }
    .end annotation
.end field

.field private g:Landroidx/work/impl/background/a/a;

.field private h:Z

.field private final i:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "GreedyScheduler"

    .line 53
    invoke-static {v0}, Landroidx/work/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/work/impl/background/a/b;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/Configuration;Landroidx/work/impl/utils/b/a;Landroidx/work/impl/j;)V
    .locals 1

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroidx/work/impl/background/a/b;->f:Ljava/util/Set;

    .line 71
    iput-object p1, p0, Landroidx/work/impl/background/a/b;->c:Landroid/content/Context;

    .line 72
    iput-object p4, p0, Landroidx/work/impl/background/a/b;->d:Landroidx/work/impl/j;

    .line 73
    new-instance p4, Landroidx/work/impl/a/d;

    invoke-direct {p4, p1, p3, p0}, Landroidx/work/impl/a/d;-><init>(Landroid/content/Context;Landroidx/work/impl/utils/b/a;Landroidx/work/impl/a/c;)V

    iput-object p4, p0, Landroidx/work/impl/background/a/b;->e:Landroidx/work/impl/a/d;

    .line 74
    new-instance p1, Landroidx/work/impl/background/a/a;

    invoke-virtual {p2}, Landroidx/work/Configuration;->getRunnableScheduler()Landroidx/work/r;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Landroidx/work/impl/background/a/a;-><init>(Landroidx/work/impl/background/a/b;Landroidx/work/r;)V

    iput-object p1, p0, Landroidx/work/impl/background/a/b;->g:Landroidx/work/impl/background/a/a;

    .line 75
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/background/a/b;->i:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/impl/j;Landroidx/work/impl/a/d;)V
    .locals 1

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroidx/work/impl/background/a/b;->f:Ljava/util/Set;

    .line 83
    iput-object p1, p0, Landroidx/work/impl/background/a/b;->c:Landroid/content/Context;

    .line 84
    iput-object p2, p0, Landroidx/work/impl/background/a/b;->d:Landroidx/work/impl/j;

    .line 85
    iput-object p3, p0, Landroidx/work/impl/background/a/b;->e:Landroidx/work/impl/a/d;

    .line 86
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/background/a/b;->i:Ljava/lang/Object;

    return-void
.end method

.method private b()V
    .locals 2

    .line 163
    iget-object v0, p0, Landroidx/work/impl/background/a/b;->d:Landroidx/work/impl/j;

    .line 2327
    iget-object v0, v0, Landroidx/work/impl/j;->b:Landroidx/work/Configuration;

    .line 164
    iget-object v1, p0, Landroidx/work/impl/background/a/b;->c:Landroid/content/Context;

    invoke-static {v1, v0}, Landroidx/work/impl/utils/f;->a(Landroid/content/Context;Landroidx/work/Configuration;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/impl/background/a/b;->a:Ljava/lang/Boolean;

    return-void
.end method

.method private c()V
    .locals 1

    .line 232
    iget-boolean v0, p0, Landroidx/work/impl/background/a/b;->h:Z

    if-nez v0, :cond_0

    .line 233
    iget-object v0, p0, Landroidx/work/impl/background/a/b;->d:Landroidx/work/impl/j;

    .line 4346
    iget-object v0, v0, Landroidx/work/impl/j;->f:Landroidx/work/impl/d;

    .line 233
    invoke-virtual {v0, p0}, Landroidx/work/impl/d;->a(Landroidx/work/impl/b;)V

    const/4 v0, 0x1

    .line 234
    iput-boolean v0, p0, Landroidx/work/impl/background/a/b;->h:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 2

    .line 169
    iget-object v0, p0, Landroidx/work/impl/background/a/b;->a:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 170
    invoke-direct {p0}, Landroidx/work/impl/background/a/b;->b()V

    .line 173
    :cond_0
    iget-object v0, p0, Landroidx/work/impl/background/a/b;->a:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 174
    invoke-static {}, Landroidx/work/k;->a()Landroidx/work/k;

    return-void

    .line 178
    :cond_1
    invoke-direct {p0}, Landroidx/work/impl/background/a/b;->c()V

    .line 179
    invoke-static {}, Landroidx/work/k;->a()Landroidx/work/k;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "Cancelling work ID %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 180
    iget-object v0, p0, Landroidx/work/impl/background/a/b;->g:Landroidx/work/impl/background/a/a;

    if-eqz v0, :cond_2

    .line 3091
    iget-object v1, v0, Landroidx/work/impl/background/a/a;->d:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    if-eqz v1, :cond_2

    .line 3093
    iget-object v0, v0, Landroidx/work/impl/background/a/a;->c:Landroidx/work/r;

    invoke-interface {v0, v1}, Landroidx/work/r;->a(Ljava/lang/Runnable;)V

    .line 184
    :cond_2
    iget-object v0, p0, Landroidx/work/impl/background/a/b;->d:Landroidx/work/impl/j;

    invoke-virtual {v0, p1}, Landroidx/work/impl/j;->c(Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Z)V
    .locals 4

    .line 4214
    iget-object p2, p0, Landroidx/work/impl/background/a/b;->i:Ljava/lang/Object;

    monitor-enter p2

    .line 4218
    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/background/a/b;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/work/impl/model/WorkSpec;

    .line 4219
    iget-object v2, v1, Landroidx/work/impl/model/WorkSpec;->id:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4220
    invoke-static {}, Landroidx/work/k;->a()Landroidx/work/k;

    const-string v0, "Stopping tracking for %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 4221
    iget-object p1, p0, Landroidx/work/impl/background/a/b;->f:Ljava/util/Set;

    invoke-interface {p1, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 4222
    iget-object p1, p0, Landroidx/work/impl/background/a/b;->e:Landroidx/work/impl/a/d;

    iget-object v0, p0, Landroidx/work/impl/background/a/b;->f:Ljava/util/Set;

    invoke-virtual {p1, v0}, Landroidx/work/impl/a/d;->a(Ljava/lang/Iterable;)V

    .line 4226
    :cond_1
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 189
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 190
    invoke-static {}, Landroidx/work/k;->a()Landroidx/work/k;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v2, "Constraints met: Scheduling work ID %s"

    .line 192
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 193
    iget-object v1, p0, Landroidx/work/impl/background/a/b;->d:Landroidx/work/impl/j;

    const/4 v2, 0x0

    .line 3639
    invoke-virtual {v1, v0, v2}, Landroidx/work/impl/j;->a(Ljava/lang/String;Landroidx/work/WorkerParameters$a;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final varargs a([Landroidx/work/impl/model/WorkSpec;)V
    .locals 13

    .line 101
    iget-object v0, p0, Landroidx/work/impl/background/a/b;->a:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 102
    invoke-direct {p0}, Landroidx/work/impl/background/a/b;->b()V

    .line 105
    :cond_0
    iget-object v0, p0, Landroidx/work/impl/background/a/b;->a:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 106
    invoke-static {}, Landroidx/work/k;->a()Landroidx/work/k;

    return-void

    .line 110
    :cond_1
    invoke-direct {p0}, Landroidx/work/impl/background/a/b;->c()V

    .line 116
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 117
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 119
    array-length v2, p1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x1

    if-ge v4, v2, :cond_7

    aget-object v6, p1, v4

    .line 120
    invoke-virtual {v6}, Landroidx/work/impl/model/WorkSpec;->calculateNextRunTime()J

    move-result-wide v7

    .line 121
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 122
    iget-object v11, v6, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/t$a;

    sget-object v12, Landroidx/work/t$a;->ENQUEUED:Landroidx/work/t$a;

    if-ne v11, v12, :cond_6

    cmp-long v11, v9, v7

    if-gez v11, :cond_2

    .line 125
    iget-object v5, p0, Landroidx/work/impl/background/a/b;->g:Landroidx/work/impl/background/a/a;

    if-eqz v5, :cond_6

    .line 126
    invoke-virtual {v5, v6}, Landroidx/work/impl/background/a/a;->a(Landroidx/work/impl/model/WorkSpec;)V

    goto :goto_1

    .line 128
    :cond_2
    invoke-virtual {v6}, Landroidx/work/impl/model/WorkSpec;->hasConstraints()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 129
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x17

    if-lt v7, v8, :cond_3

    iget-object v7, v6, Landroidx/work/impl/model/WorkSpec;->constraints:Landroidx/work/b;

    .line 1138
    iget-boolean v7, v7, Landroidx/work/b;->d:Z

    if-eqz v7, :cond_3

    .line 131
    invoke-static {}, Landroidx/work/k;->a()Landroidx/work/k;

    const-string v7, "Ignoring WorkSpec %s, Requires device idle."

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v6, v5, v3

    .line 132
    invoke-static {v7, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_1

    .line 134
    :cond_3
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x18

    if-lt v7, v8, :cond_4

    iget-object v7, v6, Landroidx/work/impl/model/WorkSpec;->constraints:Landroidx/work/b;

    invoke-virtual {v7}, Landroidx/work/b;->a()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 136
    invoke-static {}, Landroidx/work/k;->a()Landroidx/work/k;

    const-string v7, "Ignoring WorkSpec %s, Requires ContentUri triggers."

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v6, v5, v3

    .line 137
    invoke-static {v7, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_1

    .line 140
    :cond_4
    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 141
    iget-object v5, v6, Landroidx/work/impl/model/WorkSpec;->id:Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 144
    :cond_5
    invoke-static {}, Landroidx/work/k;->a()Landroidx/work/k;

    const-string v7, "Starting work for %s"

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v8, v6, Landroidx/work/impl/model/WorkSpec;->id:Ljava/lang/String;

    aput-object v8, v5, v3

    invoke-static {v7, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 145
    iget-object v5, p0, Landroidx/work/impl/background/a/b;->d:Landroidx/work/impl/j;

    iget-object v6, v6, Landroidx/work/impl/model/WorkSpec;->id:Ljava/lang/String;

    const/4 v7, 0x0

    .line 1639
    invoke-virtual {v5, v6, v7}, Landroidx/work/impl/j;->a(Ljava/lang/String;Landroidx/work/WorkerParameters$a;)V

    :cond_6
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 152
    :cond_7
    iget-object p1, p0, Landroidx/work/impl/background/a/b;->i:Ljava/lang/Object;

    monitor-enter p1

    .line 153
    :try_start_0
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    .line 154
    invoke-static {}, Landroidx/work/k;->a()Landroidx/work/k;

    const-string v2, "Starting tracking for [%s]"

    new-array v4, v5, [Ljava/lang/Object;

    const-string v5, ","

    .line 155
    invoke-static {v5, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v3

    .line 154
    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 156
    iget-object v1, p0, Landroidx/work/impl/background/a/b;->f:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 157
    iget-object v0, p0, Landroidx/work/impl/background/a/b;->e:Landroidx/work/impl/a/d;

    iget-object v1, p0, Landroidx/work/impl/background/a/b;->f:Ljava/util/Set;

    invoke-virtual {v0, v1}, Landroidx/work/impl/a/d;->a(Ljava/lang/Iterable;)V

    .line 159
    :cond_8
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final b(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 199
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 200
    invoke-static {}, Landroidx/work/k;->a()Landroidx/work/k;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v2, "Constraints not met: Cancelling work ID %s"

    .line 201
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 202
    iget-object v1, p0, Landroidx/work/impl/background/a/b;->d:Landroidx/work/impl/j;

    invoke-virtual {v1, v0}, Landroidx/work/impl/j;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method
