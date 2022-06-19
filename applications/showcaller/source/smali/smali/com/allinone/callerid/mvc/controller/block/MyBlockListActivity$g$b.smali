.class Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$g$b;
.super Ljava/lang/Object;
.source "MyBlockListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$g;->a(Lcom/allinone/callerid/bean/EZSimpleContact;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/customview/DeletableEditText;

.field final synthetic e:Lcom/allinone/callerid/customview/DeletableEditText;

.field final synthetic f:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$g;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$g;Lcom/allinone/callerid/customview/DeletableEditText;Lcom/allinone/callerid/customview/DeletableEditText;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$g$b;->f:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$g;

    iput-object p2, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$g$b;->d:Lcom/allinone/callerid/customview/DeletableEditText;

    iput-object p3, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$g$b;->e:Lcom/allinone/callerid/customview/DeletableEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$g$b;->d:Lcom/allinone/callerid/customview/DeletableEditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2
    iget-object p2, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$g$b;->e:Lcom/allinone/callerid/customview/DeletableEditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    .line 3
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$g$b;->f:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$g;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$g;->a:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;

    const/4 v1, 0x0

    invoke-static {v0, p2, p1, v1}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->w0(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
