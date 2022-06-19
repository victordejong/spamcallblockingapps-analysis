.class public Lcom/mglab/scm/visual/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mglab/scm/visual/c$c;,
        Lcom/mglab/scm/visual/c$d;,
        Lcom/mglab/scm/visual/c$e;
    }
.end annotation


# static fields
.field public static k:Le2/g;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field public final a:Landroid/content/Context;

.field public b:Landroid/view/View;

.field public c:Landroid/widget/FrameLayout;

.field public d:I

.field public e:Z

.field public f:Lcom/mglab/scm/visual/CallItem;

.field public g:Lo8/j;

.field public h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo8/i;",
            ">;"
        }
    .end annotation
.end field

.field public i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo8/i;",
            ">;"
        }
    .end annotation
.end field

.field public j:Landroid/widget/ListView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mglab/scm/visual/c;->h:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mglab/scm/visual/c;->i:Ljava/util/List;

    .line 4
    iput-object p1, p0, Lcom/mglab/scm/visual/c;->a:Landroid/content/Context;

    .line 5
    iput-object p2, p0, Lcom/mglab/scm/visual/c;->b:Landroid/view/View;

    .line 6
    invoke-static {}, Lba/b;->b()Lba/b;

    move-result-object p1

    invoke-virtual {p1, p0}, Lba/b;->k(Ljava/lang/Object;)V

    return-void
.end method

.method public static a(Lcom/mglab/scm/visual/c;)V
    .locals 13

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x2

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/mglab/scm/visual/c;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 2
    iget-object v1, p0, Lcom/mglab/scm/visual/c;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 3
    iget-object v1, p0, Lcom/mglab/scm/visual/c;->a:Landroid/content/Context;

    invoke-static {v1}, Lf8/h;->W(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x4

    new-array v3, v2, [Lx8/a;

    .line 4
    sget-object v4, Lh8/j;->h:Lx8/b;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v6, Lh8/j;->i:Lx8/b;

    const/4 v7, 0x1

    aput-object v6, v3, v7

    sget-object v8, Lh8/j;->j:Lx8/b;

    aput-object v8, v3, v0

    sget-object v9, Lh8/j;->l:Lx8/b;

    const/4 v10, 0x3

    aput-object v9, v3, v10

    .line 5
    new-instance v11, Lw8/o;

    invoke-direct {v11, v3}, Lw8/o;-><init>([Lx8/a;)V

    .line 6
    const-class v3, Lh8/i;

    .line 7
    new-instance v12, Lw8/g;

    invoke-direct {v12, v11, v3}, Lw8/g;-><init>(Lv8/a;Ljava/lang/Class;)V

    new-array v2, v2, [Lx8/a;

    aput-object v4, v2, v5

    aput-object v6, v2, v7

    aput-object v8, v2, v0

    aput-object v9, v2, v10

    new-array v3, v5, [Lw8/n;

    .line 8
    new-instance v4, Lw8/r;

    invoke-direct {v4, v12, v3}, Lw8/r;-><init>(Lw8/e;[Lw8/n;)V

    .line 9
    invoke-virtual {v4, v2}, Lw8/r;->n([Lx8/a;)Lw8/r;

    if-eqz v1, :cond_0

    move-object v6, v8

    .line 10
    :cond_0
    invoke-virtual {v4, v6, v7}, Lw8/r;->o(Lx8/a;Z)Lw8/r;

    .line 11
    invoke-virtual {v4}, Lw8/r;->l()Ljava/util/List;

    move-result-object v2

    .line 12
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lh8/i;

    .line 13
    new-instance v4, Lcom/mglab/scm/visual/ContactItem;

    iget-object v5, v3, Lh8/i;->d:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v6, v3, Lh8/i;->f:Ljava/lang/String;

    goto :goto_1

    :cond_1
    iget-object v6, v3, Lh8/i;->e:Ljava/lang/String;

    :goto_1
    iget-object v3, v3, Lh8/i;->h:Ljava/lang/String;

    invoke-direct {v4, v5, v6, v3}, Lcom/mglab/scm/visual/ContactItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    iget-object v3, p0, Lcom/mglab/scm/visual/c;->h:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    iget-object v3, p0, Lcom/mglab/scm/visual/c;->i:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 16
    :cond_2
    iget-object v1, p0, Lcom/mglab/scm/visual/c;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 17
    invoke-static {}, Lba/b;->b()Lba/b;

    move-result-object v1

    new-instance v2, Lk8/f;

    invoke-direct {v2, v7}, Lk8/f;-><init>(I)V

    invoke-virtual {v1, v2}, Lba/b;->g(Ljava/lang/Object;)V

    goto :goto_2

    .line 18
    :cond_3
    invoke-static {}, Lba/b;->b()Lba/b;

    move-result-object v1

    new-instance v2, Lk8/f;

    invoke-direct {v2, v0}, Lk8/f;-><init>(I)V

    invoke-virtual {v1, v2}, Lba/b;->g(Ljava/lang/Object;)V

    .line 19
    :goto_2
    iget-object p0, p0, Lcom/mglab/scm/visual/c;->h:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    .line 20
    invoke-static {}, Lba/b;->b()Lba/b;

    move-result-object v1

    new-instance v2, Lk8/f;

    invoke-direct {v2, v0}, Lk8/f;-><init>(I)V

    invoke-virtual {v1, v2}, Lba/b;->g(Ljava/lang/Object;)V

    .line 21
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    return-void
.end method

.method public static b(Lcom/mglab/scm/visual/c;Landroid/view/View;)V
    .locals 5

    .line 1
    sget-object p1, Le2/b;->a:Le2/b;

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/mglab/scm/visual/c;->i:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_1

    .line 2
    iget-object v2, p0, Lcom/mglab/scm/visual/c;->i:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mglab/scm/visual/ContactItem;

    .line 3
    iget-boolean v4, v2, Lcom/mglab/scm/visual/ContactItem;->e:Z

    if-nez v4, :cond_0

    .line 4
    iput-boolean v3, v2, Lcom/mglab/scm/visual/ContactItem;->e:Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_1
    iget-object v1, p0, Lcom/mglab/scm/visual/c;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const v2, 0x7f11018f

    if-lez v1, :cond_2

    .line 6
    iget-object v0, p0, Lcom/mglab/scm/visual/c;->a:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, " ["

    .line 7
    invoke-static {v0, v1}, Landroidx/recyclerview/widget/b;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mglab/scm/visual/c;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 8
    sget-object v1, Lcom/mglab/scm/visual/c;->k:Le2/g;

    invoke-virtual {v1, p1}, Le2/g;->c(Le2/b;)Lcom/afollestad/materialdialogs/internal/MDButton;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    sget-object v0, Lcom/mglab/scm/visual/c;->k:Le2/g;

    invoke-virtual {v0, p1}, Le2/g;->c(Le2/b;)Lcom/afollestad/materialdialogs/internal/MDButton;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_1

    .line 10
    :cond_2
    sget-object v1, Lcom/mglab/scm/visual/c;->k:Le2/g;

    invoke-virtual {v1, p1}, Le2/g;->c(Le2/b;)Lcom/afollestad/materialdialogs/internal/MDButton;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 11
    sget-object v1, Lcom/mglab/scm/visual/c;->k:Le2/g;

    invoke-virtual {v1, p1}, Le2/g;->c(Le2/b;)Lcom/afollestad/materialdialogs/internal/MDButton;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 12
    :goto_1
    new-instance p1, Lo8/j;

    iget-object v0, p0, Lcom/mglab/scm/visual/c;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/mglab/scm/visual/c;->i:Ljava/util/List;

    invoke-direct {p1, v0, v1}, Lo8/j;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object p1, p0, Lcom/mglab/scm/visual/c;->g:Lo8/j;

    .line 13
    iget-object v0, p0, Lcom/mglab/scm/visual/c;->j:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 14
    iget-object p0, p0, Lcom/mglab/scm/visual/c;->g:Lo8/j;

    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public static c(Lcom/mglab/scm/visual/c;Landroid/view/View;)V
    .locals 3

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/mglab/scm/visual/c;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2
    iget-object v1, p0, Lcom/mglab/scm/visual/c;->i:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mglab/scm/visual/ContactItem;

    .line 3
    iget-boolean v2, v1, Lcom/mglab/scm/visual/ContactItem;->e:Z

    if-eqz v2, :cond_0

    .line 4
    iput-boolean p1, v1, Lcom/mglab/scm/visual/ContactItem;->e:Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5
    :cond_1
    sget-object v0, Lcom/mglab/scm/visual/c;->k:Le2/g;

    sget-object v1, Le2/b;->a:Le2/b;

    invoke-virtual {v0, v1}, Le2/g;->c(Le2/b;)Lcom/afollestad/materialdialogs/internal/MDButton;

    move-result-object v0

    const v2, 0x7f11018f

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 6
    sget-object v0, Lcom/mglab/scm/visual/c;->k:Le2/g;

    invoke-virtual {v0, v1}, Le2/g;->c(Le2/b;)Lcom/afollestad/materialdialogs/internal/MDButton;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 7
    new-instance p1, Lo8/j;

    iget-object v0, p0, Lcom/mglab/scm/visual/c;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/mglab/scm/visual/c;->i:Ljava/util/List;

    invoke-direct {p1, v0, v1}, Lo8/j;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object p1, p0, Lcom/mglab/scm/visual/c;->g:Lo8/j;

    .line 8
    iget-object v0, p0, Lcom/mglab/scm/visual/c;->j:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 9
    iget-object p0, p0, Lcom/mglab/scm/visual/c;->g:Lo8/j;

    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public static p(Landroid/content/Context;)V
    .locals 5

    .line 1
    invoke-static {p0}, Lf8/h;->H(Landroid/content/Context;)Z

    move-result v0

    .line 2
    new-instance v1, Le2/g$a;

    invoke-direct {v1, p0}, Le2/g$a;-><init>(Landroid/content/Context;)V

    const v2, 0x7f110022

    .line 3
    invoke-virtual {v1, v2}, Le2/g$a;->k(I)Le2/g$a;

    const v3, 0x7f06005b

    .line 4
    invoke-virtual {v1, v3}, Le2/g$a;->l(I)Le2/g$a;

    const v4, 0x1080029

    .line 5
    invoke-static {p0, v4}, Ld0/a$b;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 6
    invoke-static {p0, v3}, Ld0/a;->b(Landroid/content/Context;I)I

    move-result v3

    invoke-static {v4, v3}, Lf8/g;->H(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 7
    iput-object v3, v1, Le2/g$a;->E:Landroid/graphics/drawable/Drawable;

    const v3, 0x7f06005e

    if-eqz v0, :cond_0

    const v4, 0x7f06005e

    goto :goto_0

    :cond_0
    const v4, 0x7f060033

    .line 8
    :goto_0
    invoke-virtual {v1, v4}, Le2/g$a;->c(I)Le2/g$a;

    if-eqz v0, :cond_1

    const v3, 0x7f060091

    .line 9
    :cond_1
    invoke-virtual {v1, v3}, Le2/g$a;->a(I)Le2/g$a;

    const/4 v0, 0x1

    .line 10
    iput-boolean v0, v1, Le2/g$a;->y:Z

    .line 11
    iput-boolean v0, v1, Le2/g$a;->z:Z

    const v3, 0x7f0c004e

    const/4 v4, 0x0

    .line 12
    invoke-virtual {v1, v3, v4}, Le2/g$a;->d(IZ)Le2/g$a;

    const v3, 0x7f1100b3

    .line 13
    invoke-virtual {v1, v3}, Le2/g$a;->i(I)Le2/g$a;

    .line 14
    invoke-virtual {v1, v2}, Le2/g$a;->g(I)Le2/g$a;

    sget-object v2, Lz2/l;->k:Lz2/l;

    .line 15
    iput-object v2, v1, Le2/g$a;->u:Le2/g$c;

    .line 16
    new-instance v2, Lo8/w;

    invoke-direct {v2, p0, v0}, Lo8/w;-><init>(Landroid/content/Context;I)V

    .line 17
    iput-object v2, v1, Le2/g$a;->v:Le2/g$c;

    .line 18
    invoke-virtual {v1}, Le2/g$a;->j()Le2/g;

    move-result-object p0

    .line 19
    iget-object v1, p0, Le2/g;->c:Le2/g$a;

    iget-object v1, v1, Le2/g$a;->o:Landroid/view/View;

    .line 20
    sget-object v2, Le2/b;->c:Le2/b;

    invoke-virtual {p0, v2}, Le2/g;->c(Le2/b;)Lcom/afollestad/materialdialogs/internal/MDButton;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    const v2, 0x7f0900cc

    .line 21
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 22
    new-instance v2, Lm8/f;

    invoke-direct {v2, p0, v1, v0}, Lm8/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static q(Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-static {p0}, Lf8/h;->H(Landroid/content/Context;)Z

    move-result v0

    .line 2
    new-instance v1, Le2/g$a;

    invoke-direct {v1, p0}, Le2/g$a;-><init>(Landroid/content/Context;)V

    const v2, 0x7f11020a

    .line 3
    invoke-virtual {v1, v2}, Le2/g$a;->k(I)Le2/g$a;

    const v2, 0x7f06005b

    .line 4
    invoke-virtual {v1, v2}, Le2/g$a;->l(I)Le2/g$a;

    const v2, 0x7f0800ec

    .line 5
    invoke-virtual {v1, v2}, Le2/g$a;->e(I)Le2/g$a;

    const v2, 0x7f06005e

    if-eqz v0, :cond_0

    const v3, 0x7f06005e

    goto :goto_0

    :cond_0
    const v3, 0x7f060033

    .line 6
    :goto_0
    invoke-virtual {v1, v3}, Le2/g$a;->c(I)Le2/g$a;

    const/4 v3, 0x1

    .line 7
    iput-boolean v3, v1, Le2/g$a;->y:Z

    .line 8
    iput-boolean v3, v1, Le2/g$a;->z:Z

    if-eqz v0, :cond_1

    const v2, 0x7f060091

    .line 9
    :cond_1
    invoke-virtual {v1, v2}, Le2/g$a;->a(I)Le2/g$a;

    const v0, 0x7f11020b

    .line 10
    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 11
    invoke-virtual {v1, v0}, Le2/g$a;->b(Ljava/lang/CharSequence;)Le2/g$a;

    const v0, 0x7f11018f

    .line 12
    invoke-virtual {v1, v0}, Le2/g$a;->i(I)Le2/g$a;

    new-instance v0, Ls2/b;

    invoke-direct {v0, p0}, Ls2/b;-><init>(Ljava/lang/Object;)V

    .line 13
    iput-object v0, v1, Le2/g$a;->u:Le2/g$c;

    const p0, 0x7f11006e

    .line 14
    invoke-virtual {v1, p0}, Le2/g$a;->g(I)Le2/g$a;

    move-result-object p0

    invoke-virtual {p0}, Le2/g$a;->j()Le2/g;

    return-void
.end method


# virtual methods
.method public d(ILcom/mglab/scm/visual/CallItem;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Lcom/mglab/scm/visual/CallItem;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/mglab/scm/visual/CallItem;->e()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0, p2}, Lcom/mglab/scm/visual/c;->e(IZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public e(IZLjava/lang/String;Ljava/lang/String;)V
    .locals 9

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p1, v0, :cond_0

    if-eq p1, v1, :cond_0

    return-void

    .line 1
    :cond_0
    iput p1, p0, Lcom/mglab/scm/visual/c;->d:I

    .line 2
    iput-boolean p2, p0, Lcom/mglab/scm/visual/c;->e:Z

    .line 3
    iget-object p2, p0, Lcom/mglab/scm/visual/c;->a:Landroid/content/Context;

    invoke-static {p2}, Lf8/h;->H(Landroid/content/Context;)Z

    move-result p2

    .line 4
    iget-boolean v2, p0, Lcom/mglab/scm/visual/c;->e:Z

    if-eqz v2, :cond_1

    .line 5
    iget-object v2, p0, Lcom/mglab/scm/visual/c;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f11009a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    if-ne p1, v0, :cond_2

    .line 6
    iget-object v2, p0, Lcom/mglab/scm/visual/c;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f11009c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 7
    :cond_2
    iget-object v2, p0, Lcom/mglab/scm/visual/c;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f11009d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 8
    :goto_0
    new-instance v3, Le2/g$a;

    iget-object v4, p0, Lcom/mglab/scm/visual/c;->a:Landroid/content/Context;

    invoke-direct {v3, v4}, Le2/g$a;-><init>(Landroid/content/Context;)V

    .line 9
    iput-object v2, v3, Le2/g$a;->b:Ljava/lang/CharSequence;

    const v2, 0x7f06005b

    .line 10
    invoke-virtual {v3, v2}, Le2/g$a;->l(I)Le2/g$a;

    const v4, 0x108003e

    .line 11
    invoke-virtual {v3, v4}, Le2/g$a;->e(I)Le2/g$a;

    .line 12
    invoke-virtual {v3, v2}, Le2/g$a;->c(I)Le2/g$a;

    if-eqz p2, :cond_3

    const v2, 0x7f060091

    goto :goto_1

    :cond_3
    const v2, 0x7f06005e

    .line 13
    :goto_1
    invoke-virtual {v3, v2}, Le2/g$a;->a(I)Le2/g$a;

    .line 14
    iput-boolean v1, v3, Le2/g$a;->y:Z

    .line 15
    iput-boolean v1, v3, Le2/g$a;->z:Z

    const v2, 0x7f0c004a

    .line 16
    invoke-virtual {v3, v2, v1}, Le2/g$a;->d(IZ)Le2/g$a;

    const v2, 0x7f11018f

    .line 17
    invoke-virtual {v3, v2}, Le2/g$a;->i(I)Le2/g$a;

    new-instance v2, Ly2/l;

    const/16 v4, 0xe

    invoke-direct {v2, p0, v4}, Ly2/l;-><init>(Ljava/lang/Object;I)V

    .line 18
    iput-object v2, v3, Le2/g$a;->u:Le2/g$c;

    const v2, 0x7f11006e

    .line 19
    invoke-virtual {v3, v2}, Le2/g$a;->g(I)Le2/g$a;

    move-result-object v2

    invoke-virtual {v2}, Le2/g$a;->j()Le2/g;

    move-result-object v2

    sput-object v2, Lcom/mglab/scm/visual/c;->k:Le2/g;

    .line 20
    iget-object v2, v2, Le2/g;->c:Le2/g$a;

    iget-object v2, v2, Le2/g$a;->o:Landroid/view/View;

    const v3, 0x7f0901e8

    .line 21
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/rengwuxian/materialedittext/MaterialEditText;

    .line 22
    new-instance v4, Lcom/mglab/scm/visual/c$e;

    invoke-direct {v4, p0, v3}, Lcom/mglab/scm/visual/c$e;-><init>(Lcom/mglab/scm/visual/c;Landroid/widget/EditText;)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 23
    iget-boolean v4, p0, Lcom/mglab/scm/visual/c;->e:Z

    if-eqz v4, :cond_4

    .line 24
    iget-object v4, p0, Lcom/mglab/scm/visual/c;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f1100bd

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 25
    :cond_4
    iget-object v4, p0, Lcom/mglab/scm/visual/c;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f1100bb

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 26
    :goto_2
    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 27
    invoke-virtual {v3, v4}, Lcom/rengwuxian/materialedittext/MaterialEditText;->setFloatingLabelText(Ljava/lang/CharSequence;)V

    const v4, 0x7f090249

    .line 28
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;

    .line 29
    iget-object v5, p0, Lcom/mglab/scm/visual/c;->a:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f1100b8

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 30
    invoke-virtual {v4, v5}, Landroid/widget/AutoCompleteTextView;->setHint(Ljava/lang/CharSequence;)V

    .line 31
    invoke-virtual {v4, v5}, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->setFloatingLabelText(Ljava/lang/CharSequence;)V

    .line 32
    new-instance v5, Landroid/widget/ArrayAdapter;

    iget-object v6, p0, Lcom/mglab/scm/visual/c;->a:Landroid/content/Context;

    const v7, 0x1090003

    .line 33
    invoke-static {}, Lh8/q;->p()Ljava/util/ArrayList;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 34
    invoke-virtual {v4, v5}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    if-eqz p2, :cond_5

    const p2, 0x7f060033

    .line 35
    invoke-virtual {v4, p2}, Landroidx/appcompat/widget/d;->setDropDownBackgroundResource(I)V

    :cond_5
    const p2, 0x7f090222

    .line 36
    invoke-virtual {v2, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    iput-object p2, p0, Lcom/mglab/scm/visual/c;->c:Landroid/widget/FrameLayout;

    .line 37
    iget-boolean v5, p0, Lcom/mglab/scm/visual/c;->e:Z

    const/16 v6, 0x8

    const/4 v7, 0x0

    if-nez v5, :cond_7

    if-ne p1, v1, :cond_6

    goto :goto_3

    :cond_6
    const/4 p1, 0x0

    goto :goto_4

    :cond_7
    :goto_3
    const/16 p1, 0x8

    :goto_4
    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 38
    sget-object p1, Lcom/mglab/scm/visual/c;->k:Le2/g;

    sget-object p2, Le2/b;->a:Le2/b;

    invoke-virtual {p1, p2}, Le2/g;->c(Le2/b;)Lcom/afollestad/materialdialogs/internal/MDButton;

    move-result-object p1

    invoke-virtual {p1, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 39
    invoke-virtual {v4, p3}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    invoke-virtual {v3, p4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f0901e9

    .line 41
    invoke-virtual {v2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 42
    iget-boolean p2, p0, Lcom/mglab/scm/visual/c;->e:Z

    if-nez p2, :cond_8

    const/4 v6, 0x0

    :cond_8
    invoke-virtual {p1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 43
    new-instance p2, Lo8/z;

    invoke-direct {p2, p0, p1, v3}, Lo8/z;-><init>(Lcom/mglab/scm/visual/c;Landroid/widget/ImageView;Lcom/rengwuxian/materialedittext/MaterialEditText;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f090305

    .line 44
    invoke-virtual {v2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/SwitchCompat;

    const p2, 0x7f0900c5

    .line 45
    invoke-virtual {v2, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Spinner;

    new-instance p3, Lcom/mglab/scm/visual/c$b;

    invoke-direct {p3, p0, p1}, Lcom/mglab/scm/visual/c$b;-><init>(Lcom/mglab/scm/visual/c;Landroidx/appcompat/widget/SwitchCompat;)V

    invoke-virtual {p2, p3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 46
    new-instance p2, Lm8/f;

    invoke-direct {p2, p0, p1, v0}, Lm8/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p1, p2}, Landroid/widget/CompoundButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public f(I)V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    if-eq p1, v0, :cond_0

    return-void

    .line 1
    :cond_0
    iput p1, p0, Lcom/mglab/scm/visual/c;->d:I

    .line 2
    iget-object v1, p0, Lcom/mglab/scm/visual/c;->a:Landroid/content/Context;

    invoke-static {v1}, Lf8/h;->H(Landroid/content/Context;)Z

    move-result v1

    .line 3
    new-instance v2, Le2/g$a;

    iget-object v3, p0, Lcom/mglab/scm/visual/c;->a:Landroid/content/Context;

    invoke-direct {v2, v3}, Le2/g$a;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/mglab/scm/visual/c;->a:Landroid/content/Context;

    .line 4
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1100a2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 5
    iput-object v3, v2, Le2/g$a;->b:Ljava/lang/CharSequence;

    const v3, 0x7f06005b

    .line 6
    invoke-virtual {v2, v3}, Le2/g$a;->l(I)Le2/g$a;

    const v3, 0x1080036

    .line 7
    invoke-virtual {v2, v3}, Le2/g$a;->e(I)Le2/g$a;

    const v3, 0x7f06005e

    if-eqz v1, :cond_1

    const v4, 0x7f06005e

    goto :goto_0

    :cond_1
    const v4, 0x7f060033

    .line 8
    :goto_0
    invoke-virtual {v2, v4}, Le2/g$a;->c(I)Le2/g$a;

    if-eqz v1, :cond_2

    const v3, 0x7f060091

    .line 9
    :cond_2
    invoke-virtual {v2, v3}, Le2/g$a;->a(I)Le2/g$a;

    .line 10
    iput-boolean v0, v2, Le2/g$a;->y:Z

    .line 11
    iput-boolean v0, v2, Le2/g$a;->z:Z

    const v1, 0x7f0c004b

    const/4 v3, 0x0

    .line 12
    invoke-virtual {v2, v1, v3}, Le2/g$a;->d(IZ)Le2/g$a;

    const v1, 0x7f11018f

    .line 13
    invoke-virtual {v2, v1}, Le2/g$a;->i(I)Le2/g$a;

    new-instance v1, Lcom/mglab/scm/visual/b;

    invoke-direct {v1, p0, p1, v0}, Lcom/mglab/scm/visual/b;-><init>(Lcom/mglab/scm/visual/c;II)V

    .line 14
    iput-object v1, v2, Le2/g$a;->u:Le2/g$c;

    const p1, 0x7f11006e

    .line 15
    invoke-virtual {v2, p1}, Le2/g$a;->g(I)Le2/g$a;

    invoke-virtual {v2}, Le2/g$a;->j()Le2/g;

    move-result-object p1

    sput-object p1, Lcom/mglab/scm/visual/c;->k:Le2/g;

    .line 16
    sget-object v0, Le2/b;->a:Le2/b;

    invoke-virtual {p1, v0}, Le2/g;->c(Le2/b;)Lcom/afollestad/materialdialogs/internal/MDButton;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 17
    sget-object p1, Lcom/mglab/scm/visual/c;->k:Le2/g;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    sget-object p1, Lcom/mglab/scm/visual/c;->k:Le2/g;

    const v0, 0x7f0901dd

    invoke-virtual {p1, v0}, Le2/c;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 20
    new-instance v1, Lo8/e;

    iget-object v2, p0, Lcom/mglab/scm/visual/c;->a:Landroid/content/Context;

    const-string v3, "android.permission.READ_CALL_LOG"

    .line 21
    invoke-static {v2, v3}, Ld0/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x3

    if-eqz v3, :cond_3

    .line 22
    invoke-static {}, Lba/b;->b()Lba/b;

    move-result-object v3

    new-instance v5, Lk8/f;

    invoke-direct {v5, v4}, Lk8/f;-><init>(I)V

    invoke-virtual {v3, v5}, Lba/b;->g(Ljava/lang/Object;)V

    goto :goto_1

    .line 23
    :cond_3
    new-instance v3, Ljava/lang/Thread;

    new-instance v5, Ly2/d;

    invoke-direct {v5, p0, v0, v4}, Ly2/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-direct {v3, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 24
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 25
    :goto_1
    invoke-direct {v1, v2, v0}, Lo8/e;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 26
    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 27
    new-instance v2, Lo8/b0;

    invoke-direct {v2, v0, v1}, Lo8/b0;-><init>(Ljava/util/List;Lo8/e;)V

    invoke-virtual {p1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method public finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 2
    invoke-static {}, Lba/b;->b()Lba/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lba/b;->m(Ljava/lang/Object;)V

    return-void
.end method

.method public g(I)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    if-eq p1, v0, :cond_0

    return-void

    .line 1
    :cond_0
    iput p1, p0, Lcom/mglab/scm/visual/c;->d:I

    .line 2
    iget-object v1, p0, Lcom/mglab/scm/visual/c;->a:Landroid/content/Context;

    invoke-static {v1}, Lf8/h;->H(Landroid/content/Context;)Z

    move-result v1

    .line 3
    new-instance v2, Le2/g$a;

    iget-object v3, p0, Lcom/mglab/scm/visual/c;->a:Landroid/content/Context;

    invoke-direct {v2, v3}, Le2/g$a;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/mglab/scm/visual/c;->a:Landroid/content/Context;

    .line 4
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1100a6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 5
    iput-object v3, v2, Le2/g$a;->b:Ljava/lang/CharSequence;

    const v3, 0x7f06005b

    .line 6
    invoke-virtual {v2, v3}, Le2/g$a;->l(I)Le2/g$a;

    const v3, 0x7f0800fe

    .line 7
    invoke-virtual {v2, v3}, Le2/g$a;->e(I)Le2/g$a;

    const v3, 0x7f06005e

    if-eqz v1, :cond_1

    const v4, 0x7f06005e

    goto :goto_0

    :cond_1
    const v4, 0x7f060033

    .line 8
    :goto_0
    invoke-virtual {v2, v4}, Le2/g$a;->c(I)Le2/g$a;

    if-eqz v1, :cond_2

    const v3, 0x7f060091

    .line 9
    :cond_2
    invoke-virtual {v2, v3}, Le2/g$a;->a(I)Le2/g$a;

    .line 10
    iput-boolean v0, v2, Le2/g$a;->y:Z

    .line 11
    iput-boolean v0, v2, Le2/g$a;->z:Z

    const v0, 0x7f0c004c

    const/4 v1, 0x0

    .line 12
    invoke-virtual {v2, v0, v1}, Le2/g$a;->d(IZ)Le2/g$a;

    const v0, 0x7f11018f

    .line 13
    invoke-virtual {v2, v0}, Le2/g$a;->i(I)Le2/g$a;

    new-instance v0, Lcom/mglab/scm/visual/b;

    invoke-direct {v0, p0, p1, v1}, Lcom/mglab/scm/visual/b;-><init>(Lcom/mglab/scm/visual/c;II)V

    .line 14
    iput-object v0, v2, Le2/g$a;->u:Le2/g$c;

    const p1, 0x7f11006e

    .line 15
    invoke-virtual {v2, p1}, Le2/g$a;->g(I)Le2/g$a;

    invoke-virtual {v2}, Le2/g$a;->j()Le2/g;

    move-result-object p1

    sput-object p1, Lcom/mglab/scm/visual/c;->k:Le2/g;

    .line 16
    sget-object v0, Le2/b;->a:Le2/b;

    invoke-virtual {p1, v0}, Le2/g;->c(Le2/b;)Lcom/afollestad/materialdialogs/internal/MDButton;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 17
    sget-object p1, Lcom/mglab/scm/visual/c;->k:Le2/g;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    sget-object p1, Lcom/mglab/scm/visual/c;->k:Le2/g;

    const v0, 0x7f0901dd

    invoke-virtual {p1, v0}, Le2/c;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lcom/mglab/scm/visual/c;->j:Landroid/widget/ListView;

    .line 19
    new-instance p1, Lo8/j;

    iget-object v0, p0, Lcom/mglab/scm/visual/c;->a:Landroid/content/Context;

    const-string v1, "android.permission.READ_CONTACTS"

    .line 20
    invoke-static {v0, v1}, Ld0/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x3

    if-eqz v1, :cond_3

    .line 21
    invoke-static {}, Lba/b;->b()Lba/b;

    move-result-object v1

    new-instance v3, Lk8/f;

    invoke-direct {v3, v2}, Lk8/f;-><init>(I)V

    invoke-virtual {v1, v3}, Lba/b;->g(Ljava/lang/Object;)V

    .line 22
    iget-object v1, p0, Lcom/mglab/scm/visual/c;->h:Ljava/util/List;

    goto :goto_1

    .line 23
    :cond_3
    new-instance v1, Ljava/lang/Thread;

    new-instance v3, Landroidx/appcompat/widget/a1;

    const/4 v4, 0x4

    invoke-direct {v3, p0, v4}, Landroidx/appcompat/widget/a1;-><init>(Ljava/lang/Object;I)V

    invoke-direct {v1, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 24
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 25
    iget-object v1, p0, Lcom/mglab/scm/visual/c;->i:Ljava/util/List;

    .line 26
    :goto_1
    invoke-direct {p1, v0, v1}, Lo8/j;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object p1, p0, Lcom/mglab/scm/visual/c;->g:Lo8/j;

    .line 27
    iget-object v0, p0, Lcom/mglab/scm/visual/c;->j:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 28
    iget-object p1, p0, Lcom/mglab/scm/visual/c;->j:Landroid/widget/ListView;

    new-instance v0, Lcom/mglab/scm/visual/a;

    invoke-direct {v0, p0}, Lcom/mglab/scm/visual/a;-><init>(Lcom/mglab/scm/visual/c;)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 29
    sget-object p1, Lcom/mglab/scm/visual/c;->k:Le2/g;

    const v0, 0x7f090169

    invoke-virtual {p1, v0}, Le2/c;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/rengwuxian/materialedittext/MaterialEditText;

    .line 30
    new-instance v0, Lcom/mglab/scm/visual/c$c;

    invoke-direct {v0, p0}, Lcom/mglab/scm/visual/c$c;-><init>(Lcom/mglab/scm/visual/c;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 31
    sget-object p1, Lcom/mglab/scm/visual/c;->k:Le2/g;

    const v0, 0x7f0902ea

    invoke-virtual {p1, v0}, Le2/c;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    .line 32
    sget-object v0, Lcom/mglab/scm/visual/c;->k:Le2/g;

    const v1, 0x7f090117

    invoke-virtual {v0, v1}, Le2/c;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 33
    new-instance v1, Ll8/q;

    invoke-direct {v1, p0, v2}, Ll8/q;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    new-instance p1, Ll8/p;

    invoke-direct {p1, p0, v2}, Ll8/p;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public h(I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, v1}, Lcom/mglab/scm/visual/c;->i(IILw8/k$b;)V

    return-void
.end method

.method public i(IILw8/k$b;)V
    .locals 8

    const/4 v0, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    if-eq p1, v1, :cond_0

    if-eq p1, v0, :cond_0

    const/4 v2, 0x5

    if-eq p1, v2, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v2, p0, Lcom/mglab/scm/visual/c;->a:Landroid/content/Context;

    invoke-static {v2}, Lf8/h;->H(Landroid/content/Context;)Z

    move-result v2

    if-ne p1, v0, :cond_1

    const-string v0, "Clear cache?"

    goto :goto_1

    .line 2
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mglab/scm/visual/c;->a:Landroid/content/Context;

    if-nez p2, :cond_2

    const v4, 0x7f11007c

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_2
    const v4, 0x7f110098

    new-array v5, v1, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :goto_0
    const-string v4, "?"

    invoke-static {v0, v3, v4}, Landroid/support/v4/media/b;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    :goto_1
    new-instance v3, Le2/g$a;

    iget-object v4, p0, Lcom/mglab/scm/visual/c;->a:Landroid/content/Context;

    invoke-direct {v3, v4}, Le2/g$a;-><init>(Landroid/content/Context;)V

    .line 4
    iput-object v0, v3, Le2/g$a;->b:Ljava/lang/CharSequence;

    const v0, 0x7f06005b

    .line 5
    invoke-virtual {v3, v0}, Le2/g$a;->l(I)Le2/g$a;

    const v0, 0x7f0800fc

    .line 6
    invoke-virtual {v3, v0}, Le2/g$a;->e(I)Le2/g$a;

    const v0, 0x7f06005e

    if-eqz v2, :cond_3

    const v4, 0x7f060091

    goto :goto_2

    :cond_3
    const v4, 0x7f06005e

    .line 7
    :goto_2
    invoke-virtual {v3, v4}, Le2/g$a;->a(I)Le2/g$a;

    if-eqz v2, :cond_4

    goto :goto_3

    :cond_4
    const v0, 0x7f060033

    .line 8
    :goto_3
    invoke-virtual {v3, v0}, Le2/g$a;->c(I)Le2/g$a;

    .line 9
    iput-boolean v1, v3, Le2/g$a;->y:Z

    .line 10
    iput-boolean v1, v3, Le2/g$a;->z:Z

    const v0, 0x7f11018f

    .line 11
    invoke-virtual {v3, v0}, Le2/g$a;->i(I)Le2/g$a;

    new-instance v0, Lo8/c0;

    invoke-direct {v0, p0, p1, p2, p3}, Lo8/c0;-><init>(Lcom/mglab/scm/visual/c;IILw8/k$b;)V

    .line 12
    iput-object v0, v3, Le2/g$a;->u:Le2/g$c;

    const p1, 0x7f11006e

    .line 13
    invoke-virtual {v3, p1}, Le2/g$a;->g(I)Le2/g$a;

    invoke-virtual {v3}, Le2/g$a;->j()Le2/g;

    move-result-object p1

    sput-object p1, Lcom/mglab/scm/visual/c;->k:Le2/g;

    return-void
.end method

.method public j(ILcom/mglab/scm/visual/CallItem;)V
    .locals 2

    .line 1
    iput-object p2, p0, Lcom/mglab/scm/visual/c;->f:Lcom/mglab/scm/visual/CallItem;

    .line 2
    invoke-virtual {p2}, Lcom/mglab/scm/visual/CallItem;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/mglab/scm/visual/CallItem;->e()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0, p2}, Lcom/mglab/scm/visual/c;->k(IZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final k(IZLjava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p1, v0, :cond_0

    if-eq p1, v1, :cond_0

    const/4 v2, 0x5

    if-eq p1, v2, :cond_0

    return-void

    .line 1
    :cond_0
    iput p1, p0, Lcom/mglab/scm/visual/c;->d:I

    .line 2
    iput-boolean p2, p0, Lcom/mglab/scm/visual/c;->e:Z

    .line 3
    iget-object v2, p0, Lcom/mglab/scm/visual/c;->a:Landroid/content/Context;

    invoke-static {v2}, Lf8/h;->H(Landroid/content/Context;)Z

    move-result v2

    if-eqz p2, :cond_1

    .line 4
    iget-object p1, p0, Lcom/mglab/scm/visual/c;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1100a9

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    if-ne p1, v0, :cond_2

    .line 5
    iget-object p1, p0, Lcom/mglab/scm/visual/c;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1100a8

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    if-ne p1, v1, :cond_3

    .line 6
    iget-object p1, p0, Lcom/mglab/scm/visual/c;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1100ab

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 7
    :cond_3
    iget-object p1, p0, Lcom/mglab/scm/visual/c;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1100aa

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 8
    :goto_0
    new-instance v0, Le2/g$a;

    iget-object v3, p0, Lcom/mglab/scm/visual/c;->a:Landroid/content/Context;

    invoke-direct {v0, v3}, Le2/g$a;-><init>(Landroid/content/Context;)V

    .line 9
    iput-object p1, v0, Le2/g$a;->b:Ljava/lang/CharSequence;

    const p1, 0x7f06005b

    .line 10
    invoke-virtual {v0, p1}, Le2/g$a;->l(I)Le2/g$a;

    const v3, 0x7f0800fc

    .line 11
    invoke-virtual {v0, v3}, Le2/g$a;->e(I)Le2/g$a;

    if-eqz v2, :cond_4

    .line 12
    iget-object v2, p0, Lcom/mglab/scm/visual/c;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060091

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/mglab/scm/visual/c;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06005e

    :goto_1
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 13
    iput v2, v0, Le2/g$a;->J:I

    .line 14
    invoke-virtual {v0, p1}, Le2/g$a;->c(I)Le2/g$a;

    .line 15
    iput-boolean v1, v0, Le2/g$a;->y:Z

    .line 16
    iput-boolean v1, v0, Le2/g$a;->z:Z

    const p1, 0x7f0c004a

    .line 17
    invoke-virtual {v0, p1, v1}, Le2/g$a;->d(IZ)Le2/g$a;

    const p1, 0x7f11018f

    .line 18
    invoke-virtual {v0, p1}, Le2/g$a;->i(I)Le2/g$a;

    new-instance p1, Lz2/q;

    const/16 v1, 0xa

    invoke-direct {p1, p0, v1}, Lz2/q;-><init>(Ljava/lang/Object;I)V

    .line 19
    iput-object p1, v0, Le2/g$a;->u:Le2/g$c;

    const p1, 0x7f11006e

    .line 20
    invoke-virtual {v0, p1}, Le2/g$a;->g(I)Le2/g$a;

    move-result-object p1

    invoke-virtual {p1}, Le2/g$a;->j()Le2/g;

    move-result-object p1

    sput-object p1, Lcom/mglab/scm/visual/c;->k:Le2/g;

    .line 21
    iget-object p1, p1, Le2/g;->c:Le2/g$a;

    iget-object p1, p1, Le2/g$a;->o:Landroid/view/View;

    const v0, 0x7f0901e8

    .line 22
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/rengwuxian/materialedittext/MaterialEditText;

    if-eqz p2, :cond_5

    .line 23
    iget-object p2, p0, Lcom/mglab/scm/visual/c;->a:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f1100bd

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    .line 24
    :cond_5
    iget-object p2, p0, Lcom/mglab/scm/visual/c;->a:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f1100bb

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 25
    :goto_2
    invoke-virtual {v0, p2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 26
    invoke-virtual {v0, p2}, Lcom/rengwuxian/materialedittext/MaterialEditText;->setFloatingLabelText(Ljava/lang/CharSequence;)V

    const/4 p2, 0x0

    .line 27
    invoke-virtual {v0, p2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 28
    invoke-virtual {v0, p2}, Landroid/widget/EditText;->setFocusable(Z)V

    const v1, 0x7f090249

    .line 29
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;

    .line 30
    iget-object v2, p0, Lcom/mglab/scm/visual/c;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1100b8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 31
    invoke-virtual {v1, v2}, Landroid/widget/AutoCompleteTextView;->setHint(Ljava/lang/CharSequence;)V

    .line 32
    invoke-virtual {v1, v2}, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->setFloatingLabelText(Ljava/lang/CharSequence;)V

    .line 33
    invoke-virtual {v1, p2}, Landroid/widget/AutoCompleteTextView;->setFocusable(Z)V

    .line 34
    invoke-virtual {v1, p2}, Landroid/widget/AutoCompleteTextView;->setEnabled(Z)V

    const/16 v2, 0x8

    if-nez p3, :cond_6

    .line 35
    invoke-virtual {v1, v2}, Landroid/widget/AutoCompleteTextView;->setVisibility(I)V

    goto :goto_3

    .line 36
    :cond_6
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_7

    const/16 p2, 0x8

    :cond_7
    invoke-virtual {v1, p2}, Landroid/widget/AutoCompleteTextView;->setVisibility(I)V

    :goto_3
    const p2, 0x7f090222

    .line 37
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    iput-object p2, p0, Lcom/mglab/scm/visual/c;->c:Landroid/widget/FrameLayout;

    .line 38
    invoke-virtual {p2, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 39
    invoke-virtual {v1, p3}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    invoke-virtual {v0, p4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f0901e9

    .line 41
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 42
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public l(Lcom/mglab/scm/visual/BWLItem;)V
    .locals 3

    .line 1
    iget-object v0, p1, Lcom/mglab/scm/visual/BWLItem;->b:Lh8/c;

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 2
    :goto_0
    invoke-virtual {p1}, Lcom/mglab/scm/visual/BWLItem;->e()Z

    move-result v1

    .line 3
    iget-object v2, p1, Lcom/mglab/scm/visual/BWLItem;->b:Lh8/c;

    if-eqz v2, :cond_1

    iget-object v2, v2, Lh8/c;->d:Ljava/lang/String;

    goto :goto_1

    :cond_1
    iget-object v2, p1, Lcom/mglab/scm/visual/BWLItem;->c:Lh8/w;

    iget-object v2, v2, Lh8/w;->d:Ljava/lang/String;

    .line 4
    :goto_1
    invoke-virtual {p1}, Lcom/mglab/scm/visual/BWLItem;->d()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/mglab/scm/visual/c;->k(IZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public m(Lcom/mglab/scm/visual/BWLItem;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-object v2, v1, Lcom/mglab/scm/visual/BWLItem;->b:Lh8/c;

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    .line 2
    :goto_0
    iput v2, v0, Lcom/mglab/scm/visual/c;->d:I

    .line 3
    invoke-virtual/range {p1 .. p1}, Lcom/mglab/scm/visual/BWLItem;->e()Z

    move-result v2

    iput-boolean v2, v0, Lcom/mglab/scm/visual/c;->e:Z

    .line 4
    iget-object v2, v0, Lcom/mglab/scm/visual/c;->a:Landroid/content/Context;

    invoke-static {v2}, Lf8/h;->H(Landroid/content/Context;)Z

    move-result v2

    .line 5
    iget-boolean v5, v0, Lcom/mglab/scm/visual/c;->e:Z

    if-eqz v5, :cond_1

    .line 6
    iget-object v5, v0, Lcom/mglab/scm/visual/c;->a:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f1100ad

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 7
    :cond_1
    iget-object v5, v0, Lcom/mglab/scm/visual/c;->a:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f1100ae

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 8
    :goto_1
    new-instance v6, Le2/g$a;

    iget-object v7, v0, Lcom/mglab/scm/visual/c;->a:Landroid/content/Context;

    invoke-direct {v6, v7}, Le2/g$a;-><init>(Landroid/content/Context;)V

    .line 9
    iput-object v5, v6, Le2/g$a;->b:Ljava/lang/CharSequence;

    const v5, 0x7f06005b

    .line 10
    invoke-virtual {v6, v5}, Le2/g$a;->l(I)Le2/g$a;

    if-eqz v2, :cond_2

    .line 11
    iget-object v2, v0, Lcom/mglab/scm/visual/c;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v7, 0x7f060091

    goto :goto_2

    :cond_2
    iget-object v2, v0, Lcom/mglab/scm/visual/c;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v7, 0x7f06005e

    :goto_2
    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 12
    iput v2, v6, Le2/g$a;->J:I

    const v2, 0x108003e

    .line 13
    invoke-virtual {v6, v2}, Le2/g$a;->e(I)Le2/g$a;

    .line 14
    invoke-virtual {v6, v5}, Le2/g$a;->c(I)Le2/g$a;

    .line 15
    iput-boolean v4, v6, Le2/g$a;->y:Z

    .line 16
    iput-boolean v4, v6, Le2/g$a;->z:Z

    const v2, 0x7f0c004a

    .line 17
    invoke-virtual {v6, v2, v4}, Le2/g$a;->d(IZ)Le2/g$a;

    const v2, 0x7f11018f

    .line 18
    invoke-virtual {v6, v2}, Le2/g$a;->i(I)Le2/g$a;

    new-instance v2, Lm8/h;

    invoke-direct {v2, v0, v1}, Lm8/h;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 19
    iput-object v2, v6, Le2/g$a;->u:Le2/g$c;

    const v2, 0x7f11006e

    .line 20
    invoke-virtual {v6, v2}, Le2/g$a;->g(I)Le2/g$a;

    invoke-virtual {v6}, Le2/g$a;->j()Le2/g;

    move-result-object v2

    sput-object v2, Lcom/mglab/scm/visual/c;->k:Le2/g;

    .line 21
    iget-object v2, v2, Le2/g;->c:Le2/g$a;

    iget-object v2, v2, Le2/g$a;->o:Landroid/view/View;

    const v5, 0x7f0901e8

    .line 22
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/rengwuxian/materialedittext/MaterialEditText;

    .line 23
    new-instance v6, Lcom/mglab/scm/visual/c$d;

    invoke-virtual/range {p1 .. p1}, Lcom/mglab/scm/visual/BWLItem;->c()I

    move-result v7

    invoke-direct {v6, v0, v5, v7}, Lcom/mglab/scm/visual/c$d;-><init>(Lcom/mglab/scm/visual/c;Landroid/widget/EditText;I)V

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 24
    iget-boolean v6, v0, Lcom/mglab/scm/visual/c;->e:Z

    if-eqz v6, :cond_3

    .line 25
    iget-object v6, v0, Lcom/mglab/scm/visual/c;->a:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f1100bd

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    .line 26
    :cond_3
    iget-object v6, v0, Lcom/mglab/scm/visual/c;->a:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f1100bb

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 27
    :goto_3
    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 28
    invoke-virtual {v5, v6}, Lcom/rengwuxian/materialedittext/MaterialEditText;->setFloatingLabelText(Ljava/lang/CharSequence;)V

    const v6, 0x7f090249

    .line 29
    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;

    .line 30
    iget-object v7, v0, Lcom/mglab/scm/visual/c;->a:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f1100b8

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 31
    invoke-virtual {v6, v7}, Landroid/widget/AutoCompleteTextView;->setHint(Ljava/lang/CharSequence;)V

    .line 32
    invoke-virtual {v6, v7}, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->setFloatingLabelText(Ljava/lang/CharSequence;)V

    .line 33
    new-instance v7, Landroid/widget/ArrayAdapter;

    iget-object v8, v0, Lcom/mglab/scm/visual/c;->a:Landroid/content/Context;

    const v9, 0x1090003

    .line 34
    invoke-virtual/range {p1 .. p1}, Lcom/mglab/scm/visual/BWLItem;->c()I

    move-result v10

    .line 35
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    const/4 v12, 0x0

    new-array v13, v12, [Lx8/a;

    .line 36
    new-instance v14, Lw8/o;

    invoke-direct {v14, v13}, Lw8/o;-><init>([Lx8/a;)V

    .line 37
    const-class v13, Lh8/c;

    .line 38
    new-instance v15, Lw8/g;

    invoke-direct {v15, v14, v13}, Lw8/g;-><init>(Lv8/a;Ljava/lang/Class;)V

    new-array v13, v4, [Lw8/n;

    .line 39
    sget-object v14, Lh8/d;->f:Lx8/b;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v14, v3}, Lx8/b;->g(Ljava/lang/Object;)Lw8/k;

    move-result-object v3

    aput-object v3, v13, v12

    .line 40
    new-instance v3, Lw8/r;

    invoke-direct {v3, v15, v13}, Lw8/r;-><init>(Lw8/e;[Lw8/n;)V

    .line 41
    invoke-virtual {v3}, Lw8/r;->l()Ljava/util/List;

    move-result-object v3

    .line 42
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lh8/c;

    .line 43
    iget-object v14, v13, Lh8/c;->d:Ljava/lang/String;

    invoke-static {v14, v11}, Lh8/q;->a(Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 44
    iget-object v13, v13, Lh8/c;->d:Ljava/lang/String;

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_5
    new-array v3, v12, [Lx8/a;

    .line 45
    new-instance v13, Lw8/o;

    invoke-direct {v13, v3}, Lw8/o;-><init>([Lx8/a;)V

    .line 46
    const-class v3, Lh8/w;

    .line 47
    new-instance v14, Lw8/g;

    invoke-direct {v14, v13, v3}, Lw8/g;-><init>(Lv8/a;Ljava/lang/Class;)V

    new-array v3, v4, [Lw8/n;

    .line 48
    sget-object v13, Lh8/x;->f:Lx8/b;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v13, v10}, Lx8/b;->g(Ljava/lang/Object;)Lw8/k;

    move-result-object v10

    aput-object v10, v3, v12

    .line 49
    new-instance v10, Lw8/r;

    invoke-direct {v10, v14, v3}, Lw8/r;-><init>(Lw8/e;[Lw8/n;)V

    .line 50
    invoke-virtual {v10}, Lw8/r;->l()Ljava/util/List;

    move-result-object v3

    .line 51
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lh8/w;

    .line 52
    iget-object v13, v10, Lh8/w;->d:Ljava/lang/String;

    invoke-static {v13, v11}, Lh8/q;->a(Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 53
    iget-object v10, v10, Lh8/w;->d:Ljava/lang/String;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 54
    :cond_7
    invoke-direct {v7, v8, v9, v11}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 55
    invoke-virtual {v6, v7}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    const v3, 0x7f090222

    .line 56
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, v0, Lcom/mglab/scm/visual/c;->c:Landroid/widget/FrameLayout;

    .line 57
    iget-boolean v7, v0, Lcom/mglab/scm/visual/c;->e:Z

    const/16 v8, 0x8

    if-nez v7, :cond_9

    iget v7, v0, Lcom/mglab/scm/visual/c;->d:I

    if-ne v7, v4, :cond_8

    goto :goto_6

    :cond_8
    const/4 v7, 0x0

    goto :goto_7

    :cond_9
    :goto_6
    const/16 v7, 0x8

    :goto_7
    invoke-virtual {v3, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 58
    sget-object v3, Lcom/mglab/scm/visual/c;->k:Le2/g;

    sget-object v7, Le2/b;->a:Le2/b;

    invoke-virtual {v3, v7}, Le2/g;->c(Le2/b;)Lcom/afollestad/materialdialogs/internal/MDButton;

    move-result-object v3

    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 59
    iget-object v3, v1, Lcom/mglab/scm/visual/BWLItem;->b:Lh8/c;

    if-eqz v3, :cond_a

    iget-object v3, v3, Lh8/c;->d:Ljava/lang/String;

    goto :goto_8

    :cond_a
    iget-object v3, v1, Lcom/mglab/scm/visual/BWLItem;->c:Lh8/w;

    iget-object v3, v3, Lh8/w;->d:Ljava/lang/String;

    .line 60
    :goto_8
    invoke-virtual {v6, v3}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    invoke-virtual/range {p1 .. p1}, Lcom/mglab/scm/visual/BWLItem;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const v3, 0x7f0901e9

    .line 62
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 63
    iget-boolean v6, v0, Lcom/mglab/scm/visual/c;->e:Z

    if-nez v6, :cond_b

    iget v6, v0, Lcom/mglab/scm/visual/c;->d:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_b

    const/4 v8, 0x0

    :cond_b
    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 64
    new-instance v6, Lo8/y;

    invoke-direct {v6, v0, v3, v5}, Lo8/y;-><init>(Lcom/mglab/scm/visual/c;Landroid/widget/ImageView;Lcom/rengwuxian/materialedittext/MaterialEditText;)V

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x7f090305

    .line 65
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/SwitchCompat;

    const v5, 0x7f0900c5

    .line 66
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    .line 67
    iget-object v1, v1, Lcom/mglab/scm/visual/BWLItem;->b:Lh8/c;

    if-eqz v1, :cond_c

    iget v12, v1, Lh8/c;->f:I

    .line 68
    :cond_c
    invoke-virtual {v2, v12}, Landroid/widget/Spinner;->setSelection(I)V

    .line 69
    invoke-virtual {v2, v4}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 70
    new-instance v1, Lcom/mglab/scm/visual/c$a;

    invoke-direct {v1, v0, v3}, Lcom/mglab/scm/visual/c$a;-><init>(Lcom/mglab/scm/visual/c;Landroidx/appcompat/widget/SwitchCompat;)V

    invoke-virtual {v2, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 71
    new-instance v1, Lm8/e;

    invoke-direct {v1, v0, v3, v4}, Lm8/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v3, v1}, Landroid/widget/CompoundButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final n(Lm8/d;Z)V
    .locals 5

    .line 1
    sget-object v0, Lcom/mglab/scm/visual/c;->k:Le2/g;

    const v1, 0x7f090249

    invoke-virtual {v0, v1}, Le2/c;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/mglab/scm/visual/c;->k:Le2/g;

    const v2, 0x7f090354

    invoke-virtual {v1, v2}, Le2/c;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3
    sget-object v2, Lcom/mglab/scm/visual/c;->k:Le2/g;

    const v3, 0x7f09029f

    invoke-virtual {v2, v3}, Le2/c;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 4
    sget-object v3, Lcom/mglab/scm/visual/c;->k:Le2/g;

    const v4, 0x7f0900c5

    invoke-virtual {v3, v4}, Le2/c;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    .line 5
    iput-object v0, p1, Lm8/d;->d:Ljava/lang/String;

    .line 6
    iput-object v1, p1, Lm8/d;->e:Ljava/lang/String;

    .line 7
    iput v3, p1, Lm8/d;->g:I

    .line 8
    iput v2, p1, Lm8/d;->f:I

    .line 9
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 10
    iput-object v0, p1, Lm8/d;->l:Ljava/util/Date;

    const/4 v0, 0x0

    .line 11
    iput v0, p1, Lm8/d;->h:I

    .line 12
    iput v0, p1, Lm8/d;->i:I

    .line 13
    invoke-virtual {p1, p2}, Lm8/d;->g(Z)V

    return-void
.end method

.method public final o(Landroidx/appcompat/widget/SwitchCompat;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mglab/scm/visual/c;->a:Landroid/content/Context;

    const v1, 0x7f060244

    invoke-static {v0, v1}, Ld0/a;->b(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setTextColor(I)V

    .line 2
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isEnabled()Z

    move-result v0

    const v1, 0x7f06009b

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p1}, Landroidx/appcompat/widget/SwitchCompat;->getTrackDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v2, p0, Lcom/mglab/scm/visual/c;->a:Landroid/content/Context;

    const v3, 0x7f06009a

    invoke-static {v2, v3}, Ld0/a;->b(Landroid/content/Context;I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 4
    iget-object v0, p0, Lcom/mglab/scm/visual/c;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Ld0/a;->b(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setTextColor(I)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    invoke-virtual {p1}, Landroidx/appcompat/widget/SwitchCompat;->getTrackDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object v0, p0, Lcom/mglab/scm/visual/c;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Ld0/a;->b(Landroid/content/Context;I)I

    move-result v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onMessageEventDialog(Lk8/f;)V
    .locals 7
    .annotation runtime Lba/k;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    sget-object v0, Lcom/mglab/scm/visual/c;->k:Le2/g;

    const v1, 0x7f0903a0

    invoke-virtual {v0, v1}, Le2/c;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2
    sget-object v1, Lcom/mglab/scm/visual/c;->k:Le2/g;

    const v2, 0x7f0902bd

    invoke-virtual {v1, v2}, Le2/c;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    .line 3
    sget-object v2, Lcom/mglab/scm/visual/c;->k:Le2/g;

    const v3, 0x7f0901dd

    invoke-virtual {v2, v3}, Le2/c;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    .line 4
    iget p1, p1, Lk8/f;->a:I

    const/4 v3, 0x1

    const v4, 0x7f0900ec

    const/4 v5, 0x0

    const/16 v6, 0x8

    if-eq p1, v3, :cond_2

    const/4 v3, 0x2

    if-eq p1, v3, :cond_1

    const/4 v3, 0x3

    if-eq p1, v3, :cond_0

    goto/16 :goto_0

    .line 5
    :cond_0
    invoke-virtual {v2, v6}, Landroid/widget/ListView;->setVisibility(I)V

    .line 6
    invoke-virtual {v1, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 7
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 8
    iget-object p1, p0, Lcom/mglab/scm/visual/c;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f11017b

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    sget-object p1, Lcom/mglab/scm/visual/c;->k:Le2/g;

    invoke-virtual {p1, v4}, Le2/c;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 10
    sget-object p1, Lcom/mglab/scm/visual/c;->k:Le2/g;

    invoke-virtual {p1, v4}, Le2/c;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {v2, v6}, Landroid/widget/ListView;->setVisibility(I)V

    .line 12
    invoke-virtual {v1, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 13
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 14
    iget-object p1, p0, Lcom/mglab/scm/visual/c;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f1100d0

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    sget-object p1, Lcom/mglab/scm/visual/c;->k:Le2/g;

    invoke-virtual {p1, v4}, Le2/c;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 16
    sget-object p1, Lcom/mglab/scm/visual/c;->k:Le2/g;

    invoke-virtual {p1, v4}, Le2/c;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 17
    :cond_2
    invoke-virtual {v2, v5}, Landroid/widget/ListView;->setVisibility(I)V

    .line 18
    invoke-virtual {v1, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 19
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 20
    sget-object p1, Lcom/mglab/scm/visual/c;->k:Le2/g;

    const v0, 0x7f090169

    invoke-virtual {p1, v0}, Le2/c;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 21
    sget-object p1, Lcom/mglab/scm/visual/c;->k:Le2/g;

    invoke-virtual {p1, v0}, Le2/c;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 22
    :cond_3
    sget-object p1, Lcom/mglab/scm/visual/c;->k:Le2/g;

    invoke-virtual {p1, v4}, Le2/c;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 23
    sget-object p1, Lcom/mglab/scm/visual/c;->k:Le2/g;

    invoke-virtual {p1, v4}, Le2/c;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    :goto_0
    return-void
.end method
