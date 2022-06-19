.class Lcom/allinone/callerid/service/PhoneSceneService$c;
.super Ljava/lang/Object;
.source "PhoneSceneService.java"

# interfaces
.implements Lcom/allinone/callerid/i/a/k/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/service/PhoneSceneService;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/allinone/callerid/service/PhoneSceneService;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/service/PhoneSceneService;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/service/PhoneSceneService$c;->b:Lcom/allinone/callerid/service/PhoneSceneService;

    iput-object p2, p0, Lcom/allinone/callerid/service/PhoneSceneService$c;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;ZZZ)V
    .locals 8

    const-string v0, "com.allinone.callerid_notfication_N"

    const-string v1, "Showcaller"

    .line 1
    :try_start_0
    invoke-static {}, Lcom/allinone/callerid/util/h1;->q0()Z

    move-result v2

    if-nez v2, :cond_4

    .line 2
    iget-object v2, p0, Lcom/allinone/callerid/service/PhoneSceneService$c;->a:Landroid/content/Context;

    const-string v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 3
    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/allinone/callerid/service/PhoneSceneService$c;->a:Landroid/content/Context;

    const-class v5, Lcom/allinone/callerid/mvc/controller/MainActivity;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v4, 0x1

    if-eqz p3, :cond_0

    const-string v5, "blockedcall"

    .line 4
    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_0
    const-string v5, "missedcall"

    .line 5
    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 6
    iget-object v5, p0, Lcom/allinone/callerid/service/PhoneSceneService$c;->a:Landroid/content/Context;

    const/high16 v6, 0xc000000

    invoke-static {v5, v4, v3, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 7
    new-instance v5, Landroidx/core/app/h$e;

    iget-object v6, p0, Lcom/allinone/callerid/service/PhoneSceneService$c;->a:Landroid/content/Context;

    invoke-direct {v5, v6, v1}, Landroidx/core/app/h$e;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 8
    invoke-virtual {v5, p1}, Landroidx/core/app/h$e;->j(Ljava/lang/CharSequence;)Landroidx/core/app/h$e;

    move-result-object p1

    .line 9
    invoke-virtual {p1, p2}, Landroidx/core/app/h$e;->k(Ljava/lang/CharSequence;)Landroidx/core/app/h$e;

    move-result-object p1

    .line 10
    invoke-virtual {p1, v3}, Landroidx/core/app/h$e;->i(Landroid/app/PendingIntent;)Landroidx/core/app/h$e;

    move-result-object p1

    iget-object p2, p0, Lcom/allinone/callerid/service/PhoneSceneService$c;->a:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v3, 0x7f1001de

    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/core/app/h$e;->y(Ljava/lang/CharSequence;)Landroidx/core/app/h$e;

    move-result-object p1

    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {p1, v6, v7}, Landroidx/core/app/h$e;->B(J)Landroidx/core/app/h$e;

    move-result-object p1

    const/4 p2, -0x2

    .line 12
    invoke-virtual {p1, p2}, Landroidx/core/app/h$e;->t(I)Landroidx/core/app/h$e;

    move-result-object p1

    const/4 p2, 0x0

    .line 13
    invoke-virtual {p1, p2}, Landroidx/core/app/h$e;->s(Z)Landroidx/core/app/h$e;

    move-result-object p1

    .line 14
    invoke-virtual {p1, v4}, Landroidx/core/app/h$e;->f(Z)Landroidx/core/app/h$e;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 15
    :try_start_1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt p1, v3, :cond_1

    .line 16
    new-instance v3, Landroid/app/NotificationChannel;

    const/4 v6, 0x3

    invoke-direct {v3, v0, v1, v6}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    if-eqz v2, :cond_1

    .line 17
    invoke-virtual {v3, p2}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    .line 18
    invoke-virtual {v3, p2}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    new-array v1, v4, [J

    const-wide/16 v6, 0x0

    aput-wide v6, v1, p2

    .line 19
    invoke-virtual {v3, v1}, Landroid/app/NotificationChannel;->setVibrationPattern([J)V

    .line 20
    invoke-virtual {v2, v3}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 21
    invoke-virtual {v5, v0}, Landroidx/core/app/h$e;->g(Ljava/lang/String;)Landroidx/core/app/h$e;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    const/16 p2, 0x15

    if-lt p1, p2, :cond_2

    .line 22
    :try_start_2
    iget-object p1, p0, Lcom/allinone/callerid/service/PhoneSceneService$c;->a:Landroid/content/Context;

    const p2, 0x7f080270

    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 23
    :try_start_3
    invoke-virtual {v5, p2}, Landroidx/core/app/h$e;->v(I)Landroidx/core/app/h$e;

    .line 24
    iget-object p1, p0, Lcom/allinone/callerid/service/PhoneSceneService$c;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f06003a

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {v5, p1}, Landroidx/core/app/h$e;->h(I)Landroidx/core/app/h$e;

    goto :goto_0

    :catch_0
    move-exception p1

    .line 25
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void

    :cond_2
    const p1, 0x7f080196

    .line 26
    invoke-virtual {v5, p1}, Landroidx/core/app/h$e;->v(I)Landroidx/core/app/h$e;

    .line 27
    iget-object p1, p0, Lcom/allinone/callerid/service/PhoneSceneService$c;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const/high16 p2, 0x7f0d0000

    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {v5, p1}, Landroidx/core/app/h$e;->o(Landroid/graphics/Bitmap;)Landroidx/core/app/h$e;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 28
    :try_start_4
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    if-nez p3, :cond_3

    if-eqz p4, :cond_3

    if-eqz v2, :cond_3

    .line 29
    invoke-virtual {v5}, Landroidx/core/app/h$e;->b()Landroid/app/Notification;

    move-result-object p1

    invoke-virtual {v2, v4, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :cond_3
    if-eqz p3, :cond_4

    if-eqz p5, :cond_4

    if-eqz v2, :cond_4

    .line 30
    invoke-virtual {v5}, Landroidx/core/app/h$e;->b()Landroid/app/Notification;

    move-result-object p1

    invoke-virtual {v2, v4, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 31
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_1
    return-void
.end method
