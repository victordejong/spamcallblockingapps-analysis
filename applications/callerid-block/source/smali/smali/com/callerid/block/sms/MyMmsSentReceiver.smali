.class public Lcom/callerid/block/sms/MyMmsSentReceiver;
.super Lcom/klinker/android/send_message/MmsSentReceiver;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/klinker/android/send_message/MmsSentReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/content/Intent;I)V
    .locals 0

    sget-boolean p2, Lcom/callerid/block/util/w;->a:Z

    if-eqz p2, :cond_0

    const-string p2, "tony"

    const-string p3, "\u5f69\u4fe1\u5df2\u53d1\u9001\u6210\u529f"

    invoke-static {p2, p3}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    const-string p3, "com.callerid.block.MMS_SENDED_OK"

    invoke-virtual {p2, p3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p1}, Ld/p/a/a;->b(Landroid/content/Context;)Ld/p/a/a;

    move-result-object p1

    invoke-virtual {p1, p2}, Ld/p/a/a;->d(Landroid/content/Intent;)Z

    return-void
.end method
