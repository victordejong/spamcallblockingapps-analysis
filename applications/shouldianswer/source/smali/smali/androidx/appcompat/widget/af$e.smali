.class Landroidx/appcompat/widget/af$e;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/af;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "e"
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/widget/af;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/af;)V
    .locals 0

    .line 1372
    iput-object p1, p0, Landroidx/appcompat/widget/af$e;->a:Landroidx/appcompat/widget/af;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1377
    iget-object v0, p0, Landroidx/appcompat/widget/af$e;->a:Landroidx/appcompat/widget/af;

    iget-object v0, v0, Landroidx/appcompat/widget/af;->c:Landroidx/appcompat/widget/ab;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/af$e;->a:Landroidx/appcompat/widget/af;

    iget-object v0, v0, Landroidx/appcompat/widget/af;->c:Landroidx/appcompat/widget/ab;

    invoke-static {v0}, Landroidx/core/g/u;->D(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/af$e;->a:Landroidx/appcompat/widget/af;

    iget-object v0, v0, Landroidx/appcompat/widget/af;->c:Landroidx/appcompat/widget/ab;

    .line 1378
    invoke-virtual {v0}, Landroidx/appcompat/widget/ab;->getCount()I

    move-result v0

    iget-object v1, p0, Landroidx/appcompat/widget/af$e;->a:Landroidx/appcompat/widget/af;

    iget-object v1, v1, Landroidx/appcompat/widget/af;->c:Landroidx/appcompat/widget/ab;

    invoke-virtual {v1}, Landroidx/appcompat/widget/ab;->getChildCount()I

    move-result v1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/af$e;->a:Landroidx/appcompat/widget/af;

    iget-object v0, v0, Landroidx/appcompat/widget/af;->c:Landroidx/appcompat/widget/ab;

    .line 1379
    invoke-virtual {v0}, Landroidx/appcompat/widget/ab;->getChildCount()I

    move-result v0

    iget-object v1, p0, Landroidx/appcompat/widget/af$e;->a:Landroidx/appcompat/widget/af;

    iget v1, v1, Landroidx/appcompat/widget/af;->d:I

    if-gt v0, v1, :cond_0

    .line 1380
    iget-object v0, p0, Landroidx/appcompat/widget/af$e;->a:Landroidx/appcompat/widget/af;

    iget-object v0, v0, Landroidx/appcompat/widget/af;->g:Landroid/widget/PopupWindow;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 1381
    iget-object v0, p0, Landroidx/appcompat/widget/af$e;->a:Landroidx/appcompat/widget/af;

    invoke-virtual {v0}, Landroidx/appcompat/widget/af;->j_()V

    :cond_0
    return-void
.end method
