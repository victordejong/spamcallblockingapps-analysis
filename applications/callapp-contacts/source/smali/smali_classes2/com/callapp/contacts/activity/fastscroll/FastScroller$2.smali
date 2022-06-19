.class Lcom/callapp/contacts/activity/fastscroll/FastScroller$2;
.super Landroidx/recyclerview/widget/RecyclerView$m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/fastscroll/FastScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/fastscroll/FastScroller;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/fastscroll/FastScroller;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/callapp/contacts/activity/fastscroll/FastScroller$2;->a:Lcom/callapp/contacts/activity/fastscroll/FastScroller;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$m;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 2

    .line 101
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$m;->a(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 103
    iget-object p1, p0, Lcom/callapp/contacts/activity/fastscroll/FastScroller$2;->a:Lcom/callapp/contacts/activity/fastscroll/FastScroller;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    const/4 p1, 0x1

    if-eq p2, p1, :cond_0

    goto :goto_0

    .line 106
    :cond_0
    iget-object p1, p0, Lcom/callapp/contacts/activity/fastscroll/FastScroller$2;->a:Lcom/callapp/contacts/activity/fastscroll/FastScroller;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/callapp/contacts/activity/fastscroll/FastScroller$2;->a:Lcom/callapp/contacts/activity/fastscroll/FastScroller;

    invoke-static {p2}, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->c(Lcom/callapp/contacts/activity/fastscroll/FastScroller;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 107
    iget-object p1, p0, Lcom/callapp/contacts/activity/fastscroll/FastScroller$2;->a:Lcom/callapp/contacts/activity/fastscroll/FastScroller;

    invoke-static {p1}, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->d(Lcom/callapp/contacts/activity/fastscroll/FastScroller;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-static {p1}, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->a(Landroid/view/ViewPropertyAnimator;)V

    .line 109
    iget-object p1, p0, Lcom/callapp/contacts/activity/fastscroll/FastScroller$2;->a:Lcom/callapp/contacts/activity/fastscroll/FastScroller;

    invoke-static {p1}, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->e(Lcom/callapp/contacts/activity/fastscroll/FastScroller;)Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->a(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 110
    iget-object p1, p0, Lcom/callapp/contacts/activity/fastscroll/FastScroller$2;->a:Lcom/callapp/contacts/activity/fastscroll/FastScroller;

    invoke-static {p1}, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->f(Lcom/callapp/contacts/activity/fastscroll/FastScroller;)V

    return-void

    .line 116
    :cond_1
    iget-object p1, p0, Lcom/callapp/contacts/activity/fastscroll/FastScroller$2;->a:Lcom/callapp/contacts/activity/fastscroll/FastScroller;

    invoke-static {p1}, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->g(Lcom/callapp/contacts/activity/fastscroll/FastScroller;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/callapp/contacts/activity/fastscroll/FastScroller$2;->a:Lcom/callapp/contacts/activity/fastscroll/FastScroller;

    invoke-static {p1}, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->b(Lcom/callapp/contacts/activity/fastscroll/FastScroller;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ImageView;->isSelected()Z

    move-result p1

    if-nez p1, :cond_2

    .line 117
    iget-object p1, p0, Lcom/callapp/contacts/activity/fastscroll/FastScroller$2;->a:Lcom/callapp/contacts/activity/fastscroll/FastScroller;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/callapp/contacts/activity/fastscroll/FastScroller$2;->a:Lcom/callapp/contacts/activity/fastscroll/FastScroller;

    invoke-static {p2}, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->c(Lcom/callapp/contacts/activity/fastscroll/FastScroller;)Ljava/lang/Runnable;

    move-result-object p2

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public final a(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 94
    iget-object p2, p0, Lcom/callapp/contacts/activity/fastscroll/FastScroller$2;->a:Lcom/callapp/contacts/activity/fastscroll/FastScroller;

    invoke-static {p2}, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->b(Lcom/callapp/contacts/activity/fastscroll/FastScroller;)Landroid/widget/ImageView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/ImageView;->isSelected()Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/callapp/contacts/activity/fastscroll/FastScroller$2;->a:Lcom/callapp/contacts/activity/fastscroll/FastScroller;

    invoke-virtual {p2}, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 95
    iget-object p2, p0, Lcom/callapp/contacts/activity/fastscroll/FastScroller$2;->a:Lcom/callapp/contacts/activity/fastscroll/FastScroller;

    invoke-static {p2, p1}, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->a(Lcom/callapp/contacts/activity/fastscroll/FastScroller;Landroidx/recyclerview/widget/RecyclerView;)F

    move-result p1

    invoke-static {p2, p1}, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->a(Lcom/callapp/contacts/activity/fastscroll/FastScroller;F)V

    :cond_0
    return-void
.end method
