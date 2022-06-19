.class Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$b;
.super Ljava/lang/Object;
.source "MyBlockListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->Z0(Ljava/util/List;)V
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
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$b;->e:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;

    iput-object p2, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$b;->d:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$b;->e:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;

    iget-object p2, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$b;->d:Ljava/util/List;

    invoke-static {p1, p2}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->x0(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;Ljava/util/List;)V

    .line 2
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$b;->e:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;

    iget-object p2, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$b;->d:Ljava/util/List;

    invoke-static {p1, p2}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->y0(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;Ljava/util/List;)V

    .line 3
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$b;->e:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;

    invoke-virtual {p1}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->V0()V

    .line 4
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$b;->e:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->B0(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;)Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;

    move-result-object p1

    iget-object p2, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$b;->e:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;

    invoke-static {p2}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->Y(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;->i(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
