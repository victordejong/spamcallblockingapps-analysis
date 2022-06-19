.class public Landroidx/media2/widget/MediaControlView$g0;
.super Luw$b;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/widget/MediaControlView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "g0"
.end annotation


# instance fields
.field public final synthetic a:Landroidx/media2/widget/MediaControlView;


# direct methods
.method public constructor <init>(Landroidx/media2/widget/MediaControlView;)V
    .locals 0

    iput-object p1, p0, Landroidx/media2/widget/MediaControlView$g0;->a:Landroidx/media2/widget/MediaControlView;

    invoke-direct {p0}, Luw$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Luw;Landroidx/media2/session/SessionCommandGroup;)V
    .locals 1

    iget-object p2, p0, Landroidx/media2/widget/MediaControlView$g0;->a:Landroidx/media2/widget/MediaControlView;

    iget-object v0, p2, Landroidx/media2/widget/MediaControlView;->d:Luw;

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Landroidx/media2/widget/MediaControlView;->A()V

    return-void
.end method

.method public b(Luw;Landroidx/media2/common/MediaItem;)V
    .locals 2

    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$g0;->a:Landroidx/media2/widget/MediaControlView;

    iget-object v0, v0, Landroidx/media2/widget/MediaControlView;->d:Luw;

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Landroidx/media2/widget/MediaControlView;->W0:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCurrentMediaItemChanged(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaControlView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$g0;->a:Landroidx/media2/widget/MediaControlView;

    invoke-virtual {v0, p2}, Landroidx/media2/widget/MediaControlView;->G(Landroidx/media2/common/MediaItem;)V

    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$g0;->a:Landroidx/media2/widget/MediaControlView;

    invoke-virtual {v0, p2}, Landroidx/media2/widget/MediaControlView;->H(Landroidx/media2/common/MediaItem;)V

    iget-object p2, p0, Landroidx/media2/widget/MediaControlView$g0;->a:Landroidx/media2/widget/MediaControlView;

    invoke-virtual {p1}, Luw;->t()I

    move-result v0

    invoke-virtual {p1}, Luw;->q()I

    move-result p1

    invoke-virtual {p2, v0, p1}, Landroidx/media2/widget/MediaControlView;->D(II)V

    return-void
.end method

.method public c(Luw;)V
    .locals 3

    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$g0;->a:Landroidx/media2/widget/MediaControlView;

    iget-object v0, v0, Landroidx/media2/widget/MediaControlView;->d:Luw;

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    sget-boolean p1, Landroidx/media2/widget/MediaControlView;->W0:Z

    if-eqz p1, :cond_1

    const-string p1, "MediaControlView"

    const-string v0, "onPlaybackCompleted()"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$g0;->a:Landroidx/media2/widget/MediaControlView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/media2/widget/MediaControlView;->E(Z)V

    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$g0;->a:Landroidx/media2/widget/MediaControlView;

    iget-object p1, p1, Landroidx/media2/widget/MediaControlView;->Q:Landroid/widget/SeekBar;

    const/16 v0, 0x3e8

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$g0;->a:Landroidx/media2/widget/MediaControlView;

    iget-object v0, p1, Landroidx/media2/widget/MediaControlView;->W:Landroid/widget/TextView;

    iget-wide v1, p1, Landroidx/media2/widget/MediaControlView;->s:J

    invoke-virtual {p1, v1, v2}, Landroidx/media2/widget/MediaControlView;->y(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public d(Luw;F)V
    .locals 6

    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$g0;->a:Landroidx/media2/widget/MediaControlView;

    iget-object v0, v0, Landroidx/media2/widget/MediaControlView;->d:Luw;

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    const/high16 p1, 0x42c80000    # 100.0f

    mul-float p2, p2, p1

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$g0;->a:Landroidx/media2/widget/MediaControlView;

    iget v1, v0, Landroidx/media2/widget/MediaControlView;->w0:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    invoke-virtual {v0}, Landroidx/media2/widget/MediaControlView;->s()V

    :cond_1
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$g0;->a:Landroidx/media2/widget/MediaControlView;

    iget-object v0, v0, Landroidx/media2/widget/MediaControlView;->v0:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    :goto_0
    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$g0;->a:Landroidx/media2/widget/MediaControlView;

    iget-object p1, p1, Landroidx/media2/widget/MediaControlView;->v0:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v1, p1, :cond_7

    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$g0;->a:Landroidx/media2/widget/MediaControlView;

    iget-object p1, p1, Landroidx/media2/widget/MediaControlView;->v0:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p2, p1, :cond_2

    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$g0;->a:Landroidx/media2/widget/MediaControlView;

    iget-object p2, p1, Landroidx/media2/widget/MediaControlView;->u0:Ljava/util/List;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, v1, p2}, Landroidx/media2/widget/MediaControlView;->F(ILjava/lang/String;)V

    goto/16 :goto_3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$g0;->a:Landroidx/media2/widget/MediaControlView;

    iget-object v0, v0, Landroidx/media2/widget/MediaControlView;->c:Landroid/content/res/Resources;

    sget v2, Lbx;->MediaControlView_custom_playback_speed_text:I

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    int-to-float v5, p2

    div-float/2addr v5, p1

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v4, v1

    invoke-virtual {v0, v2, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_1
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$g0;->a:Landroidx/media2/widget/MediaControlView;

    iget-object v0, v0, Landroidx/media2/widget/MediaControlView;->v0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_6

    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$g0;->a:Landroidx/media2/widget/MediaControlView;

    iget-object v0, v0, Landroidx/media2/widget/MediaControlView;->v0:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge p2, v0, :cond_4

    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$g0;->a:Landroidx/media2/widget/MediaControlView;

    iget-object v0, v0, Landroidx/media2/widget/MediaControlView;->v0:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, v1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object p2, p0, Landroidx/media2/widget/MediaControlView$g0;->a:Landroidx/media2/widget/MediaControlView;

    iget-object p2, p2, Landroidx/media2/widget/MediaControlView;->u0:Ljava/util/List;

    invoke-interface {p2, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object p2, p0, Landroidx/media2/widget/MediaControlView$g0;->a:Landroidx/media2/widget/MediaControlView;

    invoke-virtual {p2, v1, p1}, Landroidx/media2/widget/MediaControlView;->F(ILjava/lang/String;)V

    goto :goto_2

    :cond_4
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$g0;->a:Landroidx/media2/widget/MediaControlView;

    iget-object v0, v0, Landroidx/media2/widget/MediaControlView;->v0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v3

    if-ne v1, v0, :cond_5

    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$g0;->a:Landroidx/media2/widget/MediaControlView;

    iget-object v0, v0, Landroidx/media2/widget/MediaControlView;->v0:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le p2, v0, :cond_5

    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$g0;->a:Landroidx/media2/widget/MediaControlView;

    iget-object v0, v0, Landroidx/media2/widget/MediaControlView;->v0:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$g0;->a:Landroidx/media2/widget/MediaControlView;

    iget-object v0, v0, Landroidx/media2/widget/MediaControlView;->u0:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$g0;->a:Landroidx/media2/widget/MediaControlView;

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2, p1}, Landroidx/media2/widget/MediaControlView;->F(ILjava/lang/String;)V

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    :goto_2
    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$g0;->a:Landroidx/media2/widget/MediaControlView;

    iget p2, p1, Landroidx/media2/widget/MediaControlView;->p:I

    iput p2, p1, Landroidx/media2/widget/MediaControlView;->w0:I

    :cond_7
    :goto_3
    return-void
.end method

.method public e(Luw;I)V
    .locals 2

    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$g0;->a:Landroidx/media2/widget/MediaControlView;

    iget-object v0, v0, Landroidx/media2/widget/MediaControlView;->d:Luw;

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Landroidx/media2/widget/MediaControlView;->W0:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPlayerStateChanged(state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaControlView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$g0;->a:Landroidx/media2/widget/MediaControlView;

    invoke-virtual {p1}, Luw;->n()Landroidx/media2/common/MediaItem;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/media2/widget/MediaControlView;->G(Landroidx/media2/common/MediaItem;)V

    const/4 p1, 0x1

    if-eq p2, p1, :cond_4

    const/4 v0, 0x2

    if-eq p2, v0, :cond_3

    const/4 v0, 0x3

    if-eq p2, v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object p2, p0, Landroidx/media2/widget/MediaControlView$g0;->a:Landroidx/media2/widget/MediaControlView;

    invoke-virtual {p2, p1}, Landroidx/media2/widget/MediaControlView;->C(I)V

    iget-object p2, p0, Landroidx/media2/widget/MediaControlView$g0;->a:Landroidx/media2/widget/MediaControlView;

    iget-object v0, p2, Landroidx/media2/widget/MediaControlView;->E0:Ljava/lang/Runnable;

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object p2, p0, Landroidx/media2/widget/MediaControlView$g0;->a:Landroidx/media2/widget/MediaControlView;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getWindowToken()Landroid/os/IBinder;

    move-result-object p2

    if-eqz p2, :cond_5

    new-instance p2, Lp$a;

    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$g0;->a:Landroidx/media2/widget/MediaControlView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Lp$a;-><init>(Landroid/content/Context;)V

    sget v0, Lbx;->mcv2_playback_error_text:I

    invoke-virtual {p2, v0}, Lp$a;->setMessage(I)Lp$a;

    move-result-object p2

    sget v0, Lbx;->mcv2_error_dialog_button:I

    new-instance v1, Landroidx/media2/widget/MediaControlView$g0$a;

    invoke-direct {v1, p0}, Landroidx/media2/widget/MediaControlView$g0$a;-><init>(Landroidx/media2/widget/MediaControlView$g0;)V

    invoke-virtual {p2, v0, v1}, Lp$a;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lp$a;

    move-result-object p2

    invoke-virtual {p2, p1}, Lp$a;->setCancelable(Z)Lp$a;

    move-result-object p1

    invoke-virtual {p1}, Lp$a;->show()Lp;

    goto :goto_0

    :cond_3
    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$g0;->a:Landroidx/media2/widget/MediaControlView;

    iget-object p2, p1, Landroidx/media2/widget/MediaControlView;->E0:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$g0;->a:Landroidx/media2/widget/MediaControlView;

    iget-object p2, p1, Landroidx/media2/widget/MediaControlView;->E0:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$g0;->a:Landroidx/media2/widget/MediaControlView;

    invoke-virtual {p1}, Landroidx/media2/widget/MediaControlView;->t()V

    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$g0;->a:Landroidx/media2/widget/MediaControlView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/media2/widget/MediaControlView;->E(Z)V

    goto :goto_0

    :cond_4
    iget-object p2, p0, Landroidx/media2/widget/MediaControlView$g0;->a:Landroidx/media2/widget/MediaControlView;

    invoke-virtual {p2, p1}, Landroidx/media2/widget/MediaControlView;->C(I)V

    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$g0;->a:Landroidx/media2/widget/MediaControlView;

    iget-object p2, p1, Landroidx/media2/widget/MediaControlView;->E0:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$g0;->a:Landroidx/media2/widget/MediaControlView;

    iget-object p2, p1, Landroidx/media2/widget/MediaControlView;->H0:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$g0;->a:Landroidx/media2/widget/MediaControlView;

    iget-object p2, p1, Landroidx/media2/widget/MediaControlView;->I0:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$g0;->a:Landroidx/media2/widget/MediaControlView;

    iget-object p2, p1, Landroidx/media2/widget/MediaControlView;->F0:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    :cond_5
    :goto_0
    return-void
.end method

.method public f(Luw;Ljava/util/List;Landroidx/media2/common/MediaMetadata;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Luw;",
            "Ljava/util/List<",
            "Landroidx/media2/common/MediaItem;",
            ">;",
            "Landroidx/media2/common/MediaMetadata;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$g0;->a:Landroidx/media2/widget/MediaControlView;

    iget-object v0, v0, Landroidx/media2/widget/MediaControlView;->d:Luw;

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Landroidx/media2/widget/MediaControlView;->W0:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPlaylistChanged(): list: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", metadata: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "MediaControlView"

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object p2, p0, Landroidx/media2/widget/MediaControlView$g0;->a:Landroidx/media2/widget/MediaControlView;

    invoke-virtual {p1}, Luw;->t()I

    move-result p3

    invoke-virtual {p1}, Luw;->q()I

    move-result p1

    invoke-virtual {p2, p3, p1}, Landroidx/media2/widget/MediaControlView;->D(II)V

    return-void
.end method

.method public g(Luw;J)V
    .locals 6

    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$g0;->a:Landroidx/media2/widget/MediaControlView;

    iget-object v0, v0, Landroidx/media2/widget/MediaControlView;->d:Luw;

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Landroidx/media2/widget/MediaControlView;->W0:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSeekCompleted(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaControlView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$g0;->a:Landroidx/media2/widget/MediaControlView;

    iget-wide v1, v0, Landroidx/media2/widget/MediaControlView;->s:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-gtz v5, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    const-wide/16 v3, 0x3e8

    mul-long v3, v3, p2

    div-long/2addr v3, v1

    long-to-int v1, v3

    :goto_0
    iget-object v0, v0, Landroidx/media2/widget/MediaControlView;->Q:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$g0;->a:Landroidx/media2/widget/MediaControlView;

    iget-object v1, v0, Landroidx/media2/widget/MediaControlView;->W:Landroid/widget/TextView;

    invoke-virtual {v0, p2, p3}, Landroidx/media2/widget/MediaControlView;->y(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Landroidx/media2/widget/MediaControlView$g0;->a:Landroidx/media2/widget/MediaControlView;

    iget-wide v0, p2, Landroidx/media2/widget/MediaControlView;->v:J

    const-wide/16 v2, -0x1

    cmp-long p3, v0, v2

    if-eqz p3, :cond_3

    iput-wide v0, p2, Landroidx/media2/widget/MediaControlView;->u:J

    invoke-virtual {p1, v0, v1}, Luw;->D(J)V

    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$g0;->a:Landroidx/media2/widget/MediaControlView;

    iput-wide v2, p1, Landroidx/media2/widget/MediaControlView;->v:J

    goto :goto_1

    :cond_3
    iput-wide v2, p2, Landroidx/media2/widget/MediaControlView;->u:J

    iget-boolean p1, p2, Landroidx/media2/widget/MediaControlView;->w:Z

    if-nez p1, :cond_4

    iget-object p1, p2, Landroidx/media2/widget/MediaControlView;->E0:Ljava/lang/Runnable;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$g0;->a:Landroidx/media2/widget/MediaControlView;

    iget-object p2, p1, Landroidx/media2/widget/MediaControlView;->H0:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$g0;->a:Landroidx/media2/widget/MediaControlView;

    iget-object p2, p1, Landroidx/media2/widget/MediaControlView;->E0:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$g0;->a:Landroidx/media2/widget/MediaControlView;

    iget-object p2, p1, Landroidx/media2/widget/MediaControlView;->H0:Ljava/lang/Runnable;

    iget-wide v0, p1, Landroidx/media2/widget/MediaControlView;->t:J

    invoke-virtual {p1, p2, v0, v1}, Landroidx/media2/widget/MediaControlView;->r(Ljava/lang/Runnable;J)V

    :cond_4
    :goto_1
    return-void
.end method

.method public i(Luw;Landroidx/media2/common/SessionPlayer$TrackInfo;)V
    .locals 2

    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$g0;->a:Landroidx/media2/widget/MediaControlView;

    iget-object v0, v0, Landroidx/media2/widget/MediaControlView;->d:Luw;

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    sget-boolean p1, Landroidx/media2/widget/MediaControlView;->W0:Z

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onTrackDeselected(): "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MediaControlView"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {p2}, Landroidx/media2/common/SessionPlayer$TrackInfo;->j()I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_4

    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$g0;->a:Landroidx/media2/widget/MediaControlView;

    iget-object v0, v0, Landroidx/media2/widget/MediaControlView;->s0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_4

    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$g0;->a:Landroidx/media2/widget/MediaControlView;

    iget-object v0, v0, Landroidx/media2/widget/MediaControlView;->s0:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/common/SessionPlayer$TrackInfo;

    invoke-virtual {v0, p2}, Landroidx/media2/common/SessionPlayer$TrackInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$g0;->a:Landroidx/media2/widget/MediaControlView;

    const/4 p2, -0x1

    iput p2, p1, Landroidx/media2/widget/MediaControlView;->n:I

    iget v0, p1, Landroidx/media2/widget/MediaControlView;->m:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget-object p1, p1, Landroidx/media2/widget/MediaControlView;->l0:Landroidx/media2/widget/MediaControlView$i0;

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Landroidx/media2/widget/MediaControlView$i0;->b(I)V

    :cond_2
    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$g0;->a:Landroidx/media2/widget/MediaControlView;

    iget-object p2, p1, Landroidx/media2/widget/MediaControlView;->f0:Landroid/widget/ImageButton;

    iget-object p1, p1, Landroidx/media2/widget/MediaControlView;->c:Landroid/content/res/Resources;

    sget v0, Lyw;->ic_subtitle_off:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$g0;->a:Landroidx/media2/widget/MediaControlView;

    iget-object p2, p1, Landroidx/media2/widget/MediaControlView;->f0:Landroid/widget/ImageButton;

    iget-object p1, p1, Landroidx/media2/widget/MediaControlView;->c:Landroid/content/res/Resources;

    sget v0, Lbx;->mcv2_cc_is_off:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method

.method public j(Luw;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Luw;",
            "Ljava/util/List<",
            "Landroidx/media2/common/SessionPlayer$TrackInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$g0;->a:Landroidx/media2/widget/MediaControlView;

    iget-object v0, v0, Landroidx/media2/widget/MediaControlView;->d:Luw;

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Landroidx/media2/widget/MediaControlView;->W0:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTrackInfoChanged(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaControlView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$g0;->a:Landroidx/media2/widget/MediaControlView;

    invoke-virtual {v0, p1, p2}, Landroidx/media2/widget/MediaControlView;->I(Luw;Ljava/util/List;)V

    iget-object p2, p0, Landroidx/media2/widget/MediaControlView$g0;->a:Landroidx/media2/widget/MediaControlView;

    invoke-virtual {p1}, Luw;->n()Landroidx/media2/common/MediaItem;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/media2/widget/MediaControlView;->G(Landroidx/media2/common/MediaItem;)V

    iget-object p2, p0, Landroidx/media2/widget/MediaControlView$g0;->a:Landroidx/media2/widget/MediaControlView;

    invoke-virtual {p1}, Luw;->n()Landroidx/media2/common/MediaItem;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/media2/widget/MediaControlView;->H(Landroidx/media2/common/MediaItem;)V

    return-void
.end method

.method public k(Luw;Landroidx/media2/common/SessionPlayer$TrackInfo;)V
    .locals 3

    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$g0;->a:Landroidx/media2/widget/MediaControlView;

    iget-object v0, v0, Landroidx/media2/widget/MediaControlView;->d:Luw;

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    sget-boolean p1, Landroidx/media2/widget/MediaControlView;->W0:Z

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onTrackSelected(): "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MediaControlView"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {p2}, Landroidx/media2/common/SessionPlayer$TrackInfo;->j()I

    move-result p1

    const/4 v0, 0x4

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne p1, v0, :cond_4

    :goto_0
    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$g0;->a:Landroidx/media2/widget/MediaControlView;

    iget-object p1, p1, Landroidx/media2/widget/MediaControlView;->s0:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v2, p1, :cond_6

    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$g0;->a:Landroidx/media2/widget/MediaControlView;

    iget-object p1, p1, Landroidx/media2/widget/MediaControlView;->s0:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media2/common/SessionPlayer$TrackInfo;

    invoke-virtual {p1, p2}, Landroidx/media2/common/SessionPlayer$TrackInfo;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$g0;->a:Landroidx/media2/widget/MediaControlView;

    iput v2, p1, Landroidx/media2/widget/MediaControlView;->n:I

    iget p2, p1, Landroidx/media2/widget/MediaControlView;->m:I

    if-ne p2, v1, :cond_2

    iget-object p1, p1, Landroidx/media2/widget/MediaControlView;->l0:Landroidx/media2/widget/MediaControlView$i0;

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1, v2}, Landroidx/media2/widget/MediaControlView$i0;->b(I)V

    :cond_2
    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$g0;->a:Landroidx/media2/widget/MediaControlView;

    iget-object p2, p1, Landroidx/media2/widget/MediaControlView;->f0:Landroid/widget/ImageButton;

    iget-object p1, p1, Landroidx/media2/widget/MediaControlView;->c:Landroid/content/res/Resources;

    sget v0, Lyw;->ic_subtitle_on:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$g0;->a:Landroidx/media2/widget/MediaControlView;

    iget-object p2, p1, Landroidx/media2/widget/MediaControlView;->f0:Landroid/widget/ImageButton;

    iget-object p1, p1, Landroidx/media2/widget/MediaControlView;->c:Landroid/content/res/Resources;

    sget v0, Lbx;->mcv2_cc_is_on:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {p2}, Landroidx/media2/common/SessionPlayer$TrackInfo;->j()I

    move-result p1

    if-ne p1, v1, :cond_6

    const/4 p1, 0x0

    :goto_1
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$g0;->a:Landroidx/media2/widget/MediaControlView;

    iget-object v0, v0, Landroidx/media2/widget/MediaControlView;->r0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_6

    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$g0;->a:Landroidx/media2/widget/MediaControlView;

    iget-object v0, v0, Landroidx/media2/widget/MediaControlView;->r0:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/common/SessionPlayer$TrackInfo;

    invoke-virtual {v0, p2}, Landroidx/media2/common/SessionPlayer$TrackInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object p2, p0, Landroidx/media2/widget/MediaControlView$g0;->a:Landroidx/media2/widget/MediaControlView;

    iput p1, p2, Landroidx/media2/widget/MediaControlView;->o:I

    iget-object v0, p2, Landroidx/media2/widget/MediaControlView;->n0:Ljava/util/List;

    iget-object p2, p2, Landroidx/media2/widget/MediaControlView;->l0:Landroidx/media2/widget/MediaControlView$i0;

    invoke-virtual {p2, p1}, Landroidx/media2/widget/MediaControlView$i0;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v2, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_5
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_6
    :goto_2
    return-void
.end method

.method public l(Luw;Landroidx/media2/common/MediaItem;Landroidx/media2/common/VideoSize;)V
    .locals 1

    iget-object p2, p0, Landroidx/media2/widget/MediaControlView$g0;->a:Landroidx/media2/widget/MediaControlView;

    iget-object p2, p2, Landroidx/media2/widget/MediaControlView;->d:Luw;

    if-eq p1, p2, :cond_0

    return-void

    :cond_0
    sget-boolean p2, Landroidx/media2/widget/MediaControlView;->W0:Z

    if-eqz p2, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onVideoSizeChanged(): "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "MediaControlView"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object p2, p0, Landroidx/media2/widget/MediaControlView$g0;->a:Landroidx/media2/widget/MediaControlView;

    iget p2, p2, Landroidx/media2/widget/MediaControlView;->q0:I

    if-nez p2, :cond_2

    invoke-virtual {p3}, Landroidx/media2/common/VideoSize;->c()I

    move-result p2

    if-lez p2, :cond_2

    invoke-virtual {p3}, Landroidx/media2/common/VideoSize;->d()I

    move-result p2

    if-lez p2, :cond_2

    invoke-virtual {p1}, Luw;->w()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_2

    iget-object p3, p0, Landroidx/media2/widget/MediaControlView$g0;->a:Landroidx/media2/widget/MediaControlView;

    invoke-virtual {p3, p1, p2}, Landroidx/media2/widget/MediaControlView;->I(Luw;Ljava/util/List;)V

    :cond_2
    return-void
.end method
