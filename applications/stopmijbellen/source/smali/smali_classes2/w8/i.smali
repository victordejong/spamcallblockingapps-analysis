.class public Lw8/i;
.super Lx8/b;
.source "SourceFile"


# instance fields
.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lx8/a;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Lx8/a;


# direct methods
.method public varargs constructor <init>(Ljava/lang/String;[Lx8/a;)V
    .locals 5

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, v0}, Lx8/b;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lw8/i;->d:Ljava/util/List;

    .line 3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lw8/i;->e:Ljava/util/List;

    .line 4
    new-instance v2, Lx8/b;

    invoke-static {p1}, Lw8/j;->e(Ljava/lang/String;)Lw8/j$b;

    move-result-object p1

    invoke-virtual {p1}, Lw8/j$b;->a()Lw8/j;

    move-result-object p1

    invoke-direct {v2, v0, p1}, Lx8/b;-><init>(Ljava/lang/Class;Lw8/j;)V

    iput-object v2, p0, Lw8/i;->f:Lx8/a;

    .line 5
    array-length p1, p2

    if-nez p1, :cond_0

    .line 6
    sget-object p1, Lx8/b;->c:Lx8/b;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 7
    :cond_0
    array-length p1, p2

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_2

    aget-object v2, p2, v1

    .line 8
    iget-object v3, p0, Lw8/i;->d:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lw8/i;->d:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lx8/b;->c:Lx8/b;

    if-ne v3, v4, :cond_1

    .line 9
    iget-object v3, p0, Lw8/i;->d:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 10
    :cond_1
    iget-object v3, p0, Lw8/i;->d:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    iget-object v2, p0, Lw8/i;->e:Ljava/util/List;

    const-string v3, ","

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public static varargs k([Lx8/a;)Lw8/i;
    .locals 2

    .line 1
    new-instance v0, Lw8/i;

    const-string v1, "COUNT"

    invoke-direct {v0, v1, p0}, Lw8/i;-><init>(Ljava/lang/String;[Lx8/a;)V

    return-object v0
.end method


# virtual methods
.method public f()Lw8/j;
    .locals 6

    .line 1
    iget-object v0, p0, Lx8/b;->b:Lw8/j;

    if-nez v0, :cond_3

    .line 2
    iget-object v0, p0, Lw8/i;->f:Lx8/a;

    invoke-interface {v0}, Lv8/a;->b()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    const-string v1, "("

    .line 3
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/a;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lw8/i;->d:Ljava/util/List;

    const/4 v2, 0x0

    .line 5
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 6
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lx8/a;

    if-lez v2, :cond_1

    .line 7
    invoke-static {v0}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lw8/i;->e:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, " "

    invoke-static {v0, v4, v5}, Landroid/support/v4/media/b;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 8
    :cond_1
    invoke-static {v0}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 9
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 10
    invoke-static {v0}, Lw8/j;->e(Ljava/lang/String;)Lw8/j$b;

    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lw8/j$b;->a()Lw8/j;

    move-result-object v0

    iput-object v0, p0, Lx8/b;->b:Lw8/j;

    .line 12
    :cond_3
    iget-object v0, p0, Lx8/b;->b:Lw8/j;

    return-object v0
.end method
