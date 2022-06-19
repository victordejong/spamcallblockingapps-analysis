.class public Lcom/mglab/scm/visual/MGNotification;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mglab/scm/visual/MGNotification$notificationButtonListener;
    }
.end annotation


# direct methods
.method public static a(Ljava/util/Locale;ILandroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Landroid/content/res/Configuration;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 2
    invoke-virtual {v0, p0}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    .line 3
    invoke-virtual {p2, v0}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Landroid/content/Intent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "market://details?id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const v0, 0x10008000

    .line 3
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x0

    const/16 v3, 0x1f

    if-lt v0, v3, :cond_0

    const/high16 v0, 0x2000000

    .line 5
    invoke-static {p0, v2, v1, v0}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {p0, v2, v1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 7
    :goto_0
    new-instance v1, Lc0/m;

    const-string v2, "SCM_DEFAULT"

    invoke-direct {v1, p0, v2}, Lc0/m;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 8
    invoke-virtual {v1, p1}, Lc0/m;->d(Ljava/lang/CharSequence;)Lc0/m;

    .line 9
    invoke-virtual {v1, p2}, Lc0/m;->c(Ljava/lang/CharSequence;)Lc0/m;

    const/4 p1, 0x1

    const/16 p2, 0x10

    .line 10
    invoke-virtual {v1, p2, p1}, Lc0/m;->e(IZ)V

    .line 11
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const/high16 p2, 0x7f0e0000

    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {v1, p1}, Lc0/m;->f(Landroid/graphics/Bitmap;)Lc0/m;

    const p1, 0x7f08010c

    .line 12
    iget-object p2, v1, Lc0/m;->q:Landroid/app/Notification;

    iput p1, p2, Landroid/app/Notification;->icon:I

    .line 13
    iput-object v0, v1, Lc0/m;->g:Landroid/app/PendingIntent;

    .line 14
    invoke-virtual {v1}, Lc0/m;->a()Landroid/app/Notification;

    move-result-object p1

    const-string p2, "notification"

    .line 15
    invoke-virtual {p0, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    .line 16
    invoke-virtual {p0, p3, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method public static c(Landroid/content/Context;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/Locale;

    invoke-static {p0}, Lf8/h;->N(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    const v1, 0x7f11002f

    .line 2
    invoke-static {v0, v1, p0}, Lcom/mglab/scm/visual/MGNotification;->a(Ljava/util/Locale;ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f110030

    .line 3
    invoke-static {v0, v2, p0}, Lcom/mglab/scm/visual/MGNotification;->a(Ljava/util/Locale;ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const v2, 0xb884a

    .line 4
    invoke-static {p0, v1, v0, v2}, Lcom/mglab/scm/visual/MGNotification;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static d(Landroid/content/Context;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/Locale;

    invoke-static {p0}, Lf8/h;->N(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    const v1, 0x7f11006d

    .line 2
    invoke-static {v0, v1, p0}, Lcom/mglab/scm/visual/MGNotification;->a(Ljava/util/Locale;ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {p0}, Lf8/h;->e(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "%s"

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f11019e

    .line 4
    invoke-static {v0, v2, p0}, Lcom/mglab/scm/visual/MGNotification;->a(Ljava/util/Locale;ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const v2, 0xb884b

    .line 5
    invoke-static {p0, v1, v0, v2}, Lcom/mglab/scm/visual/MGNotification;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method
