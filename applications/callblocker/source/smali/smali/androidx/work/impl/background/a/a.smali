.class public Landroidx/work/impl/background/a/a;
.super Ljava/lang/Object;
.source "GreedyScheduler.java"

# interfaces
.implements Landroidx/work/impl/a;
.implements Landroidx/work/impl/a/c;
.implements Landroidx/work/impl/d;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Landroidx/work/impl/i;

.field private final d:Landroidx/work/impl/a/d;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroidx/work/impl/b/p;",
            ">;"
        }
    .end annotation
.end field

.field private f:Z

.field private final g:Ljava/lang/Object;

.field private h:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const-string/jumbo v0, "GreedyScheduler"

    invoke-static {v0}, Landroidx/work/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/work/impl/background/a/a;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/impl/utils/b/a;Landroidx/work/impl/i;)V
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/work/impl/background/a/a;->e:Ljava/util/List;

    .line 70
    iput-object p1, p0, Landroidx/work/impl/background/a/a;->b:Landroid/content/Context;

    .line 71
    iput-object p3, p0, Landroidx/work/impl/background/a/a;->c:Landroidx/work/impl/i;

    .line 72
    new-instance v0, Landroidx/work/impl/a/d;

    invoke-direct {v0, p1, p2, p0}, Landroidx/work/impl/a/d;-><init>(Landroid/content/Context;Landroidx/work/impl/utils/b/a;Landroidx/work/impl/a/c;)V

    iput-object v0, p0, Landroidx/work/impl/background/a/a;->d:Landroidx/work/impl/a/d;

    .line 73
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/work/impl/background/a/a;->g:Ljava/lang/Object;

    .line 74
    return-void
.end method

.method private a()V
    .locals 1

    .prologue
    .line 207
    iget-boolean v0, p0, Landroidx/work/impl/background/a/a;->f:Z

    if-nez v0, :cond_0

    .line 208
    iget-object v0, p0, Landroidx/work/impl/background/a/a;->c:Landroidx/work/impl/i;

    invoke-virtual {v0}, Landroidx/work/impl/i;->f()Landroidx/work/impl/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/work/impl/c;->a(Landroidx/work/impl/a;)V

    .line 209
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/work/impl/background/a/a;->f:Z

    .line 211
    :cond_0
    return-void
.end method

.method private b()Ljava/lang/String;
    .locals 4

    .prologue
    .line 215
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    .line 216
    iget-object v0, p0, Landroidx/work/impl/background/a/a;->b:Landroid/content/Context;

    const-string/jumbo v2, "activity"

    .line 217
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 219
    if-eqz v0, :cond_1

    .line 220
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    .line 221
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 222
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 223
    iget v3, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v3, v1, :cond_0

    .line 224
    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 230
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 189
    iget-object v2, p0, Landroidx/work/impl/background/a/a;->g:Ljava/lang/Object;

    monitor-enter v2

    .line 193
    :try_start_0
    iget-object v1, p0, Landroidx/work/impl/background/a/a;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    .line 194
    iget-object v0, p0, Landroidx/work/impl/background/a/a;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/work/impl/b/p;

    iget-object v0, v0, Landroidx/work/impl/b/p;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 195
    invoke-static {}, Landroidx/work/l;->a()Landroidx/work/l;

    move-result-object v0

    sget-object v3, Landroidx/work/impl/background/a/a;->a:Ljava/lang/String;

    const-string/jumbo v4, "Stopping tracking for %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Throwable;

    invoke-virtual {v0, v3, v4, v5}, Landroidx/work/l;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 196
    iget-object v0, p0, Landroidx/work/impl/background/a/a;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 197
    iget-object v0, p0, Landroidx/work/impl/background/a/a;->d:Landroidx/work/impl/a/d;

    iget-object v1, p0, Landroidx/work/impl/background/a/a;->e:Ljava/util/List;

    invoke-virtual {v0, v1}, Landroidx/work/impl/a/d;->a(Ljava/lang/Iterable;)V

    .line 201
    :cond_0
    monitor-exit v2

    .line 202
    return-void

    .line 193
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 201
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 148
    iget-object v0, p0, Landroidx/work/impl/background/a/a;->h:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 150
    iget-object v0, p0, Landroidx/work/impl/background/a/a;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Landroidx/work/impl/background/a/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/impl/background/a/a;->h:Ljava/lang/Boolean;

    .line 153
    :cond_0
    iget-object v0, p0, Landroidx/work/impl/background/a/a;->h:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 154
    invoke-static {}, Landroidx/work/l;->a()Landroidx/work/l;

    move-result-object v0

    sget-object v1, Landroidx/work/impl/background/a/a;->a:Ljava/lang/String;

    const-string/jumbo v2, "Ignoring schedule request in non-main process"

    new-array v3, v4, [Ljava/lang/Throwable;

    invoke-virtual {v0, v1, v2, v3}, Landroidx/work/l;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 162
    :goto_0
    return-void

    .line 158
    :cond_1
    invoke-direct {p0}, Landroidx/work/impl/background/a/a;->a()V

    .line 159
    invoke-static {}, Landroidx/work/l;->a()Landroidx/work/l;

    move-result-object v0

    sget-object v1, Landroidx/work/impl/background/a/a;->a:Ljava/lang/String;

    const-string/jumbo v2, "Cancelling work ID %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Throwable;

    invoke-virtual {v0, v1, v2, v3}, Landroidx/work/l;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 161
    iget-object v0, p0, Landroidx/work/impl/background/a/a;->c:Landroidx/work/impl/i;

    invoke-virtual {v0, p1}, Landroidx/work/impl/i;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 185
    invoke-direct {p0, p1}, Landroidx/work/impl/background/a/a;->b(Ljava/lang/String;)V

    .line 186
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 166
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 167
    invoke-static {}, Landroidx/work/l;->a()Landroidx/work/l;

    move-result-object v2

    sget-object v3, Landroidx/work/impl/background/a/a;->a:Ljava/lang/String;

    const-string/jumbo v4, "Constraints met: Scheduling work ID %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v6

    .line 169
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Throwable;

    .line 167
    invoke-virtual {v2, v3, v4, v5}, Landroidx/work/l;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 170
    iget-object v2, p0, Landroidx/work/impl/background/a/a;->c:Landroidx/work/impl/i;

    invoke-virtual {v2, v0}, Landroidx/work/impl/i;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 172
    :cond_0
    return-void
.end method

.method public varargs a([Landroidx/work/impl/b/p;)V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v1, 0x0

    .line 89
    iget-object v0, p0, Landroidx/work/impl/background/a/a;->h:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 91
    iget-object v0, p0, Landroidx/work/impl/background/a/a;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Landroidx/work/impl/background/a/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/impl/background/a/a;->h:Ljava/lang/Boolean;

    .line 94
    :cond_0
    iget-object v0, p0, Landroidx/work/impl/background/a/a;->h:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 95
    invoke-static {}, Landroidx/work/l;->a()Landroidx/work/l;

    move-result-object v0

    sget-object v2, Landroidx/work/impl/background/a/a;->a:Ljava/lang/String;

    const-string/jumbo v3, "Ignoring schedule request in non-main process"

    new-array v1, v1, [Ljava/lang/Throwable;

    invoke-virtual {v0, v2, v3, v1}, Landroidx/work/l;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 144
    :goto_0
    return-void

    .line 99
    :cond_1
    invoke-direct {p0}, Landroidx/work/impl/background/a/a;->a()V

    .line 105
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 106
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 107
    array-length v4, p1

    move v0, v1

    :goto_1
    if-ge v0, v4, :cond_6

    aget-object v5, p1, v0

    .line 108
    iget-object v6, v5, Landroidx/work/impl/b/p;->b:Landroidx/work/s$a;

    sget-object v7, Landroidx/work/s$a;->a:Landroidx/work/s$a;

    if-ne v6, v7, :cond_2

    .line 109
    invoke-virtual {v5}, Landroidx/work/impl/b/p;->a()Z

    move-result v6

    if-nez v6, :cond_2

    iget-wide v6, v5, Landroidx/work/impl/b/p;->g:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_2

    .line 111
    invoke-virtual {v5}, Landroidx/work/impl/b/p;->b()Z

    move-result v6

    if-nez v6, :cond_2

    .line 112
    invoke-virtual {v5}, Landroidx/work/impl/b/p;->d()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 113
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x17

    if-lt v6, v7, :cond_3

    iget-object v6, v5, Landroidx/work/impl/b/p;->j:Landroidx/work/c;

    invoke-virtual {v6}, Landroidx/work/c;->c()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 115
    invoke-static {}, Landroidx/work/l;->a()Landroidx/work/l;

    move-result-object v6

    sget-object v7, Landroidx/work/impl/background/a/a;->a:Ljava/lang/String;

    const-string/jumbo v8, "Ignoring WorkSpec %s, Requires device idle."

    new-array v9, v11, [Ljava/lang/Object;

    aput-object v5, v9, v1

    .line 116
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v8, v1, [Ljava/lang/Throwable;

    .line 115
    invoke-virtual {v6, v7, v5, v8}, Landroidx/work/l;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 107
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 118
    :cond_3
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x18

    if-lt v6, v7, :cond_4

    iget-object v6, v5, Landroidx/work/impl/b/p;->j:Landroidx/work/c;

    invoke-virtual {v6}, Landroidx/work/c;->i()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 120
    invoke-static {}, Landroidx/work/l;->a()Landroidx/work/l;

    move-result-object v6

    sget-object v7, Landroidx/work/impl/background/a/a;->a:Ljava/lang/String;

    const-string/jumbo v8, "Ignoring WorkSpec %s, Requires ContentUri triggers."

    new-array v9, v11, [Ljava/lang/Object;

    aput-object v5, v9, v1

    .line 121
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v8, v1, [Ljava/lang/Throwable;

    .line 120
    invoke-virtual {v6, v7, v5, v8}, Landroidx/work/l;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    goto :goto_2

    .line 124
    :cond_4
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    iget-object v5, v5, Landroidx/work/impl/b/p;->a:Ljava/lang/String;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 128
    :cond_5
    invoke-static {}, Landroidx/work/l;->a()Landroidx/work/l;

    move-result-object v6

    sget-object v7, Landroidx/work/impl/background/a/a;->a:Ljava/lang/String;

    const-string/jumbo v8, "Starting work for %s"

    new-array v9, v11, [Ljava/lang/Object;

    iget-object v10, v5, Landroidx/work/impl/b/p;->a:Ljava/lang/String;

    aput-object v10, v9, v1

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    new-array v9, v1, [Ljava/lang/Throwable;

    invoke-virtual {v6, v7, v8, v9}, Landroidx/work/l;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 129
    iget-object v6, p0, Landroidx/work/impl/background/a/a;->c:Landroidx/work/impl/i;

    iget-object v5, v5, Landroidx/work/impl/b/p;->a:Ljava/lang/String;

    invoke-virtual {v6, v5}, Landroidx/work/impl/i;->a(Ljava/lang/String;)V

    goto :goto_2

    .line 136
    :cond_6
    iget-object v1, p0, Landroidx/work/impl/background/a/a;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 137
    :try_start_0
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 138
    invoke-static {}, Landroidx/work/l;->a()Landroidx/work/l;

    move-result-object v0

    sget-object v4, Landroidx/work/impl/background/a/a;->a:Ljava/lang/String;

    const-string/jumbo v5, "Starting tracking for [%s]"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, ","

    .line 139
    invoke-static {v8, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v7

    .line 138
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Throwable;

    invoke-virtual {v0, v4, v3, v5}, Landroidx/work/l;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 140
    iget-object v0, p0, Landroidx/work/impl/background/a/a;->e:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 141
    iget-object v0, p0, Landroidx/work/impl/background/a/a;->d:Landroidx/work/impl/a/d;

    iget-object v2, p0, Landroidx/work/impl/background/a/a;->e:Ljava/util/List;

    invoke-virtual {v0, v2}, Landroidx/work/impl/a/d;->a(Ljava/lang/Iterable;)V

    .line 143
    :cond_7
    monitor-exit v1

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 176
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 177
    invoke-static {}, Landroidx/work/l;->a()Landroidx/work/l;

    move-result-object v2

    sget-object v3, Landroidx/work/impl/background/a/a;->a:Ljava/lang/String;

    const-string/jumbo v4, "Constraints not met: Cancelling work ID %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v6

    .line 178
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Throwable;

    .line 177
    invoke-virtual {v2, v3, v4, v5}, Landroidx/work/l;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 179
    iget-object v2, p0, Landroidx/work/impl/background/a/a;->c:Landroidx/work/impl/i;

    invoke-virtual {v2, v0}, Landroidx/work/impl/i;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 181
    :cond_0
    return-void
.end method
