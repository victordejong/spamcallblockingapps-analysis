.class Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$c;
.super Ljava/lang/Object;
.source "MyBlockListActivity.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:I

.field final synthetic e:Ljava/lang/Object;

.field final synthetic f:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$c;->f:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;

    iput p2, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$c;->d:I

    iput-object p3, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$c;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$c;->f:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;

    iget-object p1, p1, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;->i:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->S0(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;)Landroid/widget/ImageView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$c;->f:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;

    iget-object p1, p1, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;->i:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->Z(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;)Landroid/widget/ImageView;

    move-result-object p1

    const v0, 0x7f08027f

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$c;->f:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;

    iget-object p1, p1, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;->i:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->d0(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;Z)Z

    .line 4
    iget p1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$c;->d:I

    if-nez p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$c;->e:Ljava/lang/Object;

    check-cast p1, Lcom/allinone/callerid/bean/CustomBlock;

    .line 6
    invoke-virtual {p1, v0}, Lcom/allinone/callerid/bean/CustomBlock;->setIsselected(Z)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$c;->e:Ljava/lang/Object;

    check-cast p1, Lcom/allinone/callerid/bean/EZBlackList;

    .line 8
    invoke-virtual {p1, v0}, Lcom/allinone/callerid/bean/EZBlackList;->setIsselected(Z)V

    .line 9
    :goto_0
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$c;->f:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;

    iget-object p1, p1, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;->i:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->B0(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;)Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 10
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$c;->f:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;

    iget-object p1, p1, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;->i:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->B0(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;)Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_1
    return v0
.end method
