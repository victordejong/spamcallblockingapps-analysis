.class public Lcom/callerid/block/service/MyFirebaseMessagingService;
.super Lcom/google/firebase/messaging/FirebaseMessagingService;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/messaging/FirebaseMessagingService;-><init>()V

    return-void
.end method

.method private t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    const-string v0, "com.callerid.block_notfication_N"

    const-string v1, "open_subscription"

    const-string v2, "open_offline"

    const-string v3, "Caller ID"

    :try_start_0
    invoke-static {}, Lcom/callerid/block/util/t0;->U()Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "notification"

    invoke-virtual {p0, v4}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    const/high16 v6, 0x10000000

    invoke-virtual {v5, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_0

    const-class p3, Lcom/callerid/block/main/MainActivity;

    invoke-virtual {v5, p0, p3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string p3, "offline_notifi"

    invoke-virtual {v5, p3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-class p3, Lcom/callerid/block/main/MainActivity;

    invoke-virtual {v5, p0, p3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {v5, v1, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0

    :cond_1
    const-string v1, "open_version_update"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    new-instance v5, Landroid/content/Intent;

    const-string p3, "android.intent.action.VIEW"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://play.google.com/store/apps/details?id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v5, p3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_0

    :cond_2
    const-class p3, Lcom/callerid/block/main/MainActivity;

    invoke-virtual {v5, p0, p3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    :goto_0
    const/high16 p3, 0x8000000

    invoke-static {p0, v8, v5, p3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p3

    new-instance v1, Landroidx/core/app/i$e;

    invoke-direct {v1, p0, v3}, Landroidx/core/app/i$e;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1a

    if-lt v2, v5, :cond_3

    new-instance v5, Landroid/app/NotificationChannel;

    const/4 v6, 0x3

    invoke-direct {v5, v0, v3, v6}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    if-eqz v4, :cond_3

    invoke-virtual {v4, v5}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    invoke-virtual {v1, v0}, Landroidx/core/app/i$e;->f(Ljava/lang/String;)Landroidx/core/app/i$e;

    :cond_3
    invoke-virtual {v1, p1}, Landroidx/core/app/i$e;->j(Ljava/lang/CharSequence;)Landroidx/core/app/i$e;

    invoke-virtual {v1, p2}, Landroidx/core/app/i$e;->i(Ljava/lang/CharSequence;)Landroidx/core/app/i$e;

    invoke-virtual {v1, p3}, Landroidx/core/app/i$e;->h(Landroid/app/PendingIntent;)Landroidx/core/app/i$e;

    invoke-virtual {v1, v3}, Landroidx/core/app/i$e;->x(Ljava/lang/CharSequence;)Landroidx/core/app/i$e;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-virtual {v1, p1, p2}, Landroidx/core/app/i$e;->A(J)Landroidx/core/app/i$e;

    const/4 p1, 0x0

    invoke-virtual {v1, p1}, Landroidx/core/app/i$e;->s(I)Landroidx/core/app/i$e;

    invoke-virtual {v1, p1}, Landroidx/core/app/i$e;->r(Z)Landroidx/core/app/i$e;

    invoke-virtual {v1, v8}, Landroidx/core/app/i$e;->e(Z)Landroidx/core/app/i$e;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/16 p1, 0x15

    if-lt v2, p1, :cond_4

    const p1, 0x7f08012f

    :try_start_1
    invoke-virtual {p0, p1}, Landroid/app/Service;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1, p1}, Landroidx/core/app/i$e;->u(I)Landroidx/core/app/i$e;

    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f06005a

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {v1, p1}, Landroidx/core/app/i$e;->g(I)Landroidx/core/app/i$e;

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void

    :cond_4
    const p1, 0x7f080130

    invoke-virtual {v1, p1}, Landroidx/core/app/i$e;->u(I)Landroidx/core/app/i$e;

    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const/high16 p2, 0x7f0d0000

    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroidx/core/app/i$e;->n(Landroid/graphics/Bitmap;)Landroidx/core/app/i$e;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    if-eqz v4, :cond_5

    const/16 p1, 0x1a20

    invoke-virtual {v1}, Landroidx/core/app/i$e;->a()Landroid/app/Notification;

    move-result-object p2

    invoke-virtual {v4, p1, p2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    :goto_2
    return-void
.end method

.method private u(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/google/firebase/messaging/FirebaseMessaging;->g()Lcom/google/firebase/messaging/FirebaseMessaging;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/firebase/messaging/FirebaseMessaging;->v(Ljava/lang/String;)Lcom/google/android/gms/tasks/g;

    move-result-object p1

    new-instance v0, Lcom/callerid/block/service/MyFirebaseMessagingService$a;

    invoke-direct {v0, p0}, Lcom/callerid/block/service/MyFirebaseMessagingService$a;-><init>(Lcom/callerid/block/service/MyFirebaseMessagingService;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/g;->b(Lcom/google/android/gms/tasks/c;)Lcom/google/android/gms/tasks/g;

    return-void
.end method

.method private v()V
    .locals 3

    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object v0

    iget-object v0, v0, Lcom/callerid/block/main/EZCallApplication;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "zh-TW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v2, 0x1f

    goto/16 :goto_0

    :sswitch_1
    const-string v1, "en_GB"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v2, 0x1e

    goto/16 :goto_0

    :sswitch_2
    const-string v1, "en_CA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v2, 0x1d

    goto/16 :goto_0

    :sswitch_3
    const-string v1, "zh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v2, 0x1c

    goto/16 :goto_0

    :sswitch_4
    const-string v1, "vi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v2, 0x1b

    goto/16 :goto_0

    :sswitch_5
    const-string v1, "tr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v2, 0x1a

    goto/16 :goto_0

    :sswitch_6
    const-string v1, "th"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v2, 0x19

    goto/16 :goto_0

    :sswitch_7
    const-string v1, "te"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v2, 0x18

    goto/16 :goto_0

    :sswitch_8
    const-string v1, "ta"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v2, 0x17

    goto/16 :goto_0

    :sswitch_9
    const-string v1, "ru"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v2, 0x16

    goto/16 :goto_0

    :sswitch_a
    const-string v1, "pt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v2, 0x15

    goto/16 :goto_0

    :sswitch_b
    const-string v1, "pa"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v2, 0x14

    goto/16 :goto_0

    :sswitch_c
    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v2, 0x13

    goto/16 :goto_0

    :sswitch_d
    const-string v1, "mr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v2, 0x12

    goto/16 :goto_0

    :sswitch_e
    const-string v1, "ml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v2, 0x11

    goto/16 :goto_0

    :sswitch_f
    const-string v1, "ko"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v2, 0x10

    goto/16 :goto_0

    :sswitch_10
    const-string v1, "kn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    goto/16 :goto_0

    :cond_10
    const/16 v2, 0xf

    goto/16 :goto_0

    :sswitch_11
    const-string v1, "kk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    goto/16 :goto_0

    :cond_11
    const/16 v2, 0xe

    goto/16 :goto_0

    :sswitch_12
    const-string v1, "iw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    goto/16 :goto_0

    :cond_12
    const/16 v2, 0xd

    goto/16 :goto_0

    :sswitch_13
    const-string v1, "it"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    goto/16 :goto_0

    :cond_13
    const/16 v2, 0xc

    goto/16 :goto_0

    :sswitch_14
    const-string v1, "in"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    goto/16 :goto_0

    :cond_14
    const/16 v2, 0xb

    goto/16 :goto_0

    :sswitch_15
    const-string v1, "hi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    goto/16 :goto_0

    :cond_15
    const/16 v2, 0xa

    goto/16 :goto_0

    :sswitch_16
    const-string v1, "gu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    goto/16 :goto_0

    :cond_16
    const/16 v2, 0x9

    goto/16 :goto_0

    :sswitch_17
    const-string v1, "fr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    goto/16 :goto_0

    :cond_17
    const/16 v2, 0x8

    goto/16 :goto_0

    :sswitch_18
    const-string v1, "fa"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    goto :goto_0

    :cond_18
    const/4 v2, 0x7

    goto :goto_0

    :sswitch_19
    const-string v1, "es"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    goto :goto_0

    :cond_19
    const/4 v2, 0x6

    goto :goto_0

    :sswitch_1a
    const-string v1, "en"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    goto :goto_0

    :cond_1a
    const/4 v2, 0x5

    goto :goto_0

    :sswitch_1b
    const-string v1, "el"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    goto :goto_0

    :cond_1b
    const/4 v2, 0x4

    goto :goto_0

    :sswitch_1c
    const-string v1, "de"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    goto :goto_0

    :cond_1c
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_1d
    const-string v1, "cs"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    goto :goto_0

    :cond_1d
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_1e
    const-string v1, "bn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    goto :goto_0

    :cond_1e
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_1f
    const-string v1, "ar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    goto :goto_0

    :cond_1f
    const/4 v2, 0x0

    :goto_0
    const-string v0, "English"

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    const-string v0, "TraditionalChinese"

    goto :goto_1

    :pswitch_1
    const-string v0, "SimplifiedChinese"

    goto :goto_1

    :pswitch_2
    const-string v0, "Vietnamese"

    goto :goto_1

    :pswitch_3
    const-string v0, "Turkey"

    goto :goto_1

    :pswitch_4
    const-string v0, "Thai"

    goto :goto_1

    :pswitch_5
    const-string v0, "Telugu"

    goto :goto_1

    :pswitch_6
    const-string v0, "\u0ba4\u0bae\u0bbf\u0bb4\u0bcd"

    goto :goto_1

    :pswitch_7
    const-string v0, "Russia"

    goto :goto_1

    :pswitch_8
    const-string v0, "Portugal"

    goto :goto_1

    :pswitch_9
    const-string v0, "\u0a2a\u0a70\u0a1c\u0a3e\u0a2c\u0a40"

    goto :goto_1

    :pswitch_a
    const-string v0, "Malaysia"

    goto :goto_1

    :pswitch_b
    const-string v0, "\u092e\u0930\u093e\u0920\u0940"

    goto :goto_1

    :pswitch_c
    const-string v0, "\u0d2e\u0d32\u0d2f\u0d3e\u0d33\u0d02"

    goto :goto_1

    :pswitch_d
    const-string v0, "Korean"

    goto :goto_1

    :pswitch_e
    const-string v0, "\u0c95\u0ca8\u0ccd\u0ca8\u0ca1"

    goto :goto_1

    :pswitch_f
    const-string v0, "Kazakh"

    goto :goto_1

    :pswitch_10
    const-string v0, "Hebrew"

    goto :goto_1

    :pswitch_11
    const-string v0, "Italian"

    goto :goto_1

    :pswitch_12
    const-string v0, "Indonesia"

    goto :goto_1

    :pswitch_13
    const-string v0, "Hindi"

    goto :goto_1

    :pswitch_14
    const-string v0, "\u0a97\u0ac1\u0a9c\u0ab0\u0abe\u0aa4\u0ac0"

    goto :goto_1

    :pswitch_15
    const-string v0, "French"

    goto :goto_1

    :pswitch_16
    const-string v0, "Persia"

    goto :goto_1

    :pswitch_17
    const-string v0, "Spain"

    :goto_1
    :pswitch_18
    invoke-direct {p0, v0}, Lcom/callerid/block/service/MyFirebaseMessagingService;->u(Ljava/lang/String;)V

    goto :goto_2

    :pswitch_19
    const-string v0, "Greek"

    goto :goto_1

    :pswitch_1a
    const-string v0, "German"

    goto :goto_1

    :pswitch_1b
    const-string v0, "\u010de\u0161tina"

    goto :goto_1

    :pswitch_1c
    const-string v0, "Bengali"

    goto :goto_1

    :pswitch_1d
    const-string v0, "Arabic"

    goto :goto_1

    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        0xc31 -> :sswitch_1f
        0xc4c -> :sswitch_1e
        0xc70 -> :sswitch_1d
        0xc81 -> :sswitch_1c
        0xca7 -> :sswitch_1b
        0xca9 -> :sswitch_1a
        0xcae -> :sswitch_19
        0xcbb -> :sswitch_18
        0xccc -> :sswitch_17
        0xcee -> :sswitch_16
        0xd01 -> :sswitch_15
        0xd25 -> :sswitch_14
        0xd2b -> :sswitch_13
        0xd2e -> :sswitch_12
        0xd60 -> :sswitch_11
        0xd63 -> :sswitch_10
        0xd64 -> :sswitch_f
        0xd9f -> :sswitch_e
        0xda5 -> :sswitch_d
        0xda6 -> :sswitch_c
        0xdf1 -> :sswitch_b
        0xe04 -> :sswitch_a
        0xe43 -> :sswitch_9
        0xe6d -> :sswitch_8
        0xe71 -> :sswitch_7
        0xe74 -> :sswitch_6
        0xe7e -> :sswitch_5
        0xeb3 -> :sswitch_4
        0xf2e -> :sswitch_3
        0x5c2b3b4 -> :sswitch_2
        0x5c2b431 -> :sswitch_1
        0x6e72d82 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_18
        :pswitch_18
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public o(Lcom/google/firebase/messaging/RemoteMessage;)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "From: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/firebase/messaging/RemoteMessage;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fcm"

    invoke-static {v1, v0}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/firebase/messaging/RemoteMessage;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v2, 0x0

    if-lez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Message data payload: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/firebase/messaging/RemoteMessage;->a()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/firebase/messaging/RemoteMessage;->a()Ljava/util/Map;

    move-result-object v0

    const-string v3, "subscription_notifi"

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :cond_0
    const-string v3, "offline_notifi"

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :cond_1
    const-string v3, "version_update_notifi"

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    :cond_2
    invoke-virtual {p1}, Lcom/google/firebase/messaging/RemoteMessage;->x()Lcom/google/firebase/messaging/RemoteMessage$b;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Message Notification Title: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/firebase/messaging/RemoteMessage;->x()Lcom/google/firebase/messaging/RemoteMessage$b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/firebase/messaging/RemoteMessage$b;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Message Notification Body: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/firebase/messaging/RemoteMessage;->x()Lcom/google/firebase/messaging/RemoteMessage$b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/firebase/messaging/RemoteMessage$b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/firebase/messaging/RemoteMessage;->x()Lcom/google/firebase/messaging/RemoteMessage$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/messaging/RemoteMessage$b;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/firebase/messaging/RemoteMessage;->x()Lcom/google/firebase/messaging/RemoteMessage$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/messaging/RemoteMessage$b;->a()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1, v2}, Lcom/callerid/block/service/MyFirebaseMessagingService;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public q(Ljava/lang/String;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/google/firebase/messaging/FirebaseMessagingService;->q(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->i()Lcom/google/firebase/iid/FirebaseInstanceId;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/iid/FirebaseInstanceId;->n()Ljava/lang/String;

    move-result-object p1

    sget-boolean v0, Lcom/callerid/block/util/w;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Refreshed token: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "fcm"

    invoke-static {v0, p1}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lcom/callerid/block/service/MyFirebaseMessagingService;->v()V

    return-void
.end method
