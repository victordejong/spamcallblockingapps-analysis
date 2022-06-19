.class Lcom/callerid/block/service/PhoneSceneService$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/service/PhoneSceneService;->j(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:Lcom/callerid/block/service/PhoneSceneService;


# direct methods
.method constructor <init>(Lcom/callerid/block/service/PhoneSceneService;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/service/PhoneSceneService$a;->d:Lcom/callerid/block/service/PhoneSceneService;

    iput-object p2, p0, Lcom/callerid/block/service/PhoneSceneService$a;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/callerid/block/service/PhoneSceneService$a;->c:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/callerid/block/service/PhoneSceneService$a;->d:Lcom/callerid/block/service/PhoneSceneService;

    invoke-static {v0}, Lcom/callerid/block/service/PhoneSceneService;->f(Lcom/callerid/block/service/PhoneSceneService;)Lcom/callerid/block/util/i;

    move-result-object v0

    iget-object v1, p0, Lcom/callerid/block/service/PhoneSceneService$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/callerid/block/util/i;->f(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p0, Lcom/callerid/block/service/PhoneSceneService$a;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/callerid/block/service/PhoneSceneService$a;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/callerid/block/util/t0;->j(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/callerid/block/service/PhoneSceneService$a;->d:Lcom/callerid/block/service/PhoneSceneService;

    invoke-static {v2}, Lcom/callerid/block/service/PhoneSceneService;->g(Lcom/callerid/block/service/PhoneSceneService;)Lcom/callerid/block/service/PhoneSceneService$j;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    const/16 v3, 0x78

    iput v3, v2, Landroid/os/Message;->what:I

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    iget-object v4, p0, Lcom/callerid/block/service/PhoneSceneService$a;->b:Ljava/lang/String;

    const-string v5, "num"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "contact_name"

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "isInBlackList"

    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v2, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/callerid/block/service/PhoneSceneService$a;->d:Lcom/callerid/block/service/PhoneSceneService;

    invoke-static {v0}, Lcom/callerid/block/service/PhoneSceneService;->g(Lcom/callerid/block/service/PhoneSceneService;)Lcom/callerid/block/service/PhoneSceneService$j;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
