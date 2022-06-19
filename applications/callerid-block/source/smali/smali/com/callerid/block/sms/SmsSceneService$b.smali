.class Lcom/callerid/block/sms/SmsSceneService$b;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callerid/block/sms/SmsSceneService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/callerid/block/sms/SmsSceneService;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic b:Lcom/callerid/block/sms/SmsSceneService;


# direct methods
.method constructor <init>(Lcom/callerid/block/sms/SmsSceneService;Lcom/callerid/block/sms/SmsSceneService;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/sms/SmsSceneService$b;->b:Lcom/callerid/block/sms/SmsSceneService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/callerid/block/sms/SmsSceneService$b;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget-object v0, p0, Lcom/callerid/block/sms/SmsSceneService$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callerid/block/sms/SmsSceneService;

    if-eqz v0, :cond_2

    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x64

    if-eq p1, v1, :cond_1

    const/16 v1, 0x65

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/callerid/block/sms/SmsSceneService$b;->b:Lcom/callerid/block/sms/SmsSceneService;

    invoke-static {v0}, Lcom/callerid/block/sms/SmsSceneService;->a(Lcom/callerid/block/sms/SmsSceneService;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/callerid/block/sms/SmsSceneService;->b(Lcom/callerid/block/sms/SmsSceneService;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {p1, v1, v2, v3}, Lcom/callerid/block/sms/SmsSceneService;->d(Lcom/callerid/block/sms/SmsSceneService;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/Service;->stopSelf()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/callerid/block/sms/SmsSceneService$b;->b:Lcom/callerid/block/sms/SmsSceneService;

    invoke-static {v0}, Lcom/callerid/block/sms/SmsSceneService;->a(Lcom/callerid/block/sms/SmsSceneService;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/callerid/block/sms/SmsSceneService;->b(Lcom/callerid/block/sms/SmsSceneService;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {p1, v1, v2, v3}, Lcom/callerid/block/sms/SmsSceneService;->d(Lcom/callerid/block/sms/SmsSceneService;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    invoke-static {v0}, Lcom/callerid/block/sms/SmsSceneService;->a(Lcom/callerid/block/sms/SmsSceneService;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0}, Lcom/callerid/block/sms/SmsSceneService;->b(Lcom/callerid/block/sms/SmsSceneService;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, p1, v1, v2}, Lcom/callerid/block/sms/SmsSceneService;->e(Lcom/callerid/block/sms/SmsSceneService;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    :cond_2
    :goto_0
    return-void
.end method
