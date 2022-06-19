.class Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$e;
.super Ljava/lang/Object;
.source "MyBlockListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;->e(Landroid/view/View;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/customview/DeletableEditText;

.field final synthetic e:Lcom/allinone/callerid/bean/EZBlackList;

.field final synthetic f:Lcom/allinone/callerid/customview/DeletableEditText;

.field final synthetic g:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;Lcom/allinone/callerid/customview/DeletableEditText;Lcom/allinone/callerid/bean/EZBlackList;Lcom/allinone/callerid/customview/DeletableEditText;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$e;->g:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;

    iput-object p2, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$e;->d:Lcom/allinone/callerid/customview/DeletableEditText;

    iput-object p3, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$e;->e:Lcom/allinone/callerid/bean/EZBlackList;

    iput-object p4, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$e;->f:Lcom/allinone/callerid/customview/DeletableEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const-string p1, "-"

    const-string p2, ""

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$e;->d:Lcom/allinone/callerid/customview/DeletableEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$e;->d:Lcom/allinone/callerid/customview/DeletableEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$e;->e:Lcom/allinone/callerid/bean/EZBlackList;

    invoke-virtual {v0}, Lcom/allinone/callerid/bean/EZBlackList;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$e;->e:Lcom/allinone/callerid/bean/EZBlackList;

    invoke-virtual {v0}, Lcom/allinone/callerid/bean/EZBlackList;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$e;->e:Lcom/allinone/callerid/bean/EZBlackList;

    const-string v1, "true"

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/bean/EZBlackList;->setIs_myblock(Ljava/lang/String;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$e;->e:Lcom/allinone/callerid/bean/EZBlackList;

    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$e;->f:Lcom/allinone/callerid/customview/DeletableEditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/bean/EZBlackList;->setName(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$e;->e:Lcom/allinone/callerid/bean/EZBlackList;

    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$e;->d:Lcom/allinone/callerid/customview/DeletableEditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/bean/EZBlackList;->setNumber(Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$e;->e:Lcom/allinone/callerid/bean/EZBlackList;

    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$e;->d:Lcom/allinone/callerid/customview/DeletableEditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/allinone/callerid/bean/EZBlackList;->setFormat_number(Ljava/lang/String;)V

    .line 7
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$e;->e:Lcom/allinone/callerid/bean/EZBlackList;

    new-instance p2, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$e$a;

    invoke-direct {p2, p0}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$e$a;-><init>(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$e;)V

    invoke-static {p1, p2}, Lcom/allinone/callerid/i/a/f/b;->g(Lcom/allinone/callerid/bean/EZBlackList;Lcom/allinone/callerid/i/a/a;)V

    .line 8
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$e;->g:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;

    iget-object p1, p1, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;->i:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->B0(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;)Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 9
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$e;->g:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;

    iget-object p1, p1, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;->i:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;

    invoke-virtual {p1}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->V0()V

    goto :goto_0

    .line 10
    :cond_1
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$e;->g:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;

    iget-object p1, p1, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;->i:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$e;->g:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;

    iget-object p2, p2, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;->i:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;

    invoke-virtual {p2}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f1001b0

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
