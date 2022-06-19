.class Lcom/allinone/callerid/service/PhoneSceneService$k;
.super Ljava/lang/Object;
.source "PhoneSceneService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/service/PhoneSceneService;->p(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Landroid/content/Context;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Lcom/allinone/callerid/service/PhoneSceneService;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/service/PhoneSceneService;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/service/PhoneSceneService$k;->f:Lcom/allinone/callerid/service/PhoneSceneService;

    iput-object p2, p0, Lcom/allinone/callerid/service/PhoneSceneService$k;->d:Landroid/content/Context;

    iput-object p3, p0, Lcom/allinone/callerid/service/PhoneSceneService$k;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/service/PhoneSceneService$k;->d:Landroid/content/Context;

    iget-object v1, p0, Lcom/allinone/callerid/service/PhoneSceneService$k;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/allinone/callerid/util/h1;->Y(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/allinone/callerid/service/PhoneSceneService$k;->f:Lcom/allinone/callerid/service/PhoneSceneService;

    invoke-static {v1}, Lcom/allinone/callerid/service/PhoneSceneService;->g(Lcom/allinone/callerid/service/PhoneSceneService;)Lcom/allinone/callerid/service/PhoneSceneService$p;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    const/16 v2, 0x79

    .line 3
    iput v2, v1, Landroid/os/Message;->what:I

    .line 4
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 5
    iget-object v3, p0, Lcom/allinone/callerid/service/PhoneSceneService$k;->e:Ljava/lang/String;

    const-string v4, "num"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "get_contact_exist"

    .line 6
    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 7
    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 8
    iget-object v0, p0, Lcom/allinone/callerid/service/PhoneSceneService$k;->f:Lcom/allinone/callerid/service/PhoneSceneService;

    invoke-static {v0}, Lcom/allinone/callerid/service/PhoneSceneService;->g(Lcom/allinone/callerid/service/PhoneSceneService;)Lcom/allinone/callerid/service/PhoneSceneService$p;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 9
    invoke-static {}, Lcom/allinone/callerid/util/a1;->A2()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "tony"

    if-eqz v0, :cond_1

    .line 10
    sget-boolean v0, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "NEW_END_CALL_SUCCESS"

    .line 11
    invoke-static {v1, v0}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    :cond_0
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    const-string v1, "new_end_call_success"

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/util/q;->e(Ljava/lang/String;)V

    .line 13
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/allinone/callerid/util/a1;->U2(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 14
    :cond_1
    invoke-static {}, Lcom/allinone/callerid/util/a1;->v2()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 15
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    const-string v2, "new_end_call_failed"

    invoke-virtual {v0, v2}, Lcom/allinone/callerid/util/q;->e(Ljava/lang/String;)V

    .line 16
    sget-boolean v0, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v0, :cond_2

    const-string v0, "8.0\u6302\u65ad\u65b9\u6cd5\u5931\u8d25"

    .line 17
    invoke-static {v1, v0}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    :cond_2
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/allinone/callerid/util/a1;->O2(Ljava/lang/Boolean;)V

    :cond_3
    :goto_0
    return-void
.end method
