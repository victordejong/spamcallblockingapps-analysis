.class public Lcom/unknownphone/callblocker/work/CustomService;
.super Landroid/app/Service;
.source "CustomService.java"

# interfaces
.implements Lcom/b/a/a/a/c$b;


# instance fields
.field private a:Lcom/b/a/a/a/c;

.field private b:Landroid/content/SharedPreferences;

.field private c:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public B_()V
    .locals 12

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 81
    const-string/jumbo v0, "CustomService"

    const-string/jumbo v3, "onBillingInitialized() was called."

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-object v0, p0, Lcom/unknownphone/callblocker/work/CustomService;->a:Lcom/b/a/a/a/c;

    invoke-virtual {v0}, Lcom/b/a/a/a/c;->f()Z

    .line 83
    iget-object v0, p0, Lcom/unknownphone/callblocker/work/CustomService;->a:Lcom/b/a/a/a/c;

    const-string/jumbo v3, "inapp.unknownphone.callblocker1"

    invoke-virtual {v0, v3}, Lcom/b/a/a/a/c;->d(Ljava/lang/String;)Lcom/b/a/a/a/h;

    move-result-object v5

    .line 84
    iget-object v0, p0, Lcom/unknownphone/callblocker/work/CustomService;->a:Lcom/b/a/a/a/c;

    const-string/jumbo v3, "inapp.unknownphone.callblocker2"

    invoke-virtual {v0, v3}, Lcom/b/a/a/a/c;->d(Ljava/lang/String;)Lcom/b/a/a/a/h;

    move-result-object v6

    .line 85
    iget-object v0, p0, Lcom/unknownphone/callblocker/work/CustomService;->a:Lcom/b/a/a/a/c;

    const-string/jumbo v3, "inapp.unknownphone.callblocker3"

    invoke-virtual {v0, v3}, Lcom/b/a/a/a/c;->d(Ljava/lang/String;)Lcom/b/a/a/a/h;

    move-result-object v7

    .line 86
    if-eqz v5, :cond_0

    iget-object v0, v5, Lcom/b/a/a/a/h;->e:Lcom/b/a/a/a/e;

    iget-object v0, v0, Lcom/b/a/a/a/e;->c:Lcom/b/a/a/a/d;

    iget-boolean v0, v0, Lcom/b/a/a/a/d;->h:Z

    if-eqz v0, :cond_0

    move v4, v1

    .line 87
    :goto_0
    if-eqz v6, :cond_1

    iget-object v0, v6, Lcom/b/a/a/a/h;->e:Lcom/b/a/a/a/e;

    iget-object v0, v0, Lcom/b/a/a/a/e;->c:Lcom/b/a/a/a/d;

    iget-boolean v0, v0, Lcom/b/a/a/a/d;->h:Z

    if-eqz v0, :cond_1

    move v3, v1

    .line 88
    :goto_1
    if-eqz v7, :cond_2

    iget-object v0, v7, Lcom/b/a/a/a/h;->e:Lcom/b/a/a/a/e;

    iget-object v0, v0, Lcom/b/a/a/a/e;->c:Lcom/b/a/a/a/d;

    iget-boolean v0, v0, Lcom/b/a/a/a/d;->h:Z

    if-eqz v0, :cond_2

    move v0, v1

    .line 89
    :goto_2
    iget-object v8, p0, Lcom/unknownphone/callblocker/work/CustomService;->b:Landroid/content/SharedPreferences;

    const-string/jumbo v9, "subscription_ends_at"

    invoke-interface {v8, v9}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v8

    .line 90
    if-nez v4, :cond_3

    if-nez v3, :cond_3

    if-nez v0, :cond_3

    .line 91
    iget-object v0, p0, Lcom/unknownphone/callblocker/work/CustomService;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v3, "just_became_free"

    .line 92
    invoke-interface {v0, v3, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v3, "subscription_ends_at"

    .line 93
    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v3, "block_unknown_calls"

    .line 94
    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v3, "identify_spam_calls"

    .line 95
    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v2, "block_spam_calls"

    .line 96
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 97
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 118
    :goto_3
    invoke-virtual {p0}, Lcom/unknownphone/callblocker/work/CustomService;->stopSelf()V

    .line 119
    return-void

    :cond_0
    move v4, v2

    .line 86
    goto :goto_0

    :cond_1
    move v3, v2

    .line 87
    goto :goto_1

    :cond_2
    move v0, v2

    .line 88
    goto :goto_2

    .line 98
    :cond_3
    if-eqz v3, :cond_4

    .line 99
    iget-object v0, v6, Lcom/b/a/a/a/h;->e:Lcom/b/a/a/a/e;

    iget-object v0, v0, Lcom/b/a/a/a/e;->c:Lcom/b/a/a/a/d;

    iget-object v0, v0, Lcom/b/a/a/a/d;->d:Ljava/util/Date;

    .line 100
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 101
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 102
    invoke-virtual {v1, v10, v11}, Ljava/util/Calendar;->add(II)V

    .line 103
    iget-object v0, p0, Lcom/unknownphone/callblocker/work/CustomService;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v2, "subscription_ends_at"

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_3

    .line 104
    :cond_4
    if-eqz v4, :cond_5

    .line 105
    iget-object v0, v5, Lcom/b/a/a/a/h;->e:Lcom/b/a/a/a/e;

    iget-object v0, v0, Lcom/b/a/a/a/e;->c:Lcom/b/a/a/a/d;

    iget-object v0, v0, Lcom/b/a/a/a/d;->d:Ljava/util/Date;

    .line 106
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 107
    invoke-virtual {v2, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 108
    invoke-virtual {v2, v10, v1}, Ljava/util/Calendar;->add(II)V

    .line 109
    iget-object v0, p0, Lcom/unknownphone/callblocker/work/CustomService;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "subscription_ends_at"

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_3

    .line 111
    :cond_5
    iget-object v0, v7, Lcom/b/a/a/a/h;->e:Lcom/b/a/a/a/e;

    iget-object v0, v0, Lcom/b/a/a/a/e;->c:Lcom/b/a/a/a/d;

    iget-object v0, v0, Lcom/b/a/a/a/d;->d:Ljava/util/Date;

    .line 112
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 113
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 114
    invoke-virtual {v1, v10, v11}, Ljava/util/Calendar;->add(II)V

    .line 115
    const/4 v0, 0x6

    const/4 v2, 0x7

    invoke-virtual {v1, v0, v2}, Ljava/util/Calendar;->add(II)V

    .line 116
    iget-object v0, p0, Lcom/unknownphone/callblocker/work/CustomService;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v2, "subscription_ends_at"

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_3
.end method

.method public a()V
    .locals 0

    .prologue
    .line 71
    return-void
.end method

.method public a(ILjava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 75
    const-string/jumbo v0, "CustomService"

    const-string/jumbo v1, "onBillingError() was called."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-virtual {p0}, Lcom/unknownphone/callblocker/work/CustomService;->stopSelf()V

    .line 77
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/b/a/a/a/h;)V
    .locals 0

    .prologue
    .line 67
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 29
    const-string/jumbo v0, "CustomService"

    const-string/jumbo v1, "onCreate() was called."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/unknownphone/callblocker/work/CustomService;->c:Landroid/os/Handler;

    .line 31
    const-string/jumbo v0, "com.unknownphone.callblocker.PREFS"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/unknownphone/callblocker/work/CustomService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/unknownphone/callblocker/work/CustomService;->b:Landroid/content/SharedPreferences;

    .line 32
    const-string/jumbo v0, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAg/n5OPCfZKt31Wr3N97lYlj1E5zbMAFI/LLhsPP1uQqSioY5hUUBo4hjgfr9caMdt+w0xBINTDBW2S0hpEBa1/+rAb30eh+mBdPuQ84lva6/7eFl8tccX2dOSGq9XuQZfa2NREIOSizIGyhCeYgD2hpye5OUIhoy2JNPL65KqkSRnMO3r/hEr9ak+EVCb5BfadcZoLXX/iotW1CdxA56bz7fccemf5RwSHRDoTGUGwQWFtra0Syn5PCDoB+Q+Mp8HzVWtQSL7z+ZoMufL3+GMT/f2cVFCg/ixZOsNHLuf/Q/w/cnDb2olGlOYKXoLgncKxWl1paKkKS6G9i5akqK9QIDAQAB"

    invoke-static {p0, v0, p0}, Lcom/b/a/a/a/c;->a(Landroid/content/Context;Ljava/lang/String;Lcom/b/a/a/a/c$b;)Lcom/b/a/a/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/unknownphone/callblocker/work/CustomService;->a:Lcom/b/a/a/a/c;

    .line 33
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 56
    const-string/jumbo v0, "CustomService"

    const-string/jumbo v1, "onDestroy() was called."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    iget-object v0, p0, Lcom/unknownphone/callblocker/work/CustomService;->c:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unknownphone/callblocker/work/CustomService;->c:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/unknownphone/callblocker/work/CustomService;->a:Lcom/b/a/a/a/c;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/unknownphone/callblocker/work/CustomService;->a:Lcom/b/a/a/a/c;

    invoke-virtual {v0}, Lcom/b/a/a/a/c;->d()V

    .line 59
    :cond_1
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4

    .prologue
    .line 37
    iget-object v0, p0, Lcom/unknownphone/callblocker/work/CustomService;->a:Lcom/b/a/a/a/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unknownphone/callblocker/work/CustomService;->a:Lcom/b/a/a/a/c;

    invoke-virtual {v0}, Lcom/b/a/a/a/c;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/unknownphone/callblocker/work/CustomService;->a:Lcom/b/a/a/a/c;

    invoke-virtual {v0}, Lcom/b/a/a/a/c;->c()V

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/unknownphone/callblocker/work/CustomService;->c:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/unknownphone/callblocker/work/CustomService;->c:Landroid/os/Handler;

    new-instance v1, Lcom/unknownphone/callblocker/work/CustomService$1;

    invoke-direct {v1, p0}, Lcom/unknownphone/callblocker/work/CustomService$1;-><init>(Lcom/unknownphone/callblocker/work/CustomService;)V

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 45
    :cond_1
    const/4 v0, 0x2

    return v0
.end method
