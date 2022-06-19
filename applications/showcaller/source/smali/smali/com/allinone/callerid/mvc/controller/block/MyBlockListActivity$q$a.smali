.class Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$a;
.super Ljava/lang/Object;
.source "MyBlockListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field final synthetic f:I

.field final synthetic g:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;ILjava/lang/Object;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$a;->g:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;

    iput p2, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$a;->d:I

    iput-object p3, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$a;->e:Ljava/lang/Object;

    iput p4, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$a;->f:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$a;->g:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;

    iget-object p1, p1, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;->i:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->c0(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 2
    iget p1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$a;->d:I

    const v0, 0x7f0801da

    const/4 v1, 0x1

    const v2, 0x7f0801c7

    const/4 v3, 0x0

    if-nez p1, :cond_2

    .line 3
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$a;->e:Ljava/lang/Object;

    check-cast p1, Lcom/allinone/callerid/bean/CustomBlock;

    .line 4
    invoke-virtual {p1}, Lcom/allinone/callerid/bean/CustomBlock;->isselected()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 5
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$a;->g:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;

    iget-object v1, v1, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;->h:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$h;

    iget-object v1, v1, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$h;->f:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 6
    invoke-virtual {p1, v3}, Lcom/allinone/callerid/bean/CustomBlock;->setIsselected(Z)V

    .line 7
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$a;->g:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;

    iget-object p1, p1, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;->i:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->e0(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 8
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$a;->g:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;

    iget-object p1, p1, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;->i:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;

    invoke-static {p1, v3}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->f0(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;Z)Z

    .line 9
    :cond_0
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$a;->g:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;

    invoke-static {p1, v3}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;->a(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;I)V

    goto :goto_0

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$a;->g:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;->h:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$h;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$h;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 11
    invoke-virtual {p1, v1}, Lcom/allinone/callerid/bean/CustomBlock;->setIsselected(Z)V

    .line 12
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$a;->g:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;

    invoke-static {p1, v3}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;->b(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;I)V

    goto :goto_0

    .line 13
    :cond_2
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$a;->e:Ljava/lang/Object;

    check-cast p1, Lcom/allinone/callerid/bean/EZBlackList;

    .line 14
    invoke-virtual {p1}, Lcom/allinone/callerid/bean/EZBlackList;->isselected()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 15
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$a;->g:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;

    iget-object v1, v1, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;->h:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$h;

    iget-object v1, v1, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$h;->f:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 16
    invoke-virtual {p1, v3}, Lcom/allinone/callerid/bean/EZBlackList;->setIsselected(Z)V

    .line 17
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$a;->g:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;

    invoke-static {p1, v3}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;->a(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;I)V

    goto :goto_0

    .line 18
    :cond_3
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$a;->g:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;->h:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$h;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$h;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 19
    invoke-virtual {p1, v1}, Lcom/allinone/callerid/bean/EZBlackList;->setIsselected(Z)V

    .line 20
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$a;->g:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;

    invoke-static {p1, v3}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;->b(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;I)V

    .line 21
    :goto_0
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$a;->g:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_1

    .line 22
    :cond_4
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$a;->g:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;

    iget v0, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$a;->f:I

    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$a;->e:Ljava/lang/Object;

    iget v2, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$a;->d:I

    invoke-static {p1, v0, v1, v2}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;->c(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;ILjava/lang/Object;I)V

    :goto_1
    return-void
.end method
