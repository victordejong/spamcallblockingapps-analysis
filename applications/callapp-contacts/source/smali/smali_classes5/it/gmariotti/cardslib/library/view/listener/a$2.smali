.class final Lit/gmariotti/cardslib/library/view/listener/a$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lit/gmariotti/cardslib/library/view/listener/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lit/gmariotti/cardslib/library/view/listener/a;


# direct methods
.method constructor <init>(Lit/gmariotti/cardslib/library/view/listener/a;)V
    .locals 0

    .line 408
    iput-object p1, p0, Lit/gmariotti/cardslib/library/view/listener/a$2;->a:Lit/gmariotti/cardslib/library/view/listener/a;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 10

    .line 411
    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/listener/a$2;->a:Lit/gmariotti/cardslib/library/view/listener/a;

    invoke-static {p1}, Lit/gmariotti/cardslib/library/view/listener/a;->a(Lit/gmariotti/cardslib/library/view/listener/a;)I

    .line 412
    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/listener/a$2;->a:Lit/gmariotti/cardslib/library/view/listener/a;

    invoke-static {p1}, Lit/gmariotti/cardslib/library/view/listener/a;->b(Lit/gmariotti/cardslib/library/view/listener/a;)I

    move-result p1

    if-nez p1, :cond_2

    .line 415
    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/listener/a$2;->a:Lit/gmariotti/cardslib/library/view/listener/a;

    invoke-static {p1}, Lit/gmariotti/cardslib/library/view/listener/a;->c(Lit/gmariotti/cardslib/library/view/listener/a;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 417
    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/listener/a$2;->a:Lit/gmariotti/cardslib/library/view/listener/a;

    invoke-static {p1}, Lit/gmariotti/cardslib/library/view/listener/a;->c(Lit/gmariotti/cardslib/library/view/listener/a;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [I

    .line 418
    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/listener/a$2;->a:Lit/gmariotti/cardslib/library/view/listener/a;

    invoke-static {v0}, Lit/gmariotti/cardslib/library/view/listener/a;->c(Lit/gmariotti/cardslib/library/view/listener/a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 419
    iget-object v1, p0, Lit/gmariotti/cardslib/library/view/listener/a$2;->a:Lit/gmariotti/cardslib/library/view/listener/a;

    invoke-static {v1}, Lit/gmariotti/cardslib/library/view/listener/a;->c(Lit/gmariotti/cardslib/library/view/listener/a;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lit/gmariotti/cardslib/library/view/listener/a$b;

    iget v1, v1, Lit/gmariotti/cardslib/library/view/listener/a$b;->a:I

    aput v1, p1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 421
    :cond_0
    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/listener/a$2;->a:Lit/gmariotti/cardslib/library/view/listener/a;

    invoke-static {v0}, Lit/gmariotti/cardslib/library/view/listener/a;->e(Lit/gmariotti/cardslib/library/view/listener/a;)Lit/gmariotti/cardslib/library/view/listener/a$a;

    move-result-object v0

    iget-object v1, p0, Lit/gmariotti/cardslib/library/view/listener/a$2;->a:Lit/gmariotti/cardslib/library/view/listener/a;

    invoke-static {v1}, Lit/gmariotti/cardslib/library/view/listener/a;->d(Lit/gmariotti/cardslib/library/view/listener/a;)Landroid/widget/ListView;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lit/gmariotti/cardslib/library/view/listener/a$a;->a(Landroid/widget/ListView;[I)V

    .line 425
    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/listener/a$2;->a:Lit/gmariotti/cardslib/library/view/listener/a;

    invoke-static {p1}, Lit/gmariotti/cardslib/library/view/listener/a;->f(Lit/gmariotti/cardslib/library/view/listener/a;)I

    .line 428
    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/listener/a$2;->a:Lit/gmariotti/cardslib/library/view/listener/a;

    invoke-static {p1}, Lit/gmariotti/cardslib/library/view/listener/a;->c(Lit/gmariotti/cardslib/library/view/listener/a;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lit/gmariotti/cardslib/library/view/listener/a$b;

    .line 430
    iget-object v1, v0, Lit/gmariotti/cardslib/library/view/listener/a$b;->b:Landroid/view/View;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 431
    iget-object v1, v0, Lit/gmariotti/cardslib/library/view/listener/a$b;->b:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 432
    iget-object v1, v0, Lit/gmariotti/cardslib/library/view/listener/a$b;->b:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/4 v2, 0x0

    .line 433
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 434
    iget-object v0, v0, Lit/gmariotti/cardslib/library/view/listener/a$b;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 438
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-wide v2, v4

    .line 439
    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p1

    .line 441
    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/listener/a$2;->a:Lit/gmariotti/cardslib/library/view/listener/a;

    invoke-static {v0}, Lit/gmariotti/cardslib/library/view/listener/a;->d(Lit/gmariotti/cardslib/library/view/listener/a;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 443
    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/listener/a$2;->a:Lit/gmariotti/cardslib/library/view/listener/a;

    invoke-static {p1}, Lit/gmariotti/cardslib/library/view/listener/a;->c(Lit/gmariotti/cardslib/library/view/listener/a;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    :cond_2
    return-void
.end method
