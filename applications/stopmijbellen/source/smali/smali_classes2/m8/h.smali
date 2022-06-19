.class public final synthetic Lm8/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm7/d;
.implements Le2/g$c;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lm8/h;->a:Ljava/lang/Object;

    iput-object p2, p0, Lm8/h;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;Ljava/lang/Object;)V
    .locals 5

    iget-object p1, p0, Lm8/h;->a:Ljava/lang/Object;

    check-cast p1, Lm8/i;

    iget-object v0, p0, Lm8/h;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    check-cast p2, Ls6/k;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "body"

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz p2, :cond_1

    .line 1
    :try_start_0
    invoke-virtual {p2}, Ls6/i;->toString()Ljava/lang/String;

    .line 2
    invoke-virtual {p2, v1}, Ls6/k;->f(Ljava/lang/String;)Ls6/i;

    move-result-object v4

    invoke-virtual {v4}, Ls6/i;->d()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lf8/g;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 3
    invoke-virtual {p2, v1}, Ls6/k;->f(Ljava/lang/String;)Ls6/i;

    move-result-object p2

    invoke-virtual {p2}, Ls6/i;->d()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lf8/g;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 4
    new-instance v0, Ls6/l;

    invoke-direct {v0}, Ls6/l;-><init>()V

    invoke-virtual {v0, p2}, Ls6/l;->a(Ljava/lang/String;)Ls6/i;

    move-result-object p2

    invoke-virtual {p2}, Ls6/i;->c()Ls6/k;

    move-result-object p2

    .line 5
    invoke-virtual {p2}, Ls6/i;->toString()Ljava/lang/String;

    const-string v0, "stat"

    .line 6
    invoke-virtual {p2, v0}, Ls6/k;->f(Ljava/lang/String;)Ls6/i;

    move-result-object v0

    invoke-virtual {v0}, Ls6/i;->c()Ls6/k;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ls6/i;->toString()Ljava/lang/String;

    const-string v1, "feedbacks"

    .line 8
    invoke-virtual {p2, v1}, Ls6/k;->f(Ljava/lang/String;)Ls6/i;

    move-result-object p2

    invoke-virtual {p2}, Ls6/i;->b()Ls6/h;

    move-result-object p2

    .line 9
    invoke-virtual {p2}, Ls6/i;->toString()Ljava/lang/String;

    const/4 v1, 0x0

    .line 10
    :goto_0
    invoke-virtual {p2}, Ls6/h;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 11
    invoke-virtual {p2, v1}, Ls6/h;->e(I)Ls6/i;

    move-result-object v4

    invoke-virtual {v4}, Ls6/i;->c()Ls6/k;

    move-result-object v4

    .line 12
    invoke-virtual {p1, v4}, Lm8/i;->a(Ls6/k;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string p2, "location"

    .line 13
    invoke-virtual {v0, p2}, Ls6/k;->f(Ljava/lang/String;)Ls6/i;

    move-result-object p2

    invoke-virtual {p2}, Ls6/i;->d()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lm8/i;->d:Ljava/lang/String;

    .line 14
    invoke-virtual {p1}, Lm8/i;->f()V

    .line 15
    iget-object p2, p1, Lm8/i;->k:Landroid/view/View;

    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 16
    iget-object p2, p1, Lm8/i;->j:Landroid/view/View;

    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 17
    iget-object p2, p1, Lm8/i;->o:Landroid/view/View;

    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 18
    iget-boolean p2, p1, Lm8/i;->p:Z

    if-eqz p2, :cond_2

    .line 19
    invoke-virtual {p1}, Lm8/i;->e()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    .line 20
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 21
    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 22
    iget-object p2, p1, Lm8/i;->l:Landroid/view/View;

    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 23
    iget-object p2, p1, Lm8/i;->k:Landroid/view/View;

    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 24
    iget-object p1, p1, Lm8/i;->o:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 25
    :cond_1
    iget-object p2, p1, Lm8/i;->l:Landroid/view/View;

    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 26
    iget-object p2, p1, Lm8/i;->k:Landroid/view/View;

    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 27
    iget-object p1, p1, Lm8/i;->o:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method public g(Le2/g;Le2/b;)V
    .locals 10

    iget-object p1, p0, Lm8/h;->a:Ljava/lang/Object;

    check-cast p1, Lcom/mglab/scm/visual/c;

    iget-object p2, p0, Lm8/h;->b:Ljava/lang/Object;

    check-cast p2, Lcom/mglab/scm/visual/BWLItem;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    invoke-virtual {p2}, Lcom/mglab/scm/visual/BWLItem;->c()I

    move-result p2

    .line 2
    sget-object v0, Lcom/mglab/scm/visual/c;->k:Le2/g;

    const v1, 0x7f090249

    invoke-virtual {v0, v1}, Le2/c;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    sget-object v1, Lcom/mglab/scm/visual/c;->k:Le2/g;

    const v2, 0x7f0901e8

    invoke-virtual {v1, v2}, Le2/c;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4
    iget v2, p1, Lcom/mglab/scm/visual/c;->d:I

    const/4 v3, 0x3

    const/4 v4, -0x1

    const/4 v5, 0x4

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eq v2, v7, :cond_3

    if-eq v2, v6, :cond_0

    goto/16 :goto_4

    .line 5
    :cond_0
    :try_start_0
    const-class v2, Lh8/c;

    .line 6
    new-instance v9, Lw8/q;

    invoke-direct {v9, v2}, Lw8/q;-><init>(Ljava/lang/Class;)V

    new-array v2, v5, [Lw8/n;

    .line 7
    sget-object v5, Lh8/d;->h:Lx8/b;

    .line 8
    invoke-virtual {v5, v0}, Lx8/b;->a(Ljava/lang/Object;)Lw8/k;

    move-result-object v0

    aput-object v0, v2, v8

    sget-object v0, Lh8/d;->g:Lx8/b;

    .line 9
    invoke-virtual {v0, v1}, Lx8/b;->a(Ljava/lang/Object;)Lw8/k;

    move-result-object v0

    aput-object v0, v2, v7

    sget-object v0, Lh8/d;->j:Lx8/b;

    .line 10
    iget-boolean v5, p1, Lcom/mglab/scm/visual/c;->e:Z

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_1
    sget-object v4, Lcom/mglab/scm/visual/c;->k:Le2/g;

    const v5, 0x7f0900c5

    invoke-virtual {v4, v5}, Le2/c;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    :goto_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Lx8/b;->a(Ljava/lang/Object;)Lw8/k;

    move-result-object v0

    aput-object v0, v2, v6

    sget-object v0, Lh8/d;->i:Lx8/b;

    .line 11
    invoke-static {v1}, Lh8/q;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lx8/b;->a(Ljava/lang/Object;)Lw8/k;

    move-result-object v0

    aput-object v0, v2, v3

    .line 12
    invoke-virtual {v9, v2}, Lw8/q;->a([Lw8/n;)Lw8/p;

    move-result-object v0

    new-array v2, v7, [Lw8/n;

    sget-object v3, Lh8/d;->f:Lx8/b;

    .line 13
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v3, p2}, Lx8/b;->a(Ljava/lang/Object;)Lw8/k;

    move-result-object p2

    aput-object p2, v2, v8

    .line 14
    new-instance p2, Lw8/r;

    invoke-direct {p2, v0, v2}, Lw8/r;-><init>(Lw8/e;[Lw8/n;)V

    .line 15
    invoke-virtual {p2}, Lw8/r;->i()Lc9/g;

    .line 16
    sget-object p2, Lcom/mglab/scm/visual/c;->k:Le2/g;

    const v0, 0x7f090305

    invoke-virtual {p2, v0}, Le2/c;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/appcompat/widget/SwitchCompat;

    .line 17
    invoke-virtual {p2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Landroid/widget/CompoundButton;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-boolean p2, p1, Lcom/mglab/scm/visual/c;->e:Z

    if-nez p2, :cond_2

    .line 18
    invoke-static {}, Lba/b;->b()Lba/b;

    move-result-object p2

    new-instance v0, Lk8/b0;

    invoke-direct {v0, v1, v7}, Lk8/b0;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {p2, v0}, Lba/b;->g(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    .line 19
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 20
    :cond_2
    :goto_1
    invoke-static {}, Lba/b;->b()Lba/b;

    move-result-object p2

    new-instance v0, Lk8/a;

    invoke-direct {v0, v7}, Lk8/a;-><init>(I)V

    invoke-virtual {p2, v0}, Lba/b;->g(Ljava/lang/Object;)V

    goto :goto_4

    .line 21
    :cond_3
    :try_start_1
    const-class v2, Lh8/w;

    .line 22
    new-instance v9, Lw8/q;

    invoke-direct {v9, v2}, Lw8/q;-><init>(Ljava/lang/Class;)V

    new-array v2, v5, [Lw8/n;

    .line 23
    sget-object v5, Lh8/x;->h:Lx8/b;

    .line 24
    invoke-virtual {v5, v0}, Lx8/b;->a(Ljava/lang/Object;)Lw8/k;

    move-result-object v0

    aput-object v0, v2, v8

    sget-object v0, Lh8/x;->g:Lx8/b;

    .line 25
    invoke-virtual {v0, v1}, Lx8/b;->a(Ljava/lang/Object;)Lw8/k;

    move-result-object v0

    aput-object v0, v2, v7

    sget-object v0, Lh8/x;->j:Lx8/b;

    .line 26
    iget-boolean v5, p1, Lcom/mglab/scm/visual/c;->e:Z

    if-eqz v5, :cond_4

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    :goto_2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Lx8/b;->a(Ljava/lang/Object;)Lw8/k;

    move-result-object v0

    aput-object v0, v2, v6

    sget-object v0, Lh8/x;->i:Lx8/b;

    .line 27
    invoke-static {v1}, Lh8/q;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lx8/b;->a(Ljava/lang/Object;)Lw8/k;

    move-result-object v0

    aput-object v0, v2, v3

    .line 28
    invoke-virtual {v9, v2}, Lw8/q;->a([Lw8/n;)Lw8/p;

    move-result-object v0

    new-array v1, v7, [Lw8/n;

    sget-object v2, Lh8/d;->f:Lx8/b;

    .line 29
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v2, p2}, Lx8/b;->a(Ljava/lang/Object;)Lw8/k;

    move-result-object p2

    aput-object p2, v1, v8

    .line 30
    new-instance p2, Lw8/r;

    invoke-direct {p2, v0, v1}, Lw8/r;-><init>(Lw8/e;[Lw8/n;)V

    .line 31
    invoke-virtual {p2}, Lw8/r;->i()Lc9/g;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception p2

    .line 32
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 33
    :goto_3
    invoke-static {}, Lba/b;->b()Lba/b;

    move-result-object p2

    invoke-static {v7, p2}, La6/h;->m(ILba/b;)V

    .line 34
    :goto_4
    iget-object p2, p1, Lcom/mglab/scm/visual/c;->a:Landroid/content/Context;

    iget-object v0, p1, Lcom/mglab/scm/visual/c;->b:Landroid/view/View;

    const v1, 0x7f1100c4

    invoke-static {p2, v0, v1}, Lf8/g;->K(Landroid/content/Context;Landroid/view/View;I)V

    .line 35
    iget-object p1, p1, Lcom/mglab/scm/visual/c;->a:Landroid/content/Context;

    invoke-static {p1}, Lf8/g;->D(Landroid/content/Context;)V

    return-void
.end method
