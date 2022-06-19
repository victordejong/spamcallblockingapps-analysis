.class Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$y;
.super Landroid/os/AsyncTask;
.source "EZSearchNumberActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "y"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
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
            "Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$y;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    .line 1
    aget-object p1, p1, v0

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$y;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    :try_start_0
    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->O0(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/allinone/callerid/i/a/x/a;->f(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->i0(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 5
    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->h0(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v0, v1}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->R0(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;I)I

    .line 6
    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->U0(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/allinone/callerid/i/a/x/a;->e(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->T0(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 7
    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->h0(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->S0(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-object p1
.end method

.method protected b(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$y;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->W0(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)Lcom/allinone/callerid/b/o;

    move-result-object v1

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->h0(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->Q0(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)I

    move-result v0

    invoke-virtual {v1, v2, v0, p1}, Lcom/allinone/callerid/b/o;->b(Ljava/util/List;ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$y;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$y;->b(Ljava/lang/String;)V

    return-void
.end method
