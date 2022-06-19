.class Landroidx/appcompat/widget/c$b;
.super Landroidx/appcompat/view/menu/ActionMenuItemView$b;
.source "ActionMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/widget/c;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/c;)V
    .locals 0

    .prologue
    .line 805
    iput-object p1, p0, Landroidx/appcompat/widget/c$b;->a:Landroidx/appcompat/widget/c;

    invoke-direct {p0}, Landroidx/appcompat/view/menu/ActionMenuItemView$b;-><init>()V

    .line 806
    return-void
.end method


# virtual methods
.method public a()Landroidx/appcompat/view/menu/p;
    .locals 1

    .prologue
    .line 810
    iget-object v0, p0, Landroidx/appcompat/widget/c$b;->a:Landroidx/appcompat/widget/c;

    iget-object v0, v0, Landroidx/appcompat/widget/c;->i:Landroidx/appcompat/widget/c$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/c$b;->a:Landroidx/appcompat/widget/c;

    iget-object v0, v0, Landroidx/appcompat/widget/c;->i:Landroidx/appcompat/widget/c$a;

    invoke-virtual {v0}, Landroidx/appcompat/widget/c$a;->b()Landroidx/appcompat/view/menu/k;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
