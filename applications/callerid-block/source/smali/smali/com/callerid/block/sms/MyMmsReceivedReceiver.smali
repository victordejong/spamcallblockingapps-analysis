.class public Lcom/callerid/block/sms/MyMmsReceivedReceiver;
.super Lcom/klinker/android/send_message/MmsReceivedReceiver;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/klinker/android/send_message/MmsReceivedReceiver;-><init>()V

    return-void
.end method

.method static synthetic j(Lcom/callerid/block/sms/MyMmsReceivedReceiver;Ljava/lang/String;Ljava/lang/String;JLandroid/content/Context;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/callerid/block/sms/MyMmsReceivedReceiver;->l(Ljava/lang/String;Ljava/lang/String;JLandroid/content/Context;)V

    return-void
.end method

.method private k(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 1

    new-instance v0, Lcom/callerid/block/sms/MyMmsReceivedReceiver$a;

    invoke-direct {v0, p0, p1}, Lcom/callerid/block/sms/MyMmsReceivedReceiver$a;-><init>(Lcom/callerid/block/sms/MyMmsReceivedReceiver;Landroid/content/Context;)V

    invoke-static {p1, p2, v0}, Lcom/callerid/block/mvc/model/sms/b;->c(Landroid/content/Context;Landroid/net/Uri;Lcom/callerid/block/mvc/model/sms/a;)V

    return-void
.end method

.method private l(Ljava/lang/String;Ljava/lang/String;JLandroid/content/Context;)V
    .locals 2

    sget-boolean v0, Lcom/callerid/block/util/w;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "message from: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", message body: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", message date: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "receivemms"

    invoke-static {v1, v0}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/callerid/block/sms/SmsSceneService;

    invoke-direct {v0, p5, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "msgBody"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "msgAddress"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "msgDate"

    invoke-virtual {v0, p1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-virtual {p5, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method private m(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.callerid.block.SMS_RECEIVER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p1}, Ld/p/a/a;->b(Landroid/content/Context;)Ld/p/a/a;

    move-result-object p1

    invoke-virtual {p1, v0}, Ld/p/a/a;->d(Landroid/content/Intent;)Z

    return-void
.end method


# virtual methods
.method public h(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    sget-boolean p1, Lcom/callerid/block/util/w;->a:Z

    if-eqz p1, :cond_0

    const-string p1, "receivemms"

    const-string p2, "\u5f69\u4fe1\u63a5\u6536error"

    invoke-static {p1, p2}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public i(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 2

    sget-boolean v0, Lcom/callerid/block/util/w;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5f69\u4fe1\u63a5\u6536OK\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "receivemms"

    invoke-static {v1, v0}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/callerid/block/sms/MyMmsReceivedReceiver;->m(Landroid/content/Context;)V

    invoke-direct {p0, p1, p2}, Lcom/callerid/block/sms/MyMmsReceivedReceiver;->k(Landroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method
