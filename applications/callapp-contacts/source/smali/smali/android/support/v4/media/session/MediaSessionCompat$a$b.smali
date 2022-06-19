.class final Landroid/support/v4/media/session/MediaSessionCompat$a$b;
.super Landroid/media/session/MediaSession$Callback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/MediaSessionCompat$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/media/session/MediaSessionCompat$a;


# direct methods
.method constructor <init>(Landroid/support/v4/media/session/MediaSessionCompat$a;)V
    .locals 0

    .line 1541
    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$a$b;->a:Landroid/support/v4/media/session/MediaSessionCompat$a;

    invoke-direct {p0}, Landroid/media/session/MediaSession$Callback;-><init>()V

    return-void
.end method

.method private a()Landroid/support/v4/media/session/MediaSessionCompat$e;
    .locals 3

    .line 1905
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$a$b;->a:Landroid/support/v4/media/session/MediaSessionCompat$a;

    iget-object v0, v0, Landroid/support/v4/media/session/MediaSessionCompat$a;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 1906
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$a$b;->a:Landroid/support/v4/media/session/MediaSessionCompat$a;

    iget-object v1, v1, Landroid/support/v4/media/session/MediaSessionCompat$a;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/media/session/MediaSessionCompat$e;

    .line 1907
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 1909
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$a$b;->a:Landroid/support/v4/media/session/MediaSessionCompat$a;

    invoke-virtual {v1}, Landroid/support/v4/media/session/MediaSessionCompat$e;->f()Landroid/support/v4/media/session/MediaSessionCompat$a;

    move-result-object v2

    if-ne v0, v2, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v1

    .line 1907
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private static a(Landroid/support/v4/media/session/MediaSessionCompat$b;)V
    .locals 3

    .line 1882
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    return-void

    .line 1888
    :cond_0
    invoke-interface {p0}, Landroid/support/v4/media/session/MediaSessionCompat$b;->d()Ljava/lang/String;

    move-result-object v0

    .line 1889
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "android.media.session.MediaController"

    .line 1892
    :cond_1
    new-instance v1, Landroidx/media/b$b;

    const/4 v2, -0x1

    invoke-direct {v1, v0, v2, v2}, Landroidx/media/b$b;-><init>(Ljava/lang/String;II)V

    invoke-interface {p0, v1}, Landroid/support/v4/media/session/MediaSessionCompat$b;->a(Landroidx/media/b$b;)V

    return-void
.end method


# virtual methods
.method public final onCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 5

    .line 1546
    invoke-direct {p0}, Landroid/support/v4/media/session/MediaSessionCompat$a$b;->a()Landroid/support/v4/media/session/MediaSessionCompat$e;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1550
    :cond_0
    invoke-static {p2}, Landroid/support/v4/media/session/MediaSessionCompat;->a(Landroid/os/Bundle;)V

    .line 1551
    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompat$a$b;->a(Landroid/support/v4/media/session/MediaSessionCompat$b;)V

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "android.support.v4.media.session.command.GET_EXTRA_BINDER"

    .line 1553
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1554
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 4900
    iget-object p2, v0, Landroid/support/v4/media/session/MediaSessionCompat$e;->b:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 1556
    invoke-virtual {p2}, Landroid/support/v4/media/session/MediaSessionCompat$Token;->getExtraBinder()Landroid/support/v4/media/session/b;

    move-result-object v2

    const-string v3, "android.support.v4.media.session.EXTRA_BINDER"

    if-nez v2, :cond_1

    move-object v2, v1

    goto :goto_0

    .line 1558
    :cond_1
    invoke-interface {v2}, Landroid/support/v4/media/session/b;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 1557
    :goto_0
    invoke-static {p1, v3, v2}, Landroidx/core/app/d;->a(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/IBinder;)V

    const-string v2, "android.support.v4.media.session.SESSION_TOKEN2"

    .line 1560
    invoke-virtual {p2}, Landroid/support/v4/media/session/MediaSessionCompat$Token;->getSession2Token()Landroidx/versionedparcelable/c;

    move-result-object p2

    .line 1559
    invoke-static {p1, v2, p2}, Landroidx/versionedparcelable/a;->a(Landroid/os/Bundle;Ljava/lang/String;Landroidx/versionedparcelable/c;)V

    const/4 p2, 0x0

    .line 1561
    invoke-virtual {p3, p2, p1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    goto/16 :goto_2

    :cond_2
    const-string v2, "android.support.v4.media.session.command.ADD_QUEUE_ITEM"

    .line 1562
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/BadParcelableException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "android.support.v4.media.session.command.ARGUMENT_MEDIA_DESCRIPTION"

    if-eqz v2, :cond_3

    .line 1563
    :try_start_1
    iget-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$a$b;->a:Landroid/support/v4/media/session/MediaSessionCompat$a;

    .line 1564
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/support/v4/media/MediaDescriptionCompat;

    .line 1563
    invoke-virtual {p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat$a;->a(Landroid/support/v4/media/MediaDescriptionCompat;)V

    goto/16 :goto_2

    :cond_3
    const-string v2, "android.support.v4.media.session.command.ADD_QUEUE_ITEM_AT"

    .line 1566
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_1
    .catch Landroid/os/BadParcelableException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v4, "android.support.v4.media.session.command.ARGUMENT_INDEX"

    if-eqz v2, :cond_4

    .line 1567
    :try_start_2
    iget-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$a$b;->a:Landroid/support/v4/media/session/MediaSessionCompat$a;

    .line 1568
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p3

    check-cast p3, Landroid/support/v4/media/MediaDescriptionCompat;

    .line 1570
    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    .line 1567
    invoke-virtual {p1, p3, p2}, Landroid/support/v4/media/session/MediaSessionCompat$a;->a(Landroid/support/v4/media/MediaDescriptionCompat;I)V

    goto :goto_2

    :cond_4
    const-string v2, "android.support.v4.media.session.command.REMOVE_QUEUE_ITEM"

    .line 1571
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1572
    iget-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$a$b;->a:Landroid/support/v4/media/session/MediaSessionCompat$a;

    .line 1573
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/support/v4/media/MediaDescriptionCompat;

    .line 1572
    invoke-virtual {p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat$a;->b(Landroid/support/v4/media/MediaDescriptionCompat;)V

    goto :goto_2

    :cond_5
    const-string v2, "android.support.v4.media.session.command.REMOVE_QUEUE_ITEM_AT"

    .line 1575
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1576
    iget-object p1, v0, Landroid/support/v4/media/session/MediaSessionCompat$e;->h:Ljava/util/List;

    if-eqz p1, :cond_8

    const/4 p1, -0x1

    .line 1578
    invoke-virtual {p2, v4, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-ltz p1, :cond_6

    .line 1579
    iget-object p2, v0, Landroid/support/v4/media/session/MediaSessionCompat$e;->h:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ge p1, p2, :cond_6

    .line 1580
    iget-object p2, v0, Landroid/support/v4/media/session/MediaSessionCompat$e;->h:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;

    goto :goto_1

    :cond_6
    move-object p1, v1

    :goto_1
    if-eqz p1, :cond_8

    .line 1582
    iget-object p2, p0, Landroid/support/v4/media/session/MediaSessionCompat$a$b;->a:Landroid/support/v4/media/session/MediaSessionCompat$a;

    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;->getDescription()Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/support/v4/media/session/MediaSessionCompat$a;->b(Landroid/support/v4/media/MediaDescriptionCompat;)V

    goto :goto_2

    .line 1586
    :cond_7
    iget-object v2, p0, Landroid/support/v4/media/session/MediaSessionCompat$a$b;->a:Landroid/support/v4/media/session/MediaSessionCompat$a;

    invoke-virtual {v2, p1, p2, p3}, Landroid/support/v4/media/session/MediaSessionCompat$a;->a(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    :try_end_2
    .catch Landroid/os/BadParcelableException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    const-string p1, "MediaSessionCompat"

    const-string p2, "Could not unparcel the extra data."

    .line 1591
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5897
    :cond_8
    :goto_2
    invoke-interface {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat$b;->a(Landroidx/media/b$b;)V

    return-void
.end method

.method public final onCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4

    .line 1761
    invoke-direct {p0}, Landroid/support/v4/media/session/MediaSessionCompat$a$b;->a()Landroid/support/v4/media/session/MediaSessionCompat$e;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1765
    :cond_0
    invoke-static {p2}, Landroid/support/v4/media/session/MediaSessionCompat;->a(Landroid/os/Bundle;)V

    .line 1766
    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompat$a$b;->a(Landroid/support/v4/media/session/MediaSessionCompat$b;)V

    :try_start_0
    const-string v1, "android.support.v4.media.session.action.PLAY_FROM_URI"

    .line 1769
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/BadParcelableException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "android.support.v4.media.session.action.ARGUMENT_URI"

    const-string v3, "android.support.v4.media.session.action.ARGUMENT_EXTRAS"

    if-eqz v1, :cond_1

    .line 1770
    :try_start_1
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    .line 1771
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    .line 1772
    invoke-static {p2}, Landroid/support/v4/media/session/MediaSessionCompat;->a(Landroid/os/Bundle;)V

    .line 1773
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$a$b;->a:Landroid/support/v4/media/session/MediaSessionCompat$a;

    invoke-virtual {v1, p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat$a;->b(Landroid/net/Uri;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_1
    const-string v1, "android.support.v4.media.session.action.PREPARE"

    .line 1774
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1775
    iget-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$a$b;->a:Landroid/support/v4/media/session/MediaSessionCompat$a;

    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaSessionCompat$a;->a()V

    goto/16 :goto_0

    :cond_2
    const-string v1, "android.support.v4.media.session.action.PREPARE_FROM_MEDIA_ID"

    .line 1776
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string p1, "android.support.v4.media.session.action.ARGUMENT_MEDIA_ID"

    .line 1777
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1778
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    .line 1779
    invoke-static {p2}, Landroid/support/v4/media/session/MediaSessionCompat;->a(Landroid/os/Bundle;)V

    .line 1780
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$a$b;->a:Landroid/support/v4/media/session/MediaSessionCompat$a;

    invoke-virtual {v1, p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat$a;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_3
    const-string v1, "android.support.v4.media.session.action.PREPARE_FROM_SEARCH"

    .line 1781
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string p1, "android.support.v4.media.session.action.ARGUMENT_QUERY"

    .line 1782
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1783
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    .line 1784
    invoke-static {p2}, Landroid/support/v4/media/session/MediaSessionCompat;->a(Landroid/os/Bundle;)V

    .line 1785
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$a$b;->a:Landroid/support/v4/media/session/MediaSessionCompat$a;

    invoke-virtual {v1, p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat$a;->b(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_4
    const-string v1, "android.support.v4.media.session.action.PREPARE_FROM_URI"

    .line 1786
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1787
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    .line 1788
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    .line 1789
    invoke-static {p2}, Landroid/support/v4/media/session/MediaSessionCompat;->a(Landroid/os/Bundle;)V

    .line 1790
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$a$b;->a:Landroid/support/v4/media/session/MediaSessionCompat$a;

    invoke-virtual {v1, p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat$a;->a(Landroid/net/Uri;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_5
    const-string v1, "android.support.v4.media.session.action.SET_CAPTIONING_ENABLED"

    .line 1791
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string p1, "android.support.v4.media.session.action.ARGUMENT_CAPTIONING_ENABLED"

    .line 1792
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    goto :goto_0

    :cond_6
    const-string v1, "android.support.v4.media.session.action.SET_REPEAT_MODE"

    .line 1794
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string p1, "android.support.v4.media.session.action.ARGUMENT_REPEAT_MODE"

    .line 1795
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 1796
    iget-object p2, p0, Landroid/support/v4/media/session/MediaSessionCompat$a$b;->a:Landroid/support/v4/media/session/MediaSessionCompat$a;

    invoke-virtual {p2, p1}, Landroid/support/v4/media/session/MediaSessionCompat$a;->a(I)V

    goto :goto_0

    :cond_7
    const-string v1, "android.support.v4.media.session.action.SET_SHUFFLE_MODE"

    .line 1797
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string p1, "android.support.v4.media.session.action.ARGUMENT_SHUFFLE_MODE"

    .line 1798
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 1799
    iget-object p2, p0, Landroid/support/v4/media/session/MediaSessionCompat$a$b;->a:Landroid/support/v4/media/session/MediaSessionCompat$a;

    invoke-virtual {p2, p1}, Landroid/support/v4/media/session/MediaSessionCompat$a;->b(I)V

    goto :goto_0

    :cond_8
    const-string v1, "android.support.v4.media.session.action.SET_RATING"

    .line 1800
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string p1, "android.support.v4.media.session.action.ARGUMENT_RATING"

    .line 1801
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/support/v4/media/RatingCompat;

    .line 1802
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    .line 1803
    invoke-static {p2}, Landroid/support/v4/media/session/MediaSessionCompat;->a(Landroid/os/Bundle;)V

    .line 1804
    iget-object p2, p0, Landroid/support/v4/media/session/MediaSessionCompat$a$b;->a:Landroid/support/v4/media/session/MediaSessionCompat$a;

    invoke-virtual {p2, p1}, Landroid/support/v4/media/session/MediaSessionCompat$a;->b(Landroid/support/v4/media/RatingCompat;)V

    goto :goto_0

    :cond_9
    const-string v1, "android.support.v4.media.session.action.SET_PLAYBACK_SPEED"

    .line 1805
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    const-string p1, "android.support.v4.media.session.action.ARGUMENT_PLAYBACK_SPEED"

    const/high16 v1, 0x3f800000    # 1.0f

    .line 1806
    invoke-virtual {p2, p1, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result p1

    .line 1807
    iget-object p2, p0, Landroid/support/v4/media/session/MediaSessionCompat$a$b;->a:Landroid/support/v4/media/session/MediaSessionCompat$a;

    invoke-virtual {p2, p1}, Landroid/support/v4/media/session/MediaSessionCompat$a;->a(F)V
    :try_end_1
    .catch Landroid/os/BadParcelableException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "MediaSessionCompat"

    const-string p2, "Could not unparcel the data."

    .line 1813
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    :goto_0
    const/4 p1, 0x0

    .line 20897
    invoke-interface {v0, p1}, Landroid/support/v4/media/session/MediaSessionCompat$b;->a(Landroidx/media/b$b;)V

    return-void
.end method

.method public final onFastForward()V
    .locals 2

    .line 1702
    invoke-direct {p0}, Landroid/support/v4/media/session/MediaSessionCompat$a$b;->a()Landroid/support/v4/media/session/MediaSessionCompat$e;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1706
    :cond_0
    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompat$a$b;->a(Landroid/support/v4/media/session/MediaSessionCompat$b;)V

    .line 1707
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$a$b;->a:Landroid/support/v4/media/session/MediaSessionCompat$a;

    invoke-virtual {v1}, Landroid/support/v4/media/session/MediaSessionCompat$a;->f()V

    const/4 v1, 0x0

    .line 15897
    invoke-interface {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat$b;->a(Landroidx/media/b$b;)V

    return-void
.end method

.method public final onMediaButtonEvent(Landroid/content/Intent;)Z
    .locals 4

    .line 1598
    invoke-direct {p0}, Landroid/support/v4/media/session/MediaSessionCompat$a$b;->a()Landroid/support/v4/media/session/MediaSessionCompat$e;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1602
    :cond_0
    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompat$a$b;->a(Landroid/support/v4/media/session/MediaSessionCompat$b;)V

    .line 1603
    iget-object v2, p0, Landroid/support/v4/media/session/MediaSessionCompat$a$b;->a:Landroid/support/v4/media/session/MediaSessionCompat$a;

    invoke-virtual {v2, p1}, Landroid/support/v4/media/session/MediaSessionCompat$a;->a(Landroid/content/Intent;)Z

    move-result v2

    const/4 v3, 0x0

    .line 6897
    invoke-interface {v0, v3}, Landroid/support/v4/media/session/MediaSessionCompat$b;->a(Landroidx/media/b$b;)V

    if-nez v2, :cond_2

    .line 1605
    invoke-super {p0, p1}, Landroid/media/session/MediaSession$Callback;->onMediaButtonEvent(Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final onPause()V
    .locals 2

    .line 1669
    invoke-direct {p0}, Landroid/support/v4/media/session/MediaSessionCompat$a$b;->a()Landroid/support/v4/media/session/MediaSessionCompat$e;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1673
    :cond_0
    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompat$a$b;->a(Landroid/support/v4/media/session/MediaSessionCompat$b;)V

    .line 1674
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$a$b;->a:Landroid/support/v4/media/session/MediaSessionCompat$a;

    invoke-virtual {v1}, Landroid/support/v4/media/session/MediaSessionCompat$a;->c()V

    const/4 v1, 0x0

    .line 12897
    invoke-interface {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat$b;->a(Landroidx/media/b$b;)V

    return-void
.end method

.method public final onPlay()V
    .locals 2

    .line 1610
    invoke-direct {p0}, Landroid/support/v4/media/session/MediaSessionCompat$a$b;->a()Landroid/support/v4/media/session/MediaSessionCompat$e;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1614
    :cond_0
    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompat$a$b;->a(Landroid/support/v4/media/session/MediaSessionCompat$b;)V

    .line 1615
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$a$b;->a:Landroid/support/v4/media/session/MediaSessionCompat$a;

    invoke-virtual {v1}, Landroid/support/v4/media/session/MediaSessionCompat$a;->b()V

    const/4 v1, 0x0

    .line 7897
    invoke-interface {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat$b;->a(Landroidx/media/b$b;)V

    return-void
.end method

.method public final onPlayFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .line 1621
    invoke-direct {p0}, Landroid/support/v4/media/session/MediaSessionCompat$a$b;->a()Landroid/support/v4/media/session/MediaSessionCompat$e;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1625
    :cond_0
    invoke-static {p2}, Landroid/support/v4/media/session/MediaSessionCompat;->a(Landroid/os/Bundle;)V

    .line 1626
    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompat$a$b;->a(Landroid/support/v4/media/session/MediaSessionCompat$b;)V

    .line 1627
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$a$b;->a:Landroid/support/v4/media/session/MediaSessionCompat$a;

    invoke-virtual {v1, p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat$a;->c(Ljava/lang/String;Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 8897
    invoke-interface {v0, p1}, Landroid/support/v4/media/session/MediaSessionCompat$b;->a(Landroidx/media/b$b;)V

    return-void
.end method

.method public final onPlayFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .line 1633
    invoke-direct {p0}, Landroid/support/v4/media/session/MediaSessionCompat$a$b;->a()Landroid/support/v4/media/session/MediaSessionCompat$e;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1637
    :cond_0
    invoke-static {p2}, Landroid/support/v4/media/session/MediaSessionCompat;->a(Landroid/os/Bundle;)V

    .line 1638
    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompat$a$b;->a(Landroid/support/v4/media/session/MediaSessionCompat$b;)V

    .line 1639
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$a$b;->a:Landroid/support/v4/media/session/MediaSessionCompat$a;

    invoke-virtual {v1, p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat$a;->d(Ljava/lang/String;Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 9897
    invoke-interface {v0, p1}, Landroid/support/v4/media/session/MediaSessionCompat$b;->a(Landroidx/media/b$b;)V

    return-void
.end method

.method public final onPlayFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 2

    .line 1646
    invoke-direct {p0}, Landroid/support/v4/media/session/MediaSessionCompat$a$b;->a()Landroid/support/v4/media/session/MediaSessionCompat$e;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1650
    :cond_0
    invoke-static {p2}, Landroid/support/v4/media/session/MediaSessionCompat;->a(Landroid/os/Bundle;)V

    .line 1651
    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompat$a$b;->a(Landroid/support/v4/media/session/MediaSessionCompat$b;)V

    .line 1652
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$a$b;->a:Landroid/support/v4/media/session/MediaSessionCompat$a;

    invoke-virtual {v1, p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat$a;->b(Landroid/net/Uri;Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 10897
    invoke-interface {v0, p1}, Landroid/support/v4/media/session/MediaSessionCompat$b;->a(Landroidx/media/b$b;)V

    return-void
.end method

.method public final onPrepare()V
    .locals 2

    .line 1821
    invoke-direct {p0}, Landroid/support/v4/media/session/MediaSessionCompat$a$b;->a()Landroid/support/v4/media/session/MediaSessionCompat$e;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1825
    :cond_0
    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompat$a$b;->a(Landroid/support/v4/media/session/MediaSessionCompat$b;)V

    .line 1826
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$a$b;->a:Landroid/support/v4/media/session/MediaSessionCompat$a;

    invoke-virtual {v1}, Landroid/support/v4/media/session/MediaSessionCompat$a;->a()V

    const/4 v1, 0x0

    .line 21897
    invoke-interface {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat$b;->a(Landroidx/media/b$b;)V

    return-void
.end method

.method public final onPrepareFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .line 1833
    invoke-direct {p0}, Landroid/support/v4/media/session/MediaSessionCompat$a$b;->a()Landroid/support/v4/media/session/MediaSessionCompat$e;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1837
    :cond_0
    invoke-static {p2}, Landroid/support/v4/media/session/MediaSessionCompat;->a(Landroid/os/Bundle;)V

    .line 1838
    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompat$a$b;->a(Landroid/support/v4/media/session/MediaSessionCompat$b;)V

    .line 1839
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$a$b;->a:Landroid/support/v4/media/session/MediaSessionCompat$a;

    invoke-virtual {v1, p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat$a;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 22897
    invoke-interface {v0, p1}, Landroid/support/v4/media/session/MediaSessionCompat$b;->a(Landroidx/media/b$b;)V

    return-void
.end method

.method public final onPrepareFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .line 1846
    invoke-direct {p0}, Landroid/support/v4/media/session/MediaSessionCompat$a$b;->a()Landroid/support/v4/media/session/MediaSessionCompat$e;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1850
    :cond_0
    invoke-static {p2}, Landroid/support/v4/media/session/MediaSessionCompat;->a(Landroid/os/Bundle;)V

    .line 1851
    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompat$a$b;->a(Landroid/support/v4/media/session/MediaSessionCompat$b;)V

    .line 1852
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$a$b;->a:Landroid/support/v4/media/session/MediaSessionCompat$a;

    invoke-virtual {v1, p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat$a;->b(Ljava/lang/String;Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 23897
    invoke-interface {v0, p1}, Landroid/support/v4/media/session/MediaSessionCompat$b;->a(Landroidx/media/b$b;)V

    return-void
.end method

.method public final onPrepareFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 2

    .line 1859
    invoke-direct {p0}, Landroid/support/v4/media/session/MediaSessionCompat$a$b;->a()Landroid/support/v4/media/session/MediaSessionCompat$e;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1863
    :cond_0
    invoke-static {p2}, Landroid/support/v4/media/session/MediaSessionCompat;->a(Landroid/os/Bundle;)V

    .line 1864
    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompat$a$b;->a(Landroid/support/v4/media/session/MediaSessionCompat$b;)V

    .line 1865
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$a$b;->a:Landroid/support/v4/media/session/MediaSessionCompat$a;

    invoke-virtual {v1, p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat$a;->a(Landroid/net/Uri;Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 24897
    invoke-interface {v0, p1}, Landroid/support/v4/media/session/MediaSessionCompat$b;->a(Landroidx/media/b$b;)V

    return-void
.end method

.method public final onRewind()V
    .locals 2

    .line 1713
    invoke-direct {p0}, Landroid/support/v4/media/session/MediaSessionCompat$a$b;->a()Landroid/support/v4/media/session/MediaSessionCompat$e;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1717
    :cond_0
    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompat$a$b;->a(Landroid/support/v4/media/session/MediaSessionCompat$b;)V

    .line 1718
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$a$b;->a:Landroid/support/v4/media/session/MediaSessionCompat$a;

    invoke-virtual {v1}, Landroid/support/v4/media/session/MediaSessionCompat$a;->g()V

    const/4 v1, 0x0

    .line 16897
    invoke-interface {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat$b;->a(Landroidx/media/b$b;)V

    return-void
.end method

.method public final onSeekTo(J)V
    .locals 2

    .line 1735
    invoke-direct {p0}, Landroid/support/v4/media/session/MediaSessionCompat$a$b;->a()Landroid/support/v4/media/session/MediaSessionCompat$e;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1739
    :cond_0
    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompat$a$b;->a(Landroid/support/v4/media/session/MediaSessionCompat$b;)V

    .line 1740
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$a$b;->a:Landroid/support/v4/media/session/MediaSessionCompat$a;

    invoke-virtual {v1, p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat$a;->b(J)V

    const/4 p1, 0x0

    .line 18897
    invoke-interface {v0, p1}, Landroid/support/v4/media/session/MediaSessionCompat$b;->a(Landroidx/media/b$b;)V

    return-void
.end method

.method public final onSetPlaybackSpeed(F)V
    .locals 2

    .line 1872
    invoke-direct {p0}, Landroid/support/v4/media/session/MediaSessionCompat$a$b;->a()Landroid/support/v4/media/session/MediaSessionCompat$e;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1876
    :cond_0
    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompat$a$b;->a(Landroid/support/v4/media/session/MediaSessionCompat$b;)V

    .line 1877
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$a$b;->a:Landroid/support/v4/media/session/MediaSessionCompat$a;

    invoke-virtual {v1, p1}, Landroid/support/v4/media/session/MediaSessionCompat$a;->a(F)V

    const/4 p1, 0x0

    .line 25897
    invoke-interface {v0, p1}, Landroid/support/v4/media/session/MediaSessionCompat$b;->a(Landroidx/media/b$b;)V

    return-void
.end method

.method public final onSetRating(Landroid/media/Rating;)V
    .locals 2

    .line 1746
    invoke-direct {p0}, Landroid/support/v4/media/session/MediaSessionCompat$a$b;->a()Landroid/support/v4/media/session/MediaSessionCompat$e;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1750
    :cond_0
    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompat$a$b;->a(Landroid/support/v4/media/session/MediaSessionCompat$b;)V

    .line 1751
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$a$b;->a:Landroid/support/v4/media/session/MediaSessionCompat$a;

    invoke-static {p1}, Landroid/support/v4/media/RatingCompat;->fromRating(Ljava/lang/Object;)Landroid/support/v4/media/RatingCompat;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/support/v4/media/session/MediaSessionCompat$a;->a(Landroid/support/v4/media/RatingCompat;)V

    const/4 p1, 0x0

    .line 19897
    invoke-interface {v0, p1}, Landroid/support/v4/media/session/MediaSessionCompat$b;->a(Landroidx/media/b$b;)V

    return-void
.end method

.method public final onSkipToNext()V
    .locals 2

    .line 1680
    invoke-direct {p0}, Landroid/support/v4/media/session/MediaSessionCompat$a$b;->a()Landroid/support/v4/media/session/MediaSessionCompat$e;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1684
    :cond_0
    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompat$a$b;->a(Landroid/support/v4/media/session/MediaSessionCompat$b;)V

    .line 1685
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$a$b;->a:Landroid/support/v4/media/session/MediaSessionCompat$a;

    invoke-virtual {v1}, Landroid/support/v4/media/session/MediaSessionCompat$a;->d()V

    const/4 v1, 0x0

    .line 13897
    invoke-interface {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat$b;->a(Landroidx/media/b$b;)V

    return-void
.end method

.method public final onSkipToPrevious()V
    .locals 2

    .line 1691
    invoke-direct {p0}, Landroid/support/v4/media/session/MediaSessionCompat$a$b;->a()Landroid/support/v4/media/session/MediaSessionCompat$e;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1695
    :cond_0
    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompat$a$b;->a(Landroid/support/v4/media/session/MediaSessionCompat$b;)V

    .line 1696
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$a$b;->a:Landroid/support/v4/media/session/MediaSessionCompat$a;

    invoke-virtual {v1}, Landroid/support/v4/media/session/MediaSessionCompat$a;->e()V

    const/4 v1, 0x0

    .line 14897
    invoke-interface {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat$b;->a(Landroidx/media/b$b;)V

    return-void
.end method

.method public final onSkipToQueueItem(J)V
    .locals 2

    .line 1658
    invoke-direct {p0}, Landroid/support/v4/media/session/MediaSessionCompat$a$b;->a()Landroid/support/v4/media/session/MediaSessionCompat$e;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1662
    :cond_0
    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompat$a$b;->a(Landroid/support/v4/media/session/MediaSessionCompat$b;)V

    .line 1663
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$a$b;->a:Landroid/support/v4/media/session/MediaSessionCompat$a;

    invoke-virtual {v1, p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat$a;->a(J)V

    const/4 p1, 0x0

    .line 11897
    invoke-interface {v0, p1}, Landroid/support/v4/media/session/MediaSessionCompat$b;->a(Landroidx/media/b$b;)V

    return-void
.end method

.method public final onStop()V
    .locals 2

    .line 1724
    invoke-direct {p0}, Landroid/support/v4/media/session/MediaSessionCompat$a$b;->a()Landroid/support/v4/media/session/MediaSessionCompat$e;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1728
    :cond_0
    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompat$a$b;->a(Landroid/support/v4/media/session/MediaSessionCompat$b;)V

    .line 1729
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$a$b;->a:Landroid/support/v4/media/session/MediaSessionCompat$a;

    invoke-virtual {v1}, Landroid/support/v4/media/session/MediaSessionCompat$a;->h()V

    const/4 v1, 0x0

    .line 17897
    invoke-interface {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat$b;->a(Landroidx/media/b$b;)V

    return-void
.end method
