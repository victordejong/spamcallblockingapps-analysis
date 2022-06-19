.class Landroidx/appcompat/view/menu/ActionMenuItemView$a;
.super Landroidx/appcompat/widget/ab;
.source "ActionMenuItemView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/ActionMenuItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/view/menu/ActionMenuItemView;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/ActionMenuItemView;)V
    .locals 0

    .prologue
    .line 299
    iput-object p1, p0, Landroidx/appcompat/view/menu/ActionMenuItemView$a;->a:Landroidx/appcompat/view/menu/ActionMenuItemView;

    .line 300
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/ab;-><init>(Landroid/view/View;)V

    .line 301
    return-void
.end method


# virtual methods
.method public a()Landroidx/appcompat/view/menu/p;
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Landroidx/appcompat/view/menu/ActionMenuItemView$a;->a:Landroidx/appcompat/view/menu/ActionMenuItemView;

    iget-object v0, v0, Landroidx/appcompat/view/menu/ActionMenuItemView;->c:Landroidx/appcompat/view/menu/ActionMenuItemView$b;

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Landroidx/appcompat/view/menu/ActionMenuItemView$a;->a:Landroidx/appcompat/view/menu/ActionMenuItemView;

    iget-object v0, v0, Landroidx/appcompat/view/menu/ActionMenuItemView;->c:Landroidx/appcompat/view/menu/ActionMenuItemView$b;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/ActionMenuItemView$b;->a()Landroidx/appcompat/view/menu/p;

    move-result-object v0

    .line 308
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected b()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 314
    iget-object v1, p0, Landroidx/appcompat/view/menu/ActionMenuItemView$a;->a:Landroidx/appcompat/view/menu/ActionMenuItemView;

    iget-object v1, v1, Landroidx/appcompat/view/menu/ActionMenuItemView;->b:Landroidx/appcompat/view/menu/g$b;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/appcompat/view/menu/ActionMenuItemView$a;->a:Landroidx/appcompat/view/menu/ActionMenuItemView;

    iget-object v1, v1, Landroidx/appcompat/view/menu/ActionMenuItemView;->b:Landroidx/appcompat/view/menu/g$b;

    iget-object v2, p0, Landroidx/appcompat/view/menu/ActionMenuItemView$a;->a:Landroidx/appcompat/view/menu/ActionMenuItemView;

    iget-object v2, v2, Landroidx/appcompat/view/menu/ActionMenuItemView;->a:Landroidx/appcompat/view/menu/i;

    invoke-interface {v1, v2}, Landroidx/appcompat/view/menu/g$b;->a(Landroidx/appcompat/view/menu/i;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 315
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/ActionMenuItemView$a;->a()Landroidx/appcompat/view/menu/p;

    move-result-object v1

    .line 316
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroidx/appcompat/view/menu/p;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 318
    :cond_0
    return v0
.end method
