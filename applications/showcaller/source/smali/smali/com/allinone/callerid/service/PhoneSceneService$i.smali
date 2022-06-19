.class Lcom/allinone/callerid/service/PhoneSceneService$i;
.super Ljava/lang/Object;
.source "PhoneSceneService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/service/PhoneSceneService;->o(Landroid/content/Context;Ljava/lang/String;)V
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
    iput-object p1, p0, Lcom/allinone/callerid/service/PhoneSceneService$i;->f:Lcom/allinone/callerid/service/PhoneSceneService;

    iput-object p2, p0, Lcom/allinone/callerid/service/PhoneSceneService$i;->d:Landroid/content/Context;

    iput-object p3, p0, Lcom/allinone/callerid/service/PhoneSceneService$i;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/service/PhoneSceneService$i;->d:Landroid/content/Context;

    iget-object v1, p0, Lcom/allinone/callerid/service/PhoneSceneService$i;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/allinone/callerid/util/h1;->Y(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 2
    invoke-static {}, Lcom/allinone/callerid/util/recorder/b;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/allinone/callerid/i/a/v/a;->a()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/allinone/callerid/service/PhoneSceneService$i;->e:Ljava/lang/String;

    xor-int/lit8 v2, v0, 0x1

    invoke-static {v1, v2}, Lcom/allinone/callerid/util/recorder/f;->r(Ljava/lang/String;I)Z

    move-result v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    :goto_1
    if-nez v0, :cond_2

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/allinone/callerid/util/a1;->D0(J)V

    .line 5
    iget-object v0, p0, Lcom/allinone/callerid/service/PhoneSceneService$i;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/allinone/callerid/util/f0;->M(Landroid/content/Context;)V

    .line 6
    :cond_2
    invoke-static {}, Lcom/allinone/callerid/util/a1;->R()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    const-string v2, "is_spam_answered_all"

    invoke-virtual {v0, v2}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/allinone/callerid/service/PhoneSceneService$i;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/allinone/callerid/util/f0;->r(Landroid/content/Context;)V

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/allinone/callerid/service/PhoneSceneService$i;->f:Lcom/allinone/callerid/service/PhoneSceneService;

    invoke-static {v0}, Lcom/allinone/callerid/service/PhoneSceneService;->g(Lcom/allinone/callerid/service/PhoneSceneService;)Lcom/allinone/callerid/service/PhoneSceneService$p;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v2, 0x7a

    .line 10
    iput v2, v0, Landroid/os/Message;->what:I

    .line 11
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "can_record"

    .line 12
    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 13
    iget-object v1, p0, Lcom/allinone/callerid/service/PhoneSceneService$i;->e:Ljava/lang/String;

    const-string v3, "incoming_number"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-virtual {v0, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 15
    iget-object v1, p0, Lcom/allinone/callerid/service/PhoneSceneService$i;->f:Lcom/allinone/callerid/service/PhoneSceneService;

    invoke-static {v1}, Lcom/allinone/callerid/service/PhoneSceneService;->g(Lcom/allinone/callerid/service/PhoneSceneService;)Lcom/allinone/callerid/service/PhoneSceneService$p;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
