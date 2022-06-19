.class Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$a;
.super Landroid/os/AsyncTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->r0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List<",
        "Lcom/callerid/block/bean/SearchHis;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;


# direct methods
.method constructor <init>(Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$a;->a:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List<",
            "Lcom/callerid/block/bean/SearchHis;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object p1, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$a;->a:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;

    invoke-static {p1}, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->l0(Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;)Lcom/lidroid/xutils/DbUtils;

    move-result-object p1

    const-class v0, Lcom/callerid/block/bean/SearchHis;

    invoke-virtual {p1, v0}, Lcom/lidroid/xutils/DbUtils;->findAll(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected b(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/callerid/block/bean/SearchHis;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$a;->a:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;

    invoke-static {v0}, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->g0(Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$a;->a:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;

    invoke-static {v0}, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->g0(Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$a;->a:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;

    invoke-static {v0}, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->g0(Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    :goto_0
    iget-object v0, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$a;->a:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;

    invoke-static {v0}, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->g0(Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$a;->a:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;

    invoke-static {v0}, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->g0(Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    iget-object p1, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$a;->a:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;

    invoke-static {p1}, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->g0(Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    :cond_2
    iget-object p1, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$a;->a:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;

    invoke-static {p1}, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->m0(Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;)Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$q;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$a;->a:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;

    invoke-static {p1}, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->m0(Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;)Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$q;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$a;->a:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;

    new-instance v0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$q;

    iget-object v1, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$a;->a:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;

    invoke-direct {v0, v1, v1}, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$q;-><init>(Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;Landroid/app/Activity;)V

    invoke-static {p1, v0}, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->n0(Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$q;)Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$q;

    iget-object p1, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$a;->a:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;

    invoke-static {p1}, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->e0(Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;)Landroid/widget/ListView;

    move-result-object p1

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$a;->a:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;

    invoke-static {v0}, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->m0(Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;)Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$q;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :goto_1
    iget-object p1, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$a;->a:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;

    invoke-static {p1}, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->g0(Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;)Ljava/util/List;

    move-result-object p1

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$a;->a:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;

    invoke-static {p1}, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->g0(Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v2, 0x1

    if-lt p1, v2, :cond_4

    iget-object p1, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$a;->a:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;

    invoke-static {p1}, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->R(Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$a;->a:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;

    invoke-static {p1}, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->e0(Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;)Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object p1, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$a;->a:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;

    invoke-static {p1}, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->e0(Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;)Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/ListView;->setClickable(Z)V

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$a;->a:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;

    invoke-static {p1}, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->R(Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$a;->a:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;

    invoke-static {p1}, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->R(Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v2, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$a;->a:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;

    invoke-virtual {v2}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f10019a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$a;->a:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;

    invoke-static {p1}, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->e0(Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;)Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object p1, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$a;->a:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;

    invoke-static {p1}, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->e0(Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;)Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setClickable(Z)V

    :goto_2
    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$a;->a([Ljava/lang/Void;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$a;->b(Ljava/util/List;)V

    return-void
.end method
