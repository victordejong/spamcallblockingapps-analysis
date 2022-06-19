.class public Ld2/e1;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# instance fields
.field public a:Landroid/media/AudioManager;

.field public b:Ld2/q;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Ld2/q;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 2
    sget-object p1, Ld2/t;->a:Landroid/content/Context;

    if-eqz p1, :cond_0

    const-string v0, "audio"

    .line 3
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Ld2/e1;->a:Landroid/media/AudioManager;

    .line 4
    iput-object p2, p0, Ld2/e1;->b:Ld2/q;

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object p2, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onChange(Z)V
    .locals 3

    .line 1
    iget-object p1, p0, Ld2/e1;->a:Landroid/media/AudioManager;

    if-eqz p1, :cond_1

    iget-object v0, p0, Ld2/e1;->b:Ld2/q;

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, v0, Ld2/q;->c:Ld2/j0;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    .line 3
    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result p1

    int-to-float p1, p1

    const/high16 v0, 0x41700000    # 15.0f

    div-float/2addr p1, v0

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float p1, p1, v0

    float-to-double v0, p1

    .line 4
    new-instance p1, Ld2/f4;

    invoke-direct {p1}, Ld2/f4;-><init>()V

    const-string v2, "audio_percentage"

    .line 5
    invoke-static {p1, v2, v0, v1}, Ld2/e4;->f(Ld2/f4;Ljava/lang/String;D)Z

    .line 6
    iget-object v0, p0, Ld2/e1;->b:Ld2/q;

    .line 7
    iget-object v0, v0, Ld2/q;->c:Ld2/j0;

    .line 8
    iget-object v0, v0, Ld2/j0;->l:Ljava/lang/String;

    const-string v1, "ad_session_id"

    .line 9
    invoke-static {p1, v1, v0}, Ld2/e4;->i(Ld2/f4;Ljava/lang/String;Ljava/lang/String;)Z

    .line 10
    iget-object v0, p0, Ld2/e1;->b:Ld2/q;

    .line 11
    iget-object v0, v0, Ld2/q;->c:Ld2/j0;

    .line 12
    iget v0, v0, Ld2/j0;->j:I

    const-string v1, "id"

    .line 13
    invoke-static {p1, v1, v0}, Ld2/e4;->m(Ld2/f4;Ljava/lang/String;I)Z

    .line 14
    new-instance v0, Ld2/t0;

    iget-object v1, p0, Ld2/e1;->b:Ld2/q;

    .line 15
    iget-object v1, v1, Ld2/q;->c:Ld2/j0;

    .line 16
    iget v1, v1, Ld2/j0;->k:I

    const-string v2, "AdContainer.on_audio_change"

    .line 17
    invoke-direct {v0, v2, v1, p1}, Ld2/t0;-><init>(Ljava/lang/String;ILd2/f4;)V

    .line 18
    invoke-virtual {v0}, Ld2/t0;->b()V

    :cond_1
    :goto_0
    return-void
.end method
