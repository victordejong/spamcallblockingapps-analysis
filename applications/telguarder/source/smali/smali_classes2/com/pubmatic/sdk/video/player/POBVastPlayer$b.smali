.class Lcom/pubmatic/sdk/video/player/POBVastPlayer$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/pubmatic/sdk/video/vastparser/POBVastParserListener;


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

    iput-object p1, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer$b;->a:Lcom/pubmatic/sdk/video/player/POBVastPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/pubmatic/sdk/video/vastmodels/POBVast;Lcom/pubmatic/sdk/video/POBVastError;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/pubmatic/sdk/video/vastmodels/POBVast;->getAds()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/pubmatic/sdk/video/vastmodels/POBVast;->getAds()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer$b;->a:Lcom/pubmatic/sdk/video/player/POBVastPlayer;

    invoke-virtual {p1}, Lcom/pubmatic/sdk/video/vastmodels/POBVast;->getAds()Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/pubmatic/sdk/video/vastmodels/POBVastAd;

    invoke-static {v0, p1, p2}, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->a(Lcom/pubmatic/sdk/video/player/POBVastPlayer;Lcom/pubmatic/sdk/video/vastmodels/POBVastAd;Lcom/pubmatic/sdk/video/POBVastError;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer$b;->a:Lcom/pubmatic/sdk/video/player/POBVastPlayer;

    const/4 v0, 0x0

    invoke-static {p1, v0, p2}, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->a(Lcom/pubmatic/sdk/video/player/POBVastPlayer;Lcom/pubmatic/sdk/video/vastmodels/POBVastAd;Lcom/pubmatic/sdk/video/POBVastError;)V

    :goto_0
    return-void
.end method

.method public onSuccess(Lcom/pubmatic/sdk/video/vastmodels/POBVast;)V
    .locals 2

    invoke-virtual {p1}, Lcom/pubmatic/sdk/video/vastmodels/POBVast;->getAds()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/pubmatic/sdk/video/vastmodels/POBVast;->getAds()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer$b;->a:Lcom/pubmatic/sdk/video/player/POBVastPlayer;

    invoke-virtual {p1}, Lcom/pubmatic/sdk/video/vastmodels/POBVast;->getAds()Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/pubmatic/sdk/video/vastmodels/POBVastAd;

    invoke-static {v0, p1}, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->a(Lcom/pubmatic/sdk/video/player/POBVastPlayer;Lcom/pubmatic/sdk/video/vastmodels/POBVastAd;)V

    :cond_0
    return-void
.end method
