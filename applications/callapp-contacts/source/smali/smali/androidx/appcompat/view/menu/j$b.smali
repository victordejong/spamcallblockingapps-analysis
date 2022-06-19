.class final Landroidx/appcompat/view/menu/j$b;
.super Landroidx/appcompat/view/menu/j$a;
.source "SourceFile"

# interfaces
.implements Landroid/view/ActionProvider$VisibilityListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic c:Landroidx/appcompat/view/menu/j;

.field private f:Landroidx/core/view/b$b;


# direct methods
.method constructor <init>(Landroidx/appcompat/view/menu/j;Landroid/content/Context;Landroid/view/ActionProvider;)V
    .locals 0

    .line 463
    iput-object p1, p0, Landroidx/appcompat/view/menu/j$b;->c:Landroidx/appcompat/view/menu/j;

    .line 464
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/view/menu/j$a;-><init>(Landroidx/appcompat/view/menu/j;Landroid/content/Context;Landroid/view/ActionProvider;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/MenuItem;)Landroid/view/View;
    .locals 1

    .line 469
    iget-object v0, p0, Landroidx/appcompat/view/menu/j$b;->a:Landroid/view/ActionProvider;

    invoke-virtual {v0, p1}, Landroid/view/ActionProvider;->onCreateActionView(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final a(Landroidx/core/view/b$b;)V
    .locals 0

    .line 489
    iput-object p1, p0, Landroidx/appcompat/view/menu/j$b;->f:Landroidx/core/view/b$b;

    .line 490
    iget-object p1, p0, Landroidx/appcompat/view/menu/j$b;->a:Landroid/view/ActionProvider;

    invoke-virtual {p1, p0}, Landroid/view/ActionProvider;->setVisibilityListener(Landroid/view/ActionProvider$VisibilityListener;)V

    return-void
.end method

.method public final d()Z
    .locals 1

    .line 474
    iget-object v0, p0, Landroidx/appcompat/view/menu/j$b;->a:Landroid/view/ActionProvider;

    invoke-virtual {v0}, Landroid/view/ActionProvider;->overridesItemVisibility()Z

    move-result v0

    return v0
.end method

.method public final e()Z
    .locals 1

    .line 479
    iget-object v0, p0, Landroidx/appcompat/view/menu/j$b;->a:Landroid/view/ActionProvider;

    invoke-virtual {v0}, Landroid/view/ActionProvider;->isVisible()Z

    move-result v0

    return v0
.end method

.method public final onActionProviderVisibilityChanged(Z)V
    .locals 0

    .line 495
    iget-object p1, p0, Landroidx/appcompat/view/menu/j$b;->f:Landroidx/core/view/b$b;

    if-eqz p1, :cond_0

    .line 496
    invoke-interface {p1}, Landroidx/core/view/b$b;->a()V

    :cond_0
    return-void
.end method
