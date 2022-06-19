.class public Lcom/callerid/block/receiver/NetworkConnectChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    sget-boolean p2, Lcom/callerid/block/util/w;->a:Z

    const-string v0, "wbb"

    if-eqz p2, :cond_0

    const-string p2, "onReceive"

    invoke-static {v0, p2}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :try_start_0
    const-string p2, "connectivity"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/ConnectivityManager;

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-static {p1}, Lcom/callerid/block/util/d;->d(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/callerid/block/a/b;->e()Lcom/callerid/block/a/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callerid/block/a/b;->h()V

    goto :goto_0

    :cond_1
    sget-boolean p1, Lcom/callerid/block/util/w;->a:Z

    if-eqz p1, :cond_2

    const-string p1, "\u79fb\u52a8\u6570\u636e\u5df2\u8fde\u63a5"

    invoke-static {v0, p1}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-static {}, Lcom/callerid/block/a/b;->e()Lcom/callerid/block/a/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callerid/block/a/b;->g()V

    goto :goto_0

    :cond_3
    sget-boolean p1, Lcom/callerid/block/util/w;->a:Z

    if-eqz p1, :cond_4

    const-string p1, "\u79fb\u52a8\u6570\u636e\u672a\u8fde\u63a5\u4e14wifi\u672a\u8fde\u63a5"

    invoke-static {v0, p1}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_0
    return-void
.end method
