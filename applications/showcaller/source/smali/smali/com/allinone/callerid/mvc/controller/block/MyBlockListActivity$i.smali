.class Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$i;
.super Ljava/lang/Object;
.source "MyBlockListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->b1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$i;->d:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$i;->d:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->m0(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;)Lcom/allinone/callerid/util/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/allinone/callerid/util/m;->f()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->r0(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;Ljava/util/List;)Ljava/util/List;

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$i;->d:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->u0(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
