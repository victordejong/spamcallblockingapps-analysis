.class public final Lqh$c;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lqh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lqh$b;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lhp$a;",
            "Lqh$b;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lph$b;

.field public d:Lqh$b;

.field public e:Lqh$b;

.field public f:Lph;

.field public g:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lqh$c;->a:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lqh$c;->b:Ljava/util/HashMap;

    new-instance v0, Lph$b;

    invoke-direct {v0}, Lph$b;-><init>()V

    iput-object v0, p0, Lqh$c;->c:Lph$b;

    sget-object v0, Lph;->a:Lph;

    iput-object v0, p0, Lqh$c;->f:Lph;

    return-void
.end method

.method public static synthetic a(Lqh$c;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lqh$c;->a:Ljava/util/ArrayList;

    return-object p0
.end method


# virtual methods
.method public b()Lqh$b;
    .locals 1

    iget-object v0, p0, Lqh$c;->d:Lqh$b;

    return-object v0
.end method

.method public c()Lqh$b;
    .locals 2

    iget-object v0, p0, Lqh$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lqh$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqh$b;

    :goto_0
    return-object v0
.end method

.method public d(Lhp$a;)Lqh$b;
    .locals 1

    iget-object v0, p0, Lqh$c;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lqh$b;

    return-object p1
.end method

.method public e()Lqh$b;
    .locals 2

    iget-object v0, p0, Lqh$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lqh$c;->f:Lph;

    invoke-virtual {v0}, Lph;->q()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lqh$c;->g:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lqh$c;->a:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqh$b;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method

.method public f()Lqh$b;
    .locals 1

    iget-object v0, p0, Lqh$c;->e:Lqh$b;

    return-object v0
.end method

.method public g()Z
    .locals 1

    iget-boolean v0, p0, Lqh$c;->g:Z

    return v0
.end method

.method public h(ILhp$a;)V
    .locals 3

    iget-object v0, p0, Lqh$c;->f:Lph;

    iget-object v1, p2, Lhp$a;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lph;->b(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v2, Lqh$b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lqh$c;->f:Lph;

    goto :goto_1

    :cond_1
    sget-object v0, Lph;->a:Lph;

    :goto_1
    invoke-direct {v2, p2, v0, p1}, Lqh$b;-><init>(Lhp$a;Lph;I)V

    iget-object p1, p0, Lqh$c;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lqh$c;->b:Ljava/util/HashMap;

    invoke-virtual {p1, p2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lqh$c;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ne p1, v1, :cond_2

    iget-object p1, p0, Lqh$c;->f:Lph;

    invoke-virtual {p1}, Lph;->q()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lqh$c;->p()V

    :cond_2
    return-void
.end method

.method public i(Lhp$a;)Z
    .locals 3

    iget-object v0, p0, Lqh$c;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqh$b;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v2, p0, Lqh$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lqh$c;->e:Lqh$b;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lqh$b;->a:Lhp$a;

    invoke-virtual {p1, v0}, Lhp$a;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lqh$c;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lqh$c;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lqh$b;

    :goto_0
    iput-object p1, p0, Lqh$c;->e:Lqh$b;

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public j(I)V
    .locals 0

    invoke-virtual {p0}, Lqh$c;->p()V

    return-void
.end method

.method public k(Lhp$a;)V
    .locals 1

    iget-object v0, p0, Lqh$c;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lqh$b;

    iput-object p1, p0, Lqh$c;->e:Lqh$b;

    return-void
.end method

.method public l()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lqh$c;->g:Z

    invoke-virtual {p0}, Lqh$c;->p()V

    return-void
.end method

.method public m()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lqh$c;->g:Z

    return-void
.end method

.method public n(Lph;)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lqh$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lqh$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lqh$b;

    invoke-virtual {p0, v1, p1}, Lqh$c;->q(Lqh$b;Lph;)Lqh$b;

    move-result-object v1

    iget-object v2, p0, Lqh$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v0, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lqh$c;->b:Ljava/util/HashMap;

    iget-object v3, v1, Lqh$b;->a:Lhp$a;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lqh$c;->e:Lqh$b;

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0, p1}, Lqh$c;->q(Lqh$b;Lph;)Lqh$b;

    move-result-object v0

    iput-object v0, p0, Lqh$c;->e:Lqh$b;

    :cond_1
    iput-object p1, p0, Lqh$c;->f:Lph;

    invoke-virtual {p0}, Lqh$c;->p()V

    return-void
.end method

.method public o(I)Lqh$b;
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, v0

    :goto_0
    iget-object v3, p0, Lqh$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    iget-object v3, p0, Lqh$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lqh$b;

    iget-object v4, p0, Lqh$c;->f:Lph;

    iget-object v5, v3, Lqh$b;->a:Lhp$a;

    iget-object v5, v5, Lhp$a;->a:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Lph;->b(Ljava/lang/Object;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    iget-object v5, p0, Lqh$c;->f:Lph;

    iget-object v6, p0, Lqh$c;->c:Lph$b;

    invoke-virtual {v5, v4, v6}, Lph;->f(ILph$b;)Lph$b;

    move-result-object v4

    iget v4, v4, Lph$b;->c:I

    if-ne v4, p1, :cond_1

    if-eqz v2, :cond_0

    return-object v0

    :cond_0
    move-object v2, v3

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method public final p()V
    .locals 2

    iget-object v0, p0, Lqh$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lqh$c;->a:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqh$b;

    iput-object v0, p0, Lqh$c;->d:Lqh$b;

    :cond_0
    return-void
.end method

.method public final q(Lqh$b;Lph;)Lqh$b;
    .locals 2

    iget-object v0, p1, Lqh$b;->a:Lhp$a;

    iget-object v0, v0, Lhp$a;->a:Ljava/lang/Object;

    invoke-virtual {p2, v0}, Lph;->b(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-object p1

    :cond_0
    iget-object v1, p0, Lqh$c;->c:Lph$b;

    invoke-virtual {p2, v0, v1}, Lph;->f(ILph$b;)Lph$b;

    move-result-object v0

    iget v0, v0, Lph$b;->c:I

    new-instance v1, Lqh$b;

    iget-object p1, p1, Lqh$b;->a:Lhp$a;

    invoke-direct {v1, p1, p2, v0}, Lqh$b;-><init>(Lhp$a;Lph;I)V

    return-object v1
.end method
