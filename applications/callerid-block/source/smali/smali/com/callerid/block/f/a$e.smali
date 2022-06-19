.class final Lcom/callerid/block/f/a$e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/f/a;->p(Landroid/view/View;Lcom/callerid/block/search/CallLogBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-static {v0}, Lcom/callerid/block/f/a;->h(F)F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    invoke-static {p2}, Lcom/callerid/block/f/a;->j(F)F

    invoke-static {}, Lcom/callerid/block/f/a;->k()Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    invoke-static {}, Lcom/callerid/block/f/a;->g()F

    move-result v0

    invoke-static {}, Lcom/callerid/block/f/a;->c()F

    move-result v2

    sub-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-static {}, Lcom/callerid/block/f/a;->k()Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    invoke-static {}, Lcom/callerid/block/f/a;->i()F

    move-result v0

    invoke-static {}, Lcom/callerid/block/f/a;->e()F

    move-result v2

    sub-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    :try_start_0
    invoke-static {}, Lcom/callerid/block/f/a;->l()Landroid/view/WindowManager;

    move-result-object p2

    invoke-static {}, Lcom/callerid/block/f/a;->k()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/callerid/block/f/a;->k()Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    invoke-static {}, Lcom/callerid/block/f/a;->g()F

    move-result v0

    invoke-static {}, Lcom/callerid/block/f/a;->c()F

    move-result v2

    sub-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-static {}, Lcom/callerid/block/f/a;->k()Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    invoke-static {}, Lcom/callerid/block/f/a;->i()F

    move-result v0

    invoke-static {}, Lcom/callerid/block/f/a;->e()F

    move-result v2

    sub-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    :try_start_1
    invoke-static {}, Lcom/callerid/block/f/a;->l()Landroid/view/WindowManager;

    move-result-object p2

    invoke-static {}, Lcom/callerid/block/f/a;->k()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const/4 p1, 0x0

    invoke-static {p1}, Lcom/callerid/block/f/a;->f(F)F

    invoke-static {p1}, Lcom/callerid/block/f/a;->d(F)F

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-static {p1}, Lcom/callerid/block/f/a;->d(F)F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-static {p1}, Lcom/callerid/block/f/a;->f(F)F

    :goto_1
    return v1
.end method
