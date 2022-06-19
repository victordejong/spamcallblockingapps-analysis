.class public Lcom/millennialmedia/internal/playlistserver/PlayListServer;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/millennialmedia/internal/playlistserver/PlayListServer$PlayListTimedMemoryCache;,
        Lcom/millennialmedia/internal/playlistserver/PlayListServer$PlayListCacheItem;,
        Lcom/millennialmedia/internal/playlistserver/PlayListServer$PlayListLoadListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PlayListServer"

.field private static activePlayListServerAdapterClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/millennialmedia/internal/playlistserver/PlayListServerAdapter;",
            ">;"
        }
    .end annotation
.end field

.field public static final playListCache:Lcom/millennialmedia/internal/playlistserver/PlayListServer$PlayListTimedMemoryCache;

.field public static final supportedAdFormats:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/millennialmedia/internal/playlistserver/PlayListServer$PlayListTimedMemoryCache;

    invoke-direct {v0}, Lcom/millennialmedia/internal/playlistserver/PlayListServer$PlayListTimedMemoryCache;-><init>()V

    sput-object v0, Lcom/millennialmedia/internal/playlistserver/PlayListServer;->playListCache:Lcom/millennialmedia/internal/playlistserver/PlayListServer$PlayListTimedMemoryCache;

    const-string v0, "web"

    const-string v1, "native"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/millennialmedia/internal/playlistserver/PlayListServer;->supportedAdFormats:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addPlaylistToCache(Ljava/lang/String;Lcom/millennialmedia/internal/PlayList;Ljava/lang/String;J)V
    .locals 1

    new-instance v0, Lcom/millennialmedia/internal/playlistserver/PlayListServer$PlayListCacheItem;

    invoke-direct {v0, p1, p2}, Lcom/millennialmedia/internal/playlistserver/PlayListServer$PlayListCacheItem;-><init>(Lcom/millennialmedia/internal/PlayList;Ljava/lang/String;)V

    sget-object p1, Lcom/millennialmedia/internal/playlistserver/PlayListServer;->playListCache:Lcom/millennialmedia/internal/playlistserver/PlayListServer$PlayListTimedMemoryCache;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p0, v0, p2}, Lcom/millennialmedia/internal/utils/TimedMemoryCache;->add(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Long;)Ljava/lang/String;

    return-void
.end method

.method public static clearPlaylistCache()V
    .locals 1

    sget-object v0, Lcom/millennialmedia/internal/playlistserver/PlayListServer;->playListCache:Lcom/millennialmedia/internal/playlistserver/PlayListServer$PlayListTimedMemoryCache;

    invoke-virtual {v0}, Lcom/millennialmedia/internal/utils/TimedMemoryCache;->expireAll()V

    return-void
.end method

.method private static getActivePlayListServerAdapter()Lcom/millennialmedia/internal/playlistserver/PlayListServerAdapter;
    .locals 1

    sget-object v0, Lcom/millennialmedia/internal/playlistserver/PlayListServer;->activePlayListServerAdapterClass:Ljava/lang/Class;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/millennialmedia/internal/Handshake;->getActivePlayListServerAdapterClass()Ljava/lang/Class;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Lcom/millennialmedia/internal/playlistserver/PlayListServerAdapter;->getAdapter(Ljava/lang/Class;)Lcom/millennialmedia/internal/playlistserver/PlayListServerAdapter;

    move-result-object v0

    return-object v0
.end method

.method private static getCachedPlaylist(Ljava/lang/String;)Lcom/millennialmedia/internal/PlayList;
    .locals 2

    invoke-static {p0}, Lcom/millennialmedia/internal/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    sget-object v0, Lcom/millennialmedia/internal/playlistserver/PlayListServer;->playListCache:Lcom/millennialmedia/internal/playlistserver/PlayListServer$PlayListTimedMemoryCache;

    invoke-virtual {v0, p0}, Lcom/millennialmedia/internal/utils/TimedMemoryCache;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/millennialmedia/internal/playlistserver/PlayListServer$PlayListCacheItem;

    if-nez p0, :cond_1

    return-object v1

    :cond_1
    iget-object p0, p0, Lcom/millennialmedia/internal/playlistserver/PlayListServer$PlayListCacheItem;->playList:Lcom/millennialmedia/internal/PlayList;

    return-object p0
.end method

.method public static loadPlayList(Ljava/util/Map;Lcom/millennialmedia/internal/playlistserver/PlayListServer$PlayListLoadListener;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/millennialmedia/internal/playlistserver/PlayListServer$PlayListLoadListener;",
            "I)V"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/millennialmedia/internal/playlistserver/PlayListServer;->loadPlayList(Ljava/util/Map;Lcom/millennialmedia/internal/playlistserver/PlayListServer$PlayListLoadListener;IZ)V

    return-void
.end method

.method public static loadPlayList(Ljava/util/Map;Lcom/millennialmedia/internal/playlistserver/PlayListServer$PlayListLoadListener;IZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/millennialmedia/internal/playlistserver/PlayListServer$PlayListLoadListener;",
            "IZ)V"
        }
    .end annotation

    invoke-static {}, Lcom/millennialmedia/internal/Handshake;->isSdkEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lcom/millennialmedia/internal/playlistserver/PlayListServer;->TAG:Ljava/lang/String;

    const-string p2, "Unable to request ad, SDK is disabled.  Please contact Millennial Media."

    invoke-static {p0, p2}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p2, "SDK disabled"

    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p0}, Lcom/millennialmedia/internal/playlistserver/PlayListServer$PlayListLoadListener;->onLoadFailed(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->isNetworkAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p0, Lcom/millennialmedia/internal/playlistserver/PlayListServer;->TAG:Ljava/lang/String;

    const-string p2, "Unable to request ad, no network connection found"

    invoke-static {p0, p2}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p2, "Network not available"

    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p0}, Lcom/millennialmedia/internal/playlistserver/PlayListServer$PlayListLoadListener;->onLoadFailed(Ljava/lang/Throwable;)V

    return-void

    :cond_1
    :try_start_0
    invoke-static {}, Lcom/millennialmedia/internal/playlistserver/PlayListServer;->getActivePlayListServerAdapter()Lcom/millennialmedia/internal/playlistserver/PlayListServerAdapter;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p3, :cond_3

    const-string p3, "placementId"

    invoke-interface {p0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-static {p3}, Lcom/millennialmedia/internal/playlistserver/PlayListServer;->getCachedPlaylist(Ljava/lang/String;)Lcom/millennialmedia/internal/PlayList;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Lcom/millennialmedia/internal/playlistserver/PlayListServer;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Using playlist from cache for id <"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ">"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-interface {p1, v1}, Lcom/millennialmedia/internal/playlistserver/PlayListServer$PlayListLoadListener;->onLoaded(Lcom/millennialmedia/internal/PlayList;)V

    return-void

    :cond_3
    new-instance p3, Lcom/millennialmedia/internal/playlistserver/PlayListServer$1;

    invoke-direct {p3, p1}, Lcom/millennialmedia/internal/playlistserver/PlayListServer$1;-><init>(Lcom/millennialmedia/internal/playlistserver/PlayListServer$PlayListLoadListener;)V

    invoke-virtual {v0, p0, p3, p2}, Lcom/millennialmedia/internal/playlistserver/PlayListServerAdapter;->loadPlayList(Ljava/util/Map;Lcom/millennialmedia/internal/playlistserver/PlayListServerAdapter$AdapterLoadListener;I)V

    return-void

    :catch_0
    move-exception p0

    invoke-interface {p1, p0}, Lcom/millennialmedia/internal/playlistserver/PlayListServer$PlayListLoadListener;->onLoadFailed(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static setActivePlayListServerAdapter(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/millennialmedia/internal/playlistserver/PlayListServerAdapter;",
            ">;)V"
        }
    .end annotation

    sput-object p0, Lcom/millennialmedia/internal/playlistserver/PlayListServer;->activePlayListServerAdapterClass:Ljava/lang/Class;

    return-void
.end method
