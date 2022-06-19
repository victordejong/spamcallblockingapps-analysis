.class public Lcom/kedlin/cca/core/CCAApplication;
.super Landroid/app/Application;
.source ""

# interfaces
.implements Lfa1$c;
.implements Lfa1$b;


# instance fields
.field public a:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    new-instance v0, Lcom/kedlin/cca/core/CCAApplication$b;

    invoke-direct {v0, p0}, Lcom/kedlin/cca/core/CCAApplication$b;-><init>(Lcom/kedlin/cca/core/CCAApplication;)V

    iput-object v0, p0, Lcom/kedlin/cca/core/CCAApplication;->a:Landroid/content/BroadcastReceiver;

    invoke-static {p0}, Lfa1;->L(Landroid/app/Application;)V

    return-void
.end method

.method public static synthetic g()V
    .locals 1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    invoke-static {p1}, Loe1;->W(Z)V

    return-void
.end method

.method public attachBaseContext(Landroid/content/Context;)V
    .locals 0

    invoke-static {p1}, Lke1;->d(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    invoke-static {p0}, Loz;->l(Landroid/content/Context;)V

    return-void
.end method

.method public b()Ljava/lang/Class;
    .locals 1

    const-class v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/kedlin/cca/core/CCAService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v1, Lcom/kedlin/cca/core/CCAService;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lcom/kedlin/cca/core/CCAService;->C:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p0, v0}, Lfa1;->O(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public d()I
    .locals 1

    const v0, 0x7f08038a

    return v0
.end method

.method public e(Lq71$e;Li91;Ljava/lang/String;Ln91$b;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/kedlin/cca/core/CCAService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-boolean v1, p4, Ln91$b;->b:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/kedlin/cca/core/CCAService;->n:Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/kedlin/cca/core/CCAService;->o:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lcom/kedlin/cca/core/CCAService;->u:Ljava/lang/String;

    invoke-virtual {p2}, Li91;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object p2, Lcom/kedlin/cca/core/CCAService;->v:Ljava/lang/String;

    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object p2, Lcom/kedlin/cca/core/CCAService;->w:Ljava/lang/String;

    iget-object p3, p4, Ln91$b;->a:Ln91$a;

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object p2, Lcom/kedlin/cca/core/CCAService;->x:Ljava/lang/String;

    iget-object p3, p4, Ln91$b;->g:Ljava/lang/Integer;

    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    sget-object p2, Lcom/kedlin/cca/core/CCAService;->y:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object p1, Lcom/kedlin/cca/core/CCAService;->z:Ljava/lang/String;

    iget-object p2, p4, Ln91$b;->f:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p0, v0}, Lfa1;->O(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    const-string v0, "com.flexaspect.android.everycallcontrol"

    return-object v0
.end method

.method public h()V
    .locals 7

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-wide/16 v1, 0x3e8

    const/16 v3, 0x1c

    if-gt v0, v3, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v3, 0x1e240

    const/high16 v4, 0x10000000

    invoke-static {p0, v3, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    const-string v3, "alarm"

    invoke-virtual {p0, v3}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AlarmManager;

    if-eqz v3, :cond_1

    const/4 v4, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    add-long/2addr v5, v1

    invoke-virtual {v3, v4, v5, v6, v0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/16 v3, 0x3c9

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/kedlin/cca/core/CCAApplication;->i(Landroid/content/Context;JI)V

    :cond_1
    :goto_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sget-object v1, Lc61;->a:Lc61;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public i(Landroid/content/Context;JI)V
    .locals 7

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    invoke-static {p0, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    new-instance v2, Lz7$e;

    const-string v3, "phone_default"

    invoke-direct {v2, p0, v3}, Lz7$e;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v3, 0x7f080378

    invoke-virtual {v2, v3}, Lz7$e;->F(I)Lz7$e;

    new-instance v3, Lz7$c;

    invoke-direct {v3}, Lz7$c;-><init>()V

    const v4, 0x7f110623

    invoke-virtual {p0, v4}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lz7$c;->m(Ljava/lang/CharSequence;)Lz7$c;

    const v5, 0x7f110622

    invoke-virtual {p0, v5}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lz7$c;->l(Ljava/lang/CharSequence;)Lz7$c;

    invoke-virtual {v2, v3}, Lz7$e;->H(Lz7$g;)Lz7$e;

    invoke-virtual {p0, v4}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lz7$e;->r(Ljava/lang/CharSequence;)Lz7$e;

    invoke-virtual {p0, v5}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lz7$e;->q(Ljava/lang/CharSequence;)Lz7$e;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lz7$e;->C(I)Lz7$e;

    const-string v4, "recommendation"

    invoke-virtual {v2, v4}, Lz7$e;->l(Ljava/lang/String;)Lz7$e;

    const/4 v4, 0x1

    invoke-virtual {v2, v0, v4}, Lz7$e;->v(Landroid/app/PendingIntent;Z)Lz7$e;

    invoke-virtual {v2, v4}, Lz7$e;->j(Z)Lz7$e;

    invoke-virtual {v2}, Lz7$e;->c()Landroid/app/Notification;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    const-class v4, Lcom/kedlin/cca/receivers/EventReceiver;

    invoke-direct {v2, p1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v4, Lcom/kedlin/cca/receivers/EventReceiver;->c:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v4, Lcom/kedlin/cca/receivers/EventReceiver;->a:Ljava/lang/String;

    invoke-virtual {v2, v4, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object v4, Lcom/kedlin/cca/receivers/EventReceiver;->b:Ljava/lang/String;

    invoke-virtual {v2, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-static {p1, p4, v2, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    add-long/2addr v0, p2

    const-string p2, "alarm"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AlarmManager;

    if-eqz p1, :cond_0

    invoke-virtual {p1, v3, v0, v1, p4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    :cond_0
    return-void
.end method

.method public j()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/kedlin/cca/core/CCAService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/app/Application;->stopService(Landroid/content/Intent;)Z

    invoke-static {p0}, Ls71;->c(Landroid/content/Context;)V

    invoke-static {}, Lr71;->l()V

    invoke-static {}, Lu71;->f()V

    invoke-static {}, Lv91;->k()V

    invoke-virtual {p0}, Lcom/kedlin/cca/core/CCAApplication;->h()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-static {p0}, Lke1;->d(Landroid/content/Context;)Landroid/content/Context;

    return-void
.end method

.method public onCreate()V
    .locals 3

    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Lcom/kedlin/cca/receivers/ScreenLockReceiver;

    invoke-direct {v1}, Lcom/kedlin/cca/receivers/ScreenLockReceiver;-><init>()V

    invoke-virtual {p0, v1, v0}, Landroid/app/Application;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x3

    invoke-static {v0}, Lj91;->y(I)V

    invoke-static {v0}, Lj91;->A(I)V

    invoke-static {}, Lfa1;->r()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x7

    invoke-static {v0}, Lj91;->y(I)V

    invoke-static {}, Lj91;->h()V

    new-instance v0, Lcom/kedlin/cca/core/CCAApplication$a;

    invoke-direct {v0, p0}, Lcom/kedlin/cca/core/CCAApplication$a;-><init>(Lcom/kedlin/cca/core/CCAApplication;)V

    invoke-static {v0}, Lj91;->z(Lj91$d;)V

    :cond_0
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lb91;->u(Landroid/content/Context;Z)V

    invoke-static {}, Ls71;->e()V

    invoke-static {}, Lw91;->a()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sget-object v1, Laa1;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-static {p0}, Lnf;->b(Landroid/content/Context;)Lnf;

    move-result-object v1

    iget-object v2, p0, Lcom/kedlin/cca/core/CCAApplication;->a:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lnf;->c(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    invoke-static {p0}, Lh61;->g(Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method public onTerminate()V
    .locals 0

    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    return-void
.end method
