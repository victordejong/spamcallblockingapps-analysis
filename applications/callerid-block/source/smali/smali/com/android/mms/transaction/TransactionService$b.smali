.class Lcom/android/mms/transaction/TransactionService$b;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/transaction/TransactionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/android/mms/transaction/TransactionService;


# direct methods
.method private constructor <init>(Lcom/android/mms/transaction/TransactionService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/transaction/TransactionService$b;->a:Lcom/android/mms/transaction/TransactionService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/transaction/TransactionService;Lcom/android/mms/transaction/TransactionService$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/transaction/TransactionService$b;-><init>(Lcom/android/mms/transaction/TransactionService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Mms"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Le/d/a/a/a;->f(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ConnectivityBroadcastReceiver.onReceive() action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Le/d/a/a/a;->l(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    return-void

    :cond_1
    iget-object p2, p0, Lcom/android/mms/transaction/TransactionService$b;->a:Lcom/android/mms/transaction/TransactionService;

    invoke-static {p2}, Lcom/android/mms/transaction/TransactionService;->e(Lcom/android/mms/transaction/TransactionService;)Landroid/net/ConnectivityManager;

    move-result-object p2

    const/4 v2, 0x0

    if-eqz p2, :cond_2

    invoke-static {p1}, Lcom/klinker/android/send_message/j;->r(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/mms/transaction/TransactionService$b;->a:Lcom/android/mms/transaction/TransactionService;

    invoke-static {p1}, Lcom/android/mms/transaction/TransactionService;->e(Lcom/android/mms/transaction/TransactionService;)Landroid/net/ConnectivityManager;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object p1

    goto :goto_0

    :cond_2
    invoke-static {v0, v1}, Le/d/a/a/a;->f(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "mConnMgr is null, bail"

    invoke-static {v0, p1}, Le/d/a/a/a;->k(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    move-object p1, v2

    :goto_0
    invoke-static {v0, v1}, Le/d/a/a/a;->f(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_4

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Handle ConnectivityBroadcastReceiver.onReceive(): "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Le/d/a/a/a;->k(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    if-nez p1, :cond_5

    invoke-static {v0, v1}, Le/d/a/a/a;->f(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_c

    const-string p1, "mms type is null or mobile data is turned off, bail"

    invoke-static {v0, p1}, Le/d/a/a/a;->k(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_5
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object p2

    const-string v3, "2GVoiceCallEnded"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-static {v0, v1}, Le/d/a/a/a;->f(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p1, "   reason is 2GVoiceCallEnded, retrying mms connectivity"

    invoke-static {v0, p1}, Le/d/a/a/a;->k(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    iget-object p1, p0, Lcom/android/mms/transaction/TransactionService$b;->a:Lcom/android/mms/transaction/TransactionService;

    invoke-static {p1}, Lcom/android/mms/transaction/TransactionService;->c(Lcom/android/mms/transaction/TransactionService;)V

    return-void

    :cond_7
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p2

    if-eqz p2, :cond_9

    new-instance p2, Lcom/android/mms/transaction/p;

    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService$b;->a:Lcom/android/mms/transaction/TransactionService;

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, v1, p1}, Lcom/android/mms/transaction/p;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/android/mms/transaction/p;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_8

    const-string p1, "   empty MMSC url, bail"

    invoke-static {v0, p1}, Le/d/a/a/a;->k(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/mms/transaction/TransactionService$b;->a:Lcom/android/mms/transaction/TransactionService;

    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.klinker.android.send_message.MMS_ERROR"

    invoke-static {p1, p2, v0}, Lcom/klinker/android/send_message/b;->b(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/mms/transaction/TransactionService$b;->a:Lcom/android/mms/transaction/TransactionService;

    invoke-static {p1}, Lcom/android/mms/transaction/TransactionService;->f(Lcom/android/mms/transaction/TransactionService;)Lcom/android/mms/transaction/TransactionService$c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/mms/transaction/TransactionService$c;->c()V

    iget-object p1, p0, Lcom/android/mms/transaction/TransactionService$b;->a:Lcom/android/mms/transaction/TransactionService;

    invoke-virtual {p1}, Lcom/android/mms/transaction/TransactionService;->j()V

    iget-object p1, p0, Lcom/android/mms/transaction/TransactionService$b;->a:Lcom/android/mms/transaction/TransactionService;

    invoke-virtual {p1}, Landroid/app/Service;->stopSelf()V

    return-void

    :cond_8
    iget-object p1, p0, Lcom/android/mms/transaction/TransactionService$b;->a:Lcom/android/mms/transaction/TransactionService;

    invoke-static {p1}, Lcom/android/mms/transaction/TransactionService;->f(Lcom/android/mms/transaction/TransactionService;)Lcom/android/mms/transaction/TransactionService$c;

    move-result-object p1

    invoke-virtual {p1, v2, p2}, Lcom/android/mms/transaction/TransactionService$c;->d(Lcom/android/mms/transaction/n;Lcom/android/mms/transaction/p;)V

    goto :goto_1

    :cond_9
    invoke-static {v0, v1}, Le/d/a/a/a;->f(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_a

    const-string p2, "   TYPE_MOBILE_MMS not connected, bail"

    invoke-static {v0, p2}, Le/d/a/a/a;->k(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result p1

    if-eqz p1, :cond_c

    invoke-static {v0, v1}, Le/d/a/a/a;->f(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_b

    const-string p1, "   retrying mms connectivity for it\'s available"

    invoke-static {v0, p1}, Le/d/a/a/a;->k(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    iget-object p1, p0, Lcom/android/mms/transaction/TransactionService$b;->a:Lcom/android/mms/transaction/TransactionService;

    invoke-static {p1}, Lcom/android/mms/transaction/TransactionService;->c(Lcom/android/mms/transaction/TransactionService;)V

    :cond_c
    :goto_1
    return-void
.end method
