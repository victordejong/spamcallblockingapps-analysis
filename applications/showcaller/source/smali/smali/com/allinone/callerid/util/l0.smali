.class public Lcom/allinone/callerid/util/l0;
.super Ljava/lang/Object;
.source "NotificationUtils.java"


# direct methods
.method public static a(Landroid/content/Context;)V
    .locals 1

    const-string v0, "notification"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    if-eqz p0, :cond_0

    const v0, 0x18707

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/NotificationManager;->cancel(I)V

    :cond_0
    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .locals 11

    const-string v0, "com.allinone.callerid_notfication_N"

    const-string v1, "Showcaller"

    .line 1
    :try_start_0
    invoke-static {}, Lcom/allinone/callerid/util/h1;->q0()Z

    move-result v2

    if-nez v2, :cond_2

    .line 2
    new-instance v2, Landroidx/core/app/h$e;

    invoke-direct {v2, p0, v1}, Landroidx/core/app/h$e;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 3
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v4, 0x10000000

    .line 4
    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f100006

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 6
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f10001d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/high16 v6, 0xc000000

    const/4 v7, 0x0

    .line 7
    invoke-static {p0, v7, v3, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 8
    new-instance v8, Landroid/content/Intent;

    const-string v9, "com.allinone.callerid.DISTURB_NOTIFICATION_TUENOFF"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v2, v3}, Landroidx/core/app/h$e;->i(Landroid/app/PendingIntent;)Landroidx/core/app/h$e;

    move-result-object v3

    .line 10
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f080283

    invoke-static {v9, v10}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroidx/core/app/h$e;->o(Landroid/graphics/Bitmap;)Landroidx/core/app/h$e;

    move-result-object v3

    .line 11
    invoke-virtual {v3, v4}, Landroidx/core/app/h$e;->k(Ljava/lang/CharSequence;)Landroidx/core/app/h$e;

    move-result-object v3

    const/4 v4, 0x1

    .line 12
    invoke-virtual {v3, v4}, Landroidx/core/app/h$e;->s(Z)Landroidx/core/app/h$e;

    move-result-object v3

    .line 13
    invoke-static {p0, v7, v8, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v3, v7, v5, v6}, Landroidx/core/app/h$e;->a(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroidx/core/app/h$e;

    .line 14
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v5, 0x15

    if-lt v3, v5, :cond_0

    const v5, 0x7f080285

    .line 15
    :try_start_1
    invoke-virtual {p0, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    :try_start_2
    invoke-virtual {v2, v5}, Landroidx/core/app/h$e;->v(I)Landroidx/core/app/h$e;

    .line 17
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f06003a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroidx/core/app/h$e;->h(I)Landroidx/core/app/h$e;

    goto :goto_0

    :catch_0
    move-exception p0

    .line 18
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-void

    :cond_0
    const v5, 0x7f080284

    .line 19
    invoke-virtual {v2, v5}, Landroidx/core/app/h$e;->v(I)Landroidx/core/app/h$e;

    :goto_0
    const-string v5, "notification"

    .line 20
    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    const/16 v5, 0x1a

    if-lt v3, v5, :cond_1

    .line 21
    new-instance v3, Landroid/app/NotificationChannel;

    const/4 v5, 0x3

    invoke-direct {v3, v0, v1, v5}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    if-eqz p0, :cond_1

    .line 22
    invoke-virtual {v3, v7}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    .line 23
    invoke-virtual {v3, v7}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    new-array v1, v4, [J

    const-wide/16 v4, 0x0

    aput-wide v4, v1, v7

    .line 24
    invoke-virtual {v3, v1}, Landroid/app/NotificationChannel;->setVibrationPattern([J)V

    .line 25
    invoke-virtual {p0, v3}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 26
    invoke-virtual {v2, v0}, Landroidx/core/app/h$e;->g(Ljava/lang/String;)Landroidx/core/app/h$e;

    :cond_1
    if-eqz p0, :cond_2

    const v0, 0x18707

    .line 27
    invoke-virtual {v2}, Landroidx/core/app/h$e;->b()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 28
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_1
    return-void
.end method
