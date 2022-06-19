.class public abstract Lb9/d;
.super Lb9/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TModel:",
        "Ljava/lang/Object;",
        ">",
        "Lb9/b<",
        "TTModel;>;"
    }
.end annotation


# instance fields
.field public c:Landroid/support/v4/media/a;

.field public d:Landroid/support/v4/media/a;

.field public e:La9/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La9/b<",
            "TTModel;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/raizlabs/android/dbflow/config/c;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lb9/b;-><init>(Lcom/raizlabs/android/dbflow/config/c;)V

    return-void
.end method


# virtual methods
.method public abstract f(Landroid/support/v4/media/a;Ljava/lang/Object;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/media/a;",
            "Ljava/lang/Object;",
            "I)V"
        }
    .end annotation
.end method

.method public g(Landroid/support/v4/media/a;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/media/a;",
            "TTModel;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lb9/d;->f(Landroid/support/v4/media/a;Ljava/lang/Object;I)V

    return-void
.end method

.method public abstract h(Landroid/support/v4/media/a;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/media/a;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation
.end method

.method public i()La9/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "La9/b<",
            "TTModel;>;"
        }
    .end annotation

    .line 1
    new-instance v0, La9/b;

    invoke-direct {v0}, La9/b;-><init>()V

    return-object v0
.end method

.method public j(Ljava/lang/Object;)Ljava/lang/Number;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTModel;)",
            "Ljava/lang/Number;"
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/raizlabs/android/dbflow/structure/InvalidDBConfiguration;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Lb9/b;->b()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "This method may have been called in error. The model class %1s must containa single primary key (if used in a ModelCache, this method may be called)"

    .line 3
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/raizlabs/android/dbflow/structure/InvalidDBConfiguration;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract k()Ljava/lang/String;
.end method

.method public abstract l()Ljava/lang/String;
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lb9/d;->k()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract n()Ljava/lang/String;
.end method

.method public o()Landroid/support/v4/media/a;
    .locals 2

    .line 1
    iget-object v0, p0, Lb9/d;->d:Landroid/support/v4/media/a;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lb9/b;->b()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/config/FlowManager;->j(Ljava/lang/Class;)Lc9/f;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lb9/d;->p()Ljava/lang/String;

    move-result-object v1

    check-cast v0, Lc9/a;

    invoke-virtual {v0, v1}, Lc9/a;->a(Ljava/lang/String;)Landroid/support/v4/media/a;

    move-result-object v0

    .line 4
    iput-object v0, p0, Lb9/d;->d:Landroid/support/v4/media/a;

    .line 5
    :cond_0
    iget-object v0, p0, Lb9/d;->d:Landroid/support/v4/media/a;

    return-object v0
.end method

.method public abstract p()Ljava/lang/String;
.end method

.method public q(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTModel;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lb9/d;->j(Ljava/lang/Object;)Ljava/lang/Number;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public r(Ljava/lang/Object;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTModel;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lb9/d;->e:La9/b;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lb9/d;->i()La9/b;

    move-result-object v0

    iput-object v0, p0, Lb9/d;->e:La9/b;

    .line 3
    iput-object p0, v0, La9/b;->a:Lb9/d;

    .line 4
    :cond_0
    iget-object v0, p0, Lb9/d;->e:La9/b;

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, v0, La9/b;->a:Lb9/d;

    invoke-virtual {v1}, Lb9/b;->b()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/raizlabs/android/dbflow/config/FlowManager;->e(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/config/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/raizlabs/android/dbflow/config/c;->j()Lc9/f;

    move-result-object v1

    .line 7
    iget-object v2, v0, La9/b;->a:Lb9/d;

    .line 8
    iget-object v3, v2, Lb9/d;->c:Landroid/support/v4/media/a;

    if-nez v3, :cond_1

    .line 9
    invoke-virtual {v2}, Lb9/b;->b()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Lcom/raizlabs/android/dbflow/config/FlowManager;->j(Ljava/lang/Class;)Lc9/f;

    move-result-object v3

    .line 10
    invoke-virtual {v2}, Lb9/d;->m()Ljava/lang/String;

    move-result-object v4

    check-cast v3, Lc9/a;

    invoke-virtual {v3, v4}, Lc9/a;->a(Ljava/lang/String;)Landroid/support/v4/media/a;

    move-result-object v3

    .line 11
    iput-object v3, v2, Lb9/d;->c:Landroid/support/v4/media/a;

    .line 12
    :cond_1
    iget-object v2, v2, Lb9/d;->c:Landroid/support/v4/media/a;

    .line 13
    iget-object v3, v0, La9/b;->a:Lb9/d;

    .line 14
    invoke-virtual {v3}, Lb9/d;->o()Landroid/support/v4/media/a;

    move-result-object v3

    .line 15
    invoke-virtual {v0, p1, v1, v2, v3}, La9/b;->b(Ljava/lang/Object;Lc9/f;Landroid/support/v4/media/a;Landroid/support/v4/media/a;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public s(Ljava/lang/Object;Ljava/lang/Number;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTModel;",
            "Ljava/lang/Number;",
            ")V"
        }
    .end annotation

    return-void
.end method
