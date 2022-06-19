.class public Lcom/pubmatic/sdk/common/network/POBTrackerHandler;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:Lcom/pubmatic/sdk/common/network/POBNetworkHandler;

.field private b:Lcom/pubmatic/sdk/common/models/POBDeviceInfo;


# direct methods
.method public constructor <init>(Lcom/pubmatic/sdk/common/network/POBNetworkHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/pubmatic/sdk/common/network/POBTrackerHandler;->a:Lcom/pubmatic/sdk/common/network/POBNetworkHandler;

    return-void
.end method

.method public static sanitizeURLScheme(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/pubmatic/sdk/common/utility/POBUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "https"

    goto :goto_0

    :cond_0
    const-string p1, "http"

    :goto_0
    invoke-virtual {p0, p1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :cond_2
    :goto_1
    return-object p0
.end method

.method public static sanitizeURLScheme(Ljava/util/List;Ljava/lang/Boolean;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Boolean;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/pubmatic/sdk/common/network/POBTrackerHandler;->sanitizeURLScheme(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public sendTracker(Ljava/lang/String;)V
    .locals 4

    const-string v0, "PMTrackerHandler"

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    const-string v1, "Executing tracker for url: %s"

    invoke-static {v0, v1, v2}, Lcom/pubmatic/sdk/common/log/PMLog;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/pubmatic/sdk/common/network/POBHttpRequest;

    invoke-direct {v0}, Lcom/pubmatic/sdk/common/network/POBHttpRequest;-><init>()V

    invoke-virtual {v0, p1}, Lcom/pubmatic/sdk/common/network/POBHttpRequest;->setUrl(Ljava/lang/String;)V

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/pubmatic/sdk/common/network/POBHttpRequest;->setRetryCount(I)V

    sget-object v1, Lcom/pubmatic/sdk/common/network/POBHttpRequest$HTTP_METHOD;->GET:Lcom/pubmatic/sdk/common/network/POBHttpRequest$HTTP_METHOD;

    invoke-virtual {v0, v1}, Lcom/pubmatic/sdk/common/network/POBHttpRequest;->setRequestMethod(Lcom/pubmatic/sdk/common/network/POBHttpRequest$HTTP_METHOD;)V

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Lcom/pubmatic/sdk/common/network/POBHttpRequest;->setTimeout(I)V

    iget-object v1, p0, Lcom/pubmatic/sdk/common/network/POBTrackerHandler;->b:Lcom/pubmatic/sdk/common/models/POBDeviceInfo;

    if-eqz v1, :cond_1

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v2, p0, Lcom/pubmatic/sdk/common/network/POBTrackerHandler;->b:Lcom/pubmatic/sdk/common/models/POBDeviceInfo;

    invoke-virtual {v2}, Lcom/pubmatic/sdk/common/models/POBDeviceInfo;->getUserAgent()Ljava/lang/String;

    move-result-object v2

    const-string v3, "User-Agent"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/pubmatic/sdk/common/network/POBHttpRequest;->setHeaders(Ljava/util/Map;)V

    :cond_1
    iget-object v1, p0, Lcom/pubmatic/sdk/common/network/POBTrackerHandler;->a:Lcom/pubmatic/sdk/common/network/POBNetworkHandler;

    new-instance v2, Lcom/pubmatic/sdk/common/network/POBTrackerHandler$a;

    invoke-direct {v2, p0, p1}, Lcom/pubmatic/sdk/common/network/POBTrackerHandler$a;-><init>(Lcom/pubmatic/sdk/common/network/POBTrackerHandler;Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Lcom/pubmatic/sdk/common/network/POBNetworkHandler;->sendRequest(Lcom/pubmatic/sdk/common/network/POBHttpRequest;Lcom/pubmatic/sdk/common/network/POBNetworkHandler$POBNetworkListener;)V

    return-void

    :cond_2
    :goto_0
    new-array p1, v1, [Ljava/lang/Object;

    const-string v1, "Null argument found during sendTracker in PMTrackerHandler. Skipping tracker execution."

    invoke-static {v0, v1, p1}, Lcom/pubmatic/sdk/common/log/PMLog;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public sendTracker(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/pubmatic/sdk/common/network/POBTrackerHandler;->sendTracker(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "PMTrackerHandler"

    const-string p3, "Empty tracker url."

    invoke-static {p2, p3, p1}, Lcom/pubmatic/sdk/common/log/PMLog;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public sendTrackers(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/pubmatic/sdk/common/network/POBTrackerHandler;->sendTracker(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    :goto_1
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "PMTrackerHandler"

    const-string v1, "Null argument found during sendTrackers in PMTrackerHandler. Skipping tracker execution."

    invoke-static {v0, v1, p1}, Lcom/pubmatic/sdk/common/log/PMLog;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public sendTrackers(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0, p2, p3}, Lcom/pubmatic/sdk/common/network/POBTrackerHandler;->sendTracker(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setDeviceInfo(Lcom/pubmatic/sdk/common/models/POBDeviceInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/common/network/POBTrackerHandler;->b:Lcom/pubmatic/sdk/common/models/POBDeviceInfo;

    return-void
.end method
