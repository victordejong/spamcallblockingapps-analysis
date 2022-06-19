.class Lcom/callerid/block/mvc/controller/EZDialActivity$f;
.super Landroid/os/AsyncTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callerid/block/mvc/controller/EZDialActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/callerid/block/mvc/controller/EZDialActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/callerid/block/mvc/controller/EZDialActivity;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/callerid/block/mvc/controller/EZDialActivity$f;->b:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/callerid/block/mvc/controller/EZDialActivity$f;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected a([Ljava/lang/Object;)Landroid/database/Cursor;
    .locals 3

    iget-object p1, p0, Lcom/callerid/block/mvc/controller/EZDialActivity$f;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callerid/block/mvc/controller/EZDialActivity;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-static {p1}, Lcom/callerid/block/mvc/controller/EZDialActivity;->X(Lcom/callerid/block/mvc/controller/EZDialActivity;)Lfydialer/ContactAccessor;

    move-result-object p1

    iget-object v1, p0, Lcom/callerid/block/mvc/controller/EZDialActivity$f;->a:Ljava/lang/String;

    invoke-static {}, Lcom/callerid/block/mvc/controller/EZDialActivity;->c0()Z

    move-result v2

    invoke-virtual {p1, v1, v2}, Lfydialer/ContactAccessor;->recalculate(Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/callerid/block/mvc/controller/EZDialActivity$f;->a([Ljava/lang/Object;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/EZDialActivity$f;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callerid/block/mvc/controller/EZDialActivity;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/database/Cursor;

    invoke-static {v0, p1}, Lcom/callerid/block/mvc/controller/EZDialActivity;->d0(Lcom/callerid/block/mvc/controller/EZDialActivity;Landroid/database/Cursor;)V

    :cond_0
    return-void
.end method
