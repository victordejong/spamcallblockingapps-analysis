.class Landroidx/appcompat/app/l$1;
.super Landroidx/core/h/aa;
.source "WindowDecorActionBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/app/l;


# direct methods
.method constructor <init>(Landroidx/appcompat/app/l;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Landroidx/appcompat/app/l$1;->a:Landroidx/appcompat/app/l;

    invoke-direct {p0}, Landroidx/core/h/aa;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 138
    iget-object v0, p0, Landroidx/appcompat/app/l$1;->a:Landroidx/appcompat/app/l;

    iget-boolean v0, v0, Landroidx/appcompat/app/l;->k:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/app/l$1;->a:Landroidx/appcompat/app/l;

    iget-object v0, v0, Landroidx/appcompat/app/l;->f:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Landroidx/appcompat/app/l$1;->a:Landroidx/appcompat/app/l;

    iget-object v0, v0, Landroidx/appcompat/app/l;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 140
    iget-object v0, p0, Landroidx/appcompat/app/l$1;->a:Landroidx/appcompat/app/l;

    iget-object v0, v0, Landroidx/appcompat/app/l;->c:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionBarContainer;->setTranslationY(F)V

    .line 142
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/app/l$1;->a:Landroidx/appcompat/app/l;

    iget-object v0, v0, Landroidx/appcompat/app/l;->c:Landroidx/appcompat/widget/ActionBarContainer;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionBarContainer;->setVisibility(I)V

    .line 143
    iget-object v0, p0, Landroidx/appcompat/app/l$1;->a:Landroidx/appcompat/app/l;

    iget-object v0, v0, Landroidx/appcompat/app/l;->c:Landroidx/appcompat/widget/ActionBarContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionBarContainer;->setTransitioning(Z)V

    .line 144
    iget-object v0, p0, Landroidx/appcompat/app/l$1;->a:Landroidx/appcompat/app/l;

    const/4 v1, 0x0

    iput-object v1, v0, Landroidx/appcompat/app/l;->n:Landroidx/appcompat/view/h;

    .line 145
    iget-object v0, p0, Landroidx/appcompat/app/l$1;->a:Landroidx/appcompat/app/l;

    invoke-virtual {v0}, Landroidx/appcompat/app/l;->h()V

    .line 146
    iget-object v0, p0, Landroidx/appcompat/app/l$1;->a:Landroidx/appcompat/app/l;

    iget-object v0, v0, Landroidx/appcompat/app/l;->b:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_1

    .line 147
    iget-object v0, p0, Landroidx/appcompat/app/l$1;->a:Landroidx/appcompat/app/l;

    iget-object v0, v0, Landroidx/appcompat/app/l;->b:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-static {v0}, Landroidx/core/h/u;->q(Landroid/view/View;)V

    .line 149
    :cond_1
    return-void
.end method
