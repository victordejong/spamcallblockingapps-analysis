.class Landroidx/appcompat/widget/aq$1;
.super Ljava/lang/Object;
.source "ToolbarWidgetWrapper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/widget/aq;-><init>(Landroidx/appcompat/widget/Toolbar;ZII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final a:Landroidx/appcompat/view/menu/a;

.field final synthetic b:Landroidx/appcompat/widget/aq;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/aq;)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 182
    iput-object p1, p0, Landroidx/appcompat/widget/aq$1;->b:Landroidx/appcompat/widget/aq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    new-instance v0, Landroidx/appcompat/view/menu/a;

    iget-object v1, p0, Landroidx/appcompat/widget/aq$1;->b:Landroidx/appcompat/widget/aq;

    iget-object v1, v1, Landroidx/appcompat/widget/aq;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v1}, Landroidx/appcompat/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x102002c

    iget-object v4, p0, Landroidx/appcompat/widget/aq$1;->b:Landroidx/appcompat/widget/aq;

    iget-object v6, v4, Landroidx/appcompat/widget/aq;->b:Ljava/lang/CharSequence;

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v6}, Landroidx/appcompat/view/menu/a;-><init>(Landroid/content/Context;IIIILjava/lang/CharSequence;)V

    iput-object v0, p0, Landroidx/appcompat/widget/aq$1;->a:Landroidx/appcompat/view/menu/a;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 187
    iget-object v0, p0, Landroidx/appcompat/widget/aq$1;->b:Landroidx/appcompat/widget/aq;

    iget-object v0, v0, Landroidx/appcompat/widget/aq;->c:Landroid/view/Window$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/aq$1;->b:Landroidx/appcompat/widget/aq;

    iget-boolean v0, v0, Landroidx/appcompat/widget/aq;->d:Z

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Landroidx/appcompat/widget/aq$1;->b:Landroidx/appcompat/widget/aq;

    iget-object v0, v0, Landroidx/appcompat/widget/aq;->c:Landroid/view/Window$Callback;

    const/4 v1, 0x0

    iget-object v2, p0, Landroidx/appcompat/widget/aq$1;->a:Landroidx/appcompat/view/menu/a;

    invoke-interface {v0, v1, v2}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    .line 190
    :cond_0
    return-void
.end method
