.class public final Lcom/millennialmedia/internal/playlistserver/PlayListServer$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/millennialmedia/internal/playlistserver/PlayListServerAdapter$AdapterLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/playlistserver/PlayListServer;->loadPlayList(Ljava/util/Map;Lcom/millennialmedia/internal/playlistserver/PlayListServer$PlayListLoadListener;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic val$playListLoadListener:Lcom/millennialmedia/internal/playlistserver/PlayListServer$PlayListLoadListener;


# direct methods
.method public constructor <init>(Lcom/millennialmedia/internal/playlistserver/PlayListServer$PlayListLoadListener;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/internal/playlistserver/PlayListServer$1;->val$playListLoadListener:Lcom/millennialmedia/internal/playlistserver/PlayListServer$PlayListLoadListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public loadFailed(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/internal/playlistserver/PlayListServer$1;->val$playListLoadListener:Lcom/millennialmedia/internal/playlistserver/PlayListServer$PlayListLoadListener;

    invoke-interface {v0, p1}, Lcom/millennialmedia/internal/playlistserver/PlayListServer$PlayListLoadListener;->onLoadFailed(Ljava/lang/Throwable;)V

    return-void
.end method

.method public loadSucceeded(Lcom/millennialmedia/internal/PlayList;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/internal/playlistserver/PlayListServer$1;->val$playListLoadListener:Lcom/millennialmedia/internal/playlistserver/PlayListServer$PlayListLoadListener;

    invoke-interface {v0, p1}, Lcom/millennialmedia/internal/playlistserver/PlayListServer$PlayListLoadListener;->onLoaded(Lcom/millennialmedia/internal/PlayList;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/millennialmedia/internal/playlistserver/PlayListServer$1;->val$playListLoadListener:Lcom/millennialmedia/internal/playlistserver/PlayListServer$PlayListLoadListener;

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Playlist provided by adapter is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/millennialmedia/internal/playlistserver/PlayListServer$PlayListLoadListener;->onLoadFailed(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
