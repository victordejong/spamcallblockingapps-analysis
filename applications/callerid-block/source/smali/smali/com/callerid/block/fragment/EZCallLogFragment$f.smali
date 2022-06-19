.class Lcom/callerid/block/fragment/EZCallLogFragment$f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/fragment/EZCallLogFragment;->q0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/callerid/block/fragment/EZCallLogFragment;


# direct methods
.method constructor <init>(Lcom/callerid/block/fragment/EZCallLogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/fragment/EZCallLogFragment$f;->b:Lcom/callerid/block/fragment/EZCallLogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    :try_start_0
    iget-object p1, p0, Lcom/callerid/block/fragment/EZCallLogFragment$f;->b:Lcom/callerid/block/fragment/EZCallLogFragment;

    invoke-static {p1}, Lcom/callerid/block/fragment/EZCallLogFragment;->E1(Lcom/callerid/block/fragment/EZCallLogFragment;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/callerid/block/fragment/EZCallLogFragment$f;->b:Lcom/callerid/block/fragment/EZCallLogFragment;

    invoke-static {p1}, Lcom/callerid/block/fragment/EZCallLogFragment;->E1(Lcom/callerid/block/fragment/EZCallLogFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/callerid/block/fragment/EZCallLogFragment$f;->b:Lcom/callerid/block/fragment/EZCallLogFragment;

    invoke-static {p1}, Lcom/callerid/block/fragment/EZCallLogFragment;->E1(Lcom/callerid/block/fragment/EZCallLogFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callerid/block/search/CallLogBean;

    iget-object p3, p0, Lcom/callerid/block/fragment/EZCallLogFragment$f;->b:Lcom/callerid/block/fragment/EZCallLogFragment;

    invoke-static {p3}, Lcom/callerid/block/fragment/EZCallLogFragment;->i2(Lcom/callerid/block/fragment/EZCallLogFragment;)Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-virtual {p1}, Lcom/callerid/block/search/CallLogBean;->P()Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Lcom/callerid/block/search/CallLogBean;->x0(Z)V

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p2, p0, Lcom/callerid/block/fragment/EZCallLogFragment$f;->b:Lcom/callerid/block/fragment/EZCallLogFragment;

    invoke-static {p2}, Lcom/callerid/block/fragment/EZCallLogFragment;->k2(Lcom/callerid/block/fragment/EZCallLogFragment;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 p3, 0x1

    invoke-virtual {p1, p3}, Lcom/callerid/block/search/CallLogBean;->x0(Z)V

    iget-object p3, p0, Lcom/callerid/block/fragment/EZCallLogFragment$f;->b:Lcom/callerid/block/fragment/EZCallLogFragment;

    invoke-static {p3}, Lcom/callerid/block/fragment/EZCallLogFragment;->l2(Lcom/callerid/block/fragment/EZCallLogFragment;)Landroid/content/Context;

    move-result-object p3

    const p4, 0x7f04011f

    const p5, 0x7f060088

    invoke-static {p3, p4, p5}, Lcom/callerid/block/util/p0;->a(Landroid/content/Context;II)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object p2, p0, Lcom/callerid/block/fragment/EZCallLogFragment$f;->b:Lcom/callerid/block/fragment/EZCallLogFragment;

    invoke-static {p2}, Lcom/callerid/block/fragment/EZCallLogFragment;->k2(Lcom/callerid/block/fragment/EZCallLogFragment;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    iget-object p1, p0, Lcom/callerid/block/fragment/EZCallLogFragment$f;->b:Lcom/callerid/block/fragment/EZCallLogFragment;

    invoke-static {p1}, Lcom/callerid/block/fragment/EZCallLogFragment;->m2(Lcom/callerid/block/fragment/EZCallLogFragment;)V

    goto/16 :goto_2

    :cond_1
    const-string p2, "favtest"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "contact:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/callerid/block/search/CallLogBean;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/callerid/block/search/CallLogBean;->N()Z

    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const p3, 0x7f010001

    const/high16 p4, 0x7f010000

    const-string p5, "contact_tony"

    if-eqz p2, :cond_2

    :try_start_1
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, p5, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {p2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/callerid/block/fragment/EZCallLogFragment$f;->b:Lcom/callerid/block/fragment/EZCallLogFragment;

    invoke-static {p1}, Lcom/callerid/block/fragment/EZCallLogFragment;->f2(Lcom/callerid/block/fragment/EZCallLogFragment;)Lcom/callerid/block/main/MainActivity;

    move-result-object p1

    const-class p5, Lcom/callerid/block/mvc/controller/ContactActivity;

    invoke-virtual {p2, p1, p5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/callerid/block/fragment/EZCallLogFragment$f;->b:Lcom/callerid/block/fragment/EZCallLogFragment;

    invoke-virtual {p1, p2}, Landroidx/fragment/app/Fragment;->z1(Landroid/content/Intent;)V

    iget-object p1, p0, Lcom/callerid/block/fragment/EZCallLogFragment$f;->b:Lcom/callerid/block/fragment/EZCallLogFragment;

    invoke-static {p1}, Lcom/callerid/block/fragment/EZCallLogFragment;->f2(Lcom/callerid/block/fragment/EZCallLogFragment;)Lcom/callerid/block/main/MainActivity;

    move-result-object p1

    :goto_1
    invoke-virtual {p1, p4, p3}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_2

    :cond_2
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, p5, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {p2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/callerid/block/fragment/EZCallLogFragment$f;->b:Lcom/callerid/block/fragment/EZCallLogFragment;

    invoke-static {p1}, Lcom/callerid/block/fragment/EZCallLogFragment;->f2(Lcom/callerid/block/fragment/EZCallLogFragment;)Lcom/callerid/block/main/MainActivity;

    move-result-object p1

    const-class p5, Lcom/callerid/block/mvc/controller/UnknownContactActivity;

    invoke-virtual {p2, p1, p5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/callerid/block/fragment/EZCallLogFragment$f;->b:Lcom/callerid/block/fragment/EZCallLogFragment;

    invoke-virtual {p1, p2}, Landroidx/fragment/app/Fragment;->z1(Landroid/content/Intent;)V

    iget-object p1, p0, Lcom/callerid/block/fragment/EZCallLogFragment$f;->b:Lcom/callerid/block/fragment/EZCallLogFragment;

    invoke-static {p1}, Lcom/callerid/block/fragment/EZCallLogFragment;->f2(Lcom/callerid/block/fragment/EZCallLogFragment;)Lcom/callerid/block/main/MainActivity;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_2
    return-void
.end method
