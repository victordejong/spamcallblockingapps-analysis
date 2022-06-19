.class public final Lorg/mistergroup/shouldianswer/utils/m;
.super Ljava/lang/Object;
.source "NotificationsHelper.kt"


# static fields
.field public static final a:Lorg/mistergroup/shouldianswer/utils/m;

# The value of this static final field might be set in the static constructor
.field private static final b:Ljava/lang/String; = "SIA_NOTIFICATION_CHANNEL_BLOCKING"

# The value of this static final field might be set in the static constructor
.field private static final c:Ljava/lang/String; = "SIA_NOTIFICATION_CHANNEL_RINGING"

# The value of this static final field might be set in the static constructor
.field private static final d:Ljava/lang/String; = "SIA_NOTIFICATION_CHANNEL_IMPORTANT"

# The value of this static final field might be set in the static constructor
.field private static final e:Ljava/lang/String; = "SIA_NOTIFICATION_CHANNEL_INCALL"

# The value of this static final field might be set in the static constructor
.field private static final f:Ljava/lang/String; = "SIA_NOTIFICATION_CHANNEL_INCALL_IMPORTANT2"

# The value of this static final field might be set in the static constructor
.field private static final g:Ljava/lang/String; = "SIA_NOTIFICATION_CHANNEL_FOREGROUND_SERVICE"

# The value of this static final field might be set in the static constructor
.field private static final h:Ljava/lang/String; = "SIA_NOTIFICATION_CHANNEL_PUSH"

.field private static i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    new-instance v0, Lorg/mistergroup/shouldianswer/utils/m;

    invoke-direct {v0}, Lorg/mistergroup/shouldianswer/utils/m;-><init>()V

    sput-object v0, Lorg/mistergroup/shouldianswer/utils/m;->a:Lorg/mistergroup/shouldianswer/utils/m;

    const-string v0, "SIA_NOTIFICATION_CHANNEL_BLOCKING"

    .line 16
    sput-object v0, Lorg/mistergroup/shouldianswer/utils/m;->b:Ljava/lang/String;

    const-string v0, "SIA_NOTIFICATION_CHANNEL_RINGING"

    .line 17
    sput-object v0, Lorg/mistergroup/shouldianswer/utils/m;->c:Ljava/lang/String;

    const-string v0, "SIA_NOTIFICATION_CHANNEL_IMPORTANT"

    .line 18
    sput-object v0, Lorg/mistergroup/shouldianswer/utils/m;->d:Ljava/lang/String;

    const-string v0, "SIA_NOTIFICATION_CHANNEL_INCALL"

    .line 19
    sput-object v0, Lorg/mistergroup/shouldianswer/utils/m;->e:Ljava/lang/String;

    const-string v0, "SIA_NOTIFICATION_CHANNEL_INCALL_IMPORTANT2"

    .line 20
    sput-object v0, Lorg/mistergroup/shouldianswer/utils/m;->f:Ljava/lang/String;

    const-string v0, "SIA_NOTIFICATION_CHANNEL_FOREGROUND_SERVICE"

    .line 21
    sput-object v0, Lorg/mistergroup/shouldianswer/utils/m;->g:Ljava/lang/String;

    const-string v0, "SIA_NOTIFICATION_CHANNEL_PUSH"

    .line 22
    sput-object v0, Lorg/mistergroup/shouldianswer/utils/m;->h:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 16
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/m;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 17
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/m;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .line 18
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/m;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .line 19
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/m;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .line 20
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/m;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .line 21
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/m;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    .line 22
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/m;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final h()V
    .locals 10

    .line 25
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/o;->a:Lorg/mistergroup/shouldianswer/utils/o;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/utils/o;->c()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 26
    :cond_0
    sget-boolean v0, Lorg/mistergroup/shouldianswer/utils/m;->i:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 27
    sput-boolean v0, Lorg/mistergroup/shouldianswer/utils/m;->i:Z

    .line 28
    sget-object v1, Lorg/mistergroup/shouldianswer/utils/y;->b:Lorg/mistergroup/shouldianswer/utils/y;

    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/utils/y;->c()Landroid/app/NotificationManager;

    move-result-object v1

    .line 30
    sget-object v2, Lorg/mistergroup/shouldianswer/MyApp;->c:Lorg/mistergroup/shouldianswer/MyApp$a;

    invoke-virtual {v2}, Lorg/mistergroup/shouldianswer/MyApp$a;->a()Lorg/mistergroup/shouldianswer/MyApp;

    move-result-object v2

    .line 32
    new-instance v3, Landroid/app/NotificationChannel;

    sget-object v4, Lorg/mistergroup/shouldianswer/utils/m;->d:Ljava/lang/String;

    const v5, 0x7f1000c9

    invoke-virtual {v2, v5}, Lorg/mistergroup/shouldianswer/MyApp;->getString(I)Ljava/lang/String;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    const/4 v6, 0x4

    invoke-direct {v3, v4, v5, v6}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const v4, 0x7f1000c8

    .line 33
    invoke-virtual {v2, v4}, Lorg/mistergroup/shouldianswer/MyApp;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    .line 34
    invoke-virtual {v3, v0}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    .line 35
    invoke-virtual {v1, v3}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 37
    new-instance v3, Landroid/app/NotificationChannel;

    sget-object v4, Lorg/mistergroup/shouldianswer/utils/m;->e:Ljava/lang/String;

    const v5, 0x7f1000cd

    invoke-virtual {v2, v5}, Lorg/mistergroup/shouldianswer/MyApp;->getString(I)Ljava/lang/String;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    const/4 v7, 0x2

    invoke-direct {v3, v4, v5, v7}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const v4, 0x7f1000ca

    .line 38
    invoke-virtual {v2, v4}, Lorg/mistergroup/shouldianswer/MyApp;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 39
    invoke-virtual {v3, v4}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    .line 40
    invoke-virtual {v3, v0}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    .line 41
    invoke-virtual {v3, v4}, Landroid/app/NotificationChannel;->enableLights(Z)V

    .line 42
    invoke-virtual {v3, v4}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    .line 43
    new-instance v5, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v5}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v7, 0x5

    invoke-virtual {v5, v7}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v5

    const/4 v8, 0x0

    invoke-virtual {v3, v8, v5}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 44
    invoke-virtual {v1, v3}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 46
    new-instance v3, Landroid/app/NotificationChannel;

    sget-object v5, Lorg/mistergroup/shouldianswer/utils/m;->f:Ljava/lang/String;

    const v9, 0x7f1000cc

    invoke-virtual {v2, v9}, Lorg/mistergroup/shouldianswer/MyApp;->getString(I)Ljava/lang/String;

    move-result-object v9

    check-cast v9, Ljava/lang/CharSequence;

    invoke-direct {v3, v5, v9, v6}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const v5, 0x7f1000cb

    .line 47
    invoke-virtual {v2, v5}, Lorg/mistergroup/shouldianswer/MyApp;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    .line 48
    invoke-virtual {v3, v4}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    .line 49
    invoke-virtual {v3, v0}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    .line 50
    invoke-virtual {v3, v4}, Landroid/app/NotificationChannel;->enableLights(Z)V

    .line 51
    invoke-virtual {v3, v4}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    .line 52
    new-instance v5, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v5}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v5, v7}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v5

    invoke-virtual {v3, v8, v5}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 53
    invoke-virtual {v1, v3}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 55
    new-instance v3, Landroid/app/NotificationChannel;

    sget-object v5, Lorg/mistergroup/shouldianswer/utils/m;->b:Ljava/lang/String;

    const v7, 0x7f1000c5

    invoke-virtual {v2, v7}, Lorg/mistergroup/shouldianswer/MyApp;->getString(I)Ljava/lang/String;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    const/4 v8, 0x3

    invoke-direct {v3, v5, v7, v8}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const v5, 0x7f1000c4

    .line 56
    invoke-virtual {v2, v5}, Lorg/mistergroup/shouldianswer/MyApp;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    .line 57
    invoke-virtual {v3, v4}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    .line 58
    invoke-virtual {v3, v4}, Landroid/app/NotificationChannel;->enableLights(Z)V

    .line 59
    invoke-virtual {v3, v0}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    .line 60
    invoke-virtual {v1, v3}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 62
    new-instance v3, Landroid/app/NotificationChannel;

    sget-object v5, Lorg/mistergroup/shouldianswer/utils/m;->c:Ljava/lang/String;

    const v7, 0x7f1000cf

    invoke-virtual {v2, v7}, Lorg/mistergroup/shouldianswer/MyApp;->getString(I)Ljava/lang/String;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-direct {v3, v5, v7, v6}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const v5, 0x7f1000ce

    .line 63
    invoke-virtual {v2, v5}, Lorg/mistergroup/shouldianswer/MyApp;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    .line 64
    invoke-virtual {v3, v4}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    .line 65
    invoke-virtual {v3, v0}, Landroid/app/NotificationChannel;->enableLights(Z)V

    .line 66
    invoke-virtual {v3}, Landroid/app/NotificationChannel;->shouldShowLights()Z

    .line 67
    invoke-virtual {v3, v0}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    .line 68
    invoke-virtual {v1, v3}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 70
    new-instance v3, Landroid/app/NotificationChannel;

    sget-object v5, Lorg/mistergroup/shouldianswer/utils/m;->g:Ljava/lang/String;

    const v6, 0x7f1000c7

    invoke-virtual {v2, v6}, Lorg/mistergroup/shouldianswer/MyApp;->getString(I)Ljava/lang/String;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-direct {v3, v5, v6, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const v5, 0x7f1000c6

    .line 71
    invoke-virtual {v2, v5}, Lorg/mistergroup/shouldianswer/MyApp;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    .line 72
    invoke-virtual {v3, v4}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    .line 73
    invoke-virtual {v3, v4}, Landroid/app/NotificationChannel;->enableLights(Z)V

    .line 74
    invoke-virtual {v3, v4}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    .line 75
    invoke-virtual {v1, v3}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 77
    new-instance v2, Landroid/app/NotificationChannel;

    sget-object v3, Lorg/mistergroup/shouldianswer/utils/m;->h:Ljava/lang/String;

    const-string v5, "Protection Service Notifications"

    check-cast v5, Ljava/lang/CharSequence;

    invoke-direct {v2, v3, v5, v8}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const-string v3, "Notification about protection service news and app usage"

    .line 78
    invoke-virtual {v2, v3}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    .line 79
    invoke-virtual {v2, v4}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    .line 80
    invoke-virtual {v2, v4}, Landroid/app/NotificationChannel;->enableLights(Z)V

    .line 81
    invoke-virtual {v2, v0}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    .line 82
    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    return-void
.end method
