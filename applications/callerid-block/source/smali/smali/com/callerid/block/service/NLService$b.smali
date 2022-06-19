.class Lcom/callerid/block/service/NLService$b;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callerid/block/service/NLService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/callerid/block/service/NLService;


# direct methods
.method constructor <init>(Lcom/callerid/block/service/NLService;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/service/NLService$b;->a:Lcom/callerid/block/service/NLService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const-string p1, "wbb"

    const-string p2, "Received Broadcast"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/callerid/block/service/NLService$b;->a:Lcom/callerid/block/service/NLService;

    invoke-virtual {p1}, Landroid/service/notification/NotificationListenerService;->getActiveNotifications()[Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    array-length p2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_1

    aget-object v1, p1, v0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_0

    iget-object v2, p0, Lcom/callerid/block/service/NLService$b;->a:Lcom/callerid/block/service/NLService;

    invoke-static {v2, v1}, Lcom/callerid/block/service/NLService;->a(Lcom/callerid/block/service/NLService;Landroid/service/notification/StatusBarNotification;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
