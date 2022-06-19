.class public Lcom/kedlin/cca/ui/MultiStateButton;
.super Landroid/widget/FrameLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kedlin/cca/ui/MultiStateButton$b;
    }
.end annotation


# instance fields
.field public a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/kedlin/cca/ui/MultiStateButton$b;",
            ">;"
        }
    .end annotation
.end field

.field public b:I

.field public c:Landroid/os/Handler;

.field public d:Landroid/view/View;

.field public f:I

.field public g:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/kedlin/cca/ui/MultiStateButton;->a:Ljava/util/ArrayList;

    const/4 p1, -0x1

    iput p1, p0, Lcom/kedlin/cca/ui/MultiStateButton;->b:I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/kedlin/cca/ui/MultiStateButton;->c:Landroid/os/Handler;

    iput p1, p0, Lcom/kedlin/cca/ui/MultiStateButton;->f:I

    new-instance p1, Lcom/kedlin/cca/ui/MultiStateButton$a;

    invoke-direct {p1, p0}, Lcom/kedlin/cca/ui/MultiStateButton$a;-><init>(Lcom/kedlin/cca/ui/MultiStateButton;)V

    iput-object p1, p0, Lcom/kedlin/cca/ui/MultiStateButton;->g:Ljava/lang/Runnable;

    invoke-virtual {p0}, Lcom/kedlin/cca/ui/MultiStateButton;->m()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/kedlin/cca/ui/MultiStateButton;->a:Ljava/util/ArrayList;

    const/4 p1, -0x1

    iput p1, p0, Lcom/kedlin/cca/ui/MultiStateButton;->b:I

    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    iput-object p2, p0, Lcom/kedlin/cca/ui/MultiStateButton;->c:Landroid/os/Handler;

    iput p1, p0, Lcom/kedlin/cca/ui/MultiStateButton;->f:I

    new-instance p1, Lcom/kedlin/cca/ui/MultiStateButton$a;

    invoke-direct {p1, p0}, Lcom/kedlin/cca/ui/MultiStateButton$a;-><init>(Lcom/kedlin/cca/ui/MultiStateButton;)V

    iput-object p1, p0, Lcom/kedlin/cca/ui/MultiStateButton;->g:Ljava/lang/Runnable;

    invoke-virtual {p0}, Lcom/kedlin/cca/ui/MultiStateButton;->m()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/kedlin/cca/ui/MultiStateButton;->a:Ljava/util/ArrayList;

    const/4 p1, -0x1

    iput p1, p0, Lcom/kedlin/cca/ui/MultiStateButton;->b:I

    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    iput-object p2, p0, Lcom/kedlin/cca/ui/MultiStateButton;->c:Landroid/os/Handler;

    iput p1, p0, Lcom/kedlin/cca/ui/MultiStateButton;->f:I

    new-instance p1, Lcom/kedlin/cca/ui/MultiStateButton$a;

    invoke-direct {p1, p0}, Lcom/kedlin/cca/ui/MultiStateButton$a;-><init>(Lcom/kedlin/cca/ui/MultiStateButton;)V

    iput-object p1, p0, Lcom/kedlin/cca/ui/MultiStateButton;->g:Ljava/lang/Runnable;

    invoke-virtual {p0}, Lcom/kedlin/cca/ui/MultiStateButton;->m()V

    return-void
.end method

.method public static synthetic a(Lcom/kedlin/cca/ui/MultiStateButton;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/kedlin/cca/ui/MultiStateButton;->g:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic b(Lcom/kedlin/cca/ui/MultiStateButton;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/kedlin/cca/ui/MultiStateButton;->c:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic c(Lcom/kedlin/cca/ui/MultiStateButton;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/kedlin/cca/ui/MultiStateButton;->a:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static synthetic d(Lcom/kedlin/cca/ui/MultiStateButton;)I
    .locals 0

    iget p0, p0, Lcom/kedlin/cca/ui/MultiStateButton;->b:I

    return p0
.end method

.method public static synthetic e(Lcom/kedlin/cca/ui/MultiStateButton;I)I
    .locals 0

    iput p1, p0, Lcom/kedlin/cca/ui/MultiStateButton;->b:I

    return p1
.end method

.method public static synthetic f(Lcom/kedlin/cca/ui/MultiStateButton;)I
    .locals 2

    iget v0, p0, Lcom/kedlin/cca/ui/MultiStateButton;->b:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/kedlin/cca/ui/MultiStateButton;->b:I

    return v0
.end method

.method public static synthetic g(Lcom/kedlin/cca/ui/MultiStateButton;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/kedlin/cca/ui/MultiStateButton;->d:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic h(Lcom/kedlin/cca/ui/MultiStateButton;)V
    .locals 0

    invoke-virtual {p0}, Lcom/kedlin/cca/ui/MultiStateButton;->n()V

    return-void
.end method


# virtual methods
.method public i(II)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/kedlin/cca/ui/MultiStateButton;->k(Ljava/lang/String;I)V

    return-void
.end method

.method public j(Landroid/text/Spanned;I)V
    .locals 4

    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget v1, p0, Lcom/kedlin/cca/ui/MultiStateButton;->f:I

    if-eq v1, v3, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v3, p0, Lcom/kedlin/cca/ui/MultiStateButton;->f:I

    invoke-virtual {v0, v1, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTranslationY(F)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTranslationX(F)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 p1, 0x11

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setGravity(I)V

    iget-object p1, p0, Lcom/kedlin/cca/ui/MultiStateButton;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    invoke-virtual {p0}, Lcom/kedlin/cca/ui/MultiStateButton;->n()V

    :cond_1
    iget-object p1, p0, Lcom/kedlin/cca/ui/MultiStateButton;->a:Ljava/util/ArrayList;

    new-instance v1, Lcom/kedlin/cca/ui/MultiStateButton$b;

    invoke-direct {v1, p0, v0, p2, v2}, Lcom/kedlin/cca/ui/MultiStateButton$b;-><init>(Lcom/kedlin/cca/ui/MultiStateButton;Landroid/widget/TextView;ILcom/kedlin/cca/ui/MultiStateButton$a;)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public k(Ljava/lang/String;I)V
    .locals 1

    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v0, p2}, Lcom/kedlin/cca/ui/MultiStateButton;->j(Landroid/text/Spanned;I)V

    return-void
.end method

.method public l()V
    .locals 2

    iget-object v0, p0, Lcom/kedlin/cca/ui/MultiStateButton;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v0, p0, Lcom/kedlin/cca/ui/MultiStateButton;->d:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/kedlin/cca/ui/MultiStateButton;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kedlin/cca/ui/MultiStateButton$b;

    invoke-static {v1}, Lcom/kedlin/cca/ui/MultiStateButton$b;->a(Lcom/kedlin/cca/ui/MultiStateButton$b;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/kedlin/cca/ui/MultiStateButton;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/kedlin/cca/ui/MultiStateButton;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/kedlin/cca/ui/MultiStateButton;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/kedlin/cca/ui/MultiStateButton;->b:I

    return-void
.end method

.method public final m()V
    .locals 3

    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kedlin/cca/ui/MultiStateButton;->d:Landroid/view/View;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/kedlin/cca/ui/MultiStateButton;->d:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/kedlin/cca/ui/MultiStateButton;->d:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0, v0}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    return-void
.end method

.method public final n()V
    .locals 4

    iget-object v0, p0, Lcom/kedlin/cca/ui/MultiStateButton;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/kedlin/cca/ui/MultiStateButton;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/kedlin/cca/ui/MultiStateButton;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/kedlin/cca/ui/MultiStateButton;->g:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    iget-object v0, p0, Lcom/kedlin/cca/ui/MultiStateButton;->c:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    iget p1, p0, Lcom/kedlin/cca/ui/MultiStateButton;->b:I

    const/4 p2, -0x1

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Lcom/kedlin/cca/ui/MultiStateButton;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_1

    const/4 p1, 0x0

    iput p1, p0, Lcom/kedlin/cca/ui/MultiStateButton;->b:I

    iget-object p2, p0, Lcom/kedlin/cca/ui/MultiStateButton;->a:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/kedlin/cca/ui/MultiStateButton$b;

    invoke-static {p3}, Lcom/kedlin/cca/ui/MultiStateButton$b;->a(Lcom/kedlin/cca/ui/MultiStateButton$b;)Landroid/widget/TextView;

    move-result-object p3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p4

    int-to-float p4, p4

    invoke-virtual {p3, p4}, Landroid/widget/TextView;->setTranslationY(F)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/kedlin/cca/ui/MultiStateButton;->a:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kedlin/cca/ui/MultiStateButton$b;

    invoke-static {p1}, Lcom/kedlin/cca/ui/MultiStateButton$b;->a(Lcom/kedlin/cca/ui/MultiStateButton$b;)Landroid/widget/TextView;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTranslationY(F)V

    invoke-static {p1}, Lcom/kedlin/cca/ui/MultiStateButton$b;->b(Lcom/kedlin/cca/ui/MultiStateButton$b;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    iget-object p1, p0, Lcom/kedlin/cca/ui/MultiStateButton;->d:Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p0}, Lcom/kedlin/cca/ui/MultiStateButton;->n()V

    :cond_1
    return-void
.end method

.method public setTextAppearance(I)V
    .locals 0

    iput p1, p0, Lcom/kedlin/cca/ui/MultiStateButton;->f:I

    return-void
.end method
