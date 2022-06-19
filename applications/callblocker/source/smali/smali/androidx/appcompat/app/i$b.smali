.class final Landroidx/appcompat/app/i$b;
.super Ljava/lang/Object;
.source "ToolbarActionBar.java"

# interfaces
.implements Landroidx/appcompat/view/menu/g$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/app/i;


# direct methods
.method constructor <init>(Landroidx/appcompat/app/i;)V
    .locals 0

    .prologue
    .line 583
    iput-object p1, p0, Landroidx/appcompat/app/i$b;->a:Landroidx/appcompat/app/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 584
    return-void
.end method


# virtual methods
.method public a(Landroidx/appcompat/view/menu/g;)V
    .locals 4

    .prologue
    const/16 v3, 0x6c

    .line 593
    iget-object v0, p0, Landroidx/appcompat/app/i$b;->a:Landroidx/appcompat/app/i;

    iget-object v0, v0, Landroidx/appcompat/app/i;->b:Landroid/view/Window$Callback;

    if-eqz v0, :cond_0

    .line 594
    iget-object v0, p0, Landroidx/appcompat/app/i$b;->a:Landroidx/appcompat/app/i;

    iget-object v0, v0, Landroidx/appcompat/app/i;->a:Landroidx/appcompat/widget/x;

    invoke-interface {v0}, Landroidx/appcompat/widget/x;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 595
    iget-object v0, p0, Landroidx/appcompat/app/i$b;->a:Landroidx/appcompat/app/i;

    iget-object v0, v0, Landroidx/appcompat/app/i;->b:Landroid/view/Window$Callback;

    invoke-interface {v0, v3, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    .line 601
    :cond_0
    :goto_0
    return-void

    .line 596
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/app/i$b;->a:Landroidx/appcompat/app/i;

    iget-object v0, v0, Landroidx/appcompat/app/i;->b:Landroid/view/Window$Callback;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, p1}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 598
    iget-object v0, p0, Landroidx/appcompat/app/i$b;->a:Landroidx/appcompat/app/i;

    iget-object v0, v0, Landroidx/appcompat/app/i;->b:Landroid/view/Window$Callback;

    invoke-interface {v0, v3, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    goto :goto_0
.end method

.method public a(Landroidx/appcompat/view/menu/g;Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 588
    const/4 v0, 0x0

    return v0
.end method
