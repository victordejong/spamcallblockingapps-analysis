.class Lcom/callerid/block/fragment/EZCallLogFragment$h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/fragment/EZCallLogFragment;->q0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callerid/block/fragment/EZCallLogFragment;


# direct methods
.method constructor <init>(Lcom/callerid/block/fragment/EZCallLogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/fragment/EZCallLogFragment$h;->a:Lcom/callerid/block/fragment/EZCallLogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    iget-object p1, p0, Lcom/callerid/block/fragment/EZCallLogFragment$h;->a:Lcom/callerid/block/fragment/EZCallLogFragment;

    invoke-static {p1}, Lcom/callerid/block/fragment/EZCallLogFragment;->o2(Lcom/callerid/block/fragment/EZCallLogFragment;)I

    move-result p1

    const/4 p4, 0x1

    if-le p2, p1, :cond_0

    iget-object p1, p0, Lcom/callerid/block/fragment/EZCallLogFragment$h;->a:Lcom/callerid/block/fragment/EZCallLogFragment;

    invoke-static {p1}, Lcom/callerid/block/fragment/EZCallLogFragment;->K1(Lcom/callerid/block/fragment/EZCallLogFragment;)Lcom/github/clans/fab/FloatingActionButton;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/callerid/block/fragment/EZCallLogFragment$h;->a:Lcom/callerid/block/fragment/EZCallLogFragment;

    invoke-static {p1}, Lcom/callerid/block/fragment/EZCallLogFragment;->K1(Lcom/callerid/block/fragment/EZCallLogFragment;)Lcom/github/clans/fab/FloatingActionButton;

    move-result-object p1

    invoke-virtual {p1}, Lcom/github/clans/fab/FloatingActionButton;->y()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/callerid/block/fragment/EZCallLogFragment$h;->a:Lcom/callerid/block/fragment/EZCallLogFragment;

    invoke-static {p1}, Lcom/callerid/block/fragment/EZCallLogFragment;->K1(Lcom/callerid/block/fragment/EZCallLogFragment;)Lcom/github/clans/fab/FloatingActionButton;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/github/clans/fab/FloatingActionButton;->u(Z)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/callerid/block/fragment/EZCallLogFragment$h;->a:Lcom/callerid/block/fragment/EZCallLogFragment;

    invoke-static {p1}, Lcom/callerid/block/fragment/EZCallLogFragment;->o2(Lcom/callerid/block/fragment/EZCallLogFragment;)I

    move-result p1

    if-ge p2, p1, :cond_1

    iget-object p1, p0, Lcom/callerid/block/fragment/EZCallLogFragment$h;->a:Lcom/callerid/block/fragment/EZCallLogFragment;

    invoke-static {p1}, Lcom/callerid/block/fragment/EZCallLogFragment;->K1(Lcom/callerid/block/fragment/EZCallLogFragment;)Lcom/github/clans/fab/FloatingActionButton;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/callerid/block/fragment/EZCallLogFragment$h;->a:Lcom/callerid/block/fragment/EZCallLogFragment;

    invoke-static {p1}, Lcom/callerid/block/fragment/EZCallLogFragment;->K1(Lcom/callerid/block/fragment/EZCallLogFragment;)Lcom/github/clans/fab/FloatingActionButton;

    move-result-object p1

    invoke-virtual {p1}, Lcom/github/clans/fab/FloatingActionButton;->y()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/callerid/block/fragment/EZCallLogFragment$h;->a:Lcom/callerid/block/fragment/EZCallLogFragment;

    invoke-static {p1}, Lcom/callerid/block/fragment/EZCallLogFragment;->K1(Lcom/callerid/block/fragment/EZCallLogFragment;)Lcom/github/clans/fab/FloatingActionButton;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/github/clans/fab/FloatingActionButton;->H(Z)V

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/callerid/block/fragment/EZCallLogFragment$h;->a:Lcom/callerid/block/fragment/EZCallLogFragment;

    invoke-static {p1, p2}, Lcom/callerid/block/fragment/EZCallLogFragment;->p2(Lcom/callerid/block/fragment/EZCallLogFragment;I)I

    iget-object p1, p0, Lcom/callerid/block/fragment/EZCallLogFragment$h;->a:Lcom/callerid/block/fragment/EZCallLogFragment;

    invoke-static {p1, p3}, Lcom/callerid/block/fragment/EZCallLogFragment;->I1(Lcom/callerid/block/fragment/EZCallLogFragment;I)I

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/callerid/block/fragment/EZCallLogFragment$h;->a:Lcom/callerid/block/fragment/EZCallLogFragment;

    invoke-static {p1}, Lcom/callerid/block/fragment/EZCallLogFragment;->o2(Lcom/callerid/block/fragment/EZCallLogFragment;)I

    move-result p2

    iget-object v0, p0, Lcom/callerid/block/fragment/EZCallLogFragment$h;->a:Lcom/callerid/block/fragment/EZCallLogFragment;

    invoke-static {v0}, Lcom/callerid/block/fragment/EZCallLogFragment;->H1(Lcom/callerid/block/fragment/EZCallLogFragment;)I

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/callerid/block/fragment/EZCallLogFragment;->J1(Lcom/callerid/block/fragment/EZCallLogFragment;II)V

    :goto_0
    return-void
.end method
