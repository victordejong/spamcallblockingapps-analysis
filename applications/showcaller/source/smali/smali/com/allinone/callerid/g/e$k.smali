.class Lcom/allinone/callerid/g/e$k;
.super Landroidx/recyclerview/widget/RecyclerView$s;
.source "EZSearchFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/g/e;->G0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/g/e;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/g/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/g/e$k;->a:Lcom/allinone/callerid/g/e;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$s;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$s;->a(Landroidx/recyclerview/widget/RecyclerView;I)V

    if-nez p2, :cond_0

    .line 2
    iget-object p2, p0, Lcom/allinone/callerid/g/e$k;->a:Lcom/allinone/callerid/g/e;

    invoke-static {p2}, Lcom/allinone/callerid/g/e;->b2(Lcom/allinone/callerid/g/e;)I

    move-result v0

    iget-object v1, p0, Lcom/allinone/callerid/g/e$k;->a:Lcom/allinone/callerid/g/e;

    invoke-static {v1}, Lcom/allinone/callerid/g/e;->d2(Lcom/allinone/callerid/g/e;)I

    move-result v1

    invoke-static {p2, v0, v1}, Lcom/allinone/callerid/g/e;->q2(Lcom/allinone/callerid/g/e;II)V

    :cond_0
    const/4 p2, 0x1

    .line 3
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->canScrollVertically(I)Z

    move-result p1

    if-nez p1, :cond_1

    .line 4
    sget-boolean p1, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz p1, :cond_1

    const-string p1, "searchList"

    const-string p2, "onScrollStateChanged\u5230\u5e95\u4e86"

    .line 5
    invoke-static {p1, p2}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public b(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$s;->b(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 2
    iget-object p2, p0, Lcom/allinone/callerid/g/e$k;->a:Lcom/allinone/callerid/g/e;

    invoke-static {p2}, Lcom/allinone/callerid/g/e;->C2(Lcom/allinone/callerid/g/e;)Lcom/allinone/callerid/customview/MyLinearLayoutManager;

    move-result-object p2

    if-nez p2, :cond_0

    .line 3
    iget-object p2, p0, Lcom/allinone/callerid/g/e$k;->a:Lcom/allinone/callerid/g/e;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$o;

    move-result-object p1

    check-cast p1, Lcom/allinone/callerid/customview/MyLinearLayoutManager;

    invoke-static {p2, p1}, Lcom/allinone/callerid/g/e;->E2(Lcom/allinone/callerid/g/e;Lcom/allinone/callerid/customview/MyLinearLayoutManager;)Lcom/allinone/callerid/customview/MyLinearLayoutManager;

    :cond_0
    const/4 p1, 0x1

    if-lez p3, :cond_1

    .line 4
    iget-object p2, p0, Lcom/allinone/callerid/g/e$k;->a:Lcom/allinone/callerid/g/e;

    invoke-static {p2}, Lcom/allinone/callerid/g/e;->C2(Lcom/allinone/callerid/g/e;)Lcom/allinone/callerid/customview/MyLinearLayoutManager;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$o;->J()I

    move-result p3

    invoke-static {p2, p3}, Lcom/allinone/callerid/g/e;->f2(Lcom/allinone/callerid/g/e;I)I

    .line 5
    iget-object p2, p0, Lcom/allinone/callerid/g/e$k;->a:Lcom/allinone/callerid/g/e;

    invoke-static {p2}, Lcom/allinone/callerid/g/e;->C2(Lcom/allinone/callerid/g/e;)Lcom/allinone/callerid/customview/MyLinearLayoutManager;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->Z1()I

    move-result p3

    invoke-static {p2, p3}, Lcom/allinone/callerid/g/e;->c2(Lcom/allinone/callerid/g/e;I)I

    .line 6
    iget-object p2, p0, Lcom/allinone/callerid/g/e$k;->a:Lcom/allinone/callerid/g/e;

    invoke-static {p2}, Lcom/allinone/callerid/g/e;->P2(Lcom/allinone/callerid/g/e;)Lcom/github/clans/fab/FloatingActionButton;

    move-result-object p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/allinone/callerid/g/e$k;->a:Lcom/allinone/callerid/g/e;

    invoke-static {p2}, Lcom/allinone/callerid/g/e;->P2(Lcom/allinone/callerid/g/e;)Lcom/github/clans/fab/FloatingActionButton;

    move-result-object p2

    invoke-virtual {p2}, Lcom/github/clans/fab/FloatingActionButton;->y()Z

    move-result p2

    if-nez p2, :cond_2

    .line 7
    iget-object p2, p0, Lcom/allinone/callerid/g/e$k;->a:Lcom/allinone/callerid/g/e;

    invoke-static {p2}, Lcom/allinone/callerid/g/e;->P2(Lcom/allinone/callerid/g/e;)Lcom/github/clans/fab/FloatingActionButton;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/github/clans/fab/FloatingActionButton;->u(Z)V

    goto :goto_0

    :cond_1
    if-gez p3, :cond_2

    .line 8
    iget-object p2, p0, Lcom/allinone/callerid/g/e$k;->a:Lcom/allinone/callerid/g/e;

    invoke-static {p2}, Lcom/allinone/callerid/g/e;->C2(Lcom/allinone/callerid/g/e;)Lcom/allinone/callerid/customview/MyLinearLayoutManager;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$o;->J()I

    move-result p3

    invoke-static {p2, p3}, Lcom/allinone/callerid/g/e;->f2(Lcom/allinone/callerid/g/e;I)I

    .line 9
    iget-object p2, p0, Lcom/allinone/callerid/g/e$k;->a:Lcom/allinone/callerid/g/e;

    invoke-static {p2}, Lcom/allinone/callerid/g/e;->C2(Lcom/allinone/callerid/g/e;)Lcom/allinone/callerid/customview/MyLinearLayoutManager;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->Z1()I

    move-result p3

    invoke-static {p2, p3}, Lcom/allinone/callerid/g/e;->c2(Lcom/allinone/callerid/g/e;I)I

    .line 10
    iget-object p2, p0, Lcom/allinone/callerid/g/e$k;->a:Lcom/allinone/callerid/g/e;

    invoke-static {p2}, Lcom/allinone/callerid/g/e;->P2(Lcom/allinone/callerid/g/e;)Lcom/github/clans/fab/FloatingActionButton;

    move-result-object p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/allinone/callerid/g/e$k;->a:Lcom/allinone/callerid/g/e;

    invoke-static {p2}, Lcom/allinone/callerid/g/e;->P2(Lcom/allinone/callerid/g/e;)Lcom/github/clans/fab/FloatingActionButton;

    move-result-object p2

    invoke-virtual {p2}, Lcom/github/clans/fab/FloatingActionButton;->y()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 11
    iget-object p2, p0, Lcom/allinone/callerid/g/e$k;->a:Lcom/allinone/callerid/g/e;

    invoke-static {p2}, Lcom/allinone/callerid/g/e;->P2(Lcom/allinone/callerid/g/e;)Lcom/github/clans/fab/FloatingActionButton;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/github/clans/fab/FloatingActionButton;->H(Z)V

    :cond_2
    :goto_0
    return-void
.end method
