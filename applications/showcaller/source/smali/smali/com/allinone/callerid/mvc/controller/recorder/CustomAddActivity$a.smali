.class Lcom/allinone/callerid/mvc/controller/recorder/CustomAddActivity$a;
.super Landroid/os/AsyncTask;
.source "CustomAddActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/allinone/callerid/mvc/controller/recorder/CustomAddActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/allinone/callerid/mvc/controller/recorder/CustomAddActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/recorder/CustomAddActivity;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/CustomAddActivity$a;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/String;
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/recorder/CustomAddActivity$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/allinone/callerid/mvc/controller/recorder/CustomAddActivity;

    if-eqz p1, :cond_2

    .line 2
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3
    :try_start_0
    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/recorder/CustomAddActivity;->X(Lcom/allinone/callerid/mvc/controller/recorder/CustomAddActivity;)Lcom/allinone/callerid/b/z/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/allinone/callerid/b/z/a;->F()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/recorder/CustomAddActivity;->X(Lcom/allinone/callerid/mvc/controller/recorder/CustomAddActivity;)Lcom/allinone/callerid/b/z/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/allinone/callerid/b/z/a;->F()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 4
    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/recorder/CustomAddActivity;->X(Lcom/allinone/callerid/mvc/controller/recorder/CustomAddActivity;)Lcom/allinone/callerid/b/z/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/allinone/callerid/b/z/a;->F()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/allinone/callerid/bean/recorder/CustomRecord;

    .line 5
    invoke-virtual {v1}, Lcom/allinone/callerid/bean/recorder/CustomRecord;->isSelect()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6
    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/recorder/CustomAddActivity;->Y(Lcom/allinone/callerid/mvc/controller/recorder/CustomAddActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/allinone/callerid/bean/recorder/CustomRecord;->setType(I)V

    const/4 v2, 0x0

    .line 7
    invoke-virtual {v1, v2}, Lcom/allinone/callerid/bean/recorder/CustomRecord;->setSelect(Z)V

    .line 8
    invoke-static {}, Lcom/allinone/callerid/f/k/a;->c()Lcom/allinone/callerid/f/k/a;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/allinone/callerid/f/k/a;->a(Lcom/allinone/callerid/bean/recorder/CustomRecord;)Z

    goto :goto_0

    :cond_1
    const-string p1, "addsuccess"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method protected b(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/CustomAddActivity$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/allinone/callerid/mvc/controller/recorder/CustomAddActivity;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "addsuccess"

    .line 4
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f100116

    .line 5
    invoke-virtual {v0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 6
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    const/high16 p1, 0x7f010000

    const v1, 0x7f010001

    .line 7
    invoke-virtual {v0, p1, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/allinone/callerid/mvc/controller/recorder/CustomAddActivity$a;->a([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/allinone/callerid/mvc/controller/recorder/CustomAddActivity$a;->b(Ljava/lang/String;)V

    return-void
.end method
