.class public Lcom/callcontrol/datashare/SyncAppsProvider$d;
.super Landroid/os/AsyncTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callcontrol/datashare/SyncAppsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Lcom/callcontrol/datashare/SyncAppsProvider$c;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/callcontrol/datashare/SyncAppsProvider$d;->a:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/callcontrol/datashare/SyncAppsProvider$a;)V
    .locals 0

    invoke-direct {p0}, Lcom/callcontrol/datashare/SyncAppsProvider$d;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/callcontrol/datashare/SyncAppsProvider$d;)Ljava/util/concurrent/CountDownLatch;
    .locals 0

    iget-object p0, p0, Lcom/callcontrol/datashare/SyncAppsProvider$d;->a:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method


# virtual methods
.method public varargs b([Lcom/callcontrol/datashare/SyncAppsProvider$c;)Ljava/lang/Void;
    .locals 3

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    invoke-virtual {v2}, Lcom/callcontrol/datashare/SyncAppsProvider$c;->a()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public c(Ljava/lang/Void;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/callcontrol/datashare/SyncAppsProvider$d;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Lcom/callcontrol/datashare/SyncAppsProvider$c;

    invoke-virtual {p0, p1}, Lcom/callcontrol/datashare/SyncAppsProvider$d;->b([Lcom/callcontrol/datashare/SyncAppsProvider$c;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public onCancelled()V
    .locals 1

    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    iget-object v0, p0, Lcom/callcontrol/datashare/SyncAppsProvider$d;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/callcontrol/datashare/SyncAppsProvider$d;->c(Ljava/lang/Void;)V

    return-void
.end method
