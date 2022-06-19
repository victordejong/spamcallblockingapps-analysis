.class final Landroidx/browser/trusted/TrustedWebActivityService$1;
.super Landroid/support/a/a/b$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/browser/trusted/TrustedWebActivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/browser/trusted/TrustedWebActivityService;


# direct methods
.method constructor <init>(Landroidx/browser/trusted/TrustedWebActivityService;)V
    .locals 0

    .line 128
    iput-object p1, p0, Landroidx/browser/trusted/TrustedWebActivityService$1;->a:Landroidx/browser/trusted/TrustedWebActivityService;

    invoke-direct {p0}, Landroid/support/a/a/b$a;-><init>()V

    return-void
.end method

.method private d()V
    .locals 6

    .line 193
    iget-object v0, p0, Landroidx/browser/trusted/TrustedWebActivityService$1;->a:Landroidx/browser/trusted/TrustedWebActivityService;

    iget v0, v0, Landroidx/browser/trusted/TrustedWebActivityService;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 194
    iget-object v0, p0, Landroidx/browser/trusted/TrustedWebActivityService$1;->a:Landroidx/browser/trusted/TrustedWebActivityService;

    invoke-virtual {v0}, Landroidx/browser/trusted/TrustedWebActivityService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {}, Landroidx/browser/trusted/TrustedWebActivityService$1;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array v0, v1, [Ljava/lang/String;

    .line 200
    :cond_0
    iget-object v2, p0, Landroidx/browser/trusted/TrustedWebActivityService$1;->a:Landroidx/browser/trusted/TrustedWebActivityService;

    invoke-virtual {v2}, Landroidx/browser/trusted/TrustedWebActivityService;->b()Landroidx/browser/trusted/e;

    move-result-object v2

    invoke-interface {v2}, Landroidx/browser/trusted/e;->a()Landroidx/browser/trusted/c;

    move-result-object v2

    .line 201
    iget-object v3, p0, Landroidx/browser/trusted/TrustedWebActivityService$1;->a:Landroidx/browser/trusted/TrustedWebActivityService;

    invoke-virtual {v3}, Landroidx/browser/trusted/TrustedWebActivityService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    if-eqz v2, :cond_2

    .line 204
    array-length v4, v0

    :goto_0
    if-ge v1, v4, :cond_2

    aget-object v5, v0, v1

    .line 205
    invoke-virtual {v2, v5, v3}, Landroidx/browser/trusted/c;->a(Ljava/lang/String;Landroid/content/pm/PackageManager;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 206
    iget-object v0, p0, Landroidx/browser/trusted/TrustedWebActivityService$1;->a:Landroidx/browser/trusted/TrustedWebActivityService;

    invoke-static {}, Landroidx/browser/trusted/TrustedWebActivityService$1;->getCallingUid()I

    move-result v1

    iput v1, v0, Landroidx/browser/trusted/TrustedWebActivityService;->b:I

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 213
    :cond_2
    :goto_1
    iget-object v0, p0, Landroidx/browser/trusted/TrustedWebActivityService$1;->a:Landroidx/browser/trusted/TrustedWebActivityService;

    iget v0, v0, Landroidx/browser/trusted/TrustedWebActivityService;->b:I

    invoke-static {}, Landroidx/browser/trusted/TrustedWebActivityService$1;->getCallingUid()I

    move-result v1

    if-ne v0, v1, :cond_3

    return-void

    .line 215
    :cond_3
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Caller is not verified as Trusted Web Activity provider."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a()Landroid/os/Bundle;
    .locals 4

    .line 163
    invoke-direct {p0}, Landroidx/browser/trusted/TrustedWebActivityService$1;->d()V

    .line 165
    new-instance v0, Landroidx/browser/trusted/g$a;

    iget-object v1, p0, Landroidx/browser/trusted/TrustedWebActivityService$1;->a:Landroidx/browser/trusted/TrustedWebActivityService;

    .line 4308
    invoke-virtual {v1}, Landroidx/browser/trusted/TrustedWebActivityService;->c()V

    .line 4309
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_0

    .line 4310
    iget-object v1, v1, Landroidx/browser/trusted/TrustedWebActivityService;->a:Landroid/app/NotificationManager;

    .line 5046
    invoke-virtual {v1}, Landroid/app/NotificationManager;->getActiveNotifications()[Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    .line 166
    invoke-direct {v0, v1}, Landroidx/browser/trusted/g$a;-><init>([Landroid/os/Parcelable;)V

    .line 5280
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 5281
    iget-object v0, v0, Landroidx/browser/trusted/g$a;->a:[Landroid/os/Parcelable;

    const-string v2, "android.support.customtabs.trusted.ACTIVE_NOTIFICATIONS"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    return-object v1

    .line 4312
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "onGetActiveNotifications cannot be called pre-M."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3

    .line 131
    invoke-direct {p0}, Landroidx/browser/trusted/TrustedWebActivityService$1;->d()V

    const-string v0, "android.support.customtabs.trusted.CHANNEL_NAME"

    .line 1294
    invoke-static {p1, v0}, Landroidx/browser/trusted/g;->a(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1295
    new-instance v1, Landroidx/browser/trusted/g$c;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Landroidx/browser/trusted/g$c;-><init>(Ljava/lang/String;)V

    .line 134
    iget-object p1, p0, Landroidx/browser/trusted/TrustedWebActivityService$1;->a:Landroidx/browser/trusted/TrustedWebActivityService;

    iget-object v0, v1, Landroidx/browser/trusted/g$c;->a:Ljava/lang/String;

    .line 2239
    invoke-virtual {p1}, Landroidx/browser/trusted/TrustedWebActivityService;->c()V

    .line 2241
    invoke-static {p1}, Landroidx/core/app/j;->a(Landroid/content/Context;)Landroidx/core/app/j;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/core/app/j;->a()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 2243
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-ge v1, v2, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    .line 2245
    :cond_1
    iget-object p1, p1, Landroidx/browser/trusted/TrustedWebActivityService;->a:Landroid/app/NotificationManager;

    .line 2246
    invoke-static {v0}, Landroidx/browser/trusted/TrustedWebActivityService;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2245
    invoke-static {p1, v0}, Landroidx/browser/trusted/a;->a(Landroid/app/NotificationManager;Ljava/lang/String;)Z

    move-result p1

    .line 137
    :goto_0
    new-instance v0, Landroidx/browser/trusted/g$e;

    invoke-direct {v0, p1}, Landroidx/browser/trusted/g$e;-><init>(Z)V

    invoke-virtual {v0}, Landroidx/browser/trusted/g$e;->a()Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public final a(Landroid/os/IBinder;)Landroid/os/Bundle;
    .locals 3

    .line 186
    invoke-direct {p0}, Landroidx/browser/trusted/TrustedWebActivityService$1;->d()V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    :goto_0
    move-object v1, v0

    goto :goto_1

    :cond_0
    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "android.support.customtabs.trusted.ITrustedWebActivityCallback"

    .line 7040
    invoke-interface {p1, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 7041
    instance-of v2, v1, Landroid/support/a/a/a;

    if-eqz v2, :cond_2

    .line 7042
    check-cast v1, Landroid/support/a/a/a;

    goto :goto_1

    .line 7044
    :cond_2
    new-instance v1, Landroid/support/a/a/a$a$a;

    invoke-direct {v1, p1}, Landroid/support/a/a/a$a$a;-><init>(Landroid/os/IBinder;)V

    :goto_1
    if-eqz v1, :cond_3

    .line 6048
    new-instance p1, Landroidx/browser/trusted/f;

    invoke-direct {p1, v1}, Landroidx/browser/trusted/f;-><init>(Landroid/support/a/a/a;)V

    :cond_3
    return-object v0
.end method

.method public final b()I
    .locals 1

    .line 171
    invoke-direct {p0}, Landroidx/browser/trusted/TrustedWebActivityService$1;->d()V

    .line 173
    iget-object v0, p0, Landroidx/browser/trusted/TrustedWebActivityService$1;->a:Landroidx/browser/trusted/TrustedWebActivityService;

    invoke-virtual {v0}, Landroidx/browser/trusted/TrustedWebActivityService;->a()I

    move-result v0

    return v0
.end method

.method public final b(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 9

    .line 142
    invoke-direct {p0}, Landroidx/browser/trusted/TrustedWebActivityService$1;->d()V

    const-string v0, "android.support.customtabs.trusted.PLATFORM_TAG"

    .line 3202
    invoke-static {p1, v0}, Landroidx/browser/trusted/g;->a(Landroid/os/Bundle;Ljava/lang/String;)V

    const-string v1, "android.support.customtabs.trusted.PLATFORM_ID"

    .line 3203
    invoke-static {p1, v1}, Landroidx/browser/trusted/g;->a(Landroid/os/Bundle;Ljava/lang/String;)V

    const-string v2, "android.support.customtabs.trusted.NOTIFICATION"

    .line 3204
    invoke-static {p1, v2}, Landroidx/browser/trusted/g;->a(Landroid/os/Bundle;Ljava/lang/String;)V

    const-string v3, "android.support.customtabs.trusted.CHANNEL_NAME"

    .line 3205
    invoke-static {p1, v3}, Landroidx/browser/trusted/g;->a(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 3207
    new-instance v4, Landroidx/browser/trusted/g$d;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3208
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 3209
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/app/Notification;

    .line 3210
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v4, v0, v1, v2, p1}, Landroidx/browser/trusted/g$d;-><init>(Ljava/lang/String;ILandroid/app/Notification;Ljava/lang/String;)V

    .line 146
    iget-object p1, p0, Landroidx/browser/trusted/TrustedWebActivityService$1;->a:Landroidx/browser/trusted/TrustedWebActivityService;

    iget-object v0, v4, Landroidx/browser/trusted/g$d;->a:Ljava/lang/String;

    iget v1, v4, Landroidx/browser/trusted/g$d;->b:I

    iget-object v2, v4, Landroidx/browser/trusted/g$d;->c:Landroid/app/Notification;

    iget-object v3, v4, Landroidx/browser/trusted/g$d;->d:Ljava/lang/String;

    .line 3265
    invoke-virtual {p1}, Landroidx/browser/trusted/TrustedWebActivityService;->c()V

    .line 3267
    invoke-static {p1}, Landroidx/core/app/j;->a(Landroid/content/Context;)Landroidx/core/app/j;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/core/app/j;->a()Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_0

    goto :goto_1

    .line 3269
    :cond_0
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1a

    if-lt v4, v6, :cond_2

    .line 3270
    invoke-static {v3}, Landroidx/browser/trusted/TrustedWebActivityService;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3271
    iget-object v6, p1, Landroidx/browser/trusted/TrustedWebActivityService;->a:Landroid/app/NotificationManager;

    .line 4051
    new-instance v7, Landroid/app/NotificationChannel;

    const/4 v8, 0x3

    invoke-direct {v7, v4, v3, v8}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {v6, v7}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 4055
    invoke-virtual {v6, v4}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v3

    if-nez v3, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    .line 4061
    :cond_1
    invoke-static {p1, v2}, Landroid/app/Notification$Builder;->recoverBuilder(Landroid/content/Context;Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 4062
    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 4063
    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    .line 3274
    :goto_0
    iget-object v3, p1, Landroidx/browser/trusted/TrustedWebActivityService;->a:Landroid/app/NotificationManager;

    invoke-static {v3, v4}, Landroidx/browser/trusted/a;->a(Landroid/app/NotificationManager;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    .line 3279
    :cond_2
    iget-object p1, p1, Landroidx/browser/trusted/TrustedWebActivityService;->a:Landroid/app/NotificationManager;

    invoke-virtual {p1, v0, v1, v2}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    const/4 v5, 0x1

    .line 149
    :goto_1
    new-instance p1, Landroidx/browser/trusted/g$e;

    invoke-direct {p1, v5}, Landroidx/browser/trusted/g$e;-><init>(Z)V

    invoke-virtual {p1}, Landroidx/browser/trusted/g$e;->a()Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public final c()Landroid/os/Bundle;
    .locals 4

    .line 178
    invoke-direct {p0}, Landroidx/browser/trusted/TrustedWebActivityService$1;->d()V

    .line 180
    iget-object v0, p0, Landroidx/browser/trusted/TrustedWebActivityService$1;->a:Landroidx/browser/trusted/TrustedWebActivityService;

    .line 5322
    invoke-virtual {v0}, Landroidx/browser/trusted/TrustedWebActivityService;->a()I

    move-result v1

    .line 5323
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    return-object v2

    .line 5328
    :cond_0
    invoke-virtual {v0}, Landroidx/browser/trusted/TrustedWebActivityService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    const-string v1, "android.support.customtabs.trusted.SMALL_ICON_BITMAP"

    .line 5327
    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-object v2
.end method

.method public final c(Landroid/os/Bundle;)V
    .locals 3

    .line 154
    invoke-direct {p0}, Landroidx/browser/trusted/TrustedWebActivityService$1;->d()V

    const-string v0, "android.support.customtabs.trusted.PLATFORM_TAG"

    .line 4233
    invoke-static {p1, v0}, Landroidx/browser/trusted/g;->a(Landroid/os/Bundle;Ljava/lang/String;)V

    const-string v1, "android.support.customtabs.trusted.PLATFORM_ID"

    .line 4234
    invoke-static {p1, v1}, Landroidx/browser/trusted/g;->a(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 4236
    new-instance v2, Landroidx/browser/trusted/g$b;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4237
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-direct {v2, v0, p1}, Landroidx/browser/trusted/g$b;-><init>(Ljava/lang/String;I)V

    .line 158
    iget-object p1, p0, Landroidx/browser/trusted/TrustedWebActivityService$1;->a:Landroidx/browser/trusted/TrustedWebActivityService;

    iget-object v0, v2, Landroidx/browser/trusted/g$b;->a:Ljava/lang/String;

    iget v1, v2, Landroidx/browser/trusted/g$b;->b:I

    .line 4292
    invoke-virtual {p1}, Landroidx/browser/trusted/TrustedWebActivityService;->c()V

    .line 4293
    iget-object p1, p1, Landroidx/browser/trusted/TrustedWebActivityService;->a:Landroid/app/NotificationManager;

    invoke-virtual {p1, v0, v1}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    return-void
.end method
