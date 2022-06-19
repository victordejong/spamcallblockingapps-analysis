.class Landroid/support/v4/media/session/MediaSessionCompat$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/media/session/MediaSessionCompat$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/MediaSessionCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/session/MediaSessionCompat$h$c;,
        Landroid/support/v4/media/session/MediaSessionCompat$h$a;,
        Landroid/support/v4/media/session/MediaSessionCompat$h$b;
    }
.end annotation


# instance fields
.field private final A:Landroid/app/PendingIntent;

.field private final B:Landroid/support/v4/media/session/MediaSessionCompat$h$b;

.field private final C:Landroid/support/v4/media/session/MediaSessionCompat$Token;

.field private D:Landroid/support/v4/media/session/MediaSessionCompat$h$c;

.field private E:Landroidx/media/b$b;

.field private F:Landroidx/media/f$a;

.field final a:Ljava/lang/String;

.field final b:Landroid/os/Bundle;

.field final c:Ljava/lang/String;

.field final d:Landroid/media/AudioManager;

.field final e:Landroid/media/RemoteControlClient;

.field final f:Ljava/lang/Object;

.field final g:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/support/v4/media/session/a;",
            ">;"
        }
    .end annotation
.end field

.field h:Z

.field i:Z

.field volatile j:Landroid/support/v4/media/session/MediaSessionCompat$a;

.field k:I

.field l:Landroid/support/v4/media/MediaMetadataCompat;

.field m:Landroid/support/v4/media/session/PlaybackStateCompat;

.field n:Landroid/app/PendingIntent;

.field o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;",
            ">;"
        }
    .end annotation
.end field

.field p:Ljava/lang/CharSequence;

.field q:I

.field r:Z

.field s:I

.field t:I

.field u:Landroid/os/Bundle;

.field v:I

.field w:I

.field x:Landroidx/media/f;

.field private final y:Landroid/content/Context;

.field private final z:Landroid/content/ComponentName;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;Landroid/app/PendingIntent;Landroidx/versionedparcelable/c;Landroid/os/Bundle;)V
    .locals 3

    .line 2434
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2391
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$h;->f:Ljava/lang/Object;

    .line 2392
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$h;->g:Landroid/os/RemoteCallbackList;

    const/4 v0, 0x0

    .line 2396
    iput-boolean v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$h;->h:Z

    .line 2397
    iput-boolean v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$h;->i:Z

    const/4 v1, 0x3

    .line 2402
    iput v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$h;->k:I

    .line 2419
    new-instance v2, Landroid/support/v4/media/session/MediaSessionCompat$h$1;

    invoke-direct {v2, p0}, Landroid/support/v4/media/session/MediaSessionCompat$h$1;-><init>(Landroid/support/v4/media/session/MediaSessionCompat$h;)V

    iput-object v2, p0, Landroid/support/v4/media/session/MediaSessionCompat$h;->F:Landroidx/media/f$a;

    if-eqz p3, :cond_0

    .line 2439
    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$h;->y:Landroid/content/Context;

    .line 2440
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v4/media/session/MediaSessionCompat$h;->a:Ljava/lang/String;

    .line 2441
    iput-object p6, p0, Landroid/support/v4/media/session/MediaSessionCompat$h;->b:Landroid/os/Bundle;

    const-string p6, "audio"

    .line 2442
    invoke-virtual {p1, p6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$h;->d:Landroid/media/AudioManager;

    .line 2443
    iput-object p2, p0, Landroid/support/v4/media/session/MediaSessionCompat$h;->c:Ljava/lang/String;

    .line 2444
    iput-object p3, p0, Landroid/support/v4/media/session/MediaSessionCompat$h;->z:Landroid/content/ComponentName;

    .line 2445
    iput-object p4, p0, Landroid/support/v4/media/session/MediaSessionCompat$h;->A:Landroid/app/PendingIntent;

    .line 2446
    new-instance p1, Landroid/support/v4/media/session/MediaSessionCompat$h$b;

    invoke-direct {p1, p0}, Landroid/support/v4/media/session/MediaSessionCompat$h$b;-><init>(Landroid/support/v4/media/session/MediaSessionCompat$h;)V

    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$h;->B:Landroid/support/v4/media/session/MediaSessionCompat$h$b;

    .line 2447
    new-instance p2, Landroid/support/v4/media/session/MediaSessionCompat$Token;

    const/4 p3, 0x0

    invoke-direct {p2, p1, p3, p5}, Landroid/support/v4/media/session/MediaSessionCompat$Token;-><init>(Ljava/lang/Object;Landroid/support/v4/media/session/b;Landroidx/versionedparcelable/c;)V

    iput-object p2, p0, Landroid/support/v4/media/session/MediaSessionCompat$h;->C:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 2449
    iput v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$h;->q:I

    const/4 p1, 0x1

    .line 2450
    iput p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$h;->v:I

    .line 2451
    iput v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$h;->w:I

    .line 2452
    new-instance p1, Landroid/media/RemoteControlClient;

    invoke-direct {p1, p4}, Landroid/media/RemoteControlClient;-><init>(Landroid/app/PendingIntent;)V

    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$h;->e:Landroid/media/RemoteControlClient;

    return-void

    .line 2436
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "MediaButtonReceiver component may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(Landroid/support/v4/media/session/ParcelableVolumeInfo;)V
    .locals 2

    .line 2917
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$h;->g:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 2919
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$h;->g:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Landroid/support/v4/media/session/a;

    .line 2921
    :try_start_0
    invoke-interface {v1, p1}, Landroid/support/v4/media/session/a;->a(Landroid/support/v4/media/session/ParcelableVolumeInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2925
    :cond_0
    iget-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$h;->g:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method static f(I)I
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, -0x1

    return p0

    :pswitch_0
    const/4 p0, 0x6

    return p0

    :pswitch_1
    const/4 p0, 0x7

    return p0

    :pswitch_2
    const/16 p0, 0x9

    return p0

    :pswitch_3
    const/16 p0, 0x8

    return p0

    :pswitch_4
    const/4 p0, 0x5

    return p0

    :pswitch_5
    const/4 p0, 0x4

    return p0

    :pswitch_6
    const/4 p0, 0x3

    return p0

    :pswitch_7
    const/4 p0, 0x2

    return p0

    :pswitch_8
    const/4 p0, 0x1

    return p0

    :pswitch_9
    const/4 p0, 0x0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private g()V
    .locals 2

    .line 2867
    iget-boolean v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$h;->i:Z

    if-eqz v0, :cond_0

    .line 2869
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$h;->A:Landroid/app/PendingIntent;

    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$h;->z:Landroid/content/ComponentName;

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat$h;->a(Landroid/app/PendingIntent;Landroid/content/ComponentName;)V

    .line 2871
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$h;->d:Landroid/media/AudioManager;

    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$h;->e:Landroid/media/RemoteControlClient;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->registerRemoteControlClient(Landroid/media/RemoteControlClient;)V

    .line 2873
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$h;->l:Landroid/support/v4/media/MediaMetadataCompat;

    invoke-virtual {p0, v0}, Landroid/support/v4/media/session/MediaSessionCompat$h;->a(Landroid/support/v4/media/MediaMetadataCompat;)V

    .line 2874
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$h;->m:Landroid/support/v4/media/session/PlaybackStateCompat;

    invoke-virtual {p0, v0}, Landroid/support/v4/media/session/MediaSessionCompat$h;->a(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    return-void

    .line 2877
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$h;->A:Landroid/app/PendingIntent;

    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$h;->z:Landroid/content/ComponentName;

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat$h;->b(Landroid/app/PendingIntent;Landroid/content/ComponentName;)V

    .line 2882
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$h;->e:Landroid/media/RemoteControlClient;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/RemoteControlClient;->setPlaybackState(I)V

    .line 2883
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$h;->d:Landroid/media/AudioManager;

    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$h;->e:Landroid/media/RemoteControlClient;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->unregisterRemoteControlClient(Landroid/media/RemoteControlClient;)V

    return-void
.end method


# virtual methods
.method a(J)I
    .locals 6

    const-wide/16 v0, 0x1

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/16 v0, 0x20

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-wide/16 v4, 0x2

    and-long/2addr v4, p1

    cmp-long v1, v4, v2

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x10

    :cond_1
    const-wide/16 v4, 0x4

    and-long/2addr v4, p1

    cmp-long v1, v4, v2

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x4

    :cond_2
    const-wide/16 v4, 0x8

    and-long/2addr v4, p1

    cmp-long v1, v4, v2

    if-eqz v1, :cond_3

    or-int/lit8 v0, v0, 0x2

    :cond_3
    const-wide/16 v4, 0x10

    and-long/2addr v4, p1

    cmp-long v1, v4, v2

    if-eqz v1, :cond_4

    or-int/lit8 v0, v0, 0x1

    :cond_4
    const-wide/16 v4, 0x20

    and-long/2addr v4, p1

    cmp-long v1, v4, v2

    if-eqz v1, :cond_5

    or-int/lit16 v0, v0, 0x80

    :cond_5
    const-wide/16 v4, 0x40

    and-long/2addr v4, p1

    cmp-long v1, v4, v2

    if-eqz v1, :cond_6

    or-int/lit8 v0, v0, 0x40

    :cond_6
    const-wide/16 v4, 0x200

    and-long/2addr p1, v4

    cmp-long v1, p1, v2

    if-eqz v1, :cond_7

    or-int/lit8 v0, v0, 0x8

    :cond_7
    return v0
.end method

.method a(Landroid/os/Bundle;)Landroid/media/RemoteControlClient$MetadataEditor;
    .locals 6

    .line 2695
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$h;->e:Landroid/media/RemoteControlClient;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/RemoteControlClient;->editMetadata(Z)Landroid/media/RemoteControlClient$MetadataEditor;

    move-result-object v0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const-string v2, "android.media.metadata.ART"

    .line 2699
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    const/16 v4, 0x64

    const/4 v5, 0x0

    if-eqz v3, :cond_2

    .line 2700
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    .line 2703
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    invoke-virtual {v2, v3, v5}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 2705
    :cond_1
    invoke-virtual {v0, v4, v2}, Landroid/media/RemoteControlClient$MetadataEditor;->putBitmap(ILandroid/graphics/Bitmap;)Landroid/media/RemoteControlClient$MetadataEditor;

    goto :goto_0

    :cond_2
    const-string v2, "android.media.metadata.ALBUM_ART"

    .line 2706
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2708
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    if-eqz v2, :cond_3

    .line 2711
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    invoke-virtual {v2, v3, v5}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 2713
    :cond_3
    invoke-virtual {v0, v4, v2}, Landroid/media/RemoteControlClient$MetadataEditor;->putBitmap(ILandroid/graphics/Bitmap;)Landroid/media/RemoteControlClient$MetadataEditor;

    :cond_4
    :goto_0
    const-string v2, "android.media.metadata.ALBUM"

    .line 2715
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2717
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2716
    invoke-virtual {v0, v1, v2}, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;

    :cond_5
    const-string v1, "android.media.metadata.ALBUM_ARTIST"

    .line 2719
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/16 v2, 0xd

    .line 2721
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2720
    invoke-virtual {v0, v2, v1}, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;

    :cond_6
    const-string v1, "android.media.metadata.ARTIST"

    .line 2723
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v2, 0x2

    .line 2725
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2724
    invoke-virtual {v0, v2, v1}, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;

    :cond_7
    const-string v1, "android.media.metadata.AUTHOR"

    .line 2727
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v2, 0x3

    .line 2729
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2728
    invoke-virtual {v0, v2, v1}, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;

    :cond_8
    const-string v1, "android.media.metadata.COMPILATION"

    .line 2731
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    const/16 v2, 0xf

    .line 2733
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2732
    invoke-virtual {v0, v2, v1}, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;

    :cond_9
    const-string v1, "android.media.metadata.COMPOSER"

    .line 2735
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    const/4 v2, 0x4

    .line 2737
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2736
    invoke-virtual {v0, v2, v1}, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;

    :cond_a
    const-string v1, "android.media.metadata.DATE"

    .line 2739
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    const/4 v2, 0x5

    .line 2741
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2740
    invoke-virtual {v0, v2, v1}, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;

    :cond_b
    const-string v1, "android.media.metadata.DISC_NUMBER"

    .line 2743
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    const/16 v2, 0xe

    .line 2745
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 2744
    invoke-virtual {v0, v2, v3, v4}, Landroid/media/RemoteControlClient$MetadataEditor;->putLong(IJ)Landroid/media/RemoteControlClient$MetadataEditor;

    :cond_c
    const-string v1, "android.media.metadata.DURATION"

    .line 2747
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    const/16 v2, 0x9

    .line 2749
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 2748
    invoke-virtual {v0, v2, v3, v4}, Landroid/media/RemoteControlClient$MetadataEditor;->putLong(IJ)Landroid/media/RemoteControlClient$MetadataEditor;

    :cond_d
    const-string v1, "android.media.metadata.GENRE"

    .line 2751
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    const/4 v2, 0x6

    .line 2753
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2752
    invoke-virtual {v0, v2, v1}, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;

    :cond_e
    const-string v1, "android.media.metadata.TITLE"

    .line 2755
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    const/4 v2, 0x7

    .line 2757
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2756
    invoke-virtual {v0, v2, v1}, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;

    :cond_f
    const-string v1, "android.media.metadata.TRACK_NUMBER"

    .line 2759
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 2761
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 2760
    invoke-virtual {v0, v5, v1, v2}, Landroid/media/RemoteControlClient$MetadataEditor;->putLong(IJ)Landroid/media/RemoteControlClient$MetadataEditor;

    :cond_10
    const-string v1, "android.media.metadata.WRITER"

    .line 2763
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    const/16 v2, 0xb

    .line 2765
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2764
    invoke-virtual {v0, v2, p1}, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;

    :cond_11
    return-object v0
.end method

.method public final a()V
    .locals 2

    const/4 v0, 0x0

    .line 2570
    iput-boolean v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$h;->i:Z

    const/4 v0, 0x1

    .line 2571
    iput-boolean v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$h;->h:Z

    .line 2572
    invoke-direct {p0}, Landroid/support/v4/media/session/MediaSessionCompat$h;->g()V

    .line 6929
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$h;->g:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    sub-int/2addr v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 6931
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$h;->g:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/a;

    .line 6933
    :try_start_0
    invoke-interface {v0}, Landroid/support/v4/media/session/a;->a()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 6937
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$h;->g:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 6938
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$h;->g:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->kill()V

    const/4 v0, 0x0

    .line 2574
    invoke-virtual {p0, v0, v0}, Landroid/support/v4/media/session/MediaSessionCompat$h;->a(Landroid/support/v4/media/session/MediaSessionCompat$a;Landroid/os/Handler;)V

    return-void
.end method

.method public final a(I)V
    .locals 1

    .line 2511
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$h;->f:Ljava/lang/Object;

    monitor-enter v0

    or-int/lit8 p1, p1, 0x1

    or-int/lit8 p1, p1, 0x2

    .line 2513
    :try_start_0
    iput p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$h;->k:I

    .line 2514
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method final a(II)V
    .locals 2

    .line 2897
    iget v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$h;->v:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2898
    iget-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$h;->x:Landroidx/media/f;

    if-eqz p1, :cond_1

    return-void

    .line 2902
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$h;->d:Landroid/media/AudioManager;

    iget v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$h;->w:I

    invoke-virtual {v0, v1, p1, p2}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    :cond_1
    return-void
.end method

.method final a(IIILjava/lang/Object;Landroid/os/Bundle;)V
    .locals 2

    .line 2474
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$h;->f:Ljava/lang/Object;

    monitor-enter v0

    .line 2475
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$h;->D:Landroid/support/v4/media/session/MediaSessionCompat$h$c;

    if-eqz v1, :cond_2

    .line 2476
    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/support/v4/media/session/MediaSessionCompat$h$c;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 2477
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 2479
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p3

    const-string p4, "data_calling_uid"

    .line 2480
    invoke-virtual {p2, p4, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p4, "data_calling_pkg"

    .line 2484
    invoke-virtual {p0, p3}, Landroid/support/v4/media/session/MediaSessionCompat$h;->e(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p4, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2485
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p3

    if-lez p3, :cond_0

    const-string p4, "data_calling_pid"

    .line 2487
    invoke-virtual {p2, p4, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    const-string p3, "data_calling_pid"

    const/4 p4, -0x1

    .line 2490
    invoke-virtual {p2, p3, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :goto_0
    if-eqz p5, :cond_1

    const-string p3, "data_extras"

    .line 2493
    invoke-virtual {p2, p3, p5}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2495
    :cond_1
    invoke-virtual {p1, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2496
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 2498
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final a(Landroid/app/PendingIntent;)V
    .locals 1

    .line 2772
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$h;->f:Ljava/lang/Object;

    monitor-enter v0

    .line 2773
    :try_start_0
    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$h;->n:Landroid/app/PendingIntent;

    .line 2774
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method a(Landroid/app/PendingIntent;Landroid/content/ComponentName;)V
    .locals 0

    .line 2888
    iget-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$h;->d:Landroid/media/AudioManager;

    invoke-virtual {p1, p2}, Landroid/media/AudioManager;->registerMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    return-void
.end method

.method public final a(Landroid/support/v4/media/MediaMetadataCompat;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 2678
    new-instance v0, Landroid/support/v4/media/MediaMetadataCompat$a;

    sget v1, Landroid/support/v4/media/session/MediaSessionCompat;->c:I

    invoke-direct {v0, p1, v1}, Landroid/support/v4/media/MediaMetadataCompat$a;-><init>(Landroid/support/v4/media/MediaMetadataCompat;I)V

    invoke-virtual {v0}, Landroid/support/v4/media/MediaMetadataCompat$a;->a()Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object p1

    .line 2681
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$h;->f:Ljava/lang/Object;

    monitor-enter v0

    .line 2682
    :try_start_0
    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$h;->l:Landroid/support/v4/media/MediaMetadataCompat;

    .line 2683
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6966
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$h;->g:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 6968
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$h;->g:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Landroid/support/v4/media/session/a;

    .line 6970
    :try_start_1
    invoke-interface {v1, p1}, Landroid/support/v4/media/session/a;->a(Landroid/support/v4/media/MediaMetadataCompat;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 6974
    :cond_1
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$h;->g:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 2685
    iget-boolean v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$h;->i:Z

    if-nez v0, :cond_2

    return-void

    :cond_2
    if-nez p1, :cond_3

    const/4 p1, 0x0

    goto :goto_1

    .line 2690
    :cond_3
    invoke-virtual {p1}, Landroid/support/v4/media/MediaMetadataCompat;->getBundle()Landroid/os/Bundle;

    move-result-object p1

    .line 2689
    :goto_1
    invoke-virtual {p0, p1}, Landroid/support/v4/media/session/MediaSessionCompat$h;->a(Landroid/os/Bundle;)Landroid/media/RemoteControlClient$MetadataEditor;

    move-result-object p1

    .line 2691
    invoke-virtual {p1}, Landroid/media/RemoteControlClient$MetadataEditor;->apply()V

    return-void

    :catchall_0
    move-exception p1

    .line 2683
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public a(Landroid/support/v4/media/session/MediaSessionCompat$a;Landroid/os/Handler;)V
    .locals 4

    .line 2457
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$h;->f:Ljava/lang/Object;

    monitor-enter v0

    .line 2458
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$h;->D:Landroid/support/v4/media/session/MediaSessionCompat$h$c;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 2459
    invoke-virtual {v1, v2}, Landroid/support/v4/media/session/MediaSessionCompat$h$c;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    if-eqz p1, :cond_2

    if-nez p2, :cond_1

    goto :goto_0

    .line 2462
    :cond_1
    new-instance v1, Landroid/support/v4/media/session/MediaSessionCompat$h$c;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, p0, v3}, Landroid/support/v4/media/session/MediaSessionCompat$h$c;-><init>(Landroid/support/v4/media/session/MediaSessionCompat$h;Landroid/os/Looper;)V

    goto :goto_1

    :cond_2
    :goto_0
    move-object v1, v2

    :goto_1
    iput-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$h;->D:Landroid/support/v4/media/session/MediaSessionCompat$h$c;

    .line 2463
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$h;->j:Landroid/support/v4/media/session/MediaSessionCompat$a;

    if-eq v1, p1, :cond_3

    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$h;->j:Landroid/support/v4/media/session/MediaSessionCompat$a;

    if-eqz v1, :cond_3

    .line 2464
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$h;->j:Landroid/support/v4/media/session/MediaSessionCompat$a;

    invoke-virtual {v1, v2, v2}, Landroid/support/v4/media/session/MediaSessionCompat$a;->a(Landroid/support/v4/media/session/MediaSessionCompat$b;Landroid/os/Handler;)V

    .line 2466
    :cond_3
    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$h;->j:Landroid/support/v4/media/session/MediaSessionCompat$a;

    .line 2467
    iget-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$h;->j:Landroid/support/v4/media/session/MediaSessionCompat$a;

    if-eqz p1, :cond_4

    .line 2468
    iget-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$h;->j:Landroid/support/v4/media/session/MediaSessionCompat$a;

    invoke-virtual {p1, p0, p2}, Landroid/support/v4/media/session/MediaSessionCompat$a;->a(Landroid/support/v4/media/session/MediaSessionCompat$b;Landroid/os/Handler;)V

    .line 2470
    :cond_4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final a(Landroid/support/v4/media/session/PlaybackStateCompat;)V
    .locals 3

    .line 2584
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$h;->f:Ljava/lang/Object;

    monitor-enter v0

    .line 2585
    :try_start_0
    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$h;->m:Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 2586
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6954
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$h;->g:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 6956
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$h;->g:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Landroid/support/v4/media/session/a;

    .line 6958
    :try_start_1
    invoke-interface {v1, p1}, Landroid/support/v4/media/session/a;->a(Landroid/support/v4/media/session/PlaybackStateCompat;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 6962
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$h;->g:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 2588
    iget-boolean v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$h;->i:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    if-nez p1, :cond_2

    .line 2593
    iget-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$h;->e:Landroid/media/RemoteControlClient;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/media/RemoteControlClient;->setPlaybackState(I)V

    .line 2594
    iget-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$h;->e:Landroid/media/RemoteControlClient;

    invoke-virtual {p1, v0}, Landroid/media/RemoteControlClient;->setTransportControlFlags(I)V

    return-void

    .line 2597
    :cond_2
    invoke-virtual {p0, p1}, Landroid/support/v4/media/session/MediaSessionCompat$h;->b(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    .line 2600
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$h;->e:Landroid/media/RemoteControlClient;

    .line 2601
    invoke-virtual {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->getActions()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Landroid/support/v4/media/session/MediaSessionCompat$h;->a(J)I

    move-result p1

    .line 2600
    invoke-virtual {v0, p1}, Landroid/media/RemoteControlClient;->setTransportControlFlags(I)V

    return-void

    :catchall_0
    move-exception p1

    .line 2586
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final a(Landroidx/media/b$b;)V
    .locals 1

    .line 2853
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$h;->f:Ljava/lang/Object;

    monitor-enter v0

    .line 2854
    :try_start_0
    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$h;->E:Landroidx/media/b$b;

    .line 2855
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final a(Landroidx/media/f;)V
    .locals 8

    if-eqz p1, :cond_1

    .line 2536
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$h;->x:Landroidx/media/f;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 4189
    iput-object v1, v0, Landroidx/media/f;->e:Landroidx/media/f$a;

    :cond_0
    const/4 v3, 0x2

    .line 2539
    iput v3, p0, Landroid/support/v4/media/session/MediaSessionCompat$h;->v:I

    .line 2540
    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$h;->x:Landroidx/media/f;

    .line 2541
    new-instance v0, Landroid/support/v4/media/session/ParcelableVolumeInfo;

    iget v4, p0, Landroid/support/v4/media/session/MediaSessionCompat$h;->w:I

    .line 5124
    iget v5, p1, Landroidx/media/f;->a:I

    .line 2542
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$h;->x:Landroidx/media/f;

    .line 5133
    iget v6, v1, Landroidx/media/f;->b:I

    .line 2542
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$h;->x:Landroidx/media/f;

    .line 6114
    iget v7, v1, Landroidx/media/f;->d:I

    move-object v2, v0

    .line 2543
    invoke-direct/range {v2 .. v7}, Landroid/support/v4/media/session/ParcelableVolumeInfo;-><init>(IIIII)V

    .line 2544
    invoke-direct {p0, v0}, Landroid/support/v4/media/session/MediaSessionCompat$h;->a(Landroid/support/v4/media/session/ParcelableVolumeInfo;)V

    .line 2546
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$h;->F:Landroidx/media/f$a;

    .line 6189
    iput-object v0, p1, Landroidx/media/f;->e:Landroidx/media/f$a;

    return-void

    .line 2534
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "volumeProvider may not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Ljava/lang/CharSequence;)V
    .locals 2

    .line 2790
    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$h;->p:Ljava/lang/CharSequence;

    .line 6990
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$h;->g:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 6992
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$h;->g:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Landroid/support/v4/media/session/a;

    .line 6994
    :try_start_0
    invoke-interface {v1, p1}, Landroid/support/v4/media/session/a;->a(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 6998
    :cond_0
    iget-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$h;->g:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;",
            ">;)V"
        }
    .end annotation

    .line 2784
    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$h;->o:Ljava/util/List;

    .line 6978
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$h;->g:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 6980
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$h;->g:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Landroid/support/v4/media/session/a;

    .line 6982
    :try_start_0
    invoke-interface {v1, p1}, Landroid/support/v4/media/session/a;->a(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 6986
    :cond_0
    iget-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$h;->g:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method public final a(Z)V
    .locals 1

    .line 2551
    iget-boolean p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$h;->i:Z

    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    return-void

    .line 2554
    :cond_0
    iput-boolean v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$h;->i:Z

    .line 2555
    invoke-direct {p0}, Landroid/support/v4/media/session/MediaSessionCompat$h;->g()V

    return-void
.end method

.method public final b()Landroid/support/v4/media/session/MediaSessionCompat$Token;
    .locals 1

    .line 2579
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$h;->C:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    return-object v0
.end method

.method public final b(I)V
    .locals 8

    .line 2519
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$h;->x:Landroidx/media/f;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 3189
    iput-object v1, v0, Landroidx/media/f;->e:Landroidx/media/f$a;

    .line 2522
    :cond_0
    iput p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$h;->w:I

    const/4 v3, 0x1

    .line 2523
    iput v3, p0, Landroid/support/v4/media/session/MediaSessionCompat$h;->v:I

    .line 2524
    new-instance v0, Landroid/support/v4/media/session/ParcelableVolumeInfo;

    const/4 v5, 0x2

    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$h;->d:Landroid/media/AudioManager;

    .line 2526
    invoke-virtual {v1, p1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v6

    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$h;->d:Landroid/media/AudioManager;

    iget v2, p0, Landroid/support/v4/media/session/MediaSessionCompat$h;->w:I

    .line 2527
    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v7

    move-object v2, v0

    move v4, p1

    invoke-direct/range {v2 .. v7}, Landroid/support/v4/media/session/ParcelableVolumeInfo;-><init>(IIIII)V

    .line 2528
    invoke-direct {p0, v0}, Landroid/support/v4/media/session/MediaSessionCompat$h;->a(Landroid/support/v4/media/session/ParcelableVolumeInfo;)V

    return-void
.end method

.method final b(II)V
    .locals 2

    .line 2907
    iget v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$h;->v:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2908
    iget-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$h;->x:Landroidx/media/f;

    if-eqz p1, :cond_1

    return-void

    .line 2912
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$h;->d:Landroid/media/AudioManager;

    iget v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$h;->w:I

    invoke-virtual {v0, v1, p1, p2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    :cond_1
    return-void
.end method

.method public final b(Landroid/app/PendingIntent;)V
    .locals 0

    return-void
.end method

.method b(Landroid/app/PendingIntent;Landroid/content/ComponentName;)V
    .locals 0

    .line 2893
    iget-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$h;->d:Landroid/media/AudioManager;

    invoke-virtual {p1, p2}, Landroid/media/AudioManager;->unregisterMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    return-void
.end method

.method b(Landroid/support/v4/media/session/PlaybackStateCompat;)V
    .locals 1

    .line 2613
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$h;->e:Landroid/media/RemoteControlClient;

    invoke-virtual {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->getState()I

    move-result p1

    invoke-static {p1}, Landroid/support/v4/media/session/MediaSessionCompat$h;->f(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/media/RemoteControlClient;->setPlaybackState(I)V

    return-void
.end method

.method public final c()Landroid/support/v4/media/session/PlaybackStateCompat;
    .locals 2

    .line 2607
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$h;->f:Ljava/lang/Object;

    monitor-enter v0

    .line 2608
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$h;->m:Landroid/support/v4/media/session/PlaybackStateCompat;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 2609
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final c(I)V
    .locals 2

    .line 2824
    iget v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$h;->s:I

    if-eq v0, p1, :cond_1

    .line 2825
    iput p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$h;->s:I

    .line 7014
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$h;->g:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 7016
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$h;->g:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Landroid/support/v4/media/session/a;

    .line 7018
    :try_start_0
    invoke-interface {v1, p1}, Landroid/support/v4/media/session/a;->a(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 7022
    :cond_0
    iget-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$h;->g:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    :cond_1
    return-void
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final d(I)V
    .locals 2

    .line 2832
    iget v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$h;->t:I

    if-eq v0, p1, :cond_1

    .line 2833
    iput p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$h;->t:I

    .line 7026
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$h;->g:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 7028
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$h;->g:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Landroid/support/v4/media/session/a;

    .line 7030
    :try_start_0
    invoke-interface {v1, p1}, Landroid/support/v4/media/session/a;->b(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 7034
    :cond_0
    iget-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$h;->g:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    :cond_1
    return-void
.end method

.method public final e()Landroidx/media/b$b;
    .locals 2

    .line 2846
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$h;->f:Ljava/lang/Object;

    monitor-enter v0

    .line 2847
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$h;->E:Landroidx/media/b$b;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 2848
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method final e(I)Ljava/lang/String;
    .locals 1

    .line 2502
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$h;->y:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object p1

    .line 2503
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "android.media.session.MediaController"

    :cond_0
    return-object p1
.end method

.method public final f()Landroid/support/v4/media/session/MediaSessionCompat$a;
    .locals 2

    .line 2860
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$h;->f:Ljava/lang/Object;

    monitor-enter v0

    .line 2861
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$h;->j:Landroid/support/v4/media/session/MediaSessionCompat$a;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 2862
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
