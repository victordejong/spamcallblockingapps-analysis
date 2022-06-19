.class Lcom/allinone/callerid/customview/FloatNormalView$d;
.super Ljava/lang/Object;
.source "FloatNormalView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/customview/FloatNormalView;->q()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/customview/FloatNormalView;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/customview/FloatNormalView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/customview/FloatNormalView$d;->d:Lcom/allinone/callerid/customview/FloatNormalView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/allinone/callerid/customview/FloatNormalView$d;->d:Lcom/allinone/callerid/customview/FloatNormalView;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-static {p1, v1}, Lcom/allinone/callerid/customview/FloatNormalView;->o(Lcom/allinone/callerid/customview/FloatNormalView;F)F

    .line 3
    iget-object p1, p0, Lcom/allinone/callerid/customview/FloatNormalView$d;->d:Lcom/allinone/callerid/customview/FloatNormalView;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    invoke-static {p1, p2}, Lcom/allinone/callerid/customview/FloatNormalView;->d(Lcom/allinone/callerid/customview/FloatNormalView;F)F

    .line 4
    iget-object p1, p0, Lcom/allinone/callerid/customview/FloatNormalView$d;->d:Lcom/allinone/callerid/customview/FloatNormalView;

    invoke-static {p1}, Lcom/allinone/callerid/customview/FloatNormalView;->e(Lcom/allinone/callerid/customview/FloatNormalView;)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/allinone/callerid/customview/FloatNormalView$d;->d:Lcom/allinone/callerid/customview/FloatNormalView;

    invoke-static {p1}, Lcom/allinone/callerid/customview/FloatNormalView;->i(Lcom/allinone/callerid/customview/FloatNormalView;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 6
    iget-object p1, p0, Lcom/allinone/callerid/customview/FloatNormalView$d;->d:Lcom/allinone/callerid/customview/FloatNormalView;

    invoke-static {p1, v0}, Lcom/allinone/callerid/customview/FloatNormalView;->j(Lcom/allinone/callerid/customview/FloatNormalView;Z)Z

    .line 7
    iget-object p1, p0, Lcom/allinone/callerid/customview/FloatNormalView$d;->d:Lcom/allinone/callerid/customview/FloatNormalView;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iget-object v2, p0, Lcom/allinone/callerid/customview/FloatNormalView$d;->d:Lcom/allinone/callerid/customview/FloatNormalView;

    invoke-static {v2}, Lcom/allinone/callerid/customview/FloatNormalView;->l(Lcom/allinone/callerid/customview/FloatNormalView;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-static {p1, v1}, Lcom/allinone/callerid/customview/FloatNormalView;->k(Lcom/allinone/callerid/customview/FloatNormalView;F)F

    .line 8
    iget-object p1, p0, Lcom/allinone/callerid/customview/FloatNormalView$d;->d:Lcom/allinone/callerid/customview/FloatNormalView;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    iget-object v1, p0, Lcom/allinone/callerid/customview/FloatNormalView$d;->d:Lcom/allinone/callerid/customview/FloatNormalView;

    invoke-static {v1}, Lcom/allinone/callerid/customview/FloatNormalView;->l(Lcom/allinone/callerid/customview/FloatNormalView;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v1, v1

    sub-float/2addr p2, v1

    invoke-static {p1, p2}, Lcom/allinone/callerid/customview/FloatNormalView;->m(Lcom/allinone/callerid/customview/FloatNormalView;F)F

    goto :goto_0

    .line 9
    :cond_2
    iget-object p1, p0, Lcom/allinone/callerid/customview/FloatNormalView$d;->d:Lcom/allinone/callerid/customview/FloatNormalView;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iget-object v2, p0, Lcom/allinone/callerid/customview/FloatNormalView$d;->d:Lcom/allinone/callerid/customview/FloatNormalView;

    invoke-static {v2}, Lcom/allinone/callerid/customview/FloatNormalView;->n(Lcom/allinone/callerid/customview/FloatNormalView;)F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {p1, v1}, Lcom/allinone/callerid/customview/FloatNormalView;->k(Lcom/allinone/callerid/customview/FloatNormalView;F)F

    .line 10
    iget-object p1, p0, Lcom/allinone/callerid/customview/FloatNormalView$d;->d:Lcom/allinone/callerid/customview/FloatNormalView;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    iget-object v1, p0, Lcom/allinone/callerid/customview/FloatNormalView$d;->d:Lcom/allinone/callerid/customview/FloatNormalView;

    invoke-static {v1}, Lcom/allinone/callerid/customview/FloatNormalView;->c(Lcom/allinone/callerid/customview/FloatNormalView;)F

    move-result v1

    sub-float/2addr p2, v1

    invoke-static {p1, p2}, Lcom/allinone/callerid/customview/FloatNormalView;->m(Lcom/allinone/callerid/customview/FloatNormalView;F)F

    :goto_0
    return v0
.end method
