.class Lcom/callerid/block/service/PhoneSceneService$h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/callerid/block/h/a/f/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/service/PhoneSceneService;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/callerid/block/service/PhoneSceneService;Landroid/content/Context;)V
    .locals 0

    iput-object p2, p0, Lcom/callerid/block/service/PhoneSceneService$h;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 8

    const-string v0, "com.callerid.block_notfication_N"

    invoke-static {}, Lcom/callerid/block/util/t0;->U()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/callerid/block/service/PhoneSceneService$h;->a:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/callerid/block/service/PhoneSceneService$h;->a:Landroid/content/Context;

    const-class v4, Lcom/callerid/block/main/MainActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "missedcall"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v3, p0, Lcom/callerid/block/service/PhoneSceneService$h;->a:Landroid/content/Context;

    const/high16 v5, 0x8000000

    invoke-static {v3, v4, v2, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    new-instance v3, Landroidx/core/app/i$e;

    iget-object v5, p0, Lcom/callerid/block/service/PhoneSceneService$h;->a:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f10002f

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Landroidx/core/app/i$e;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Landroidx/core/app/i$e;->i(Ljava/lang/CharSequence;)Landroidx/core/app/i$e;

    invoke-virtual {v3, p2}, Landroidx/core/app/i$e;->j(Ljava/lang/CharSequence;)Landroidx/core/app/i$e;

    invoke-virtual {v3, v2}, Landroidx/core/app/i$e;->h(Landroid/app/PendingIntent;)Landroidx/core/app/i$e;

    iget-object p1, p0, Lcom/callerid/block/service/PhoneSceneService$h;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f100112

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroidx/core/app/i$e;->x(Ljava/lang/CharSequence;)Landroidx/core/app/i$e;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-virtual {v3, p1, p2}, Landroidx/core/app/i$e;->A(J)Landroidx/core/app/i$e;

    const/4 p1, -0x2

    invoke-virtual {v3, p1}, Landroidx/core/app/i$e;->s(I)Landroidx/core/app/i$e;

    const/4 p1, 0x0

    invoke-virtual {v3, p1}, Landroidx/core/app/i$e;->r(Z)Landroidx/core/app/i$e;

    invoke-virtual {v3, v4}, Landroidx/core/app/i$e;->e(Z)Landroidx/core/app/i$e;

    iget-object p2, p0, Lcom/callerid/block/service/PhoneSceneService$h;->a:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v2, 0x7f080112

    invoke-static {p2, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {v3, p2}, Landroidx/core/app/i$e;->n(Landroid/graphics/Bitmap;)Landroidx/core/app/i$e;

    :try_start_0
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt p2, v2, :cond_0

    new-instance v2, Landroid/app/NotificationChannel;

    iget-object v5, p0, Lcom/callerid/block/service/PhoneSceneService$h;->a:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    invoke-direct {v2, v0, v5, v6}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    if-eqz v1, :cond_0

    invoke-virtual {v2, p1}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    invoke-virtual {v2, p1}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    new-array v5, v4, [J

    const-wide/16 v6, 0x0

    aput-wide v6, v5, p1

    invoke-virtual {v2, v5}, Landroid/app/NotificationChannel;->setVibrationPattern([J)V

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    invoke-virtual {v3, v0}, Landroidx/core/app/i$e;->f(Ljava/lang/String;)Landroidx/core/app/i$e;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    const/16 p1, 0x15

    if-lt p2, p1, :cond_1

    :try_start_1
    iget-object p1, p0, Lcom/callerid/block/service/PhoneSceneService$h;->a:Landroid/content/Context;

    const p2, 0x7f08012f

    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    invoke-virtual {v3, p2}, Landroidx/core/app/i$e;->u(I)Landroidx/core/app/i$e;

    iget-object p1, p0, Lcom/callerid/block/service/PhoneSceneService$h;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f06005a

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {v3, p1}, Landroidx/core/app/i$e;->g(I)Landroidx/core/app/i$e;

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void

    :cond_1
    const p1, 0x7f080130

    invoke-virtual {v3, p1}, Landroidx/core/app/i$e;->u(I)Landroidx/core/app/i$e;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    if-eqz p3, :cond_2

    iget-object p1, p0, Lcom/callerid/block/service/PhoneSceneService$h;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/callerid/block/util/n0;->g(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_3

    :goto_1
    invoke-virtual {v3}, Landroidx/core/app/i$e;->a()Landroid/app/Notification;

    move-result-object p1

    invoke-virtual {v1, v4, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :cond_3
    return-void
.end method
