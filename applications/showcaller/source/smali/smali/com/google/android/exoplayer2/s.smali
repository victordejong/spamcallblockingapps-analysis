.class final Lcom/google/android/exoplayer2/s;
.super Ljava/lang/Object;
.source "AudioFocusManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/s$a;,
        Lcom/google/android/exoplayer2/s$b;
    }
.end annotation


# instance fields
.field private final a:Landroid/media/AudioManager;

.field private final b:Lcom/google/android/exoplayer2/s$a;

.field private final c:Lcom/google/android/exoplayer2/s$b;

.field private d:Lcom/google/android/exoplayer2/audio/i;

.field private e:I

.field private f:I

.field private g:F

.field private h:Landroid/media/AudioFocusRequest;

.field private i:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/google/android/exoplayer2/s$b;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    iput v0, p0, Lcom/google/android/exoplayer2/s;->g:F

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/google/android/exoplayer2/s;->a:Landroid/media/AudioManager;

    .line 4
    iput-object p3, p0, Lcom/google/android/exoplayer2/s;->c:Lcom/google/android/exoplayer2/s$b;

    .line 5
    new-instance p1, Lcom/google/android/exoplayer2/s$a;

    invoke-direct {p1, p0, p2}, Lcom/google/android/exoplayer2/s$a;-><init>(Lcom/google/android/exoplayer2/s;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/s;->b:Lcom/google/android/exoplayer2/s$a;

    const/4 p1, 0x0

    .line 6
    iput p1, p0, Lcom/google/android/exoplayer2/s;->e:I

    return-void
.end method

.method private a()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/s;->b(Z)V

    return-void
.end method

.method private b(Z)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/s;->f:I

    if-nez v0, :cond_0

    iget v1, p0, Lcom/google/android/exoplayer2/s;->e:I

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2
    iget v0, p0, Lcom/google/android/exoplayer2/s;->e:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-eqz p1, :cond_3

    .line 3
    :cond_1
    sget p1, Lcom/google/android/exoplayer2/util/h0;->a:I

    const/16 v0, 0x1a

    if-lt p1, v0, :cond_2

    .line 4
    invoke-direct {p0}, Lcom/google/android/exoplayer2/s;->d()V

    goto :goto_0

    .line 5
    :cond_2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/s;->c()V

    :goto_0
    const/4 p1, 0x0

    .line 6
    iput p1, p0, Lcom/google/android/exoplayer2/s;->e:I

    :cond_3
    return-void
.end method

.method private c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/s;->a:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/google/android/exoplayer2/s;->b:Lcom/google/android/exoplayer2/s$a;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    return-void
.end method

.method private d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/s;->h:Landroid/media/AudioFocusRequest;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/google/android/exoplayer2/s;->a:Landroid/media/AudioManager;

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->abandonAudioFocusRequest(Landroid/media/AudioFocusRequest;)I

    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/google/android/exoplayer2/s;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/s;->g(I)V

    return-void
.end method

.method private g(I)V
    .locals 5

    const/4 v0, -0x3

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, -0x2

    if-eq p1, v0, :cond_2

    if-eq p1, v3, :cond_1

    if-eq p1, v4, :cond_0

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown focus change type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AudioFocusManager"

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/util/o;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2
    :cond_0
    iput v4, p0, Lcom/google/android/exoplayer2/s;->e:I

    goto :goto_0

    .line 3
    :cond_1
    iput v3, p0, Lcom/google/android/exoplayer2/s;->e:I

    goto :goto_0

    .line 4
    :cond_2
    iput v2, p0, Lcom/google/android/exoplayer2/s;->e:I

    goto :goto_0

    .line 5
    :cond_3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/s;->o()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 6
    iput v2, p0, Lcom/google/android/exoplayer2/s;->e:I

    goto :goto_0

    .line 7
    :cond_4
    iput v1, p0, Lcom/google/android/exoplayer2/s;->e:I

    .line 8
    :goto_0
    iget p1, p0, Lcom/google/android/exoplayer2/s;->e:I

    if-eq p1, v3, :cond_8

    if-eqz p1, :cond_9

    if-eq p1, v4, :cond_7

    if-eq p1, v2, :cond_6

    if-ne p1, v1, :cond_5

    goto :goto_1

    .line 9
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown audio focus state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/exoplayer2/s;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_6
    iget-object p1, p0, Lcom/google/android/exoplayer2/s;->c:Lcom/google/android/exoplayer2/s$b;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/s$b;->g(I)V

    goto :goto_1

    .line 11
    :cond_7
    iget-object p1, p0, Lcom/google/android/exoplayer2/s;->c:Lcom/google/android/exoplayer2/s$b;

    invoke-interface {p1, v4}, Lcom/google/android/exoplayer2/s$b;->g(I)V

    goto :goto_1

    .line 12
    :cond_8
    iget-object p1, p0, Lcom/google/android/exoplayer2/s;->c:Lcom/google/android/exoplayer2/s$b;

    invoke-interface {p1, v3}, Lcom/google/android/exoplayer2/s$b;->g(I)V

    .line 13
    invoke-direct {p0, v4}, Lcom/google/android/exoplayer2/s;->b(Z)V

    .line 14
    :cond_9
    :goto_1
    iget p1, p0, Lcom/google/android/exoplayer2/s;->e:I

    if-ne p1, v1, :cond_a

    const p1, 0x3e4ccccd    # 0.2f

    goto :goto_2

    :cond_a
    const/high16 p1, 0x3f800000    # 1.0f

    .line 15
    :goto_2
    iget v0, p0, Lcom/google/android/exoplayer2/s;->g:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_b

    .line 16
    iput p1, p0, Lcom/google/android/exoplayer2/s;->g:F

    .line 17
    iget-object v0, p0, Lcom/google/android/exoplayer2/s;->c:Lcom/google/android/exoplayer2/s$b;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/s$b;->f(F)V

    :cond_b
    return-void
.end method

.method private h(Z)I
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method private l()I
    .locals 4

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/s;->f:I

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 2
    iget v0, p0, Lcom/google/android/exoplayer2/s;->e:I

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/s;->b(Z)V

    :cond_0
    return v1

    .line 4
    :cond_1
    iget v0, p0, Lcom/google/android/exoplayer2/s;->e:I

    const/4 v2, 0x0

    if-nez v0, :cond_4

    .line 5
    sget v0, Lcom/google/android/exoplayer2/util/h0;->a:I

    const/16 v3, 0x1a

    if-lt v0, v3, :cond_2

    .line 6
    invoke-direct {p0}, Lcom/google/android/exoplayer2/s;->n()I

    move-result v0

    goto :goto_0

    .line 7
    :cond_2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/s;->m()I

    move-result v0

    :goto_0
    if-ne v0, v1, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    .line 8
    :goto_1
    iput v0, p0, Lcom/google/android/exoplayer2/s;->e:I

    .line 9
    :cond_4
    iget v0, p0, Lcom/google/android/exoplayer2/s;->e:I

    if-nez v0, :cond_5

    const/4 v0, -0x1

    return v0

    :cond_5
    const/4 v3, 0x2

    if-ne v0, v3, :cond_6

    const/4 v1, 0x0

    :cond_6
    return v1
.end method

.method private m()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/s;->a:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/google/android/exoplayer2/s;->b:Lcom/google/android/exoplayer2/s$a;

    iget-object v2, p0, Lcom/google/android/exoplayer2/s;->d:Lcom/google/android/exoplayer2/audio/i;

    .line 2
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/e;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/audio/i;

    iget v2, v2, Lcom/google/android/exoplayer2/audio/i;->d:I

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/h0;->K(I)I

    move-result v2

    iget v3, p0, Lcom/google/android/exoplayer2/s;->f:I

    .line 3
    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    return v0
.end method

.method private n()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/s;->h:Landroid/media/AudioFocusRequest;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/s;->i:Z

    if-eqz v1, :cond_2

    :cond_0
    if-nez v0, :cond_1

    .line 2
    new-instance v0, Landroid/media/AudioFocusRequest$Builder;

    iget v1, p0, Lcom/google/android/exoplayer2/s;->f:I

    invoke-direct {v0, v1}, Landroid/media/AudioFocusRequest$Builder;-><init>(I)V

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/media/AudioFocusRequest$Builder;

    iget-object v1, p0, Lcom/google/android/exoplayer2/s;->h:Landroid/media/AudioFocusRequest;

    invoke-direct {v0, v1}, Landroid/media/AudioFocusRequest$Builder;-><init>(Landroid/media/AudioFocusRequest;)V

    .line 3
    :goto_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/s;->o()Z

    move-result v1

    .line 4
    iget-object v2, p0, Lcom/google/android/exoplayer2/s;->d:Lcom/google/android/exoplayer2/audio/i;

    .line 5
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/e;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/audio/i;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/audio/i;->a()Landroid/media/AudioAttributes;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/media/AudioFocusRequest$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v0

    .line 6
    invoke-virtual {v0, v1}, Landroid/media/AudioFocusRequest$Builder;->setWillPauseWhenDucked(Z)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/s;->b:Lcom/google/android/exoplayer2/s$a;

    .line 7
    invoke-virtual {v0, v1}, Landroid/media/AudioFocusRequest$Builder;->setOnAudioFocusChangeListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroid/media/AudioFocusRequest$Builder;->build()Landroid/media/AudioFocusRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/s;->h:Landroid/media/AudioFocusRequest;

    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/s;->i:Z

    .line 10
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/s;->a:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/google/android/exoplayer2/s;->h:Landroid/media/AudioFocusRequest;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioFocusRequest;)I

    move-result v0

    return v0
.end method

.method private o()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/s;->d:Lcom/google/android/exoplayer2/audio/i;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/google/android/exoplayer2/audio/i;->b:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method public f()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/s;->g:F

    return v0
.end method

.method public i(Z)I
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/s;->l()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public j(ZI)I
    .locals 1

    if-nez p1, :cond_0

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/s;->a()V

    const/4 p1, -0x1

    return p1

    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/s;->h(Z)I

    move-result p1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/s;->l()I

    move-result p1

    :goto_0
    return p1
.end method

.method public k()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/s;->b(Z)V

    return-void
.end method
