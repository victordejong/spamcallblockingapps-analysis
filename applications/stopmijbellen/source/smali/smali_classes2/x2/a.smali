.class public final synthetic Lx2/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La3/a$a;
.implements Lcom/google/android/gms/tasks/Continuation;
.implements Lm7/d;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lx2/a;->a:Ljava/lang/Object;

    iput-object p2, p0, Lx2/a;->b:Ljava/lang/Object;

    iput-object p3, p0, Lx2/a;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;Ljava/lang/Object;)V
    .locals 6

    iget-object p1, p0, Lx2/a;->a:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lx2/a;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lx2/a;->c:Ljava/lang/Object;

    check-cast v1, Landroid/content/Context;

    check-cast p2, Ls6/k;

    .line 1
    const-class v2, Lh8/l;

    if-eqz p2, :cond_1

    :try_start_0
    const-string v3, "body"

    .line 2
    invoke-virtual {p2, v3}, Ls6/k;->f(Ljava/lang/String;)Ls6/i;

    move-result-object p2

    invoke-virtual {p2}, Ls6/i;->d()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lf8/g;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    new-instance p2, Ls6/l;

    invoke-direct {p2}, Ls6/l;-><init>()V

    invoke-virtual {p2, p1}, Ls6/l;->a(Ljava/lang/String;)Ls6/i;

    move-result-object p1

    invoke-virtual {p1}, Ls6/i;->c()Ls6/k;

    move-result-object p1

    const-string p2, "feedbacks"

    .line 4
    invoke-virtual {p1, p2}, Ls6/k;->f(Ljava/lang/String;)Ls6/i;

    move-result-object p1

    invoke-virtual {p1}, Ls6/i;->b()Ls6/h;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Ls6/h;->size()I

    move-result p2

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-lez p2, :cond_0

    .line 6
    invoke-virtual {p1, v5}, Ls6/h;->e(I)Ls6/i;

    move-result-object p1

    invoke-virtual {p1}, Ls6/i;->c()Ls6/k;

    move-result-object p1

    const-string p2, "name"

    .line 7
    invoke-virtual {p1, p2}, Ls6/k;->f(Ljava/lang/String;)Ls6/i;

    move-result-object p1

    invoke-virtual {p1}, Ls6/i;->d()Ljava/lang/String;

    move-result-object p1

    .line 8
    new-instance p2, Lw8/q;

    invoke-direct {p2, v2}, Lw8/q;-><init>(Ljava/lang/Class;)V

    new-array v2, v3, [Lw8/n;

    .line 9
    sget-object v3, Lh8/m;->z:Lx8/b;

    .line 10
    invoke-virtual {v3, p1}, Lx8/b;->a(Ljava/lang/Object;)Lw8/k;

    move-result-object p1

    aput-object p1, v2, v5

    sget-object p1, Lh8/m;->A:Lx8/b;

    .line 11
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v3}, Lx8/b;->a(Ljava/lang/Object;)Lw8/k;

    move-result-object p1

    aput-object p1, v2, v4

    .line 12
    invoke-virtual {p2, v2}, Lw8/q;->a([Lw8/n;)Lw8/p;

    move-result-object p1

    new-array p2, v4, [Lw8/n;

    sget-object v2, Lh8/m;->h:Lx8/b;

    .line 13
    invoke-virtual {v2, v0}, Lx8/b;->e(Ljava/lang/Object;)Lw8/k;

    move-result-object v0

    aput-object v0, p2, v5

    .line 14
    new-instance v0, Lw8/r;

    invoke-direct {v0, p1, p2}, Lw8/r;-><init>(Lw8/e;[Lw8/n;)V

    .line 15
    invoke-virtual {v0}, Lw8/r;->i()Lc9/g;

    goto :goto_0

    .line 16
    :cond_0
    new-instance p1, Lw8/q;

    invoke-direct {p1, v2}, Lw8/q;-><init>(Ljava/lang/Class;)V

    new-array p2, v3, [Lw8/n;

    .line 17
    sget-object v2, Lh8/m;->z:Lx8/b;

    const-string v3, ""

    .line 18
    invoke-virtual {v2, v3}, Lx8/b;->a(Ljava/lang/Object;)Lw8/k;

    move-result-object v2

    aput-object v2, p2, v5

    sget-object v2, Lh8/m;->A:Lx8/b;

    .line 19
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Lx8/b;->a(Ljava/lang/Object;)Lw8/k;

    move-result-object v2

    aput-object v2, p2, v4

    .line 20
    invoke-virtual {p1, p2}, Lw8/q;->a([Lw8/n;)Lw8/p;

    move-result-object p1

    new-array p2, v4, [Lw8/n;

    sget-object v2, Lh8/m;->h:Lx8/b;

    .line 21
    invoke-virtual {v2, v0}, Lx8/b;->e(Ljava/lang/Object;)Lw8/k;

    move-result-object v0

    aput-object v0, p2, v5

    .line 22
    new-instance v0, Lw8/r;

    invoke-direct {v0, p1, p2}, Lw8/r;-><init>(Lw8/e;[Lw8/n;)V

    .line 23
    invoke-virtual {v0}, Lw8/r;->i()Lc9/g;

    .line 24
    :goto_0
    invoke-static {v1}, Lf8/g;->D(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 25
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 26
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 27
    invoke-static {v1}, Lf8/g;->D(Landroid/content/Context;)V

    goto :goto_1

    .line 28
    :cond_1
    invoke-static {v1}, Lf8/g;->D(Landroid/content/Context;)V

    :goto_1
    return-void
.end method

.method public e()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lx2/a;->a:Ljava/lang/Object;

    check-cast v0, Lx2/c;

    iget-object v1, p0, Lx2/a;->b:Ljava/lang/Object;

    check-cast v1, Lu2/i;

    iget-object v2, p0, Lx2/a;->c:Ljava/lang/Object;

    check-cast v2, Lu2/f;

    .line 1
    iget-object v3, v0, Lx2/c;->d:Lz2/c;

    invoke-interface {v3, v1, v2}, Lz2/c;->I(Lu2/i;Lu2/f;)Lz2/h;

    .line 2
    iget-object v0, v0, Lx2/c;->a:Ly2/t;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Ly2/t;->a(Lu2/i;I)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public then(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .locals 4

    iget-object p1, p0, Lx2/a;->a:Ljava/lang/Object;

    check-cast p1, Lq6/b;

    iget-object v0, p0, Lx2/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/tasks/Task;

    iget-object v1, p0, Lx2/a;->c:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/tasks/Task;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr6/e;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr6/e;

    if-eqz v1, :cond_2

    .line 5
    iget-object v2, v0, Lr6/e;->c:Ljava/util/Date;

    iget-object v1, v1, Lr6/e;->c:Ljava/util/Date;

    .line 6
    invoke-virtual {v2, v1}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-nez v1, :cond_3

    .line 7
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    goto :goto_3

    .line 8
    :cond_3
    iget-object v1, p1, Lq6/b;->e:Lr6/d;

    .line 9
    invoke-virtual {v1, v0}, Lr6/d;->c(Lr6/e;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    iget-object v1, p1, Lq6/b;->c:Ljava/util/concurrent/Executor;

    new-instance v2, Ly2/l;

    const/4 v3, 0x3

    invoke-direct {v2, p1, v3}, Ly2/l;-><init>(Ljava/lang/Object;I)V

    .line 10
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tasks/Task;->continueWith(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    goto :goto_3

    .line 11
    :cond_4
    :goto_2
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    :goto_3
    return-object p1
.end method
