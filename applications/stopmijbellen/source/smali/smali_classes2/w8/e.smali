.class public abstract Lw8/e;
.super Lw8/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TModel:",
        "Ljava/lang/Object;",
        ">",
        "Lw8/b<",
        "TTModel;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TTModel;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lw8/b;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public i()Lc9/g;
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Lw8/n;

    .line 1
    new-instance v1, Lw8/r;

    invoke-direct {v1, p0, v0}, Lw8/r;-><init>(Lw8/e;[Lw8/n;)V

    .line 2
    invoke-virtual {v1}, Lw8/r;->i()Lc9/g;

    move-result-object v0

    return-object v0
.end method

.method public j(Lc9/f;)Lc9/g;
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Lw8/n;

    .line 1
    new-instance v1, Lw8/r;

    invoke-direct {v1, p0, v0}, Lw8/r;-><init>(Lw8/e;[Lw8/n;)V

    .line 2
    invoke-virtual {v1, p1}, Lw8/r;->j(Lc9/f;)Lc9/g;

    move-result-object p1

    return-object p1
.end method

.method public l()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TTModel;>;"
        }
    .end annotation

    .line 1
    move-object v0, p0

    check-cast v0, Lw8/g;

    .line 2
    iget-object v0, v0, Lw8/g;->c:Lv8/a;

    .line 3
    instance-of v0, v0, Lw8/o;

    if-eqz v0, :cond_0

    .line 4
    invoke-super {p0}, Lw8/b;->l()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Please use query(). The beginning is not a Select"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract m()Lv8/a;
.end method

.method public n(Lx8/a;Z)Lw8/r;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx8/a;",
            "Z)",
            "Lw8/r<",
            "TTModel;>;"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Lw8/n;

    .line 1
    new-instance v1, Lw8/r;

    invoke-direct {v1, p0, v0}, Lw8/r;-><init>(Lw8/e;[Lw8/n;)V

    .line 2
    iget-object v0, v1, Lw8/r;->f:Ljava/util/List;

    new-instance v2, Lw8/m;

    invoke-interface {p1}, Lx8/a;->f()Lw8/j;

    move-result-object p1

    invoke-direct {v2, p1, p2}, Lw8/m;-><init>(Lw8/j;Z)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v1
.end method
