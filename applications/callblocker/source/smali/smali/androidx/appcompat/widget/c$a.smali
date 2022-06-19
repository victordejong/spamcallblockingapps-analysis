.class Landroidx/appcompat/widget/c$a;
.super Landroidx/appcompat/view/menu/l;
.source "ActionMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/widget/c;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/c;Landroid/content/Context;Landroidx/appcompat/view/menu/r;Landroid/view/View;)V
    .locals 6

    .prologue
    .line 738
    iput-object p1, p0, Landroidx/appcompat/widget/c$a;->a:Landroidx/appcompat/widget/c;

    .line 739
    const/4 v4, 0x0

    sget v5, Landroidx/appcompat/a$a;->actionOverflowMenuStyle:I

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    invoke-direct/range {v0 .. v5}, Landroidx/appcompat/view/menu/l;-><init>(Landroid/content/Context;Landroidx/appcompat/view/menu/g;Landroid/view/View;ZI)V

    .line 741
    invoke-virtual {p3}, Landroidx/appcompat/view/menu/r;->getItem()Landroid/view/MenuItem;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/i;

    .line 742
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/i;->j()Z

    move-result v0

    if-nez v0, :cond_0

    .line 744
    iget-object v0, p1, Landroidx/appcompat/widget/c;->g:Landroidx/appcompat/widget/c$d;

    if-nez v0, :cond_1

    invoke-static {p1}, Landroidx/appcompat/widget/c;->c(Landroidx/appcompat/widget/c;)Landroidx/appcompat/view/menu/n;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :goto_0
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/c$a;->a(Landroid/view/View;)V

    .line 747
    :cond_0
    iget-object v0, p1, Landroidx/appcompat/widget/c;->k:Landroidx/appcompat/widget/c$f;

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/c$a;->a(Landroidx/appcompat/view/menu/m$a;)V

    .line 748
    return-void

    .line 744
    :cond_1
    iget-object v0, p1, Landroidx/appcompat/widget/c;->g:Landroidx/appcompat/widget/c$d;

    goto :goto_0
.end method


# virtual methods
.method protected e()V
    .locals 2

    .prologue
    .line 752
    iget-object v0, p0, Landroidx/appcompat/widget/c$a;->a:Landroidx/appcompat/widget/c;

    const/4 v1, 0x0

    iput-object v1, v0, Landroidx/appcompat/widget/c;->i:Landroidx/appcompat/widget/c$a;

    .line 753
    iget-object v0, p0, Landroidx/appcompat/widget/c$a;->a:Landroidx/appcompat/widget/c;

    const/4 v1, 0x0

    iput v1, v0, Landroidx/appcompat/widget/c;->l:I

    .line 755
    invoke-super {p0}, Landroidx/appcompat/view/menu/l;->e()V

    .line 756
    return-void
.end method
