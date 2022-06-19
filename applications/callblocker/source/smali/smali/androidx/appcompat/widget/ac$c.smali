.class Landroidx/appcompat/widget/ac$c;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/ac;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/widget/ac;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/ac;)V
    .locals 0

    .prologue
    .line 1408
    iput-object p1, p0, Landroidx/appcompat/widget/ac$c;->a:Landroidx/appcompat/widget/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1409
    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    .prologue
    .line 1415
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2

    .prologue
    .line 1419
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/ac$c;->a:Landroidx/appcompat/widget/ac;

    .line 1420
    invoke-virtual {v0}, Landroidx/appcompat/widget/ac;->n()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/ac$c;->a:Landroidx/appcompat/widget/ac;

    iget-object v0, v0, Landroidx/appcompat/widget/ac;->g:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1421
    iget-object v0, p0, Landroidx/appcompat/widget/ac$c;->a:Landroidx/appcompat/widget/ac;

    iget-object v0, v0, Landroidx/appcompat/widget/ac;->f:Landroid/os/Handler;

    iget-object v1, p0, Landroidx/appcompat/widget/ac$c;->a:Landroidx/appcompat/widget/ac;

    iget-object v1, v1, Landroidx/appcompat/widget/ac;->e:Landroidx/appcompat/widget/ac$e;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1422
    iget-object v0, p0, Landroidx/appcompat/widget/ac$c;->a:Landroidx/appcompat/widget/ac;

    iget-object v0, v0, Landroidx/appcompat/widget/ac;->e:Landroidx/appcompat/widget/ac$e;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ac$e;->run()V

    .line 1424
    :cond_0
    return-void
.end method
