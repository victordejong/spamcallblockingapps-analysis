.class Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior$1;
.super Landroidx/customview/a/c$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;)V
    .locals 0

    .line 580
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior$1;->a:Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;

    invoke-direct {p0}, Landroidx/customview/a/c$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 608
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior$1;->a:Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;

    invoke-static {p1, v0}, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;->b(Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;I)V

    :cond_0
    return-void
.end method

.method public final a(Landroid/view/View;FF)V
    .locals 3

    const/4 p2, 0x4

    const/4 v0, 0x3

    const/4 v1, 0x0

    cmpl-float v1, p3, v1

    if-lez v1, :cond_0

    .line 617
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior$1;->a:Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;

    invoke-static {p2}, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;->f(Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;)I

    move-result p2

    goto :goto_1

    .line 619
    :cond_0
    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior$1;->a:Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;

    invoke-static {v2}, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;->g(Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior$1;->a:Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;

    invoke-static {v2, p1, p3}, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;->a(Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;Landroid/view/View;F)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 620
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior$1;->a:Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;

    invoke-static {p2}, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;->e(Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;)Ljava/lang/ref/WeakReference;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    neg-int p2, p2

    const/4 p3, 0x5

    const/4 v0, 0x5

    goto :goto_1

    :cond_1
    if-nez v1, :cond_3

    .line 623
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p3

    .line 624
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior$1;->a:Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;

    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;->h(Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;)I

    move-result v1

    sub-int v1, p3, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior$1;->a:Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;

    invoke-static {v2}, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;->f(Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;)I

    move-result v2

    sub-int/2addr p3, v2

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    if-le v1, p3, :cond_2

    .line 625
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior$1;->a:Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;

    invoke-static {p2}, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;->f(Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;)I

    move-result p2

    goto :goto_1

    .line 628
    :cond_2
    iget-object p3, p0, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior$1;->a:Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;

    invoke-static {p3}, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;->h(Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;)I

    move-result p3

    goto :goto_0

    .line 632
    :cond_3
    iget-object p3, p0, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior$1;->a:Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;

    invoke-static {p3}, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;->h(Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;)I

    move-result p3

    :goto_0
    move p2, p3

    const/4 v0, 0x4

    .line 635
    :goto_1
    iget-object p3, p0, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior$1;->a:Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;

    invoke-static {p3}, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;->i(Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;)Landroidx/customview/a/c;

    move-result-object p3

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p3, v1, p2}, Landroidx/customview/a/c;->a(II)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 636
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior$1;->a:Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;

    const/4 p3, 0x2

    invoke-static {p2, p3}, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;->b(Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;I)V

    .line 637
    new-instance p2, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior$SettleRunnable;

    iget-object p3, p0, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior$1;->a:Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;

    invoke-direct {p2, p3, p1, v0}, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior$SettleRunnable;-><init>(Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;Landroid/view/View;I)V

    invoke-static {p1, p2}, Landroidx/core/view/v;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    return-void

    .line 640
    :cond_4
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior$1;->a:Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;

    invoke-static {p1, v0}, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;->b(Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;I)V

    return-void
.end method

.method public final a(Landroid/view/View;II)V
    .locals 0

    .line 602
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior$1;->a:Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;

    invoke-static {p1, p3}, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;->a(Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;I)V

    return-void
.end method

.method public final b(Landroid/view/View;)I
    .locals 1

    .line 656
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior$1;->a:Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;->g(Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 657
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    return p1

    .line 659
    :cond_0
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior$1;->a:Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;->f(Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;)I

    move-result p1

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior$1;->a:Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;->h(Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;)I

    move-result v0

    sub-int/2addr p1, v0

    return p1
.end method

.method public final b(Landroid/view/View;I)Z
    .locals 4

    .line 584
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior$1;->a:Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;->a(Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return v2

    .line 587
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior$1;->a:Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;->b(Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    .line 590
    :cond_1
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior$1;->a:Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;->a(Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;)I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior$1;->a:Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;->c(Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;)I

    move-result v0

    if-ne v0, p2, :cond_2

    .line 591
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior$1;->a:Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;

    invoke-static {p2}, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;->d(Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;)Ljava/lang/ref/WeakReference;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    if-eqz p2, :cond_2

    const/4 v0, -0x1

    .line 592
    invoke-static {p2, v0}, Landroidx/core/view/v;->a(Landroid/view/View;I)Z

    move-result p2

    if-eqz p2, :cond_2

    return v2

    .line 597
    :cond_2
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior$1;->a:Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;

    invoke-static {p2}, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;->e(Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;)Ljava/lang/ref/WeakReference;

    move-result-object p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior$1;->a:Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;

    invoke-static {p2}, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;->e(Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;)Ljava/lang/ref/WeakReference;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    if-ne p2, p1, :cond_3

    return v1

    :cond_3
    return v2
.end method

.method public final c(Landroid/view/View;I)I
    .locals 0

    .line 651
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p1

    return p1
.end method

.method public final d(Landroid/view/View;I)I
    .locals 1

    .line 646
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior$1;->a:Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;->g(Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    neg-int p1, p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior$1;->a:Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;->h(Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;)I

    move-result p1

    :goto_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior$1;->a:Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;->f(Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;)I

    move-result v0

    invoke-static {p2, p1, v0}, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;->a(III)I

    move-result p1

    return p1
.end method
