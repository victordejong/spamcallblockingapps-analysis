.class public Ll31$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ll31;->s()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:F

.field public d:F

.field public final synthetic f:Ll31;


# direct methods
.method public constructor <init>(Ll31;)V
    .locals 0

    iput-object p1, p0, Ll31$a;->f:Ll31;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Ll31$a;->f:Ll31;

    invoke-static {p1}, Ll31;->e(Ll31;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget v0, p0, Ll31$a;->a:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iget v2, p0, Ll31$a;->c:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object p1, p0, Ll31$a;->f:Ll31;

    invoke-static {p1}, Ll31;->e(Ll31;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget v0, p0, Ll31$a;->b:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    iget v1, p0, Ll31$a;->d:F

    sub-float/2addr p2, v1

    float-to-int p2, p2

    add-int/2addr v0, p2

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object p1, p0, Ll31$a;->f:Ll31;

    invoke-static {p1}, Ll31;->g(Ll31;)Landroid/view/WindowManager;

    move-result-object p1

    iget-object p2, p0, Ll31$a;->f:Ll31;

    invoke-static {p2}, Ll31;->f(Ll31;)Landroid/view/View;

    move-result-object p2

    iget-object v0, p0, Ll31$a;->f:Ll31;

    invoke-static {v0}, Ll31;->e(Ll31;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Ll31$a;->f:Ll31;

    invoke-static {p1}, Ll31;->e(Ll31;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    iput p1, p0, Ll31$a;->a:I

    iget-object p1, p0, Ll31$a;->f:Ll31;

    invoke-static {p1}, Ll31;->e(Ll31;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    iput p1, p0, Ll31$a;->b:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iput p1, p0, Ll31$a;->c:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Ll31$a;->d:F

    :goto_0
    const/4 p1, 0x0

    return p1
.end method
