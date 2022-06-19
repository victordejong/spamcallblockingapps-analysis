.class public Lew;
.super Landroidx/media2/session/MediaSession$d$a;
.source ""


# instance fields
.field public final a:Landroidx/media2/session/MediaSessionService;

.field public final b:Landroid/app/NotificationManager;

.field public final c:Ljava/lang/String;

.field public final d:Landroid/content/Intent;

.field public final e:Lz7$a;

.field public final f:Lz7$a;

.field public final g:Lz7$a;

.field public final h:Lz7$a;


# direct methods
.method public constructor <init>(Landroidx/media2/session/MediaSessionService;)V
    .locals 3

    invoke-direct {p0}, Landroidx/media2/session/MediaSession$d$a;-><init>()V

    iput-object p1, p0, Lew;->a:Landroidx/media2/session/MediaSessionService;

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lew;->d:Landroid/content/Intent;

    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lew;->b:Landroid/app/NotificationManager;

    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Liw;->default_notification_channel_name:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lew;->c:Ljava/lang/String;

    sget p1, Lhw;->media_session_service_notification_ic_play:I

    sget v0, Liw;->play_button_content_description:I

    const-wide/16 v1, 0x4

    invoke-virtual {p0, p1, v0, v1, v2}, Lew;->a(IIJ)Lz7$a;

    move-result-object p1

    iput-object p1, p0, Lew;->e:Lz7$a;

    sget p1, Lhw;->media_session_service_notification_ic_pause:I

    sget v0, Liw;->pause_button_content_description:I

    const-wide/16 v1, 0x2

    invoke-virtual {p0, p1, v0, v1, v2}, Lew;->a(IIJ)Lz7$a;

    move-result-object p1

    iput-object p1, p0, Lew;->f:Lz7$a;

    sget p1, Lhw;->media_session_service_notification_ic_skip_to_previous:I

    sget v0, Liw;->skip_to_previous_item_button_content_description:I

    const-wide/16 v1, 0x10

    invoke-virtual {p0, p1, v0, v1, v2}, Lew;->a(IIJ)Lz7$a;

    move-result-object p1

    iput-object p1, p0, Lew;->g:Lz7$a;

    sget p1, Lhw;->media_session_service_notification_ic_skip_to_next:I

    sget v0, Liw;->skip_to_next_item_button_content_description:I

    const-wide/16 v1, 0x20

    invoke-virtual {p0, p1, v0, v1, v2}, Lew;->a(IIJ)Lz7$a;

    move-result-object p1

    iput-object p1, p0, Lew;->h:Lz7$a;

    return-void
.end method

.method public static e(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    if-eqz p0, :cond_1

    const/4 v1, 0x3

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method


# virtual methods
.method public final a(IIJ)Lz7$a;
    .locals 1

    iget-object v0, p0, Lew;->a:Landroidx/media2/session/MediaSessionService;

    invoke-virtual {v0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    new-instance v0, Lz7$a;

    invoke-virtual {p0, p3, p4}, Lew;->b(J)Landroid/app/PendingIntent;

    move-result-object p3

    invoke-direct {v0, p1, p2, p3}, Lz7$a;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    return-object v0
.end method

.method public final b(J)Landroid/app/PendingIntent;
    .locals 6

    invoke-static {p1, p2}, Landroid/support/v4/media/session/PlaybackStateCompat;->toKeyCode(J)I

    move-result v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p0, Lew;->a:Landroidx/media2/session/MediaSessionService;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    new-instance v2, Landroid/view/KeyEvent;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0}, Landroid/view/KeyEvent;-><init>(II)V

    const-string v4, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-lt v2, v4, :cond_0

    const-wide/16 v4, 0x2

    cmp-long v2, p1, v4

    if-eqz v2, :cond_0

    iget-object p1, p0, Lew;->a:Landroidx/media2/session/MediaSessionService;

    invoke-static {p1, v0, v1, v3}, Landroid/app/PendingIntent;->getForegroundService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object p1, p0, Lew;->a:Landroidx/media2/session/MediaSessionService;

    invoke-static {p1, v0, v1, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method public final c()V
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lew;->b:Landroid/app/NotificationManager;

    const-string v1, "default_channel_id"

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/app/NotificationChannel;

    iget-object v2, p0, Lew;->c:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    iget-object v1, p0, Lew;->b:Landroid/app/NotificationManager;

    invoke-virtual {v1, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final d()I
    .locals 1

    iget-object v0, p0, Lew;->a:Landroidx/media2/session/MediaSessionService;

    invoke-virtual {v0}, Landroid/app/Service;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    sget v0, Lhw;->media_session_service_notification_ic_music_note:I

    return v0
.end method

.method public f(Landroidx/media2/session/MediaSession;I)V
    .locals 2

    iget-object v0, p0, Lew;->a:Landroidx/media2/session/MediaSessionService;

    invoke-virtual {v0, p1}, Landroidx/media2/session/MediaSessionService;->e(Landroidx/media2/session/MediaSession;)Landroidx/media2/session/MediaSessionService$a;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroidx/media2/session/MediaSessionService$a;->b()I

    move-result v0

    invoke-virtual {p1}, Landroidx/media2/session/MediaSessionService$a;->a()Landroid/app/Notification;

    move-result-object p1

    invoke-static {p2}, Lew;->e(I)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lew;->h()V

    iget-object p2, p0, Lew;->b:Landroid/app/NotificationManager;

    invoke-virtual {p2, v0, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void

    :cond_1
    iget-object p2, p0, Lew;->a:Landroidx/media2/session/MediaSessionService;

    iget-object v1, p0, Lew;->d:Landroid/content/Intent;

    invoke-static {p2, v1}, Lg8;->o(Landroid/content/Context;Landroid/content/Intent;)V

    iget-object p2, p0, Lew;->a:Landroidx/media2/session/MediaSessionService;

    invoke-virtual {p2, v0, p1}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    return-void
.end method

.method public g(Landroidx/media2/session/MediaSession;)Landroidx/media2/session/MediaSessionService$a;
    .locals 7

    invoke-virtual {p0}, Lew;->c()V

    new-instance v0, Lz7$e;

    iget-object v1, p0, Lew;->a:Landroidx/media2/session/MediaSessionService;

    const-string v2, "default_channel_id"

    invoke-direct {v0, v1, v2}, Lz7$e;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v1, p0, Lew;->g:Lz7$a;

    invoke-virtual {v0, v1}, Lz7$e;->b(Lz7$a;)Lz7$e;

    invoke-virtual {p1}, Landroidx/media2/session/MediaSession;->p()Landroidx/media2/common/SessionPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media2/common/SessionPlayer;->y()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lew;->f:Lz7$a;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lew;->e:Lz7$a;

    :goto_0
    invoke-virtual {v0, v1}, Lz7$e;->b(Lz7$a;)Lz7$e;

    iget-object v1, p0, Lew;->h:Lz7$a;

    invoke-virtual {v0, v1}, Lz7$e;->b(Lz7$a;)Lz7$e;

    invoke-virtual {p1}, Landroidx/media2/session/MediaSession;->p()Landroidx/media2/common/SessionPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media2/common/SessionPlayer;->h()Landroidx/media2/common/MediaItem;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Landroidx/media2/session/MediaSession;->p()Landroidx/media2/common/SessionPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media2/common/SessionPlayer;->h()Landroidx/media2/common/MediaItem;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media2/common/MediaItem;->h()Landroidx/media2/common/MediaMetadata;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v2, "android.media.metadata.DISPLAY_TITLE"

    invoke-virtual {v1, v2}, Landroidx/media2/common/MediaMetadata;->j(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v2, "android.media.metadata.TITLE"

    invoke-virtual {v1, v2}, Landroidx/media2/common/MediaMetadata;->j(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    :cond_1
    invoke-virtual {v0, v2}, Lz7$e;->r(Ljava/lang/CharSequence;)Lz7$e;

    const-string v2, "android.media.metadata.ARTIST"

    invoke-virtual {v1, v2}, Landroidx/media2/common/MediaMetadata;->j(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Lz7$e;->q(Ljava/lang/CharSequence;)Lz7$e;

    const-string v2, "android.media.metadata.ALBUM_ART"

    invoke-virtual {v1, v2}, Landroidx/media2/common/MediaMetadata;->g(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lz7$e;->w(Landroid/graphics/Bitmap;)Lz7$e;

    :cond_2
    new-instance v1, Lxf;

    invoke-direct {v1}, Lxf;-><init>()V

    const-wide/16 v2, 0x1

    invoke-virtual {p0, v2, v3}, Lew;->b(J)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v1, v4}, Lxf;->r(Landroid/app/PendingIntent;)Lxf;

    invoke-virtual {p1}, Landroidx/media2/session/MediaSession;->j()Landroid/support/v4/media/session/MediaSessionCompat;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/media/session/MediaSessionCompat;->getSessionToken()Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object v4

    invoke-virtual {v1, v4}, Lxf;->s(Landroid/support/v4/media/session/MediaSessionCompat$Token;)Lxf;

    const/4 v4, 0x1

    new-array v5, v4, [I

    const/4 v6, 0x0

    aput v4, v5, v6

    invoke-virtual {v1, v5}, Lxf;->t([I)Lxf;

    invoke-virtual {p1}, Landroidx/media2/session/MediaSession;->a()Landroidx/media2/session/MediaSession$c;

    move-result-object p1

    invoke-interface {p1}, Landroidx/media2/session/MediaSession$c;->getSessionActivity()Landroid/app/PendingIntent;

    move-result-object p1

    invoke-virtual {v0, p1}, Lz7$e;->p(Landroid/app/PendingIntent;)Lz7$e;

    invoke-virtual {p0, v2, v3}, Lew;->b(J)Landroid/app/PendingIntent;

    move-result-object p1

    invoke-virtual {v0, p1}, Lz7$e;->t(Landroid/app/PendingIntent;)Lz7$e;

    invoke-virtual {v0, v4}, Lz7$e;->B(Z)Lz7$e;

    invoke-virtual {p0}, Lew;->d()I

    move-result p1

    invoke-virtual {v0, p1}, Lz7$e;->F(I)Lz7$e;

    invoke-virtual {v0, v1}, Lz7$e;->H(Lz7$g;)Lz7$e;

    invoke-virtual {v0, v4}, Lz7$e;->L(I)Lz7$e;

    invoke-virtual {v0, v6}, Lz7$e;->A(Z)Lz7$e;

    invoke-virtual {v0}, Lz7$e;->c()Landroid/app/Notification;

    move-result-object p1

    new-instance v0, Landroidx/media2/session/MediaSessionService$a;

    const/16 v1, 0x3e9

    invoke-direct {v0, v1, p1}, Landroidx/media2/session/MediaSessionService$a;-><init>(ILandroid/app/Notification;)V

    return-object v0
.end method

.method public final h()V
    .locals 4

    iget-object v0, p0, Lew;->a:Landroidx/media2/session/MediaSessionService;

    invoke-virtual {v0}, Landroidx/media2/session/MediaSessionService;->c()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media2/session/MediaSession;

    invoke-virtual {v3}, Landroidx/media2/session/MediaSession;->p()Landroidx/media2/common/SessionPlayer;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/media2/common/SessionPlayer;->y()I

    move-result v3

    invoke-static {v3}, Lew;->e(I)Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v0, v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    iget-object v0, p0, Lew;->a:Landroidx/media2/session/MediaSessionService;

    invoke-virtual {v0, v1}, Landroid/app/Service;->stopForeground(Z)V

    return-void
.end method
