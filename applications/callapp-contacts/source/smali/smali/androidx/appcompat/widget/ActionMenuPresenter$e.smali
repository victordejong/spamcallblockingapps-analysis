.class final Landroidx/appcompat/widget/ActionMenuPresenter$e;
.super Landroidx/appcompat/view/menu/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "e"
.end annotation


# instance fields
.field final synthetic c:Landroidx/appcompat/widget/ActionMenuPresenter;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/ActionMenuPresenter;Landroid/content/Context;Landroidx/appcompat/view/menu/g;Landroid/view/View;Z)V
    .locals 6

    .line 715
    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter$e;->c:Landroidx/appcompat/widget/ActionMenuPresenter;

    .line 716
    sget v5, Landroidx/appcompat/a$a;->actionOverflowMenuStyle:I

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    invoke-direct/range {v0 .. v5}, Landroidx/appcompat/view/menu/l;-><init>(Landroid/content/Context;Landroidx/appcompat/view/menu/g;Landroid/view/View;ZI)V

    .line 717
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuPresenter$e;->a()V

    .line 718
    iget-object p1, p1, Landroidx/appcompat/widget/ActionMenuPresenter;->p:Landroidx/appcompat/widget/ActionMenuPresenter$f;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ActionMenuPresenter$e;->a(Landroidx/appcompat/view/menu/m$a;)V

    return-void
.end method


# virtual methods
.method public final e()V
    .locals 2

    .line 723
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter$e;->c:Landroidx/appcompat/widget/ActionMenuPresenter;

    .line 1054
    iget-object v0, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->c:Landroidx/appcompat/view/menu/g;

    if-eqz v0, :cond_0

    .line 724
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter$e;->c:Landroidx/appcompat/widget/ActionMenuPresenter;

    .line 2054
    iget-object v0, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->c:Landroidx/appcompat/view/menu/g;

    .line 724
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/g;->close()V

    .line 726
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter$e;->c:Landroidx/appcompat/widget/ActionMenuPresenter;

    const/4 v1, 0x0

    iput-object v1, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->m:Landroidx/appcompat/widget/ActionMenuPresenter$e;

    .line 728
    invoke-super {p0}, Landroidx/appcompat/view/menu/l;->e()V

    return-void
.end method
