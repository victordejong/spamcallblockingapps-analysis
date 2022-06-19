.class public Lgo0;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgo0$d;,
        Lgo0$e;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Landroid/content/Context;

.field public d:Lgo0$d;

.field public e:Landroid/widget/PopupWindow;

.field public f:Lgo0$e;

.field public g:J

.field public final h:Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/view/View;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lgo0$e;->a:Lgo0$e;

    iput-object v0, p0, Lgo0;->f:Lgo0$e;

    const-wide/16 v0, 0x1770

    iput-wide v0, p0, Lgo0;->g:J

    new-instance v0, Lgo0$a;

    invoke-direct {v0, p0}, Lgo0$a;-><init>(Lgo0;)V

    iput-object v0, p0, Lgo0;->h:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    iput-object p1, p0, Lgo0;->a:Ljava/lang/String;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lgo0;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lgo0;->c:Landroid/content/Context;

    return-void
.end method

.method public static synthetic a(Lgo0;)Ljava/lang/ref/WeakReference;
    .locals 0

    iget-object p0, p0, Lgo0;->b:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public static synthetic b(Lgo0;)Landroid/widget/PopupWindow;
    .locals 0

    iget-object p0, p0, Lgo0;->e:Landroid/widget/PopupWindow;

    return-object p0
.end method

.method public static synthetic c(Lgo0;)Lgo0$d;
    .locals 0

    iget-object p0, p0, Lgo0;->d:Lgo0$d;

    return-object p0
.end method


# virtual methods
.method public d()V
    .locals 1

    invoke-virtual {p0}, Lgo0;->i()V

    iget-object v0, p0, Lgo0;->e:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method public final e()V
    .locals 2

    invoke-virtual {p0}, Lgo0;->i()V

    iget-object v0, p0, Lgo0;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgo0;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lgo0;->h:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    :cond_0
    return-void
.end method

.method public f(J)V
    .locals 0

    iput-wide p1, p0, Lgo0;->g:J

    return-void
.end method

.method public g(Lgo0$e;)V
    .locals 0

    iput-object p1, p0, Lgo0;->f:Lgo0$e;

    return-void
.end method

.method public h()V
    .locals 5

    iget-object v0, p0, Lgo0;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v0, Lgo0$d;

    iget-object v1, p0, Lgo0;->c:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lgo0$d;-><init>(Lgo0;Landroid/content/Context;)V

    iput-object v0, p0, Lgo0;->d:Lgo0$d;

    sget v1, Lao0;->com_facebook_tooltip_bubble_view_text_body:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lgo0;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lgo0;->f:Lgo0$e;

    sget-object v1, Lgo0$e;->a:Lgo0$e;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lgo0;->d:Lgo0$d;

    invoke-static {v0}, Lgo0$d;->a(Lgo0$d;)Landroid/view/View;

    move-result-object v0

    sget v1, Lzn0;->com_facebook_tooltip_blue_background:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lgo0;->d:Lgo0$d;

    invoke-static {v0}, Lgo0$d;->b(Lgo0$d;)Landroid/widget/ImageView;

    move-result-object v0

    sget v1, Lzn0;->com_facebook_tooltip_blue_bottomnub:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lgo0;->d:Lgo0$d;

    invoke-static {v0}, Lgo0$d;->c(Lgo0$d;)Landroid/widget/ImageView;

    move-result-object v0

    sget v1, Lzn0;->com_facebook_tooltip_blue_topnub:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lgo0;->d:Lgo0$d;

    invoke-static {v0}, Lgo0$d;->d(Lgo0$d;)Landroid/widget/ImageView;

    move-result-object v0

    sget v1, Lzn0;->com_facebook_tooltip_blue_xout:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lgo0;->d:Lgo0$d;

    invoke-static {v0}, Lgo0$d;->a(Lgo0$d;)Landroid/view/View;

    move-result-object v0

    sget v1, Lzn0;->com_facebook_tooltip_black_background:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lgo0;->d:Lgo0$d;

    invoke-static {v0}, Lgo0$d;->b(Lgo0$d;)Landroid/widget/ImageView;

    move-result-object v0

    sget v1, Lzn0;->com_facebook_tooltip_black_bottomnub:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lgo0;->d:Lgo0$d;

    invoke-static {v0}, Lgo0$d;->c(Lgo0$d;)Landroid/widget/ImageView;

    move-result-object v0

    sget v1, Lzn0;->com_facebook_tooltip_black_topnub:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lgo0;->d:Lgo0$d;

    invoke-static {v0}, Lgo0$d;->d(Lgo0$d;)Landroid/widget/ImageView;

    move-result-object v0

    sget v1, Lzn0;->com_facebook_tooltip_black_xout:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lgo0;->c:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lgo0;->e()V

    iget-object v2, p0, Lgo0;->d:Lgo0$d;

    const/high16 v3, -0x80000000

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {v2, v1, v0}, Landroid/widget/FrameLayout;->measure(II)V

    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Lgo0;->d:Lgo0$d;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v2

    iget-object v3, p0, Lgo0;->d:Lgo0$d;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v0, p0, Lgo0;->e:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lgo0;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    invoke-virtual {p0}, Lgo0;->j()V

    iget-wide v0, p0, Lgo0;->g:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    iget-object v2, p0, Lgo0;->d:Lgo0$d;

    new-instance v3, Lgo0$b;

    invoke-direct {v3, p0}, Lgo0$b;-><init>(Lgo0;)V

    invoke-virtual {v2, v3, v0, v1}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    iget-object v0, p0, Lgo0;->e:Landroid/widget/PopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    iget-object v0, p0, Lgo0;->d:Lgo0$d;

    new-instance v1, Lgo0$c;

    invoke-direct {v1, p0}, Lgo0$c;-><init>(Lgo0;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    return-void
.end method

.method public final i()V
    .locals 2

    iget-object v0, p0, Lgo0;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgo0;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lgo0;->h:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    :cond_0
    return-void
.end method

.method public final j()V
    .locals 1

    iget-object v0, p0, Lgo0;->e:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lgo0;->e:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isAboveAnchor()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgo0;->d:Lgo0$d;

    invoke-virtual {v0}, Lgo0$d;->f()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lgo0;->d:Lgo0$d;

    invoke-virtual {v0}, Lgo0$d;->g()V

    :cond_1
    :goto_0
    return-void
.end method
