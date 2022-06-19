.class final Landroidx/appcompat/app/j$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/app/j;


# direct methods
.method constructor <init>(Landroidx/appcompat/app/j;)V
    .locals 0

    .line 54
    iput-object p1, p0, Landroidx/appcompat/app/j$1;->a:Landroidx/appcompat/app/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 57
    iget-object v0, p0, Landroidx/appcompat/app/j$1;->a:Landroidx/appcompat/app/j;

    .line 1449
    invoke-virtual {v0}, Landroidx/appcompat/app/j;->n()Landroid/view/Menu;

    move-result-object v1

    .line 1450
    instance-of v2, v1, Landroidx/appcompat/view/menu/g;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Landroidx/appcompat/view/menu/g;

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    if-eqz v2, :cond_1

    .line 1452
    invoke-virtual {v2}, Landroidx/appcompat/view/menu/g;->e()V

    .line 1455
    :cond_1
    :try_start_0
    invoke-interface {v1}, Landroid/view/Menu;->clear()V

    .line 1456
    iget-object v4, v0, Landroidx/appcompat/app/j;->c:Landroid/view/Window$Callback;

    const/4 v5, 0x0

    invoke-interface {v4, v5, v1}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v0, v0, Landroidx/appcompat/app/j;->c:Landroid/view/Window$Callback;

    .line 1457
    invoke-interface {v0, v5, v3, v1}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1458
    :cond_2
    invoke-interface {v1}, Landroid/view/Menu;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    if-eqz v2, :cond_4

    .line 1462
    invoke-virtual {v2}, Landroidx/appcompat/view/menu/g;->f()V

    :cond_4
    return-void

    :catchall_0
    move-exception v0

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/g;->f()V

    .line 1464
    :cond_5
    throw v0
.end method
