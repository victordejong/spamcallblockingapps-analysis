.class Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity$c$a;
.super Ljava/lang/Object;
.source "CustomActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity$c;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity$c;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity$c$a;->d:Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    new-instance v0, Lcom/allinone/callerid/bean/recorder/CustomRecord;

    invoke-direct {v0}, Lcom/allinone/callerid/bean/recorder/CustomRecord;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity$c$a;->d:Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity$c;

    iget-object v1, v1, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity$c;->d:Lcom/allinone/callerid/customview/BaseEditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/bean/recorder/CustomRecord;->setPhone(Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity$c$a;->d:Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity$c;

    iget-object v1, v1, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity$c;->e:Lcom/allinone/callerid/customview/BaseEditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/bean/recorder/CustomRecord;->setName(Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity$c$a;->d:Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity$c;

    iget-object v1, v1, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity$c;->f:Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity;

    iget v1, v1, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity;->L:I

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/bean/recorder/CustomRecord;->setType(I)V

    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, v1}, Lcom/allinone/callerid/bean/recorder/CustomRecord;->setSelect(Z)V

    .line 6
    invoke-static {}, Lcom/allinone/callerid/f/k/a;->c()Lcom/allinone/callerid/f/k/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/allinone/callerid/f/k/a;->a(Lcom/allinone/callerid/bean/recorder/CustomRecord;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity$c$a;->d:Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity$c;

    iget-object v1, v1, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity$c;->f:Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity;

    new-instance v2, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity$c$a$a;

    invoke-direct {v2, p0, v0}, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity$c$a$a;-><init>(Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity$c$a;Lcom/allinone/callerid/bean/recorder/CustomRecord;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
