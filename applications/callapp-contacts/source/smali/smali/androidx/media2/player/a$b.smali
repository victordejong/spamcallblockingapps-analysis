.class final Landroidx/media2/player/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/player/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/player/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/player/a$b$a;,
        Landroidx/media2/player/a$b$b;
    }
.end annotation


# instance fields
.field final a:Ljava/lang/Object;

.field final b:Landroidx/media2/player/MediaPlayer;

.field c:Landroidx/media/AudioAttributesCompat;

.field d:Z

.field e:Z

.field private final f:Landroid/content/BroadcastReceiver;

.field private final g:Landroid/content/IntentFilter;

.field private final h:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private final i:Landroid/content/Context;

.field private final j:Landroid/media/AudioManager;

.field private k:I


# direct methods
.method constructor <init>(Landroid/content/Context;Landroidx/media2/player/MediaPlayer;)V
    .locals 2

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    new-instance v0, Landroidx/media2/player/a$b$b;

    invoke-direct {v0, p0}, Landroidx/media2/player/a$b$b;-><init>(Landroidx/media2/player/a$b;)V

    iput-object v0, p0, Landroidx/media2/player/a$b;->f:Landroid/content/BroadcastReceiver;

    .line 109
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.media.AUDIO_BECOMING_NOISY"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroidx/media2/player/a$b;->g:Landroid/content/IntentFilter;

    .line 111
    new-instance v0, Landroidx/media2/player/a$b$a;

    invoke-direct {v0, p0}, Landroidx/media2/player/a$b$a;-><init>(Landroidx/media2/player/a$b;)V

    iput-object v0, p0, Landroidx/media2/player/a$b;->h:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 112
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/media2/player/a$b;->a:Ljava/lang/Object;

    .line 127
    iput-object p1, p0, Landroidx/media2/player/a$b;->i:Landroid/content/Context;

    .line 128
    iput-object p2, p0, Landroidx/media2/player/a$b;->b:Landroidx/media2/player/MediaPlayer;

    const-string p2, "audio"

    .line 132
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Landroidx/media2/player/a$b;->j:Landroid/media/AudioManager;

    return-void
.end method

.method private e()V
    .locals 2

    .line 228
    iget v0, p0, Landroidx/media2/player/a$b;->k:I

    if-nez v0, :cond_0

    return-void

    .line 232
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "abandoningAudioFocusLocked, currently="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroidx/media2/player/a$b;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 234
    iget-object v0, p0, Landroidx/media2/player/a$b;->j:Landroid/media/AudioManager;

    iget-object v1, p0, Landroidx/media2/player/a$b;->h:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    const/4 v0, 0x0

    .line 235
    iput v0, p0, Landroidx/media2/player/a$b;->k:I

    .line 236
    iput-boolean v0, p0, Landroidx/media2/player/a$b;->d:Z

    return-void
.end method

.method private f()V
    .locals 2

    .line 255
    iget-boolean v0, p0, Landroidx/media2/player/a$b;->e:Z

    if-nez v0, :cond_0

    return-void

    .line 261
    :cond_0
    iget-object v0, p0, Landroidx/media2/player/a$b;->i:Landroid/content/Context;

    iget-object v1, p0, Landroidx/media2/player/a$b;->f:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 262
    iput-boolean v0, p0, Landroidx/media2/player/a$b;->e:Z

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 8

    .line 137
    iget-object v0, p0, Landroidx/media2/player/a$b;->b:Landroidx/media2/player/MediaPlayer;

    invoke-virtual {v0}, Landroidx/media2/player/MediaPlayer;->k()Landroidx/media/AudioAttributesCompat;

    move-result-object v0

    .line 139
    iget-object v1, p0, Landroidx/media2/player/a$b;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 140
    :try_start_0
    iput-object v0, p0, Landroidx/media2/player/a$b;->c:Landroidx/media/AudioAttributesCompat;

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 145
    invoke-direct {p0}, Landroidx/media2/player/a$b;->e()V

    .line 146
    invoke-direct {p0}, Landroidx/media2/player/a$b;->f()V

    goto/16 :goto_8

    :cond_0
    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-nez v0, :cond_1

    :goto_0
    :pswitch_0
    const/4 v3, 0x0

    goto :goto_3

    .line 1278
    :cond_1
    invoke-virtual {v0}, Landroidx/media/AudioAttributesCompat;->d()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    :pswitch_1
    const-string v3, "AudioFocusHandler"

    goto :goto_2

    :pswitch_2
    const/4 v3, 0x4

    goto :goto_3

    .line 1324
    :pswitch_3
    invoke-virtual {v0}, Landroidx/media/AudioAttributesCompat;->c()I

    move-result v0

    if-ne v0, v2, :cond_2

    :pswitch_4
    const/4 v3, 0x2

    goto :goto_3

    :goto_1
    :pswitch_5
    const/4 v3, 0x1

    goto :goto_3

    :pswitch_6
    const-string v0, "AudioFocusHandler"

    const-string v3, "Specify a proper usage in the audio attributes for audio focus handling. Using AUDIOFOCUS_GAIN by default."

    .line 1294
    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :goto_2
    const-string v4, "Unidentified AudioAttribute "

    .line 1331
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    :goto_3
    :pswitch_7
    if-nez v3, :cond_4

    .line 1196
    iget-object v0, p0, Landroidx/media2/player/a$b;->c:Landroidx/media/AudioAttributesCompat;

    if-nez v0, :cond_3

    const-string v0, "AudioFocusHandler"

    const-string v3, "requestAudioFocusLocked() shouldn\'t be called when AudioAttributes is null"

    .line 1199
    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_4
    const/4 v5, 0x1

    goto :goto_7

    .line 1206
    :cond_4
    iget-object v0, p0, Landroidx/media2/player/a$b;->j:Landroid/media/AudioManager;

    iget-object v4, p0, Landroidx/media2/player/a$b;->h:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    iget-object v6, p0, Landroidx/media2/player/a$b;->c:Landroidx/media/AudioAttributesCompat;

    .line 2271
    iget-object v6, v6, Landroidx/media/AudioAttributesCompat;->b:Landroidx/media/AudioAttributesImpl;

    invoke-interface {v6}, Landroidx/media/AudioAttributesImpl;->b()I

    move-result v6

    .line 1206
    invoke-virtual {v0, v4, v6, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    if-ne v0, v2, :cond_5

    .line 1209
    iput v3, p0, Landroidx/media2/player/a$b;->k:I

    goto :goto_5

    :cond_5
    const-string v4, "AudioFocusHandler"

    .line 1211
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "requestAudioFocus("

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ") failed (return="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ") playback wouldn\'t start."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1213
    iput v5, p0, Landroidx/media2/player/a$b;->k:I

    .line 1216
    :goto_5
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "requestAudioFocus("

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "), result="

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne v0, v2, :cond_6

    const/4 v0, 0x1

    goto :goto_6

    :cond_6
    const/4 v0, 0x0

    :goto_6
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1219
    iput-boolean v5, p0, Landroidx/media2/player/a$b;->d:Z

    .line 1220
    iget v0, p0, Landroidx/media2/player/a$b;->k:I

    if-eqz v0, :cond_7

    goto :goto_4

    :cond_7
    :goto_7
    if-eqz v5, :cond_8

    .line 3241
    iget-boolean v0, p0, Landroidx/media2/player/a$b;->e:Z

    if-nez v0, :cond_8

    .line 3249
    iget-object v0, p0, Landroidx/media2/player/a$b;->i:Landroid/content/Context;

    iget-object v3, p0, Landroidx/media2/player/a$b;->f:Landroid/content/BroadcastReceiver;

    iget-object v4, p0, Landroidx/media2/player/a$b;->g:Landroid/content/IntentFilter;

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3250
    iput-boolean v2, p0, Landroidx/media2/player/a$b;->e:Z

    :cond_8
    move v2, v5

    .line 153
    :goto_8
    monitor-exit v1

    return v2

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_4
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_3
        :pswitch_7
        :pswitch_7
        :pswitch_5
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final b()V
    .locals 2

    .line 159
    iget-object v0, p0, Landroidx/media2/player/a$b;->a:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 160
    :try_start_0
    iput-boolean v1, p0, Landroidx/media2/player/a$b;->d:Z

    .line 161
    invoke-direct {p0}, Landroidx/media2/player/a$b;->f()V

    .line 162
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final c()V
    .locals 2

    .line 167
    iget-object v0, p0, Landroidx/media2/player/a$b;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 168
    :try_start_0
    invoke-direct {p0}, Landroidx/media2/player/a$b;->e()V

    .line 169
    invoke-direct {p0}, Landroidx/media2/player/a$b;->f()V

    .line 170
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final d()V
    .locals 2

    .line 175
    iget-object v0, p0, Landroidx/media2/player/a$b;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 176
    :try_start_0
    invoke-direct {p0}, Landroidx/media2/player/a$b;->f()V

    .line 177
    invoke-direct {p0}, Landroidx/media2/player/a$b;->e()V

    .line 178
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
