.class public final Lorg/mistergroup/shouldianswer/receivers/OutgoingCallReceiver;
.super Landroid/content/BroadcastReceiver;
.source "OutgoingCallReceiver.kt"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "intent"

    invoke-static {p2, p1}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x2

    const/4 v0, 0x0

    .line 20
    :try_start_0
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/receivers/OutgoingCallReceiver;->getResultData()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.extra.PHONE_NUMBER"

    .line 22
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 23
    :cond_0
    sget-object p2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string v2, "BROADCAST: OutgoingCallReceiver"

    invoke-static {p2, v2, v0, p1, v0}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    if-nez v1, :cond_1

    .line 25
    sget-object p2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string v1, "OutgoingCallReceiver return due null number"

    invoke-static {p2, v1, v0, p1, v0}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    return-void

    .line 28
    :cond_1
    sget-object p2, Lorg/mistergroup/shouldianswer/utils/e;->a:Lorg/mistergroup/shouldianswer/utils/e;

    sget-object v2, Lorg/mistergroup/shouldianswer/utils/e$a;->e:Lorg/mistergroup/shouldianswer/utils/e$a;

    invoke-virtual {p2, v2, v1}, Lorg/mistergroup/shouldianswer/utils/e;->d(Lorg/mistergroup/shouldianswer/utils/e$a;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 29
    sget-object p2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string v1, "OutgoingCallReceiver BLOCK CALL"

    invoke-static {p2, v1, v0, p1, v0}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 30
    move-object p2, v0

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2}, Lorg/mistergroup/shouldianswer/receivers/OutgoingCallReceiver;->setResultData(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 33
    sget-object v1, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    invoke-static {v1, p2, v0, p1, v0}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method
