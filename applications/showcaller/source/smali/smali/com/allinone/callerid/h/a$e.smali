.class Lcom/allinone/callerid/h/a$e;
.super Ljava/lang/Object;
.source "ClipBoardOverlayView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/h/a;->s(Landroid/view/View;Lcom/allinone/callerid/search/CallLogBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/h/a;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/h/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/h/a$e;->d:Lcom/allinone/callerid/h/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/allinone/callerid/h/a$e;->d:Lcom/allinone/callerid/h/a;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-static {v0, v2}, Lcom/allinone/callerid/h/a;->j(Lcom/allinone/callerid/h/a;F)F

    .line 3
    iget-object v0, p0, Lcom/allinone/callerid/h/a$e;->d:Lcom/allinone/callerid/h/a;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    invoke-static {v0, p2}, Lcom/allinone/callerid/h/a;->l(Lcom/allinone/callerid/h/a;F)F

    .line 4
    iget-object p2, p0, Lcom/allinone/callerid/h/a$e;->d:Lcom/allinone/callerid/h/a;

    invoke-static {p2}, Lcom/allinone/callerid/h/a;->m(Lcom/allinone/callerid/h/a;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    iget-object v0, p0, Lcom/allinone/callerid/h/a$e;->d:Lcom/allinone/callerid/h/a;

    invoke-static {v0}, Lcom/allinone/callerid/h/a;->i(Lcom/allinone/callerid/h/a;)F

    move-result v0

    iget-object v2, p0, Lcom/allinone/callerid/h/a$e;->d:Lcom/allinone/callerid/h/a;

    invoke-static {v2}, Lcom/allinone/callerid/h/a;->e(Lcom/allinone/callerid/h/a;)F

    move-result v2

    sub-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 5
    iget-object p2, p0, Lcom/allinone/callerid/h/a$e;->d:Lcom/allinone/callerid/h/a;

    invoke-static {p2}, Lcom/allinone/callerid/h/a;->m(Lcom/allinone/callerid/h/a;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    iget-object v0, p0, Lcom/allinone/callerid/h/a$e;->d:Lcom/allinone/callerid/h/a;

    invoke-static {v0}, Lcom/allinone/callerid/h/a;->k(Lcom/allinone/callerid/h/a;)F

    move-result v0

    iget-object v2, p0, Lcom/allinone/callerid/h/a$e;->d:Lcom/allinone/callerid/h/a;

    invoke-static {v2}, Lcom/allinone/callerid/h/a;->g(Lcom/allinone/callerid/h/a;)F

    move-result v2

    sub-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 6
    :try_start_0
    iget-object p2, p0, Lcom/allinone/callerid/h/a$e;->d:Lcom/allinone/callerid/h/a;

    invoke-static {p2}, Lcom/allinone/callerid/h/a;->n(Lcom/allinone/callerid/h/a;)Landroid/view/WindowManager;

    move-result-object p2

    iget-object v0, p0, Lcom/allinone/callerid/h/a$e;->d:Lcom/allinone/callerid/h/a;

    invoke-static {v0}, Lcom/allinone/callerid/h/a;->m(Lcom/allinone/callerid/h/a;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 8
    :cond_1
    iget-object p2, p0, Lcom/allinone/callerid/h/a$e;->d:Lcom/allinone/callerid/h/a;

    invoke-static {p2}, Lcom/allinone/callerid/h/a;->m(Lcom/allinone/callerid/h/a;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    iget-object v0, p0, Lcom/allinone/callerid/h/a$e;->d:Lcom/allinone/callerid/h/a;

    invoke-static {v0}, Lcom/allinone/callerid/h/a;->i(Lcom/allinone/callerid/h/a;)F

    move-result v0

    iget-object v2, p0, Lcom/allinone/callerid/h/a$e;->d:Lcom/allinone/callerid/h/a;

    invoke-static {v2}, Lcom/allinone/callerid/h/a;->e(Lcom/allinone/callerid/h/a;)F

    move-result v2

    sub-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 9
    iget-object p2, p0, Lcom/allinone/callerid/h/a$e;->d:Lcom/allinone/callerid/h/a;

    invoke-static {p2}, Lcom/allinone/callerid/h/a;->m(Lcom/allinone/callerid/h/a;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    iget-object v0, p0, Lcom/allinone/callerid/h/a$e;->d:Lcom/allinone/callerid/h/a;

    invoke-static {v0}, Lcom/allinone/callerid/h/a;->k(Lcom/allinone/callerid/h/a;)F

    move-result v0

    iget-object v2, p0, Lcom/allinone/callerid/h/a$e;->d:Lcom/allinone/callerid/h/a;

    invoke-static {v2}, Lcom/allinone/callerid/h/a;->g(Lcom/allinone/callerid/h/a;)F

    move-result v2

    sub-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 10
    :try_start_1
    iget-object p2, p0, Lcom/allinone/callerid/h/a$e;->d:Lcom/allinone/callerid/h/a;

    invoke-static {p2}, Lcom/allinone/callerid/h/a;->n(Lcom/allinone/callerid/h/a;)Landroid/view/WindowManager;

    move-result-object p2

    iget-object v0, p0, Lcom/allinone/callerid/h/a$e;->d:Lcom/allinone/callerid/h/a;

    invoke-static {v0}, Lcom/allinone/callerid/h/a;->m(Lcom/allinone/callerid/h/a;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p2

    .line 11
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 12
    :goto_0
    iget-object p2, p0, Lcom/allinone/callerid/h/a$e;->d:Lcom/allinone/callerid/h/a;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/allinone/callerid/h/a;->h(Lcom/allinone/callerid/h/a;F)F

    move-result v0

    invoke-static {p2, v0}, Lcom/allinone/callerid/h/a;->f(Lcom/allinone/callerid/h/a;F)F

    .line 13
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    goto :goto_1

    .line 14
    :cond_2
    iget-object p1, p0, Lcom/allinone/callerid/h/a$e;->d:Lcom/allinone/callerid/h/a;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-static {p1, v0}, Lcom/allinone/callerid/h/a;->f(Lcom/allinone/callerid/h/a;F)F

    .line 15
    iget-object p1, p0, Lcom/allinone/callerid/h/a$e;->d:Lcom/allinone/callerid/h/a;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-static {p1, p2}, Lcom/allinone/callerid/h/a;->h(Lcom/allinone/callerid/h/a;F)F

    :goto_1
    return v1
.end method
