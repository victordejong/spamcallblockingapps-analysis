.class Landroidx/lifecycle/LiveData$LifecycleBoundObserver;
.super Landroidx/lifecycle/LiveData$c;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LifecycleBoundObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/lifecycle/LiveData<",
        "TT;>.c;",
        "Landroidx/lifecycle/h;"
    }
.end annotation


# instance fields
.field public final e:Landroidx/lifecycle/j;

.field public final synthetic f:Landroidx/lifecycle/LiveData;


# virtual methods
.method public d(Landroidx/lifecycle/j;Landroidx/lifecycle/f$b;)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->e:Landroidx/lifecycle/j;

    invoke-interface {p1}, Landroidx/lifecycle/j;->getLifecycle()Landroidx/lifecycle/f;

    move-result-object p1

    check-cast p1, Landroidx/lifecycle/k;

    .line 2
    iget-object p1, p1, Landroidx/lifecycle/k;->b:Landroidx/lifecycle/f$c;

    .line 3
    sget-object p2, Landroidx/lifecycle/f$c;->a:Landroidx/lifecycle/f$c;

    if-ne p1, p2, :cond_0

    .line 4
    iget-object p1, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->f:Landroidx/lifecycle/LiveData;

    iget-object p2, p0, Landroidx/lifecycle/LiveData$c;->a:Landroidx/lifecycle/p;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/LiveData;->g(Landroidx/lifecycle/p;)V

    return-void

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eq p2, p1, :cond_1

    .line 5
    invoke-virtual {p0}, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->j()Z

    move-result p2

    invoke-virtual {p0, p2}, Landroidx/lifecycle/LiveData$c;->h(Z)V

    .line 6
    iget-object p2, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->e:Landroidx/lifecycle/j;

    invoke-interface {p2}, Landroidx/lifecycle/j;->getLifecycle()Landroidx/lifecycle/f;

    move-result-object p2

    check-cast p2, Landroidx/lifecycle/k;

    .line 7
    iget-object p2, p2, Landroidx/lifecycle/k;->b:Landroidx/lifecycle/f$c;

    move-object v0, p2

    move-object p2, p1

    move-object p1, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method public i()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->e:Landroidx/lifecycle/j;

    invoke-interface {v0}, Landroidx/lifecycle/j;->getLifecycle()Landroidx/lifecycle/f;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/k;

    const-string v1, "removeObserver"

    .line 2
    invoke-virtual {v0, v1}, Landroidx/lifecycle/k;->d(Ljava/lang/String;)V

    .line 3
    iget-object v0, v0, Landroidx/lifecycle/k;->a:Ln/a;

    invoke-virtual {v0, p0}, Ln/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public j()Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->e:Landroidx/lifecycle/j;

    invoke-interface {v0}, Landroidx/lifecycle/j;->getLifecycle()Landroidx/lifecycle/f;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/k;

    .line 2
    iget-object v0, v0, Landroidx/lifecycle/k;->b:Landroidx/lifecycle/f$c;

    .line 3
    sget-object v1, Landroidx/lifecycle/f$c;->d:Landroidx/lifecycle/f$c;

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
