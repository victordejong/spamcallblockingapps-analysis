.class Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$r;
.super Landroid/os/Handler;
.source "MyBlockListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "r"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 3
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$r;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$r;-><init>(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$r;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;

    if-eqz v0, :cond_5

    .line 2
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x64

    if-eq v1, v2, :cond_1

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_0

    goto/16 :goto_0

    .line 3
    :cond_0
    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->Y(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->L0(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4
    invoke-virtual {v0}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->V0()V

    .line 5
    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->Y(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->Y(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_5

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->B0(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;)Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 6
    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->B0(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;)Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;

    move-result-object v1

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->Y(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;->i(Ljava/util/List;)V

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->Y(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 8
    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->Y(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 9
    :cond_2
    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->o0(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->o0(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 10
    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->Y(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->o0(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 11
    :cond_3
    invoke-virtual {v0}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->V0()V

    .line 12
    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->Y(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->Y(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->B0(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;)Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 13
    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->B0(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;)Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;

    move-result-object v1

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->Y(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;->i(Ljava/util/List;)V

    .line 14
    :cond_4
    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->K0(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;)V

    .line 15
    :cond_5
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void
.end method
