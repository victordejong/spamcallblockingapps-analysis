.class Landroidx/appcompat/widget/c$e;
.super Landroidx/appcompat/view/menu/l;
.source "ActionMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "e"
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/widget/c;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/c;Landroid/content/Context;Landroidx/appcompat/view/menu/g;Landroid/view/View;Z)V
    .locals 6

    .prologue
    .line 720
    iput-object p1, p0, Landroidx/appcompat/widget/c$e;->a:Landroidx/appcompat/widget/c;

    .line 721
    sget v5, Landroidx/appcompat/a$a;->actionOverflowMenuStyle:I

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    invoke-direct/range {v0 .. v5}, Landroidx/appcompat/view/menu/l;-><init>(Landroid/content/Context;Landroidx/appcompat/view/menu/g;Landroid/view/View;ZI)V

    .line 722
    const v0, 0x800005

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/c$e;->a(I)V

    .line 723
    iget-object v0, p1, Landroidx/appcompat/widget/c;->k:Landroidx/appcompat/widget/c$f;

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/c$e;->a(Landroidx/appcompat/view/menu/m$a;)V

    .line 724
    return-void
.end method


# virtual methods
.method protected e()V
    .locals 2

    .prologue
    .line 728
    iget-object v0, p0, Landroidx/appcompat/widget/c$e;->a:Landroidx/appcompat/widget/c;

    invoke-static {v0}, Landroidx/appcompat/widget/c;->a(Landroidx/appcompat/widget/c;)Landroidx/appcompat/view/menu/g;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 729
    iget-object v0, p0, Landroidx/appcompat/widget/c$e;->a:Landroidx/appcompat/widget/c;

    invoke-static {v0}, Landroidx/appcompat/widget/c;->b(Landroidx/appcompat/widget/c;)Landroidx/appcompat/view/menu/g;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/g;->close()V

    .line 731
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/c$e;->a:Landroidx/appcompat/widget/c;

    const/4 v1, 0x0

    iput-object v1, v0, Landroidx/appcompat/widget/c;->h:Landroidx/appcompat/widget/c$e;

    .line 733
    invoke-super {p0}, Landroidx/appcompat/view/menu/l;->e()V

    .line 734
    return-void
.end method
