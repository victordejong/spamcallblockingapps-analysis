.class Lcom/callerid/block/service/NLService$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/callerid/block/k/a/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/service/NLService;->onNotificationPosted(Landroid/service/notification/StatusBarNotification;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callerid/block/service/NLService;


# direct methods
.method constructor <init>(Lcom/callerid/block/service/NLService;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/service/NLService$a;->a:Lcom/callerid/block/service/NLService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/callerid/block/search/EZSearchResult;)V
    .locals 3

    const-string v0, ""

    if-eqz p1, :cond_2

    :try_start_0
    invoke-virtual {p1}, Lcom/callerid/block/search/EZSearchResult;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/callerid/block/search/EZSearchResult;->getType_label()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object v1

    const-string v2, "whatsapp_notifi_show"

    invoke-virtual {v1, v2}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/callerid/block/search/EZSearchResult;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/callerid/block/search/EZSearchResult;->getName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/callerid/block/search/EZSearchResult;->getType_label()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iget-object v0, p0, Lcom/callerid/block/service/NLService$a;->a:Lcom/callerid/block/service/NLService;

    invoke-virtual {v0}, Landroid/service/notification/NotificationListenerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/callerid/block/util/u0;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_1
    return-void
.end method
