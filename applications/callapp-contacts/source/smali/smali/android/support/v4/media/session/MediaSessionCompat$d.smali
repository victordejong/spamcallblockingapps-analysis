.class final Landroid/support/v4/media/session/MediaSessionCompat$d;
.super Landroid/support/v4/media/session/MediaSessionCompat$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/MediaSessionCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "d"
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;Landroid/app/PendingIntent;Landroidx/versionedparcelable/c;Landroid/os/Bundle;)V
    .locals 0

    .line 3710
    invoke-direct/range {p0 .. p6}, Landroid/support/v4/media/session/MediaSessionCompat$c;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;Landroid/app/PendingIntent;Landroidx/versionedparcelable/c;Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method final a(J)I
    .locals 4

    .line 3736
    invoke-super {p0, p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat$c;->a(J)I

    move-result v0

    const-wide/16 v1, 0x80

    and-long/2addr p1, v1

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-eqz v3, :cond_0

    or-int/lit16 v0, v0, 0x200

    :cond_0
    return v0
.end method

.method final a(Landroid/os/Bundle;)Landroid/media/RemoteControlClient$MetadataEditor;
    .locals 8

    .line 3745
    invoke-super {p0, p1}, Landroid/support/v4/media/session/MediaSessionCompat$c;->a(Landroid/os/Bundle;)Landroid/media/RemoteControlClient$MetadataEditor;

    move-result-object v0

    .line 3746
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$d;->m:Landroid/support/v4/media/session/PlaybackStateCompat;

    const-wide/16 v2, 0x0

    if-nez v1, :cond_0

    move-wide v4, v2

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$d;->m:Landroid/support/v4/media/session/PlaybackStateCompat;

    invoke-virtual {v1}, Landroid/support/v4/media/session/PlaybackStateCompat;->getActions()J

    move-result-wide v4

    :goto_0
    const-wide/16 v6, 0x80

    and-long/2addr v4, v6

    const v1, 0x10000001

    cmp-long v6, v4, v2

    if-eqz v6, :cond_1

    .line 3748
    invoke-virtual {v0, v1}, Landroid/media/RemoteControlClient$MetadataEditor;->addEditableKey(I)V

    :cond_1
    if-nez p1, :cond_2

    return-object v0

    :cond_2
    const-string v2, "android.media.metadata.YEAR"

    .line 3754
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0x8

    .line 3756
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 3755
    invoke-virtual {v0, v3, v4, v5}, Landroid/media/RemoteControlClient$MetadataEditor;->putLong(IJ)Landroid/media/RemoteControlClient$MetadataEditor;

    :cond_3
    const-string v2, "android.media.metadata.RATING"

    .line 3758
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v3, 0x65

    .line 3761
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    .line 3760
    invoke-virtual {v0, v3, v2}, Landroid/media/MediaMetadataEditor;->putObject(ILjava/lang/Object;)Landroid/media/MediaMetadataEditor;

    :cond_4
    const-string v2, "android.media.metadata.USER_RATING"

    .line 3763
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 3766
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    .line 3765
    invoke-virtual {v0, v1, p1}, Landroid/media/MediaMetadataEditor;->putObject(ILjava/lang/Object;)Landroid/media/MediaMetadataEditor;

    :cond_5
    return-object v0
.end method

.method public final a(Landroid/support/v4/media/session/MediaSessionCompat$a;Landroid/os/Handler;)V
    .locals 0

    .line 3715
    invoke-super {p0, p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat$c;->a(Landroid/support/v4/media/session/MediaSessionCompat$a;Landroid/os/Handler;)V

    if-nez p1, :cond_0

    .line 3717
    iget-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$d;->e:Landroid/media/RemoteControlClient;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/media/RemoteControlClient;->setMetadataUpdateListener(Landroid/media/RemoteControlClient$OnMetadataUpdateListener;)V

    return-void

    .line 3719
    :cond_0
    new-instance p1, Landroid/support/v4/media/session/MediaSessionCompat$d$1;

    invoke-direct {p1, p0}, Landroid/support/v4/media/session/MediaSessionCompat$d$1;-><init>(Landroid/support/v4/media/session/MediaSessionCompat$d;)V

    .line 3730
    iget-object p2, p0, Landroid/support/v4/media/session/MediaSessionCompat$d;->e:Landroid/media/RemoteControlClient;

    invoke-virtual {p2, p1}, Landroid/media/RemoteControlClient;->setMetadataUpdateListener(Landroid/media/RemoteControlClient$OnMetadataUpdateListener;)V

    return-void
.end method
