.class public La9/a;
.super La9/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TModel:",
        "Ljava/lang/Object;",
        ">",
        "La9/b<",
        "TTModel;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, La9/b;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/Object;Landroid/support/v4/media/a;Lc9/f;)J
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTModel;",
            "Landroid/support/v4/media/a;",
            "Lc9/f;",
            ")J"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, La9/b;->a:Lb9/d;

    .line 2
    invoke-virtual {v0, p1}, Lb9/d;->q(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-super {p0, p1, p2, p3}, La9/b;->a(Ljava/lang/Object;Landroid/support/v4/media/a;Lc9/f;)J

    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide p1

    .line 4
    :cond_0
    :try_start_1
    sget-object v0, Lcom/raizlabs/android/dbflow/config/f$b;->c:Lcom/raizlabs/android/dbflow/config/f$b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring insert statement "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " since an autoincrement column specified in the insert."

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    .line 5
    invoke-static {v0, p2, v1}, Lcom/raizlabs/android/dbflow/config/f;->a(Lcom/raizlabs/android/dbflow/config/f$b;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6
    invoke-virtual {p0, p1, p3}, La9/a;->d(Ljava/lang/Object;Lc9/f;)J

    move-result-wide p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-wide p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized d(Ljava/lang/Object;Lc9/f;)J
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTModel;",
            "Lc9/f;",
            ")J"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, La9/b;->a:Lb9/d;

    .line 2
    invoke-virtual {v0, p1}, Lb9/d;->q(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, La9/b;->a:Lb9/d;

    .line 4
    invoke-virtual {v1}, Lb9/d;->k()Ljava/lang/String;

    move-result-object v1

    check-cast p2, Lc9/a;

    invoke-virtual {p2, v1}, Lc9/a;->a(Ljava/lang/String;)Landroid/support/v4/media/a;

    move-result-object p2

    goto :goto_0

    .line 5
    :cond_0
    iget-object v1, p0, La9/b;->a:Lb9/d;

    .line 6
    invoke-virtual {v1}, Lb9/d;->m()Ljava/lang/String;

    move-result-object v1

    check-cast p2, Lc9/a;

    invoke-virtual {p2, v1}, Lc9/a;->a(Ljava/lang/String;)Landroid/support/v4/media/a;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 7
    :goto_0
    :try_start_1
    iget-object v1, p0, La9/b;->a:Lb9/d;

    .line 8
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 9
    iget-object v0, p0, La9/b;->a:Lb9/d;

    .line 10
    invoke-virtual {v0, p2, p1}, Lb9/d;->g(Landroid/support/v4/media/a;Ljava/lang/Object;)V

    goto :goto_1

    .line 11
    :cond_1
    iget-object v0, p0, La9/b;->a:Lb9/d;

    const/4 v1, 0x0

    .line 12
    invoke-virtual {v0, p2, p1, v1}, Lb9/d;->f(Landroid/support/v4/media/a;Ljava/lang/Object;I)V

    .line 13
    :goto_1
    invoke-virtual {p2}, Landroid/support/v4/media/a;->n()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    .line 14
    iget-object v2, p0, La9/b;->a:Lb9/d;

    .line 15
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lb9/d;->s(Ljava/lang/Object;Ljava/lang/Number;)V

    .line 16
    invoke-static {}, Lu8/e;->c()Lu8/e;

    move-result-object v2

    .line 17
    iget-object v3, p0, La9/b;->a:Lb9/d;

    .line 18
    sget-object v4, Lb9/a$a;->b:Lb9/a$a;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    invoke-virtual {v3}, Lb9/b;->b()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lcom/raizlabs/android/dbflow/config/FlowManager;->h(Ljava/lang/Class;)Lu8/d;

    move-result-object v2

    .line 20
    invoke-interface {v2, p1, v3, v4}, Lu8/d;->a(Ljava/lang/Object;Lb9/d;Lb9/a$a;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    :cond_2
    :try_start_2
    check-cast p2, Lc9/b;

    .line 22
    iget-object p1, p2, Lc9/b;->a:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 23
    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception p1

    .line 24
    :try_start_3
    check-cast p2, Lc9/b;

    .line 25
    iget-object p2, p2, Lc9/b;->a:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 26
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method
