.class final Lcom/explorestack/iab/vast/activity/VastView$21;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/iab/vast/activity/VastView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/explorestack/iab/vast/activity/VastView;


# direct methods
.method constructor <init>(Lcom/explorestack/iab/vast/activity/VastView;)V
    .locals 0

    .line 1358
    iput-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView$21;->a:Lcom/explorestack/iab/vast/activity/VastView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1362
    :try_start_0
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView$21;->a:Lcom/explorestack/iab/vast/activity/VastView;

    invoke-virtual {v0}, Lcom/explorestack/iab/vast/activity/VastView;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView$21;->a:Lcom/explorestack/iab/vast/activity/VastView;

    iget-object v0, v0, Lcom/explorestack/iab/vast/activity/VastView;->l:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1363
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView$21;->a:Lcom/explorestack/iab/vast/activity/VastView;

    iget-object v0, v0, Lcom/explorestack/iab/vast/activity/VastView;->l:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    .line 1364
    iget-object v1, p0, Lcom/explorestack/iab/vast/activity/VastView$21;->a:Lcom/explorestack/iab/vast/activity/VastView;

    iget-object v1, v1, Lcom/explorestack/iab/vast/activity/VastView;->l:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v1

    if-lez v1, :cond_0

    const/high16 v2, 0x42c80000    # 100.0f

    int-to-float v3, v1

    mul-float v3, v3, v2

    int-to-float v2, v0

    div-float/2addr v3, v2

    .line 1367
    iget-object v2, p0, Lcom/explorestack/iab/vast/activity/VastView$21;->a:Lcom/explorestack/iab/vast/activity/VastView;

    invoke-static {v2}, Lcom/explorestack/iab/vast/activity/VastView;->h(Lcom/explorestack/iab/vast/activity/VastView;)Lcom/explorestack/iab/vast/activity/VastView$c;

    move-result-object v2

    invoke-interface {v2, v0, v1, v3}, Lcom/explorestack/iab/vast/activity/VastView$c;->a(IIF)V

    .line 1368
    iget-object v2, p0, Lcom/explorestack/iab/vast/activity/VastView$21;->a:Lcom/explorestack/iab/vast/activity/VastView;

    invoke-static {v2}, Lcom/explorestack/iab/vast/activity/VastView;->i(Lcom/explorestack/iab/vast/activity/VastView;)Lcom/explorestack/iab/vast/activity/VastView$c;

    move-result-object v2

    invoke-interface {v2, v0, v1, v3}, Lcom/explorestack/iab/vast/activity/VastView$c;->a(IIF)V

    .line 1369
    iget-object v2, p0, Lcom/explorestack/iab/vast/activity/VastView$21;->a:Lcom/explorestack/iab/vast/activity/VastView;

    invoke-static {v2}, Lcom/explorestack/iab/vast/activity/VastView;->j(Lcom/explorestack/iab/vast/activity/VastView;)Lcom/explorestack/iab/vast/activity/VastView$c;

    move-result-object v2

    invoke-interface {v2, v0, v1, v3}, Lcom/explorestack/iab/vast/activity/VastView$c;->a(IIF)V

    const/high16 v0, 0x42d20000    # 105.0f

    cmpl-float v0, v3, v0

    if-lez v0, :cond_0

    .line 1372
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView$21;->a:Lcom/explorestack/iab/vast/activity/VastView;

    invoke-static {v0}, Lcom/explorestack/iab/vast/activity/VastView;->k(Lcom/explorestack/iab/vast/activity/VastView;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Playback tracking: video hang detected"

    invoke-static {v0, v1}, Lcom/explorestack/iab/vast/VastLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1373
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView$21;->a:Lcom/explorestack/iab/vast/activity/VastView;

    invoke-static {v0}, Lcom/explorestack/iab/vast/activity/VastView;->l(Lcom/explorestack/iab/vast/activity/VastView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1378
    iget-object v1, p0, Lcom/explorestack/iab/vast/activity/VastView$21;->a:Lcom/explorestack/iab/vast/activity/VastView;

    invoke-static {v1}, Lcom/explorestack/iab/vast/activity/VastView;->k(Lcom/explorestack/iab/vast/activity/VastView;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Playback tracking exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/explorestack/iab/vast/VastLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1380
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView$21;->a:Lcom/explorestack/iab/vast/activity/VastView;

    const-wide/16 v1, 0x10

    invoke-virtual {v0, p0, v1, v2}, Lcom/explorestack/iab/vast/activity/VastView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
