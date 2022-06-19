.class Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a$b;
.super Ljava/lang/Object;
.source "MyBlockListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a$b;->d:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a$b;->d:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a;

    iget-object p1, p1, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a;->d:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->e0(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a$b;->d:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a;

    iget-object p1, p1, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a;->d:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->c0(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a$b;->d:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a;

    iget-object p1, p1, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a;->d:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->i0(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;)V

    goto/16 :goto_2

    .line 3
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a$b;->d:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a;->d:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->L0(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a$b;->d:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a;->d:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->L0(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    .line 5
    :goto_0
    iget-object v2, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a$b;->d:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a;

    iget-object v2, v2, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a;->d:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;

    invoke-static {v2}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->L0(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 6
    iget-object v2, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a$b;->d:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a;

    iget-object v2, v2, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a;->d:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;

    invoke-static {v2}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->L0(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/allinone/callerid/bean/EZBlackList;

    .line 7
    invoke-virtual {v2}, Lcom/allinone/callerid/bean/EZBlackList;->isselected()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 8
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a$b;->d:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a;->d:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->o0(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a$b;->d:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a;->d:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->o0(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 10
    :goto_1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a$b;->d:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a;->d:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->o0(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 11
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a$b;->d:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a;->d:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->o0(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/allinone/callerid/bean/CustomBlock;

    .line 12
    invoke-virtual {v0}, Lcom/allinone/callerid/bean/CustomBlock;->isselected()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 13
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 14
    :cond_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 15
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a$b;->d:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a;->d:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;

    invoke-static {v0, p1}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->j0(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;Ljava/util/List;)V

    :cond_5
    :goto_2
    return-void
.end method
