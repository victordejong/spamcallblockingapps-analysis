.class public final Lcom/bumptech/glide/e/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/e/d;
.implements Lcom/bumptech/glide/e/e;


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Lcom/bumptech/glide/e/e;

.field private volatile c:Lcom/bumptech/glide/e/d;

.field private volatile d:Lcom/bumptech/glide/e/d;

.field private e:Lcom/bumptech/glide/e/e$a;

.field private f:Lcom/bumptech/glide/e/e$a;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcom/bumptech/glide/e/e;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    sget-object v0, Lcom/bumptech/glide/e/e$a;->CLEARED:Lcom/bumptech/glide/e/e$a;

    iput-object v0, p0, Lcom/bumptech/glide/e/b;->e:Lcom/bumptech/glide/e/e$a;

    .line 21
    sget-object v0, Lcom/bumptech/glide/e/e$a;->CLEARED:Lcom/bumptech/glide/e/e$a;

    iput-object v0, p0, Lcom/bumptech/glide/e/b;->f:Lcom/bumptech/glide/e/e$a;

    .line 25
    iput-object p1, p0, Lcom/bumptech/glide/e/b;->a:Ljava/lang/Object;

    .line 26
    iput-object p2, p0, Lcom/bumptech/glide/e/b;->b:Lcom/bumptech/glide/e/e;

    return-void
.end method

.method private g(Lcom/bumptech/glide/e/d;)Z
    .locals 2

    .line 140
    iget-object v0, p0, Lcom/bumptech/glide/e/b;->c:Lcom/bumptech/glide/e/d;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bumptech/glide/e/b;->e:Lcom/bumptech/glide/e/e$a;

    sget-object v1, Lcom/bumptech/glide/e/e$a;->FAILED:Lcom/bumptech/glide/e/e$a;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/e/b;->d:Lcom/bumptech/glide/e/d;

    .line 141
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 36
    iget-object v0, p0, Lcom/bumptech/glide/e/b;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 37
    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/e/b;->e:Lcom/bumptech/glide/e/e$a;

    sget-object v2, Lcom/bumptech/glide/e/e$a;->RUNNING:Lcom/bumptech/glide/e/e$a;

    if-eq v1, v2, :cond_0

    .line 38
    sget-object v1, Lcom/bumptech/glide/e/e$a;->RUNNING:Lcom/bumptech/glide/e/e$a;

    iput-object v1, p0, Lcom/bumptech/glide/e/b;->e:Lcom/bumptech/glide/e/e$a;

    .line 39
    iget-object v1, p0, Lcom/bumptech/glide/e/b;->c:Lcom/bumptech/glide/e/d;

    invoke-interface {v1}, Lcom/bumptech/glide/e/d;->a()V

    .line 41
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final a(Lcom/bumptech/glide/e/d;Lcom/bumptech/glide/e/d;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/bumptech/glide/e/b;->c:Lcom/bumptech/glide/e/d;

    .line 31
    iput-object p2, p0, Lcom/bumptech/glide/e/b;->d:Lcom/bumptech/glide/e/d;

    return-void
.end method

.method public final a(Lcom/bumptech/glide/e/d;)Z
    .locals 3

    .line 95
    instance-of v0, p1, Lcom/bumptech/glide/e/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 96
    check-cast p1, Lcom/bumptech/glide/e/b;

    .line 97
    iget-object v0, p0, Lcom/bumptech/glide/e/b;->c:Lcom/bumptech/glide/e/d;

    iget-object v2, p1, Lcom/bumptech/glide/e/b;->c:Lcom/bumptech/glide/e/d;

    invoke-interface {v0, v2}, Lcom/bumptech/glide/e/d;->a(Lcom/bumptech/glide/e/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/e/b;->d:Lcom/bumptech/glide/e/d;

    iget-object p1, p1, Lcom/bumptech/glide/e/b;->d:Lcom/bumptech/glide/e/d;

    invoke-interface {v0, p1}, Lcom/bumptech/glide/e/d;->a(Lcom/bumptech/glide/e/d;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public final b()V
    .locals 3

    .line 46
    iget-object v0, p0, Lcom/bumptech/glide/e/b;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 47
    :try_start_0
    sget-object v1, Lcom/bumptech/glide/e/e$a;->CLEARED:Lcom/bumptech/glide/e/e$a;

    iput-object v1, p0, Lcom/bumptech/glide/e/b;->e:Lcom/bumptech/glide/e/e$a;

    .line 48
    iget-object v1, p0, Lcom/bumptech/glide/e/b;->c:Lcom/bumptech/glide/e/d;

    invoke-interface {v1}, Lcom/bumptech/glide/e/d;->b()V

    .line 51
    iget-object v1, p0, Lcom/bumptech/glide/e/b;->f:Lcom/bumptech/glide/e/e$a;

    sget-object v2, Lcom/bumptech/glide/e/e$a;->CLEARED:Lcom/bumptech/glide/e/e$a;

    if-eq v1, v2, :cond_0

    .line 52
    sget-object v1, Lcom/bumptech/glide/e/e$a;->CLEARED:Lcom/bumptech/glide/e/e$a;

    iput-object v1, p0, Lcom/bumptech/glide/e/b;->f:Lcom/bumptech/glide/e/e$a;

    .line 53
    iget-object v1, p0, Lcom/bumptech/glide/e/b;->d:Lcom/bumptech/glide/e/d;

    invoke-interface {v1}, Lcom/bumptech/glide/e/d;->b()V

    .line 55
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final b(Lcom/bumptech/glide/e/d;)Z
    .locals 4

    .line 104
    iget-object v0, p0, Lcom/bumptech/glide/e/b;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 1111
    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/e/b;->b:Lcom/bumptech/glide/e/e;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v1, p0}, Lcom/bumptech/glide/e/e;->b(Lcom/bumptech/glide/e/d;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_2

    .line 105
    invoke-direct {p0, p1}, Lcom/bumptech/glide/e/b;->g(Lcom/bumptech/glide/e/d;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v2, 0x1

    :cond_2
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p1

    .line 106
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final c()V
    .locals 3

    .line 60
    iget-object v0, p0, Lcom/bumptech/glide/e/b;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 61
    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/e/b;->e:Lcom/bumptech/glide/e/e$a;

    sget-object v2, Lcom/bumptech/glide/e/e$a;->RUNNING:Lcom/bumptech/glide/e/e$a;

    if-ne v1, v2, :cond_0

    .line 62
    sget-object v1, Lcom/bumptech/glide/e/e$a;->PAUSED:Lcom/bumptech/glide/e/e$a;

    iput-object v1, p0, Lcom/bumptech/glide/e/b;->e:Lcom/bumptech/glide/e/e$a;

    .line 63
    iget-object v1, p0, Lcom/bumptech/glide/e/b;->c:Lcom/bumptech/glide/e/d;

    invoke-interface {v1}, Lcom/bumptech/glide/e/d;->c()V

    .line 65
    :cond_0
    iget-object v1, p0, Lcom/bumptech/glide/e/b;->f:Lcom/bumptech/glide/e/e$a;

    sget-object v2, Lcom/bumptech/glide/e/e$a;->RUNNING:Lcom/bumptech/glide/e/e$a;

    if-ne v1, v2, :cond_1

    .line 66
    sget-object v1, Lcom/bumptech/glide/e/e$a;->PAUSED:Lcom/bumptech/glide/e/e$a;

    iput-object v1, p0, Lcom/bumptech/glide/e/b;->f:Lcom/bumptech/glide/e/e$a;

    .line 67
    iget-object v1, p0, Lcom/bumptech/glide/e/b;->d:Lcom/bumptech/glide/e/d;

    invoke-interface {v1}, Lcom/bumptech/glide/e/d;->c()V

    .line 69
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final c(Lcom/bumptech/glide/e/d;)Z
    .locals 4

    .line 116
    iget-object v0, p0, Lcom/bumptech/glide/e/b;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 1135
    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/e/b;->b:Lcom/bumptech/glide/e/e;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v1, p0}, Lcom/bumptech/glide/e/e;->c(Lcom/bumptech/glide/e/d;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_2

    .line 117
    invoke-direct {p0, p1}, Lcom/bumptech/glide/e/b;->g(Lcom/bumptech/glide/e/d;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v2, 0x1

    :cond_2
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p1

    .line 118
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final d()Z
    .locals 3

    .line 74
    iget-object v0, p0, Lcom/bumptech/glide/e/b;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 75
    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/e/b;->e:Lcom/bumptech/glide/e/e$a;

    sget-object v2, Lcom/bumptech/glide/e/e$a;->RUNNING:Lcom/bumptech/glide/e/e$a;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/bumptech/glide/e/b;->f:Lcom/bumptech/glide/e/e$a;

    sget-object v2, Lcom/bumptech/glide/e/e$a;->RUNNING:Lcom/bumptech/glide/e/e$a;

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 76
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final d(Lcom/bumptech/glide/e/d;)Z
    .locals 4

    .line 123
    iget-object v0, p0, Lcom/bumptech/glide/e/b;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2130
    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/e/b;->b:Lcom/bumptech/glide/e/e;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v1, p0}, Lcom/bumptech/glide/e/e;->d(Lcom/bumptech/glide/e/d;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_2

    .line 124
    invoke-direct {p0, p1}, Lcom/bumptech/glide/e/b;->g(Lcom/bumptech/glide/e/d;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v2, 0x1

    :cond_2
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p1

    .line 125
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final e(Lcom/bumptech/glide/e/d;)V
    .locals 2

    .line 153
    iget-object v0, p0, Lcom/bumptech/glide/e/b;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 154
    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/e/b;->c:Lcom/bumptech/glide/e/d;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 155
    sget-object p1, Lcom/bumptech/glide/e/e$a;->SUCCESS:Lcom/bumptech/glide/e/e$a;

    iput-object p1, p0, Lcom/bumptech/glide/e/b;->e:Lcom/bumptech/glide/e/e$a;

    goto :goto_0

    .line 156
    :cond_0
    iget-object v1, p0, Lcom/bumptech/glide/e/b;->d:Lcom/bumptech/glide/e/d;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 157
    sget-object p1, Lcom/bumptech/glide/e/e$a;->SUCCESS:Lcom/bumptech/glide/e/e$a;

    iput-object p1, p0, Lcom/bumptech/glide/e/b;->f:Lcom/bumptech/glide/e/e$a;

    .line 159
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/bumptech/glide/e/b;->b:Lcom/bumptech/glide/e/e;

    if-eqz p1, :cond_2

    .line 160
    invoke-interface {p1, p0}, Lcom/bumptech/glide/e/e;->e(Lcom/bumptech/glide/e/d;)V

    .line 162
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final e()Z
    .locals 3

    .line 81
    iget-object v0, p0, Lcom/bumptech/glide/e/b;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 82
    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/e/b;->e:Lcom/bumptech/glide/e/e$a;

    sget-object v2, Lcom/bumptech/glide/e/e$a;->SUCCESS:Lcom/bumptech/glide/e/e$a;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/bumptech/glide/e/b;->f:Lcom/bumptech/glide/e/e$a;

    sget-object v2, Lcom/bumptech/glide/e/e$a;->SUCCESS:Lcom/bumptech/glide/e/e$a;

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 83
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final f(Lcom/bumptech/glide/e/d;)V
    .locals 2

    .line 167
    iget-object v0, p0, Lcom/bumptech/glide/e/b;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 168
    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/e/b;->d:Lcom/bumptech/glide/e/d;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 169
    sget-object p1, Lcom/bumptech/glide/e/e$a;->FAILED:Lcom/bumptech/glide/e/e$a;

    iput-object p1, p0, Lcom/bumptech/glide/e/b;->e:Lcom/bumptech/glide/e/e$a;

    .line 170
    iget-object p1, p0, Lcom/bumptech/glide/e/b;->f:Lcom/bumptech/glide/e/e$a;

    sget-object v1, Lcom/bumptech/glide/e/e$a;->RUNNING:Lcom/bumptech/glide/e/e$a;

    if-eq p1, v1, :cond_0

    .line 171
    sget-object p1, Lcom/bumptech/glide/e/e$a;->RUNNING:Lcom/bumptech/glide/e/e$a;

    iput-object p1, p0, Lcom/bumptech/glide/e/b;->f:Lcom/bumptech/glide/e/e$a;

    .line 172
    iget-object p1, p0, Lcom/bumptech/glide/e/b;->d:Lcom/bumptech/glide/e/d;

    invoke-interface {p1}, Lcom/bumptech/glide/e/d;->a()V

    .line 174
    :cond_0
    monitor-exit v0

    return-void

    .line 177
    :cond_1
    sget-object p1, Lcom/bumptech/glide/e/e$a;->FAILED:Lcom/bumptech/glide/e/e$a;

    iput-object p1, p0, Lcom/bumptech/glide/e/b;->f:Lcom/bumptech/glide/e/e$a;

    .line 179
    iget-object p1, p0, Lcom/bumptech/glide/e/b;->b:Lcom/bumptech/glide/e/e;

    if-eqz p1, :cond_2

    .line 180
    invoke-interface {p1, p0}, Lcom/bumptech/glide/e/e;->f(Lcom/bumptech/glide/e/d;)V

    .line 182
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final f()Z
    .locals 3

    .line 88
    iget-object v0, p0, Lcom/bumptech/glide/e/b;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 89
    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/e/b;->e:Lcom/bumptech/glide/e/e$a;

    sget-object v2, Lcom/bumptech/glide/e/e$a;->CLEARED:Lcom/bumptech/glide/e/e$a;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/bumptech/glide/e/b;->f:Lcom/bumptech/glide/e/e$a;

    sget-object v2, Lcom/bumptech/glide/e/e$a;->CLEARED:Lcom/bumptech/glide/e/e$a;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 90
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final g()Z
    .locals 2

    .line 146
    iget-object v0, p0, Lcom/bumptech/glide/e/b;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 147
    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/e/b;->c:Lcom/bumptech/glide/e/d;

    invoke-interface {v1}, Lcom/bumptech/glide/e/d;->g()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/bumptech/glide/e/b;->d:Lcom/bumptech/glide/e/d;

    invoke-interface {v1}, Lcom/bumptech/glide/e/d;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 148
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final h()Lcom/bumptech/glide/e/e;
    .locals 2

    .line 187
    iget-object v0, p0, Lcom/bumptech/glide/e/b;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 188
    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/e/b;->b:Lcom/bumptech/glide/e/e;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/bumptech/glide/e/e;->h()Lcom/bumptech/glide/e/e;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, p0

    :goto_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 189
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
