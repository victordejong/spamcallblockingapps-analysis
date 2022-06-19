.class public final Lwh;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwh$b;,
        Lwh$c;
    }
.end annotation


# instance fields
.field public final a:Landroid/media/AudioManager;

.field public final b:Lwh$b;

.field public final c:Lwh$c;

.field public d:Luh;

.field public e:I

.field public f:I

.field public g:F

.field public h:Landroid/media/AudioFocusRequest;

.field public i:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lwh$c;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lwh;->g:F

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lwh;->a:Landroid/media/AudioManager;

    iput-object p2, p0, Lwh;->c:Lwh$c;

    new-instance p1, Lwh$b;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lwh$b;-><init>(Lwh;Lwh$a;)V

    iput-object p1, p0, Lwh;->b:Lwh$b;

    const/4 p1, 0x0

    iput p1, p0, Lwh;->e:I

    return-void
.end method

.method public static synthetic e(Lwh;)I
    .locals 0

    iget p0, p0, Lwh;->e:I

    return p0
.end method

.method public static synthetic f(Lwh;I)I
    .locals 0

    iput p1, p0, Lwh;->e:I

    return p1
.end method

.method public static synthetic g(Lwh;)Z
    .locals 0

    invoke-virtual {p0}, Lwh;->v()Z

    move-result p0

    return p0
.end method

.method public static synthetic h(Lwh;)Lwh$c;
    .locals 0

    iget-object p0, p0, Lwh;->c:Lwh$c;

    return-object p0
.end method

.method public static synthetic i(Lwh;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lwh;->b(Z)V

    return-void
.end method

.method public static synthetic j(Lwh;)F
    .locals 0

    iget p0, p0, Lwh;->g:F

    return p0
.end method

.method public static synthetic k(Lwh;F)F
    .locals 0

    iput p1, p0, Lwh;->g:F

    return p1
.end method

.method public static l(Luh;)I
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    iget v1, p0, Luh;->c:I

    const/4 v2, 0x3

    const-string v3, "AudioFocusManager"

    const/4 v4, 0x2

    const/4 v5, 0x1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    const/16 p0, 0x25

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p0, "Unidentified audio usage: "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lst;->f(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :pswitch_1
    sget p0, Lnu;->a:I

    const/16 v0, 0x13

    if-lt p0, v0, :cond_1

    const/4 p0, 0x4

    return p0

    :cond_1
    return v4

    :pswitch_2
    iget p0, p0, Luh;->a:I

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

    invoke-static {v3, p0}, Lst;->f(Ljava/lang/String;Ljava/lang/String;)V

    return v5

    nop

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


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lwh;->b(Z)V

    return-void
.end method

.method public final b(Z)V
    .locals 2

    iget v0, p0, Lwh;->f:I

    if-nez v0, :cond_0

    iget v1, p0, Lwh;->e:I

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lwh;->e:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-eqz p1, :cond_3

    :cond_1
    sget p1, Lnu;->a:I

    const/16 v0, 0x1a

    if-lt p1, v0, :cond_2

    invoke-virtual {p0}, Lwh;->d()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lwh;->c()V

    :goto_0
    const/4 p1, 0x0

    iput p1, p0, Lwh;->e:I

    :cond_3
    return-void
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lwh;->a:Landroid/media/AudioManager;

    iget-object v1, p0, Lwh;->b:Lwh$b;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    return-void
.end method

.method public final d()V
    .locals 2

    iget-object v0, p0, Lwh;->h:Landroid/media/AudioFocusRequest;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lwh;->a:Landroid/media/AudioManager;

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->abandonAudioFocusRequest(Landroid/media/AudioFocusRequest;)I

    :cond_0
    return-void
.end method

.method public m()F
    .locals 1

    iget v0, p0, Lwh;->g:F

    return v0
.end method

.method public final n(Z)I
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public o(Z)I
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lwh;->r()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public p(ZI)I
    .locals 1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lwh;->a()V

    const/4 p1, -0x1

    return p1

    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    invoke-virtual {p0, p1}, Lwh;->n(Z)I

    move-result p1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lwh;->r()I

    move-result p1

    :goto_0
    return p1
.end method

.method public q()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lwh;->b(Z)V

    return-void
.end method

.method public final r()I
    .locals 4

    iget v0, p0, Lwh;->f:I

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget v0, p0, Lwh;->e:I

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lwh;->b(Z)V

    :cond_0
    return v1

    :cond_1
    iget v0, p0, Lwh;->e:I

    const/4 v2, 0x0

    if-nez v0, :cond_4

    sget v0, Lnu;->a:I

    const/16 v3, 0x1a

    if-lt v0, v3, :cond_2

    invoke-virtual {p0}, Lwh;->t()I

    move-result v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lwh;->s()I

    move-result v0

    :goto_0
    if-ne v0, v1, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    iput v0, p0, Lwh;->e:I

    :cond_4
    iget v0, p0, Lwh;->e:I

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

.method public final s()I
    .locals 4

    iget-object v0, p0, Lwh;->a:Landroid/media/AudioManager;

    iget-object v1, p0, Lwh;->b:Lwh$b;

    iget-object v2, p0, Lwh;->d:Luh;

    invoke-static {v2}, Lit;->e(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v2, Luh;

    iget v2, v2, Luh;->c:I

    invoke-static {v2}, Lnu;->J(I)I

    move-result v2

    iget v3, p0, Lwh;->f:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    return v0
.end method

.method public final t()I
    .locals 3

    iget-object v0, p0, Lwh;->h:Landroid/media/AudioFocusRequest;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lwh;->i:Z

    if-eqz v1, :cond_2

    :cond_0
    if-nez v0, :cond_1

    new-instance v0, Landroid/media/AudioFocusRequest$Builder;

    iget v1, p0, Lwh;->f:I

    invoke-direct {v0, v1}, Landroid/media/AudioFocusRequest$Builder;-><init>(I)V

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/media/AudioFocusRequest$Builder;

    iget-object v1, p0, Lwh;->h:Landroid/media/AudioFocusRequest;

    invoke-direct {v0, v1}, Landroid/media/AudioFocusRequest$Builder;-><init>(Landroid/media/AudioFocusRequest;)V

    :goto_0
    invoke-virtual {p0}, Lwh;->v()Z

    move-result v1

    iget-object v2, p0, Lwh;->d:Luh;

    invoke-static {v2}, Lit;->e(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v2, Luh;

    invoke-virtual {v2}, Luh;->a()Landroid/media/AudioAttributes;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/media/AudioFocusRequest$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/media/AudioFocusRequest$Builder;->setWillPauseWhenDucked(Z)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lwh;->b:Lwh$b;

    invoke-virtual {v0, v1}, Landroid/media/AudioFocusRequest$Builder;->setOnAudioFocusChangeListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioFocusRequest$Builder;->build()Landroid/media/AudioFocusRequest;

    move-result-object v0

    iput-object v0, p0, Lwh;->h:Landroid/media/AudioFocusRequest;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lwh;->i:Z

    :cond_2
    iget-object v0, p0, Lwh;->a:Landroid/media/AudioManager;

    iget-object v1, p0, Lwh;->h:Landroid/media/AudioFocusRequest;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioFocusRequest;)I

    move-result v0

    return v0
.end method

.method public u(Luh;ZI)I
    .locals 2

    iget-object v0, p0, Lwh;->d:Luh;

    invoke-static {v0, p1}, Lnu;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_3

    iput-object p1, p0, Lwh;->d:Luh;

    invoke-static {p1}, Lwh;->l(Luh;)I

    move-result p1

    iput p1, p0, Lwh;->f:I

    if-eq p1, v1, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    const-string v0, "Automatic handling of audio focus is only available for USAGE_MEDIA and USAGE_GAME."

    invoke-static {p1, v0}, Lit;->b(ZLjava/lang/Object;)V

    if-eqz p2, :cond_3

    const/4 p1, 0x2

    if-eq p3, p1, :cond_2

    const/4 p1, 0x3

    if-ne p3, p1, :cond_3

    :cond_2
    invoke-virtual {p0}, Lwh;->r()I

    move-result p1

    return p1

    :cond_3
    if-ne p3, v1, :cond_4

    invoke-virtual {p0, p2}, Lwh;->n(Z)I

    move-result p1

    goto :goto_2

    :cond_4
    invoke-virtual {p0, p2}, Lwh;->o(Z)I

    move-result p1

    :goto_2
    return p1
.end method

.method public final v()Z
    .locals 2

    iget-object v0, p0, Lwh;->d:Luh;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v0, v0, Luh;->a:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
