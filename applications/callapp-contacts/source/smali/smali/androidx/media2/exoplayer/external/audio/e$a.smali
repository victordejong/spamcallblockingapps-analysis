.class final Landroidx/media2/exoplayer/external/audio/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/audio/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Landroidx/media2/exoplayer/external/audio/e;


# direct methods
.method private constructor <init>(Landroidx/media2/exoplayer/external/audio/e;)V
    .locals 0

    .line 395
    iput-object p1, p0, Landroidx/media2/exoplayer/external/audio/e$a;->a:Landroidx/media2/exoplayer/external/audio/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media2/exoplayer/external/audio/e;Landroidx/media2/exoplayer/external/audio/e$1;)V
    .locals 0

    .line 395
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/audio/e$a;-><init>(Landroidx/media2/exoplayer/external/audio/e;)V

    return-void
.end method


# virtual methods
.method public final onAudioFocusChange(I)V
    .locals 6

    const/4 v0, -0x3

    const/16 v1, 0x26

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, -0x1

    const/4 v5, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, -0x2

    if-eq p1, v0, :cond_2

    if-eq p1, v4, :cond_1

    if-eq p1, v5, :cond_0

    .line 417
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unknown focus change type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AudioFocusManager"

    invoke-static {v0, p1}, Landroidx/media2/exoplayer/external/util/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 414
    :cond_0
    iget-object p1, p0, Landroidx/media2/exoplayer/external/audio/e$a;->a:Landroidx/media2/exoplayer/external/audio/e;

    .line 6046
    iput v5, p1, Landroidx/media2/exoplayer/external/audio/e;->c:I

    goto :goto_0

    .line 401
    :cond_1
    iget-object p1, p0, Landroidx/media2/exoplayer/external/audio/e$a;->a:Landroidx/media2/exoplayer/external/audio/e;

    .line 1046
    iput v4, p1, Landroidx/media2/exoplayer/external/audio/e;->c:I

    goto :goto_0

    .line 404
    :cond_2
    iget-object p1, p0, Landroidx/media2/exoplayer/external/audio/e$a;->a:Landroidx/media2/exoplayer/external/audio/e;

    .line 2046
    iput v3, p1, Landroidx/media2/exoplayer/external/audio/e;->c:I

    goto :goto_0

    .line 407
    :cond_3
    iget-object p1, p0, Landroidx/media2/exoplayer/external/audio/e$a;->a:Landroidx/media2/exoplayer/external/audio/e;

    .line 3046
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/audio/e;->b()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 408
    iget-object p1, p0, Landroidx/media2/exoplayer/external/audio/e$a;->a:Landroidx/media2/exoplayer/external/audio/e;

    .line 4046
    iput v3, p1, Landroidx/media2/exoplayer/external/audio/e;->c:I

    goto :goto_0

    .line 410
    :cond_4
    iget-object p1, p0, Landroidx/media2/exoplayer/external/audio/e$a;->a:Landroidx/media2/exoplayer/external/audio/e;

    .line 5046
    iput v2, p1, Landroidx/media2/exoplayer/external/audio/e;->c:I

    .line 423
    :goto_0
    iget-object p1, p0, Landroidx/media2/exoplayer/external/audio/e$a;->a:Landroidx/media2/exoplayer/external/audio/e;

    .line 7046
    iget p1, p1, Landroidx/media2/exoplayer/external/audio/e;->c:I

    if-eq p1, v4, :cond_8

    if-eqz p1, :cond_9

    if-eq p1, v5, :cond_7

    if-eq p1, v3, :cond_6

    if-ne p1, v2, :cond_5

    goto :goto_1

    .line 441
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/e$a;->a:Landroidx/media2/exoplayer/external/audio/e;

    .line 12046
    iget v0, v0, Landroidx/media2/exoplayer/external/audio/e;->c:I

    .line 441
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unknown audio focus state: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 432
    :cond_6
    iget-object p1, p0, Landroidx/media2/exoplayer/external/audio/e$a;->a:Landroidx/media2/exoplayer/external/audio/e;

    .line 10046
    iget-object p1, p1, Landroidx/media2/exoplayer/external/audio/e;->a:Landroidx/media2/exoplayer/external/audio/e$b;

    const/4 v0, 0x0

    .line 432
    invoke-interface {p1, v0}, Landroidx/media2/exoplayer/external/audio/e$b;->c(I)V

    goto :goto_1

    .line 438
    :cond_7
    iget-object p1, p0, Landroidx/media2/exoplayer/external/audio/e$a;->a:Landroidx/media2/exoplayer/external/audio/e;

    .line 11046
    iget-object p1, p1, Landroidx/media2/exoplayer/external/audio/e;->a:Landroidx/media2/exoplayer/external/audio/e$b;

    .line 438
    invoke-interface {p1, v5}, Landroidx/media2/exoplayer/external/audio/e$b;->c(I)V

    goto :goto_1

    .line 428
    :cond_8
    iget-object p1, p0, Landroidx/media2/exoplayer/external/audio/e$a;->a:Landroidx/media2/exoplayer/external/audio/e;

    .line 8046
    iget-object p1, p1, Landroidx/media2/exoplayer/external/audio/e;->a:Landroidx/media2/exoplayer/external/audio/e$b;

    .line 428
    invoke-interface {p1, v4}, Landroidx/media2/exoplayer/external/audio/e$b;->c(I)V

    .line 429
    iget-object p1, p0, Landroidx/media2/exoplayer/external/audio/e$a;->a:Landroidx/media2/exoplayer/external/audio/e;

    .line 9046
    invoke-virtual {p1, v5}, Landroidx/media2/exoplayer/external/audio/e;->b(Z)V

    .line 445
    :cond_9
    :goto_1
    iget-object p1, p0, Landroidx/media2/exoplayer/external/audio/e$a;->a:Landroidx/media2/exoplayer/external/audio/e;

    .line 13046
    iget p1, p1, Landroidx/media2/exoplayer/external/audio/e;->c:I

    if-ne p1, v2, :cond_a

    const p1, 0x3e4ccccd    # 0.2f

    goto :goto_2

    :cond_a
    const/high16 p1, 0x3f800000    # 1.0f

    .line 448
    :goto_2
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/e$a;->a:Landroidx/media2/exoplayer/external/audio/e;

    .line 14046
    iget v0, v0, Landroidx/media2/exoplayer/external/audio/e;->e:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_b

    .line 449
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/e$a;->a:Landroidx/media2/exoplayer/external/audio/e;

    .line 15046
    iput p1, v0, Landroidx/media2/exoplayer/external/audio/e;->e:F

    .line 450
    iget-object p1, p0, Landroidx/media2/exoplayer/external/audio/e$a;->a:Landroidx/media2/exoplayer/external/audio/e;

    .line 16046
    iget-object p1, p1, Landroidx/media2/exoplayer/external/audio/e;->a:Landroidx/media2/exoplayer/external/audio/e$b;

    .line 450
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/audio/e$b;->c()V

    :cond_b
    return-void
.end method
