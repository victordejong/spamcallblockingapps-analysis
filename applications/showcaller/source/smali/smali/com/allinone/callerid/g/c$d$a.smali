.class Lcom/allinone/callerid/g/c$d$a;
.super Ljava/lang/Object;
.source "EZCallPhoneFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/g/c$d;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/g/c$d;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/g/c$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/g/c$d$a;->d:Lcom/allinone/callerid/g/c$d;

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

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/allinone/callerid/g/c$d$a;->d:Lcom/allinone/callerid/g/c$d;

    iget-object p1, p1, Lcom/allinone/callerid/g/c$d;->d:Lcom/allinone/callerid/g/c;

    invoke-static {p1}, Lcom/allinone/callerid/g/c;->p2(Lcom/allinone/callerid/g/c;)Ljava/util/ArrayList;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const p2, 0x7f010001

    const/high16 p4, 0x7f010000

    const-string p5, "contact_tony"

    if-eqz p1, :cond_0

    :try_start_1
    iget-object p1, p0, Lcom/allinone/callerid/g/c$d$a;->d:Lcom/allinone/callerid/g/c$d;

    iget-object p1, p1, Lcom/allinone/callerid/g/c$d;->d:Lcom/allinone/callerid/g/c;

    invoke-static {p1}, Lcom/allinone/callerid/g/c;->p2(Lcom/allinone/callerid/g/c;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/allinone/callerid/g/c$d$a;->d:Lcom/allinone/callerid/g/c$d;

    iget-object p1, p1, Lcom/allinone/callerid/g/c$d;->d:Lcom/allinone/callerid/g/c;

    invoke-static {p1}, Lcom/allinone/callerid/g/c;->p2(Lcom/allinone/callerid/g/c;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/allinone/callerid/search/CallLogBean;

    .line 3
    new-instance p3, Landroid/content/Intent;

    invoke-direct {p3}, Landroid/content/Intent;-><init>()V

    .line 4
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 5
    invoke-virtual {v0, p5, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 6
    invoke-virtual {p3, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 7
    iget-object p1, p0, Lcom/allinone/callerid/g/c$d$a;->d:Lcom/allinone/callerid/g/c$d;

    iget-object p1, p1, Lcom/allinone/callerid/g/c$d;->d:Lcom/allinone/callerid/g/c;

    invoke-static {p1}, Lcom/allinone/callerid/g/c;->f2(Lcom/allinone/callerid/g/c;)Lcom/allinone/callerid/mvc/controller/MainActivity;

    move-result-object p1

    const-class p5, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;

    invoke-virtual {p3, p1, p5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 8
    iget-object p1, p0, Lcom/allinone/callerid/g/c$d$a;->d:Lcom/allinone/callerid/g/c$d;

    iget-object p1, p1, Lcom/allinone/callerid/g/c$d;->d:Lcom/allinone/callerid/g/c;

    invoke-virtual {p1, p3}, Landroidx/fragment/app/Fragment;->W1(Landroid/content/Intent;)V

    .line 9
    iget-object p1, p0, Lcom/allinone/callerid/g/c$d$a;->d:Lcom/allinone/callerid/g/c$d;

    iget-object p1, p1, Lcom/allinone/callerid/g/c$d;->d:Lcom/allinone/callerid/g/c;

    invoke-static {p1}, Lcom/allinone/callerid/g/c;->f2(Lcom/allinone/callerid/g/c;)Lcom/allinone/callerid/mvc/controller/MainActivity;

    move-result-object p1

    invoke-virtual {p1, p4, p2}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto/16 :goto_0

    .line 10
    :cond_0
    iget-object p1, p0, Lcom/allinone/callerid/g/c$d$a;->d:Lcom/allinone/callerid/g/c$d;

    iget-object p1, p1, Lcom/allinone/callerid/g/c$d;->d:Lcom/allinone/callerid/g/c;

    invoke-static {p1}, Lcom/allinone/callerid/g/c;->I2(Lcom/allinone/callerid/g/c;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/allinone/callerid/g/c$d$a;->d:Lcom/allinone/callerid/g/c$d;

    iget-object p1, p1, Lcom/allinone/callerid/g/c$d;->d:Lcom/allinone/callerid/g/c;

    invoke-static {p1}, Lcom/allinone/callerid/g/c;->I2(Lcom/allinone/callerid/g/c;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 11
    iget-object p1, p0, Lcom/allinone/callerid/g/c$d$a;->d:Lcom/allinone/callerid/g/c$d;

    iget-object p1, p1, Lcom/allinone/callerid/g/c$d;->d:Lcom/allinone/callerid/g/c;

    invoke-static {p1}, Lcom/allinone/callerid/g/c;->I2(Lcom/allinone/callerid/g/c;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/allinone/callerid/search/CallLogBean;

    .line 12
    sget-boolean p3, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz p3, :cond_1

    const-string p3, "favtest"

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "contact:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/allinone/callerid/search/CallLogBean;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    :cond_1
    new-instance p3, Landroid/content/Intent;

    invoke-direct {p3}, Landroid/content/Intent;-><init>()V

    .line 15
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 16
    invoke-virtual {v0, p5, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 17
    invoke-virtual {p3, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 18
    iget-object p1, p0, Lcom/allinone/callerid/g/c$d$a;->d:Lcom/allinone/callerid/g/c$d;

    iget-object p1, p1, Lcom/allinone/callerid/g/c$d;->d:Lcom/allinone/callerid/g/c;

    invoke-static {p1}, Lcom/allinone/callerid/g/c;->f2(Lcom/allinone/callerid/g/c;)Lcom/allinone/callerid/mvc/controller/MainActivity;

    move-result-object p1

    const-class p5, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;

    invoke-virtual {p3, p1, p5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 19
    iget-object p1, p0, Lcom/allinone/callerid/g/c$d$a;->d:Lcom/allinone/callerid/g/c$d;

    iget-object p1, p1, Lcom/allinone/callerid/g/c$d;->d:Lcom/allinone/callerid/g/c;

    invoke-virtual {p1, p3}, Landroidx/fragment/app/Fragment;->W1(Landroid/content/Intent;)V

    .line 20
    iget-object p1, p0, Lcom/allinone/callerid/g/c$d$a;->d:Lcom/allinone/callerid/g/c$d;

    iget-object p1, p1, Lcom/allinone/callerid/g/c$d;->d:Lcom/allinone/callerid/g/c;

    invoke-static {p1}, Lcom/allinone/callerid/g/c;->f2(Lcom/allinone/callerid/g/c;)Lcom/allinone/callerid/mvc/controller/MainActivity;

    move-result-object p1

    invoke-virtual {p1, p4, p2}, Landroid/app/Activity;->overridePendingTransition(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 21
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method
