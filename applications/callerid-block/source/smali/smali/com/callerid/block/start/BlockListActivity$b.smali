.class Lcom/callerid/block/start/BlockListActivity$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/start/BlockListActivity;->V()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/callerid/block/start/BlockListActivity;


# direct methods
.method constructor <init>(Lcom/callerid/block/start/BlockListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/start/BlockListActivity$b;->b:Lcom/callerid/block/start/BlockListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    new-instance v0, Lcom/callerid/block/start/BlockListActivity$c;

    iget-object v1, p0, Lcom/callerid/block/start/BlockListActivity$b;->b:Lcom/callerid/block/start/BlockListActivity;

    invoke-direct {v0, v1}, Lcom/callerid/block/start/BlockListActivity$c;-><init>(Lcom/callerid/block/start/BlockListActivity;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
