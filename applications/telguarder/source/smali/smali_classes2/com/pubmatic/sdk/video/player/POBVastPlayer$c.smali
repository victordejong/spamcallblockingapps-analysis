.class Lcom/pubmatic/sdk/video/player/POBVastPlayer$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/pubmatic/sdk/video/player/POBEndCardView$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pubmatic/sdk/video/player/POBVastPlayer;->a()V
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

    iput-object p1, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer$c;->a:Lcom/pubmatic/sdk/video/player/POBVastPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer$c;->a:Lcom/pubmatic/sdk/video/player/POBVastPlayer;

    invoke-static {v0}, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->a(Lcom/pubmatic/sdk/video/player/POBVastPlayer;)Lcom/pubmatic/sdk/video/vastmodels/POBVastAd;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer$c;->a:Lcom/pubmatic/sdk/video/player/POBVastPlayer;

    invoke-static {v0}, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->a(Lcom/pubmatic/sdk/video/player/POBVastPlayer;)Lcom/pubmatic/sdk/video/vastmodels/POBVastAd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pubmatic/sdk/video/vastmodels/POBVastAd;->getCreative()Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative;->getClickThroughURL()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->a(Lcom/pubmatic/sdk/video/player/POBVastPlayer;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer$c;->a:Lcom/pubmatic/sdk/video/player/POBVastPlayer;

    invoke-static {v0}, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->h(Lcom/pubmatic/sdk/video/player/POBVastPlayer;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/pubmatic/sdk/video/POBVastError;)V
    .locals 2

    iget-object v0, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer$c;->a:Lcom/pubmatic/sdk/video/player/POBVastPlayer;

    invoke-static {v0}, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->a(Lcom/pubmatic/sdk/video/player/POBVastPlayer;)Lcom/pubmatic/sdk/video/vastmodels/POBVastAd;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->a(Lcom/pubmatic/sdk/video/player/POBVastPlayer;Lcom/pubmatic/sdk/video/vastmodels/POBVastAd;Lcom/pubmatic/sdk/video/POBVastError;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer$c;->a:Lcom/pubmatic/sdk/video/player/POBVastPlayer;

    invoke-static {v0}, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->k(Lcom/pubmatic/sdk/video/player/POBVastPlayer;)Lcom/pubmatic/sdk/video/vastmodels/POBCompanion;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer$c;->a:Lcom/pubmatic/sdk/video/player/POBVastPlayer;

    invoke-static {v0}, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->l(Lcom/pubmatic/sdk/video/player/POBVastPlayer;)Lcom/pubmatic/sdk/common/network/POBTrackerHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer$c;->a:Lcom/pubmatic/sdk/video/player/POBVastPlayer;

    invoke-static {v1}, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->k(Lcom/pubmatic/sdk/video/player/POBVastPlayer;)Lcom/pubmatic/sdk/video/vastmodels/POBCompanion;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pubmatic/sdk/video/vastmodels/POBCompanion;->getClickTrackers()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pubmatic/sdk/common/network/POBTrackerHandler;->sendTrackers(Ljava/util/List;)V

    :cond_0
    iget-object v0, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer$c;->a:Lcom/pubmatic/sdk/video/player/POBVastPlayer;

    invoke-static {v0, p1}, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->a(Lcom/pubmatic/sdk/video/player/POBVastPlayer;Ljava/lang/String;)V

    return-void
.end method

.method public b()V
    .locals 3

    iget-object v0, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer$c;->a:Lcom/pubmatic/sdk/video/player/POBVastPlayer;

    invoke-static {v0}, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->k(Lcom/pubmatic/sdk/video/player/POBVastPlayer;)Lcom/pubmatic/sdk/video/vastmodels/POBCompanion;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer$c;->a:Lcom/pubmatic/sdk/video/player/POBVastPlayer;

    invoke-static {v0}, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->l(Lcom/pubmatic/sdk/video/player/POBVastPlayer;)Lcom/pubmatic/sdk/common/network/POBTrackerHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer$c;->a:Lcom/pubmatic/sdk/video/player/POBVastPlayer;

    invoke-static {v1}, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->k(Lcom/pubmatic/sdk/video/player/POBVastPlayer;)Lcom/pubmatic/sdk/video/vastmodels/POBCompanion;

    move-result-object v1

    sget-object v2, Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;->CREATIVE_VIEW:Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;

    invoke-virtual {v1, v2}, Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative;->getTrackingEventUrls(Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pubmatic/sdk/common/network/POBTrackerHandler;->sendTrackers(Ljava/util/List;)V

    :cond_0
    return-void
.end method
