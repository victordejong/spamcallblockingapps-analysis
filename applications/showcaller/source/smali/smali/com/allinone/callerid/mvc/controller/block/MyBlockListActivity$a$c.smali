.class Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a$c;
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
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a$c;->d:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a$c;->d:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a;

    iget-object p1, p1, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a;->d:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->e0(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 2
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a$c;->d:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a;

    iget-object p1, p1, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a;->d:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->L0(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a$c;->d:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a;

    iget-object p1, p1, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a;->d:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->L0(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x0

    .line 3
    :goto_0
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a$c;->d:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a;

    iget-object v1, v1, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a;->d:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;

    invoke-static {v1}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->L0(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a$c;->d:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a;

    iget-object v1, v1, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a;->d:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;

    invoke-static {v1}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->L0(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/allinone/callerid/bean/EZBlackList;

    invoke-virtual {v1, v0}, Lcom/allinone/callerid/bean/EZBlackList;->setIsselected(Z)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a$c;->d:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a;

    iget-object p1, p1, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a;->d:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->o0(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a$c;->d:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a;

    iget-object p1, p1, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a;->d:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->o0(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1

    const/4 p1, 0x0

    .line 6
    :goto_1
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a$c;->d:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a;

    iget-object v1, v1, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a;->d:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;

    invoke-static {v1}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->o0(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_1

    .line 7
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a$c;->d:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a;

    iget-object v1, v1, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a;->d:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;

    invoke-static {v1}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->o0(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/allinone/callerid/bean/CustomBlock;

    invoke-virtual {v1, v0}, Lcom/allinone/callerid/bean/CustomBlock;->setIsselected(Z)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a$c;->d:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a;

    iget-object p1, p1, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a;->d:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;

    invoke-static {p1, v0}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->f0(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;Z)Z

    goto/16 :goto_4

    .line 9
    :cond_2
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a$c;->d:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a;

    iget-object p1, p1, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a;->d:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->L0(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;)Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a$c;->d:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a;

    iget-object p1, p1, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a;->d:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->L0(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_3

    const/4 p1, 0x0

    .line 10
    :goto_2
    iget-object v2, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a$c;->d:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a;

    iget-object v2, v2, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a;->d:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;

    invoke-static {v2}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->L0(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge p1, v2, :cond_3

    .line 11
    iget-object v2, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a$c;->d:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a;

    iget-object v2, v2, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a;->d:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;

    invoke-static {v2}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->L0(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/allinone/callerid/bean/EZBlackList;

    invoke-virtual {v2, v1}, Lcom/allinone/callerid/bean/EZBlackList;->setIsselected(Z)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    .line 12
    :cond_3
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a$c;->d:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a;

    iget-object p1, p1, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a;->d:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->o0(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a$c;->d:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a;

    iget-object p1, p1, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a;->d:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->o0(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_4

    .line 13
    :goto_3
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a$c;->d:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a;

    iget-object p1, p1, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a;->d:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->o0(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_4

    .line 14
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a$c;->d:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a;

    iget-object p1, p1, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a;->d:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->o0(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/allinone/callerid/bean/CustomBlock;

    invoke-virtual {p1, v1}, Lcom/allinone/callerid/bean/CustomBlock;->setIsselected(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 15
    :cond_4
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a$c;->d:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a;

    iget-object p1, p1, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a;->d:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;

    invoke-static {p1, v1}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->f0(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;Z)Z

    .line 16
    :goto_4
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a$c;->d:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a;

    iget-object p1, p1, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a;->d:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->B0(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;)Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 17
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a$c;->d:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a;

    iget-object p1, p1, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a;->d:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->B0(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;)Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_5
    return-void
.end method
