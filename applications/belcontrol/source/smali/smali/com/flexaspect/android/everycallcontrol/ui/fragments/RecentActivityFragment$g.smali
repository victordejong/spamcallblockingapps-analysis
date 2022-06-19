.class public Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment$g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:F

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/MotionEvent;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic c:Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment;


# direct methods
.method public constructor <init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment$g;->c:Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment$g;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment$g;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/MotionEvent;

    iget-object v2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment$g;->c:Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment;

    invoke-static {v2}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment;->Q(Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment$g;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment$g;->b:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment$g;->a:F

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/high16 v1, -0x40800000    # -1.0f

    const/4 v2, 0x1

    if-ne p1, v2, :cond_2

    iput v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment$g;->a:F

    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v3, 0x0

    if-ne p1, v0, :cond_8

    iget p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment$g;->a:F

    cmpl-float p1, p1, v1

    if-nez p1, :cond_3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment$g;->a:F

    :cond_3
    iget p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment$g;->a:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    sub-float/2addr p1, v0

    float-to-int p1, p1

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment$g;->c:Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment;

    invoke-static {v0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment;->z(Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment$g;->c:Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment;

    invoke-static {v1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment;->R(Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment;)Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setEnabled(Z)V

    if-gez p1, :cond_4

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment$g;->c:Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment;

    invoke-static {v1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment;->Q(Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result v1

    if-lez v1, :cond_4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment$g;->a:F

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment$g;->a()V

    return v3

    :cond_4
    if-lez p1, :cond_5

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment$g;->c:Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment;

    invoke-static {v1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment;->A(Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment;)I

    move-result v1

    if-le v0, v1, :cond_5

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment$g;->c:Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment;

    invoke-static {v1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment;->z(Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    sub-int v4, v0, p1

    iget-object v5, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment$g;->c:Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment;

    invoke-static {v5}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment;->A(Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment;)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment$g;->c:Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment;

    invoke-static {v1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment;->B(Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment;)V

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment$g;->c:Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment;

    invoke-static {v1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment;->z(Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->requestLayout()V

    :cond_5
    if-gez p1, :cond_6

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment$g;->c:Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment;

    invoke-static {v1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment;->x(Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment;)I

    move-result v1

    if-ge v0, v1, :cond_6

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment$g;->c:Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment;

    invoke-static {v1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment;->z(Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    sub-int v4, v0, p1

    iget-object v5, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment$g;->c:Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment;

    invoke-static {v5}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment;->x(Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment;)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment$g;->c:Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment;

    invoke-static {v1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment;->B(Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment;)V

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment$g;->c:Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment;

    invoke-static {v1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment;->z(Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->requestLayout()V

    :cond_6
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iput v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment$g;->a:F

    if-lez p1, :cond_7

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment$g;->c:Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment;

    invoke-static {v1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment;->A(Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment;)I

    move-result v1

    if-gt v0, v1, :cond_7

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment$g;->a()V

    return v3

    :cond_7
    if-gez p1, :cond_8

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment$g;->c:Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment;

    invoke-static {p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment;->x(Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment;)I

    move-result p1

    if-lt v0, p1, :cond_8

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment$g;->c:Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment;

    invoke-static {p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment;->R(Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment;)Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment$g;->a()V

    return v3

    :cond_8
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v2, :cond_9

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment$g;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    return v3

    :cond_9
    return v2
.end method
