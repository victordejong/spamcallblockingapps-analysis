.class final Landroidx/appcompat/app/i$a;
.super Ljava/lang/Object;
.source "ToolbarActionBar.java"

# interfaces
.implements Landroidx/appcompat/view/menu/m$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/app/i;

.field private b:Z


# direct methods
.method constructor <init>(Landroidx/appcompat/app/i;)V
    .locals 0

    .prologue
    .line 554
    iput-object p1, p0, Landroidx/appcompat/app/i$a;->a:Landroidx/appcompat/app/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 555
    return-void
.end method


# virtual methods
.method public a(Landroidx/appcompat/view/menu/g;Z)V
    .locals 2

    .prologue
    .line 568
    iget-boolean v0, p0, Landroidx/appcompat/app/i$a;->b:Z

    if-eqz v0, :cond_0

    .line 578
    :goto_0
    return-void

    .line 572
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/app/i$a;->b:Z

    .line 573
    iget-object v0, p0, Landroidx/appcompat/app/i$a;->a:Landroidx/appcompat/app/i;

    iget-object v0, v0, Landroidx/appcompat/app/i;->a:Landroidx/appcompat/widget/x;

    invoke-interface {v0}, Landroidx/appcompat/widget/x;->n()V

    .line 574
    iget-object v0, p0, Landroidx/appcompat/app/i$a;->a:Landroidx/appcompat/app/i;

    iget-object v0, v0, Landroidx/appcompat/app/i;->b:Landroid/view/Window$Callback;

    if-eqz v0, :cond_1

    .line 575
    iget-object v0, p0, Landroidx/appcompat/app/i$a;->a:Landroidx/appcompat/app/i;

    iget-object v0, v0, Landroidx/appcompat/app/i;->b:Landroid/view/Window$Callback;

    const/16 v1, 0x6c

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    .line 577
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/appcompat/app/i$a;->b:Z

    goto :goto_0
.end method

.method public a(Landroidx/appcompat/view/menu/g;)Z
    .locals 2

    .prologue
    .line 559
    iget-object v0, p0, Landroidx/appcompat/app/i$a;->a:Landroidx/appcompat/app/i;

    iget-object v0, v0, Landroidx/appcompat/app/i;->b:Landroid/view/Window$Callback;

    if-eqz v0, :cond_0

    .line 560
    iget-object v0, p0, Landroidx/appcompat/app/i$a;->a:Landroidx/appcompat/app/i;

    iget-object v0, v0, Landroidx/appcompat/app/i;->b:Landroid/view/Window$Callback;

    const/16 v1, 0x6c

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 561
    const/4 v0, 0x1

    .line 563
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
