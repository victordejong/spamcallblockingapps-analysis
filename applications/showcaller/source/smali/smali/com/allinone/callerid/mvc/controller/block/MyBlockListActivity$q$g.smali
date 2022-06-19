.class Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$g;
.super Ljava/lang/Object;
.source "MyBlockListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;->f(ILjava/lang/Object;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:I

.field final synthetic e:Ljava/lang/Object;

.field final synthetic f:I

.field final synthetic g:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;ILjava/lang/Object;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$g;->g:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;

    iput p2, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$g;->d:I

    iput-object p3, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$g;->e:Ljava/lang/Object;

    iput p4, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$g;->f:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    :try_start_0
    iget p1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$g;->d:I

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$g;->e:Ljava/lang/Object;

    check-cast p1, Lcom/allinone/callerid/bean/CustomBlock;

    .line 3
    invoke-virtual {p1}, Lcom/allinone/callerid/bean/CustomBlock;->getNumber()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$g$a;

    invoke-direct {p2, p0}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$g$a;-><init>(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$g;)V

    invoke-static {p1, p2}, Lcom/allinone/callerid/i/a/f/b;->f(Ljava/lang/String;Lcom/allinone/callerid/i/a/a;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$g;->e:Ljava/lang/Object;

    check-cast p1, Lcom/allinone/callerid/bean/EZBlackList;

    .line 5
    invoke-virtual {p1}, Lcom/allinone/callerid/bean/EZBlackList;->getNumber()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$g$b;

    invoke-direct {p2, p0}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$g$b;-><init>(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$g;)V

    invoke-static {p1, p2}, Lcom/allinone/callerid/i/a/f/b;->e(Ljava/lang/String;Lcom/allinone/callerid/i/a/a;)V

    .line 6
    :goto_0
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$g;->g:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;->d(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;)Ljava/util/List;

    move-result-object p1

    iget p2, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$g;->f:I

    invoke-interface {p1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 7
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$g;->g:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;

    iget-object p1, p1, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;->i:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;

    invoke-virtual {p1}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->V0()V

    .line 8
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$g;->g:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;

    iget-object p1, p1, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;->i:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->B0(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;)Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method
