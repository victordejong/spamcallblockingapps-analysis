.class public final Landroidx/media2/exoplayer/external/audio/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/audio/e$a;,
        Landroidx/media2/exoplayer/external/audio/e$b;
    }
.end annotation


# instance fields
.field final a:Landroidx/media2/exoplayer/external/audio/e$b;

.field public b:Landroidx/media2/exoplayer/external/audio/c;

.field c:I

.field public d:I

.field public e:F

.field private final f:Landroid/media/AudioManager;

.field private final g:Landroidx/media2/exoplayer/external/audio/e$a;

.field private h:Landroid/media/AudioFocusRequest;

.field private i:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/media2/exoplayer/external/audio/e$b;)V
    .locals 1

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 118
    iput v0, p0, Landroidx/media2/exoplayer/external/audio/e;->e:F

    .line 131
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Landroidx/media2/exoplayer/external/audio/e;->f:Landroid/media/AudioManager;

    .line 132
    iput-object p2, p0, Landroidx/media2/exoplayer/external/audio/e;->a:Landroidx/media2/exoplayer/external/audio/e$b;

    .line 133
    new-instance p1, Landroidx/media2/exoplayer/external/audio/e$a;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Landroidx/media2/exoplayer/external/audio/e$a;-><init>(Landroidx/media2/exoplayer/external/audio/e;Landroidx/media2/exoplayer/external/audio/e$1;)V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/audio/e;->g:Landroidx/media2/exoplayer/external/audio/e$a;

    const/4 p1, 0x0

    .line 134
    iput p1, p0, Landroidx/media2/exoplayer/external/audio/e;->c:I

    return-void
.end method

.method private c()I
    .locals 4

    .line 271
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/e;->f:Landroid/media/AudioManager;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/e;->g:Landroidx/media2/exoplayer/external/audio/e$a;

    iget-object v2, p0, Landroidx/media2/exoplayer/external/audio/e;->b:Landroidx/media2/exoplayer/external/audio/c;

    .line 273
    invoke-static {v2}, Landroidx/media2/exoplayer/external/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/exoplayer/external/audio/c;

    iget v2, v2, Landroidx/media2/exoplayer/external/audio/c;->d:I

    invoke-static {v2}, Landroidx/media2/exoplayer/external/util/ac;->f(I)I

    move-result v2

    iget v3, p0, Landroidx/media2/exoplayer/external/audio/e;->d:I

    .line 271
    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    return v0
.end method

.method private d()I
    .locals 3

    .line 279
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/e;->h:Landroid/media/AudioFocusRequest;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Landroidx/media2/exoplayer/external/audio/e;->i:Z

    if-eqz v1, :cond_2

    :cond_0
    if-nez v0, :cond_1

    .line 282
    new-instance v0, Landroid/media/AudioFocusRequest$Builder;

    iget v1, p0, Landroidx/media2/exoplayer/external/audio/e;->d:I

    invoke-direct {v0, v1}, Landroid/media/AudioFocusRequest$Builder;-><init>(I)V

    goto :goto_0

    .line 283
    :cond_1
    new-instance v0, Landroid/media/AudioFocusRequest$Builder;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/e;->h:Landroid/media/AudioFocusRequest;

    invoke-direct {v0, v1}, Landroid/media/AudioFocusRequest$Builder;-><init>(Landroid/media/AudioFocusRequest;)V

    .line 285
    :goto_0
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/audio/e;->b()Z

    move-result v1

    .line 286
    iget-object v2, p0, Landroidx/media2/exoplayer/external/audio/e;->b:Landroidx/media2/exoplayer/external/audio/c;

    .line 288
    invoke-static {v2}, Landroidx/media2/exoplayer/external/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/exoplayer/external/audio/c;

    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/audio/c;->a()Landroid/media/AudioAttributes;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/media/AudioFocusRequest$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v0

    .line 289
    invoke-virtual {v0, v1}, Landroid/media/AudioFocusRequest$Builder;->setWillPauseWhenDucked(Z)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/e;->g:Landroidx/media2/exoplayer/external/audio/e$a;

    .line 290
    invoke-virtual {v0, v1}, Landroid/media/AudioFocusRequest$Builder;->setOnAudioFocusChangeListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v0

    .line 291
    invoke-virtual {v0}, Landroid/media/AudioFocusRequest$Builder;->build()Landroid/media/AudioFocusRequest;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/audio/e;->h:Landroid/media/AudioFocusRequest;

    const/4 v0, 0x0

    .line 293
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/audio/e;->i:Z

    .line 295
    :cond_2
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/e;->f:Landroid/media/AudioManager;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/e;->h:Landroid/media/AudioFocusRequest;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioFocusRequest;)I

    move-result v0

    return v0
.end method

.method private e()V
    .locals 2

    .line 299
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/e;->f:Landroid/media/AudioManager;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/e;->g:Landroidx/media2/exoplayer/external/audio/e$a;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    return-void
.end method

.method private f()V
    .locals 2

    .line 304
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/e;->h:Landroid/media/AudioFocusRequest;

    if-eqz v0, :cond_0

    .line 305
    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/e;->f:Landroid/media/AudioManager;

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->abandonAudioFocusRequest(Landroid/media/AudioFocusRequest;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 4

    .line 221
    iget v0, p0, Landroidx/media2/exoplayer/external/audio/e;->d:I

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 222
    iget v0, p0, Landroidx/media2/exoplayer/external/audio/e;->c:I

    if-eqz v0, :cond_0

    .line 223
    invoke-virtual {p0, v1}, Landroidx/media2/exoplayer/external/audio/e;->b(Z)V

    :cond_0
    return v1

    .line 228
    :cond_1
    iget v0, p0, Landroidx/media2/exoplayer/external/audio/e;->c:I

    const/4 v2, 0x0

    if-nez v0, :cond_4

    .line 229
    sget v0, Landroidx/media2/exoplayer/external/util/ac;->a:I

    const/16 v3, 0x1a

    if-lt v0, v3, :cond_2

    .line 230
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/audio/e;->d()I

    move-result v0

    goto :goto_0

    .line 232
    :cond_2
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/audio/e;->c()I

    move-result v0

    :goto_0
    if-ne v0, v1, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    .line 237
    :goto_1
    iput v0, p0, Landroidx/media2/exoplayer/external/audio/e;->c:I

    .line 240
    :cond_4
    iget v0, p0, Landroidx/media2/exoplayer/external/audio/e;->c:I

    if-nez v0, :cond_5

    const/4 v0, -0x1

    return v0

    :cond_5
    const/4 v3, 0x2

    if-ne v0, v3, :cond_6

    return v2

    :cond_6
    return v1
.end method

.method public final a(Z)I
    .locals 0

    if-eqz p1, :cond_0

    .line 180
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/audio/e;->a()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public final b(Z)V
    .locals 2

    .line 254
    iget v0, p0, Landroidx/media2/exoplayer/external/audio/e;->d:I

    if-nez v0, :cond_0

    iget v1, p0, Landroidx/media2/exoplayer/external/audio/e;->c:I

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 258
    iget v0, p0, Landroidx/media2/exoplayer/external/audio/e;->c:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-eqz p1, :cond_3

    .line 261
    :cond_1
    sget p1, Landroidx/media2/exoplayer/external/util/ac;->a:I

    const/16 v0, 0x1a

    if-lt p1, v0, :cond_2

    .line 262
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/audio/e;->f()V

    goto :goto_0

    .line 264
    :cond_2
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/audio/e;->e()V

    :goto_0
    const/4 p1, 0x0

    .line 266
    iput p1, p0, Landroidx/media2/exoplayer/external/audio/e;->c:I

    :cond_3
    return-void
.end method

.method final b()Z
    .locals 2

    .line 310
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/e;->b:Landroidx/media2/exoplayer/external/audio/c;

    if-eqz v0, :cond_0

    iget v0, v0, Landroidx/media2/exoplayer/external/audio/c;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
