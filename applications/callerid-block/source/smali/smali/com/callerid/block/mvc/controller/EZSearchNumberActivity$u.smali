.class Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$u;
.super Landroid/os/AsyncTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "u"
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

.field b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$u;->a:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$u;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5

    iget-object p1, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$u;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;

    if-eqz p1, :cond_0

    :try_start_0
    invoke-static {p1}, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->l0(Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;)Lcom/lidroid/xutils/DbUtils;

    move-result-object v0

    const-class v1, Lcom/callerid/block/bean/SearchHis;

    invoke-static {v1}, Lcom/lidroid/xutils/db/sqlite/Selector;->from(Ljava/lang/Class;)Lcom/lidroid/xutils/db/sqlite/Selector;

    move-result-object v1

    const-string v2, "number"

    const-string v3, "="

    iget-object v4, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$u;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lcom/lidroid/xutils/db/sqlite/Selector;->where(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/lidroid/xutils/db/sqlite/Selector;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lidroid/xutils/DbUtils;->findFirst(Lcom/lidroid/xutils/db/sqlite/Selector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callerid/block/bean/SearchHis;

    if-nez v0, :cond_0

    new-instance v0, Lcom/callerid/block/bean/SearchHis;

    invoke-direct {v0}, Lcom/callerid/block/bean/SearchHis;-><init>()V

    iget-object v1, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$u;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/callerid/block/bean/SearchHis;->setNumber(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->l0(Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;)Lcom/lidroid/xutils/DbUtils;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/lidroid/xutils/DbUtils;->saveOrUpdate(Ljava/lang/Object;)V
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
    .locals 0

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$u;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$u;->b(Ljava/lang/Void;)V

    return-void
.end method
