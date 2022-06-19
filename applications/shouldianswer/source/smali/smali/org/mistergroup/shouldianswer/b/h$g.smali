.class public final Lorg/mistergroup/shouldianswer/b/h$g;
.super Ljava/lang/Object;
.source "RingingAlertPopup.kt"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/b/h;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/mistergroup/shouldianswer/b/h;

.field final synthetic b:F

.field final synthetic c:Landroid/widget/LinearLayout;

.field private d:F

.field private e:F

.field private f:I

.field private g:I

.field private h:I

.field private i:Z


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/b/h;FLandroid/widget/LinearLayout;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Landroid/widget/LinearLayout;",
            ")V"
        }
    .end annotation

    .line 208
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/b/h$g;->a:Lorg/mistergroup/shouldianswer/b/h;

    iput p2, p0, Lorg/mistergroup/shouldianswer/b/h$g;->b:F

    iput-object p3, p0, Lorg/mistergroup/shouldianswer/b/h$g;->c:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "event"

    invoke-static {p2, p1}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x2

    const/4 v0, 0x1

    .line 218
    :try_start_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-eqz v1, :cond_5

    const/4 v2, 0x0

    if-eq v1, v0, :cond_2

    if-eq v1, p1, :cond_0

    goto/16 :goto_3

    .line 220
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iget v3, p0, Lorg/mistergroup/shouldianswer/b/h$g;->e:F

    sub-float/2addr v1, v3

    .line 221
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lorg/mistergroup/shouldianswer/b/h$g;->b:F

    const/16 v5, 0x32

    int-to-float v5, v5

    mul-float/2addr v4, v5

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    .line 222
    iget-object v2, p0, Lorg/mistergroup/shouldianswer/b/h$g;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setTranslationX(F)V

    .line 223
    iget-object v1, p0, Lorg/mistergroup/shouldianswer/b/h$g;->a:Lorg/mistergroup/shouldianswer/b/h;

    invoke-static {v1}, Lorg/mistergroup/shouldianswer/b/h;->h(Lorg/mistergroup/shouldianswer/b/h;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v2, p0, Lorg/mistergroup/shouldianswer/b/h$g;->f:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    iget v3, p0, Lorg/mistergroup/shouldianswer/b/h$g;->d:F

    sub-float/2addr p2, v3

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    add-int/2addr v2, p2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 224
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/b/h$g;->a:Lorg/mistergroup/shouldianswer/b/h;

    invoke-static {p2}, Lorg/mistergroup/shouldianswer/b/h;->h(Lorg/mistergroup/shouldianswer/b/h;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    iget v1, p0, Lorg/mistergroup/shouldianswer/b/h$g;->h:I

    iput v1, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_0

    .line 226
    :cond_1
    iget-object v1, p0, Lorg/mistergroup/shouldianswer/b/h$g;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setTranslationX(F)V

    .line 227
    iget-object v1, p0, Lorg/mistergroup/shouldianswer/b/h$g;->a:Lorg/mistergroup/shouldianswer/b/h;

    invoke-static {v1}, Lorg/mistergroup/shouldianswer/b/h;->h(Lorg/mistergroup/shouldianswer/b/h;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v2, p0, Lorg/mistergroup/shouldianswer/b/h$g;->f:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    iget v3, p0, Lorg/mistergroup/shouldianswer/b/h$g;->d:F

    sub-float/2addr p2, v3

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    add-int/2addr v2, p2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 228
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/b/h$g;->a:Lorg/mistergroup/shouldianswer/b/h;

    invoke-static {p2}, Lorg/mistergroup/shouldianswer/b/h;->h(Lorg/mistergroup/shouldianswer/b/h;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    iget p2, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    iput p2, p0, Lorg/mistergroup/shouldianswer/b/h$g;->h:I

    .line 230
    :goto_0
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/b/h$g;->a:Lorg/mistergroup/shouldianswer/b/h;

    invoke-virtual {p2}, Lorg/mistergroup/shouldianswer/b/h;->a()Landroid/view/WindowManager;

    move-result-object p2

    iget-object v1, p0, Lorg/mistergroup/shouldianswer/b/h$g;->a:Lorg/mistergroup/shouldianswer/b/h;

    invoke-static {v1}, Lorg/mistergroup/shouldianswer/b/h;->i(Lorg/mistergroup/shouldianswer/b/h;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lorg/mistergroup/shouldianswer/b/h$g;->a:Lorg/mistergroup/shouldianswer/b/h;

    invoke-static {v2}, Lorg/mistergroup/shouldianswer/b/h;->h(Lorg/mistergroup/shouldianswer/b/h;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-interface {p2, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_3

    .line 240
    :cond_2
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/b/h$g;->c:Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getTranslationX()F

    move-result p2

    .line 241
    iget v1, p0, Lorg/mistergroup/shouldianswer/b/h$g;->b:F

    div-float v1, p2, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/16 v3, 0xc8

    int-to-float v3, v3

    cmpl-float v1, v1, v3

    const/4 v3, 0x0

    if-lez v1, :cond_4

    .line 242
    iput-boolean v0, p0, Lorg/mistergroup/shouldianswer/b/h$g;->i:Z

    .line 243
    new-instance v1, Landroidx/e/a/c;

    iget-object v4, p0, Lorg/mistergroup/shouldianswer/b/h$g;->c:Landroid/widget/LinearLayout;

    sget-object v5, Landroidx/e/a/b;->a:Landroidx/e/a/b$d;

    check-cast v5, Landroidx/e/a/d;

    invoke-direct {v1, v4, v5}, Landroidx/e/a/c;-><init>(Ljava/lang/Object;Landroidx/e/a/d;)V

    int-to-float v4, v3

    cmpl-float v4, p2, v4

    if-lez v4, :cond_3

    const/16 v4, 0x2710

    goto :goto_1

    :cond_3
    const/16 v4, -0x2710

    :goto_1
    int-to-float v4, v4

    .line 244
    invoke-virtual {v1, v4}, Landroidx/e/a/c;->h(F)Landroidx/e/a/c;

    const v4, 0x3dcccccd    # 0.1f

    .line 245
    invoke-virtual {v1, v4}, Landroidx/e/a/c;->e(F)Landroidx/e/a/c;

    const/high16 v4, -0x3b060000    # -2000.0f

    .line 246
    invoke-virtual {v1, v4}, Landroidx/e/a/c;->f(F)Landroidx/e/a/c;

    const/high16 v4, 0x44fa0000    # 2000.0f

    .line 247
    invoke-virtual {v1, v4}, Landroidx/e/a/c;->g(F)Landroidx/e/a/c;

    .line 248
    invoke-virtual {v1}, Landroidx/e/a/c;->a()V

    .line 249
    iget-object v1, p0, Lorg/mistergroup/shouldianswer/b/h$g;->c:Landroid/widget/LinearLayout;

    new-instance v4, Lorg/mistergroup/shouldianswer/b/h$g$a;

    invoke-direct {v4, p0}, Lorg/mistergroup/shouldianswer/b/h$g$a;-><init>(Lorg/mistergroup/shouldianswer/b/h$g;)V

    check-cast v4, Ljava/lang/Runnable;

    const-wide/16 v5, 0x3e8

    invoke-virtual {v1, v4, v5, v6}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    .line 251
    :cond_4
    sget-object v1, Lorg/mistergroup/shouldianswer/model/ai;->a:Lorg/mistergroup/shouldianswer/model/ai;

    iget-object v4, p0, Lorg/mistergroup/shouldianswer/b/h$g;->a:Lorg/mistergroup/shouldianswer/b/h;

    invoke-static {v4}, Lorg/mistergroup/shouldianswer/b/h;->h(Lorg/mistergroup/shouldianswer/b/h;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v1, v4}, Lorg/mistergroup/shouldianswer/model/ai;->d(I)V

    .line 253
    :goto_2
    iget-boolean v1, p0, Lorg/mistergroup/shouldianswer/b/h$g;->i:Z

    if-nez v1, :cond_6

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    int-to-float v1, v3

    cmpl-float p2, p2, v1

    if-lez p2, :cond_6

    .line 254
    new-instance p2, Landroidx/e/a/e;

    iget-object v1, p0, Lorg/mistergroup/shouldianswer/b/h$g;->c:Landroid/widget/LinearLayout;

    sget-object v3, Landroidx/e/a/b;->a:Landroidx/e/a/b$d;

    check-cast v3, Landroidx/e/a/d;

    invoke-direct {p2, v1, v3, v2}, Landroidx/e/a/e;-><init>(Ljava/lang/Object;Landroidx/e/a/d;F)V

    const/high16 v1, 0x42c80000    # 100.0f

    invoke-virtual {p2, v1}, Landroidx/e/a/e;->a(F)Landroidx/e/a/b;

    move-result-object p2

    check-cast p2, Landroidx/e/a/e;

    invoke-virtual {p2}, Landroidx/e/a/e;->a()V

    goto :goto_3

    .line 233
    :cond_5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iput v1, p0, Lorg/mistergroup/shouldianswer/b/h$g;->e:F

    .line 234
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    iput p2, p0, Lorg/mistergroup/shouldianswer/b/h$g;->d:F

    .line 235
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/b/h$g;->a:Lorg/mistergroup/shouldianswer/b/h;

    invoke-static {p2}, Lorg/mistergroup/shouldianswer/b/h;->h(Lorg/mistergroup/shouldianswer/b/h;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    iget p2, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    iput p2, p0, Lorg/mistergroup/shouldianswer/b/h$g;->g:I

    .line 236
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/b/h$g;->a:Lorg/mistergroup/shouldianswer/b/h;

    invoke-static {p2}, Lorg/mistergroup/shouldianswer/b/h;->h(Lorg/mistergroup/shouldianswer/b/h;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    iget p2, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    iput p2, p0, Lorg/mistergroup/shouldianswer/b/h$g;->h:I

    .line 237
    iget p2, p0, Lorg/mistergroup/shouldianswer/b/h$g;->h:I

    iput p2, p0, Lorg/mistergroup/shouldianswer/b/h$g;->f:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p2

    .line 259
    sget-object v1, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const/4 v2, 0x0

    invoke-static {v1, p2, v2, p1, v2}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    :cond_6
    :goto_3
    return v0
.end method
