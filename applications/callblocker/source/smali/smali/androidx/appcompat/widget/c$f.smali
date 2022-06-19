.class Landroidx/appcompat/widget/c$f;
.super Ljava/lang/Object;
.source "ActionMenuPresenter.java"

# interfaces
.implements Landroidx/appcompat/view/menu/m$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "f"
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/widget/c;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/c;)V
    .locals 0

    .prologue
    .line 760
    iput-object p1, p0, Landroidx/appcompat/widget/c$f;->a:Landroidx/appcompat/widget/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 761
    return-void
.end method


# virtual methods
.method public a(Landroidx/appcompat/view/menu/g;Z)V
    .locals 2

    .prologue
    .line 774
    instance-of v0, p1, Landroidx/appcompat/view/menu/r;

    if-eqz v0, :cond_0

    .line 775
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/g;->q()Landroidx/appcompat/view/menu/g;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/g;->a(Z)V

    .line 777
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/c$f;->a:Landroidx/appcompat/widget/c;

    invoke-virtual {v0}, Landroidx/appcompat/widget/c;->a()Landroidx/appcompat/view/menu/m$a;

    move-result-object v0

    .line 778
    if-eqz v0, :cond_1

    .line 779
    invoke-interface {v0, p1, p2}, Landroidx/appcompat/view/menu/m$a;->a(Landroidx/appcompat/view/menu/g;Z)V

    .line 781
    :cond_1
    return-void
.end method

.method public a(Landroidx/appcompat/view/menu/g;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 765
    if-nez p1, :cond_0

    .line 769
    :goto_0
    return v1

    .line 767
    :cond_0
    iget-object v2, p0, Landroidx/appcompat/widget/c$f;->a:Landroidx/appcompat/widget/c;

    move-object v0, p1

    check-cast v0, Landroidx/appcompat/view/menu/r;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/r;->getItem()Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iput v0, v2, Landroidx/appcompat/widget/c;->l:I

    .line 768
    iget-object v0, p0, Landroidx/appcompat/widget/c$f;->a:Landroidx/appcompat/widget/c;

    invoke-virtual {v0}, Landroidx/appcompat/widget/c;->a()Landroidx/appcompat/view/menu/m$a;

    move-result-object v0

    .line 769
    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Landroidx/appcompat/view/menu/m$a;->a(Landroidx/appcompat/view/menu/g;)Z

    move-result v0

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method
