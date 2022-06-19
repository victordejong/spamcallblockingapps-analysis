.class public final synthetic Lo8/e0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le2/g$c;


# instance fields
.field public final synthetic a:Lcom/mglab/scm/visual/c;

.field public final synthetic b:Lm8/d;

.field public final synthetic c:Z

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Z


# direct methods
.method public synthetic constructor <init>(Lcom/mglab/scm/visual/c;Lm8/d;ZLjava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo8/e0;->a:Lcom/mglab/scm/visual/c;

    iput-object p2, p0, Lo8/e0;->b:Lm8/d;

    iput-boolean p3, p0, Lo8/e0;->c:Z

    iput-object p4, p0, Lo8/e0;->d:Ljava/lang/String;

    iput-boolean p5, p0, Lo8/e0;->e:Z

    return-void
.end method


# virtual methods
.method public final g(Le2/g;Le2/b;)V
    .locals 6

    iget-object p1, p0, Lo8/e0;->a:Lcom/mglab/scm/visual/c;

    iget-object p2, p0, Lo8/e0;->b:Lm8/d;

    iget-boolean v0, p0, Lo8/e0;->c:Z

    iget-object v1, p0, Lo8/e0;->d:Ljava/lang/String;

    iget-boolean v2, p0, Lo8/e0;->e:Z

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    iget v3, p2, Lm8/d;->h:I

    const/4 v4, 0x1

    if-nez v3, :cond_1

    iget v3, p2, Lm8/d;->i:I

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    :goto_1
    if-nez v3, :cond_2

    .line 2
    invoke-virtual {p1, p2, v0}, Lcom/mglab/scm/visual/c;->n(Lm8/d;Z)V

    goto :goto_3

    .line 3
    :cond_2
    new-instance v3, Le2/g$a;

    iget-object v5, p1, Lcom/mglab/scm/visual/c;->a:Landroid/content/Context;

    invoke-direct {v3, v5}, Le2/g$a;-><init>(Landroid/content/Context;)V

    .line 4
    iput-object v1, v3, Le2/g$a;->b:Ljava/lang/CharSequence;

    const v1, 0x7f06005b

    .line 5
    invoke-virtual {v3, v1}, Le2/g$a;->l(I)Le2/g$a;

    const v1, 0x108003e

    .line 6
    invoke-virtual {v3, v1}, Le2/g$a;->e(I)Le2/g$a;

    const v1, 0x7f06005e

    if-eqz v2, :cond_3

    const v5, 0x7f06005e

    goto :goto_2

    :cond_3
    const v5, 0x7f060033

    .line 7
    :goto_2
    invoke-virtual {v3, v5}, Le2/g$a;->c(I)Le2/g$a;

    if-eqz v2, :cond_4

    const v1, 0x7f060091

    .line 8
    :cond_4
    invoke-virtual {v3, v1}, Le2/g$a;->a(I)Le2/g$a;

    .line 9
    iput-boolean v4, v3, Le2/g$a;->y:Z

    .line 10
    iput-boolean v4, v3, Le2/g$a;->z:Z

    const v1, 0x7f0c0050

    .line 11
    invoke-virtual {v3, v1, v4}, Le2/g$a;->d(IZ)Le2/g$a;

    const v1, 0x7f11018f

    .line 12
    invoke-virtual {v3, v1}, Le2/g$a;->i(I)Le2/g$a;

    new-instance v1, Lo8/d0;

    invoke-direct {v1, p1, p2, v0}, Lo8/d0;-><init>(Lcom/mglab/scm/visual/c;Lm8/d;Z)V

    .line 13
    iput-object v1, v3, Le2/g$a;->u:Le2/g$c;

    const p1, 0x7f11006e

    .line 14
    invoke-virtual {v3, p1}, Le2/g$a;->g(I)Le2/g$a;

    move-result-object p1

    invoke-virtual {p1}, Le2/g$a;->j()Le2/g;

    move-result-object p1

    .line 15
    iget-object p1, p1, Le2/g;->c:Le2/g$a;

    iget-object p1, p1, Le2/g$a;->o:Landroid/view/View;

    const v0, 0x7f0901d7

    .line 16
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f090126

    .line 17
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 18
    iget v1, p2, Lm8/d;->h:I

    .line 19
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 20
    iget p2, p2, Lm8/d;->i:I

    .line 21
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    return-void
.end method
