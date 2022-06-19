.class final Lcom/mopub/network/AdLoader$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mopub/network/MultiAdRequest$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/network/AdLoader;-><init>(Ljava/lang/String;Lcom/mopub/common/AdFormat;Ljava/lang/String;Landroid/content/Context;Lcom/mopub/network/AdLoader$Listener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mopub/network/AdLoader;


# direct methods
.method constructor <init>(Lcom/mopub/network/AdLoader;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/mopub/network/AdLoader$1;->a:Lcom/mopub/network/AdLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onErrorResponse(Lcom/mopub/volley/VolleyError;)V
    .locals 4

    .line 88
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->RESPONSE_RECEIVED:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/mopub/volley/VolleyError;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 90
    iget-object v0, p0, Lcom/mopub/network/AdLoader$1;->a:Lcom/mopub/network/AdLoader;

    invoke-static {v0}, Lcom/mopub/network/AdLoader;->a(Lcom/mopub/network/AdLoader;)Z

    .line 91
    iget-object v0, p0, Lcom/mopub/network/AdLoader$1;->a:Lcom/mopub/network/AdLoader;

    invoke-static {v0}, Lcom/mopub/network/AdLoader;->b(Lcom/mopub/network/AdLoader;)Z

    .line 92
    iget-object v0, p0, Lcom/mopub/network/AdLoader$1;->a:Lcom/mopub/network/AdLoader;

    invoke-static {v0, p1}, Lcom/mopub/network/AdLoader;->a(Lcom/mopub/network/AdLoader;Lcom/mopub/volley/VolleyError;)V

    return-void
.end method

.method public final onSuccessResponse(Lcom/mopub/network/MultiAdResponse;)V
    .locals 2

    .line 97
    iget-object v0, p0, Lcom/mopub/network/AdLoader$1;->a:Lcom/mopub/network/AdLoader;

    invoke-static {v0}, Lcom/mopub/network/AdLoader;->c(Lcom/mopub/network/AdLoader;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 98
    :try_start_0
    iget-object v1, p0, Lcom/mopub/network/AdLoader$1;->a:Lcom/mopub/network/AdLoader;

    invoke-static {v1}, Lcom/mopub/network/AdLoader;->b(Lcom/mopub/network/AdLoader;)Z

    .line 99
    iget-object v1, p0, Lcom/mopub/network/AdLoader$1;->a:Lcom/mopub/network/AdLoader;

    iput-object p1, v1, Lcom/mopub/network/AdLoader;->a:Lcom/mopub/network/MultiAdResponse;

    .line 100
    iget-object p1, p0, Lcom/mopub/network/AdLoader$1;->a:Lcom/mopub/network/AdLoader;

    iget-object p1, p1, Lcom/mopub/network/AdLoader;->a:Lcom/mopub/network/MultiAdResponse;

    invoke-virtual {p1}, Lcom/mopub/network/MultiAdResponse;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 101
    iget-object p1, p0, Lcom/mopub/network/AdLoader$1;->a:Lcom/mopub/network/AdLoader;

    iget-object v1, p1, Lcom/mopub/network/AdLoader;->a:Lcom/mopub/network/MultiAdResponse;

    invoke-virtual {v1}, Lcom/mopub/network/MultiAdResponse;->next()Lcom/mopub/network/AdResponse;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/mopub/network/AdLoader;->a(Lcom/mopub/network/AdLoader;Lcom/mopub/network/AdResponse;)V

    .line 103
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
