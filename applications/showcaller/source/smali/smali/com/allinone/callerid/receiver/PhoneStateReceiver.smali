.class public Lcom/allinone/callerid/receiver/PhoneStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PhoneStateReceiver.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:I

.field private c:Z

.field private d:I

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/allinone/callerid/receiver/PhoneStateReceiver;->b:I

    .line 3
    iput v0, p0, Lcom/allinone/callerid/receiver/PhoneStateReceiver;->d:I

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/allinone/callerid/receiver/PhoneStateReceiver;->g:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 6

    .line 1
    iget v0, p0, Lcom/allinone/callerid/receiver/PhoneStateReceiver;->b:I

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    sget-boolean v0, Lcom/allinone/callerid/util/c0;->a:Z

    const-string v1, "callstatus"

    if-eqz v0, :cond_1

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u72b6\u6001:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v0, "telephonering_num"

    const-string v2, "telephonering_sence"

    const/4 v3, 0x1

    if-eqz p1, :cond_8

    if-eq p1, v3, :cond_6

    const/4 p2, 0x2

    if-eq p1, p2, :cond_2

    goto/16 :goto_0

    .line 4
    :cond_2
    iget v4, p0, Lcom/allinone/callerid/receiver/PhoneStateReceiver;->b:I

    if-eq v4, v3, :cond_4

    const/4 v3, 0x0

    .line 5
    iput-boolean v3, p0, Lcom/allinone/callerid/receiver/PhoneStateReceiver;->c:Z

    .line 6
    iget-object v3, p0, Lcom/allinone/callerid/receiver/PhoneStateReceiver;->f:Ljava/lang/String;

    iput-object v3, p0, Lcom/allinone/callerid/receiver/PhoneStateReceiver;->g:Ljava/lang/String;

    .line 7
    sget-boolean v3, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v3, :cond_3

    .line 8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u53bb\u7535:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/allinone/callerid/receiver/PhoneStateReceiver;->f:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    :cond_3
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/allinone/callerid/receiver/PhoneStateReceiver;->a:Landroid/content/Context;

    const-class v4, Lcom/allinone/callerid/service/PhoneSceneService;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 10
    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 11
    iget-object p2, p0, Lcom/allinone/callerid/receiver/PhoneStateReceiver;->f:Ljava/lang/String;

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 12
    iget-object p2, p0, Lcom/allinone/callerid/receiver/PhoneStateReceiver;->a:Landroid/content/Context;

    invoke-virtual {p2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 13
    :cond_4
    iput-boolean v3, p0, Lcom/allinone/callerid/receiver/PhoneStateReceiver;->c:Z

    .line 14
    sget-boolean p2, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz p2, :cond_5

    .line 15
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u6765\u7535\u63a5\u542c:"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/allinone/callerid/receiver/PhoneStateReceiver;->g:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    :cond_5
    new-instance p2, Landroid/content/Intent;

    iget-object v1, p0, Lcom/allinone/callerid/receiver/PhoneStateReceiver;->a:Landroid/content/Context;

    const-class v3, Lcom/allinone/callerid/service/PhoneSceneService;

    invoke-direct {p2, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x3

    .line 17
    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 18
    iget-object v1, p0, Lcom/allinone/callerid/receiver/PhoneStateReceiver;->g:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 19
    iget-object v0, p0, Lcom/allinone/callerid/receiver/PhoneStateReceiver;->a:Landroid/content/Context;

    invoke-virtual {v0, p2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 20
    :cond_6
    iput-object p2, p0, Lcom/allinone/callerid/receiver/PhoneStateReceiver;->g:Ljava/lang/String;

    .line 21
    sget-boolean v4, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v4, :cond_7

    .line 22
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u6765\u7535\u54cd\u94c3:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    :cond_7
    iput-boolean v3, p0, Lcom/allinone/callerid/receiver/PhoneStateReceiver;->c:Z

    .line 24
    new-instance v1, Landroid/content/Intent;

    iget-object v4, p0, Lcom/allinone/callerid/receiver/PhoneStateReceiver;->a:Landroid/content/Context;

    const-class v5, Lcom/allinone/callerid/service/PhoneSceneService;

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 25
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 26
    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p2, 0x10000000

    .line 27
    invoke-virtual {v1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 28
    iget-object p2, p0, Lcom/allinone/callerid/receiver/PhoneStateReceiver;->a:Landroid/content/Context;

    invoke-virtual {p2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 29
    :cond_8
    iget p2, p0, Lcom/allinone/callerid/receiver/PhoneStateReceiver;->b:I

    const/4 v4, 0x0

    if-ne p2, v3, :cond_a

    .line 30
    sget-boolean p2, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz p2, :cond_9

    .line 31
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u6765\u7535\u672a\u63a5\u6302\u65ad:"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/allinone/callerid/receiver/PhoneStateReceiver;->g:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    :cond_9
    new-instance p2, Landroid/content/Intent;

    iget-object v1, p0, Lcom/allinone/callerid/receiver/PhoneStateReceiver;->a:Landroid/content/Context;

    const-class v3, Lcom/allinone/callerid/service/PhoneSceneService;

    invoke-direct {p2, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x4

    .line 33
    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 34
    iget-object v1, p0, Lcom/allinone/callerid/receiver/PhoneStateReceiver;->g:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 35
    iget-object v0, p0, Lcom/allinone/callerid/receiver/PhoneStateReceiver;->a:Landroid/content/Context;

    invoke-virtual {v0, p2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 36
    iput-object v4, p0, Lcom/allinone/callerid/receiver/PhoneStateReceiver;->g:Ljava/lang/String;

    goto :goto_0

    .line 37
    :cond_a
    iget-boolean p2, p0, Lcom/allinone/callerid/receiver/PhoneStateReceiver;->c:Z

    if-eqz p2, :cond_c

    .line 38
    sget-boolean p2, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz p2, :cond_b

    .line 39
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u6765\u7535\u5df2\u63a5\u6302\u65ad:"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/allinone/callerid/receiver/PhoneStateReceiver;->g:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    :cond_b
    new-instance p2, Landroid/content/Intent;

    iget-object v1, p0, Lcom/allinone/callerid/receiver/PhoneStateReceiver;->a:Landroid/content/Context;

    const-class v3, Lcom/allinone/callerid/service/PhoneSceneService;

    invoke-direct {p2, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x5

    .line 41
    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 42
    iget-object v1, p0, Lcom/allinone/callerid/receiver/PhoneStateReceiver;->g:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 43
    iget-object v0, p0, Lcom/allinone/callerid/receiver/PhoneStateReceiver;->a:Landroid/content/Context;

    invoke-virtual {v0, p2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 44
    iput-object v4, p0, Lcom/allinone/callerid/receiver/PhoneStateReceiver;->g:Ljava/lang/String;

    goto :goto_0

    .line 45
    :cond_c
    sget-boolean p2, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz p2, :cond_d

    .line 46
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u53bb\u7535\u6302\u65ad:"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/allinone/callerid/receiver/PhoneStateReceiver;->g:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    :cond_d
    new-instance p2, Landroid/content/Intent;

    iget-object v1, p0, Lcom/allinone/callerid/receiver/PhoneStateReceiver;->a:Landroid/content/Context;

    const-class v3, Lcom/allinone/callerid/service/PhoneSceneService;

    invoke-direct {p2, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x6

    .line 48
    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 49
    iget-object v1, p0, Lcom/allinone/callerid/receiver/PhoneStateReceiver;->g:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 50
    iget-object v0, p0, Lcom/allinone/callerid/receiver/PhoneStateReceiver;->a:Landroid/content/Context;

    invoke-virtual {v0, p2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 51
    iput-object v4, p0, Lcom/allinone/callerid/receiver/PhoneStateReceiver;->g:Ljava/lang/String;

    .line 52
    :goto_0
    iput p1, p0, Lcom/allinone/callerid/receiver/PhoneStateReceiver;->b:I

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string v0, "callstatus"

    const-string v1, "incoming_number"

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/receiver/PhoneStateReceiver;->a:Landroid/content/Context;

    :try_start_0
    const-string p1, "android.intent.action.NEW_OUTGOING_CALL"

    .line 2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto/16 :goto_1

    .line 3
    :cond_0
    invoke-virtual {p2, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 4
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v2, "state"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/allinone/callerid/receiver/PhoneStateReceiver;->e:Ljava/lang/String;

    .line 5
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/allinone/callerid/receiver/PhoneStateReceiver;->f:Ljava/lang/String;

    .line 6
    sget-boolean p1, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz p1, :cond_1

    .line 7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "stateChange:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/allinone/callerid/receiver/PhoneStateReceiver;->e:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "coming_num:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/allinone/callerid/receiver/PhoneStateReceiver;->f:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    :cond_1
    iget-object p1, p0, Lcom/allinone/callerid/receiver/PhoneStateReceiver;->f:Ljava/lang/String;

    if-eqz p1, :cond_5

    .line 10
    iget-object p1, p0, Lcom/allinone/callerid/receiver/PhoneStateReceiver;->e:Ljava/lang/String;

    sget-object p2, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 11
    iput p1, p0, Lcom/allinone/callerid/receiver/PhoneStateReceiver;->d:I

    goto :goto_0

    .line 12
    :cond_2
    iget-object p1, p0, Lcom/allinone/callerid/receiver/PhoneStateReceiver;->e:Ljava/lang/String;

    sget-object p2, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x2

    .line 13
    iput p1, p0, Lcom/allinone/callerid/receiver/PhoneStateReceiver;->d:I

    goto :goto_0

    .line 14
    :cond_3
    iget-object p1, p0, Lcom/allinone/callerid/receiver/PhoneStateReceiver;->e:Ljava/lang/String;

    sget-object p2, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x1

    .line 15
    iput p1, p0, Lcom/allinone/callerid/receiver/PhoneStateReceiver;->d:I

    .line 16
    :cond_4
    :goto_0
    iget p1, p0, Lcom/allinone/callerid/receiver/PhoneStateReceiver;->d:I

    iget-object p2, p0, Lcom/allinone/callerid/receiver/PhoneStateReceiver;->f:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/allinone/callerid/receiver/PhoneStateReceiver;->a(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 17
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    :goto_1
    return-void
.end method
