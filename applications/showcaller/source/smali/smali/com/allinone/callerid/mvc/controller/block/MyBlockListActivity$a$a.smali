.class Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a$a;
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
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a$a;->d:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a$a;->d:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a;

    iget-object p1, p1, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a;->d:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->S0(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a$a;->d:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a;

    iget-object p1, p1, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a;->d:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->b0(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;)V

    .line 3
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a$a;->d:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a;

    iget-object p1, p1, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a;->d:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->S0(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;)Landroid/widget/ImageView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a$a;->d:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a;

    iget-object p1, p1, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a;->d:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->d0(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;Z)Z

    .line 5
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a$a;->d:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a;

    iget-object p1, p1, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a;->d:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;

    invoke-static {p1, v0}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->f0(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;Z)Z

    .line 6
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a$a;->d:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a;

    iget-object p1, p1, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a;->d:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->L0(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a$a;->d:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a;

    iget-object p1, p1, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a;->d:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->L0(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x0

    .line 7
    :goto_0
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a$a;->d:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a;

    iget-object v1, v1, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a;->d:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;

    invoke-static {v1}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->L0(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 8
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a$a;->d:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a;

    iget-object v1, v1, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a;->d:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;

    invoke-static {v1}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->L0(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/allinone/callerid/bean/EZBlackList;

    invoke-virtual {v1, v0}, Lcom/allinone/callerid/bean/EZBlackList;->setIsselected(Z)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 9
    :cond_0
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a$a;->d:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a;

    iget-object p1, p1, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a;->d:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->B0(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;)Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 10
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a$a;->d:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a;

    iget-object p1, p1, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a;->d:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->B0(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;)Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_1

    .line 11
    :cond_1
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a$a;->d:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a;

    iget-object p1, p1, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a;->d:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 12
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a$a;->d:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a;

    iget-object p1, p1, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a;->d:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;

    const/high16 v0, 0x7f010000

    const v1, 0x7f010001

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_2
    :goto_1
    return-void
.end method
