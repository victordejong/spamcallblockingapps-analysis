.class public Lcom/millennialmedia/internal/playlistserver/PlayListServer$PlayListCacheItem;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/internal/playlistserver/PlayListServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PlayListCacheItem"
.end annotation


# instance fields
.field public impressionGroup:Ljava/lang/String;

.field public playList:Lcom/millennialmedia/internal/PlayList;


# direct methods
.method public constructor <init>(Lcom/millennialmedia/internal/PlayList;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/millennialmedia/internal/playlistserver/PlayListServer$PlayListCacheItem;->playList:Lcom/millennialmedia/internal/PlayList;

    iput-object p2, p0, Lcom/millennialmedia/internal/playlistserver/PlayListServer$PlayListCacheItem;->impressionGroup:Ljava/lang/String;

    return-void
.end method
