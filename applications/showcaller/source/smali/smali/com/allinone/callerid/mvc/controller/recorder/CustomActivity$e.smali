.class Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity$e;
.super Landroid/os/AsyncTask;
.source "CustomActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity$e;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity$e;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity;

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    :try_start_0
    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity;->X(Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity;)Lcom/allinone/callerid/b/z/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/allinone/callerid/b/z/b;->C()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity;->X(Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity;)Lcom/allinone/callerid/b/z/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/allinone/callerid/b/z/b;->C()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity;->X(Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity;)Lcom/allinone/callerid/b/z/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/allinone/callerid/b/z/d;->G()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity;->X(Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity;)Lcom/allinone/callerid/b/z/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/allinone/callerid/b/z/b;->C()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/allinone/callerid/bean/recorder/CustomRecord;

    const/4 v2, 0x0

    .line 5
    invoke-virtual {v1, v2}, Lcom/allinone/callerid/bean/recorder/CustomRecord;->setSelect(Z)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity;->X(Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity;)Lcom/allinone/callerid/b/z/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/allinone/callerid/b/z/d;->G()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method protected b(Ljava/lang/Void;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity$e;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity;->X(Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity;)Lcom/allinone/callerid/b/z/d;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->i()V

    :cond_0
    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity$e;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity$e;->b(Ljava/lang/Void;)V

    return-void
.end method
