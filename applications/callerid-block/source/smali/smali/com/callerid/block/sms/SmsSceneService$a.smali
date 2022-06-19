.class Lcom/callerid/block/sms/SmsSceneService$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/sms/SmsSceneService;->h(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/callerid/block/sms/SmsSceneService;


# direct methods
.method constructor <init>(Lcom/callerid/block/sms/SmsSceneService;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/sms/SmsSceneService$a;->c:Lcom/callerid/block/sms/SmsSceneService;

    iput-object p2, p0, Lcom/callerid/block/sms/SmsSceneService$a;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/callerid/block/sms/SmsSceneService$a;->c:Lcom/callerid/block/sms/SmsSceneService;

    new-instance v1, Lcom/callerid/block/sms/b;

    iget-object v2, p0, Lcom/callerid/block/sms/SmsSceneService$a;->c:Lcom/callerid/block/sms/SmsSceneService;

    invoke-virtual {v2}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/callerid/block/sms/b;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/callerid/block/sms/SmsSceneService$a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/callerid/block/sms/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/callerid/block/sms/SmsSceneService;->f(Lcom/callerid/block/sms/SmsSceneService;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/callerid/block/sms/SmsSceneService$a;->c:Lcom/callerid/block/sms/SmsSceneService;

    invoke-virtual {v0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/callerid/block/sms/SmsSceneService$a;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/callerid/block/util/t0;->j(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/callerid/block/sms/SmsSceneService;->c(Lcom/callerid/block/sms/SmsSceneService;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/callerid/block/sms/SmsSceneService$a;->c:Lcom/callerid/block/sms/SmsSceneService;

    invoke-static {v0}, Lcom/callerid/block/sms/SmsSceneService;->b(Lcom/callerid/block/sms/SmsSceneService;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/callerid/block/sms/SmsSceneService$a;->c:Lcom/callerid/block/sms/SmsSceneService;

    invoke-static {v0}, Lcom/callerid/block/sms/SmsSceneService;->g(Lcom/callerid/block/sms/SmsSceneService;)Lcom/callerid/block/sms/SmsSceneService$b;

    move-result-object v0

    const/16 v1, 0x64

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/callerid/block/sms/SmsSceneService$a;->c:Lcom/callerid/block/sms/SmsSceneService;

    invoke-static {v0}, Lcom/callerid/block/sms/SmsSceneService;->g(Lcom/callerid/block/sms/SmsSceneService;)Lcom/callerid/block/sms/SmsSceneService$b;

    move-result-object v0

    const/16 v1, 0x65

    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
