.class public Lcom/allinone/callerid/mvc/controller/permission/OverlayPerActivity;
.super Lcom/allinone/callerid/main/BaseThemeActivity;
.source "OverlayPerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final u:Ljava/lang/String;

.field private v:Z

.field private w:Z

.field private x:Landroid/os/Handler;

.field private y:Ljava/util/Timer;

.field private z:Ljava/util/TimerTask;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/allinone/callerid/mvc/controller/permission/OverlayPerActivity;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/main/BaseThemeActivity;-><init>()V

    const-string v0, "OverlayPerActivity"

    .line 2
    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/permission/OverlayPerActivity;->u:Ljava/lang/String;

    .line 3
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/permission/OverlayPerActivity;->x:Landroid/os/Handler;

    return-void
.end method

.method private W()V
    .locals 4

    .line 1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100068

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10013f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1000bc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/allinone/callerid/mvc/controller/permission/OverlayPerActivity$e;

    invoke-direct {v2, p0}, Lcom/allinone/callerid/mvc/controller/permission/OverlayPerActivity$e;-><init>(Lcom/allinone/callerid/mvc/controller/permission/OverlayPerActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1002fd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/allinone/callerid/mvc/controller/permission/OverlayPerActivity$d;

    invoke-direct {v2, p0}, Lcom/allinone/callerid/mvc/controller/permission/OverlayPerActivity$d;-><init>(Lcom/allinone/callerid/mvc/controller/permission/OverlayPerActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    const/4 v1, -0x1

    .line 8
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06003a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    const/4 v1, -0x2

    .line 9
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06002f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    return-void
.end method

.method static synthetic X(Lcom/allinone/callerid/mvc/controller/permission/OverlayPerActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/permission/OverlayPerActivity;->b0()V

    return-void
.end method

.method static synthetic Y(Lcom/allinone/callerid/mvc/controller/permission/OverlayPerActivity;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/allinone/callerid/mvc/controller/permission/OverlayPerActivity;->c0(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic Z(Lcom/allinone/callerid/mvc/controller/permission/OverlayPerActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/permission/OverlayPerActivity;->a0()V

    return-void
.end method

.method private a0()V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2
    const-class v1, Lcom/allinone/callerid/mvc/controller/MainActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 3
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const/high16 v0, 0x7f010000

    const v1, 0x7f010001

    .line 4
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private b0()V
    .locals 3

    .line 1
    :try_start_0
    invoke-static {}, Lcom/allinone/callerid/util/j1/a;->h()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "tony"

    if-eqz v0, :cond_2

    .line 2
    :try_start_1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/permission/OverlayPerActivity;->z:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 3
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/permission/OverlayPerActivity;->y:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 4
    sget-boolean v0, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "\u5f00\u542f\u4e86"

    .line 5
    invoke-static {v1, v0}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 7
    const-class v1, Lcom/allinone/callerid/mvc/controller/MainActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 8
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const v0, 0x7f010001

    const/high16 v1, 0x7f010000

    .line 9
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 10
    invoke-static {}, Lcom/allinone/callerid/util/h1;->x0()Z

    move-result v2

    if-nez v2, :cond_1

    .line 11
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 12
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 13
    :cond_1
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    const-string v1, "overlay_per_open"

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/util/q;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 14
    :cond_2
    sget-boolean v0, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v0, :cond_3

    const-string v0, "\u672a\u5f00\u542f"

    .line 15
    invoke-static {v1, v0}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 16
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_0
    return-void
.end method

.method private c0(Landroid/content/Context;)V
    .locals 10

    const-string v0, "com.allinone.callerid_notfication_N"

    const-string v1, "Showcaller"

    .line 1
    :try_start_0
    invoke-static {}, Lcom/allinone/callerid/util/h1;->q0()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_1

    const-string v3, "notification"

    .line 3
    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 4
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/allinone/callerid/mvc/controller/MainActivity;

    invoke-direct {v4, p1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v5, "open_notifi_overlay"

    const/4 v6, 0x1

    .line 5
    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v5, 0x10000000

    .line 6
    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v5, 0xc000000

    .line 7
    invoke-static {p1, v6, v4, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 8
    new-instance v5, Landroidx/core/app/h$e;

    invoke-direct {v5, p1, v1}, Landroidx/core/app/h$e;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f1000d0

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroidx/core/app/h$e;->j(Ljava/lang/CharSequence;)Landroidx/core/app/h$e;

    move-result-object v7

    .line 10
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f1000b4

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroidx/core/app/h$e;->k(Ljava/lang/CharSequence;)Landroidx/core/app/h$e;

    move-result-object v7

    .line 11
    invoke-virtual {v7, v4}, Landroidx/core/app/h$e;->i(Landroid/app/PendingIntent;)Landroidx/core/app/h$e;

    move-result-object v4

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v4, v7, v8}, Landroidx/core/app/h$e;->B(J)Landroidx/core/app/h$e;

    move-result-object v4

    const/4 v7, 0x0

    .line 13
    invoke-virtual {v4, v7}, Landroidx/core/app/h$e;->f(Z)Landroidx/core/app/h$e;

    move-result-object v4

    .line 14
    invoke-virtual {v4, v6}, Landroidx/core/app/h$e;->s(Z)Landroidx/core/app/h$e;

    const/16 v4, 0x1a

    if-lt v2, v4, :cond_0

    .line 15
    new-instance v2, Landroid/app/NotificationChannel;

    const/4 v4, 0x3

    invoke-direct {v2, v0, v1, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    if-eqz v3, :cond_0

    .line 16
    invoke-virtual {v2, v7}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    .line 17
    invoke-virtual {v3, v2}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 18
    invoke-virtual {v5, v0}, Landroidx/core/app/h$e;->g(Ljava/lang/String;)Landroidx/core/app/h$e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    const v0, 0x7f080270

    .line 19
    :try_start_1
    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    :try_start_2
    invoke-virtual {v5, v0}, Landroidx/core/app/h$e;->v(I)Landroidx/core/app/h$e;

    .line 21
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f06003a

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {v5, p1}, Landroidx/core/app/h$e;->h(I)Landroidx/core/app/h$e;

    const p1, 0x314c2

    .line 22
    invoke-virtual {v5}, Landroidx/core/app/h$e;->b()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v3, p1, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    :catch_0
    move-exception p1

    .line 23
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 24
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method private d0()V
    .locals 4

    .line 1
    :try_start_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/allinone/callerid/mvc/controller/permission/OverlayPerActivity$c;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/mvc/controller/permission/OverlayPerActivity$c;-><init>(Lcom/allinone/callerid/mvc/controller/permission/OverlayPerActivity;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0901fc

    if-eq p1, v0, :cond_3

    const v0, 0x7f09022f

    if-eq p1, v0, :cond_1

    const v0, 0x7f090723

    if-eq p1, v0, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/allinone/callerid/mvc/controller/permission/OverlayPerTipsActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const/high16 p1, 0x7f010000

    const v0, 0x7f010001

    .line 4
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_0

    .line 5
    :cond_1
    :try_start_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p1, v0, :cond_4

    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lcom/allinone/callerid/mvc/controller/permission/OverlayPerActivity;->w:Z

    .line 7
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/permission/OverlayPerActivity;->d0()V

    .line 8
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.action.MANAGE_OVERLAY_PERMISSION"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v0, 0x10000000

    .line 9
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 10
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 11
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p1

    const-string v0, "overlay_per_click"

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/util/q;->d(Ljava/lang/String;)V

    .line 12
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/permission/OverlayPerActivity;->z:Ljava/util/TimerTask;

    if-eqz p1, :cond_2

    .line 13
    invoke-virtual {p1}, Ljava/util/TimerTask;->cancel()Z

    .line 14
    :cond_2
    new-instance v1, Lcom/allinone/callerid/mvc/controller/permission/OverlayPerActivity$b;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/mvc/controller/permission/OverlayPerActivity$b;-><init>(Lcom/allinone/callerid/mvc/controller/permission/OverlayPerActivity;)V

    iput-object v1, p0, Lcom/allinone/callerid/mvc/controller/permission/OverlayPerActivity;->z:Ljava/util/TimerTask;

    .line 15
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/permission/OverlayPerActivity;->y:Ljava/util/Timer;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x1f4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 16
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 17
    :cond_3
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/permission/OverlayPerActivity;->W()V

    .line 18
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p1

    const-string v0, "overlay_per_not_now"

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/util/q;->d(Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 1
    invoke-super {p0, p1}, Lcom/allinone/callerid/main/BaseThemeActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0047

    .line 2
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/allinone/callerid/util/h1;->f0(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 4
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt p1, v1, :cond_0

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutDirection(I)V

    .line 6
    :cond_0
    invoke-static {}, Lcom/allinone/callerid/util/f1;->b()Landroid/graphics/Typeface;

    move-result-object p1

    const v1, 0x7f090721

    .line 7
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v1, 0x7f09062c

    .line 8
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v1, 0x7f0906e9

    .line 9
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v1, 0x7f09022f

    .line 10
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    const v2, 0x7f0901fc

    .line 11
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    const v3, 0x7f090723

    .line 12
    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 13
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f1002a9

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " <font color=\"#0084FF\"><u>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f100371

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "</u></font>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    .line 15
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 17
    invoke-virtual {v1, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    invoke-virtual {v2, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    iput-boolean v0, p0, Lcom/allinone/callerid/mvc/controller/permission/OverlayPerActivity;->v:Z

    .line 21
    new-instance p1, Ljava/util/Timer;

    invoke-direct {p1}, Ljava/util/Timer;-><init>()V

    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/permission/OverlayPerActivity;->y:Ljava/util/Timer;

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/allinone/callerid/mvc/controller/permission/OverlayPerActivity;->c0(Landroid/content/Context;)V

    .line 2
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/permission/OverlayPerActivity;->a0()V

    const/4 p1, 0x1

    return p1

    .line 3
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onPause()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/allinone/callerid/main/BaseThemeActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/allinone/callerid/main/BaseThemeActivity;->onResume()V

    .line 2
    :try_start_0
    sget-boolean v0, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "tony"

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume_isRequest:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/allinone/callerid/mvc/controller/permission/OverlayPerActivity;->w:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :cond_0
    iget-boolean v0, p0, Lcom/allinone/callerid/mvc/controller/permission/OverlayPerActivity;->v:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 5
    iput-boolean v1, p0, Lcom/allinone/callerid/mvc/controller/permission/OverlayPerActivity;->v:Z

    .line 6
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    const-string v2, "overlay_per_show"

    invoke-virtual {v0, v2}, Lcom/allinone/callerid/util/q;->d(Ljava/lang/String;)V

    .line 7
    :cond_1
    iget-boolean v0, p0, Lcom/allinone/callerid/mvc/controller/permission/OverlayPerActivity;->w:Z

    if-eqz v0, :cond_2

    .line 8
    iput-boolean v1, p0, Lcom/allinone/callerid/mvc/controller/permission/OverlayPerActivity;->w:Z

    .line 9
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/permission/OverlayPerActivity;->x:Landroid/os/Handler;

    new-instance v1, Lcom/allinone/callerid/mvc/controller/permission/OverlayPerActivity$a;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/mvc/controller/permission/OverlayPerActivity$a;-><init>(Lcom/allinone/callerid/mvc/controller/permission/OverlayPerActivity;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 10
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/permission/OverlayPerActivity;->z:Ljava/util/TimerTask;

    if-eqz v0, :cond_2

    .line 11
    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method
