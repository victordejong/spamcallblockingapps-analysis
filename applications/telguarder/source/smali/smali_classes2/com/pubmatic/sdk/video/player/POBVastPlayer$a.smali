.class Lcom/pubmatic/sdk/video/player/POBVastPlayer$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pubmatic/sdk/video/player/POBVastPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pubmatic/sdk/video/player/POBVastPlayer;


# direct methods
.method constructor <init>(Lcom/pubmatic/sdk/video/player/POBVastPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer$a;->a:Lcom/pubmatic/sdk/video/player/POBVastPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/pubmatic/sdk/video/R$id;->learn_more_btn:I

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer$a;->a:Lcom/pubmatic/sdk/video/player/POBVastPlayer;

    invoke-static {p1}, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->a(Lcom/pubmatic/sdk/video/player/POBVastPlayer;)Lcom/pubmatic/sdk/video/vastmodels/POBVastAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pubmatic/sdk/video/vastmodels/POBVastAd;->getCreative()Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative;->getClickThroughURL()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->a(Lcom/pubmatic/sdk/video/player/POBVastPlayer;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer$a;->a:Lcom/pubmatic/sdk/video/player/POBVastPlayer;

    invoke-static {p1}, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->h(Lcom/pubmatic/sdk/video/player/POBVastPlayer;)V

    goto :goto_1

    :cond_0
    sget v0, Lcom/pubmatic/sdk/video/R$id;->close_btn:I

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer$a;->a:Lcom/pubmatic/sdk/video/player/POBVastPlayer;

    invoke-static {p1}, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->i(Lcom/pubmatic/sdk/video/player/POBVastPlayer;)Lcom/pubmatic/sdk/video/player/POBVastPlayerListener;

    move-result-object p1

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    iget-object v0, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer$a;->a:Lcom/pubmatic/sdk/video/player/POBVastPlayer;

    invoke-static {v0}, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->j(Lcom/pubmatic/sdk/video/player/POBVastPlayer;)Lcom/pubmatic/sdk/video/player/POBVideoPlayer;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer$a;->a:Lcom/pubmatic/sdk/video/player/POBVastPlayer;

    invoke-static {v0}, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->j(Lcom/pubmatic/sdk/video/player/POBVastPlayer;)Lcom/pubmatic/sdk/video/player/POBVideoPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/pubmatic/sdk/video/player/POBVideoPlayer;->getPlayerState()Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$f;

    move-result-object v0

    sget-object v1, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$f;->f:Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$f;

    if-ne v0, v1, :cond_1

    sget-object p1, Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;->COMPLETE:Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$f;->g:Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$f;

    if-eq v0, v1, :cond_2

    sget-object p1, Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;->SKIP:Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer$a;->a:Lcom/pubmatic/sdk/video/player/POBVastPlayer;

    invoke-static {v0}, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->i(Lcom/pubmatic/sdk/video/player/POBVastPlayer;)Lcom/pubmatic/sdk/video/player/POBVastPlayerListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/pubmatic/sdk/video/player/POBVastPlayerListener;->onSkipButtonClick(Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;)V

    :cond_3
    :goto_1
    return-void
.end method
