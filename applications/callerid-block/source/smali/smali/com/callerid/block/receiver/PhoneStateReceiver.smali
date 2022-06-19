.class public Lcom/callerid/block/receiver/PhoneStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source ""


# static fields
.field private static e:I

.field private static f:Z

.field private static g:I


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/callerid/block/receiver/PhoneStateReceiver;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 6

    sget v0, Lcom/callerid/block/receiver/PhoneStateReceiver;->e:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    const-string v1, "telephonering_num"

    const-string v2, "telephonering_sence"

    const/4 v3, 0x1

    if-eqz p1, :cond_4

    if-eq p1, v3, :cond_3

    const/4 p2, 0x2

    if-eq p1, p2, :cond_1

    goto/16 :goto_2

    :cond_1
    if-eq v0, v3, :cond_2

    const/4 v0, 0x0

    sput-boolean v0, Lcom/callerid/block/receiver/PhoneStateReceiver;->f:Z

    iget-object v0, p0, Lcom/callerid/block/receiver/PhoneStateReceiver;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/callerid/block/receiver/PhoneStateReceiver;->d:Ljava/lang/String;

    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lcom/callerid/block/receiver/PhoneStateReceiver;->a:Landroid/content/Context;

    const-class v4, Lcom/callerid/block/service/PhoneSceneService;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object p2, p0, Lcom/callerid/block/receiver/PhoneStateReceiver;->c:Ljava/lang/String;

    goto :goto_0

    :cond_2
    sput-boolean v3, Lcom/callerid/block/receiver/PhoneStateReceiver;->f:Z

    new-instance p2, Landroid/content/Intent;

    iget-object v0, p0, Lcom/callerid/block/receiver/PhoneStateReceiver;->a:Landroid/content/Context;

    const-class v3, Lcom/callerid/block/service/PhoneSceneService;

    invoke-direct {p2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v0, 0x3

    invoke-virtual {p2, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/callerid/block/receiver/PhoneStateReceiver;->d:Ljava/lang/String;

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/callerid/block/receiver/PhoneStateReceiver;->a:Landroid/content/Context;

    invoke-virtual {v0, p2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_2

    :cond_3
    iput-object p2, p0, Lcom/callerid/block/receiver/PhoneStateReceiver;->d:Ljava/lang/String;

    sput-boolean v3, Lcom/callerid/block/receiver/PhoneStateReceiver;->f:Z

    new-instance v0, Landroid/content/Intent;

    iget-object v4, p0, Lcom/callerid/block/receiver/PhoneStateReceiver;->a:Landroid/content/Context;

    const-class v5, Lcom/callerid/block/service/PhoneSceneService;

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_0
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p2, p0, Lcom/callerid/block/receiver/PhoneStateReceiver;->a:Landroid/content/Context;

    invoke-virtual {p2, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_2

    :cond_4
    const/4 p2, 0x0

    if-ne v0, v3, :cond_5

    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lcom/callerid/block/receiver/PhoneStateReceiver;->a:Landroid/content/Context;

    const-class v4, Lcom/callerid/block/service/PhoneSceneService;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v3, 0x4

    :goto_1
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/callerid/block/receiver/PhoneStateReceiver;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/callerid/block/receiver/PhoneStateReceiver;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    iput-object p2, p0, Lcom/callerid/block/receiver/PhoneStateReceiver;->d:Ljava/lang/String;

    goto :goto_2

    :cond_5
    sget-boolean v0, Lcom/callerid/block/receiver/PhoneStateReceiver;->f:Z

    if-eqz v0, :cond_6

    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lcom/callerid/block/receiver/PhoneStateReceiver;->a:Landroid/content/Context;

    const-class v4, Lcom/callerid/block/service/PhoneSceneService;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v3, 0x5

    goto :goto_1

    :cond_6
    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lcom/callerid/block/receiver/PhoneStateReceiver;->a:Landroid/content/Context;

    const-class v4, Lcom/callerid/block/service/PhoneSceneService;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v3, 0x6

    goto :goto_1

    :goto_2
    sput p1, Lcom/callerid/block/receiver/PhoneStateReceiver;->e:I

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "incoming_number"

    iput-object p1, p0, Lcom/callerid/block/receiver/PhoneStateReceiver;->a:Landroid/content/Context;

    if-eqz p2, :cond_7

    :try_start_0
    const-string p1, "android.intent.action.NEW_OUTGOING_CALL"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "callstatus"

    if-eqz p1, :cond_6

    :try_start_1
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string p2, "state"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/callerid/block/receiver/PhoneStateReceiver;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/callerid/block/receiver/PhoneStateReceiver;->c:Ljava/lang/String;

    :cond_1
    sget-boolean p1, Lcom/callerid/block/util/w;->a:Z

    if-eqz p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "stateChange:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/callerid/block/receiver/PhoneStateReceiver;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "coming_num:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/callerid/block/receiver/PhoneStateReceiver;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object p1, p0, Lcom/callerid/block/receiver/PhoneStateReceiver;->c:Ljava/lang/String;

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/callerid/block/receiver/PhoneStateReceiver;->b:Ljava/lang/String;

    sget-object p2, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    sput p1, Lcom/callerid/block/receiver/PhoneStateReceiver;->g:I

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/callerid/block/receiver/PhoneStateReceiver;->b:Ljava/lang/String;

    sget-object p2, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x2

    sput p1, Lcom/callerid/block/receiver/PhoneStateReceiver;->g:I

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/callerid/block/receiver/PhoneStateReceiver;->b:Ljava/lang/String;

    sget-object p2, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x1

    sput p1, Lcom/callerid/block/receiver/PhoneStateReceiver;->g:I

    :cond_5
    :goto_0
    sget p1, Lcom/callerid/block/receiver/PhoneStateReceiver;->g:I

    iget-object p2, p0, Lcom/callerid/block/receiver/PhoneStateReceiver;->c:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/callerid/block/receiver/PhoneStateReceiver;->a(ILjava/lang/String;)V

    goto :goto_1

    :cond_6
    sget-boolean p1, Lcom/callerid/block/util/w;->a:Z

    if-eqz p1, :cond_7

    const-string p1, "nohasExtra"

    invoke-static {v1, p1}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_7
    :goto_1
    return-void
.end method
