.class public Lw8/r;
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


# instance fields
.field public final c:Lw8/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw8/e;"
        }
    .end annotation
.end field

.field public d:Lw8/l;

.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lw8/j;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lw8/m;",
            ">;"
        }
    .end annotation
.end field

.field public g:Lw8/l;

.field public h:I

.field public i:I


# direct methods
.method public varargs constructor <init>(Lw8/e;[Lw8/n;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw8/e;",
            "[",
            "Lw8/n;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lw8/d;->a:Ljava/lang/Class;

    .line 2
    invoke-direct {p0, v0}, Lw8/b;-><init>(Ljava/lang/Class;)V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lw8/r;->e:Ljava/util/List;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lw8/r;->f:Ljava/util/List;

    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lw8/r;->h:I

    .line 6
    iput v0, p0, Lw8/r;->i:I

    .line 7
    iput-object p1, p0, Lw8/r;->c:Lw8/e;

    .line 8
    invoke-static {}, Lw8/l;->j()Lw8/l;

    move-result-object p1

    iput-object p1, p0, Lw8/r;->d:Lw8/l;

    .line 9
    invoke-static {}, Lw8/l;->j()Lw8/l;

    move-result-object p1

    iput-object p1, p0, Lw8/r;->g:Lw8/l;

    .line 10
    iget-object p1, p0, Lw8/r;->d:Lw8/l;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p2, v1

    const-string v3, "AND"

    .line 12
    invoke-virtual {p1, v3, v2}, Lw8/l;->k(Ljava/lang/String;Lw8/n;)Lw8/l;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a()Lb9/a$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lw8/r;->c:Lw8/e;

    invoke-interface {v0}, Lw8/a;->a()Lb9/a$a;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lw8/r;->c:Lw8/e;

    invoke-interface {v0}, Lv8/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Lv8/b;

    invoke-direct {v1}, Lv8/b;-><init>()V

    .line 3
    iget-object v2, v1, Lv8/b;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {v1}, Lv8/b;->c()Lv8/b;

    iget-object v0, p0, Lw8/r;->d:Lw8/l;

    .line 5
    invoke-virtual {v0}, Lw8/l;->b()Ljava/lang/String;

    move-result-object v0

    const-string v2, "WHERE"

    invoke-virtual {v1, v2, v0}, Lv8/b;->a(Ljava/lang/String;Ljava/lang/String;)Lv8/b;

    iget-object v0, p0, Lw8/r;->e:Ljava/util/List;

    const-string v2, ","

    .line 6
    invoke-static {v2, v0}, Lv8/b;->e(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "GROUP BY"

    invoke-virtual {v1, v3, v0}, Lv8/b;->a(Ljava/lang/String;Ljava/lang/String;)Lv8/b;

    iget-object v0, p0, Lw8/r;->g:Lw8/l;

    .line 7
    invoke-virtual {v0}, Lw8/l;->b()Ljava/lang/String;

    move-result-object v0

    const-string v3, "HAVING"

    invoke-virtual {v1, v3, v0}, Lv8/b;->a(Ljava/lang/String;Ljava/lang/String;)Lv8/b;

    iget-object v0, p0, Lw8/r;->f:Ljava/util/List;

    .line 8
    invoke-static {v2, v0}, Lv8/b;->e(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "ORDER BY"

    invoke-virtual {v1, v2, v0}, Lv8/b;->a(Ljava/lang/String;Ljava/lang/String;)Lv8/b;

    .line 9
    iget v0, p0, Lw8/r;->h:I

    const/4 v2, -0x1

    if-le v0, v2, :cond_0

    .line 10
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "LIMIT"

    invoke-virtual {v1, v3, v0}, Lv8/b;->a(Ljava/lang/String;Ljava/lang/String;)Lv8/b;

    .line 11
    :cond_0
    iget v0, p0, Lw8/r;->i:I

    if-le v0, v2, :cond_1

    .line 12
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "OFFSET"

    invoke-virtual {v1, v2, v0}, Lv8/b;->a(Ljava/lang/String;Ljava/lang/String;)Lv8/b;

    .line 13
    :cond_1
    invoke-virtual {v1}, Lv8/b;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public i()Lc9/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lw8/d;->a:Ljava/lang/Class;

    .line 2
    invoke-static {v0}, Lcom/raizlabs/android/dbflow/config/FlowManager;->e(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/config/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/config/c;->j()Lc9/f;

    move-result-object v0

    invoke-virtual {p0, v0}, Lw8/r;->j(Lc9/f;)Lc9/g;

    move-result-object v0

    return-object v0
.end method

.method public j(Lc9/f;)Lc9/g;
    .locals 2

    .line 1
    iget-object v0, p0, Lw8/r;->c:Lw8/e;

    invoke-virtual {v0}, Lw8/e;->m()Lv8/a;

    move-result-object v0

    instance-of v0, v0, Lw8/o;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lw8/r;->b()Ljava/lang/String;

    move-result-object v0

    check-cast p1, Lc9/a;

    invoke-virtual {p1, v0, v1}, Lc9/a;->b(Ljava/lang/String;[Ljava/lang/String;)Lc9/g;

    move-result-object v1

    goto :goto_0

    .line 3
    :cond_0
    invoke-super {p0, p1}, Lw8/d;->j(Lc9/f;)Lc9/g;

    :goto_0
    return-object v1
.end method

.method public l()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TTModel;>;"
        }
    .end annotation

    const-string v0, "query"

    .line 1
    invoke-virtual {p0, v0}, Lw8/r;->m(Ljava/lang/String;)V

    .line 2
    invoke-super {p0}, Lw8/b;->l()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final m(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lw8/r;->c:Lw8/e;

    invoke-virtual {v0}, Lw8/e;->m()Lv8/a;

    move-result-object v0

    instance-of v0, v0, Lw8/o;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Please use "

    const-string v2, "(). The beginning is not a ISelect"

    invoke-static {v1, p1, v2}, Landroid/support/v4/media/b;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public varargs n([Lx8/a;)Lw8/r;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lx8/a;",
            ")",
            "Lw8/r<",
            "TTModel;>;"
        }
    .end annotation

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 2
    iget-object v3, p0, Lw8/r;->e:Ljava/util/List;

    invoke-interface {v2}, Lx8/a;->f()Lw8/j;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public o(Lx8/a;Z)Lw8/r;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx8/a;",
            "Z)",
            "Lw8/r<",
            "TTModel;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lw8/r;->f:Ljava/util/List;

    new-instance v1, Lw8/m;

    invoke-interface {p1}, Lx8/a;->f()Lw8/j;

    move-result-object p1

    invoke-direct {v1, p1, p2}, Lw8/m;-><init>(Lw8/j;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public p()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTModel;"
        }
    .end annotation

    const-string v0, "query"

    .line 1
    invoke-virtual {p0, v0}, Lw8/r;->m(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lw8/r;->h:I

    .line 3
    invoke-virtual {p0}, Lw8/r;->b()Ljava/lang/String;

    move-result-object v0

    .line 4
    sget-object v1, Lcom/raizlabs/android/dbflow/config/f$b;->a:Lcom/raizlabs/android/dbflow/config/f$b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Executing query: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 5
    invoke-static {v1, v2, v3}, Lcom/raizlabs/android/dbflow/config/f;->a(Lcom/raizlabs/android/dbflow/config/f$b;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6
    invoke-virtual {p0}, Lw8/b;->k()Lb9/b;

    move-result-object v1

    .line 7
    iget-object v2, v1, Lb9/b;->a:Lz8/b;

    if-nez v2, :cond_0

    .line 8
    new-instance v2, Lz8/b;

    invoke-virtual {v1}, Lb9/b;->b()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v2, v3}, Lz8/b;-><init>(Ljava/lang/Class;)V

    .line 9
    iput-object v2, v1, Lb9/b;->a:Lz8/b;

    .line 10
    :cond_0
    iget-object v1, v1, Lb9/b;->a:Lz8/b;

    .line 11
    invoke-virtual {v1, v0}, Ll/b;->j(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
