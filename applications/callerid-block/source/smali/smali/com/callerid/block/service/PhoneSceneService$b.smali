.class Lcom/callerid/block/service/PhoneSceneService$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/service/PhoneSceneService;->l(Landroid/content/Context;Ljava/lang/String;)V
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

    iput-object p1, p0, Lcom/callerid/block/service/PhoneSceneService$b;->d:Lcom/callerid/block/service/PhoneSceneService;

    iput-object p2, p0, Lcom/callerid/block/service/PhoneSceneService$b;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/callerid/block/service/PhoneSceneService$b;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/callerid/block/service/PhoneSceneService$b;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/callerid/block/service/PhoneSceneService$b;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/callerid/block/util/t0;->H(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    iget-object v1, p0, Lcom/callerid/block/service/PhoneSceneService$b;->d:Lcom/callerid/block/service/PhoneSceneService;

    invoke-static {v1}, Lcom/callerid/block/service/PhoneSceneService;->g(Lcom/callerid/block/service/PhoneSceneService;)Lcom/callerid/block/service/PhoneSceneService$j;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    const/16 v2, 0x7a

    iput v2, v1, Landroid/os/Message;->what:I

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "get_contact_exist2"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/callerid/block/service/PhoneSceneService$b;->d:Lcom/callerid/block/service/PhoneSceneService;

    invoke-static {v0}, Lcom/callerid/block/service/PhoneSceneService;->g(Lcom/callerid/block/service/PhoneSceneService;)Lcom/callerid/block/service/PhoneSceneService$j;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
