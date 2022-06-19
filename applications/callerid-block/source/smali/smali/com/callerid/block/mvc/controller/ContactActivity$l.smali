.class Lcom/callerid/block/mvc/controller/ContactActivity$l;
.super Landroid/os/AsyncTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callerid/block/mvc/controller/ContactActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "l"
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
.field a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/callerid/block/mvc/controller/ContactActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/callerid/block/mvc/controller/ContactActivity;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/callerid/block/mvc/controller/ContactActivity$l;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/String;
    .locals 2

    iget-object p1, p0, Lcom/callerid/block/mvc/controller/ContactActivity$l;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callerid/block/mvc/controller/ContactActivity;

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object v0

    invoke-static {p1}, Lcom/callerid/block/mvc/controller/ContactActivity;->e0(Lcom/callerid/block/mvc/controller/ContactActivity;)Lcom/callerid/block/search/CallLogBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callerid/block/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/callerid/block/util/t0;->j(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getcontactname"

    invoke-static {v1, v0}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected b(Ljava/lang/String;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/ContactActivity$l;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callerid/block/mvc/controller/ContactActivity;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_0

    invoke-static {v0}, Lcom/callerid/block/mvc/controller/ContactActivity;->g0(Lcom/callerid/block/mvc/controller/ContactActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/callerid/block/mvc/controller/ContactActivity;->e0(Lcom/callerid/block/mvc/controller/ContactActivity;)Lcom/callerid/block/search/CallLogBean;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/callerid/block/search/CallLogBean;->l0(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    invoke-static {v0}, Lcom/callerid/block/mvc/controller/ContactActivity;->e0(Lcom/callerid/block/mvc/controller/ContactActivity;)Lcom/callerid/block/search/CallLogBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callerid/block/search/CallLogBean;->n()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {v0}, Lcom/callerid/block/mvc/controller/ContactActivity;->e0(Lcom/callerid/block/mvc/controller/ContactActivity;)Lcom/callerid/block/search/CallLogBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callerid/block/search/CallLogBean;->n()Ljava/lang/String;

    move-result-object p1

    const-string v1, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {v0}, Lcom/callerid/block/mvc/controller/ContactActivity;->g0(Lcom/callerid/block/mvc/controller/ContactActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-static {v0}, Lcom/callerid/block/mvc/controller/ContactActivity;->e0(Lcom/callerid/block/mvc/controller/ContactActivity;)Lcom/callerid/block/search/CallLogBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callerid/block/search/CallLogBean;->n()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lcom/callerid/block/mvc/controller/ContactActivity;->g0(Lcom/callerid/block/mvc/controller/ContactActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-static {v0}, Lcom/callerid/block/mvc/controller/ContactActivity;->e0(Lcom/callerid/block/mvc/controller/ContactActivity;)Lcom/callerid/block/search/CallLogBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callerid/block/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_1
    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/callerid/block/mvc/controller/ContactActivity$l;->a([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/callerid/block/mvc/controller/ContactActivity$l;->b(Ljava/lang/String;)V

    return-void
.end method
