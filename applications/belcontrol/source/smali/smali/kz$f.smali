.class public final Lkz$f;
.super Lzy$b;
.source ""

# interfaces
.implements Lkz$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "f"
.end annotation


# instance fields
.field public final f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Z

.field public j:I

.field public k:I

.field public l:Lkz$a;

.field public m:I

.field public final synthetic n:Lkz;


# direct methods
.method public constructor <init>(Lkz;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lkz$f;->n:Lkz;

    invoke-direct {p0}, Lzy$b;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, Lkz$f;->j:I

    iput p1, p0, Lkz$f;->m:I

    iput-object p2, p0, Lkz$f;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lkz$f;->m:I

    return v0
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lkz$f;->l:Lkz$a;

    if-eqz v0, :cond_0

    iget v1, p0, Lkz$f;->m:I

    invoke-virtual {v0, v1}, Lkz$a;->p(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lkz$f;->l:Lkz$a;

    const/4 v0, 0x0

    iput v0, p0, Lkz$f;->m:I

    :cond_0
    return-void
.end method

.method public c(Lkz$a;)V
    .locals 2

    new-instance v0, Lkz$f$a;

    invoke-direct {v0, p0}, Lkz$f$a;-><init>(Lkz$f;)V

    iput-object p1, p0, Lkz$f;->l:Lkz$a;

    iget-object v1, p0, Lkz$f;->f:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lkz$a;->b(Ljava/lang/String;Ldz$d;)I

    move-result v0

    iput v0, p0, Lkz$f;->m:I

    iget-boolean v1, p0, Lkz$f;->i:Z

    if-eqz v1, :cond_1

    invoke-virtual {p1, v0}, Lkz$a;->r(I)V

    iget v0, p0, Lkz$f;->j:I

    if-ltz v0, :cond_0

    iget v1, p0, Lkz$f;->m:I

    invoke-virtual {p1, v1, v0}, Lkz$a;->v(II)V

    const/4 v0, -0x1

    iput v0, p0, Lkz$f;->j:I

    :cond_0
    iget v0, p0, Lkz$f;->k:I

    if-eqz v0, :cond_1

    iget v1, p0, Lkz$f;->m:I

    invoke-virtual {p1, v1, v0}, Lkz$a;->y(II)V

    const/4 p1, 0x0

    iput p1, p0, Lkz$f;->k:I

    :cond_1
    return-void
.end method

.method public d(Landroid/content/Intent;Ldz$d;)Z
    .locals 2

    iget-object v0, p0, Lkz$f;->l:Lkz$a;

    if-eqz v0, :cond_0

    iget v1, p0, Lkz$f;->m:I

    invoke-virtual {v0, v1, p1, p2}, Lkz$a;->s(ILandroid/content/Intent;Ldz$d;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, Lkz$f;->n:Lkz;

    invoke-virtual {v0, p0}, Lkz;->N(Lkz$c;)V

    return-void
.end method

.method public f()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lkz$f;->i:Z

    iget-object v0, p0, Lkz$f;->l:Lkz$a;

    if-eqz v0, :cond_0

    iget v1, p0, Lkz$f;->m:I

    invoke-virtual {v0, v1}, Lkz$a;->r(I)V

    :cond_0
    return-void
.end method

.method public g(I)V
    .locals 2

    iget-object v0, p0, Lkz$f;->l:Lkz$a;

    if-eqz v0, :cond_0

    iget v1, p0, Lkz$f;->m:I

    invoke-virtual {v0, v1, p1}, Lkz$a;->v(II)V

    goto :goto_0

    :cond_0
    iput p1, p0, Lkz$f;->j:I

    const/4 p1, 0x0

    iput p1, p0, Lkz$f;->k:I

    :goto_0
    return-void
.end method

.method public h()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lkz$f;->i(I)V

    return-void
.end method

.method public i(I)V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lkz$f;->i:Z

    iget-object v0, p0, Lkz$f;->l:Lkz$a;

    if-eqz v0, :cond_0

    iget v1, p0, Lkz$f;->m:I

    invoke-virtual {v0, v1, p1}, Lkz$a;->w(II)V

    :cond_0
    return-void
.end method

.method public j(I)V
    .locals 2

    iget-object v0, p0, Lkz$f;->l:Lkz$a;

    if-eqz v0, :cond_0

    iget v1, p0, Lkz$f;->m:I

    invoke-virtual {v0, v1, p1}, Lkz$a;->y(II)V

    goto :goto_0

    :cond_0
    iget v0, p0, Lkz$f;->k:I

    add-int/2addr v0, p1

    iput v0, p0, Lkz$f;->k:I

    :goto_0
    return-void
.end method

.method public k()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lkz$f;->g:Ljava/lang/String;

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lkz$f;->h:Ljava/lang/String;

    return-object v0
.end method

.method public n(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lkz$f;->l:Lkz$a;

    if-eqz v0, :cond_0

    iget v1, p0, Lkz$f;->m:I

    invoke-virtual {v0, v1, p1}, Lkz$a;->a(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public o(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lkz$f;->l:Lkz$a;

    if-eqz v0, :cond_0

    iget v1, p0, Lkz$f;->m:I

    invoke-virtual {v0, v1, p1}, Lkz$a;->q(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public p(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lkz$f;->l:Lkz$a;

    if-eqz v0, :cond_0

    iget v1, p0, Lkz$f;->m:I

    invoke-virtual {v0, v1, p1}, Lkz$a;->x(ILjava/util/List;)V

    :cond_0
    return-void
.end method

.method public r(Lxy;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxy;",
            "Ljava/util/List<",
            "Lzy$b$c;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lzy$b;->m(Lxy;Ljava/util/Collection;)V

    return-void
.end method
