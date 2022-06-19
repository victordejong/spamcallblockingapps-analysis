.class Lcom/callerid/block/fragment/a$a$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/fragment/a$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/callerid/block/fragment/a$a;


# direct methods
.method constructor <init>(Lcom/callerid/block/fragment/a$a;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/fragment/a$a$a;->b:Lcom/callerid/block/fragment/a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
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
    iget-object p1, p0, Lcom/callerid/block/fragment/a$a$a;->b:Lcom/callerid/block/fragment/a$a;

    iget-object p1, p1, Lcom/callerid/block/fragment/a$a;->b:Lcom/callerid/block/fragment/a;

    invoke-static {p1}, Lcom/callerid/block/fragment/a;->M1(Lcom/callerid/block/fragment/a;)Ljava/util/ArrayList;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const p2, 0x7f010001

    const/high16 p4, 0x7f010000

    const-string p5, "contact_tony"

    if-eqz p1, :cond_0

    :try_start_1
    iget-object p1, p0, Lcom/callerid/block/fragment/a$a$a;->b:Lcom/callerid/block/fragment/a$a;

    iget-object p1, p1, Lcom/callerid/block/fragment/a$a;->b:Lcom/callerid/block/fragment/a;

    invoke-static {p1}, Lcom/callerid/block/fragment/a;->M1(Lcom/callerid/block/fragment/a;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/callerid/block/fragment/a$a$a;->b:Lcom/callerid/block/fragment/a$a;

    iget-object p1, p1, Lcom/callerid/block/fragment/a$a;->b:Lcom/callerid/block/fragment/a;

    invoke-static {p1}, Lcom/callerid/block/fragment/a;->M1(Lcom/callerid/block/fragment/a;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callerid/block/search/CallLogBean;

    new-instance p3, Landroid/content/Intent;

    invoke-direct {p3}, Landroid/content/Intent;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, p5, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {p3, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/callerid/block/fragment/a$a$a;->b:Lcom/callerid/block/fragment/a$a;

    iget-object p1, p1, Lcom/callerid/block/fragment/a$a;->b:Lcom/callerid/block/fragment/a;

    invoke-static {p1}, Lcom/callerid/block/fragment/a;->I1(Lcom/callerid/block/fragment/a;)Lcom/callerid/block/main/MainActivity;

    move-result-object p1

    const-class p5, Lcom/callerid/block/mvc/controller/ContactActivity;

    invoke-virtual {p3, p1, p5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/callerid/block/fragment/a$a$a;->b:Lcom/callerid/block/fragment/a$a;

    iget-object p1, p1, Lcom/callerid/block/fragment/a$a;->b:Lcom/callerid/block/fragment/a;

    invoke-virtual {p1, p3}, Landroidx/fragment/app/Fragment;->z1(Landroid/content/Intent;)V

    iget-object p1, p0, Lcom/callerid/block/fragment/a$a$a;->b:Lcom/callerid/block/fragment/a$a;

    iget-object p1, p1, Lcom/callerid/block/fragment/a$a;->b:Lcom/callerid/block/fragment/a;

    invoke-static {p1}, Lcom/callerid/block/fragment/a;->I1(Lcom/callerid/block/fragment/a;)Lcom/callerid/block/main/MainActivity;

    move-result-object p1

    :goto_0
    invoke-virtual {p1, p4, p2}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/callerid/block/fragment/a$a$a;->b:Lcom/callerid/block/fragment/a$a;

    iget-object p1, p1, Lcom/callerid/block/fragment/a$a;->b:Lcom/callerid/block/fragment/a;

    invoke-static {p1}, Lcom/callerid/block/fragment/a;->d2(Lcom/callerid/block/fragment/a;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/callerid/block/fragment/a$a$a;->b:Lcom/callerid/block/fragment/a$a;

    iget-object p1, p1, Lcom/callerid/block/fragment/a$a;->b:Lcom/callerid/block/fragment/a;

    invoke-static {p1}, Lcom/callerid/block/fragment/a;->d2(Lcom/callerid/block/fragment/a;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_2

    iget-object p1, p0, Lcom/callerid/block/fragment/a$a$a;->b:Lcom/callerid/block/fragment/a$a;

    iget-object p1, p1, Lcom/callerid/block/fragment/a$a;->b:Lcom/callerid/block/fragment/a;

    invoke-static {p1}, Lcom/callerid/block/fragment/a;->d2(Lcom/callerid/block/fragment/a;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callerid/block/search/CallLogBean;

    sget-boolean p3, Lcom/callerid/block/util/w;->a:Z

    if-eqz p3, :cond_1

    const-string p3, "favtest"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "contact:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/callerid/block/search/CallLogBean;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    new-instance p3, Landroid/content/Intent;

    invoke-direct {p3}, Landroid/content/Intent;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, p5, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {p3, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/callerid/block/fragment/a$a$a;->b:Lcom/callerid/block/fragment/a$a;

    iget-object p1, p1, Lcom/callerid/block/fragment/a$a;->b:Lcom/callerid/block/fragment/a;

    invoke-static {p1}, Lcom/callerid/block/fragment/a;->I1(Lcom/callerid/block/fragment/a;)Lcom/callerid/block/main/MainActivity;

    move-result-object p1

    const-class p5, Lcom/callerid/block/mvc/controller/ContactActivity;

    invoke-virtual {p3, p1, p5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/callerid/block/fragment/a$a$a;->b:Lcom/callerid/block/fragment/a$a;

    iget-object p1, p1, Lcom/callerid/block/fragment/a$a;->b:Lcom/callerid/block/fragment/a;

    invoke-virtual {p1, p3}, Landroidx/fragment/app/Fragment;->z1(Landroid/content/Intent;)V

    iget-object p1, p0, Lcom/callerid/block/fragment/a$a$a;->b:Lcom/callerid/block/fragment/a$a;

    iget-object p1, p1, Lcom/callerid/block/fragment/a$a;->b:Lcom/callerid/block/fragment/a;

    invoke-static {p1}, Lcom/callerid/block/fragment/a;->I1(Lcom/callerid/block/fragment/a;)Lcom/callerid/block/main/MainActivity;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_1
    return-void
.end method
