.class public Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->loadPlayList(Ljava/util/Map;Lcom/millennialmedia/internal/playlistserver/PlayListServerAdapter$AdapterLoadListener;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;

.field public final synthetic val$adPlacementMetadata:Ljava/util/Map;

.field public final synthetic val$adapterLoadListener:Lcom/millennialmedia/internal/playlistserver/PlayListServerAdapter$AdapterLoadListener;

.field public final synthetic val$timeout:I


# direct methods
.method public constructor <init>(Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;Lcom/millennialmedia/internal/playlistserver/PlayListServerAdapter$AdapterLoadListener;Ljava/util/Map;I)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter$1;->this$0:Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;

    iput-object p2, p0, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter$1;->val$adapterLoadListener:Lcom/millennialmedia/internal/playlistserver/PlayListServerAdapter$AdapterLoadListener;

    iput-object p3, p0, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter$1;->val$adPlacementMetadata:Ljava/util/Map;

    iput p4, p0, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter$1;->val$timeout:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lcom/millennialmedia/internal/Handshake;->getActivePlaylistServerBaseUrl()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter$1;->val$adapterLoadListener:Lcom/millennialmedia/internal/playlistserver/PlayListServerAdapter$AdapterLoadListener;

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unable to determine base url for request"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-interface {v0, v1}, Lcom/millennialmedia/internal/playlistserver/PlayListServerAdapter$AdapterLoadListener;->loadFailed(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    invoke-static {v0}, Landroid/webkit/URLUtil;->isHttpsUrl(Ljava/lang/String;)Z

    move-result v1

    iget-object v2, p0, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter$1;->val$adPlacementMetadata:Ljava/util/Map;

    invoke-static {v2, v1}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->buildAdRequestParameters(Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter$1;->val$adapterLoadListener:Lcom/millennialmedia/internal/playlistserver/PlayListServerAdapter$AdapterLoadListener;

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unable to create request parameters"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ad request url: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget v1, p0, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter$1;->val$timeout:I

    invoke-static {v0, v1}, Lcom/millennialmedia/internal/utils/HttpUtils;->getContentFromGetRequest(Ljava/lang/String;I)Lcom/millennialmedia/internal/utils/HttpUtils$Response;

    move-result-object v0

    iget v1, v0, Lcom/millennialmedia/internal/utils/HttpUtils$Response;->code:I

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_6

    iget-object v1, v0, Lcom/millennialmedia/internal/utils/HttpUtils$Response;->content:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ad response content: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/millennialmedia/internal/utils/HttpUtils$Response;->content:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget-object v1, v0, Lcom/millennialmedia/internal/utils/HttpUtils$Response;->content:Ljava/lang/String;

    iget-object v0, v0, Lcom/millennialmedia/internal/utils/HttpUtils$Response;->adMetadata:Lcom/millennialmedia/internal/AdMetadata;

    invoke-static {v1, v0}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->parsePlayListResponse(Ljava/lang/String;Lcom/millennialmedia/internal/AdMetadata;)Lcom/millennialmedia/internal/PlayList;

    move-result-object v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter$1;->val$adapterLoadListener:Lcom/millennialmedia/internal/playlistserver/PlayListServerAdapter$AdapterLoadListener;

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unable to get valid playlist"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/millennialmedia/internal/playlistserver/PlayListServerAdapter$AdapterLoadListener;->loadFailed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter$1;->val$adapterLoadListener:Lcom/millennialmedia/internal/playlistserver/PlayListServerAdapter$AdapterLoadListener;

    invoke-interface {v1, v0}, Lcom/millennialmedia/internal/playlistserver/PlayListServerAdapter$AdapterLoadListener;->loadSucceeded(Lcom/millennialmedia/internal/PlayList;)V

    :goto_1
    return-void

    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter$1;->val$adapterLoadListener:Lcom/millennialmedia/internal/playlistserver/PlayListServerAdapter$AdapterLoadListener;

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Get request failed to get ad"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
