.class public Ld2/w;
.super Landroid/app/Activity;
.source "SourceFile"


# instance fields
.field public a:Ld2/j0;

.field public b:I

.field public c:I

.field public d:Z

.field public e:Z

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Ld2/w;->b:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 7

    .line 1
    invoke-static {}, Ld2/t;->d()Ld2/f1;

    move-result-object v0

    .line 2
    iget-object v1, p0, Ld2/w;->a:Ld2/j0;

    if-nez v1, :cond_0

    .line 3
    iget-object v1, v0, Ld2/f1;->l:Ld2/j0;

    .line 4
    iput-object v1, p0, Ld2/w;->a:Ld2/j0;

    .line 5
    :cond_0
    iget-object v1, p0, Ld2/w;->a:Ld2/j0;

    if-nez v1, :cond_1

    return-void

    :cond_1
    const/4 v2, 0x0

    .line 6
    iput-boolean v2, v1, Ld2/j0;->w:Z

    .line 7
    invoke-static {}, Ld2/i3;->E()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 8
    iget-object v1, p0, Ld2/w;->a:Ld2/j0;

    const/4 v3, 0x1

    .line 9
    iput-boolean v3, v1, Ld2/j0;->w:Z

    .line 10
    :cond_2
    iget-boolean v1, p0, Ld2/w;->g:Z

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Ld2/f1;->m()Ld2/b2;

    move-result-object v1

    invoke-virtual {v1}, Ld2/b2;->h()Landroid/graphics/Rect;

    move-result-object v1

    goto :goto_0

    .line 11
    :cond_3
    invoke-virtual {v0}, Ld2/f1;->m()Ld2/b2;

    move-result-object v1

    invoke-virtual {v1}, Ld2/b2;->g()Landroid/graphics/Rect;

    move-result-object v1

    .line 12
    :goto_0
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-lez v3, :cond_4

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-lez v3, :cond_4

    .line 13
    new-instance v3, Ld2/f4;

    invoke-direct {v3}, Ld2/f4;-><init>()V

    .line 14
    new-instance v4, Ld2/f4;

    invoke-direct {v4}, Ld2/f4;-><init>()V

    .line 15
    invoke-virtual {v0}, Ld2/f1;->m()Ld2/b2;

    move-result-object v0

    invoke-virtual {v0}, Ld2/b2;->f()F

    move-result v0

    .line 16
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v0

    float-to-int v5, v5

    const-string v6, "width"

    invoke-static {v4, v6, v5}, Ld2/e4;->m(Ld2/f4;Ljava/lang/String;I)Z

    .line 17
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v0

    float-to-int v0, v5

    const-string v5, "height"

    invoke-static {v4, v5, v0}, Ld2/e4;->m(Ld2/f4;Ljava/lang/String;I)Z

    .line 18
    invoke-static {}, Ld2/i3;->C()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ld2/i3;->x(Ljava/lang/String;)I

    move-result v0

    const-string v5, "app_orientation"

    invoke-static {v4, v5, v0}, Ld2/e4;->m(Ld2/f4;Ljava/lang/String;I)Z

    const-string v0, "x"

    .line 19
    invoke-static {v4, v0, v2}, Ld2/e4;->m(Ld2/f4;Ljava/lang/String;I)Z

    const-string v0, "y"

    .line 20
    invoke-static {v4, v0, v2}, Ld2/e4;->m(Ld2/f4;Ljava/lang/String;I)Z

    .line 21
    iget-object v0, p0, Ld2/w;->a:Ld2/j0;

    .line 22
    iget-object v0, v0, Ld2/j0;->l:Ljava/lang/String;

    const-string v2, "ad_session_id"

    .line 23
    invoke-static {v4, v2, v0}, Ld2/e4;->i(Ld2/f4;Ljava/lang/String;Ljava/lang/String;)Z

    .line 24
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v0

    const-string v5, "screen_width"

    invoke-static {v3, v5, v0}, Ld2/e4;->m(Ld2/f4;Ljava/lang/String;I)Z

    .line 25
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v0

    const-string v5, "screen_height"

    invoke-static {v3, v5, v0}, Ld2/e4;->m(Ld2/f4;Ljava/lang/String;I)Z

    .line 26
    iget-object v0, p0, Ld2/w;->a:Ld2/j0;

    .line 27
    iget-object v0, v0, Ld2/j0;->l:Ljava/lang/String;

    .line 28
    invoke-static {v3, v2, v0}, Ld2/e4;->i(Ld2/f4;Ljava/lang/String;Ljava/lang/String;)Z

    .line 29
    iget-object v0, p0, Ld2/w;->a:Ld2/j0;

    .line 30
    iget v0, v0, Ld2/j0;->j:I

    const-string v2, "id"

    .line 31
    invoke-static {v3, v2, v0}, Ld2/e4;->m(Ld2/f4;Ljava/lang/String;I)Z

    .line 32
    iget-object v0, p0, Ld2/w;->a:Ld2/j0;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-direct {v2, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 33
    iget-object v0, p0, Ld2/w;->a:Ld2/j0;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 34
    iput v2, v0, Ld2/j0;->h:I

    .line 35
    iget-object v0, p0, Ld2/w;->a:Ld2/j0;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 36
    iput v1, v0, Ld2/j0;->i:I

    .line 37
    new-instance v0, Ld2/t0;

    iget-object v1, p0, Ld2/w;->a:Ld2/j0;

    .line 38
    iget v1, v1, Ld2/j0;->k:I

    const-string v2, "MRAID.on_size_change"

    .line 39
    invoke-direct {v0, v2, v1, v4}, Ld2/t0;-><init>(Ljava/lang/String;ILd2/f4;)V

    invoke-virtual {v0}, Ld2/t0;->b()V

    .line 40
    new-instance v0, Ld2/t0;

    iget-object v1, p0, Ld2/w;->a:Ld2/j0;

    .line 41
    iget v1, v1, Ld2/j0;->k:I

    const-string v2, "AdContainer.on_orientation_change"

    .line 42
    invoke-direct {v0, v2, v1, v3}, Ld2/t0;-><init>(Ljava/lang/String;ILd2/f4;)V

    invoke-virtual {v0}, Ld2/t0;->b()V

    :cond_4
    return-void
.end method

.method public b(I)V
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x6

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x7

    .line 3
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 4
    :goto_0
    iput p1, p0, Ld2/w;->b:I

    return-void
.end method

.method public c(Ld2/t0;)V
    .locals 5

    .line 1
    iget-object v0, p1, Ld2/t0;->b:Ld2/f4;

    const-string v1, "status"

    .line 2
    invoke-static {v0, v1}, Ld2/e4;->r(Ld2/f4;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    if-eqz v0, :cond_0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    if-ne v0, v2, :cond_1

    .line 3
    :cond_0
    iget-boolean v0, p0, Ld2/w;->d:Z

    if-eqz v0, :cond_2

    :cond_1
    return-void

    .line 4
    :cond_2
    invoke-static {}, Ld2/t;->d()Ld2/f1;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ld2/f1;->n()Ld2/e2;

    move-result-object v1

    .line 6
    iput-object p1, v0, Ld2/f1;->s:Ld2/t0;

    .line 7
    iget-object p1, v1, Ld2/e2;->b:Landroid/app/AlertDialog;

    const/4 v3, 0x0

    if-eqz p1, :cond_3

    .line 8
    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    .line 9
    iput-object v3, v1, Ld2/e2;->b:Landroid/app/AlertDialog;

    .line 10
    :cond_3
    iget-boolean p1, p0, Ld2/w;->f:Z

    if-nez p1, :cond_4

    .line 11
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 12
    :cond_4
    iput-boolean v2, p0, Ld2/w;->d:Z

    .line 13
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 14
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    const/4 p1, 0x0

    .line 15
    iput-boolean p1, v0, Ld2/f1;->A:Z

    .line 16
    new-instance p1, Ld2/f4;

    invoke-direct {p1}, Ld2/f4;-><init>()V

    .line 17
    iget-object v1, p0, Ld2/w;->a:Ld2/j0;

    .line 18
    iget-object v1, v1, Ld2/j0;->l:Ljava/lang/String;

    const-string v2, "id"

    .line 19
    invoke-static {p1, v2, v1}, Ld2/e4;->i(Ld2/f4;Ljava/lang/String;Ljava/lang/String;)Z

    .line 20
    new-instance v1, Ld2/t0;

    iget-object v2, p0, Ld2/w;->a:Ld2/j0;

    .line 21
    iget v2, v2, Ld2/j0;->k:I

    const-string v4, "AdSession.on_close"

    .line 22
    invoke-direct {v1, v4, v2, p1}, Ld2/t0;-><init>(Ljava/lang/String;ILd2/f4;)V

    invoke-virtual {v1}, Ld2/t0;->b()V

    .line 23
    iput-object v3, v0, Ld2/f1;->l:Ld2/j0;

    .line 24
    iput-object v3, v0, Ld2/f1;->o:Ld2/q;

    .line 25
    iput-object v3, v0, Ld2/f1;->n:Ld2/j;

    .line 26
    invoke-static {}, Ld2/t;->d()Ld2/f1;

    move-result-object p1

    invoke-virtual {p1}, Ld2/f1;->l()Ld2/k0;

    move-result-object p1

    .line 27
    iget-object p1, p1, Ld2/k0;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 28
    iget-object v0, p0, Ld2/w;->a:Ld2/j0;

    .line 29
    iget-object v0, v0, Ld2/j0;->l:Ljava/lang/String;

    .line 30
    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public d(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Ld2/w;->a:Ld2/j0;

    .line 2
    iget-object v0, v0, Ld2/j0;->a:Ljava/util/HashMap;

    .line 3
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 4
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 5
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 6
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld2/r3;

    .line 7
    iget-boolean v2, v1, Ld2/r3;->s:Z

    if-nez v2, :cond_0

    .line 8
    iget-object v2, v1, Ld2/r3;->K:Landroid/media/MediaPlayer;

    .line 9
    invoke-virtual {v2}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 10
    invoke-virtual {v1}, Ld2/r3;->c()Z

    goto :goto_0

    .line 11
    :cond_1
    invoke-static {}, Ld2/t;->d()Ld2/f1;

    move-result-object v0

    .line 12
    iget-object v0, v0, Ld2/f1;->o:Ld2/q;

    if-eqz v0, :cond_2

    .line 13
    invoke-virtual {v0}, Ld2/q;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 14
    iget-object v0, v0, Ld2/q;->e:Ld2/t1;

    .line 15
    iget-object v1, v0, Ld2/t1;->a:Landroid/support/v4/media/a;

    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    .line 16
    iget-boolean p1, p0, Ld2/w;->h:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    const-string v1, "pause"

    .line 17
    invoke-virtual {v0, v1, p1}, Ld2/t1;->c(Ljava/lang/String;F)V

    :cond_2
    return-void
.end method

.method public e(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Ld2/w;->a:Ld2/j0;

    .line 2
    iget-object v0, v0, Ld2/j0;->a:Ljava/util/HashMap;

    .line 3
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld2/r3;

    .line 5
    iget-boolean v2, v1, Ld2/r3;->s:Z

    if-nez v2, :cond_0

    .line 6
    iget-object v2, v1, Ld2/r3;->K:Landroid/media/MediaPlayer;

    .line 7
    invoke-virtual {v2}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v2

    if-nez v2, :cond_0

    .line 8
    invoke-static {}, Ld2/t;->d()Ld2/f1;

    move-result-object v2

    invoke-virtual {v2}, Ld2/f1;->n()Ld2/e2;

    move-result-object v2

    .line 9
    iget-boolean v2, v2, Ld2/e2;->c:Z

    if-nez v2, :cond_0

    .line 10
    invoke-virtual {v1}, Ld2/r3;->d()Z

    goto :goto_0

    .line 11
    :cond_1
    invoke-static {}, Ld2/t;->d()Ld2/f1;

    move-result-object v0

    .line 12
    iget-object v0, v0, Ld2/f1;->o:Ld2/q;

    if-eqz v0, :cond_3

    .line 13
    invoke-virtual {v0}, Ld2/q;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 14
    iget-object v0, v0, Ld2/q;->e:Ld2/t1;

    .line 15
    iget-object v1, v0, Ld2/t1;->a:Landroid/support/v4/media/a;

    if-eqz v1, :cond_3

    if-eqz p1, :cond_2

    .line 16
    iget-boolean p1, p0, Ld2/w;->h:Z

    if-nez p1, :cond_3

    :cond_2
    iget-boolean p1, p0, Ld2/w;->i:Z

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    const-string v1, "resume"

    .line 17
    invoke-virtual {v0, v1, p1}, Ld2/t1;->c(Ljava/lang/String;F)V

    :cond_3
    return-void
.end method

.method public onBackPressed()V
    .locals 4

    .line 1
    new-instance v0, Ld2/f4;

    invoke-direct {v0}, Ld2/f4;-><init>()V

    .line 2
    iget-object v1, p0, Ld2/w;->a:Ld2/j0;

    .line 3
    iget-object v1, v1, Ld2/j0;->l:Ljava/lang/String;

    const-string v2, "id"

    .line 4
    invoke-static {v0, v2, v1}, Ld2/e4;->i(Ld2/f4;Ljava/lang/String;Ljava/lang/String;)Z

    .line 5
    new-instance v1, Ld2/t0;

    iget-object v2, p0, Ld2/w;->a:Ld2/j0;

    .line 6
    iget v2, v2, Ld2/j0;->k:I

    const-string v3, "AdSession.on_back_button"

    .line 7
    invoke-direct {v1, v3, v2, v0}, Ld2/t0;-><init>(Ljava/lang/String;ILd2/f4;)V

    invoke-virtual {v1}, Ld2/t0;->b()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    instance-of p1, p0, Lcom/adcolony/sdk/AdColonyInterstitialActivity;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Ld2/w;->a()V

    goto :goto_0

    .line 4
    :cond_0
    move-object p1, p0

    check-cast p1, Lcom/adcolony/sdk/AdColonyAdViewActivity;

    .line 5
    iget-object p1, p1, Lcom/adcolony/sdk/AdColonyAdViewActivity;->j:Ld2/j;

    invoke-virtual {p1}, Ld2/j;->a()Z

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-static {}, Ld2/t;->f()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-static {}, Ld2/t;->d()Ld2/f1;

    move-result-object p1

    .line 3
    iget-object p1, p1, Ld2/f1;->l:Ld2/j0;

    if-nez p1, :cond_0

    goto/16 :goto_2

    .line 4
    :cond_0
    invoke-static {}, Ld2/t;->d()Ld2/f1;

    move-result-object p1

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Ld2/w;->f:Z

    .line 6
    iget-object v1, p1, Ld2/f1;->l:Ld2/j0;

    .line 7
    iput-object v1, p0, Ld2/w;->a:Ld2/j0;

    .line 8
    iput-boolean v0, v1, Ld2/j0;->w:Z

    .line 9
    invoke-static {}, Ld2/i3;->E()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 10
    iget-object v0, p0, Ld2/w;->a:Ld2/j0;

    .line 11
    iput-boolean v1, v0, Ld2/j0;->w:Z

    .line 12
    :cond_1
    iget-object v0, p0, Ld2/w;->a:Ld2/j0;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-object v0, p0, Ld2/w;->a:Ld2/j0;

    .line 14
    iget v0, v0, Ld2/j0;->k:I

    .line 15
    iput v0, p0, Ld2/w;->c:I

    .line 16
    invoke-virtual {p1}, Ld2/f1;->s()Ld2/l;

    move-result-object v0

    .line 17
    iget-object v0, v0, Ld2/l;->d:Ld2/f4;

    const-string v2, "multi_window_enabled"

    invoke-static {v0, v2}, Ld2/e4;->l(Ld2/f4;Ljava/lang/String;)Z

    move-result v0

    .line 18
    iput-boolean v0, p0, Ld2/w;->g:Z

    const/16 v2, 0x800

    const/16 v3, 0x400

    if-eqz v0, :cond_2

    .line 19
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    .line 20
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0

    .line 21
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/Window;->addFlags(I)V

    .line 22
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 23
    :goto_0
    invoke-virtual {p0, v1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 24
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/high16 v2, -0x1000000

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 25
    invoke-virtual {p1}, Ld2/f1;->s()Ld2/l;

    move-result-object p1

    .line 26
    iget-object p1, p1, Ld2/l;->d:Ld2/f4;

    const-string v0, "keep_screen_on"

    invoke-static {p1, v0}, Ld2/e4;->l(Ld2/f4;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 27
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x80

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 28
    :cond_3
    iget-object p1, p0, Ld2/w;->a:Ld2/j0;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 29
    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Ld2/w;->a:Ld2/j0;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 30
    :cond_4
    iget-object p1, p0, Ld2/w;->a:Ld2/j0;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 31
    iget-object p1, p0, Ld2/w;->a:Ld2/j0;

    .line 32
    iget-object p1, p1, Ld2/j0;->s:Ljava/util/ArrayList;

    .line 33
    new-instance v0, Ld2/w$a;

    invoke-direct {v0, p0}, Ld2/w$a;-><init>(Ld2/w;)V

    const-string v2, "AdSession.finish_fullscreen_ad"

    invoke-static {v2, v0}, Ld2/t;->a(Ljava/lang/String;Ld2/y0;)Ld2/y0;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    iget-object p1, p0, Ld2/w;->a:Ld2/j0;

    .line 35
    iget-object p1, p1, Ld2/j0;->t:Ljava/util/ArrayList;

    .line 36
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    iget p1, p0, Ld2/w;->b:I

    invoke-virtual {p0, p1}, Ld2/w;->b(I)V

    .line 38
    iget-object p1, p0, Ld2/w;->a:Ld2/j0;

    .line 39
    iget-boolean p1, p1, Ld2/j0;->v:Z

    if-nez p1, :cond_5

    .line 40
    new-instance p1, Ld2/f4;

    invoke-direct {p1}, Ld2/f4;-><init>()V

    .line 41
    iget-object v0, p0, Ld2/w;->a:Ld2/j0;

    .line 42
    iget-object v0, v0, Ld2/j0;->l:Ljava/lang/String;

    const-string v2, "id"

    .line 43
    invoke-static {p1, v2, v0}, Ld2/e4;->i(Ld2/f4;Ljava/lang/String;Ljava/lang/String;)Z

    .line 44
    iget-object v0, p0, Ld2/w;->a:Ld2/j0;

    .line 45
    iget v0, v0, Ld2/j0;->h:I

    const-string v2, "screen_width"

    .line 46
    invoke-static {p1, v2, v0}, Ld2/e4;->m(Ld2/f4;Ljava/lang/String;I)Z

    .line 47
    iget-object v0, p0, Ld2/w;->a:Ld2/j0;

    .line 48
    iget v0, v0, Ld2/j0;->i:I

    const-string v2, "screen_height"

    .line 49
    invoke-static {p1, v2, v0}, Ld2/e4;->m(Ld2/f4;Ljava/lang/String;I)Z

    .line 50
    new-instance v0, Ld2/t0;

    iget-object v2, p0, Ld2/w;->a:Ld2/j0;

    .line 51
    iget v2, v2, Ld2/j0;->k:I

    const-string v3, "AdSession.on_fullscreen_ad_started"

    .line 52
    invoke-direct {v0, v3, v2, p1}, Ld2/t0;-><init>(Ljava/lang/String;ILd2/f4;)V

    invoke-virtual {v0}, Ld2/t0;->b()V

    .line 53
    iget-object p1, p0, Ld2/w;->a:Ld2/j0;

    .line 54
    iput-boolean v1, p1, Ld2/j0;->v:Z

    goto :goto_1

    .line 55
    :cond_5
    invoke-virtual {p0}, Ld2/w;->a()V

    :goto_1
    return-void

    .line 56
    :cond_6
    :goto_2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onDestroy()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 2
    invoke-static {}, Ld2/t;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Ld2/w;->a:Ld2/j0;

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-boolean v0, p0, Ld2/w;->d:Z

    if-nez v0, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_1

    .line 4
    invoke-static {}, Ld2/i3;->E()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Ld2/w;->a:Ld2/j0;

    .line 5
    iget-boolean v0, v0, Ld2/j0;->w:Z

    if-nez v0, :cond_2

    .line 6
    new-instance v0, Ld2/f4;

    invoke-direct {v0}, Ld2/f4;-><init>()V

    .line 7
    iget-object v1, p0, Ld2/w;->a:Ld2/j0;

    .line 8
    iget-object v1, v1, Ld2/j0;->l:Ljava/lang/String;

    const-string v2, "id"

    .line 9
    invoke-static {v0, v2, v1}, Ld2/e4;->i(Ld2/f4;Ljava/lang/String;Ljava/lang/String;)Z

    .line 10
    new-instance v1, Ld2/t0;

    iget-object v2, p0, Ld2/w;->a:Ld2/j0;

    .line 11
    iget v2, v2, Ld2/j0;->k:I

    const-string v3, "AdSession.on_error"

    .line 12
    invoke-direct {v1, v3, v2, v0}, Ld2/t0;-><init>(Ljava/lang/String;ILd2/f4;)V

    invoke-virtual {v1}, Ld2/t0;->b()V

    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Ld2/w;->f:Z

    :cond_2
    :goto_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 2
    iget-boolean v0, p0, Ld2/w;->e:Z

    invoke-virtual {p0, v0}, Ld2/w;->d(Z)V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Ld2/w;->e:Z

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 2
    invoke-virtual {p0}, Ld2/w;->a()V

    .line 3
    iget-boolean v0, p0, Ld2/w;->e:Z

    invoke-virtual {p0, v0}, Ld2/w;->e(Z)V

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Ld2/w;->e:Z

    .line 5
    iput-boolean v0, p0, Ld2/w;->i:Z

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 1
    iget-boolean v1, p0, Ld2/w;->e:Z

    if-eqz v1, :cond_0

    .line 2
    invoke-static {}, Ld2/t;->d()Ld2/f1;

    move-result-object p1

    invoke-virtual {p1}, Ld2/f1;->a()Ld2/g2;

    move-result-object p1

    invoke-virtual {p1, v0}, Ld2/g2;->b(Z)V

    .line 3
    iget-boolean p1, p0, Ld2/w;->e:Z

    invoke-virtual {p0, p1}, Ld2/w;->e(Z)V

    .line 4
    iput-boolean v0, p0, Ld2/w;->h:Z

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 5
    iget-boolean p1, p0, Ld2/w;->e:Z

    if-eqz p1, :cond_1

    .line 6
    invoke-static {}, Ld2/t;->d()Ld2/f1;

    move-result-object p1

    invoke-virtual {p1}, Ld2/f1;->a()Ld2/g2;

    move-result-object p1

    invoke-virtual {p1, v0}, Ld2/g2;->a(Z)V

    .line 7
    iget-boolean p1, p0, Ld2/w;->e:Z

    invoke-virtual {p0, p1}, Ld2/w;->d(Z)V

    const/4 p1, 0x0

    .line 8
    iput-boolean p1, p0, Ld2/w;->h:Z

    :cond_1
    :goto_0
    return-void
.end method
