.class Lcom/callerid/block/service/PhoneSceneService$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/service/PhoneSceneService;->m(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/callerid/block/service/PhoneSceneService;


# direct methods
.method constructor <init>(Lcom/callerid/block/service/PhoneSceneService;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/service/PhoneSceneService$c;->d:Lcom/callerid/block/service/PhoneSceneService;

    iput-object p2, p0, Lcom/callerid/block/service/PhoneSceneService$c;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/callerid/block/service/PhoneSceneService$c;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/callerid/block/service/PhoneSceneService$c;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/callerid/block/service/PhoneSceneService$c;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/callerid/block/util/t0;->H(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    iget-object v1, p0, Lcom/callerid/block/service/PhoneSceneService$c;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/callerid/block/util/n0;->y(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/callerid/block/service/PhoneSceneService$c;->d:Lcom/callerid/block/service/PhoneSceneService;

    invoke-static {v1}, Lcom/callerid/block/service/PhoneSceneService;->f(Lcom/callerid/block/service/PhoneSceneService;)Lcom/callerid/block/util/i;

    move-result-object v1

    iget-object v3, p0, Lcom/callerid/block/service/PhoneSceneService$c;->c:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/callerid/block/util/i;->f(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/callerid/block/service/PhoneSceneService$c;->b:Landroid/content/Context;

    invoke-static {v3}, Lcom/callerid/block/util/n0;->z(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/callerid/block/service/PhoneSceneService$c;->b:Landroid/content/Context;

    invoke-static {v3}, Lcom/callerid/block/util/n0;->d(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/callerid/block/service/PhoneSceneService$c;->b:Landroid/content/Context;

    iget-object v4, p0, Lcom/callerid/block/service/PhoneSceneService$c;->c:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/callerid/block/util/c;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    move v2, v1

    :goto_1
    iget-object v1, p0, Lcom/callerid/block/service/PhoneSceneService$c;->d:Lcom/callerid/block/service/PhoneSceneService;

    invoke-static {v1}, Lcom/callerid/block/service/PhoneSceneService;->g(Lcom/callerid/block/service/PhoneSceneService;)Lcom/callerid/block/service/PhoneSceneService$j;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    const/16 v3, 0x79

    iput v3, v1, Landroid/os/Message;->what:I

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    iget-object v4, p0, Lcom/callerid/block/service/PhoneSceneService$c;->c:Ljava/lang/String;

    const-string v5, "num"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "get_contact_exist"

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "is_blocked"

    invoke-virtual {v3, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v1, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/callerid/block/service/PhoneSceneService$c;->d:Lcom/callerid/block/service/PhoneSceneService;

    invoke-static {v0}, Lcom/callerid/block/service/PhoneSceneService;->g(Lcom/callerid/block/service/PhoneSceneService;)Lcom/callerid/block/service/PhoneSceneService$j;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
