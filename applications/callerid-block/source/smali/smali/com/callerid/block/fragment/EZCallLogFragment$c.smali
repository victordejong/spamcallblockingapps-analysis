.class Lcom/callerid/block/fragment/EZCallLogFragment$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/callerid/block/h/a/d/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/fragment/EZCallLogFragment;->u2()V
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

    iput-object p1, p0, Lcom/callerid/block/fragment/EZCallLogFragment$c;->a:Lcom/callerid/block/fragment/EZCallLogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/ArrayList;Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/callerid/block/search/CallLogBean;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/callerid/block/fragment/EZCallLogFragment$c;->a:Lcom/callerid/block/fragment/EZCallLogFragment;

    invoke-static {v1, p1}, Lcom/callerid/block/fragment/EZCallLogFragment;->F1(Lcom/callerid/block/fragment/EZCallLogFragment;Ljava/util/List;)Ljava/util/List;

    iget-object p1, p0, Lcom/callerid/block/fragment/EZCallLogFragment$c;->a:Lcom/callerid/block/fragment/EZCallLogFragment;

    invoke-static {p1}, Lcom/callerid/block/fragment/EZCallLogFragment;->W1(Lcom/callerid/block/fragment/EZCallLogFragment;)Ljava/util/List;

    move-result-object p1

    iget-object v1, p0, Lcom/callerid/block/fragment/EZCallLogFragment$c;->a:Lcom/callerid/block/fragment/EZCallLogFragment;

    invoke-static {v1}, Lcom/callerid/block/fragment/EZCallLogFragment;->E1(Lcom/callerid/block/fragment/EZCallLogFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/callerid/block/fragment/EZCallLogFragment$c;->a:Lcom/callerid/block/fragment/EZCallLogFragment;

    invoke-static {p1}, Lcom/callerid/block/fragment/EZCallLogFragment;->E1(Lcom/callerid/block/fragment/EZCallLogFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callerid/block/search/CallLogBean;

    iget-object v1, p0, Lcom/callerid/block/fragment/EZCallLogFragment$c;->a:Lcom/callerid/block/fragment/EZCallLogFragment;

    invoke-static {v1}, Lcom/callerid/block/fragment/EZCallLogFragment;->X1(Lcom/callerid/block/fragment/EZCallLogFragment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {p1}, Lcom/callerid/block/search/CallLogBean;->g()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/callerid/block/fragment/EZCallLogFragment$c;->a:Lcom/callerid/block/fragment/EZCallLogFragment;

    invoke-static {p1, p2}, Lcom/callerid/block/fragment/EZCallLogFragment;->Y1(Lcom/callerid/block/fragment/EZCallLogFragment;Ljava/util/HashMap;)Ljava/util/HashMap;

    iget-object p1, p0, Lcom/callerid/block/fragment/EZCallLogFragment$c;->a:Lcom/callerid/block/fragment/EZCallLogFragment;

    invoke-static {p1}, Lcom/callerid/block/fragment/EZCallLogFragment;->E1(Lcom/callerid/block/fragment/EZCallLogFragment;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/callerid/block/fragment/EZCallLogFragment$c;->a:Lcom/callerid/block/fragment/EZCallLogFragment;

    invoke-static {p1}, Lcom/callerid/block/fragment/EZCallLogFragment;->E1(Lcom/callerid/block/fragment/EZCallLogFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/callerid/block/fragment/EZCallLogFragment$c;->a:Lcom/callerid/block/fragment/EZCallLogFragment;

    invoke-static {p1}, Lcom/callerid/block/fragment/EZCallLogFragment;->Z1(Lcom/callerid/block/fragment/EZCallLogFragment;)Landroid/widget/LinearLayout;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/callerid/block/fragment/EZCallLogFragment$c;->a:Lcom/callerid/block/fragment/EZCallLogFragment;

    invoke-static {p1}, Lcom/callerid/block/fragment/EZCallLogFragment;->G1(Lcom/callerid/block/fragment/EZCallLogFragment;)Lcom/callerid/block/b/g;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/callerid/block/fragment/EZCallLogFragment$c;->a:Lcom/callerid/block/fragment/EZCallLogFragment;

    invoke-static {p1}, Lcom/callerid/block/fragment/EZCallLogFragment;->G1(Lcom/callerid/block/fragment/EZCallLogFragment;)Lcom/callerid/block/b/g;

    move-result-object p1

    iget-object v0, p0, Lcom/callerid/block/fragment/EZCallLogFragment$c;->a:Lcom/callerid/block/fragment/EZCallLogFragment;

    invoke-static {v0}, Lcom/callerid/block/fragment/EZCallLogFragment;->E1(Lcom/callerid/block/fragment/EZCallLogFragment;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/callerid/block/b/g;->g(Ljava/util/List;Ljava/util/HashMap;)V

    iget-object p1, p0, Lcom/callerid/block/fragment/EZCallLogFragment$c;->a:Lcom/callerid/block/fragment/EZCallLogFragment;

    invoke-static {p1}, Lcom/callerid/block/fragment/EZCallLogFragment;->G1(Lcom/callerid/block/fragment/EZCallLogFragment;)Lcom/callerid/block/b/g;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/callerid/block/fragment/EZCallLogFragment$c;->a:Lcom/callerid/block/fragment/EZCallLogFragment;

    invoke-static {p1}, Lcom/callerid/block/fragment/EZCallLogFragment;->E1(Lcom/callerid/block/fragment/EZCallLogFragment;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0, p2}, Lcom/callerid/block/fragment/EZCallLogFragment;->a2(Lcom/callerid/block/fragment/EZCallLogFragment;Ljava/util/List;Ljava/util/HashMap;)V

    :goto_0
    invoke-static {}, Lcom/callerid/block/util/c0;->a()Lcom/callerid/block/util/c0;

    move-result-object p1

    iget-object p1, p1, Lcom/callerid/block/util/c0;->a:Ljava/util/concurrent/ExecutorService;

    new-instance p2, Lcom/callerid/block/fragment/EZCallLogFragment$c$a;

    invoke-direct {p2, p0}, Lcom/callerid/block/fragment/EZCallLogFragment$c$a;-><init>(Lcom/callerid/block/fragment/EZCallLogFragment$c;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/callerid/block/fragment/EZCallLogFragment$c;->a:Lcom/callerid/block/fragment/EZCallLogFragment;

    invoke-static {p1}, Lcom/callerid/block/fragment/EZCallLogFragment;->E1(Lcom/callerid/block/fragment/EZCallLogFragment;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/callerid/block/fragment/EZCallLogFragment$c;->a:Lcom/callerid/block/fragment/EZCallLogFragment;

    invoke-static {p1}, Lcom/callerid/block/fragment/EZCallLogFragment;->E1(Lcom/callerid/block/fragment/EZCallLogFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_2

    iget-object p1, p0, Lcom/callerid/block/fragment/EZCallLogFragment$c;->a:Lcom/callerid/block/fragment/EZCallLogFragment;

    invoke-static {p1}, Lcom/callerid/block/fragment/EZCallLogFragment;->E1(Lcom/callerid/block/fragment/EZCallLogFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    :cond_2
    iget-object p1, p0, Lcom/callerid/block/fragment/EZCallLogFragment$c;->a:Lcom/callerid/block/fragment/EZCallLogFragment;

    invoke-static {p1}, Lcom/callerid/block/fragment/EZCallLogFragment;->G1(Lcom/callerid/block/fragment/EZCallLogFragment;)Lcom/callerid/block/b/g;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_3
    iget-object p1, p0, Lcom/callerid/block/fragment/EZCallLogFragment$c;->a:Lcom/callerid/block/fragment/EZCallLogFragment;

    invoke-static {p1}, Lcom/callerid/block/fragment/EZCallLogFragment;->Z1(Lcom/callerid/block/fragment/EZCallLogFragment;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_1
    return-void
.end method
