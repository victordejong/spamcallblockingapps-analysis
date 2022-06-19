.class Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$c;
.super Ljava/lang/Object;
.source "MyBlockListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->a1(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Ljava/util/List;

.field final synthetic e:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$c;->e:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;

    iput-object p2, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$c;->d:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$c;->d:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$c;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 3
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$c;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 4
    instance-of v2, v1, Lcom/allinone/callerid/bean/CustomBlock;

    if-eqz v2, :cond_0

    .line 5
    check-cast v1, Lcom/allinone/callerid/bean/CustomBlock;

    .line 6
    iget-object v2, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$c;->e:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;

    invoke-static {v2}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->m0(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;)Lcom/allinone/callerid/util/m;

    move-result-object v2

    invoke-virtual {v1}, Lcom/allinone/callerid/bean/CustomBlock;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/allinone/callerid/util/m;->e(Ljava/lang/String;)V

    goto :goto_1

    .line 7
    :cond_0
    check-cast v1, Lcom/allinone/callerid/bean/EZBlackList;

    .line 8
    iget-object v2, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$c;->e:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;

    invoke-static {v2}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->m0(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;)Lcom/allinone/callerid/util/m;

    move-result-object v2

    invoke-virtual {v1}, Lcom/allinone/callerid/bean/EZBlackList;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/allinone/callerid/util/m;->c(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
