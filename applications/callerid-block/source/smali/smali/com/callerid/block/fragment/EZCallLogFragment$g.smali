.class Lcom/callerid/block/fragment/EZCallLogFragment$g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


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

    iput-object p1, p0, Lcom/callerid/block/fragment/EZCallLogFragment$g;->a:Lcom/callerid/block/fragment/EZCallLogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    const/4 p1, 0x1

    :try_start_0
    iget-object p4, p0, Lcom/callerid/block/fragment/EZCallLogFragment$g;->a:Lcom/callerid/block/fragment/EZCallLogFragment;

    invoke-static {p4}, Lcom/callerid/block/fragment/EZCallLogFragment;->E1(Lcom/callerid/block/fragment/EZCallLogFragment;)Ljava/util/List;

    move-result-object p4

    if-eqz p4, :cond_0

    iget-object p4, p0, Lcom/callerid/block/fragment/EZCallLogFragment$g;->a:Lcom/callerid/block/fragment/EZCallLogFragment;

    invoke-static {p4}, Lcom/callerid/block/fragment/EZCallLogFragment;->E1(Lcom/callerid/block/fragment/EZCallLogFragment;)Ljava/util/List;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p4

    if-eqz p4, :cond_0

    iget-object p4, p0, Lcom/callerid/block/fragment/EZCallLogFragment$g;->a:Lcom/callerid/block/fragment/EZCallLogFragment;

    invoke-static {p4}, Lcom/callerid/block/fragment/EZCallLogFragment;->E1(Lcom/callerid/block/fragment/EZCallLogFragment;)Ljava/util/List;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p4

    if-ge p3, p4, :cond_0

    iget-object p4, p0, Lcom/callerid/block/fragment/EZCallLogFragment$g;->a:Lcom/callerid/block/fragment/EZCallLogFragment;

    invoke-static {p4}, Lcom/callerid/block/fragment/EZCallLogFragment;->E1(Lcom/callerid/block/fragment/EZCallLogFragment;)Ljava/util/List;

    move-result-object p4

    invoke-interface {p4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/callerid/block/search/CallLogBean;

    iget-object p4, p0, Lcom/callerid/block/fragment/EZCallLogFragment$g;->a:Lcom/callerid/block/fragment/EZCallLogFragment;

    invoke-static {p4}, Lcom/callerid/block/fragment/EZCallLogFragment;->i2(Lcom/callerid/block/fragment/EZCallLogFragment;)Z

    move-result p4

    if-nez p4, :cond_0

    iget-object p4, p0, Lcom/callerid/block/fragment/EZCallLogFragment$g;->a:Lcom/callerid/block/fragment/EZCallLogFragment;

    invoke-static {p4, p1}, Lcom/callerid/block/fragment/EZCallLogFragment;->j2(Lcom/callerid/block/fragment/EZCallLogFragment;Z)Z

    invoke-virtual {p3, p1}, Lcom/callerid/block/search/CallLogBean;->x0(Z)V

    iget-object p4, p0, Lcom/callerid/block/fragment/EZCallLogFragment$g;->a:Lcom/callerid/block/fragment/EZCallLogFragment;

    invoke-static {p4}, Lcom/callerid/block/fragment/EZCallLogFragment;->k2(Lcom/callerid/block/fragment/EZCallLogFragment;)Ljava/util/ArrayList;

    move-result-object p4

    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p3, p0, Lcom/callerid/block/fragment/EZCallLogFragment$g;->a:Lcom/callerid/block/fragment/EZCallLogFragment;

    invoke-static {p3}, Lcom/callerid/block/fragment/EZCallLogFragment;->l2(Lcom/callerid/block/fragment/EZCallLogFragment;)Landroid/content/Context;

    move-result-object p3

    const p4, 0x7f04011f

    const p5, 0x7f060088

    invoke-static {p3, p4, p5}, Lcom/callerid/block/util/p0;->a(Landroid/content/Context;II)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object p2, p0, Lcom/callerid/block/fragment/EZCallLogFragment$g;->a:Lcom/callerid/block/fragment/EZCallLogFragment;

    invoke-static {p2}, Lcom/callerid/block/fragment/EZCallLogFragment;->n2(Lcom/callerid/block/fragment/EZCallLogFragment;)V

    iget-object p2, p0, Lcom/callerid/block/fragment/EZCallLogFragment$g;->a:Lcom/callerid/block/fragment/EZCallLogFragment;

    invoke-static {p2}, Lcom/callerid/block/fragment/EZCallLogFragment;->m2(Lcom/callerid/block/fragment/EZCallLogFragment;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return p1
.end method
