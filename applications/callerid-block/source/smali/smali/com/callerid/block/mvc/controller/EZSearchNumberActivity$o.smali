.class Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$o;
.super Landroid/os/AsyncTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "o"
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
.field a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$o;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    iget-object p1, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$o;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;

    if-eqz p1, :cond_0

    :try_start_0
    invoke-static {p1}, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->l0(Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;)Lcom/lidroid/xutils/DbUtils;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->l0(Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;)Lcom/lidroid/xutils/DbUtils;

    move-result-object p1

    const-class v0, Lcom/callerid/block/bean/SearchHis;

    invoke-virtual {p1, v0}, Lcom/lidroid/xutils/DbUtils;->deleteAll(Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected b(Ljava/lang/Void;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$o;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->T(Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.callerid.block.INIT_HISTORY"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p1}, Ld/p/a/a;->b(Landroid/content/Context;)Ld/p/a/a;

    move-result-object p1

    invoke-virtual {p1, v0}, Ld/p/a/a;->d(Landroid/content/Intent;)Z

    :cond_0
    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$o;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$o;->b(Ljava/lang/Void;)V

    return-void
.end method
