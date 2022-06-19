.class public final synthetic Ll8/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic a:Ll8/w;

.field public final synthetic b:Landroidx/appcompat/widget/SwitchCompat;


# direct methods
.method public synthetic constructor <init>(Ll8/w;Landroidx/appcompat/widget/SwitchCompat;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll8/c;->a:Ll8/w;

    iput-object p2, p0, Ll8/c;->b:Landroidx/appcompat/widget/SwitchCompat;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 5

    iget-object p1, p0, Ll8/c;->a:Ll8/w;

    iget-object v0, p0, Ll8/c;->b:Landroidx/appcompat/widget/SwitchCompat;

    .line 1
    new-instance v1, Le2/g$a;

    iget-object v2, p1, Ll8/w;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Le2/g$a;-><init>(Landroid/content/Context;)V

    const v2, 0x7f110198

    .line 2
    invoke-virtual {v1, v2}, Le2/g$a;->k(I)Le2/g$a;

    const v2, 0x7f06005b

    .line 3
    invoke-virtual {v1, v2}, Le2/g$a;->l(I)Le2/g$a;

    const v3, 0x108003e

    .line 4
    invoke-virtual {v1, v3}, Le2/g$a;->e(I)Le2/g$a;

    .line 5
    invoke-virtual {v1, v2}, Le2/g$a;->c(I)Le2/g$a;

    const/4 v2, 0x1

    .line 6
    iput-boolean v2, v1, Le2/g$a;->y:Z

    .line 7
    iput-boolean v2, v1, Le2/g$a;->z:Z

    const v3, 0x7f0c0053

    .line 8
    invoke-virtual {v1, v3, v2}, Le2/g$a;->d(IZ)Le2/g$a;

    const v3, 0x7f11018f

    .line 9
    invoke-virtual {v1, v3}, Le2/g$a;->i(I)Le2/g$a;

    new-instance v3, Lz2/n;

    const/4 v4, 0x4

    invoke-direct {v3, p1, v0, v4}, Lz2/n;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 10
    iput-object v3, v1, Le2/g$a;->u:Le2/g$c;

    const v0, 0x7f11006e

    .line 11
    invoke-virtual {v1, v0}, Le2/g$a;->g(I)Le2/g$a;

    move-result-object v0

    invoke-virtual {v0}, Le2/g$a;->j()Le2/g;

    move-result-object v0

    .line 12
    iget-object v0, v0, Le2/g;->c:Le2/g$a;

    iget-object v0, v0, Le2/g$a;->o:Landroid/view/View;

    .line 13
    iget-object v1, p1, Ll8/w;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f1100b8

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f090249

    .line 14
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;

    .line 15
    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setHint(Ljava/lang/CharSequence;)V

    .line 16
    invoke-virtual {v0, v1}, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->setFloatingLabelText(Ljava/lang/CharSequence;)V

    .line 17
    iget-object v1, p1, Ll8/w;->b:Ljava/util/List;

    iget p1, p1, Ll8/w;->c:I

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lh8/u;

    iget-object p1, p1, Lh8/u;->c:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    return v2
.end method
