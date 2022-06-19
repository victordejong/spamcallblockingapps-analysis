.class public Lcom/mglab/scm/telephony/PhoneCallReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field public static a:Ljava/lang/Integer;

.field public static b:Ljava/lang/Integer;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/mglab/scm/telephony/PhoneCallReceiver;

    const/4 v0, 0x0

    .line 2
    sput-object v0, Lcom/mglab/scm/telephony/PhoneCallReceiver;->a:Ljava/lang/Integer;

    sput-object v0, Lcom/mglab/scm/telephony/PhoneCallReceiver;->b:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    .line 1
    invoke-static {p1}, Lf8/g;->v(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "lastcalltime"

    invoke-static {p1, v2, v0, v1}, Lf8/h;->k0(Landroid/content/Context;Ljava/lang/String;J)V

    const-string v0, "state"

    .line 4
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 6
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    const-string v4, "android.intent.action.SUBSCRIPTION_PHONE_STATE"

    const/16 v5, 0x1c

    if-lt v2, v3, :cond_0

    if-ge v2, v5, :cond_0

    .line 7
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 8
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    return-void

    :cond_0
    const-string v3, "subscription"

    const-string v6, "slot"

    const/4 v7, 0x0

    if-lt v2, v5, :cond_2

    .line 9
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 10
    sget-object v1, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 11
    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sput-object p1, Lcom/mglab/scm/telephony/PhoneCallReceiver;->a:Ljava/lang/Integer;

    .line 12
    invoke-virtual {p2, v3, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sput-object p1, Lcom/mglab/scm/telephony/PhoneCallReceiver;->b:Ljava/lang/Integer;

    return-void

    :cond_1
    const/4 v1, 0x0

    .line 13
    sput-object v1, Lcom/mglab/scm/telephony/PhoneCallReceiver;->a:Ljava/lang/Integer;

    .line 14
    sput-object v1, Lcom/mglab/scm/telephony/PhoneCallReceiver;->b:Ljava/lang/Integer;

    .line 15
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v4, "EXTRA_STATE"

    .line 16
    invoke-virtual {v1, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    sget-object v4, Lcom/mglab/scm/telephony/PhoneCallReceiver;->a:Ljava/lang/Integer;

    if-eqz v4, :cond_3

    .line 18
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v1, v6, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 19
    :cond_3
    sget-object v4, Lcom/mglab/scm/telephony/PhoneCallReceiver;->b:Ljava/lang/Integer;

    if-eqz v4, :cond_4

    .line 20
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 21
    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    .line 22
    invoke-virtual {v1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    .line 23
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    const/4 p2, 0x1

    if-lt v2, v5, :cond_5

    .line 24
    sget-object v3, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    .line 25
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 26
    sput-boolean p2, Ln8/d;->a:Z

    :cond_5
    if-lt v2, v5, :cond_7

    const-string v2, "incoming_number"

    .line 27
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_7

    sget-object v2, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    .line 28
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 29
    sget-boolean v0, Ln8/d;->a:Z

    if-eqz v0, :cond_6

    .line 30
    sput-boolean v7, Ln8/d;->a:Z

    goto :goto_0

    .line 31
    :cond_6
    sput-boolean p2, Ln8/d;->a:Z

    .line 32
    invoke-static {p1, v1}, Lf8/g;->O(Landroid/content/Context;Landroid/os/Bundle;)V

    goto :goto_0

    .line 33
    :cond_7
    invoke-static {p1, v1}, Lf8/g;->O(Landroid/content/Context;Landroid/os/Bundle;)V

    goto :goto_0

    .line 34
    :cond_8
    invoke-static {p1}, Lf8/g;->N(Landroid/content/Context;)V

    :goto_0
    return-void
.end method
