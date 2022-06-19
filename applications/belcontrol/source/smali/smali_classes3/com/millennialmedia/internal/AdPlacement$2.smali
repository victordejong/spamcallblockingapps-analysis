.class public final Lcom/millennialmedia/internal/AdPlacement$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/millennialmedia/internal/playlistserver/PlayListServer$PlayListLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/AdPlacement;->requestBid(Ljava/lang/String;Lcom/millennialmedia/internal/AdPlacementMetadata;Lcom/millennialmedia/BidRequestListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic val$bidRequestListener:Lcom/millennialmedia/BidRequestListener;

.field public final synthetic val$metadata:Lcom/millennialmedia/internal/AdPlacementMetadata;

.field public final synthetic val$placementIdClean:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/millennialmedia/BidRequestListener;Lcom/millennialmedia/internal/AdPlacementMetadata;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/internal/AdPlacement$2;->val$bidRequestListener:Lcom/millennialmedia/BidRequestListener;

    iput-object p2, p0, Lcom/millennialmedia/internal/AdPlacement$2;->val$metadata:Lcom/millennialmedia/internal/AdPlacementMetadata;

    iput-object p3, p0, Lcom/millennialmedia/internal/AdPlacement$2;->val$placementIdClean:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadFailed(Ljava/lang/Throwable;)V
    .locals 2

    invoke-static {}, Lcom/millennialmedia/internal/AdPlacement;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Play list load failed"

    invoke-static {v0, v1, p1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p1, p0, Lcom/millennialmedia/internal/AdPlacement$2;->val$bidRequestListener:Lcom/millennialmedia/BidRequestListener;

    new-instance v0, Lcom/millennialmedia/BidRequestErrorStatus;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lcom/millennialmedia/BidRequestErrorStatus;-><init>(I)V

    invoke-static {p1, v0}, Lcom/millennialmedia/internal/AdPlacement;->onBidRequestFailed(Lcom/millennialmedia/BidRequestListener;Lcom/millennialmedia/BidRequestErrorStatus;)V

    return-void
.end method

.method public onLoaded(Lcom/millennialmedia/internal/PlayList;)V
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/millennialmedia/internal/PlayList;->getItem(I)Lcom/millennialmedia/internal/adwrapper/AdWrapper;

    move-result-object v0

    instance-of v1, v0, Lcom/millennialmedia/internal/adwrapper/SuperAuctionAdWrapperType$SuperAuctionAdWrapper;

    const/16 v2, 0x6e

    if-eqz v1, :cond_2

    check-cast v0, Lcom/millennialmedia/internal/adwrapper/SuperAuctionAdWrapperType$SuperAuctionAdWrapper;

    invoke-virtual {v0}, Lcom/millennialmedia/internal/adwrapper/SuperAuctionAdWrapperType$SuperAuctionAdWrapper;->getBidPrice()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/millennialmedia/internal/AdPlacement$2;->val$bidRequestListener:Lcom/millennialmedia/BidRequestListener;

    new-instance v3, Lcom/millennialmedia/BidRequestErrorStatus;

    const/16 v4, 0x191

    invoke-direct {v3, v4}, Lcom/millennialmedia/BidRequestErrorStatus;-><init>(I)V

    invoke-static {v1, v3}, Lcom/millennialmedia/internal/AdPlacement;->onBidRequestFailed(Lcom/millennialmedia/BidRequestListener;Lcom/millennialmedia/BidRequestErrorStatus;)V

    iget-object v1, p0, Lcom/millennialmedia/internal/AdPlacement$2;->val$metadata:Lcom/millennialmedia/internal/AdPlacementMetadata;

    invoke-virtual {v1}, Lcom/millennialmedia/internal/AdPlacementMetadata;->getImpressionGroup()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1, v2}, Lcom/millennialmedia/internal/adwrapper/SuperAuctionAdWrapperType;->reportBidFailed(Lcom/millennialmedia/internal/PlayList;Lcom/millennialmedia/internal/adwrapper/SuperAuctionAdWrapperType$SuperAuctionAdWrapper;Ljava/lang/String;I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/internal/AdPlacement$2;->val$placementIdClean:Ljava/lang/String;

    iget-object v2, p0, Lcom/millennialmedia/internal/AdPlacement$2;->val$metadata:Lcom/millennialmedia/internal/AdPlacementMetadata;

    invoke-virtual {v2}, Lcom/millennialmedia/internal/AdPlacementMetadata;->getImpressionGroup()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/millennialmedia/internal/Handshake;->getSuperAuctionCacheTimeout()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v0, p1, v2, v3, v4}, Lcom/millennialmedia/internal/playlistserver/PlayListServer;->addPlaylistToCache(Ljava/lang/String;Lcom/millennialmedia/internal/PlayList;Ljava/lang/String;J)V

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/millennialmedia/internal/AdPlacement;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Added Playlist to cache for placement id: <"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/millennialmedia/internal/AdPlacement$2;->val$placementIdClean:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ">"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object p1, p0, Lcom/millennialmedia/internal/AdPlacement$2;->val$bidRequestListener:Lcom/millennialmedia/BidRequestListener;

    invoke-static {p1, v1}, Lcom/millennialmedia/internal/AdPlacement;->onBidRequestSucceeded(Lcom/millennialmedia/BidRequestListener;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/millennialmedia/internal/AdPlacement;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid playlist item <"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ">. Playlist item must be of type super_auction."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/millennialmedia/internal/AdPlacement$2;->val$bidRequestListener:Lcom/millennialmedia/BidRequestListener;

    new-instance v1, Lcom/millennialmedia/BidRequestErrorStatus;

    const/4 v3, 0x5

    invoke-direct {v1, v3}, Lcom/millennialmedia/BidRequestErrorStatus;-><init>(I)V

    invoke-static {v0, v1}, Lcom/millennialmedia/internal/AdPlacement;->onBidRequestFailed(Lcom/millennialmedia/BidRequestListener;Lcom/millennialmedia/BidRequestErrorStatus;)V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/millennialmedia/internal/AdPlacement$2;->val$metadata:Lcom/millennialmedia/internal/AdPlacementMetadata;

    invoke-virtual {v1}, Lcom/millennialmedia/internal/AdPlacementMetadata;->getImpressionGroup()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1, v2}, Lcom/millennialmedia/internal/adwrapper/SuperAuctionAdWrapperType;->reportBidFailed(Lcom/millennialmedia/internal/PlayList;Lcom/millennialmedia/internal/adwrapper/SuperAuctionAdWrapperType$SuperAuctionAdWrapper;Ljava/lang/String;I)V

    :goto_0
    return-void
.end method
