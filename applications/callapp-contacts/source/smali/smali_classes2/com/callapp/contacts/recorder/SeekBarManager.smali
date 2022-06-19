.class public Lcom/callapp/contacts/recorder/SeekBarManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/recorder/SeekBarManager$SeekBarUpdateRunnable;,
        Lcom/callapp/contacts/recorder/SeekBarManager$OnSeekBarChanged;
    }
.end annotation


# instance fields
.field protected a:Landroid/widget/SeekBar;

.field public b:Z

.field private c:Landroid/media/MediaPlayer;

.field private d:Lcom/callapp/contacts/recorder/SeekBarManager$SeekBarUpdateRunnable;

.field private e:Landroid/os/Handler;

.field private final f:Lcom/callapp/contacts/recorder/SeekBarManager$OnSeekBarChanged;

.field private final g:Ljava/lang/String;

.field private h:Lcom/callapp/contacts/model/objectbox/CallRecorder;

.field private i:Landroid/media/AudioManager;

.field private j:Landroid/media/AudioManager$OnAudioFocusChangeListener;


# direct methods
.method public constructor <init>(Landroid/widget/SeekBar;Lcom/callapp/contacts/recorder/SeekBarManager$OnSeekBarChanged;Lcom/callapp/contacts/model/objectbox/CallRecorder;Ljava/lang/String;)V
    .locals 2

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lcom/callapp/contacts/recorder/SeekBarManager$SeekBarUpdateRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/callapp/contacts/recorder/SeekBarManager$SeekBarUpdateRunnable;-><init>(Lcom/callapp/contacts/recorder/SeekBarManager;Lcom/callapp/contacts/recorder/SeekBarManager$1;)V

    iput-object v0, p0, Lcom/callapp/contacts/recorder/SeekBarManager;->d:Lcom/callapp/contacts/recorder/SeekBarManager$SeekBarUpdateRunnable;

    .line 29
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/recorder/SeekBarManager;->e:Landroid/os/Handler;

    .line 36
    new-instance v0, Lcom/callapp/contacts/recorder/SeekBarManager$1;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/recorder/SeekBarManager$1;-><init>(Lcom/callapp/contacts/recorder/SeekBarManager;)V

    iput-object v0, p0, Lcom/callapp/contacts/recorder/SeekBarManager;->j:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 111
    iput-object p2, p0, Lcom/callapp/contacts/recorder/SeekBarManager;->f:Lcom/callapp/contacts/recorder/SeekBarManager$OnSeekBarChanged;

    .line 112
    iput-object p1, p0, Lcom/callapp/contacts/recorder/SeekBarManager;->a:Landroid/widget/SeekBar;

    .line 113
    iput-object p4, p0, Lcom/callapp/contacts/recorder/SeekBarManager;->g:Ljava/lang/String;

    .line 114
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p1

    const-string p2, "audio"

    invoke-virtual {p1, p2}, Lcom/callapp/contacts/CallAppApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/callapp/contacts/recorder/SeekBarManager;->i:Landroid/media/AudioManager;

    .line 115
    invoke-virtual {p0, p3}, Lcom/callapp/contacts/recorder/SeekBarManager;->a(Lcom/callapp/contacts/model/objectbox/CallRecorder;)V

    return-void
.end method

.method public constructor <init>(Landroid/widget/SeekBar;Lcom/callapp/contacts/recorder/SeekBarManager$OnSeekBarChanged;Ljava/lang/String;)V
    .locals 2

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lcom/callapp/contacts/recorder/SeekBarManager$SeekBarUpdateRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/callapp/contacts/recorder/SeekBarManager$SeekBarUpdateRunnable;-><init>(Lcom/callapp/contacts/recorder/SeekBarManager;Lcom/callapp/contacts/recorder/SeekBarManager$1;)V

    iput-object v0, p0, Lcom/callapp/contacts/recorder/SeekBarManager;->d:Lcom/callapp/contacts/recorder/SeekBarManager$SeekBarUpdateRunnable;

    .line 29
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/recorder/SeekBarManager;->e:Landroid/os/Handler;

    .line 36
    new-instance v0, Lcom/callapp/contacts/recorder/SeekBarManager$1;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/recorder/SeekBarManager$1;-><init>(Lcom/callapp/contacts/recorder/SeekBarManager;)V

    iput-object v0, p0, Lcom/callapp/contacts/recorder/SeekBarManager;->j:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 104
    iput-object p2, p0, Lcom/callapp/contacts/recorder/SeekBarManager;->f:Lcom/callapp/contacts/recorder/SeekBarManager$OnSeekBarChanged;

    .line 105
    iput-object p1, p0, Lcom/callapp/contacts/recorder/SeekBarManager;->a:Landroid/widget/SeekBar;

    .line 106
    iput-object p3, p0, Lcom/callapp/contacts/recorder/SeekBarManager;->g:Ljava/lang/String;

    .line 107
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p1

    const-string p2, "audio"

    invoke-virtual {p1, p2}, Lcom/callapp/contacts/CallAppApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/callapp/contacts/recorder/SeekBarManager;->i:Landroid/media/AudioManager;

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/recorder/SeekBarManager;)Landroid/media/MediaPlayer;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/callapp/contacts/recorder/SeekBarManager;->c:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method static synthetic b(Lcom/callapp/contacts/recorder/SeekBarManager;)Z
    .locals 0

    .line 23
    iget-boolean p0, p0, Lcom/callapp/contacts/recorder/SeekBarManager;->b:Z

    return p0
.end method

.method static synthetic c(Lcom/callapp/contacts/recorder/SeekBarManager;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/callapp/contacts/recorder/SeekBarManager;->f()V

    return-void
.end method

.method static synthetic d(Lcom/callapp/contacts/recorder/SeekBarManager;)Lcom/callapp/contacts/recorder/SeekBarManager$SeekBarUpdateRunnable;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/callapp/contacts/recorder/SeekBarManager;->d:Lcom/callapp/contacts/recorder/SeekBarManager$SeekBarUpdateRunnable;

    return-object p0
.end method

.method static synthetic e(Lcom/callapp/contacts/recorder/SeekBarManager;)Landroid/os/Handler;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/callapp/contacts/recorder/SeekBarManager;->e:Landroid/os/Handler;

    return-object p0
.end method

.method private e()V
    .locals 5

    .line 77
    const-class v0, Lcom/callapp/contacts/recorder/SeekBarManager;

    iget-object v1, p0, Lcom/callapp/contacts/recorder/SeekBarManager;->i:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/callapp/contacts/recorder/SeekBarManager;->j:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v3, 0x3

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v1

    if-ne v1, v4, :cond_0

    const-string v1, "audio focus request granted"

    .line 84
    invoke-static {v0, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    const-string v1, "audio focus request failed"

    .line 86
    invoke-static {v0, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 90
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/callapp/contacts/recorder/SeekBarManager;->f()V

    return-void
.end method

.method static synthetic f(Lcom/callapp/contacts/recorder/SeekBarManager;)Lcom/callapp/contacts/recorder/SeekBarManager$OnSeekBarChanged;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/callapp/contacts/recorder/SeekBarManager;->f:Lcom/callapp/contacts/recorder/SeekBarManager$OnSeekBarChanged;

    return-object p0
.end method

.method private f()V
    .locals 4

    .line 254
    iget-object v0, p0, Lcom/callapp/contacts/recorder/SeekBarManager;->h:Lcom/callapp/contacts/model/objectbox/CallRecorder;

    if-nez v0, :cond_0

    return-void

    .line 259
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/callapp/contacts/recorder/SeekBarManager;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_1

    .line 260
    iget-object v0, p0, Lcom/callapp/contacts/recorder/SeekBarManager;->c:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/callapp/contacts/recorder/SeekBarManager;->a:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 261
    iget-object v0, p0, Lcom/callapp/contacts/recorder/SeekBarManager;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 262
    iget-object v0, p0, Lcom/callapp/contacts/recorder/SeekBarManager;->e:Landroid/os/Handler;

    iget-object v1, p0, Lcom/callapp/contacts/recorder/SeekBarManager;->d:Lcom/callapp/contacts/recorder/SeekBarManager$SeekBarUpdateRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 264
    :cond_1
    iget-object v0, p0, Lcom/callapp/contacts/recorder/SeekBarManager;->f:Lcom/callapp/contacts/recorder/SeekBarManager$OnSeekBarChanged;

    if-eqz v0, :cond_2

    .line 265
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v1, "Call recorders list"

    const-string v2, "Play file"

    iget-object v3, p0, Lcom/callapp/contacts/recorder/SeekBarManager;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    iget-object v0, p0, Lcom/callapp/contacts/recorder/SeekBarManager;->f:Lcom/callapp/contacts/recorder/SeekBarManager$OnSeekBarChanged;

    invoke-interface {v0}, Lcom/callapp/contacts/recorder/SeekBarManager$OnSeekBarChanged;->onPlayerStarted()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    :catch_0
    move-exception v0

    .line 269
    const-class v1, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 164
    invoke-virtual {p0}, Lcom/callapp/contacts/recorder/SeekBarManager;->c()V

    .line 166
    iget-object v0, p0, Lcom/callapp/contacts/recorder/SeekBarManager;->i:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 167
    iget-object v1, p0, Lcom/callapp/contacts/recorder/SeekBarManager;->j:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/recorder/SeekBarManager;->c:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2

    .line 171
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 173
    :try_start_0
    iget-object v0, p0, Lcom/callapp/contacts/recorder/SeekBarManager;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 174
    iget-object v0, p0, Lcom/callapp/contacts/recorder/SeekBarManager;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 176
    const-class v2, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 180
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/callapp/contacts/recorder/SeekBarManager;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 181
    iput-object v1, p0, Lcom/callapp/contacts/recorder/SeekBarManager;->c:Landroid/media/MediaPlayer;

    :cond_2
    return-void
.end method

.method public final a(Lcom/callapp/contacts/model/objectbox/CallRecorder;)V
    .locals 2

    .line 119
    iget-object v0, p0, Lcom/callapp/contacts/recorder/SeekBarManager;->c:Landroid/media/MediaPlayer;

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    .line 120
    iput-object p1, p0, Lcom/callapp/contacts/recorder/SeekBarManager;->h:Lcom/callapp/contacts/model/objectbox/CallRecorder;

    .line 121
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lcom/callapp/contacts/model/objectbox/CallRecorder;->getFileName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 122
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/callapp/contacts/util/IoUtils;->a(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    .line 123
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaPlayer;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/recorder/SeekBarManager;->c:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_0

    .line 125
    iget-object v0, p0, Lcom/callapp/contacts/recorder/SeekBarManager;->a:Landroid/widget/SeekBar;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 126
    iget-object p1, p0, Lcom/callapp/contacts/recorder/SeekBarManager;->c:Landroid/media/MediaPlayer;

    new-instance v0, Lcom/callapp/contacts/recorder/SeekBarManager$2;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/recorder/SeekBarManager$2;-><init>(Lcom/callapp/contacts/recorder/SeekBarManager;)V

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 133
    iget-object p1, p0, Lcom/callapp/contacts/recorder/SeekBarManager;->c:Landroid/media/MediaPlayer;

    new-instance v0, Lcom/callapp/contacts/recorder/SeekBarManager$3;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/recorder/SeekBarManager$3;-><init>(Lcom/callapp/contacts/recorder/SeekBarManager;)V

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 140
    iget-object p1, p0, Lcom/callapp/contacts/recorder/SeekBarManager;->a:Landroid/widget/SeekBar;

    new-instance v0, Lcom/callapp/contacts/recorder/SeekBarManager$4;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/recorder/SeekBarManager$4;-><init>(Lcom/callapp/contacts/recorder/SeekBarManager;)V

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void

    .line 158
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/manager/FeedbackManager;->get()Lcom/callapp/contacts/manager/FeedbackManager;

    move-result-object p1

    const/16 v0, 0x50

    const-string v1, "Can\'t MediaPlayer.create() in seekBarManager"

    .line 1206
    invoke-virtual {p1, v1, v0}, Lcom/callapp/contacts/manager/FeedbackManager;->a(Ljava/lang/String;I)V

    :cond_1
    return-void
.end method

.method public final b()V
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/callapp/contacts/recorder/SeekBarManager;->c:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    invoke-virtual {p0}, Lcom/callapp/contacts/recorder/SeekBarManager;->d()V

    return-void

    .line 210
    :cond_0
    invoke-direct {p0}, Lcom/callapp/contacts/recorder/SeekBarManager;->e()V

    return-void
.end method

.method public final c()V
    .locals 3

    .line 215
    iget-object v0, p0, Lcom/callapp/contacts/recorder/SeekBarManager;->e:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 216
    iget-object v1, p0, Lcom/callapp/contacts/recorder/SeekBarManager;->d:Lcom/callapp/contacts/recorder/SeekBarManager$SeekBarUpdateRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/recorder/SeekBarManager;->a:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 221
    iget-object v0, p0, Lcom/callapp/contacts/recorder/SeekBarManager;->f:Lcom/callapp/contacts/recorder/SeekBarManager$OnSeekBarChanged;

    if-eqz v0, :cond_1

    .line 222
    invoke-interface {v0}, Lcom/callapp/contacts/recorder/SeekBarManager$OnSeekBarChanged;->onPlayerReset()V

    .line 223
    iget-object v0, p0, Lcom/callapp/contacts/recorder/SeekBarManager;->c:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 224
    iget-object v2, p0, Lcom/callapp/contacts/recorder/SeekBarManager;->f:Lcom/callapp/contacts/recorder/SeekBarManager$OnSeekBarChanged;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    invoke-interface {v2, v1, v0}, Lcom/callapp/contacts/recorder/SeekBarManager$OnSeekBarChanged;->seekBarUpdated(II)V

    :cond_1
    return-void
.end method

.method public final d()V
    .locals 2

    const/4 v0, 0x1

    .line 234
    iput-boolean v0, p0, Lcom/callapp/contacts/recorder/SeekBarManager;->b:Z

    .line 236
    iget-object v0, p0, Lcom/callapp/contacts/recorder/SeekBarManager;->c:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    :try_start_0
    iget-object v0, p0, Lcom/callapp/contacts/recorder/SeekBarManager;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 240
    const-class v1, Lcom/callapp/contacts/recorder/SeekBarManager;

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 244
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/callapp/contacts/recorder/SeekBarManager;->e:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 245
    iget-object v1, p0, Lcom/callapp/contacts/recorder/SeekBarManager;->d:Lcom/callapp/contacts/recorder/SeekBarManager$SeekBarUpdateRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 248
    :cond_1
    iget-object v0, p0, Lcom/callapp/contacts/recorder/SeekBarManager;->f:Lcom/callapp/contacts/recorder/SeekBarManager$OnSeekBarChanged;

    if-eqz v0, :cond_2

    .line 249
    invoke-interface {v0}, Lcom/callapp/contacts/recorder/SeekBarManager$OnSeekBarChanged;->onPlayerPaused()V

    :cond_2
    return-void
.end method
