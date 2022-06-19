.class public Lw8/l;
.super Lw8/c;
.source "SourceFile"

# interfaces
.implements Lv8/a;
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lw8/c;",
        "Lv8/a;",
        "Ljava/lang/Iterable<",
        "Lw8/n;",
        ">;"
    }
.end annotation


# instance fields
.field public final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lw8/n;",
            ">;"
        }
    .end annotation
.end field

.field public g:Lv8/b;

.field public h:Z

.field public i:Z

.field public j:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lw8/c;-><init>(Lw8/j;)V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lw8/l;->f:Ljava/util/List;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lw8/l;->j:Z

    const-string v0, "AND"

    .line 4
    iput-object v0, p0, Lw8/c;->d:Ljava/lang/String;

    return-void
.end method

.method public static j()Lw8/l;
    .locals 2

    .line 1
    new-instance v0, Lw8/l;

    invoke-direct {v0}, Lw8/l;-><init>()V

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, v0, Lw8/l;->j:Z

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, v0, Lw8/l;->h:Z

    return-object v0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lw8/l;->h:Z

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lv8/b;

    invoke-direct {v0}, Lv8/b;-><init>()V

    .line 3
    invoke-virtual {p0, v0}, Lw8/l;->c(Lv8/b;)V

    .line 4
    iput-object v0, p0, Lw8/l;->g:Lv8/b;

    .line 5
    :cond_0
    iget-object v0, p0, Lw8/l;->g:Lv8/b;

    if-nez v0, :cond_1

    const-string v0, ""

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {v0}, Lv8/b;->b()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public c(Lv8/b;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lw8/l;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 2
    iget-boolean v1, p0, Lw8/l;->j:Z

    if-eqz v1, :cond_0

    if-lez v0, :cond_0

    .line 3
    iget-object v1, p1, Lv8/b;->a:Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 4
    iget-object v2, p0, Lw8/l;->f:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lw8/n;

    .line 5
    invoke-interface {v2, p1}, Lw8/n;->c(Lv8/b;)V

    .line 6
    iget-boolean v3, p0, Lw8/l;->i:Z

    if-nez v3, :cond_1

    invoke-interface {v2}, Lw8/n;->g()Z

    move-result v3

    if-eqz v3, :cond_1

    add-int/lit8 v3, v0, -0x1

    if-ge v1, v3, :cond_1

    .line 7
    invoke-interface {v2}, Lw8/n;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lv8/b;->d(Ljava/lang/Object;)Lv8/b;

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v0, -0x1

    if-ge v1, v2, :cond_2

    .line 8
    iget-object v2, p1, Lv8/b;->a:Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 9
    :cond_3
    iget-boolean v1, p0, Lw8/l;->j:Z

    if-eqz v1, :cond_4

    if-lez v0, :cond_4

    .line 10
    iget-object p1, p1, Lv8/b;->a:Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_4
    return-void
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lw8/n;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lw8/l;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final k(Ljava/lang/String;Lw8/n;)Lw8/l;
    .locals 2

    if-eqz p2, :cond_1

    .line 1
    iget-object v0, p0, Lw8/l;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, Lw8/l;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lw8/n;

    invoke-interface {v0, p1}, Lw8/n;->d(Ljava/lang/String;)Lw8/n;

    .line 3
    :cond_0
    iget-object p1, p0, Lw8/l;->f:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lw8/l;->h:Z

    :cond_1
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Lv8/b;

    invoke-direct {v0}, Lv8/b;-><init>()V

    .line 2
    invoke-virtual {p0, v0}, Lw8/l;->c(Lv8/b;)V

    .line 3
    invoke-virtual {v0}, Lv8/b;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
