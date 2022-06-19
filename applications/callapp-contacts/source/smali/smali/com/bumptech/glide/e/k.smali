.class public final Lcom/bumptech/glide/e/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/e/d;
.implements Lcom/bumptech/glide/e/e;


# instance fields
.field private final a:Lcom/bumptech/glide/e/e;

.field private final b:Ljava/lang/Object;

.field private volatile c:Lcom/bumptech/glide/e/d;

.field private volatile d:Lcom/bumptech/glide/e/d;

.field private e:Lcom/bumptech/glide/e/e$a;

.field private f:Lcom/bumptech/glide/e/e$a;

.field private g:Z


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcom/bumptech/glide/e/e;)V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    sget-object v0, Lcom/bumptech/glide/e/e$a;->CLEARED:Lcom/bumptech/glide/e/e$a;

    iput-object v0, p0, Lcom/bumptech/glide/e/k;->e:Lcom/bumptech/glide/e/e$a;

    .line 20
    sget-object v0, Lcom/bumptech/glide/e/e$a;->CLEARED:Lcom/bumptech/glide/e/e$a;

    iput-object v0, p0, Lcom/bumptech/glide/e/k;->f:Lcom/bumptech/glide/e/e$a;

    .line 27
    iput-object p1, p0, Lcom/bumptech/glide/e/k;->b:Ljava/lang/Object;

    .line 28
    iput-object p2, p0, Lcom/bumptech/glide/e/k;->a:Lcom/bumptech/glide/e/e;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 136
    iget-object v0, p0, Lcom/bumptech/glide/e/k;->b:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 137
    :try_start_0
    iput-boolean v1, p0, Lcom/bumptech/glide/e/k;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x0

    .line 141
    :try_start_1
    iget-object v2, p0, Lcom/bumptech/glide/e/k;->e:Lcom/bumptech/glide/e/e$a;

    sget-object v3, Lcom/bumptech/glide/e/e$a;->SUCCESS:Lcom/bumptech/glide/e/e$a;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/bumptech/glide/e/k;->f:Lcom/bumptech/glide/e/e$a;

    sget-object v3, Lcom/bumptech/glide/e/e$a;->RUNNING:Lcom/bumptech/glide/e/e$a;

    if-eq v2, v3, :cond_0

    .line 142
    sget-object v2, Lcom/bumptech/glide/e/e$a;->RUNNING:Lcom/bumptech/glide/e/e$a;

    iput-object v2, p0, Lcom/bumptech/glide/e/k;->f:Lcom/bumptech/glide/e/e$a;

    .line 143
    iget-object v2, p0, Lcom/bumptech/glide/e/k;->d:Lcom/bumptech/glide/e/d;

    invoke-interface {v2}, Lcom/bumptech/glide/e/d;->a()V

    .line 145
    :cond_0
    iget-boolean v2, p0, Lcom/bumptech/glide/e/k;->g:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/bumptech/glide/e/k;->e:Lcom/bumptech/glide/e/e$a;

    sget-object v3, Lcom/bumptech/glide/e/e$a;->RUNNING:Lcom/bumptech/glide/e/e$a;

    if-eq v2, v3, :cond_1

    .line 146
    sget-object v2, Lcom/bumptech/glide/e/e$a;->RUNNING:Lcom/bumptech/glide/e/e$a;

    iput-object v2, p0, Lcom/bumptech/glide/e/k;->e:Lcom/bumptech/glide/e/e$a;

    .line 147
    iget-object v2, p0, Lcom/bumptech/glide/e/k;->c:Lcom/bumptech/glide/e/d;

    invoke-interface {v2}, Lcom/bumptech/glide/e/d;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 150
    :cond_1
    :try_start_2
    iput-boolean v1, p0, Lcom/bumptech/glide/e/k;->g:Z

    .line 152
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v2

    .line 150
    iput-boolean v1, p0, Lcom/bumptech/glide/e/k;->g:Z

    throw v2

    :catchall_1
    move-exception v1

    .line 152
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public final a(Lcom/bumptech/glide/e/d;Lcom/bumptech/glide/e/d;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/bumptech/glide/e/k;->c:Lcom/bumptech/glide/e/d;

    .line 33
    iput-object p2, p0, Lcom/bumptech/glide/e/k;->d:Lcom/bumptech/glide/e/d;

    return-void
.end method

.method public final a(Lcom/bumptech/glide/e/d;)Z
    .locals 3

    .line 203
    instance-of v0, p1, Lcom/bumptech/glide/e/k;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 204
    check-cast p1, Lcom/bumptech/glide/e/k;

    .line 205
    iget-object v0, p0, Lcom/bumptech/glide/e/k;->c:Lcom/bumptech/glide/e/d;

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/bumptech/glide/e/k;->c:Lcom/bumptech/glide/e/d;

    if-nez v0, :cond_2

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/e/k;->c:Lcom/bumptech/glide/e/d;

    iget-object v2, p1, Lcom/bumptech/glide/e/k;->c:Lcom/bumptech/glide/e/d;

    invoke-interface {v0, v2}, Lcom/bumptech/glide/e/d;->a(Lcom/bumptech/glide/e/d;)Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_0
    iget-object v0, p0, Lcom/bumptech/glide/e/k;->d:Lcom/bumptech/glide/e/d;

    if-nez v0, :cond_1

    iget-object p1, p1, Lcom/bumptech/glide/e/k;->d:Lcom/bumptech/glide/e/d;

    if-nez p1, :cond_2

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/bumptech/glide/e/k;->d:Lcom/bumptech/glide/e/d;

    iget-object p1, p1, Lcom/bumptech/glide/e/k;->d:Lcom/bumptech/glide/e/d;

    .line 206
    invoke-interface {v0, p1}, Lcom/bumptech/glide/e/d;->a(Lcom/bumptech/glide/e/d;)Z

    move-result p1

    if-eqz p1, :cond_2

    :goto_1
    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method public final b()V
    .locals 2

    .line 157
    iget-object v0, p0, Lcom/bumptech/glide/e/k;->b:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 158
    :try_start_0
    iput-boolean v1, p0, Lcom/bumptech/glide/e/k;->g:Z

    .line 159
    sget-object v1, Lcom/bumptech/glide/e/e$a;->CLEARED:Lcom/bumptech/glide/e/e$a;

    iput-object v1, p0, Lcom/bumptech/glide/e/k;->e:Lcom/bumptech/glide/e/e$a;

    .line 160
    sget-object v1, Lcom/bumptech/glide/e/e$a;->CLEARED:Lcom/bumptech/glide/e/e$a;

    iput-object v1, p0, Lcom/bumptech/glide/e/k;->f:Lcom/bumptech/glide/e/e$a;

    .line 161
    iget-object v1, p0, Lcom/bumptech/glide/e/k;->d:Lcom/bumptech/glide/e/d;

    invoke-interface {v1}, Lcom/bumptech/glide/e/d;->b()V

    .line 162
    iget-object v1, p0, Lcom/bumptech/glide/e/k;->c:Lcom/bumptech/glide/e/d;

    invoke-interface {v1}, Lcom/bumptech/glide/e/d;->b()V

    .line 163
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

    .line 44
    iget-object v0, p0, Lcom/bumptech/glide/e/k;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 1051
    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/e/k;->a:Lcom/bumptech/glide/e/e;

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
    if-eqz v1, :cond_3

    .line 45
    iget-object v1, p0, Lcom/bumptech/glide/e/k;->c:Lcom/bumptech/glide/e/d;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/bumptech/glide/e/k;->e:Lcom/bumptech/glide/e/e$a;

    sget-object v1, Lcom/bumptech/glide/e/e$a;->SUCCESS:Lcom/bumptech/glide/e/e$a;

    if-eq p1, v1, :cond_3

    :cond_2
    const/4 v2, 0x1

    :cond_3
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p1

    .line 46
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final c()V
    .locals 2

    .line 168
    iget-object v0, p0, Lcom/bumptech/glide/e/k;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 169
    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/e/k;->f:Lcom/bumptech/glide/e/e$a;

    invoke-virtual {v1}, Lcom/bumptech/glide/e/e$a;->isComplete()Z

    move-result v1

    if-nez v1, :cond_0

    .line 170
    sget-object v1, Lcom/bumptech/glide/e/e$a;->PAUSED:Lcom/bumptech/glide/e/e$a;

    iput-object v1, p0, Lcom/bumptech/glide/e/k;->f:Lcom/bumptech/glide/e/e$a;

    .line 171
    iget-object v1, p0, Lcom/bumptech/glide/e/k;->d:Lcom/bumptech/glide/e/d;

    invoke-interface {v1}, Lcom/bumptech/glide/e/d;->c()V

    .line 173
    :cond_0
    iget-object v1, p0, Lcom/bumptech/glide/e/k;->e:Lcom/bumptech/glide/e/e$a;

    invoke-virtual {v1}, Lcom/bumptech/glide/e/e$a;->isComplete()Z

    move-result v1

    if-nez v1, :cond_1

    .line 174
    sget-object v1, Lcom/bumptech/glide/e/e$a;->PAUSED:Lcom/bumptech/glide/e/e$a;

    iput-object v1, p0, Lcom/bumptech/glide/e/k;->e:Lcom/bumptech/glide/e/e$a;

    .line 175
    iget-object v1, p0, Lcom/bumptech/glide/e/k;->c:Lcom/bumptech/glide/e/d;

    invoke-interface {v1}, Lcom/bumptech/glide/e/d;->c()V

    .line 177
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

    .line 62
    iget-object v0, p0, Lcom/bumptech/glide/e/k;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 1081
    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/e/k;->a:Lcom/bumptech/glide/e/e;

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

    .line 63
    iget-object v1, p0, Lcom/bumptech/glide/e/k;->c:Lcom/bumptech/glide/e/d;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/bumptech/glide/e/k;->g()Z

    move-result p1

    if-nez p1, :cond_2

    const/4 v2, 0x1

    :cond_2
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p1

    .line 64
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final d()Z
    .locals 3

    .line 182
    iget-object v0, p0, Lcom/bumptech/glide/e/k;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 183
    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/e/k;->e:Lcom/bumptech/glide/e/e$a;

    sget-object v2, Lcom/bumptech/glide/e/e$a;->RUNNING:Lcom/bumptech/glide/e/e$a;

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

    .line 184
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final d(Lcom/bumptech/glide/e/d;)Z
    .locals 4

    .line 69
    iget-object v0, p0, Lcom/bumptech/glide/e/k;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 2076
    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/e/k;->a:Lcom/bumptech/glide/e/e;

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

    .line 70
    iget-object v1, p0, Lcom/bumptech/glide/e/k;->c:Lcom/bumptech/glide/e/d;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/bumptech/glide/e/k;->e:Lcom/bumptech/glide/e/e$a;

    sget-object v1, Lcom/bumptech/glide/e/e$a;->PAUSED:Lcom/bumptech/glide/e/e$a;

    if-eq p1, v1, :cond_2

    const/4 v2, 0x1

    :cond_2
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p1

    .line 71
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final e(Lcom/bumptech/glide/e/d;)V
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/bumptech/glide/e/k;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 94
    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/e/k;->d:Lcom/bumptech/glide/e/d;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 95
    sget-object p1, Lcom/bumptech/glide/e/e$a;->SUCCESS:Lcom/bumptech/glide/e/e$a;

    iput-object p1, p0, Lcom/bumptech/glide/e/k;->f:Lcom/bumptech/glide/e/e$a;

    .line 96
    monitor-exit v0

    return-void

    .line 98
    :cond_0
    sget-object p1, Lcom/bumptech/glide/e/e$a;->SUCCESS:Lcom/bumptech/glide/e/e$a;

    iput-object p1, p0, Lcom/bumptech/glide/e/k;->e:Lcom/bumptech/glide/e/e$a;

    .line 99
    iget-object p1, p0, Lcom/bumptech/glide/e/k;->a:Lcom/bumptech/glide/e/e;

    if-eqz p1, :cond_1

    .line 100
    invoke-interface {p1, p0}, Lcom/bumptech/glide/e/e;->e(Lcom/bumptech/glide/e/d;)V

    .line 105
    :cond_1
    iget-object p1, p0, Lcom/bumptech/glide/e/k;->f:Lcom/bumptech/glide/e/e$a;

    invoke-virtual {p1}, Lcom/bumptech/glide/e/e$a;->isComplete()Z

    move-result p1

    if-nez p1, :cond_2

    .line 106
    iget-object p1, p0, Lcom/bumptech/glide/e/k;->d:Lcom/bumptech/glide/e/d;

    invoke-interface {p1}, Lcom/bumptech/glide/e/d;->b()V

    .line 108
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

    .line 189
    iget-object v0, p0, Lcom/bumptech/glide/e/k;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 190
    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/e/k;->e:Lcom/bumptech/glide/e/e$a;

    sget-object v2, Lcom/bumptech/glide/e/e$a;->SUCCESS:Lcom/bumptech/glide/e/e$a;

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

    .line 191
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final f(Lcom/bumptech/glide/e/d;)V
    .locals 2

    .line 113
    iget-object v0, p0, Lcom/bumptech/glide/e/k;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 114
    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/e/k;->c:Lcom/bumptech/glide/e/d;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 115
    sget-object p1, Lcom/bumptech/glide/e/e$a;->FAILED:Lcom/bumptech/glide/e/e$a;

    iput-object p1, p0, Lcom/bumptech/glide/e/k;->f:Lcom/bumptech/glide/e/e$a;

    .line 116
    monitor-exit v0

    return-void

    .line 118
    :cond_0
    sget-object p1, Lcom/bumptech/glide/e/e$a;->FAILED:Lcom/bumptech/glide/e/e$a;

    iput-object p1, p0, Lcom/bumptech/glide/e/k;->e:Lcom/bumptech/glide/e/e$a;

    .line 120
    iget-object p1, p0, Lcom/bumptech/glide/e/k;->a:Lcom/bumptech/glide/e/e;

    if-eqz p1, :cond_1

    .line 121
    invoke-interface {p1, p0}, Lcom/bumptech/glide/e/e;->f(Lcom/bumptech/glide/e/d;)V

    .line 123
    :cond_1
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

    .line 196
    iget-object v0, p0, Lcom/bumptech/glide/e/k;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 197
    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/e/k;->e:Lcom/bumptech/glide/e/e$a;

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

    .line 198
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final g()Z
    .locals 2

    .line 86
    iget-object v0, p0, Lcom/bumptech/glide/e/k;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 87
    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/e/k;->d:Lcom/bumptech/glide/e/d;

    invoke-interface {v1}, Lcom/bumptech/glide/e/d;->g()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/bumptech/glide/e/k;->c:Lcom/bumptech/glide/e/d;

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

    .line 88
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final h()Lcom/bumptech/glide/e/e;
    .locals 2

    .line 128
    iget-object v0, p0, Lcom/bumptech/glide/e/k;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 129
    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/e/k;->a:Lcom/bumptech/glide/e/e;

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

    .line 130
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
