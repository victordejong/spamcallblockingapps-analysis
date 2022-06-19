.class Lcom/allinone/callerid/g/e$p;
.super Ljava/lang/Object;
.source "EZSearchFragment.java"

# interfaces
.implements Lcom/allinone/callerid/i/a/g/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/g/e;->n3(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/g/e;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/g/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/g/e$p;->a:Lcom/allinone/callerid/g/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/allinone/callerid/g/e$v;

    iget-object v1, p0, Lcom/allinone/callerid/g/e$p;->a:Lcom/allinone/callerid/g/e;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/allinone/callerid/g/e$v;-><init>(Lcom/allinone/callerid/g/e;Ljava/util/List;Z)V

    .line 3
    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/allinone/callerid/g/e$p;->a:Lcom/allinone/callerid/g/e;

    invoke-static {p1}, Lcom/allinone/callerid/g/e;->r2(Lcom/allinone/callerid/g/e;)V

    :goto_0
    return-void
.end method
