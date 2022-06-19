.class Landroidx/media2/session/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/session/MediaSession$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/session/n$b;,
        Landroidx/media2/session/n$a;,
        Landroidx/media2/session/n$d;,
        Landroidx/media2/session/n$f;,
        Landroidx/media2/session/n$e;,
        Landroidx/media2/session/n$c;
    }
.end annotation


# static fields
.field static final a:Z

.field private static final j:Ljava/lang/Object;

.field private static k:Z = false

.field private static l:Landroid/content/ComponentName;

.field private static final m:Landroidx/media2/session/SessionResult;


# instance fields
.field private A:Z

.field private B:Landroidx/media/MediaBrowserServiceCompat;

.field final b:Ljava/lang/Object;

.field final c:Landroid/net/Uri;

.field final d:Ljava/util/concurrent/Executor;

.field final e:Landroidx/media2/session/MediaSession$d;

.field final f:Landroid/support/v4/media/session/MediaSessionCompat;

.field g:Landroidx/media2/session/MediaController$PlaybackInfo;

.field h:Landroidx/media/f;

.field i:Landroidx/media2/common/SessionPlayer;

.field private final n:Landroid/content/Context;

.field private final o:Landroid/os/HandlerThread;

.field private final p:Landroid/os/Handler;

.field private final q:Landroidx/media2/session/r;

.field private final r:Landroidx/media2/session/o;

.field private final s:Ljava/lang/String;

.field private final t:Landroidx/media2/session/SessionToken;

.field private final u:Landroid/media/AudioManager;

.field private final v:Landroidx/media2/session/n$f;

.field private final w:Landroidx/media2/session/MediaSession;

.field private final x:Landroid/app/PendingIntent;

.field private final y:Landroid/app/PendingIntent;

.field private final z:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 97
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/media2/session/n;->j:Ljava/lang/Object;

    const-string v0, "MSImplBase"

    const/4 v1, 0x3

    .line 104
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroidx/media2/session/n;->a:Z

    .line 106
    new-instance v0, Landroidx/media2/session/SessionResult;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroidx/media2/session/SessionResult;-><init>(I)V

    sput-object v0, Landroidx/media2/session/n;->m:Landroidx/media2/session/SessionResult;

    return-void
.end method

.method constructor <init>(Landroidx/media2/session/MediaSession;Landroid/content/Context;Ljava/lang/String;Landroidx/media2/common/SessionPlayer;Landroid/app/PendingIntent;Ljava/util/concurrent/Executor;Landroidx/media2/session/MediaSession$d;Landroid/os/Bundle;)V
    .locals 21

    move-object/from16 v8, p0

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    .line 152
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 108
    new-instance v12, Ljava/lang/Object;

    invoke-direct {v12}, Ljava/lang/Object;-><init>()V

    iput-object v12, v8, Landroidx/media2/session/n;->b:Ljava/lang/Object;

    .line 153
    iput-object v0, v8, Landroidx/media2/session/n;->n:Landroid/content/Context;

    move-object/from16 v2, p1

    .line 154
    iput-object v2, v8, Landroidx/media2/session/n;->w:Landroidx/media2/session/MediaSession;

    .line 155
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "MediaSession_Thread"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v2, v8, Landroidx/media2/session/n;->o:Landroid/os/HandlerThread;

    .line 156
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 157
    new-instance v13, Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v13, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v13, v8, Landroidx/media2/session/n;->p:Landroid/os/Handler;

    .line 159
    new-instance v2, Landroidx/media2/session/r;

    invoke-direct {v2, v8}, Landroidx/media2/session/r;-><init>(Landroidx/media2/session/MediaSession$c;)V

    iput-object v2, v8, Landroidx/media2/session/n;->q:Landroidx/media2/session/r;

    .line 160
    iput-object v10, v8, Landroidx/media2/session/n;->x:Landroid/app/PendingIntent;

    move-object/from16 v3, p7

    .line 162
    iput-object v3, v8, Landroidx/media2/session/n;->e:Landroidx/media2/session/MediaSession$d;

    .line 163
    iput-object v11, v8, Landroidx/media2/session/n;->d:Ljava/util/concurrent/Executor;

    const-string v3, "audio"

    .line 164
    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    iput-object v3, v8, Landroidx/media2/session/n;->u:Landroid/media/AudioManager;

    .line 166
    new-instance v7, Landroidx/media2/session/n$f;

    invoke-direct {v7, v8}, Landroidx/media2/session/n$f;-><init>(Landroidx/media2/session/n;)V

    iput-object v7, v8, Landroidx/media2/session/n;->v:Landroidx/media2/session/n$f;

    .line 168
    iput-object v1, v8, Landroidx/media2/session/n;->s:Ljava/lang/String;

    .line 178
    new-instance v3, Landroid/net/Uri$Builder;

    invoke-direct {v3}, Landroid/net/Uri$Builder;-><init>()V

    const-class v4, Landroidx/media2/session/n;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    .line 179
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    iput-object v3, v8, Landroidx/media2/session/n;->c:Landroid/net/Uri;

    .line 180
    new-instance v6, Landroidx/media2/session/SessionToken;

    new-instance v4, Landroidx/media2/session/SessionTokenImplBase;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v15

    .line 181
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v17

    const/16 v16, 0x0

    move-object v14, v4

    move-object/from16 v18, v2

    move-object/from16 v19, p8

    invoke-direct/range {v14 .. v19}, Landroidx/media2/session/SessionTokenImplBase;-><init>(IILjava/lang/String;Landroidx/media2/session/c;Landroid/os/Bundle;)V

    invoke-direct {v6, v4}, Landroidx/media2/session/SessionToken;-><init>(Landroidx/media2/session/SessionToken$SessionTokenImpl;)V

    iput-object v6, v8, Landroidx/media2/session/n;->t:Landroidx/media2/session/SessionToken;

    const-string v2, "."

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "androidx.media2.session.id"

    const/4 v14, 0x0

    aput-object v5, v4, v14

    const/4 v15, 0x1

    aput-object v1, v4, v15

    .line 182
    invoke-static {v2, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 186
    sget-object v1, Landroidx/media2/session/n;->j:Ljava/lang/Object;

    monitor-enter v1

    .line 187
    :try_start_0
    sget-boolean v2, Landroidx/media2/session/n;->k:Z

    if-nez v2, :cond_1

    const-string v2, "androidx.media2.session.MediaLibraryService"

    .line 188
    invoke-direct {v8, v2}, Landroidx/media2/session/n;->a(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    .line 190
    sput-object v2, Landroidx/media2/session/n;->l:Landroid/content/ComponentName;

    if-nez v2, :cond_0

    const-string v2, "androidx.media2.session.MediaSessionService"

    .line 191
    invoke-direct {v8, v2}, Landroidx/media2/session/n;->a(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    sput-object v2, Landroidx/media2/session/n;->l:Landroid/content/ComponentName;

    .line 194
    :cond_0
    sput-boolean v15, Landroidx/media2/session/n;->k:Z

    .line 196
    :cond_1
    sget-object v2, Landroidx/media2/session/n;->l:Landroid/content/ComponentName;

    .line 197
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v2, :cond_2

    .line 201
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 202
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 203
    invoke-static {v0, v14, v1, v14}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, v8, Landroidx/media2/session/n;->y:Landroid/app/PendingIntent;

    .line 208
    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 213
    new-instance v2, Landroidx/media2/session/n$b;

    invoke-direct {v2, v8}, Landroidx/media2/session/n$b;-><init>(Landroidx/media2/session/n;)V

    iput-object v2, v8, Landroidx/media2/session/n;->z:Landroid/content/BroadcastReceiver;

    .line 214
    new-instance v15, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v15, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 215
    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 216
    invoke-virtual {v0, v2, v15}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-object v15, v1

    const/4 v5, 0x0

    goto :goto_1

    .line 219
    :cond_2
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v1, v5, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 220
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 221
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1a

    if-lt v3, v5, :cond_3

    .line 222
    invoke-static {v0, v14, v1, v14}, Landroid/app/PendingIntent;->getForegroundService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, v8, Landroidx/media2/session/n;->y:Landroid/app/PendingIntent;

    goto :goto_0

    .line 224
    :cond_3
    invoke-static {v0, v14, v1, v14}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, v8, Landroidx/media2/session/n;->y:Landroid/app/PendingIntent;

    :goto_0
    const/4 v5, 0x0

    .line 226
    iput-object v5, v8, Landroidx/media2/session/n;->z:Landroid/content/BroadcastReceiver;

    move-object v15, v2

    .line 229
    :goto_1
    new-instance v3, Landroid/support/v4/media/session/MediaSessionCompat;

    iget-object v2, v8, Landroidx/media2/session/n;->y:Landroid/app/PendingIntent;

    .line 230
    invoke-virtual {v6}, Landroidx/media2/session/SessionToken;->c()Landroid/os/Bundle;

    move-result-object v16

    move-object v1, v3

    move-object/from16 v17, v2

    move-object/from16 v2, p2

    move-object v0, v3

    move-object v3, v4

    move-object v4, v15

    move-object v15, v5

    move-object/from16 v5, v17

    move-object/from16 v17, v6

    move-object/from16 v6, v16

    move-object v14, v7

    move-object/from16 v7, v17

    invoke-direct/range {v1 .. v7}, Landroid/support/v4/media/session/MediaSessionCompat;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;Landroid/app/PendingIntent;Landroid/os/Bundle;Landroidx/versionedparcelable/c;)V

    iput-object v0, v8, Landroidx/media2/session/n;->f:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 232
    new-instance v7, Landroidx/media2/session/o;

    invoke-direct {v7, v8, v13}, Landroidx/media2/session/o;-><init>(Landroidx/media2/session/MediaSession$c;Landroid/os/Handler;)V

    iput-object v7, v8, Landroidx/media2/session/n;->r:Landroidx/media2/session/o;

    .line 1653
    iget-object v1, v0, Landroid/support/v4/media/session/MediaSessionCompat;->a:Landroid/support/v4/media/session/MediaSessionCompat$b;

    invoke-interface {v1, v10}, Landroid/support/v4/media/session/MediaSessionCompat$b;->a(Landroid/app/PendingIntent;)V

    .line 1679
    iget-object v1, v0, Landroid/support/v4/media/session/MediaSessionCompat;->a:Landroid/support/v4/media/session/MediaSessionCompat$b;

    const/4 v2, 0x4

    invoke-interface {v1, v2}, Landroid/support/v4/media/session/MediaSessionCompat$b;->a(I)V

    .line 2257
    invoke-virtual {v8, v9, v15}, Landroidx/media2/session/n;->a(Landroidx/media2/common/SessionPlayer;Landroidx/media/AudioAttributesCompat;)Landroidx/media2/session/MediaController$PlaybackInfo;

    move-result-object v10

    .line 2259
    instance-of v5, v9, Landroidx/media2/session/u;

    if-eqz v5, :cond_4

    .line 2260
    move-object v1, v9

    check-cast v1, Landroidx/media2/session/u;

    .line 2335
    new-instance v2, Landroidx/media2/session/n$43;

    invoke-virtual {v1}, Landroidx/media2/session/u;->z()I

    move-result v3

    invoke-virtual {v1}, Landroidx/media2/session/u;->y()I

    move-result v4

    .line 2336
    invoke-virtual {v1}, Landroidx/media2/session/u;->x()I

    move-result v6

    invoke-direct {v2, v3, v4, v6, v1}, Landroidx/media2/session/n$43;-><init>(IIILandroidx/media2/session/u;)V

    move-object v15, v2

    .line 2262
    :cond_4
    monitor-enter v12

    .line 2263
    :try_start_1
    iget-object v1, v8, Landroidx/media2/session/n;->g:Landroidx/media2/session/MediaController$PlaybackInfo;

    invoke-virtual {v10, v1}, Landroidx/media2/session/MediaController$PlaybackInfo;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const/16 v16, 0x1

    goto :goto_2

    :cond_5
    const/16 v16, 0x0

    .line 2265
    :goto_2
    iget-object v6, v8, Landroidx/media2/session/n;->i:Landroidx/media2/common/SessionPlayer;

    .line 2266
    iput-object v9, v8, Landroidx/media2/session/n;->i:Landroidx/media2/common/SessionPlayer;

    .line 2267
    iput-object v10, v8, Landroidx/media2/session/n;->g:Landroidx/media2/session/MediaController$PlaybackInfo;

    .line 2268
    iput-object v15, v8, Landroidx/media2/session/n;->h:Landroidx/media/f;

    .line 2269
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eq v6, v9, :cond_7

    if-eqz v6, :cond_6

    .line 2273
    invoke-virtual {v6, v14}, Landroidx/media2/common/SessionPlayer;->a(Landroidx/media2/common/SessionPlayer$a;)V

    .line 2275
    :cond_6
    invoke-virtual {v9, v11, v14}, Landroidx/media2/common/SessionPlayer;->a(Ljava/util/concurrent/Executor;Landroidx/media2/common/SessionPlayer$a;)V

    :cond_7
    if-nez v6, :cond_8

    .line 2283
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/session/n;->I()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->a(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    move/from16 v19, v5

    move-object/from16 p1, v13

    move-object v13, v7

    goto/16 :goto_5

    :cond_8
    if-eq v9, v6, :cond_f

    .line 2286
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/session/n;->d()I

    move-result v1

    .line 2287
    new-instance v2, Landroidx/media2/session/n$1;

    invoke-direct {v2, v8, v1}, Landroidx/media2/session/n$1;-><init>(Landroidx/media2/session/n;I)V

    invoke-interface {v11, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 3124
    invoke-virtual {v6}, Landroidx/media2/common/SessionPlayer;->n()Ljava/util/List;

    move-result-object v1

    .line 3125
    invoke-direct/range {p0 .. p0}, Landroidx/media2/session/n;->v()Ljava/util/List;

    move-result-object v2

    .line 3126
    invoke-static {v1, v2}, Landroidx/core/e/a;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 3127
    new-instance v1, Landroidx/media2/session/n$34;

    invoke-direct {v1, v8, v2}, Landroidx/media2/session/n$34;-><init>(Landroidx/media2/session/n;Ljava/util/List;)V

    invoke-virtual {v8, v1}, Landroidx/media2/session/n;->a(Landroidx/media2/session/n$e;)V

    goto :goto_3

    .line 3136
    :cond_9
    invoke-virtual {v6}, Landroidx/media2/common/SessionPlayer;->o()Landroidx/media2/common/MediaMetadata;

    move-result-object v1

    .line 3137
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/session/n;->l()Landroidx/media2/common/MediaMetadata;

    move-result-object v2

    .line 3138
    invoke-static {v1, v2}, Landroidx/core/e/a;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 3139
    new-instance v1, Landroidx/media2/session/n$35;

    invoke-direct {v1, v8, v2}, Landroidx/media2/session/n$35;-><init>(Landroidx/media2/session/n;Landroidx/media2/common/MediaMetadata;)V

    invoke-virtual {v8, v1}, Landroidx/media2/session/n;->a(Landroidx/media2/session/n$e;)V

    .line 3147
    :cond_a
    :goto_3
    invoke-virtual {v6}, Landroidx/media2/common/SessionPlayer;->r()Landroidx/media2/common/MediaItem;

    move-result-object v1

    .line 3148
    invoke-direct/range {p0 .. p0}, Landroidx/media2/session/n;->u()Landroidx/media2/common/MediaItem;

    move-result-object v2

    .line 3149
    invoke-static {v1, v2}, Landroidx/core/e/a;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 3150
    new-instance v1, Landroidx/media2/session/n$36;

    invoke-direct {v1, v8, v2}, Landroidx/media2/session/n$36;-><init>(Landroidx/media2/session/n;Landroidx/media2/common/MediaItem;)V

    invoke-virtual {v8, v1}, Landroidx/media2/session/n;->a(Landroidx/media2/session/n$e;)V

    .line 3159
    :cond_b
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/session/n;->s()I

    move-result v1

    .line 3160
    invoke-virtual {v6}, Landroidx/media2/common/SessionPlayer;->p()I

    move-result v2

    if-eq v2, v1, :cond_c

    .line 3161
    new-instance v2, Landroidx/media2/session/n$37;

    invoke-direct {v2, v8, v1}, Landroidx/media2/session/n$37;-><init>(Landroidx/media2/session/n;I)V

    invoke-virtual {v8, v2}, Landroidx/media2/session/n;->a(Landroidx/media2/session/n$e;)V

    .line 3169
    :cond_c
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/session/n;->t()I

    move-result v1

    .line 3170
    invoke-virtual {v6}, Landroidx/media2/common/SessionPlayer;->q()I

    move-result v2

    if-eq v2, v1, :cond_d

    .line 3171
    new-instance v2, Landroidx/media2/session/n$38;

    invoke-direct {v2, v8, v1}, Landroidx/media2/session/n$38;-><init>(Landroidx/media2/session/n;I)V

    invoke-virtual {v8, v2}, Landroidx/media2/session/n;->a(Landroidx/media2/session/n$e;)V

    .line 3182
    :cond_d
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    .line 3183
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/session/n;->e()J

    move-result-wide v17

    .line 3184
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/session/n;->d()I

    move-result v14

    .line 3185
    new-instance v3, Landroidx/media2/session/n$39;

    move-object v1, v3

    move-object/from16 v2, p0

    move-object v9, v3

    move-wide v3, v11

    move/from16 v19, v5

    move-object/from16 v20, v6

    move-wide/from16 v5, v17

    move-object/from16 p1, v13

    move-object v13, v7

    move v7, v14

    invoke-direct/range {v1 .. v7}, Landroidx/media2/session/n$39;-><init>(Landroidx/media2/session/n;JJI)V

    invoke-virtual {v8, v9}, Landroidx/media2/session/n;->a(Landroidx/media2/session/n$e;)V

    .line 3191
    invoke-direct/range {p0 .. p0}, Landroidx/media2/session/n;->u()Landroidx/media2/common/MediaItem;

    move-result-object v3

    if-eqz v3, :cond_e

    .line 3193
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/session/n;->g()I

    move-result v4

    .line 3194
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/session/n;->f()J

    move-result-wide v5

    .line 3195
    new-instance v7, Landroidx/media2/session/n$40;

    move-object v1, v7

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Landroidx/media2/session/n$40;-><init>(Landroidx/media2/session/n;Landroidx/media2/common/MediaItem;IJ)V

    invoke-virtual {v8, v7}, Landroidx/media2/session/n;->a(Landroidx/media2/session/n$e;)V

    .line 3203
    :cond_e
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/session/n;->h()F

    move-result v7

    .line 3204
    invoke-virtual/range {v20 .. v20}, Landroidx/media2/common/SessionPlayer;->i()F

    move-result v1

    cmpl-float v1, v7, v1

    if-eqz v1, :cond_10

    .line 3205
    new-instance v9, Landroidx/media2/session/n$41;

    move-object v1, v9

    move-object/from16 v2, p0

    move-wide v3, v11

    move-wide/from16 v5, v17

    invoke-direct/range {v1 .. v7}, Landroidx/media2/session/n$41;-><init>(Landroidx/media2/session/n;JJF)V

    invoke-virtual {v8, v9}, Landroidx/media2/session/n;->a(Landroidx/media2/session/n$e;)V

    goto :goto_4

    :cond_f
    move/from16 v19, v5

    move-object/from16 p1, v13

    move-object v13, v7

    :cond_10
    :goto_4
    if-eqz v16, :cond_11

    .line 2296
    invoke-virtual {v8, v10}, Landroidx/media2/session/n;->a(Landroidx/media2/session/MediaController$PlaybackInfo;)V

    :cond_11
    :goto_5
    if-eqz v19, :cond_13

    if-eqz v15, :cond_12

    .line 3715
    iget-object v1, v0, Landroid/support/v4/media/session/MediaSessionCompat;->a:Landroid/support/v4/media/session/MediaSessionCompat$b;

    invoke-interface {v1, v15}, Landroid/support/v4/media/session/MediaSessionCompat$b;->a(Landroidx/media/f;)V

    goto :goto_6

    .line 3713
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "volumeProvider may not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2303
    :cond_13
    invoke-virtual/range {p4 .. p4}, Landroidx/media2/common/SessionPlayer;->k()Landroidx/media/AudioAttributesCompat;

    move-result-object v1

    invoke-static {v1}, Landroidx/media2/session/n;->a(Landroidx/media/AudioAttributesCompat;)I

    move-result v1

    .line 2304
    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->a(I)V

    :goto_6
    move-object/from16 v1, p1

    .line 240
    invoke-virtual {v0, v13, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->a(Landroid/support/v4/media/session/MediaSessionCompat$a;Landroid/os/Handler;)V

    .line 241
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat;->a()V

    return-void

    :catchall_0
    move-exception v0

    .line 2269
    :try_start_2
    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    .line 197
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method static a(Landroidx/media/AudioAttributesCompat;)I
    .locals 2

    const/4 v0, 0x3

    if-nez p0, :cond_0

    goto :goto_0

    .line 343
    :cond_0
    invoke-virtual {p0}, Landroidx/media/AudioAttributesCompat;->b()I

    move-result p0

    const/high16 v1, -0x80000000

    if-ne p0, v1, :cond_1

    goto :goto_0

    :cond_1
    move v0, p0

    :goto_0
    return v0
.end method

.method private a(Ljava/lang/String;)Landroid/content/ComponentName;
    .locals 2

    .line 1322
    iget-object v0, p0, Landroidx/media2/session/n;->n:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1323
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1324
    iget-object p1, p0, Landroidx/media2/session/n;->n:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, 0x0

    .line 1325
    invoke-virtual {v0, v1, p1}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1326
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1329
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ResolveInfo;

    .line 1330
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object p1, p1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private a(Landroidx/media2/session/n$c;)Lcom/google/common/util/concurrent/a;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/session/n$c<",
            "Lcom/google/common/util/concurrent/a<",
            "Landroidx/media2/common/SessionPlayer$b;",
            ">;>;)",
            "Lcom/google/common/util/concurrent/a<",
            "Landroidx/media2/common/SessionPlayer$b;",
            ">;"
        }
    .end annotation

    .line 1095
    invoke-static {}, Landroidx/c/a/b;->a()Landroidx/c/a/b;

    move-result-object v0

    .line 1096
    new-instance v1, Landroidx/media2/common/SessionPlayer$b;

    const/4 v2, -0x2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroidx/media2/common/SessionPlayer$b;-><init>(ILandroidx/media2/common/MediaItem;)V

    invoke-virtual {v0, v1}, Landroidx/c/a/b;->a(Ljava/lang/Object;)Z

    .line 1097
    invoke-direct {p0, p1, v0}, Landroidx/media2/session/n;->a(Landroidx/media2/session/n$c;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/util/concurrent/a;

    return-object p1
.end method

.method private a(Landroidx/media2/session/n$c;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/media2/session/n$c<",
            "TT;>;TT;)TT;"
        }
    .end annotation

    .line 1102
    iget-object v0, p0, Landroidx/media2/session/n;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 1103
    :try_start_0
    iget-object v1, p0, Landroidx/media2/session/n;->i:Landroidx/media2/common/SessionPlayer;

    .line 1104
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1106
    :try_start_1
    invoke-virtual {p0}, Landroidx/media2/session/n;->H()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1107
    invoke-interface {p1, v1}, Landroidx/media2/session/n$c;->a(Landroidx/media2/common/SessionPlayer;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    return-object p1

    .line 1111
    :cond_0
    sget-boolean p1, Landroidx/media2/session/n;->a:Z

    if-eqz p1, :cond_1

    .line 1112
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_1
    return-object p2

    :catchall_0
    move-exception p1

    .line 1104
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method private u()Landroidx/media2/common/MediaItem;
    .locals 2

    .line 1079
    iget-object v0, p0, Landroidx/media2/session/n;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 1080
    :try_start_0
    iget-object v1, p0, Landroidx/media2/session/n;->i:Landroidx/media2/common/SessionPlayer;

    .line 1081
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 1082
    invoke-virtual {v1}, Landroidx/media2/common/SessionPlayer;->r()Landroidx/media2/common/MediaItem;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v1

    .line 1081
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private v()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/media2/common/MediaItem;",
            ">;"
        }
    .end annotation

    .line 1087
    iget-object v0, p0, Landroidx/media2/session/n;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 1088
    :try_start_0
    iget-object v1, p0, Landroidx/media2/session/n;->i:Landroidx/media2/common/SessionPlayer;

    .line 1089
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 1090
    invoke-virtual {v1}, Landroidx/media2/common/SessionPlayer;->n()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v1

    .line 1089
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method A()Landroidx/media/MediaBrowserServiceCompat;
    .locals 2

    .line 1065
    iget-object v0, p0, Landroidx/media2/session/n;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 1066
    :try_start_0
    iget-object v1, p0, Landroidx/media2/session/n;->B:Landroidx/media/MediaBrowserServiceCompat;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 1067
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final B()Landroidx/media2/common/SessionPlayer;
    .locals 2

    .line 396
    iget-object v0, p0, Landroidx/media2/session/n;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 397
    :try_start_0
    iget-object v1, p0, Landroidx/media2/session/n;->i:Landroidx/media2/common/SessionPlayer;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 398
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final C()Ljava/lang/String;
    .locals 1

    .line 404
    iget-object v0, p0, Landroidx/media2/session/n;->s:Ljava/lang/String;

    return-object v0
.end method

.method public final D()Landroidx/media2/session/SessionToken;
    .locals 1

    .line 416
    iget-object v0, p0, Landroidx/media2/session/n;->t:Landroidx/media2/session/SessionToken;

    return-object v0
.end method

.method public final E()Landroid/support/v4/media/session/MediaSessionCompat;
    .locals 1

    .line 975
    iget-object v0, p0, Landroidx/media2/session/n;->f:Landroid/support/v4/media/session/MediaSessionCompat;

    return-object v0
.end method

.method public final F()Landroid/content/Context;
    .locals 1

    .line 960
    iget-object v0, p0, Landroidx/media2/session/n;->n:Landroid/content/Context;

    return-object v0
.end method

.method public final G()Ljava/util/concurrent/Executor;
    .locals 1

    .line 965
    iget-object v0, p0, Landroidx/media2/session/n;->d:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public final H()Z
    .locals 2

    .line 985
    iget-object v0, p0, Landroidx/media2/session/n;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 986
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/session/n;->A:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 987
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final I()Landroid/support/v4/media/session/PlaybackStateCompat;
    .locals 9

    .line 992
    invoke-virtual {p0}, Landroidx/media2/session/n;->d()I

    move-result v0

    .line 993
    invoke-virtual {p0}, Landroidx/media2/session/n;->g()I

    move-result v1

    .line 992
    invoke-static {v0, v1}, Landroidx/media2/session/s;->a(II)I

    move-result v3

    .line 1011
    invoke-virtual {p0}, Landroidx/media2/session/n;->n()I

    move-result v0

    invoke-static {v0}, Landroidx/media2/session/s;->a(I)J

    move-result-wide v0

    .line 1012
    new-instance v2, Landroid/support/v4/media/session/PlaybackStateCompat$a;

    invoke-direct {v2}, Landroid/support/v4/media/session/PlaybackStateCompat$a;-><init>()V

    .line 1013
    invoke-virtual {p0}, Landroidx/media2/session/n;->e()J

    move-result-wide v4

    invoke-virtual {p0}, Landroidx/media2/session/n;->h()F

    move-result v6

    .line 1014
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    .line 1013
    invoke-virtual/range {v2 .. v8}, Landroid/support/v4/media/session/PlaybackStateCompat$a;->a(IJFJ)Landroid/support/v4/media/session/PlaybackStateCompat$a;

    move-result-object v2

    .line 1015
    invoke-virtual {v2}, Landroid/support/v4/media/session/PlaybackStateCompat$a;->a()Landroid/support/v4/media/session/PlaybackStateCompat$a;

    move-result-object v2

    .line 6329
    iput-wide v0, v2, Landroid/support/v4/media/session/PlaybackStateCompat$a;->b:J

    .line 1017
    invoke-virtual {p0}, Landroidx/media2/session/n;->f()J

    move-result-wide v0

    .line 7238
    iput-wide v0, v2, Landroid/support/v4/media/session/PlaybackStateCompat$a;->a:J

    .line 1018
    invoke-virtual {v2}, Landroid/support/v4/media/session/PlaybackStateCompat$a;->b()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v0

    return-object v0
.end method

.method public final J()Landroidx/media2/session/MediaController$PlaybackInfo;
    .locals 2

    .line 1023
    iget-object v0, p0, Landroidx/media2/session/n;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 1024
    :try_start_0
    iget-object v1, p0, Landroidx/media2/session/n;->g:Landroidx/media2/session/MediaController$PlaybackInfo;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 1025
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final K()Landroid/app/PendingIntent;
    .locals 1

    .line 1030
    iget-object v0, p0, Landroidx/media2/session/n;->x:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public final a(I)Landroidx/media2/common/SessionPlayer$TrackInfo;
    .locals 1

    .line 941
    new-instance v0, Landroidx/media2/session/n$33;

    invoke-direct {v0, p0, p1}, Landroidx/media2/session/n$33;-><init>(Landroidx/media2/session/n;I)V

    const/4 p1, 0x0

    invoke-direct {p0, v0, p1}, Landroidx/media2/session/n;->a(Landroidx/media2/session/n$c;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media2/common/SessionPlayer$TrackInfo;

    return-object p1
.end method

.method final a(Landroidx/media2/common/SessionPlayer;Landroidx/media/AudioAttributesCompat;)Landroidx/media2/session/MediaController$PlaybackInfo;
    .locals 4

    if-eqz p2, :cond_0

    goto :goto_0

    .line 312
    :cond_0
    invoke-virtual {p1}, Landroidx/media2/common/SessionPlayer;->k()Landroidx/media/AudioAttributesCompat;

    move-result-object p2

    .line 314
    :goto_0
    instance-of v0, p1, Landroidx/media2/session/u;

    const/4 v1, 0x2

    if-nez v0, :cond_2

    .line 315
    invoke-static {p2}, Landroidx/media2/session/n;->a(Landroidx/media/AudioAttributesCompat;)I

    move-result p1

    .line 317
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_1

    iget-object v0, p0, Landroidx/media2/session/n;->u:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isVolumeFixed()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    :cond_1
    const/4 v0, 0x1

    .line 320
    iget-object v2, p0, Landroidx/media2/session/n;->u:Landroid/media/AudioManager;

    .line 324
    invoke-virtual {v2, p1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v2

    iget-object v3, p0, Landroidx/media2/session/n;->u:Landroid/media/AudioManager;

    .line 325
    invoke-virtual {v3, p1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result p1

    .line 320
    invoke-static {v0, p2, v1, v2, p1}, Landroidx/media2/session/MediaController$PlaybackInfo;->a(ILandroidx/media/AudioAttributesCompat;III)Landroidx/media2/session/MediaController$PlaybackInfo;

    move-result-object p1

    return-object p1

    .line 327
    :cond_2
    check-cast p1, Landroidx/media2/session/u;

    .line 331
    invoke-virtual {p1}, Landroidx/media2/session/u;->z()I

    move-result v0

    .line 332
    invoke-virtual {p1}, Landroidx/media2/session/u;->y()I

    move-result v2

    .line 333
    invoke-virtual {p1}, Landroidx/media2/session/u;->x()I

    move-result p1

    .line 328
    invoke-static {v1, p2, v0, v2, p1}, Landroidx/media2/session/MediaController$PlaybackInfo;->a(ILandroidx/media/AudioAttributesCompat;III)Landroidx/media2/session/MediaController$PlaybackInfo;

    move-result-object p1

    return-object p1
.end method

.method public final a()Lcom/google/common/util/concurrent/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/a<",
            "Landroidx/media2/common/SessionPlayer$b;",
            ">;"
        }
    .end annotation

    .line 526
    new-instance v0, Landroidx/media2/session/n$46;

    invoke-direct {v0, p0}, Landroidx/media2/session/n$46;-><init>(Landroidx/media2/session/n;)V

    invoke-direct {p0, v0}, Landroidx/media2/session/n;->a(Landroidx/media2/session/n$c;)Lcom/google/common/util/concurrent/a;

    move-result-object v0

    return-object v0
.end method

.method public final a(F)Lcom/google/common/util/concurrent/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/google/common/util/concurrent/a<",
            "Landroidx/media2/common/SessionPlayer$b;",
            ">;"
        }
    .end annotation

    .line 622
    new-instance v0, Landroidx/media2/session/n$8;

    invoke-direct {v0, p0, p1}, Landroidx/media2/session/n$8;-><init>(Landroidx/media2/session/n;F)V

    invoke-direct {p0, v0}, Landroidx/media2/session/n;->a(Landroidx/media2/session/n$c;)Lcom/google/common/util/concurrent/a;

    move-result-object p1

    return-object p1
.end method

.method public final a(II)Lcom/google/common/util/concurrent/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/google/common/util/concurrent/a<",
            "Landroidx/media2/common/SessionPlayer$b;",
            ">;"
        }
    .end annotation

    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    .line 780
    new-instance v0, Landroidx/media2/session/n$18;

    invoke-direct {v0, p0, p1, p2}, Landroidx/media2/session/n$18;-><init>(Landroidx/media2/session/n;II)V

    invoke-direct {p0, v0}, Landroidx/media2/session/n;->a(Landroidx/media2/session/n$c;)Lcom/google/common/util/concurrent/a;

    move-result-object p1

    return-object p1

    .line 778
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "indices shouldn\'t be negative"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(ILandroidx/media2/common/MediaItem;)Lcom/google/common/util/concurrent/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/media2/common/MediaItem;",
            ")",
            "Lcom/google/common/util/concurrent/a<",
            "Landroidx/media2/common/SessionPlayer$b;",
            ">;"
        }
    .end annotation

    if-ltz p1, :cond_0

    const-string v0, "item shouldn\'t be null"

    .line 727
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 729
    new-instance v0, Landroidx/media2/session/n$16;

    invoke-direct {v0, p0, p1, p2}, Landroidx/media2/session/n$16;-><init>(Landroidx/media2/session/n;ILandroidx/media2/common/MediaItem;)V

    invoke-direct {p0, v0}, Landroidx/media2/session/n;->a(Landroidx/media2/session/n$c;)Lcom/google/common/util/concurrent/a;

    move-result-object p1

    return-object p1

    .line 724
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "index shouldn\'t be negative"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(J)Lcom/google/common/util/concurrent/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lcom/google/common/util/concurrent/a<",
            "Landroidx/media2/common/SessionPlayer$b;",
            ">;"
        }
    .end annotation

    .line 537
    new-instance v0, Landroidx/media2/session/n$2;

    invoke-direct {v0, p0, p1, p2}, Landroidx/media2/session/n$2;-><init>(Landroidx/media2/session/n;J)V

    invoke-direct {p0, v0}, Landroidx/media2/session/n;->a(Landroidx/media2/session/n$c;)Lcom/google/common/util/concurrent/a;

    move-result-object p1

    return-object p1
.end method

.method public final a(Landroid/view/Surface;)Lcom/google/common/util/concurrent/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/Surface;",
            ")",
            "Lcom/google/common/util/concurrent/a<",
            "Landroidx/media2/common/SessionPlayer$b;",
            ">;"
        }
    .end annotation

    .line 899
    new-instance v0, Landroidx/media2/session/n$29;

    invoke-direct {v0, p0, p1}, Landroidx/media2/session/n$29;-><init>(Landroidx/media2/session/n;Landroid/view/Surface;)V

    invoke-direct {p0, v0}, Landroidx/media2/session/n;->a(Landroidx/media2/session/n$c;)Lcom/google/common/util/concurrent/a;

    move-result-object p1

    return-object p1
.end method

.method public final a(Landroidx/media2/common/MediaMetadata;)Lcom/google/common/util/concurrent/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/common/MediaMetadata;",
            ")",
            "Lcom/google/common/util/concurrent/a<",
            "Landroidx/media2/common/SessionPlayer$b;",
            ">;"
        }
    .end annotation

    .line 832
    new-instance v0, Landroidx/media2/session/n$23;

    invoke-direct {v0, p0, p1}, Landroidx/media2/session/n$23;-><init>(Landroidx/media2/session/n;Landroidx/media2/common/MediaMetadata;)V

    invoke-direct {p0, v0}, Landroidx/media2/session/n;->a(Landroidx/media2/session/n$c;)Lcom/google/common/util/concurrent/a;

    move-result-object p1

    return-object p1
.end method

.method public final a(Landroidx/media2/common/SessionPlayer$TrackInfo;)Lcom/google/common/util/concurrent/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/common/SessionPlayer$TrackInfo;",
            ")",
            "Lcom/google/common/util/concurrent/a<",
            "Landroidx/media2/common/SessionPlayer$b;",
            ">;"
        }
    .end annotation

    .line 919
    new-instance v0, Landroidx/media2/session/n$31;

    invoke-direct {v0, p0, p1}, Landroidx/media2/session/n$31;-><init>(Landroidx/media2/session/n;Landroidx/media2/common/SessionPlayer$TrackInfo;)V

    invoke-direct {p0, v0}, Landroidx/media2/session/n;->a(Landroidx/media2/session/n$c;)Lcom/google/common/util/concurrent/a;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/util/List;Landroidx/media2/common/MediaMetadata;)Lcom/google/common/util/concurrent/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media2/common/MediaItem;",
            ">;",
            "Landroidx/media2/common/MediaMetadata;",
            ")",
            "Lcom/google/common/util/concurrent/a<",
            "Landroidx/media2/common/SessionPlayer$b;",
            ">;"
        }
    .end annotation

    .line 647
    new-instance v0, Landroidx/media2/session/n$10;

    invoke-direct {v0, p0, p1, p2}, Landroidx/media2/session/n$10;-><init>(Landroidx/media2/session/n;Ljava/util/List;Landroidx/media2/common/MediaMetadata;)V

    invoke-direct {p0, v0}, Landroidx/media2/session/n;->a(Landroidx/media2/session/n$c;)Lcom/google/common/util/concurrent/a;

    move-result-object p1

    return-object p1
.end method

.method final a(Landroidx/media2/session/MediaController$PlaybackInfo;)V
    .locals 1

    .line 1217
    new-instance v0, Landroidx/media2/session/n$42;

    invoke-direct {v0, p0, p1}, Landroidx/media2/session/n$42;-><init>(Landroidx/media2/session/n;Landroidx/media2/session/MediaController$PlaybackInfo;)V

    invoke-virtual {p0, v0}, Landroidx/media2/session/n;->a(Landroidx/media2/session/n$e;)V

    return-void
.end method

.method a(Landroidx/media2/session/n$e;)V
    .locals 8

    .line 1226
    iget-object v0, p0, Landroidx/media2/session/n;->q:Landroidx/media2/session/r;

    .line 8112
    iget-object v0, v0, Landroidx/media2/session/r;->c:Landroidx/media2/session/a;

    .line 1227
    invoke-virtual {v0}, Landroidx/media2/session/a;->a()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1228
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const-string v4, "MSImplBase"

    if-ge v2, v3, :cond_4

    .line 1229
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media2/session/MediaSession$b;

    .line 8243
    :try_start_0
    iget-object v5, p0, Landroidx/media2/session/n;->q:Landroidx/media2/session/r;

    .line 9112
    iget-object v5, v5, Landroidx/media2/session/r;->c:Landroidx/media2/session/a;

    .line 8245
    invoke-virtual {v5, v3}, Landroidx/media2/session/a;->c(Landroidx/media2/session/MediaSession$b;)Landroidx/media2/session/v;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 8247
    invoke-virtual {v5}, Landroidx/media2/session/v;->a()I

    move-result v5

    goto :goto_1

    .line 8249
    :cond_0
    invoke-virtual {p0, v3}, Landroidx/media2/session/n;->b(Landroidx/media2/session/MediaSession$b;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 8250
    sget-boolean v5, Landroidx/media2/session/n;->a:Z

    if-eqz v5, :cond_3

    .line 8251
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Skipping dispatching task to disconnected controller, controller="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_1
    const/4 v5, 0x0

    .line 9990
    :goto_1
    iget-object v6, v3, Landroidx/media2/session/MediaSession$b;->c:Landroidx/media2/session/MediaSession$a;

    .line 8259
    invoke-interface {p1, v6, v5}, Landroidx/media2/session/n$e;->a(Landroidx/media2/session/MediaSession$a;I)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v5

    .line 8268
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Exception in "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroidx/media2/session/MediaSession$b;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :catch_1
    nop

    .line 10312
    sget-boolean v4, Landroidx/media2/session/n;->a:Z

    if-eqz v4, :cond_2

    .line 10313
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Landroidx/media2/session/MediaSession$b;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " is gone"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10317
    :cond_2
    iget-object v4, p0, Landroidx/media2/session/n;->q:Landroidx/media2/session/r;

    .line 11112
    iget-object v4, v4, Landroidx/media2/session/r;->c:Landroidx/media2/session/a;

    .line 10317
    invoke-virtual {v4, v3}, Landroidx/media2/session/a;->a(Landroidx/media2/session/MediaSession$b;)V

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1233
    :cond_4
    :try_start_1
    iget-object v0, p0, Landroidx/media2/session/n;->r:Landroidx/media2/session/o;

    .line 11487
    iget-object v0, v0, Landroidx/media2/session/o;->k:Landroidx/media2/session/MediaSession$a;

    .line 1233
    invoke-interface {p1, v0, v1}, Landroidx/media2/session/n$e;->a(Landroidx/media2/session/MediaSession$a;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    return-void

    :catch_2
    move-exception p1

    const-string v0, "Exception in using media1 API"

    .line 1235
    invoke-static {v4, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method final a(Landroidx/media2/common/SessionPlayer;)Z
    .locals 1

    .line 1072
    invoke-virtual {p0}, Landroidx/media2/session/n;->H()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1073
    invoke-virtual {p1}, Landroidx/media2/common/SessionPlayer;->d()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1074
    invoke-virtual {p1}, Landroidx/media2/common/SessionPlayer;->d()I

    move-result p1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final b()Lcom/google/common/util/concurrent/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/a<",
            "Landroidx/media2/common/SessionPlayer$b;",
            ">;"
        }
    .end annotation

    .line 494
    new-instance v0, Landroidx/media2/session/n$44;

    invoke-direct {v0, p0}, Landroidx/media2/session/n$44;-><init>(Landroidx/media2/session/n;)V

    invoke-direct {p0, v0}, Landroidx/media2/session/n;->a(Landroidx/media2/session/n$c;)Lcom/google/common/util/concurrent/a;

    move-result-object v0

    return-object v0
.end method

.method public final b(I)Lcom/google/common/util/concurrent/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/util/concurrent/a<",
            "Landroidx/media2/common/SessionPlayer$b;",
            ">;"
        }
    .end annotation

    if-ltz p1, :cond_0

    .line 675
    new-instance v0, Landroidx/media2/session/n$12;

    invoke-direct {v0, p0, p1}, Landroidx/media2/session/n$12;-><init>(Landroidx/media2/session/n;I)V

    invoke-direct {p0, v0}, Landroidx/media2/session/n;->a(Landroidx/media2/session/n$c;)Lcom/google/common/util/concurrent/a;

    move-result-object p1

    return-object p1

    .line 673
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "index shouldn\'t be negative"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b(Landroidx/media2/common/SessionPlayer$TrackInfo;)Lcom/google/common/util/concurrent/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/common/SessionPlayer$TrackInfo;",
            ")",
            "Lcom/google/common/util/concurrent/a<",
            "Landroidx/media2/common/SessionPlayer$b;",
            ">;"
        }
    .end annotation

    .line 930
    new-instance v0, Landroidx/media2/session/n$32;

    invoke-direct {v0, p0, p1}, Landroidx/media2/session/n$32;-><init>(Landroidx/media2/session/n;Landroidx/media2/common/SessionPlayer$TrackInfo;)V

    invoke-direct {p0, v0}, Landroidx/media2/session/n;->a(Landroidx/media2/session/n$c;)Lcom/google/common/util/concurrent/a;

    move-result-object p1

    return-object p1
.end method

.method public b(Landroidx/media2/session/MediaSession$b;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 435
    :cond_0
    iget-object v1, p0, Landroidx/media2/session/n;->q:Landroidx/media2/session/r;

    .line 5112
    iget-object v1, v1, Landroidx/media2/session/r;->c:Landroidx/media2/session/a;

    .line 435
    invoke-virtual {v1, p1}, Landroidx/media2/session/a;->b(Landroidx/media2/session/MediaSession$b;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Landroidx/media2/session/n;->r:Landroidx/media2/session/o;

    .line 5491
    iget-object v1, v1, Landroidx/media2/session/o;->g:Landroidx/media2/session/a;

    .line 436
    invoke-virtual {v1, p1}, Landroidx/media2/session/a;->b(Landroidx/media2/session/MediaSession$b;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final c()Lcom/google/common/util/concurrent/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/a<",
            "Landroidx/media2/common/SessionPlayer$b;",
            ">;"
        }
    .end annotation

    .line 515
    new-instance v0, Landroidx/media2/session/n$45;

    invoke-direct {v0, p0}, Landroidx/media2/session/n$45;-><init>(Landroidx/media2/session/n;)V

    invoke-direct {p0, v0}, Landroidx/media2/session/n;->a(Landroidx/media2/session/n$c;)Lcom/google/common/util/concurrent/a;

    move-result-object v0

    return-object v0
.end method

.method public final c(I)Lcom/google/common/util/concurrent/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/util/concurrent/a<",
            "Landroidx/media2/common/SessionPlayer$b;",
            ">;"
        }
    .end annotation

    if-ltz p1, :cond_0

    .line 743
    new-instance v0, Landroidx/media2/session/n$17;

    invoke-direct {v0, p0, p1}, Landroidx/media2/session/n$17;-><init>(Landroidx/media2/session/n;I)V

    invoke-direct {p0, v0}, Landroidx/media2/session/n;->a(Landroidx/media2/session/n$c;)Lcom/google/common/util/concurrent/a;

    move-result-object p1

    return-object p1

    .line 741
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "index shouldn\'t be negative"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public close()V
    .locals 3

    .line 358
    iget-object v0, p0, Landroidx/media2/session/n;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 359
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/session/n;->A:Z

    if-eqz v1, :cond_0

    .line 360
    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 362
    iput-boolean v1, p0, Landroidx/media2/session/n;->A:Z

    .line 363
    sget-boolean v1, Landroidx/media2/session/n;->a:Z

    if-eqz v1, :cond_1

    .line 364
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Closing session, id="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4404
    iget-object v2, p0, Landroidx/media2/session/n;->s:Ljava/lang/String;

    .line 364
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4416
    iget-object v2, p0, Landroidx/media2/session/n;->t:Landroidx/media2/session/SessionToken;

    .line 365
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 368
    :cond_1
    iget-object v1, p0, Landroidx/media2/session/n;->i:Landroidx/media2/common/SessionPlayer;

    .line 369
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 370
    iget-object v0, p0, Landroidx/media2/session/n;->v:Landroidx/media2/session/n$f;

    invoke-virtual {v1, v0}, Landroidx/media2/common/SessionPlayer;->a(Landroidx/media2/common/SessionPlayer$a;)V

    .line 371
    iget-object v0, p0, Landroidx/media2/session/n;->f:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 4768
    iget-object v0, v0, Landroid/support/v4/media/session/MediaSessionCompat;->a:Landroid/support/v4/media/session/MediaSessionCompat$b;

    invoke-interface {v0}, Landroid/support/v4/media/session/MediaSessionCompat$b;->a()V

    .line 372
    iget-object v0, p0, Landroidx/media2/session/n;->y:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->cancel()V

    .line 373
    iget-object v0, p0, Landroidx/media2/session/n;->z:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_2

    .line 374
    iget-object v1, p0, Landroidx/media2/session/n;->n:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 377
    :cond_2
    new-instance v0, Landroidx/media2/session/n$11;

    invoke-direct {v0, p0}, Landroidx/media2/session/n$11;-><init>(Landroidx/media2/session/n;)V

    invoke-virtual {p0, v0}, Landroidx/media2/session/n;->a(Landroidx/media2/session/n$e;)V

    .line 383
    iget-object v0, p0, Landroidx/media2/session/n;->p:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 384
    iget-object v0, p0, Landroidx/media2/session/n;->o:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 385
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_3

    .line 386
    iget-object v0, p0, Landroidx/media2/session/n;->o:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    return-void

    .line 388
    :cond_3
    iget-object v0, p0, Landroidx/media2/session/n;->o:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    :cond_4
    return-void

    :catchall_0
    move-exception v1

    .line 369
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final d()I
    .locals 2

    .line 549
    new-instance v0, Landroidx/media2/session/n$3;

    invoke-direct {v0, p0}, Landroidx/media2/session/n$3;-><init>(Landroidx/media2/session/n;)V

    const/4 v1, 0x3

    .line 554
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 549
    invoke-direct {p0, v0, v1}, Landroidx/media2/session/n;->a(Landroidx/media2/session/n$c;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final d(I)Lcom/google/common/util/concurrent/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/util/concurrent/a<",
            "Landroidx/media2/common/SessionPlayer$b;",
            ">;"
        }
    .end annotation

    .line 855
    new-instance v0, Landroidx/media2/session/n$25;

    invoke-direct {v0, p0, p1}, Landroidx/media2/session/n$25;-><init>(Landroidx/media2/session/n;I)V

    invoke-direct {p0, v0}, Landroidx/media2/session/n;->a(Landroidx/media2/session/n$c;)Lcom/google/common/util/concurrent/a;

    move-result-object p1

    return-object p1
.end method

.method public final e()J
    .locals 3

    .line 559
    new-instance v0, Landroidx/media2/session/n$4;

    invoke-direct {v0, p0}, Landroidx/media2/session/n$4;-><init>(Landroidx/media2/session/n;)V

    const-wide/high16 v1, -0x8000000000000000L

    .line 567
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 559
    invoke-direct {p0, v0, v1}, Landroidx/media2/session/n;->a(Landroidx/media2/session/n$c;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final e(I)Lcom/google/common/util/concurrent/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/util/concurrent/a<",
            "Landroidx/media2/common/SessionPlayer$b;",
            ">;"
        }
    .end annotation

    .line 878
    new-instance v0, Landroidx/media2/session/n$27;

    invoke-direct {v0, p0, p1}, Landroidx/media2/session/n$27;-><init>(Landroidx/media2/session/n;I)V

    invoke-direct {p0, v0}, Landroidx/media2/session/n;->a(Landroidx/media2/session/n$c;)Lcom/google/common/util/concurrent/a;

    move-result-object p1

    return-object p1
.end method

.method public final f()J
    .locals 3

    .line 585
    new-instance v0, Landroidx/media2/session/n$5;

    invoke-direct {v0, p0}, Landroidx/media2/session/n$5;-><init>(Landroidx/media2/session/n;)V

    const-wide/high16 v1, -0x8000000000000000L

    .line 593
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 585
    invoke-direct {p0, v0, v1}, Landroidx/media2/session/n;->a(Landroidx/media2/session/n$c;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final g()I
    .locals 2

    .line 599
    new-instance v0, Landroidx/media2/session/n$6;

    invoke-direct {v0, p0}, Landroidx/media2/session/n$6;-><init>(Landroidx/media2/session/n;)V

    const/4 v1, 0x0

    .line 604
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 599
    invoke-direct {p0, v0, v1}, Landroidx/media2/session/n;->a(Landroidx/media2/session/n$c;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final h()F
    .locals 2

    .line 609
    new-instance v0, Landroidx/media2/session/n$7;

    invoke-direct {v0, p0}, Landroidx/media2/session/n$7;-><init>(Landroidx/media2/session/n;)V

    const/high16 v1, 0x3f800000    # 1.0f

    .line 617
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 609
    invoke-direct {p0, v0, v1}, Landroidx/media2/session/n;->a(Landroidx/media2/session/n$c;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public final i()Landroidx/media2/common/VideoSize;
    .locals 3

    .line 889
    new-instance v0, Landroidx/media2/session/n$28;

    invoke-direct {v0, p0}, Landroidx/media2/session/n$28;-><init>(Landroidx/media2/session/n;)V

    new-instance v1, Landroidx/media2/common/VideoSize;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Landroidx/media2/common/VideoSize;-><init>(II)V

    invoke-direct {p0, v0, v1}, Landroidx/media2/session/n;->a(Landroidx/media2/session/n$c;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/common/VideoSize;

    return-object v0
.end method

.method public final j()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/media2/common/SessionPlayer$TrackInfo;",
            ">;"
        }
    .end annotation

    .line 909
    new-instance v0, Landroidx/media2/session/n$30;

    invoke-direct {v0, p0}, Landroidx/media2/session/n$30;-><init>(Landroidx/media2/session/n;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroidx/media2/session/n;->a(Landroidx/media2/session/n$c;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public final k()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/media2/common/MediaItem;",
            ">;"
        }
    .end annotation

    .line 633
    new-instance v0, Landroidx/media2/session/n$9;

    invoke-direct {v0, p0}, Landroidx/media2/session/n$9;-><init>(Landroidx/media2/session/n;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroidx/media2/session/n;->a(Landroidx/media2/session/n$c;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public final l()Landroidx/media2/common/MediaMetadata;
    .locals 2

    .line 712
    new-instance v0, Landroidx/media2/session/n$15;

    invoke-direct {v0, p0}, Landroidx/media2/session/n$15;-><init>(Landroidx/media2/session/n;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroidx/media2/session/n;->a(Landroidx/media2/session/n$c;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/common/MediaMetadata;

    return-object v0
.end method

.method public final m()Landroidx/media2/common/MediaItem;
    .locals 2

    .line 791
    new-instance v0, Landroidx/media2/session/n$19;

    invoke-direct {v0, p0}, Landroidx/media2/session/n$19;-><init>(Landroidx/media2/session/n;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroidx/media2/session/n;->a(Landroidx/media2/session/n$c;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/common/MediaItem;

    return-object v0
.end method

.method public final n()I
    .locals 2

    .line 801
    new-instance v0, Landroidx/media2/session/n$20;

    invoke-direct {v0, p0}, Landroidx/media2/session/n$20;-><init>(Landroidx/media2/session/n;)V

    const/4 v1, -0x1

    .line 806
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 801
    invoke-direct {p0, v0, v1}, Landroidx/media2/session/n;->a(Landroidx/media2/session/n$c;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final o()I
    .locals 2

    .line 811
    new-instance v0, Landroidx/media2/session/n$21;

    invoke-direct {v0, p0}, Landroidx/media2/session/n$21;-><init>(Landroidx/media2/session/n;)V

    const/4 v1, -0x1

    .line 816
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 811
    invoke-direct {p0, v0, v1}, Landroidx/media2/session/n;->a(Landroidx/media2/session/n$c;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final p()I
    .locals 2

    .line 821
    new-instance v0, Landroidx/media2/session/n$22;

    invoke-direct {v0, p0}, Landroidx/media2/session/n$22;-><init>(Landroidx/media2/session/n;)V

    const/4 v1, -0x1

    .line 826
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 821
    invoke-direct {p0, v0, v1}, Landroidx/media2/session/n;->a(Landroidx/media2/session/n$c;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final q()Lcom/google/common/util/concurrent/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/a<",
            "Landroidx/media2/common/SessionPlayer$b;",
            ">;"
        }
    .end annotation

    .line 690
    new-instance v0, Landroidx/media2/session/n$13;

    invoke-direct {v0, p0}, Landroidx/media2/session/n$13;-><init>(Landroidx/media2/session/n;)V

    invoke-direct {p0, v0}, Landroidx/media2/session/n;->a(Landroidx/media2/session/n$c;)Lcom/google/common/util/concurrent/a;

    move-result-object v0

    return-object v0
.end method

.method public final r()Lcom/google/common/util/concurrent/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/a<",
            "Landroidx/media2/common/SessionPlayer$b;",
            ">;"
        }
    .end annotation

    .line 701
    new-instance v0, Landroidx/media2/session/n$14;

    invoke-direct {v0, p0}, Landroidx/media2/session/n$14;-><init>(Landroidx/media2/session/n;)V

    invoke-direct {p0, v0}, Landroidx/media2/session/n;->a(Landroidx/media2/session/n$c;)Lcom/google/common/util/concurrent/a;

    move-result-object v0

    return-object v0
.end method

.method public final s()I
    .locals 2

    .line 844
    new-instance v0, Landroidx/media2/session/n$24;

    invoke-direct {v0, p0}, Landroidx/media2/session/n$24;-><init>(Landroidx/media2/session/n;)V

    const/4 v1, 0x0

    .line 849
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 844
    invoke-direct {p0, v0, v1}, Landroidx/media2/session/n;->a(Landroidx/media2/session/n$c;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final t()I
    .locals 2

    .line 867
    new-instance v0, Landroidx/media2/session/n$26;

    invoke-direct {v0, p0}, Landroidx/media2/session/n$26;-><init>(Landroidx/media2/session/n;)V

    const/4 v1, 0x0

    .line 872
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 867
    invoke-direct {p0, v0, v1}, Landroidx/media2/session/n;->a(Landroidx/media2/session/n$c;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public y()Landroidx/media2/session/MediaSession$d;
    .locals 1

    .line 970
    iget-object v0, p0, Landroidx/media2/session/n;->e:Landroidx/media2/session/MediaSession$d;

    return-object v0
.end method

.method public z()Landroidx/media2/session/MediaSession;
    .locals 1

    .line 955
    iget-object v0, p0, Landroidx/media2/session/n;->w:Landroidx/media2/session/MediaSession;

    return-object v0
.end method
