.class public Ln0;
.super Landroid/view/ActionMode;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln0$a;
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lj0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lj0;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/ActionMode;-><init>()V

    iput-object p1, p0, Ln0;->a:Landroid/content/Context;

    iput-object p2, p0, Ln0;->b:Lj0;

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    iget-object v0, p0, Ln0;->b:Lj0;

    invoke-virtual {v0}, Lj0;->a()V

    return-void
.end method

.method public getCustomView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Ln0;->b:Lj0;

    invoke-virtual {v0}, Lj0;->b()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 3

    new-instance v0, Lf1;

    iget-object v1, p0, Ln0;->a:Landroid/content/Context;

    iget-object v2, p0, Ln0;->b:Lj0;

    invoke-virtual {v2}, Lj0;->c()Landroid/view/Menu;

    move-result-object v2

    check-cast v2, Lk9;

    invoke-direct {v0, v1, v2}, Lf1;-><init>(Landroid/content/Context;Lk9;)V

    return-object v0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 1

    iget-object v0, p0, Ln0;->b:Lj0;

    invoke-virtual {v0}, Lj0;->d()Landroid/view/MenuInflater;

    move-result-object v0

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Ln0;->b:Lj0;

    invoke-virtual {v0}, Lj0;->e()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Ln0;->b:Lj0;

    invoke-virtual {v0}, Lj0;->f()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Ln0;->b:Lj0;

    invoke-virtual {v0}, Lj0;->g()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTitleOptionalHint()Z
    .locals 1

    iget-object v0, p0, Ln0;->b:Lj0;

    invoke-virtual {v0}, Lj0;->h()Z

    move-result v0

    return v0
.end method

.method public invalidate()V
    .locals 1

    iget-object v0, p0, Ln0;->b:Lj0;

    invoke-virtual {v0}, Lj0;->i()V

    return-void
.end method

.method public isTitleOptional()Z
    .locals 1

    iget-object v0, p0, Ln0;->b:Lj0;

    invoke-virtual {v0}, Lj0;->j()Z

    move-result v0

    return v0
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Ln0;->b:Lj0;

    invoke-virtual {v0, p1}, Lj0;->k(Landroid/view/View;)V

    return-void
.end method

.method public setSubtitle(I)V
    .locals 1

    iget-object v0, p0, Ln0;->b:Lj0;

    invoke-virtual {v0, p1}, Lj0;->l(I)V

    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Ln0;->b:Lj0;

    invoke-virtual {v0, p1}, Lj0;->m(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTag(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Ln0;->b:Lj0;

    invoke-virtual {v0, p1}, Lj0;->n(Ljava/lang/Object;)V

    return-void
.end method

.method public setTitle(I)V
    .locals 1

    iget-object v0, p0, Ln0;->b:Lj0;

    invoke-virtual {v0, p1}, Lj0;->o(I)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Ln0;->b:Lj0;

    invoke-virtual {v0, p1}, Lj0;->p(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitleOptionalHint(Z)V
    .locals 1

    iget-object v0, p0, Ln0;->b:Lj0;

    invoke-virtual {v0, p1}, Lj0;->q(Z)V

    return-void
.end method
