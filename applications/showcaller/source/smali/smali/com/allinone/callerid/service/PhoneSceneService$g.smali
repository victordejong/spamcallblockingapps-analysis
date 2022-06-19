.class Lcom/allinone/callerid/service/PhoneSceneService$g;
.super Ljava/lang/Object;
.source "PhoneSceneService.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/service/PhoneSceneService;->A(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Landroid/content/Context;

.field final synthetic e:Lcom/allinone/callerid/service/PhoneSceneService;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/service/PhoneSceneService;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/service/PhoneSceneService$g;->e:Lcom/allinone/callerid/service/PhoneSceneService;

    iput-object p2, p0, Lcom/allinone/callerid/service/PhoneSceneService$g;->d:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0900e5

    if-eq p1, v0, :cond_2

    const v0, 0x7f0901e5

    if-eq p1, v0, :cond_1

    const v0, 0x7f0901f0

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p1

    const-string v0, "private_number_dialog_ingore"

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/allinone/callerid/service/PhoneSceneService$g;->e:Lcom/allinone/callerid/service/PhoneSceneService;

    invoke-static {p1}, Lcom/allinone/callerid/service/PhoneSceneService;->k(Lcom/allinone/callerid/service/PhoneSceneService;)Lcom/allinone/callerid/dialog/l;

    move-result-object p1

    invoke-virtual {p1}, Lcom/allinone/callerid/dialog/l;->dismiss()V

    goto :goto_0

    .line 4
    :cond_1
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p1

    const-string v0, "private_number_dialog_enable"

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 5
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 6
    iget-object v0, p0, Lcom/allinone/callerid/service/PhoneSceneService$g;->d:Landroid/content/Context;

    const-class v1, Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    .line 7
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 8
    iget-object v0, p0, Lcom/allinone/callerid/service/PhoneSceneService$g;->d:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 9
    iget-object p1, p0, Lcom/allinone/callerid/service/PhoneSceneService$g;->e:Lcom/allinone/callerid/service/PhoneSceneService;

    invoke-static {p1}, Lcom/allinone/callerid/service/PhoneSceneService;->k(Lcom/allinone/callerid/service/PhoneSceneService;)Lcom/allinone/callerid/dialog/l;

    move-result-object p1

    invoke-virtual {p1}, Lcom/allinone/callerid/dialog/l;->dismiss()V

    goto :goto_0

    .line 10
    :cond_2
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p1

    const-string v0, "private_number_dialog_close"

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 11
    iget-object p1, p0, Lcom/allinone/callerid/service/PhoneSceneService$g;->e:Lcom/allinone/callerid/service/PhoneSceneService;

    invoke-static {p1}, Lcom/allinone/callerid/service/PhoneSceneService;->k(Lcom/allinone/callerid/service/PhoneSceneService;)Lcom/allinone/callerid/dialog/l;

    move-result-object p1

    invoke-virtual {p1}, Lcom/allinone/callerid/dialog/l;->dismiss()V

    :goto_0
    return-void
.end method
