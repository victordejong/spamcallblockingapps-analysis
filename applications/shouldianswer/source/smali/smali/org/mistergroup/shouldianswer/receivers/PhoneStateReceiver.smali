.class public final Lorg/mistergroup/shouldianswer/receivers/PhoneStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PhoneStateReceiver.kt"


# instance fields
.field private a:Lorg/mistergroup/shouldianswer/utils/e$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 19
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/e$a;->f:Lorg/mistergroup/shouldianswer/utils/e$a;

    iput-object v0, p0, Lorg/mistergroup/shouldianswer/receivers/PhoneStateReceiver;->a:Lorg/mistergroup/shouldianswer/utils/e$a;

    return-void
.end method


# virtual methods
.method public final a(Lorg/mistergroup/shouldianswer/utils/e$a;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/receivers/PhoneStateReceiver;->a:Lorg/mistergroup/shouldianswer/utils/e$a;

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    const-string v0, "incoming_number"

    const-string v1, "context"

    invoke-static {p1, v1}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "intent"

    invoke-static {p2, p1}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x2

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "state"

    .line 32
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, -0x1

    .line 35
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    if-eqz v5, :cond_1

    const-string v6, "subscription"

    .line 37
    invoke-virtual {v5, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 38
    instance-of v6, v5, Ljava/lang/Long;

    if-eqz v6, :cond_0

    move-object v3, v5

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    .line 39
    :cond_0
    instance-of v6, v5, Ljava/lang/Integer;

    if-eqz v6, :cond_1

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v3

    int-to-long v3, v3

    .line 41
    :cond_1
    move-object v5, v1

    check-cast v5, Ljava/lang/String;

    .line 42
    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 43
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 45
    :cond_2
    sget-object p2, Lorg/mistergroup/shouldianswer/model/c;->b:Lorg/mistergroup/shouldianswer/model/c;

    invoke-virtual {p2}, Lorg/mistergroup/shouldianswer/model/c;->M()Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p2

    const/4 v0, 0x1

    const/4 v6, 0x0

    if-lez p2, :cond_3

    move p2, v0

    goto :goto_0

    :cond_3
    move p2, v6

    :goto_0
    if-eqz p2, :cond_4

    sget-object p2, Lorg/mistergroup/shouldianswer/model/c;->b:Lorg/mistergroup/shouldianswer/model/c;

    invoke-virtual {p2}, Lorg/mistergroup/shouldianswer/model/c;->M()Ljava/lang/String;

    move-result-object v5

    :cond_4
    const p2, 0x7fffffff

    int-to-long v7, p2

    cmp-long p2, v3, v7

    if-gez p2, :cond_5

    move p2, v0

    goto :goto_1

    :cond_5
    move p2, v6

    .line 50
    :goto_1
    sget-object v3, Lorg/mistergroup/shouldianswer/model/ai;->a:Lorg/mistergroup/shouldianswer/model/ai;

    invoke-virtual {v3}, Lorg/mistergroup/shouldianswer/model/ai;->c()Lorg/mistergroup/shouldianswer/model/af;

    move-result-object v3

    sget-object v4, Lorg/mistergroup/shouldianswer/model/af;->c:Lorg/mistergroup/shouldianswer/model/af;

    if-ne v3, v4, :cond_6

    goto :goto_2

    :cond_6
    move v0, v6

    .line 51
    :goto_2
    sget-object v3, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "BROADCAST: PhoneStateReceiver source="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lorg/mistergroup/shouldianswer/receivers/PhoneStateReceiver;->a:Lorg/mistergroup/shouldianswer/utils/e$a;

    invoke-virtual {v6}, Lorg/mistergroup/shouldianswer/utils/e$a;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " subValid="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_7

    const-string v6, "true"

    goto :goto_3

    :cond_7
    const-string v6, "false"

    :goto_3
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " state="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " isPassiveMode"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1, p1, v1}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    if-nez v0, :cond_8

    return-void

    :cond_8
    if-eqz p2, :cond_b

    .line 56
    sget-object p2, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    invoke-static {v2, p2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 57
    sget-object p2, Lorg/mistergroup/shouldianswer/utils/e;->a:Lorg/mistergroup/shouldianswer/utils/e;

    iget-object v0, p0, Lorg/mistergroup/shouldianswer/receivers/PhoneStateReceiver;->a:Lorg/mistergroup/shouldianswer/utils/e$a;

    invoke-virtual {p2, v0, v5}, Lorg/mistergroup/shouldianswer/utils/e;->a(Lorg/mistergroup/shouldianswer/utils/e$a;Ljava/lang/String;)V

    .line 59
    :cond_9
    sget-object p2, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    invoke-static {v2, p2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a

    .line 60
    sget-object p2, Lorg/mistergroup/shouldianswer/utils/e;->a:Lorg/mistergroup/shouldianswer/utils/e;

    iget-object v0, p0, Lorg/mistergroup/shouldianswer/receivers/PhoneStateReceiver;->a:Lorg/mistergroup/shouldianswer/utils/e$a;

    invoke-virtual {p2, v0, v5}, Lorg/mistergroup/shouldianswer/utils/e;->b(Lorg/mistergroup/shouldianswer/utils/e$a;Ljava/lang/String;)V

    .line 62
    :cond_a
    sget-object p2, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    invoke-static {v2, p2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_b

    .line 63
    sget-object p2, Lorg/mistergroup/shouldianswer/utils/e;->a:Lorg/mistergroup/shouldianswer/utils/e;

    iget-object v0, p0, Lorg/mistergroup/shouldianswer/receivers/PhoneStateReceiver;->a:Lorg/mistergroup/shouldianswer/utils/e$a;

    invoke-virtual {p2, v0, v5}, Lorg/mistergroup/shouldianswer/utils/e;->c(Lorg/mistergroup/shouldianswer/utils/e$a;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p2

    .line 67
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    invoke-static {v0, p2, v1, p1, v1}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    :cond_b
    :goto_4
    return-void
.end method
