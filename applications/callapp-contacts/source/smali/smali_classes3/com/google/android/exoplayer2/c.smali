.class public final Lcom/google/android/exoplayer2/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/c$a;,
        Lcom/google/android/exoplayer2/c$b;
    }
.end annotation


# instance fields
.field a:Lcom/google/android/exoplayer2/c$b;

.field b:F

.field private final c:Landroid/media/AudioManager;

.field private final d:Lcom/google/android/exoplayer2/c$a;

.field private e:Lcom/google/android/exoplayer2/audio/d;

.field private f:I

.field private g:I

.field private h:Landroid/media/AudioFocusRequest;

.field private i:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/google/android/exoplayer2/c$b;)V
    .locals 1

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 107
    iput v0, p0, Lcom/google/android/exoplayer2/c;->b:F

    .line 122
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    .line 121
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/google/android/exoplayer2/c;->c:Landroid/media/AudioManager;

    .line 123
    iput-object p3, p0, Lcom/google/android/exoplayer2/c;->a:Lcom/google/android/exoplayer2/c$b;

    .line 124
    new-instance p1, Lcom/google/android/exoplayer2/c$a;

    invoke-direct {p1, p0, p2}, Lcom/google/android/exoplayer2/c$a;-><init>(Lcom/google/android/exoplayer2/c;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/c;->d:Lcom/google/android/exoplayer2/c$a;

    const/4 p1, 0x0

    .line 125
    iput p1, p0, Lcom/google/android/exoplayer2/c;->f:I

    return-void
.end method

.method private static b(Lcom/google/android/exoplayer2/audio/d;)I
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 274
    :cond_0
    iget v1, p0, Lcom/google/android/exoplayer2/audio/d;->d:I

    const/4 v2, 0x3

    const-string v3, "AudioFocusManager"

    const/4 v4, 0x2

    const/4 v5, 0x1

    packed-switch v1, :pswitch_data_0

    .line 332
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unidentified audio usage: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/google/android/exoplayer2/audio/d;->d:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/google/android/exoplayer2/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 318
    :pswitch_1
    sget p0, Lcom/google/android/exoplayer2/util/af;->a:I

    const/16 v0, 0x13

    if-lt p0, v0, :cond_1

    const/4 p0, 0x4

    return p0

    :cond_1
    return v4

    .line 326
    :pswitch_2
    iget p0, p0, Lcom/google/android/exoplayer2/audio/d;->b:I

    if-ne p0, v5, :cond_2

    return v4

    :cond_2
    :pswitch_3
    return v2

    :pswitch_4
    return v0

    :pswitch_5
    return v4

    :pswitch_6
    return v5

    :pswitch_7
    const-string p0, "Specify a proper usage in the audio attributes for audio focus handling. Using AUDIOFOCUS_GAIN by default."

    .line 290
    invoke-static {v3, p0}, Lcom/google/android/exoplayer2/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v5

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_6
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private c()I
    .locals 3

    .line 190
    iget v0, p0, Lcom/google/android/exoplayer2/c;->f:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    .line 193
    :cond_0
    sget v0, Lcom/google/android/exoplayer2/util/af;->a:I

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_1

    invoke-direct {p0}, Lcom/google/android/exoplayer2/c;->e()I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/c;->d()I

    move-result v0

    :goto_0
    if-ne v0, v1, :cond_2

    .line 195
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/c;->a(I)V

    return v1

    :cond_2
    const/4 v0, 0x0

    .line 198
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/c;->a(I)V

    const/4 v0, -0x1

    return v0
.end method

.method private c(I)Z
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    .line 185
    iget p1, p0, Lcom/google/android/exoplayer2/c;->g:I

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    return v0
.end method

.method private d()I
    .locals 4

    .line 216
    iget-object v0, p0, Lcom/google/android/exoplayer2/c;->c:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/google/android/exoplayer2/c;->d:Lcom/google/android/exoplayer2/c$a;

    iget-object v2, p0, Lcom/google/android/exoplayer2/c;->e:Lcom/google/android/exoplayer2/audio/d;

    .line 218
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/audio/d;

    iget v2, v2, Lcom/google/android/exoplayer2/audio/d;->d:I

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/af;->f(I)I

    move-result v2

    iget v3, p0, Lcom/google/android/exoplayer2/c;->g:I

    .line 216
    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    return v0
.end method

.method private e()I
    .locals 3

    .line 224
    iget-object v0, p0, Lcom/google/android/exoplayer2/c;->h:Landroid/media/AudioFocusRequest;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/c;->i:Z

    if-eqz v1, :cond_2

    :cond_0
    if-nez v0, :cond_1

    .line 227
    new-instance v0, Landroid/media/AudioFocusRequest$Builder;

    iget v1, p0, Lcom/google/android/exoplayer2/c;->g:I

    invoke-direct {v0, v1}, Landroid/media/AudioFocusRequest$Builder;-><init>(I)V

    goto :goto_0

    .line 228
    :cond_1
    new-instance v0, Landroid/media/AudioFocusRequest$Builder;

    iget-object v1, p0, Lcom/google/android/exoplayer2/c;->h:Landroid/media/AudioFocusRequest;

    invoke-direct {v0, v1}, Landroid/media/AudioFocusRequest$Builder;-><init>(Landroid/media/AudioFocusRequest;)V

    .line 230
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/c;->b()Z

    move-result v1

    .line 231
    iget-object v2, p0, Lcom/google/android/exoplayer2/c;->e:Lcom/google/android/exoplayer2/audio/d;

    .line 233
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/audio/d;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/audio/d;->a()Landroid/media/AudioAttributes;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/media/AudioFocusRequest$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v0

    .line 234
    invoke-virtual {v0, v1}, Landroid/media/AudioFocusRequest$Builder;->setWillPauseWhenDucked(Z)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/c;->d:Lcom/google/android/exoplayer2/c$a;

    .line 235
    invoke-virtual {v0, v1}, Landroid/media/AudioFocusRequest$Builder;->setOnAudioFocusChangeListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v0

    .line 236
    invoke-virtual {v0}, Landroid/media/AudioFocusRequest$Builder;->build()Landroid/media/AudioFocusRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/c;->h:Landroid/media/AudioFocusRequest;

    const/4 v0, 0x0

    .line 238
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/c;->i:Z

    .line 240
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/c;->c:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/google/android/exoplayer2/c;->h:Landroid/media/AudioFocusRequest;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioFocusRequest;)I

    move-result v0

    return v0
.end method

.method private f()V
    .locals 2

    .line 244
    iget-object v0, p0, Lcom/google/android/exoplayer2/c;->c:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/google/android/exoplayer2/c;->d:Lcom/google/android/exoplayer2/c$a;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    return-void
.end method

.method private g()V
    .locals 2

    .line 249
    iget-object v0, p0, Lcom/google/android/exoplayer2/c;->h:Landroid/media/AudioFocusRequest;

    if-eqz v0, :cond_0

    .line 250
    iget-object v1, p0, Lcom/google/android/exoplayer2/c;->c:Landroid/media/AudioManager;

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->abandonAudioFocusRequest(Landroid/media/AudioFocusRequest;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(ZI)I
    .locals 1

    .line 161
    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/c;->c(I)Z

    move-result p2

    const/4 v0, -0x1

    if-eqz p2, :cond_1

    .line 162
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/c;->a()V

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v0

    :cond_1
    if-eqz p1, :cond_2

    .line 165
    invoke-direct {p0}, Lcom/google/android/exoplayer2/c;->c()I

    move-result p1

    return p1

    :cond_2
    return v0
.end method

.method final a()V
    .locals 2

    .line 204
    iget v0, p0, Lcom/google/android/exoplayer2/c;->f:I

    if-nez v0, :cond_0

    return-void

    .line 207
    :cond_0
    sget v0, Lcom/google/android/exoplayer2/util/af;->a:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    .line 208
    invoke-direct {p0}, Lcom/google/android/exoplayer2/c;->g()V

    goto :goto_0

    .line 210
    :cond_1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/c;->f()V

    :goto_0
    const/4 v0, 0x0

    .line 212
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/c;->a(I)V

    return-void
.end method

.method final a(I)V
    .locals 1

    .line 338
    iget v0, p0, Lcom/google/android/exoplayer2/c;->f:I

    if-ne v0, p1, :cond_0

    return-void

    .line 341
    :cond_0
    iput p1, p0, Lcom/google/android/exoplayer2/c;->f:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    const p1, 0x3e4ccccd    # 0.2f

    goto :goto_0

    :cond_1
    const/high16 p1, 0x3f800000    # 1.0f

    .line 347
    :goto_0
    iget v0, p0, Lcom/google/android/exoplayer2/c;->b:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_2

    return-void

    .line 350
    :cond_2
    iput p1, p0, Lcom/google/android/exoplayer2/c;->b:F

    .line 351
    iget-object p1, p0, Lcom/google/android/exoplayer2/c;->a:Lcom/google/android/exoplayer2/c$b;

    if-eqz p1, :cond_3

    .line 352
    invoke-interface {p1}, Lcom/google/android/exoplayer2/c$b;->b()V

    :cond_3
    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/audio/d;)V
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/google/android/exoplayer2/c;->e:Lcom/google/android/exoplayer2/audio/d;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 144
    iput-object p1, p0, Lcom/google/android/exoplayer2/c;->e:Lcom/google/android/exoplayer2/audio/d;

    .line 145
    invoke-static {p1}, Lcom/google/android/exoplayer2/c;->b(Lcom/google/android/exoplayer2/audio/d;)I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/c;->g:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    const-string p1, "Automatic handling of audio focus is only available for USAGE_MEDIA and USAGE_GAME."

    .line 146
    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/util/a;->a(ZLjava/lang/Object;)V

    :cond_2
    return-void
.end method

.method final b(I)V
    .locals 1

    .line 381
    iget-object v0, p0, Lcom/google/android/exoplayer2/c;->a:Lcom/google/android/exoplayer2/c$b;

    if-eqz v0, :cond_0

    .line 382
    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/c$b;->a(I)V

    :cond_0
    return-void
.end method

.method final b()Z
    .locals 2

    .line 255
    iget-object v0, p0, Lcom/google/android/exoplayer2/c;->e:Lcom/google/android/exoplayer2/audio/d;

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/google/android/exoplayer2/audio/d;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
