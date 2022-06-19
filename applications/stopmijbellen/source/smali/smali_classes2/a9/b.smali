.class public La9/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TModel:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public a:Lb9/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb9/d<",
            "TTModel;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
    iget-object p3, p0, La9/b;->a:Lb9/d;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object p3, p0, La9/b;->a:Lb9/d;

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p3, p2, p1, v0}, Lb9/d;->f(Landroid/support/v4/media/a;Ljava/lang/Object;I)V

    .line 4
    invoke-virtual {p2}, Landroid/support/v4/media/a;->n()J

    move-result-wide p2

    const-wide/16 v0, -0x1

    cmp-long v2, p2, v0

    if-lez v2, :cond_0

    .line 5
    iget-object v0, p0, La9/b;->a:Lb9/d;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lb9/d;->s(Ljava/lang/Object;Ljava/lang/Number;)V

    .line 6
    invoke-static {}, Lu8/e;->c()Lu8/e;

    move-result-object v0

    iget-object v1, p0, La9/b;->a:Lb9/d;

    sget-object v2, Lb9/a$a;->b:Lb9/a$a;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-virtual {v1}, Lb9/b;->b()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/config/FlowManager;->h(Ljava/lang/Class;)Lu8/d;

    move-result-object v0

    .line 8
    invoke-interface {v0, p1, v1, v2}, Lu8/d;->a(Ljava/lang/Object;Lb9/d;Lb9/a$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    :cond_0
    monitor-exit p0

    return-wide p2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b(Ljava/lang/Object;Lc9/f;Landroid/support/v4/media/a;Landroid/support/v4/media/a;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTModel;",
            "Lc9/f;",
            "Landroid/support/v4/media/a;",
            "Landroid/support/v4/media/a;",
            ")Z"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, La9/b;->a:Lb9/d;

    invoke-virtual {v0, p1, p2}, Lb9/b;->a(Ljava/lang/Object;Lc9/f;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1, p2, p4}, La9/b;->c(Ljava/lang/Object;Lc9/f;Landroid/support/v4/media/a;)Z

    move-result v0

    :cond_0
    if-nez v0, :cond_2

    .line 3
    invoke-virtual {p0, p1, p3, p2}, La9/b;->a(Ljava/lang/Object;Landroid/support/v4/media/a;Lc9/f;)J

    move-result-wide p2

    const-wide/16 v0, -0x1

    cmp-long p4, p2, v0

    if-lez p4, :cond_1

    const/4 p2, 0x1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    const/4 v0, 0x0

    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    .line 4
    invoke-static {}, Lu8/e;->c()Lu8/e;

    move-result-object p2

    iget-object p3, p0, La9/b;->a:Lb9/d;

    sget-object p4, Lb9/a$a;->a:Lb9/a$a;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-virtual {p3}, Lb9/b;->b()Ljava/lang/Class;

    move-result-object p2

    invoke-static {p2}, Lcom/raizlabs/android/dbflow/config/FlowManager;->h(Ljava/lang/Class;)Lu8/d;

    move-result-object p2

    .line 6
    invoke-interface {p2, p1, p3, p4}, Lu8/d;->a(Ljava/lang/Object;Lb9/d;Lb9/a$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :cond_3
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized c(Ljava/lang/Object;Lc9/f;Landroid/support/v4/media/a;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTModel;",
            "Lc9/f;",
            "Landroid/support/v4/media/a;",
            ")Z"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object p2, p0, La9/b;->a:Lb9/d;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object p2, p0, La9/b;->a:Lb9/d;

    invoke-virtual {p2, p3, p1}, Lb9/d;->h(Landroid/support/v4/media/a;Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p3}, Landroid/support/v4/media/a;->p()J

    move-result-wide p2

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-eqz v2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    .line 4
    invoke-static {}, Lu8/e;->c()Lu8/e;

    move-result-object p3

    iget-object v0, p0, La9/b;->a:Lb9/d;

    sget-object v1, Lb9/a$a;->c:Lb9/a$a;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-virtual {v0}, Lb9/b;->b()Ljava/lang/Class;

    move-result-object p3

    invoke-static {p3}, Lcom/raizlabs/android/dbflow/config/FlowManager;->h(Ljava/lang/Class;)Lu8/d;

    move-result-object p3

    .line 6
    invoke-interface {p3, p1, v0, v1}, Lu8/d;->a(Ljava/lang/Object;Lb9/d;Lb9/a$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :cond_1
    monitor-exit p0

    return p2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
