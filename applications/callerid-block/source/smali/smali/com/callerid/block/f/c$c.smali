.class final Lcom/callerid/block/f/c$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/f/c;->b0(Landroid/view/View;Ljava/lang/String;II)V
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
    .locals 5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_13

    const/4 v2, 0x0

    if-eq v0, v1, :cond_c

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    goto/16 :goto_7

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-static {v0}, Lcom/callerid/block/f/c;->l(F)F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    invoke-static {v0}, Lcom/callerid/block/f/c;->n(F)F

    invoke-static {}, Lcom/callerid/block/f/c;->f()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-static {}, Lcom/callerid/block/f/c;->U()F

    move-result v4

    sub-float/2addr v0, v4

    float-to-int v0, v0

    invoke-static {v0}, Lcom/callerid/block/f/c;->p(I)I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-static {}, Lcom/callerid/block/f/c;->d()F

    move-result v0

    sub-float/2addr p2, v0

    float-to-int p2, p2

    invoke-static {p2}, Lcom/callerid/block/f/c;->r(I)I

    invoke-static {}, Lcom/callerid/block/f/c;->o()I

    move-result p2

    if-eqz p2, :cond_15

    invoke-static {}, Lcom/callerid/block/f/c;->q()I

    move-result p2

    if-nez p2, :cond_1

    goto/16 :goto_7

    :cond_1
    invoke-static {}, Lcom/callerid/block/f/c;->q()I

    move-result p2

    const/4 v0, 0x0

    if-lez p2, :cond_5

    invoke-static {}, Lcom/callerid/block/f/c;->o()I

    move-result p2

    if-lez p2, :cond_3

    invoke-static {}, Lcom/callerid/block/f/c;->q()I

    move-result p2

    invoke-static {}, Lcom/callerid/block/f/c;->o()I

    move-result v4

    if-le p2, v4, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/callerid/block/f/c;->o()I

    move-result p2

    invoke-static {}, Lcom/callerid/block/f/c;->q()I

    move-result v4

    sub-int/2addr p2, v4

    if-le p2, v3, :cond_9

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/callerid/block/f/c;->q()I

    move-result p2

    invoke-static {}, Lcom/callerid/block/f/c;->o()I

    move-result v4

    neg-int v4, v4

    if-le p2, v4, :cond_4

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/callerid/block/f/c;->o()I

    move-result p2

    neg-int p2, p2

    invoke-static {}, Lcom/callerid/block/f/c;->q()I

    move-result v4

    sub-int/2addr p2, v4

    if-le p2, v3, :cond_9

    goto :goto_1

    :cond_5
    invoke-static {}, Lcom/callerid/block/f/c;->o()I

    move-result p2

    if-lez p2, :cond_7

    invoke-static {}, Lcom/callerid/block/f/c;->q()I

    move-result p2

    neg-int p2, p2

    invoke-static {}, Lcom/callerid/block/f/c;->o()I

    move-result v4

    if-le p2, v4, :cond_6

    goto :goto_0

    :cond_6
    invoke-static {}, Lcom/callerid/block/f/c;->o()I

    move-result p2

    invoke-static {}, Lcom/callerid/block/f/c;->q()I

    move-result v4

    neg-int v4, v4

    sub-int/2addr p2, v4

    if-le p2, v3, :cond_9

    goto :goto_1

    :cond_7
    invoke-static {}, Lcom/callerid/block/f/c;->q()I

    move-result p2

    neg-int p2, p2

    invoke-static {}, Lcom/callerid/block/f/c;->o()I

    move-result v4

    neg-int v4, v4

    if-le p2, v4, :cond_8

    :goto_0
    invoke-static {v1}, Lcom/callerid/block/f/c;->t(Z)Z

    invoke-static {v0}, Lcom/callerid/block/f/c;->v(Z)Z

    goto :goto_2

    :cond_8
    invoke-static {}, Lcom/callerid/block/f/c;->o()I

    move-result p2

    neg-int p2, p2

    invoke-static {}, Lcom/callerid/block/f/c;->q()I

    move-result v4

    neg-int v4, v4

    sub-int/2addr p2, v4

    if-le p2, v3, :cond_9

    :goto_1
    invoke-static {v1}, Lcom/callerid/block/f/c;->v(Z)Z

    invoke-static {v0}, Lcom/callerid/block/f/c;->t(Z)Z

    goto :goto_2

    :cond_9
    invoke-static {v0}, Lcom/callerid/block/f/c;->v(Z)Z

    invoke-static {v1}, Lcom/callerid/block/f/c;->t(Z)Z

    :goto_2
    invoke-static {v0}, Lcom/callerid/block/f/c;->g(Z)Z

    :cond_a
    :try_start_0
    invoke-static {}, Lcom/callerid/block/f/c;->s()Z

    move-result p2

    if-eqz p2, :cond_b

    invoke-static {}, Lcom/callerid/block/f/c;->j()Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    invoke-static {}, Lcom/callerid/block/f/c;->m()F

    move-result v0

    invoke-static {}, Lcom/callerid/block/f/c;->d()F

    move-result v3

    sub-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-static {}, Lcom/callerid/block/f/c;->j()Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    iget p2, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-static {}, Lcom/callerid/block/f/c;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/callerid/block/util/g;->a(Landroid/content/Context;F)I

    move-result v0

    if-le p2, v0, :cond_b

    invoke-static {}, Lcom/callerid/block/f/c;->j()Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    iget p2, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-static {}, Lcom/callerid/block/f/c;->x()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int/2addr v0, v2

    if-ge p2, v0, :cond_b

    invoke-static {}, Lcom/callerid/block/f/c;->x()Landroid/view/WindowManager;

    move-result-object p2

    invoke-static {}, Lcom/callerid/block/f/c;->j()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_b
    invoke-static {}, Lcom/callerid/block/f/c;->u()Z

    move-result p2

    if-eqz p2, :cond_15

    invoke-static {}, Lcom/callerid/block/f/c;->j()Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    invoke-static {}, Lcom/callerid/block/f/c;->k()F

    move-result v0

    invoke-static {}, Lcom/callerid/block/f/c;->U()F

    move-result v2

    sub-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-static {}, Lcom/callerid/block/f/c;->x()Landroid/view/WindowManager;

    move-result-object p2

    invoke-static {}, Lcom/callerid/block/f/c;->j()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_7

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_7

    :cond_c
    :try_start_1
    invoke-static {}, Lcom/callerid/block/f/c;->s()Z

    move-result p2

    if-eqz p2, :cond_d

    invoke-static {}, Lcom/callerid/block/f/c;->j()Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    invoke-static {}, Lcom/callerid/block/f/c;->m()F

    move-result v0

    invoke-static {}, Lcom/callerid/block/f/c;->d()F

    move-result v3

    sub-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-static {}, Lcom/callerid/block/f/c;->j()Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    iget p2, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-static {}, Lcom/callerid/block/f/c;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/callerid/block/util/g;->a(Landroid/content/Context;F)I

    move-result v0

    if-le p2, v0, :cond_d

    invoke-static {}, Lcom/callerid/block/f/c;->j()Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    iget p2, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-static {}, Lcom/callerid/block/f/c;->x()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    sub-int/2addr v0, v3

    if-ge p2, v0, :cond_d

    invoke-static {}, Lcom/callerid/block/f/c;->x()Landroid/view/WindowManager;

    move-result-object p2

    invoke-static {}, Lcom/callerid/block/f/c;->j()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {}, Lcom/callerid/block/f/c;->c()Landroid/content/Context;

    move-result-object p2

    invoke-static {}, Lcom/callerid/block/f/c;->j()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-static {p2, v0}, Lcom/callerid/block/util/n0;->x1(Landroid/content/Context;I)V

    :cond_d
    invoke-static {}, Lcom/callerid/block/f/c;->u()Z

    move-result p2

    if-eqz p2, :cond_10

    invoke-static {}, Lcom/callerid/block/f/c;->k()F

    move-result p2

    invoke-static {}, Lcom/callerid/block/f/c;->U()F

    move-result v0

    sub-float/2addr p2, v0

    float-to-int p2, p2

    const/16 v0, 0x64

    if-gt p2, v0, :cond_f

    invoke-static {}, Lcom/callerid/block/f/c;->k()F

    move-result p2

    invoke-static {}, Lcom/callerid/block/f/c;->U()F

    move-result v0

    sub-float/2addr p2, v0

    float-to-int p2, p2

    const/16 v0, -0x64

    if-ge p2, v0, :cond_e

    goto :goto_3

    :cond_e
    invoke-static {}, Lcom/callerid/block/f/c;->j()Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    invoke-static {}, Lcom/callerid/block/f/c;->h()I

    move-result v0

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-static {}, Lcom/callerid/block/f/c;->x()Landroid/view/WindowManager;

    move-result-object p2

    invoke-static {}, Lcom/callerid/block/f/c;->j()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_4

    :cond_f
    :goto_3
    invoke-static {}, Lcom/callerid/block/f/c;->c()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/callerid/block/f/c;->Z(Landroid/content/Context;)V

    :cond_10
    :goto_4
    invoke-static {}, Lcom/callerid/block/f/c;->j()Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    iget p2, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-static {}, Lcom/callerid/block/f/c;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/callerid/block/util/g;->a(Landroid/content/Context;F)I

    move-result v0

    if-ge p2, v0, :cond_11

    invoke-static {}, Lcom/callerid/block/f/c;->c()Landroid/content/Context;

    move-result-object p1

    invoke-static {}, Lcom/callerid/block/f/c;->c()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v2}, Lcom/callerid/block/util/g;->a(Landroid/content/Context;F)I

    move-result p2

    :goto_5
    invoke-static {p1, p2}, Lcom/callerid/block/util/n0;->x1(Landroid/content/Context;I)V

    goto :goto_6

    :cond_11
    invoke-static {}, Lcom/callerid/block/f/c;->j()Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    iget p2, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-static {}, Lcom/callerid/block/f/c;->x()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    sub-int/2addr v0, v3

    if-le p2, v0, :cond_12

    invoke-static {}, Lcom/callerid/block/f/c;->c()Landroid/content/Context;

    move-result-object p2

    invoke-static {}, Lcom/callerid/block/f/c;->x()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    sub-int/2addr v0, p1

    invoke-static {p2, v0}, Lcom/callerid/block/util/n0;->x1(Landroid/content/Context;I)V

    goto :goto_6

    :cond_12
    invoke-static {}, Lcom/callerid/block/f/c;->c()Landroid/content/Context;

    move-result-object p1

    invoke-static {}, Lcom/callerid/block/f/c;->j()Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    iget p2, p2, Landroid/view/WindowManager$LayoutParams;->y:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_6
    invoke-static {v2}, Lcom/callerid/block/f/c;->e(F)F

    invoke-static {v2}, Lcom/callerid/block/f/c;->V(F)F

    goto :goto_7

    :cond_13
    invoke-static {}, Lcom/callerid/block/f/c;->w()Ljava/lang/String;

    move-result-object p1

    const-string v0, "123456789"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_14

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object p1

    const-string v0, "touch_float"

    invoke-virtual {p1, v0}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    :cond_14
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-static {p1}, Lcom/callerid/block/f/c;->V(F)F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-static {p1}, Lcom/callerid/block/f/c;->e(F)F

    invoke-static {v1}, Lcom/callerid/block/f/c;->g(Z)Z

    invoke-static {}, Lcom/callerid/block/f/c;->j()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-static {p1}, Lcom/callerid/block/f/c;->i(I)I

    :cond_15
    :goto_7
    return v1
.end method
