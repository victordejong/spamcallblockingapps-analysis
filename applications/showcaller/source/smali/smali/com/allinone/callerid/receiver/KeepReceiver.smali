.class public Lcom/allinone/callerid/receiver/KeepReceiver;
.super Landroid/content/BroadcastReceiver;
.source "KeepReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "android.intent.action.SCREEN_OFF"

    .line 2
    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/allinone/callerid/util/a0;->b()Lcom/allinone/callerid/util/a0;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/allinone/callerid/util/a0;->e(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    const-string p1, "android.intent.action.SCREEN_ON"

    .line 4
    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    invoke-static {}, Lcom/allinone/callerid/util/a0;->b()Lcom/allinone/callerid/util/a0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/allinone/callerid/util/a0;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method
