.class Landroidx/appcompat/app/f$b$1;
.super Landroidx/core/h/aa;
.source "AppCompatDelegateImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/app/f$b;->a(Landroidx/appcompat/view/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/app/f$b;


# direct methods
.method constructor <init>(Landroidx/appcompat/app/f$b;)V
    .locals 0

    .prologue
    .line 2465
    iput-object p1, p0, Landroidx/appcompat/app/f$b$1;->a:Landroidx/appcompat/app/f$b;

    invoke-direct {p0}, Landroidx/core/h/aa;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2468
    iget-object v0, p0, Landroidx/appcompat/app/f$b$1;->a:Landroidx/appcompat/app/f$b;

    iget-object v0, v0, Landroidx/appcompat/app/f$b;->a:Landroidx/appcompat/app/f;

    iget-object v0, v0, Landroidx/appcompat/app/f;->h:Landroidx/appcompat/widget/ActionBarContextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    .line 2469
    iget-object v0, p0, Landroidx/appcompat/app/f$b$1;->a:Landroidx/appcompat/app/f$b;

    iget-object v0, v0, Landroidx/appcompat/app/f$b;->a:Landroidx/appcompat/app/f;

    iget-object v0, v0, Landroidx/appcompat/app/f;->i:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1

    .line 2470
    iget-object v0, p0, Landroidx/appcompat/app/f$b$1;->a:Landroidx/appcompat/app/f$b;

    iget-object v0, v0, Landroidx/appcompat/app/f$b;->a:Landroidx/appcompat/app/f;

    iget-object v0, v0, Landroidx/appcompat/app/f;->i:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 2474
    :cond_0
    :goto_0
    iget-object v0, p0, Landroidx/appcompat/app/f$b$1;->a:Landroidx/appcompat/app/f$b;

    iget-object v0, v0, Landroidx/appcompat/app/f$b;->a:Landroidx/appcompat/app/f;

    iget-object v0, v0, Landroidx/appcompat/app/f;->h:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarContextView;->removeAllViews()V

    .line 2475
    iget-object v0, p0, Landroidx/appcompat/app/f$b$1;->a:Landroidx/appcompat/app/f$b;

    iget-object v0, v0, Landroidx/appcompat/app/f$b;->a:Landroidx/appcompat/app/f;

    iget-object v0, v0, Landroidx/appcompat/app/f;->k:Landroidx/core/h/y;

    invoke-virtual {v0, v2}, Landroidx/core/h/y;->a(Landroidx/core/h/z;)Landroidx/core/h/y;

    .line 2476
    iget-object v0, p0, Landroidx/appcompat/app/f$b$1;->a:Landroidx/appcompat/app/f$b;

    iget-object v0, v0, Landroidx/appcompat/app/f$b;->a:Landroidx/appcompat/app/f;

    iput-object v2, v0, Landroidx/appcompat/app/f;->k:Landroidx/core/h/y;

    .line 2477
    return-void

    .line 2471
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/app/f$b$1;->a:Landroidx/appcompat/app/f$b;

    iget-object v0, v0, Landroidx/appcompat/app/f$b;->a:Landroidx/appcompat/app/f;

    iget-object v0, v0, Landroidx/appcompat/app/f;->h:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarContextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2472
    iget-object v0, p0, Landroidx/appcompat/app/f$b$1;->a:Landroidx/appcompat/app/f$b;

    iget-object v0, v0, Landroidx/appcompat/app/f$b;->a:Landroidx/appcompat/app/f;

    iget-object v0, v0, Landroidx/appcompat/app/f;->h:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarContextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Landroidx/core/h/u;->q(Landroid/view/View;)V

    goto :goto_0
.end method
