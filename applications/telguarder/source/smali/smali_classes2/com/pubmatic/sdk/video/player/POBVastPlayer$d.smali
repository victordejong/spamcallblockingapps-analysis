.class Lcom/pubmatic/sdk/video/player/POBVastPlayer$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/pubmatic/sdk/video/player/POBVastHTMLView$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pubmatic/sdk/video/player/POBVastPlayer;->a(Lcom/pubmatic/sdk/video/vastmodels/POBIcon;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pubmatic/sdk/video/vastmodels/POBIcon;

.field final synthetic b:Lcom/pubmatic/sdk/video/player/POBVastPlayer;


# direct methods
.method constructor <init>(Lcom/pubmatic/sdk/video/player/POBVastPlayer;Lcom/pubmatic/sdk/video/vastmodels/POBIcon;)V
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer$d;->b:Lcom/pubmatic/sdk/video/player/POBVastPlayer;

    iput-object p2, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer$d;->a:Lcom/pubmatic/sdk/video/vastmodels/POBIcon;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/pubmatic/sdk/video/POBVastError;)V
    .locals 2

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "POBVastPlayer"

    const-string v1, "Unable to render Icon due to invalid details."

    invoke-static {v0, v1, p1}, Lcom/pubmatic/sdk/common/log/PMLog;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "POBVastPlayer"

    const-string v3, "Icon clicked."

    invoke-static {v2, v3, v1}, Lcom/pubmatic/sdk/common/log/PMLog;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer$d;->b:Lcom/pubmatic/sdk/video/player/POBVastPlayer;

    invoke-static {v1}, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->l(Lcom/pubmatic/sdk/video/player/POBVastPlayer;)Lcom/pubmatic/sdk/common/network/POBTrackerHandler;

    move-result-object v1

    iget-object v3, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer$d;->a:Lcom/pubmatic/sdk/video/vastmodels/POBIcon;

    invoke-virtual {v3}, Lcom/pubmatic/sdk/video/vastmodels/POBIcon;->getClickTrackers()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/pubmatic/sdk/common/network/POBTrackerHandler;->sendTrackers(Ljava/util/List;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    const-string v0, "Opening landing page of icon with url: %s"

    invoke-static {v2, v0, v1}, Lcom/pubmatic/sdk/common/log/PMLog;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer$d;->b:Lcom/pubmatic/sdk/video/player/POBVastPlayer;

    invoke-static {v0}, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->i(Lcom/pubmatic/sdk/video/player/POBVastPlayer;)Lcom/pubmatic/sdk/video/player/POBVastPlayerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer$d;->b:Lcom/pubmatic/sdk/video/player/POBVastPlayer;

    invoke-static {v0}, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->i(Lcom/pubmatic/sdk/video/player/POBVastPlayer;)Lcom/pubmatic/sdk/video/player/POBVastPlayerListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/pubmatic/sdk/video/player/POBVastPlayerListener;->onIndustryIconClick(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "POBVastPlayer"

    const-string v2, "Icon loaded."

    invoke-static {v1, v2, v0}, Lcom/pubmatic/sdk/common/log/PMLog;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer$d;->b:Lcom/pubmatic/sdk/video/player/POBVastPlayer;

    invoke-static {v0}, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->m(Lcom/pubmatic/sdk/video/player/POBVastPlayer;)Lcom/pubmatic/sdk/video/player/POBIconView;

    move-result-object v1

    iget-object v2, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer$d;->a:Lcom/pubmatic/sdk/video/vastmodels/POBIcon;

    invoke-static {v0, v1, v2}, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->a(Lcom/pubmatic/sdk/video/player/POBVastPlayer;Lcom/pubmatic/sdk/video/player/POBIconView;Lcom/pubmatic/sdk/video/vastmodels/POBIcon;)V

    return-void
.end method
