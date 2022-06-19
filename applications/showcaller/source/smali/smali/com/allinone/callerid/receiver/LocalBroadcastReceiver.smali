.class public Lcom/allinone/callerid/receiver/LocalBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "LocalBroadcastReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/allinone/callerid/receiver/LocalBroadcastReceiver$a;
    }
.end annotation


# instance fields
.field a:Lcom/allinone/callerid/receiver/LocalBroadcastReceiver$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/allinone/callerid/receiver/LocalBroadcastReceiver$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/allinone/callerid/receiver/LocalBroadcastReceiver;->a:Lcom/allinone/callerid/receiver/LocalBroadcastReceiver$a;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/allinone/callerid/receiver/LocalBroadcastReceiver;->a:Lcom/allinone/callerid/receiver/LocalBroadcastReceiver$a;

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1, p2}, Lcom/allinone/callerid/receiver/LocalBroadcastReceiver$a;->a(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
