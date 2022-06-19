.class public Lcom/allinone/callerid/util/d;
.super Ljava/lang/Object;
.source "CallerUtils.java"


# direct methods
.method public static a(Landroid/content/Context;)V
    .locals 9

    const-string v0, "com.allinone.callerid_notfication_N"

    const-string v1, "Showcaller"

    .line 1
    :try_start_0
    invoke-static {}, Lcom/allinone/callerid/util/h1;->q0()Z

    move-result v2

    if-nez v2, :cond_2

    .line 2
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v2

    const-string v3, "wakeapp_noti"

    invoke-virtual {v2, v3}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    const-string v2, "notification"

    .line 3
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 4
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/allinone/callerid/mvc/controller/MainActivity;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "launchapp"

    const/4 v5, 0x1

    .line 5
    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v4, 0xc000000

    .line 6
    invoke-static {p0, v5, v3, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 7
    new-instance v4, Landroidx/core/app/h$e;

    invoke-direct {v4, p0, v1}, Landroidx/core/app/h$e;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 8
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x1a

    if-lt v6, v7, :cond_0

    .line 9
    new-instance v7, Landroid/app/NotificationChannel;

    const/4 v8, 0x3

    invoke-direct {v7, v0, v1, v8}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    if-eqz v2, :cond_0

    .line 10
    invoke-virtual {v2, v7}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 11
    invoke-virtual {v4, v0}, Landroidx/core/app/h$e;->g(Ljava/lang/String;)Landroidx/core/app/h$e;

    .line 12
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v7, 0x7f100236

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroidx/core/app/h$e;->k(Ljava/lang/CharSequence;)Landroidx/core/app/h$e;

    move-result-object v0

    .line 13
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f100235

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroidx/core/app/h$e;->j(Ljava/lang/CharSequence;)Landroidx/core/app/h$e;

    move-result-object v0

    .line 14
    invoke-virtual {v0, v3}, Landroidx/core/app/h$e;->i(Landroid/app/PendingIntent;)Landroidx/core/app/h$e;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/core/app/h$e;->y(Ljava/lang/CharSequence;)Landroidx/core/app/h$e;

    move-result-object v0

    .line 15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v0, v7, v8}, Landroidx/core/app/h$e;->B(J)Landroidx/core/app/h$e;

    move-result-object v0

    const/4 v1, 0x0

    .line 16
    invoke-virtual {v0, v1}, Landroidx/core/app/h$e;->t(I)Landroidx/core/app/h$e;

    move-result-object v0

    .line 17
    invoke-virtual {v0, v1}, Landroidx/core/app/h$e;->s(Z)Landroidx/core/app/h$e;

    move-result-object v0

    .line 18
    invoke-virtual {v0, v5}, Landroidx/core/app/h$e;->f(Z)Landroidx/core/app/h$e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v0, 0x15

    if-lt v6, v0, :cond_1

    const v0, 0x7f080270

    .line 19
    :try_start_1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    :try_start_2
    invoke-virtual {v4, v0}, Landroidx/core/app/h$e;->v(I)Landroidx/core/app/h$e;

    .line 21
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f06003a

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {v4, p0}, Landroidx/core/app/h$e;->h(I)Landroidx/core/app/h$e;

    goto :goto_0

    :catch_0
    move-exception p0

    .line 22
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-void

    :cond_1
    const v0, 0x7f080196

    .line 23
    invoke-virtual {v4, v0}, Landroidx/core/app/h$e;->v(I)Landroidx/core/app/h$e;

    .line 24
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const/high16 v0, 0x7f0d0000

    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {v4, p0}, Landroidx/core/app/h$e;->o(Landroid/graphics/Bitmap;)Landroidx/core/app/h$e;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_1
    move-exception p0

    .line 25
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    if-eqz v2, :cond_2

    const/16 p0, 0x42

    .line 26
    invoke-virtual {v4}, Landroidx/core/app/h$e;->b()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v2, p0, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 27
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_1
    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .locals 10
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    const-string v0, "com.allinone.callerid_notfication_N"

    const-string v1, "Showcaller"

    .line 1
    :try_start_0
    invoke-static {}, Lcom/allinone/callerid/util/h1;->q0()Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "notification"

    .line 2
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 3
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.settings.action.MANAGE_OVERLAY_PERMISSION"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "package:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v4, 0x10000000

    .line 4
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 5
    new-instance v5, Landroid/content/Intent;

    const-class v6, Lcom/allinone/callerid/mvc/controller/permission/OverlayGuideActivity;

    invoke-direct {v5, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v6, "open_notifi"

    const/4 v7, 0x1

    .line 6
    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 7
    invoke-virtual {v5, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 v4, 0x2

    new-array v4, v4, [Landroid/content/Intent;

    const/4 v6, 0x0

    aput-object v3, v4, v6

    aput-object v5, v4, v7

    const/high16 v3, 0xc000000

    .line 8
    invoke-static {p0, v7, v4, v3}, Landroid/app/PendingIntent;->getActivities(Landroid/content/Context;I[Landroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 9
    new-instance v4, Landroidx/core/app/h$e;

    invoke-direct {v4, p0, v1}, Landroidx/core/app/h$e;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 10
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x1a

    if-lt v5, v8, :cond_0

    .line 11
    new-instance v8, Landroid/app/NotificationChannel;

    const/4 v9, 0x3

    invoke-direct {v8, v0, v1, v9}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    if-eqz v2, :cond_0

    .line 12
    invoke-virtual {v2, v8}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 13
    invoke-virtual {v4, v0}, Landroidx/core/app/h$e;->g(Ljava/lang/String;)Landroidx/core/app/h$e;

    .line 14
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v8, 0x7f10023a

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroidx/core/app/h$e;->k(Ljava/lang/CharSequence;)Landroidx/core/app/h$e;

    move-result-object v0

    .line 15
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f100237

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroidx/core/app/h$e;->j(Ljava/lang/CharSequence;)Landroidx/core/app/h$e;

    move-result-object v0

    .line 16
    invoke-virtual {v0, v3}, Landroidx/core/app/h$e;->i(Landroid/app/PendingIntent;)Landroidx/core/app/h$e;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/core/app/h$e;->y(Ljava/lang/CharSequence;)Landroidx/core/app/h$e;

    move-result-object v0

    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Landroidx/core/app/h$e;->B(J)Landroidx/core/app/h$e;

    move-result-object v0

    .line 18
    invoke-virtual {v0, v6}, Landroidx/core/app/h$e;->t(I)Landroidx/core/app/h$e;

    move-result-object v0

    .line 19
    invoke-virtual {v0, v6}, Landroidx/core/app/h$e;->s(Z)Landroidx/core/app/h$e;

    move-result-object v0

    .line 20
    invoke-virtual {v0, v7}, Landroidx/core/app/h$e;->f(Z)Landroidx/core/app/h$e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v0, 0x15

    if-lt v5, v0, :cond_1

    const v0, 0x7f080270

    .line 21
    :try_start_1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    :try_start_2
    invoke-virtual {v4, v0}, Landroidx/core/app/h$e;->v(I)Landroidx/core/app/h$e;

    .line 23
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f06003a

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {v4, p0}, Landroidx/core/app/h$e;->h(I)Landroidx/core/app/h$e;

    goto :goto_0

    :catch_0
    move-exception p0

    .line 24
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-void

    :cond_1
    const v0, 0x7f080196

    .line 25
    invoke-virtual {v4, v0}, Landroidx/core/app/h$e;->v(I)Landroidx/core/app/h$e;

    .line 26
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const/high16 v0, 0x7f0d0000

    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {v4, p0}, Landroidx/core/app/h$e;->o(Landroid/graphics/Bitmap;)Landroidx/core/app/h$e;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_1
    move-exception p0

    .line 27
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    if-eqz v2, :cond_2

    const/16 p0, 0x4d

    .line 28
    invoke-virtual {v4}, Landroidx/core/app/h$e;->b()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v2, p0, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 29
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_1
    return-void
.end method

.method public static c(Landroid/content/Context;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lcom/allinone/callerid/util/i0;->a()Lcom/allinone/callerid/util/i0;

    move-result-object v0

    iget-object v0, v0, Lcom/allinone/callerid/util/i0;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/allinone/callerid/util/d$b;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/util/d$b;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static d(Landroid/content/Context;)V
    .locals 5

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1002f4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "shortcutdial"

    const/4 v3, 0x1

    .line 3
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "duplicate"

    const/4 v4, 0x0

    .line 5
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v3, "android.intent.extra.shortcut.INTENT"

    .line 6
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.shortcut.NAME"

    .line 7
    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.extra.shortcut.ICON_RESOURCE"

    const v1, 0x7f0801ca

    .line 8
    invoke-static {p0, v1}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v0, "com.android.launcher.action.INSTALL_SHORTCUT"

    .line 9
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 10
    invoke-virtual {p0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 11
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static e()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10020f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static f()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1002a2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static g(Landroid/content/Context;)V
    .locals 10

    const-string v0, "initoverlayview"

    const-string v1, "window"

    .line 1
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    const/4 v2, 0x0

    .line 2
    :try_start_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x11

    if-lt v3, v4, :cond_0

    .line 3
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 4
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 5
    iget v1, v3, Landroid/graphics/Point;->x:I

    goto :goto_0

    .line 6
    :cond_0
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 7
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 8
    iget v1, v3, Landroid/util/DisplayMetrics;->widthPixels:I
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    nop

    .line 9
    sget-boolean v1, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v1, :cond_1

    const-string v1, "it can\'t work"

    .line 10
    invoke-static {v0, v1}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :catch_1
    :cond_1
    const/4 v1, 0x0

    .line 11
    :goto_0
    sget-boolean v3, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v3, :cond_2

    .line 12
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "screenWidth:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const/16 v3, 0x1e0

    const/4 v4, 0x1

    if-eqz v1, :cond_3

    if-gt v1, v3, :cond_3

    .line 13
    invoke-static {v4}, Lcom/allinone/callerid/util/a1;->d2(I)V

    .line 14
    :cond_3
    :try_start_1
    sget-boolean v5, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v5, :cond_4

    .line 15
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "hight:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/allinone/callerid/util/a1;->B0()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "phone_type:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/allinone/callerid/util/h1;->O()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " phone_model:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/allinone/callerid/util/h1;->N()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    :cond_4
    invoke-static {}, Lcom/allinone/callerid/util/h1;->O()Ljava/lang/String;

    move-result-object v0

    const/4 v5, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/4 v7, 0x4

    const/4 v8, 0x3

    const/4 v9, 0x2

    sparse-switch v6, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v2, "samsung"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v2, 0x3

    goto :goto_2

    :sswitch_1
    const-string v2, "vivo"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v2, 0x1

    goto :goto_2

    :sswitch_2
    const-string v2, "OPPO"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v2, 0x2

    goto :goto_2

    :sswitch_3
    const-string v2, "LGE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v2, 0x4

    goto :goto_2

    :sswitch_4
    const-string v6, "Xiaomi"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_2

    :cond_5
    :goto_1
    const/4 v2, -0x1

    :goto_2
    const/16 v0, 0x24c

    if-eqz v2, :cond_17

    if-eq v2, v4, :cond_16

    const/16 p0, 0x2d0

    if-eq v2, v9, :cond_15

    const/16 v4, 0x438

    if-eq v2, v8, :cond_8

    if-eq v2, v7, :cond_6

    goto/16 :goto_3

    :cond_6
    const-string p0, "Nexus 5"

    .line 18
    invoke-static {}, Lcom/allinone/callerid/util/h1;->N()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    if-ne v1, v4, :cond_7

    const/16 p0, 0x23b

    .line 19
    invoke-static {p0}, Lcom/allinone/callerid/util/a1;->j2(I)V

    goto/16 :goto_3

    :cond_7
    const-string p0, "Nexus 4"

    .line 20
    invoke-static {}, Lcom/allinone/callerid/util/h1;->N()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_18

    const/16 p0, 0x300

    if-ne v1, p0, :cond_18

    const/16 p0, 0x1dd

    .line 21
    invoke-static {p0}, Lcom/allinone/callerid/util/a1;->j2(I)V

    goto/16 :goto_3

    :cond_8
    const-string v2, "SM-J200G"

    .line 22
    invoke-static {}, Lcom/allinone/callerid/util/h1;->N()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/16 v5, 0x204

    const/16 v6, 0x21c

    if-eqz v2, :cond_9

    if-ne v1, v6, :cond_9

    .line 23
    invoke-static {v5}, Lcom/allinone/callerid/util/a1;->j2(I)V

    goto/16 :goto_3

    :cond_9
    const-string v2, "SM-G610F"

    .line 24
    invoke-static {}, Lcom/allinone/callerid/util/h1;->N()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    if-ne v1, v4, :cond_a

    .line 25
    invoke-static {v0}, Lcom/allinone/callerid/util/a1;->j2(I)V

    goto/16 :goto_3

    :cond_a
    const-string v2, "SM-J700H"

    .line 26
    invoke-static {}, Lcom/allinone/callerid/util/h1;->N()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/16 v7, 0x128

    if-eqz v2, :cond_b

    if-ne v1, p0, :cond_b

    .line 27
    invoke-static {v7}, Lcom/allinone/callerid/util/a1;->j2(I)V

    goto/16 :goto_3

    :cond_b
    const-string v2, "SM-J700F"

    .line 28
    invoke-static {}, Lcom/allinone/callerid/util/h1;->N()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    if-ne v1, p0, :cond_c

    .line 29
    invoke-static {v7}, Lcom/allinone/callerid/util/a1;->j2(I)V

    goto/16 :goto_3

    :cond_c
    const-string v2, "GT-I9060I"

    .line 30
    invoke-static {}, Lcom/allinone/callerid/util/h1;->N()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    if-ne v1, v3, :cond_d

    .line 31
    invoke-static {v7}, Lcom/allinone/callerid/util/a1;->j2(I)V

    goto/16 :goto_3

    :cond_d
    const-string v2, "Galaxy Note3"

    .line 32
    invoke-static {}, Lcom/allinone/callerid/util/h1;->N()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    if-ne v1, v4, :cond_e

    .line 33
    invoke-static {v7}, Lcom/allinone/callerid/util/a1;->j2(I)V

    goto/16 :goto_3

    :cond_e
    const-string v2, "SM-G532F"

    .line 34
    invoke-static {}, Lcom/allinone/callerid/util/h1;->N()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    if-ne v1, v6, :cond_f

    .line 35
    invoke-static {v7}, Lcom/allinone/callerid/util/a1;->j2(I)V

    goto/16 :goto_3

    :cond_f
    const-string v2, "SM-J710F"

    .line 36
    invoke-static {}, Lcom/allinone/callerid/util/h1;->N()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    if-ne v1, p0, :cond_10

    .line 37
    invoke-static {v7}, Lcom/allinone/callerid/util/a1;->j2(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_3

    :cond_10
    const-string v2, "6.0.1"

    if-ne v1, v6, :cond_12

    :try_start_2
    const-string p0, "5.1.1"

    .line 38
    invoke-static {}, Lcom/allinone/callerid/util/h1;->R()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_11

    .line 39
    invoke-static {v5}, Lcom/allinone/callerid/util/a1;->j2(I)V

    goto :goto_3

    .line 40
    :cond_11
    invoke-static {}, Lcom/allinone/callerid/util/h1;->R()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_18

    .line 41
    invoke-static {v7}, Lcom/allinone/callerid/util/a1;->j2(I)V

    goto :goto_3

    :cond_12
    if-ne v1, p0, :cond_13

    .line 42
    invoke-static {v7}, Lcom/allinone/callerid/util/a1;->j2(I)V

    goto :goto_3

    :cond_13
    if-ne v1, v4, :cond_18

    const-string p0, "4.3"

    .line 43
    invoke-static {}, Lcom/allinone/callerid/util/h1;->R()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_14

    .line 44
    invoke-static {v7}, Lcom/allinone/callerid/util/a1;->j2(I)V

    goto :goto_3

    .line 45
    :cond_14
    invoke-static {}, Lcom/allinone/callerid/util/h1;->R()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_18

    .line 46
    invoke-static {v0}, Lcom/allinone/callerid/util/a1;->j2(I)V

    goto :goto_3

    :cond_15
    if-ne v1, p0, :cond_18

    const/16 p0, 0x15e

    .line 47
    invoke-static {p0}, Lcom/allinone/callerid/util/a1;->j2(I)V

    goto :goto_3

    :cond_16
    const/4 v0, 0x0

    .line 48
    invoke-static {p0, v0}, Lcom/allinone/callerid/util/j;->a(Landroid/content/Context;F)I

    move-result p0

    invoke-static {p0}, Lcom/allinone/callerid/util/a1;->j2(I)V

    goto :goto_3

    :cond_17
    const-string p0, "Redmi Note 4"

    .line 49
    invoke-static {}, Lcom/allinone/callerid/util/h1;->N()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_18

    .line 50
    invoke-static {v0}, Lcom/allinone/callerid/util/a1;->j2(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception p0

    .line 51
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_18
    :goto_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x63e01f25 -> :sswitch_4
        0x1262a -> :sswitch_3
        0x251fa0 -> :sswitch_2
        0x373cac -> :sswitch_1
        0x6f28bffa -> :sswitch_0
    .end sparse-switch
.end method

.method public static h(Ljava/lang/String;J)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/allinone/callerid/util/i0;->a()Lcom/allinone/callerid/util/i0;

    move-result-object v0

    iget-object v0, v0, Lcom/allinone/callerid/util/i0;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/allinone/callerid/util/d$a;

    invoke-direct {v1, p0, p1, p2}, Lcom/allinone/callerid/util/d$a;-><init>(Ljava/lang/String;J)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
