.class public Lcom/allinone/callerid/callscreen/activitys/acceptcall/AcceptCallActivity;
.super Landroid/app/Activity;
.source "AcceptCallActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/allinone/callerid/callscreen/activitys/acceptcall/AcceptCallActivity$b;
    }
.end annotation


# instance fields
.field private d:Landroid/app/KeyguardManager;

.field private e:Landroid/media/AudioManager;

.field private f:Lcom/allinone/callerid/callscreen/activitys/acceptcall/AcceptCallActivity$b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private a()V
    .locals 9

    const-string v0, "android.intent.extra.KEY_EVENT"

    const-string v1, "android.intent.action.MEDIA_BUTTON"

    .line 1
    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v3, "HTC"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/allinone/callerid/callscreen/activitys/acceptcall/AcceptCallActivity;->e:Landroid/media/AudioManager;

    .line 2
    invoke-virtual {v2}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    .line 3
    invoke-direct {p0, v4}, Lcom/allinone/callerid/callscreen/activitys/acceptcall/AcceptCallActivity;->b(Z)V

    :cond_1
    const/16 v5, 0x4f

    .line 4
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "input keyevent "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 6
    invoke-virtual {v6, v7}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    :try_start_1
    const-string v6, "android.permission.CALL_PRIVILEGED"

    .line 7
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v8, Landroid/view/KeyEvent;

    invoke-direct {v8, v4, v5}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v7, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v7

    .line 8
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/view/KeyEvent;

    invoke-direct {v1, v3, v5}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    .line 9
    invoke-virtual {p0, v7, v6}, Landroid/app/Activity;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0, v0, v6}, Landroid/app/Activity;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    if-eqz v2, :cond_2

    .line 11
    invoke-direct {p0, v4}, Lcom/allinone/callerid/callscreen/activitys/acceptcall/AcceptCallActivity;->b(Z)V

    :cond_2
    return-void

    :goto_2
    if-eqz v2, :cond_3

    invoke-direct {p0, v4}, Lcom/allinone/callerid/callscreen/activitys/acceptcall/AcceptCallActivity;->b(Z)V

    .line 12
    :cond_3
    throw v0
.end method

.method private b(Z)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x40000000    # 2.0f

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "state"

    .line 3
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "name"

    const-string v1, "mysms"

    .line 4
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, 0x0

    .line 5
    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private c()V
    .locals 2

    .line 1
    new-instance v0, Lcom/allinone/callerid/callscreen/activitys/acceptcall/AcceptCallActivity$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/allinone/callerid/callscreen/activitys/acceptcall/AcceptCallActivity$b;-><init>(Lcom/allinone/callerid/callscreen/activitys/acceptcall/AcceptCallActivity;Lcom/allinone/callerid/callscreen/activitys/acceptcall/AcceptCallActivity$a;)V

    iput-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/acceptcall/AcceptCallActivity;->f:Lcom/allinone/callerid/callscreen/activitys/acceptcall/AcceptCallActivity$b;

    .line 2
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PHONE_STATE"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcom/allinone/callerid/callscreen/activitys/acceptcall/AcceptCallActivity;->f:Lcom/allinone/callerid/callscreen/activitys/acceptcall/AcceptCallActivity$b;

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/acceptcall/AcceptCallActivity;->d:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x680000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x480080

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "keyguard"

    .line 2
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/KeyguardManager;

    iput-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/acceptcall/AcceptCallActivity;->d:Landroid/app/KeyguardManager;

    const-string p1, "audio"

    .line 3
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/acceptcall/AcceptCallActivity;->e:Landroid/media/AudioManager;

    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/acceptcall/AcceptCallActivity;->f:Lcom/allinone/callerid/callscreen/activitys/acceptcall/AcceptCallActivity$b;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/acceptcall/AcceptCallActivity;->f:Lcom/allinone/callerid/callscreen/activitys/acceptcall/AcceptCallActivity$b;

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 2
    invoke-direct {p0}, Lcom/allinone/callerid/callscreen/activitys/acceptcall/AcceptCallActivity;->c()V

    .line 3
    invoke-direct {p0}, Lcom/allinone/callerid/callscreen/activitys/acceptcall/AcceptCallActivity;->d()V

    .line 4
    invoke-direct {p0}, Lcom/allinone/callerid/callscreen/activitys/acceptcall/AcceptCallActivity;->a()V

    return-void
.end method
