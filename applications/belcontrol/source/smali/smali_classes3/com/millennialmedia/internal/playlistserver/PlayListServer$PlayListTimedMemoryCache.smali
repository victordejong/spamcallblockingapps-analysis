.class public Lcom/millennialmedia/internal/playlistserver/PlayListServer$PlayListTimedMemoryCache;
.super Lcom/millennialmedia/internal/utils/TimedMemoryCache;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/internal/playlistserver/PlayListServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PlayListTimedMemoryCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/millennialmedia/internal/utils/TimedMemoryCache<",
        "Lcom/millennialmedia/internal/playlistserver/PlayListServer$PlayListCacheItem;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/millennialmedia/internal/utils/TimedMemoryCache;-><init>()V

    return-void
.end method


# virtual methods
.method public onExpired(Ljava/lang/String;Lcom/millennialmedia/internal/playlistserver/PlayListServer$PlayListCacheItem;)V
    .locals 1

    iget-object p1, p2, Lcom/millennialmedia/internal/playlistserver/PlayListServer$PlayListCacheItem;->playList:Lcom/millennialmedia/internal/PlayList;

    iget-object p2, p2, Lcom/millennialmedia/internal/playlistserver/PlayListServer$PlayListCacheItem;->impressionGroup:Ljava/lang/String;

    const/16 v0, 0x71

    invoke-static {p1, p2, v0}, Lcom/millennialmedia/internal/adwrapper/SuperAuctionAdWrapperType;->reportBidFailed(Lcom/millennialmedia/internal/PlayList;Ljava/lang/String;I)V

    return-void
.end method

.method public bridge synthetic onExpired(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/millennialmedia/internal/playlistserver/PlayListServer$PlayListCacheItem;

    invoke-virtual {p0, p1, p2}, Lcom/millennialmedia/internal/playlistserver/PlayListServer$PlayListTimedMemoryCache;->onExpired(Ljava/lang/String;Lcom/millennialmedia/internal/playlistserver/PlayListServer$PlayListCacheItem;)V

    return-void
.end method

.method public onOverwritten(Ljava/lang/String;Lcom/millennialmedia/internal/playlistserver/PlayListServer$PlayListCacheItem;)V
    .locals 1

    iget-object p1, p2, Lcom/millennialmedia/internal/playlistserver/PlayListServer$PlayListCacheItem;->playList:Lcom/millennialmedia/internal/PlayList;

    iget-object p2, p2, Lcom/millennialmedia/internal/playlistserver/PlayListServer$PlayListCacheItem;->impressionGroup:Ljava/lang/String;

    const/16 v0, 0x72

    invoke-static {p1, p2, v0}, Lcom/millennialmedia/internal/adwrapper/SuperAuctionAdWrapperType;->reportBidFailed(Lcom/millennialmedia/internal/PlayList;Ljava/lang/String;I)V

    return-void
.end method

.method public bridge synthetic onOverwritten(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/millennialmedia/internal/playlistserver/PlayListServer$PlayListCacheItem;

    invoke-virtual {p0, p1, p2}, Lcom/millennialmedia/internal/playlistserver/PlayListServer$PlayListTimedMemoryCache;->onOverwritten(Ljava/lang/String;Lcom/millennialmedia/internal/playlistserver/PlayListServer$PlayListCacheItem;)V

    return-void
.end method
