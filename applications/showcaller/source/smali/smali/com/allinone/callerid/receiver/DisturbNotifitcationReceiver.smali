.class public Lcom/allinone/callerid/receiver/DisturbNotifitcationReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DisturbNotifitcationReceiver.java"


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

    if-eqz p2, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-static {p1}, Lcom/allinone/callerid/util/l0;->a(Landroid/content/Context;)V

    const/4 p2, 0x0

    .line 2
    invoke-static {p2}, Lcom/allinone/callerid/util/i1/a;->s(Z)V

    .line 3
    invoke-static {p1}, Lb/p/a/a;->b(Landroid/content/Context;)Lb/p/a/a;

    move-result-object p1

    new-instance p2, Landroid/content/Intent;

    const-string v0, "com.allinone.callerid.DISTURB_NOTIFICATION_UPDATA"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lb/p/a/a;->d(Landroid/content/Intent;)Z

    :cond_1
    :goto_0
    return-void
.end method
