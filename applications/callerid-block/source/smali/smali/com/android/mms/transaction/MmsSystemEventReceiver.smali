.class public Lcom/android/mms/transaction/MmsSystemEventReceiver;
.super Landroid/content/BroadcastReceiver;
.source ""


# static fields
.field private static a:Landroid/net/ConnectivityManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_1

    const/4 v0, 0x2

    const-string v1, "Mms"

    invoke-static {v1, v0}, Le/d/a/a/a;->f(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "wakeUpService: start transaction service ..."

    invoke-static {v1, v0}, Le/d/a/a/a;->k(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/transaction/TransactionService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const-string v0, "Mms"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Le/d/a/a/a;->f(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Intent received: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Le/d/a/a/a;->k(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {p1}, Lcom/klinker/android/send_message/j;->o(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string p1, "not default sms app, cancelling"

    :goto_0
    invoke-static {v0, p1}, Le/d/a/a/a;->k(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.CONTENT_CHANGED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string p1, "deleted_contents"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    goto/16 :goto_2

    :cond_2
    const-string p2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    sget-object p2, Lcom/android/mms/transaction/MmsSystemEventReceiver;->a:Landroid/net/ConnectivityManager;

    if-nez p2, :cond_3

    const-string p2, "connectivity"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/ConnectivityManager;

    sput-object p2, Lcom/android/mms/transaction/MmsSystemEventReceiver;->a:Landroid/net/ConnectivityManager;

    :cond_3
    invoke-static {p1}, Lcom/klinker/android/send_message/j;->q(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_4

    sget-object p2, Lcom/android/mms/transaction/MmsSystemEventReceiver;->a:Landroid/net/ConnectivityManager;

    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object p2

    if-eqz p2, :cond_9

    invoke-virtual {p2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p2

    if-eqz p2, :cond_9

    const-string p2, "TYPE_WIFI connected"

    invoke-static {v0, p2}, Le/d/a/a/a;->k(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    invoke-static {p1}, Lcom/klinker/android/send_message/j;->r(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_5

    const-string p1, "mobile data turned off, bailing"

    goto :goto_0

    :cond_5
    sget-object p2, Lcom/android/mms/transaction/MmsSystemEventReceiver;->a:Landroid/net/ConnectivityManager;

    invoke-virtual {p2, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object p2

    if-nez p2, :cond_6

    return-void

    :cond_6
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    invoke-virtual {p2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p2

    invoke-static {v0, v1}, Le/d/a/a/a;->f(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TYPE_MOBILE_MMS available = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isConnected = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Le/d/a/a/a;->k(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    if-eqz v2, :cond_9

    if-nez p2, :cond_9

    goto :goto_1

    :cond_8
    const-string p2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    :goto_1
    invoke-static {p1}, Lcom/android/mms/transaction/MmsSystemEventReceiver;->a(Landroid/content/Context;)V

    :cond_9
    :goto_2
    return-void
.end method
