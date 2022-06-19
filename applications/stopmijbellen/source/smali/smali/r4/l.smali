.class public final Lr4/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lr4/o;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lr4/o;

    invoke-direct {v0}, Lr4/o;-><init>()V

    iput-object v0, p0, Lr4/l;->a:Lr4/o;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Exception;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lr4/l;->a:Lr4/o;

    .line 2
    iget-object v1, v0, Lr4/o;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v2, v0, Lr4/o;->c:Z

    if-eqz v2, :cond_0

    monitor-exit v1

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, v0, Lr4/o;->c:Z

    iput-object p1, v0, Lr4/o;->e:Ljava/lang/Exception;

    .line 3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, v0, Lr4/o;->b:Lr4/k;

    .line 4
    invoke-virtual {p1, v0}, Lr4/k;->b(Lr4/o;)V

    const/4 p1, 0x1

    :goto_0
    return p1

    :catchall_0
    move-exception p1

    .line 5
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final b(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lr4/l;->a:Lr4/o;

    .line 2
    iget-object v1, v0, Lr4/o;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v2, v0, Lr4/o;->c:Z

    if-eqz v2, :cond_0

    monitor-exit v1

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, v0, Lr4/o;->c:Z

    iput-object p1, v0, Lr4/o;->d:Ljava/lang/Object;

    .line 3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, v0, Lr4/o;->b:Lr4/k;

    .line 4
    invoke-virtual {p1, v0}, Lr4/k;->b(Lr4/o;)V

    const/4 p1, 0x1

    :goto_0
    return p1

    :catchall_0
    move-exception p1

    .line 5
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
