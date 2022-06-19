.class Landroidx/appcompat/widget/ac$e;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/ac;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "e"
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/widget/ac;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/ac;)V
    .locals 0

    .prologue
    .line 1372
    iput-object p1, p0, Landroidx/appcompat/widget/ac$e;->a:Landroidx/appcompat/widget/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1373
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1377
    iget-object v0, p0, Landroidx/appcompat/widget/ac$e;->a:Landroidx/appcompat/widget/ac;

    iget-object v0, v0, Landroidx/appcompat/widget/ac;->c:Landroidx/appcompat/widget/z;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/ac$e;->a:Landroidx/appcompat/widget/ac;

    iget-object v0, v0, Landroidx/appcompat/widget/ac;->c:Landroidx/appcompat/widget/z;

    invoke-static {v0}, Landroidx/core/h/u;->B(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/ac$e;->a:Landroidx/appcompat/widget/ac;

    iget-object v0, v0, Landroidx/appcompat/widget/ac;->c:Landroidx/appcompat/widget/z;

    .line 1378
    invoke-virtual {v0}, Landroidx/appcompat/widget/z;->getCount()I

    move-result v0

    iget-object v1, p0, Landroidx/appcompat/widget/ac$e;->a:Landroidx/appcompat/widget/ac;

    iget-object v1, v1, Landroidx/appcompat/widget/ac;->c:Landroidx/appcompat/widget/z;

    invoke-virtual {v1}, Landroidx/appcompat/widget/z;->getChildCount()I

    move-result v1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/ac$e;->a:Landroidx/appcompat/widget/ac;

    iget-object v0, v0, Landroidx/appcompat/widget/ac;->c:Landroidx/appcompat/widget/z;

    .line 1379
    invoke-virtual {v0}, Landroidx/appcompat/widget/z;->getChildCount()I

    move-result v0

    iget-object v1, p0, Landroidx/appcompat/widget/ac$e;->a:Landroidx/appcompat/widget/ac;

    iget v1, v1, Landroidx/appcompat/widget/ac;->d:I

    if-gt v0, v1, :cond_0

    .line 1380
    iget-object v0, p0, Landroidx/appcompat/widget/ac$e;->a:Landroidx/appcompat/widget/ac;

    iget-object v0, v0, Landroidx/appcompat/widget/ac;->g:Landroid/widget/PopupWindow;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 1381
    iget-object v0, p0, Landroidx/appcompat/widget/ac$e;->a:Landroidx/appcompat/widget/ac;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ac;->a_()V

    .line 1383
    :cond_0
    return-void
.end method
