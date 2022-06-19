.class Lcom/allinone/callerid/h/c$o;
.super Ljava/lang/Object;
.source "OverlayView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/h/c;->E0(Landroid/view/View;Ljava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Landroid/view/View;

.field final synthetic e:Lcom/allinone/callerid/h/c;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/h/c;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/h/c$o;->e:Lcom/allinone/callerid/h/c;

    iput-object p2, p0, Lcom/allinone/callerid/h/c$o;->d:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_13

    const/4 v2, 0x0

    if-eq p1, v1, :cond_e

    const/4 v3, 0x2

    if-eq p1, v3, :cond_0

    goto/16 :goto_2

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/allinone/callerid/h/c$o;->e:Lcom/allinone/callerid/h/c;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    invoke-static {p1, v4}, Lcom/allinone/callerid/h/c;->o(Lcom/allinone/callerid/h/c;F)F

    .line 3
    iget-object p1, p0, Lcom/allinone/callerid/h/c$o;->e:Lcom/allinone/callerid/h/c;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    invoke-static {p1, v4}, Lcom/allinone/callerid/h/c;->q(Lcom/allinone/callerid/h/c;F)F

    .line 4
    iget-object p1, p0, Lcom/allinone/callerid/h/c$o;->e:Lcom/allinone/callerid/h/c;

    invoke-static {p1}, Lcom/allinone/callerid/h/c;->l(Lcom/allinone/callerid/h/c;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 5
    iget-object p1, p0, Lcom/allinone/callerid/h/c$o;->e:Lcom/allinone/callerid/h/c;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iget-object v5, p0, Lcom/allinone/callerid/h/c$o;->e:Lcom/allinone/callerid/h/c;

    invoke-static {v5}, Lcom/allinone/callerid/h/c;->h(Lcom/allinone/callerid/h/c;)F

    move-result v5

    sub-float/2addr v4, v5

    float-to-int v4, v4

    invoke-static {p1, v4}, Lcom/allinone/callerid/h/c;->s(Lcom/allinone/callerid/h/c;I)I

    .line 6
    iget-object p1, p0, Lcom/allinone/callerid/h/c$o;->e:Lcom/allinone/callerid/h/c;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    iget-object v4, p0, Lcom/allinone/callerid/h/c$o;->e:Lcom/allinone/callerid/h/c;

    invoke-static {v4}, Lcom/allinone/callerid/h/c;->j(Lcom/allinone/callerid/h/c;)F

    move-result v4

    sub-float/2addr p2, v4

    float-to-int p2, p2

    invoke-static {p1, p2}, Lcom/allinone/callerid/h/c;->u(Lcom/allinone/callerid/h/c;I)I

    .line 7
    iget-object p1, p0, Lcom/allinone/callerid/h/c$o;->e:Lcom/allinone/callerid/h/c;

    invoke-static {p1}, Lcom/allinone/callerid/h/c;->r(Lcom/allinone/callerid/h/c;)I

    move-result p1

    if-eqz p1, :cond_14

    iget-object p1, p0, Lcom/allinone/callerid/h/c$o;->e:Lcom/allinone/callerid/h/c;

    invoke-static {p1}, Lcom/allinone/callerid/h/c;->t(Lcom/allinone/callerid/h/c;)I

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_2

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/allinone/callerid/h/c$o;->e:Lcom/allinone/callerid/h/c;

    invoke-static {p1}, Lcom/allinone/callerid/h/c;->t(Lcom/allinone/callerid/h/c;)I

    move-result p1

    if-lez p1, :cond_7

    .line 9
    iget-object p1, p0, Lcom/allinone/callerid/h/c$o;->e:Lcom/allinone/callerid/h/c;

    invoke-static {p1}, Lcom/allinone/callerid/h/c;->r(Lcom/allinone/callerid/h/c;)I

    move-result p1

    if-lez p1, :cond_4

    .line 10
    iget-object p1, p0, Lcom/allinone/callerid/h/c$o;->e:Lcom/allinone/callerid/h/c;

    invoke-static {p1}, Lcom/allinone/callerid/h/c;->t(Lcom/allinone/callerid/h/c;)I

    move-result p1

    iget-object p2, p0, Lcom/allinone/callerid/h/c$o;->e:Lcom/allinone/callerid/h/c;

    invoke-static {p2}, Lcom/allinone/callerid/h/c;->r(Lcom/allinone/callerid/h/c;)I

    move-result p2

    if-le p1, p2, :cond_2

    .line 11
    iget-object p1, p0, Lcom/allinone/callerid/h/c$o;->e:Lcom/allinone/callerid/h/c;

    invoke-static {p1, v1}, Lcom/allinone/callerid/h/c;->w(Lcom/allinone/callerid/h/c;Z)Z

    .line 12
    iget-object p1, p0, Lcom/allinone/callerid/h/c$o;->e:Lcom/allinone/callerid/h/c;

    invoke-static {p1, v0}, Lcom/allinone/callerid/h/c;->y(Lcom/allinone/callerid/h/c;Z)Z

    goto/16 :goto_0

    .line 13
    :cond_2
    iget-object p1, p0, Lcom/allinone/callerid/h/c$o;->e:Lcom/allinone/callerid/h/c;

    invoke-static {p1}, Lcom/allinone/callerid/h/c;->r(Lcom/allinone/callerid/h/c;)I

    move-result p1

    iget-object p2, p0, Lcom/allinone/callerid/h/c$o;->e:Lcom/allinone/callerid/h/c;

    invoke-static {p2}, Lcom/allinone/callerid/h/c;->t(Lcom/allinone/callerid/h/c;)I

    move-result p2

    sub-int/2addr p1, p2

    if-le p1, v3, :cond_3

    .line 14
    iget-object p1, p0, Lcom/allinone/callerid/h/c$o;->e:Lcom/allinone/callerid/h/c;

    invoke-static {p1, v1}, Lcom/allinone/callerid/h/c;->y(Lcom/allinone/callerid/h/c;Z)Z

    .line 15
    iget-object p1, p0, Lcom/allinone/callerid/h/c$o;->e:Lcom/allinone/callerid/h/c;

    invoke-static {p1, v0}, Lcom/allinone/callerid/h/c;->w(Lcom/allinone/callerid/h/c;Z)Z

    goto/16 :goto_0

    .line 16
    :cond_3
    iget-object p1, p0, Lcom/allinone/callerid/h/c$o;->e:Lcom/allinone/callerid/h/c;

    invoke-static {p1, v0}, Lcom/allinone/callerid/h/c;->y(Lcom/allinone/callerid/h/c;Z)Z

    .line 17
    iget-object p1, p0, Lcom/allinone/callerid/h/c$o;->e:Lcom/allinone/callerid/h/c;

    invoke-static {p1, v1}, Lcom/allinone/callerid/h/c;->w(Lcom/allinone/callerid/h/c;Z)Z

    goto/16 :goto_0

    .line 18
    :cond_4
    iget-object p1, p0, Lcom/allinone/callerid/h/c$o;->e:Lcom/allinone/callerid/h/c;

    invoke-static {p1}, Lcom/allinone/callerid/h/c;->t(Lcom/allinone/callerid/h/c;)I

    move-result p1

    iget-object p2, p0, Lcom/allinone/callerid/h/c$o;->e:Lcom/allinone/callerid/h/c;

    invoke-static {p2}, Lcom/allinone/callerid/h/c;->r(Lcom/allinone/callerid/h/c;)I

    move-result p2

    neg-int p2, p2

    if-le p1, p2, :cond_5

    .line 19
    iget-object p1, p0, Lcom/allinone/callerid/h/c$o;->e:Lcom/allinone/callerid/h/c;

    invoke-static {p1, v1}, Lcom/allinone/callerid/h/c;->w(Lcom/allinone/callerid/h/c;Z)Z

    .line 20
    iget-object p1, p0, Lcom/allinone/callerid/h/c$o;->e:Lcom/allinone/callerid/h/c;

    invoke-static {p1, v0}, Lcom/allinone/callerid/h/c;->y(Lcom/allinone/callerid/h/c;Z)Z

    goto/16 :goto_0

    .line 21
    :cond_5
    iget-object p1, p0, Lcom/allinone/callerid/h/c$o;->e:Lcom/allinone/callerid/h/c;

    invoke-static {p1}, Lcom/allinone/callerid/h/c;->r(Lcom/allinone/callerid/h/c;)I

    move-result p1

    neg-int p1, p1

    iget-object p2, p0, Lcom/allinone/callerid/h/c$o;->e:Lcom/allinone/callerid/h/c;

    invoke-static {p2}, Lcom/allinone/callerid/h/c;->t(Lcom/allinone/callerid/h/c;)I

    move-result p2

    sub-int/2addr p1, p2

    if-le p1, v3, :cond_6

    .line 22
    iget-object p1, p0, Lcom/allinone/callerid/h/c$o;->e:Lcom/allinone/callerid/h/c;

    invoke-static {p1, v1}, Lcom/allinone/callerid/h/c;->y(Lcom/allinone/callerid/h/c;Z)Z

    .line 23
    iget-object p1, p0, Lcom/allinone/callerid/h/c$o;->e:Lcom/allinone/callerid/h/c;

    invoke-static {p1, v0}, Lcom/allinone/callerid/h/c;->w(Lcom/allinone/callerid/h/c;Z)Z

    goto/16 :goto_0

    .line 24
    :cond_6
    iget-object p1, p0, Lcom/allinone/callerid/h/c$o;->e:Lcom/allinone/callerid/h/c;

    invoke-static {p1, v0}, Lcom/allinone/callerid/h/c;->y(Lcom/allinone/callerid/h/c;Z)Z

    .line 25
    iget-object p1, p0, Lcom/allinone/callerid/h/c$o;->e:Lcom/allinone/callerid/h/c;

    invoke-static {p1, v1}, Lcom/allinone/callerid/h/c;->w(Lcom/allinone/callerid/h/c;Z)Z

    goto/16 :goto_0

    .line 26
    :cond_7
    iget-object p1, p0, Lcom/allinone/callerid/h/c$o;->e:Lcom/allinone/callerid/h/c;

    invoke-static {p1}, Lcom/allinone/callerid/h/c;->r(Lcom/allinone/callerid/h/c;)I

    move-result p1

    if-lez p1, :cond_a

    .line 27
    iget-object p1, p0, Lcom/allinone/callerid/h/c$o;->e:Lcom/allinone/callerid/h/c;

    invoke-static {p1}, Lcom/allinone/callerid/h/c;->t(Lcom/allinone/callerid/h/c;)I

    move-result p1

    neg-int p1, p1

    iget-object p2, p0, Lcom/allinone/callerid/h/c$o;->e:Lcom/allinone/callerid/h/c;

    invoke-static {p2}, Lcom/allinone/callerid/h/c;->r(Lcom/allinone/callerid/h/c;)I

    move-result p2

    if-le p1, p2, :cond_8

    .line 28
    iget-object p1, p0, Lcom/allinone/callerid/h/c$o;->e:Lcom/allinone/callerid/h/c;

    invoke-static {p1, v1}, Lcom/allinone/callerid/h/c;->w(Lcom/allinone/callerid/h/c;Z)Z

    .line 29
    iget-object p1, p0, Lcom/allinone/callerid/h/c$o;->e:Lcom/allinone/callerid/h/c;

    invoke-static {p1, v0}, Lcom/allinone/callerid/h/c;->y(Lcom/allinone/callerid/h/c;Z)Z

    goto :goto_0

    .line 30
    :cond_8
    iget-object p1, p0, Lcom/allinone/callerid/h/c$o;->e:Lcom/allinone/callerid/h/c;

    invoke-static {p1}, Lcom/allinone/callerid/h/c;->r(Lcom/allinone/callerid/h/c;)I

    move-result p1

    iget-object p2, p0, Lcom/allinone/callerid/h/c$o;->e:Lcom/allinone/callerid/h/c;

    invoke-static {p2}, Lcom/allinone/callerid/h/c;->t(Lcom/allinone/callerid/h/c;)I

    move-result p2

    neg-int p2, p2

    sub-int/2addr p1, p2

    if-le p1, v3, :cond_9

    .line 31
    iget-object p1, p0, Lcom/allinone/callerid/h/c$o;->e:Lcom/allinone/callerid/h/c;

    invoke-static {p1, v1}, Lcom/allinone/callerid/h/c;->y(Lcom/allinone/callerid/h/c;Z)Z

    .line 32
    iget-object p1, p0, Lcom/allinone/callerid/h/c$o;->e:Lcom/allinone/callerid/h/c;

    invoke-static {p1, v0}, Lcom/allinone/callerid/h/c;->w(Lcom/allinone/callerid/h/c;Z)Z

    goto :goto_0

    .line 33
    :cond_9
    iget-object p1, p0, Lcom/allinone/callerid/h/c$o;->e:Lcom/allinone/callerid/h/c;

    invoke-static {p1, v0}, Lcom/allinone/callerid/h/c;->y(Lcom/allinone/callerid/h/c;Z)Z

    .line 34
    iget-object p1, p0, Lcom/allinone/callerid/h/c$o;->e:Lcom/allinone/callerid/h/c;

    invoke-static {p1, v1}, Lcom/allinone/callerid/h/c;->w(Lcom/allinone/callerid/h/c;Z)Z

    goto :goto_0

    .line 35
    :cond_a
    iget-object p1, p0, Lcom/allinone/callerid/h/c$o;->e:Lcom/allinone/callerid/h/c;

    invoke-static {p1}, Lcom/allinone/callerid/h/c;->t(Lcom/allinone/callerid/h/c;)I

    move-result p1

    neg-int p1, p1

    iget-object p2, p0, Lcom/allinone/callerid/h/c$o;->e:Lcom/allinone/callerid/h/c;

    invoke-static {p2}, Lcom/allinone/callerid/h/c;->r(Lcom/allinone/callerid/h/c;)I

    move-result p2

    neg-int p2, p2

    if-le p1, p2, :cond_b

    .line 36
    iget-object p1, p0, Lcom/allinone/callerid/h/c$o;->e:Lcom/allinone/callerid/h/c;

    invoke-static {p1, v1}, Lcom/allinone/callerid/h/c;->w(Lcom/allinone/callerid/h/c;Z)Z

    .line 37
    iget-object p1, p0, Lcom/allinone/callerid/h/c$o;->e:Lcom/allinone/callerid/h/c;

    invoke-static {p1, v0}, Lcom/allinone/callerid/h/c;->y(Lcom/allinone/callerid/h/c;Z)Z

    goto :goto_0

    .line 38
    :cond_b
    iget-object p1, p0, Lcom/allinone/callerid/h/c$o;->e:Lcom/allinone/callerid/h/c;

    invoke-static {p1}, Lcom/allinone/callerid/h/c;->r(Lcom/allinone/callerid/h/c;)I

    move-result p1

    neg-int p1, p1

    iget-object p2, p0, Lcom/allinone/callerid/h/c$o;->e:Lcom/allinone/callerid/h/c;

    invoke-static {p2}, Lcom/allinone/callerid/h/c;->t(Lcom/allinone/callerid/h/c;)I

    move-result p2

    neg-int p2, p2

    sub-int/2addr p1, p2

    if-le p1, v3, :cond_c

    .line 39
    iget-object p1, p0, Lcom/allinone/callerid/h/c$o;->e:Lcom/allinone/callerid/h/c;

    invoke-static {p1, v1}, Lcom/allinone/callerid/h/c;->y(Lcom/allinone/callerid/h/c;Z)Z

    .line 40
    iget-object p1, p0, Lcom/allinone/callerid/h/c$o;->e:Lcom/allinone/callerid/h/c;

    invoke-static {p1, v0}, Lcom/allinone/callerid/h/c;->w(Lcom/allinone/callerid/h/c;Z)Z

    goto :goto_0

    .line 41
    :cond_c
    iget-object p1, p0, Lcom/allinone/callerid/h/c$o;->e:Lcom/allinone/callerid/h/c;

    invoke-static {p1, v0}, Lcom/allinone/callerid/h/c;->y(Lcom/allinone/callerid/h/c;Z)Z

    .line 42
    iget-object p1, p0, Lcom/allinone/callerid/h/c$o;->e:Lcom/allinone/callerid/h/c;

    invoke-static {p1, v1}, Lcom/allinone/callerid/h/c;->w(Lcom/allinone/callerid/h/c;Z)Z

    .line 43
    :goto_0
    iget-object p1, p0, Lcom/allinone/callerid/h/c$o;->e:Lcom/allinone/callerid/h/c;

    invoke-static {p1, v0}, Lcom/allinone/callerid/h/c;->m(Lcom/allinone/callerid/h/c;Z)Z

    .line 44
    :cond_d
    :try_start_0
    iget-object p1, p0, Lcom/allinone/callerid/h/c$o;->e:Lcom/allinone/callerid/h/c;

    invoke-static {p1}, Lcom/allinone/callerid/h/c;->v(Lcom/allinone/callerid/h/c;)Z

    move-result p1

    if-eqz p1, :cond_14

    .line 45
    iget-object p1, p0, Lcom/allinone/callerid/h/c$o;->e:Lcom/allinone/callerid/h/c;

    invoke-static {p1}, Lcom/allinone/callerid/h/c;->m0(Lcom/allinone/callerid/h/c;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget-object p2, p0, Lcom/allinone/callerid/h/c$o;->e:Lcom/allinone/callerid/h/c;

    invoke-static {p2}, Lcom/allinone/callerid/h/c;->p(Lcom/allinone/callerid/h/c;)F

    move-result p2

    iget-object v1, p0, Lcom/allinone/callerid/h/c$o;->e:Lcom/allinone/callerid/h/c;

    invoke-static {v1}, Lcom/allinone/callerid/h/c;->j(Lcom/allinone/callerid/h/c;)F

    move-result v1

    sub-float/2addr p2, v1

    float-to-int p2, p2

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 46
    iget-object p1, p0, Lcom/allinone/callerid/h/c$o;->e:Lcom/allinone/callerid/h/c;

    invoke-static {p1}, Lcom/allinone/callerid/h/c;->m0(Lcom/allinone/callerid/h/c;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object p2, p0, Lcom/allinone/callerid/h/c$o;->e:Lcom/allinone/callerid/h/c;

    invoke-static {p2}, Lcom/allinone/callerid/h/c;->z(Lcom/allinone/callerid/h/c;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v2}, Lcom/allinone/callerid/util/j;->a(Landroid/content/Context;F)I

    move-result p2

    if-le p1, p2, :cond_14

    iget-object p1, p0, Lcom/allinone/callerid/h/c$o;->e:Lcom/allinone/callerid/h/c;

    .line 47
    invoke-static {p1}, Lcom/allinone/callerid/h/c;->m0(Lcom/allinone/callerid/h/c;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object p2, p0, Lcom/allinone/callerid/h/c$o;->e:Lcom/allinone/callerid/h/c;

    invoke-static {p2}, Lcom/allinone/callerid/h/c;->v0(Lcom/allinone/callerid/h/c;)Landroid/view/WindowManager;

    move-result-object p2

    invoke-interface {p2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/Display;->getHeight()I

    move-result p2

    iget-object v1, p0, Lcom/allinone/callerid/h/c$o;->d:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    sub-int/2addr p2, v1

    if-ge p1, p2, :cond_14

    .line 48
    iget-object p1, p0, Lcom/allinone/callerid/h/c$o;->e:Lcom/allinone/callerid/h/c;

    invoke-static {p1}, Lcom/allinone/callerid/h/c;->v0(Lcom/allinone/callerid/h/c;)Landroid/view/WindowManager;

    move-result-object p1

    iget-object p2, p0, Lcom/allinone/callerid/h/c$o;->d:Landroid/view/View;

    iget-object v1, p0, Lcom/allinone/callerid/h/c$o;->e:Lcom/allinone/callerid/h/c;

    invoke-static {v1}, Lcom/allinone/callerid/h/c;->m0(Lcom/allinone/callerid/h/c;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    invoke-interface {p1, p2, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception p1

    .line 49
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 50
    :cond_e
    :try_start_1
    iget-object p1, p0, Lcom/allinone/callerid/h/c$o;->e:Lcom/allinone/callerid/h/c;

    invoke-static {p1}, Lcom/allinone/callerid/h/c;->v(Lcom/allinone/callerid/h/c;)Z

    move-result p1

    const/4 p2, -0x1

    if-eqz p1, :cond_f

    .line 51
    iget-object p1, p0, Lcom/allinone/callerid/h/c$o;->e:Lcom/allinone/callerid/h/c;

    invoke-static {p1}, Lcom/allinone/callerid/h/c;->m0(Lcom/allinone/callerid/h/c;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget-object v1, p0, Lcom/allinone/callerid/h/c$o;->e:Lcom/allinone/callerid/h/c;

    invoke-static {v1}, Lcom/allinone/callerid/h/c;->p(Lcom/allinone/callerid/h/c;)F

    move-result v1

    iget-object v3, p0, Lcom/allinone/callerid/h/c$o;->e:Lcom/allinone/callerid/h/c;

    invoke-static {v3}, Lcom/allinone/callerid/h/c;->j(Lcom/allinone/callerid/h/c;)F

    move-result v3

    sub-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 52
    iget-object p1, p0, Lcom/allinone/callerid/h/c$o;->e:Lcom/allinone/callerid/h/c;

    invoke-static {p1}, Lcom/allinone/callerid/h/c;->m0(Lcom/allinone/callerid/h/c;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v1, p0, Lcom/allinone/callerid/h/c$o;->e:Lcom/allinone/callerid/h/c;

    invoke-static {v1}, Lcom/allinone/callerid/h/c;->z(Lcom/allinone/callerid/h/c;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/allinone/callerid/util/j;->a(Landroid/content/Context;F)I

    move-result v1

    if-le p1, v1, :cond_f

    iget-object p1, p0, Lcom/allinone/callerid/h/c$o;->e:Lcom/allinone/callerid/h/c;

    .line 53
    invoke-static {p1}, Lcom/allinone/callerid/h/c;->m0(Lcom/allinone/callerid/h/c;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v1, p0, Lcom/allinone/callerid/h/c$o;->e:Lcom/allinone/callerid/h/c;

    invoke-static {v1}, Lcom/allinone/callerid/h/c;->v0(Lcom/allinone/callerid/h/c;)Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    iget-object v3, p0, Lcom/allinone/callerid/h/c$o;->d:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    sub-int/2addr v1, v3

    if-ge p1, v1, :cond_f

    .line 54
    iget-object p1, p0, Lcom/allinone/callerid/h/c$o;->e:Lcom/allinone/callerid/h/c;

    invoke-static {p1}, Lcom/allinone/callerid/h/c;->v0(Lcom/allinone/callerid/h/c;)Landroid/view/WindowManager;

    move-result-object p1

    iget-object v1, p0, Lcom/allinone/callerid/h/c$o;->d:Landroid/view/View;

    iget-object v3, p0, Lcom/allinone/callerid/h/c$o;->e:Lcom/allinone/callerid/h/c;

    invoke-static {v3}, Lcom/allinone/callerid/h/c;->m0(Lcom/allinone/callerid/h/c;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    invoke-interface {p1, v1, v3}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 55
    invoke-static {}, Lcom/allinone/callerid/util/a1;->a0()I

    move-result p1

    if-ne p1, p2, :cond_f

    .line 56
    iget-object p1, p0, Lcom/allinone/callerid/h/c$o;->e:Lcom/allinone/callerid/h/c;

    invoke-static {p1}, Lcom/allinone/callerid/h/c;->m0(Lcom/allinone/callerid/h/c;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-static {p1}, Lcom/allinone/callerid/util/a1;->j2(I)V

    .line 57
    :cond_f
    invoke-static {}, Lcom/allinone/callerid/util/a1;->a0()I

    move-result p1

    if-ne p1, p2, :cond_12

    .line 58
    iget-object p1, p0, Lcom/allinone/callerid/h/c$o;->e:Lcom/allinone/callerid/h/c;

    invoke-static {p1}, Lcom/allinone/callerid/h/c;->m0(Lcom/allinone/callerid/h/c;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object p2, p0, Lcom/allinone/callerid/h/c$o;->e:Lcom/allinone/callerid/h/c;

    invoke-static {p2}, Lcom/allinone/callerid/h/c;->z(Lcom/allinone/callerid/h/c;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v2}, Lcom/allinone/callerid/util/j;->a(Landroid/content/Context;F)I

    move-result p2

    if-ge p1, p2, :cond_10

    .line 59
    iget-object p1, p0, Lcom/allinone/callerid/h/c$o;->e:Lcom/allinone/callerid/h/c;

    invoke-static {p1}, Lcom/allinone/callerid/h/c;->z(Lcom/allinone/callerid/h/c;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v2}, Lcom/allinone/callerid/util/j;->a(Landroid/content/Context;F)I

    move-result p1

    invoke-static {p1}, Lcom/allinone/callerid/util/a1;->j2(I)V

    goto :goto_1

    .line 60
    :cond_10
    iget-object p1, p0, Lcom/allinone/callerid/h/c$o;->e:Lcom/allinone/callerid/h/c;

    invoke-static {p1}, Lcom/allinone/callerid/h/c;->m0(Lcom/allinone/callerid/h/c;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object p2, p0, Lcom/allinone/callerid/h/c$o;->e:Lcom/allinone/callerid/h/c;

    invoke-static {p2}, Lcom/allinone/callerid/h/c;->v0(Lcom/allinone/callerid/h/c;)Landroid/view/WindowManager;

    move-result-object p2

    invoke-interface {p2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/Display;->getHeight()I

    move-result p2

    iget-object v1, p0, Lcom/allinone/callerid/h/c$o;->d:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    sub-int/2addr p2, v1

    if-le p1, p2, :cond_11

    .line 61
    iget-object p1, p0, Lcom/allinone/callerid/h/c$o;->e:Lcom/allinone/callerid/h/c;

    invoke-static {p1}, Lcom/allinone/callerid/h/c;->v0(Lcom/allinone/callerid/h/c;)Landroid/view/WindowManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getHeight()I

    move-result p1

    iget-object p2, p0, Lcom/allinone/callerid/h/c$o;->d:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    sub-int/2addr p1, p2

    invoke-static {p1}, Lcom/allinone/callerid/util/a1;->j2(I)V

    goto :goto_1

    .line 62
    :cond_11
    iget-object p1, p0, Lcom/allinone/callerid/h/c$o;->e:Lcom/allinone/callerid/h/c;

    invoke-static {p1}, Lcom/allinone/callerid/h/c;->m0(Lcom/allinone/callerid/h/c;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-static {p1}, Lcom/allinone/callerid/util/a1;->j2(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 63
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 64
    :cond_12
    :goto_1
    iget-object p1, p0, Lcom/allinone/callerid/h/c$o;->e:Lcom/allinone/callerid/h/c;

    invoke-static {p1, v2}, Lcom/allinone/callerid/h/c;->k(Lcom/allinone/callerid/h/c;F)F

    move-result p2

    invoke-static {p1, p2}, Lcom/allinone/callerid/h/c;->i(Lcom/allinone/callerid/h/c;F)F

    goto :goto_2

    .line 65
    :cond_13
    iget-object p1, p0, Lcom/allinone/callerid/h/c$o;->e:Lcom/allinone/callerid/h/c;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-static {p1, v2}, Lcom/allinone/callerid/h/c;->i(Lcom/allinone/callerid/h/c;F)F

    .line 66
    iget-object p1, p0, Lcom/allinone/callerid/h/c$o;->e:Lcom/allinone/callerid/h/c;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-static {p1, p2}, Lcom/allinone/callerid/h/c;->k(Lcom/allinone/callerid/h/c;F)F

    .line 67
    iget-object p1, p0, Lcom/allinone/callerid/h/c$o;->e:Lcom/allinone/callerid/h/c;

    invoke-static {p1, v1}, Lcom/allinone/callerid/h/c;->m(Lcom/allinone/callerid/h/c;Z)Z

    :cond_14
    :goto_2
    return v0
.end method
