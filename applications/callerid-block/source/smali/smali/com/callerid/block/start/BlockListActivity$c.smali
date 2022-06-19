.class Lcom/callerid/block/start/BlockListActivity$c;
.super Landroid/os/AsyncTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callerid/block/start/BlockListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
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
.field a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/callerid/block/start/BlockListActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/callerid/block/start/BlockListActivity;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/callerid/block/start/BlockListActivity$c;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method protected doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object p1, p0, Lcom/callerid/block/start/BlockListActivity$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callerid/block/start/BlockListActivity;

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/callerid/block/start/BlockListActivity;->S(Lcom/callerid/block/start/BlockListActivity;)Lcom/callerid/block/util/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callerid/block/util/i;->e()Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/callerid/block/start/BlockListActivity;->R(Lcom/callerid/block/start/BlockListActivity;Ljava/util/List;)Ljava/util/List;

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/callerid/block/start/BlockListActivity$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callerid/block/start/BlockListActivity;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/callerid/block/start/BlockListActivity;->U()V

    invoke-static {p1}, Lcom/callerid/block/start/BlockListActivity;->Q(Lcom/callerid/block/start/BlockListActivity;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/callerid/block/start/BlockListActivity;->T(Lcom/callerid/block/start/BlockListActivity;)Lcom/callerid/block/start/BlockListActivity$BlackAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/callerid/block/start/BlockListActivity;->T(Lcom/callerid/block/start/BlockListActivity;)Lcom/callerid/block/start/BlockListActivity$BlackAdapter;

    move-result-object v0

    invoke-static {p1}, Lcom/callerid/block/start/BlockListActivity;->Q(Lcom/callerid/block/start/BlockListActivity;)Ljava/util/List;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/callerid/block/start/BlockListActivity$BlackAdapter;->a(Lcom/callerid/block/start/BlockListActivity$BlackAdapter;Ljava/util/List;)V

    :cond_0
    return-void
.end method
