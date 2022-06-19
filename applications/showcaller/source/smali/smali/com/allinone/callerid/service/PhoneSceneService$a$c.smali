.class Lcom/allinone/callerid/service/PhoneSceneService$a$c;
.super Ljava/lang/Object;
.source "PhoneSceneService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/service/PhoneSceneService$a;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/service/PhoneSceneService$a;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/service/PhoneSceneService$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/service/PhoneSceneService$a$c;->d:Lcom/allinone/callerid/service/PhoneSceneService$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Lcom/allinone/callerid/util/a1;->j1(Z)V

    .line 2
    iget-object v1, p0, Lcom/allinone/callerid/service/PhoneSceneService$a$c;->d:Lcom/allinone/callerid/service/PhoneSceneService$a;

    iget-object v2, v1, Lcom/allinone/callerid/service/PhoneSceneService$a;->a:Landroid/content/Context;

    iget-object v1, v1, Lcom/allinone/callerid/service/PhoneSceneService$a;->b:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/allinone/callerid/util/h;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    .line 3
    iget-object v2, p0, Lcom/allinone/callerid/service/PhoneSceneService$a$c;->d:Lcom/allinone/callerid/service/PhoneSceneService$a;

    iget-object v2, v2, Lcom/allinone/callerid/service/PhoneSceneService$a;->c:Lcom/allinone/callerid/service/PhoneSceneService;

    invoke-static {v2}, Lcom/allinone/callerid/service/PhoneSceneService;->e(Lcom/allinone/callerid/service/PhoneSceneService;)Lcom/allinone/callerid/util/m;

    move-result-object v2

    if-nez v2, :cond_0

    .line 4
    iget-object v2, p0, Lcom/allinone/callerid/service/PhoneSceneService$a$c;->d:Lcom/allinone/callerid/service/PhoneSceneService$a;

    iget-object v3, v2, Lcom/allinone/callerid/service/PhoneSceneService$a;->c:Lcom/allinone/callerid/service/PhoneSceneService;

    new-instance v4, Lcom/allinone/callerid/util/m;

    iget-object v2, v2, Lcom/allinone/callerid/service/PhoneSceneService$a;->a:Landroid/content/Context;

    invoke-direct {v4, v2}, Lcom/allinone/callerid/util/m;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v4}, Lcom/allinone/callerid/service/PhoneSceneService;->f(Lcom/allinone/callerid/service/PhoneSceneService;Lcom/allinone/callerid/util/m;)Lcom/allinone/callerid/util/m;

    .line 5
    :cond_0
    iget-object v2, p0, Lcom/allinone/callerid/service/PhoneSceneService$a$c;->d:Lcom/allinone/callerid/service/PhoneSceneService$a;

    iget-object v2, v2, Lcom/allinone/callerid/service/PhoneSceneService$a;->c:Lcom/allinone/callerid/service/PhoneSceneService;

    invoke-static {v2}, Lcom/allinone/callerid/service/PhoneSceneService;->e(Lcom/allinone/callerid/service/PhoneSceneService;)Lcom/allinone/callerid/util/m;

    move-result-object v2

    iget-object v3, p0, Lcom/allinone/callerid/service/PhoneSceneService$a$c;->d:Lcom/allinone/callerid/service/PhoneSceneService$a;

    iget-object v3, v3, Lcom/allinone/callerid/service/PhoneSceneService$a;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/allinone/callerid/util/m;->j(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 6
    iget-object v3, p0, Lcom/allinone/callerid/service/PhoneSceneService$a$c;->d:Lcom/allinone/callerid/service/PhoneSceneService$a;

    iget-object v4, v3, Lcom/allinone/callerid/service/PhoneSceneService$a;->a:Landroid/content/Context;

    iget-object v3, v3, Lcom/allinone/callerid/service/PhoneSceneService$a;->b:Ljava/lang/String;

    invoke-static {v4, v3}, Lcom/allinone/callerid/util/h1;->w(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string v4, ""

    .line 7
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v0, 0x1

    .line 8
    iget-object v4, p0, Lcom/allinone/callerid/service/PhoneSceneService$a$c;->d:Lcom/allinone/callerid/service/PhoneSceneService$a;

    iget-object v5, v4, Lcom/allinone/callerid/service/PhoneSceneService$a;->a:Landroid/content/Context;

    iget-object v4, v4, Lcom/allinone/callerid/service/PhoneSceneService$a;->b:Ljava/lang/String;

    invoke-static {v5, v4}, Lcom/allinone/callerid/util/h1;->Z(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    .line 9
    :goto_0
    invoke-static {}, Lcom/allinone/callerid/util/a1;->t()Z

    move-result v5

    .line 10
    invoke-static {}, Lcom/allinone/callerid/util/a1;->u()Z

    move-result v6

    .line 11
    iget-object v7, p0, Lcom/allinone/callerid/service/PhoneSceneService$a$c;->d:Lcom/allinone/callerid/service/PhoneSceneService$a;

    iget-object v7, v7, Lcom/allinone/callerid/service/PhoneSceneService$a;->c:Lcom/allinone/callerid/service/PhoneSceneService;

    invoke-static {v7}, Lcom/allinone/callerid/service/PhoneSceneService;->g(Lcom/allinone/callerid/service/PhoneSceneService;)Lcom/allinone/callerid/service/PhoneSceneService$p;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v7

    const/16 v8, 0x78

    .line 12
    iput v8, v7, Landroid/os/Message;->what:I

    .line 13
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 14
    iget-object v9, p0, Lcom/allinone/callerid/service/PhoneSceneService$a$c;->d:Lcom/allinone/callerid/service/PhoneSceneService$a;

    iget-object v9, v9, Lcom/allinone/callerid/service/PhoneSceneService$a;->b:Ljava/lang/String;

    const-string v10, "num"

    invoke-virtual {v8, v10, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "isInBlackList"

    .line 15
    invoke-virtual {v8, v9, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "is_in_custom_list"

    .line 16
    invoke-virtual {v8, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "contact_exist"

    .line 17
    invoke-virtual {v8, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "contact_name"

    .line 18
    invoke-virtual {v8, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "is_enable_block"

    .line 19
    invoke-virtual {v8, v0, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "is_enable_unknow"

    .line 20
    invoke-virtual {v8, v0, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "contacts_id"

    .line 21
    invoke-virtual {v8, v0, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 22
    invoke-virtual {v7, v8}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 23
    iget-object v0, p0, Lcom/allinone/callerid/service/PhoneSceneService$a$c;->d:Lcom/allinone/callerid/service/PhoneSceneService$a;

    iget-object v0, v0, Lcom/allinone/callerid/service/PhoneSceneService$a;->c:Lcom/allinone/callerid/service/PhoneSceneService;

    invoke-static {v0}, Lcom/allinone/callerid/service/PhoneSceneService;->g(Lcom/allinone/callerid/service/PhoneSceneService;)Lcom/allinone/callerid/service/PhoneSceneService$p;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 24
    sget-boolean v0, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v0, :cond_2

    const-string v0, "callstatus"

    const-string v1, "handler.sendMessage"

    .line 25
    invoke-static {v0, v1}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method
