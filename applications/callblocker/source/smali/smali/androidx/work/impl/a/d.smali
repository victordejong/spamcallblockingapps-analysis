.class public Landroidx/work/impl/a/d;
.super Ljava/lang/Object;
.source "WorkConstraintsTracker.java"

# interfaces
.implements Landroidx/work/impl/a/a/c$a;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Landroidx/work/impl/a/c;

.field private final c:[Landroidx/work/impl/a/a/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Landroidx/work/impl/a/a/c",
            "<*>;"
        }
    .end annotation
.end field

.field private final d:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-string/jumbo v0, "WorkConstraintsTracker"

    invoke-static {v0}, Landroidx/work/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/work/impl/a/d;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/impl/utils/b/a;Landroidx/work/impl/a/c;)V
    .locals 4

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 70
    iput-object p3, p0, Landroidx/work/impl/a/d;->b:Landroidx/work/impl/a/c;

    .line 71
    const/4 v1, 0x7

    new-array v1, v1, [Landroidx/work/impl/a/a/c;

    const/4 v2, 0x0

    new-instance v3, Landroidx/work/impl/a/a/a;

    invoke-direct {v3, v0, p2}, Landroidx/work/impl/a/a/a;-><init>(Landroid/content/Context;Landroidx/work/impl/utils/b/a;)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Landroidx/work/impl/a/a/b;

    invoke-direct {v3, v0, p2}, Landroidx/work/impl/a/a/b;-><init>(Landroid/content/Context;Landroidx/work/impl/utils/b/a;)V

    aput-object v3, v1, v2

    const/4 v2, 0x2

    new-instance v3, Landroidx/work/impl/a/a/h;

    invoke-direct {v3, v0, p2}, Landroidx/work/impl/a/a/h;-><init>(Landroid/content/Context;Landroidx/work/impl/utils/b/a;)V

    aput-object v3, v1, v2

    const/4 v2, 0x3

    new-instance v3, Landroidx/work/impl/a/a/d;

    invoke-direct {v3, v0, p2}, Landroidx/work/impl/a/a/d;-><init>(Landroid/content/Context;Landroidx/work/impl/utils/b/a;)V

    aput-object v3, v1, v2

    const/4 v2, 0x4

    new-instance v3, Landroidx/work/impl/a/a/g;

    invoke-direct {v3, v0, p2}, Landroidx/work/impl/a/a/g;-><init>(Landroid/content/Context;Landroidx/work/impl/utils/b/a;)V

    aput-object v3, v1, v2

    const/4 v2, 0x5

    new-instance v3, Landroidx/work/impl/a/a/f;

    invoke-direct {v3, v0, p2}, Landroidx/work/impl/a/a/f;-><init>(Landroid/content/Context;Landroidx/work/impl/utils/b/a;)V

    aput-object v3, v1, v2

    const/4 v2, 0x6

    new-instance v3, Landroidx/work/impl/a/a/e;

    invoke-direct {v3, v0, p2}, Landroidx/work/impl/a/a/e;-><init>(Landroid/content/Context;Landroidx/work/impl/utils/b/a;)V

    aput-object v3, v1, v2

    iput-object v1, p0, Landroidx/work/impl/a/d;->c:[Landroidx/work/impl/a/a/c;

    .line 80
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/work/impl/a/d;->d:Ljava/lang/Object;

    .line 81
    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    .line 119
    iget-object v1, p0, Landroidx/work/impl/a/d;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 120
    :try_start_0
    iget-object v2, p0, Landroidx/work/impl/a/d;->c:[Landroidx/work/impl/a/a/c;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 121
    invoke-virtual {v4}, Landroidx/work/impl/a/a/c;->a()V

    .line 120
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 123
    :cond_0
    monitor-exit v1

    .line 124
    return-void

    .line 123
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Ljava/lang/Iterable;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Landroidx/work/impl/b/p;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 100
    iget-object v2, p0, Landroidx/work/impl/a/d;->d:Ljava/lang/Object;

    monitor-enter v2

    .line 101
    :try_start_0
    iget-object v3, p0, Landroidx/work/impl/a/d;->c:[Landroidx/work/impl/a/a/c;

    array-length v4, v3

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v5, v3, v1

    .line 102
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroidx/work/impl/a/a/c;->a(Landroidx/work/impl/a/a/c$a;)V

    .line 101
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 105
    :cond_0
    iget-object v3, p0, Landroidx/work/impl/a/d;->c:[Landroidx/work/impl/a/a/c;

    array-length v4, v3

    move v1, v0

    :goto_1
    if-ge v1, v4, :cond_1

    aget-object v5, v3, v1

    .line 106
    invoke-virtual {v5, p1}, Landroidx/work/impl/a/a/c;->a(Ljava/lang/Iterable;)V

    .line 105
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 109
    :cond_1
    iget-object v1, p0, Landroidx/work/impl/a/d;->c:[Landroidx/work/impl/a/a/c;

    array-length v3, v1

    :goto_2
    if-ge v0, v3, :cond_2

    aget-object v4, v1, v0

    .line 110
    invoke-virtual {v4, p0}, Landroidx/work/impl/a/a/c;->a(Landroidx/work/impl/a/a/c$a;)V

    .line 109
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 112
    :cond_2
    monitor-exit v2

    .line 113
    return-void

    .line 112
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Ljava/util/List;)V
    .locals 9
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
    .line 148
    iget-object v1, p0, Landroidx/work/impl/a/d;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 149
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 150
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 151
    invoke-virtual {p0, v0}, Landroidx/work/impl/a/d;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 152
    invoke-static {}, Landroidx/work/l;->a()Landroidx/work/l;

    move-result-object v4

    sget-object v5, Landroidx/work/impl/a/d;->a:Ljava/lang/String;

    const-string/jumbo v6, "Constraints met for %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Throwable;

    invoke-virtual {v4, v5, v6, v7}, Landroidx/work/l;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 153
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 159
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 156
    :cond_1
    :try_start_1
    iget-object v0, p0, Landroidx/work/impl/a/d;->b:Landroidx/work/impl/a/c;

    if-eqz v0, :cond_2

    .line 157
    iget-object v0, p0, Landroidx/work/impl/a/d;->b:Landroidx/work/impl/a/c;

    invoke-interface {v0, v2}, Landroidx/work/impl/a/c;->a(Ljava/util/List;)V

    .line 159
    :cond_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 160
    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 134
    iget-object v3, p0, Landroidx/work/impl/a/d;->d:Ljava/lang/Object;

    monitor-enter v3

    .line 135
    :try_start_0
    iget-object v4, p0, Landroidx/work/impl/a/d;->c:[Landroidx/work/impl/a/a/c;

    array-length v5, v4

    move v2, v0

    :goto_0
    if-ge v2, v5, :cond_1

    aget-object v6, v4, v2

    .line 136
    invoke-virtual {v6, p1}, Landroidx/work/impl/a/a/c;->a(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 137
    invoke-static {}, Landroidx/work/l;->a()Landroidx/work/l;

    move-result-object v1

    sget-object v2, Landroidx/work/impl/a/d;->a:Ljava/lang/String;

    const-string/jumbo v4, "Work %s constrained by %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v5, v7

    const/4 v7, 0x1

    .line 138
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    .line 137
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Throwable;

    invoke-virtual {v1, v2, v4, v5}, Landroidx/work/l;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 139
    monitor-exit v3

    .line 142
    :goto_1
    return v0

    .line 135
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 142
    :cond_1
    monitor-exit v3

    move v0, v1

    goto :goto_1

    .line 143
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(Ljava/util/List;)V
    .locals 2
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
    .line 164
    iget-object v1, p0, Landroidx/work/impl/a/d;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 165
    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/a/d;->b:Landroidx/work/impl/a/c;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Landroidx/work/impl/a/d;->b:Landroidx/work/impl/a/c;

    invoke-interface {v0, p1}, Landroidx/work/impl/a/c;->b(Ljava/util/List;)V

    .line 168
    :cond_0
    monitor-exit v1

    .line 169
    return-void

    .line 168
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
