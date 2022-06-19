.class public abstract Lio/bidmachine/AdRequest$AdRequestBuilderImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/models/RequestBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/AdRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AdRequestBuilderImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<SelfType::",
        "Lio/bidmachine/models/RequestBuilder;",
        "ReturnType:",
        "Lio/bidmachine/AdRequest;",
        ">",
        "Ljava/lang/Object;",
        "Lio/bidmachine/models/RequestBuilder<",
        "TSelfType;TReturnType;>;"
    }
.end annotation


# instance fields
.field protected params:Lio/bidmachine/AdRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TReturnType;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 796
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lio/bidmachine/AdRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TReturnType;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 921
    :try_start_0
    invoke-virtual {p0}, Lio/bidmachine/AdRequest$AdRequestBuilderImpl;->prepareRequest()V

    .line 922
    iget-object v1, p0, Lio/bidmachine/AdRequest$AdRequestBuilderImpl;->params:Lio/bidmachine/AdRequest;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 924
    iput-object v0, p0, Lio/bidmachine/AdRequest$AdRequestBuilderImpl;->params:Lio/bidmachine/AdRequest;

    return-object v1

    :catchall_0
    move-exception v1

    iput-object v0, p0, Lio/bidmachine/AdRequest$AdRequestBuilderImpl;->params:Lio/bidmachine/AdRequest;

    .line 925
    throw v1
.end method

.method protected abstract createRequest()Lio/bidmachine/AdRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TReturnType;"
        }
    .end annotation
.end method

.method public disableHeaderBidding()Lio/bidmachine/models/RequestBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TSelfType;"
        }
    .end annotation

    .line 889
    invoke-virtual {p0}, Lio/bidmachine/AdRequest$AdRequestBuilderImpl;->prepareRequest()V

    .line 890
    iget-object v0, p0, Lio/bidmachine/AdRequest$AdRequestBuilderImpl;->params:Lio/bidmachine/AdRequest;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lio/bidmachine/AdRequest;->headerBiddingEnabled:Z

    return-object p0
.end method

.method public enableHeaderBidding()Lio/bidmachine/models/RequestBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TSelfType;"
        }
    .end annotation

    .line 897
    invoke-virtual {p0}, Lio/bidmachine/AdRequest$AdRequestBuilderImpl;->prepareRequest()V

    .line 898
    iget-object v0, p0, Lio/bidmachine/AdRequest$AdRequestBuilderImpl;->params:Lio/bidmachine/AdRequest;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lio/bidmachine/AdRequest;->headerBiddingEnabled:Z

    return-object p0
.end method

.method fillNetworkConfigs(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/bidmachine/NetworkConfig;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 857
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 858
    invoke-virtual {p0}, Lio/bidmachine/AdRequest$AdRequestBuilderImpl;->prepareRequest()V

    .line 860
    iget-object v0, p0, Lio/bidmachine/AdRequest$AdRequestBuilderImpl;->params:Lio/bidmachine/AdRequest;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lio/bidmachine/AdRequest;->networkConfigMap:Ljava/util/Map;

    .line 861
    invoke-static {}, Lio/bidmachine/d;->get()Lio/bidmachine/d;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/d;->getInitNetworkConfigList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/NetworkConfig;

    .line 862
    iget-object v2, p0, Lio/bidmachine/AdRequest$AdRequestBuilderImpl;->params:Lio/bidmachine/AdRequest;

    iget-object v2, v2, Lio/bidmachine/AdRequest;->networkConfigMap:Ljava/util/Map;

    invoke-virtual {v1}, Lio/bidmachine/NetworkConfig;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 864
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/NetworkConfig;

    .line 865
    invoke-virtual {v0}, Lio/bidmachine/NetworkConfig;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 866
    sget-object v2, Lio/bidmachine/h;->Publisher:Lio/bidmachine/h;

    invoke-static {v1, v2}, Lio/bidmachine/f;->isNetworkInitialized(Ljava/lang/String;Lio/bidmachine/h;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 867
    iget-object v1, p0, Lio/bidmachine/AdRequest$AdRequestBuilderImpl;->params:Lio/bidmachine/AdRequest;

    iget-object v1, v1, Lio/bidmachine/AdRequest;->networkConfigMap:Ljava/util/Map;

    invoke-virtual {v0}, Lio/bidmachine/NetworkConfig;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 871
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "%s: %s was removed from AdRequest. Please register network before initialize BidMachine"

    .line 869
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/bidmachine/core/Logger;->log(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method protected prepareRequest()V
    .locals 1

    .line 929
    iget-object v0, p0, Lio/bidmachine/AdRequest$AdRequestBuilderImpl;->params:Lio/bidmachine/AdRequest;

    if-nez v0, :cond_0

    .line 930
    invoke-virtual {p0}, Lio/bidmachine/AdRequest$AdRequestBuilderImpl;->createRequest()Lio/bidmachine/AdRequest;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/AdRequest$AdRequestBuilderImpl;->params:Lio/bidmachine/AdRequest;

    :cond_0
    return-void
.end method

.method public setListener(Lio/bidmachine/AdRequest$AdRequestListener;)Lio/bidmachine/models/RequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/AdRequest$AdRequestListener<",
            "TReturnType;>;)TSelfType;"
        }
    .end annotation

    .line 905
    invoke-virtual {p0}, Lio/bidmachine/AdRequest$AdRequestBuilderImpl;->prepareRequest()V

    .line 906
    iget-object v0, p0, Lio/bidmachine/AdRequest$AdRequestBuilderImpl;->params:Lio/bidmachine/AdRequest;

    invoke-virtual {v0, p1}, Lio/bidmachine/AdRequest;->addListener(Lio/bidmachine/AdRequest$AdRequestListener;)V

    return-object p0
.end method

.method public setLoadingTimeOut(I)Lio/bidmachine/models/RequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TSelfType;"
        }
    .end annotation

    .line 881
    invoke-virtual {p0}, Lio/bidmachine/AdRequest$AdRequestBuilderImpl;->prepareRequest()V

    .line 882
    iget-object v0, p0, Lio/bidmachine/AdRequest$AdRequestBuilderImpl;->params:Lio/bidmachine/AdRequest;

    iput p1, v0, Lio/bidmachine/AdRequest;->timeOut:I

    return-object p0
.end method

.method public setNetworks(Ljava/lang/String;)Lio/bidmachine/models/RequestBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TSelfType;"
        }
    .end annotation

    .line 833
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 834
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 836
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 837
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge p1, v2, :cond_1

    .line 838
    invoke-virtual {v1, p1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 840
    invoke-static {}, Lio/bidmachine/d;->get()Lio/bidmachine/d;

    move-result-object v3

    invoke-virtual {v3}, Lio/bidmachine/d;->getAppContext()Landroid/content/Context;

    move-result-object v3

    .line 839
    invoke-static {v3, v2}, Lio/bidmachine/NetworkConfig;->create(Landroid/content/Context;Lorg/json/JSONObject;)Lio/bidmachine/NetworkConfig;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 843
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 847
    invoke-static {p1}, Lio/bidmachine/core/Logger;->log(Ljava/lang/Throwable;)V

    .line 849
    :cond_1
    invoke-virtual {p0, v0}, Lio/bidmachine/AdRequest$AdRequestBuilderImpl;->fillNetworkConfigs(Ljava/util/List;)V

    :cond_2
    return-object p0
.end method

.method public setNetworks(Ljava/util/List;)Lio/bidmachine/models/RequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/bidmachine/NetworkConfig;",
            ">;)TSelfType;"
        }
    .end annotation

    .line 826
    invoke-virtual {p0, p1}, Lio/bidmachine/AdRequest$AdRequestBuilderImpl;->fillNetworkConfigs(Ljava/util/List;)V

    return-object p0
.end method

.method public setPriceFloorParams(Lio/bidmachine/PriceFloorParams;)Lio/bidmachine/models/RequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/PriceFloorParams;",
            ")TSelfType;"
        }
    .end annotation

    .line 802
    invoke-virtual {p0}, Lio/bidmachine/AdRequest$AdRequestBuilderImpl;->prepareRequest()V

    .line 803
    iget-object v0, p0, Lio/bidmachine/AdRequest$AdRequestBuilderImpl;->params:Lio/bidmachine/AdRequest;

    iput-object p1, v0, Lio/bidmachine/AdRequest;->priceFloorParams:Lio/bidmachine/PriceFloorParams;

    return-object p0
.end method

.method public setSessionAdParams(Lio/bidmachine/SessionAdParams;)Lio/bidmachine/models/RequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/SessionAdParams;",
            ")TSelfType;"
        }
    .end annotation

    .line 818
    invoke-virtual {p0}, Lio/bidmachine/AdRequest$AdRequestBuilderImpl;->prepareRequest()V

    .line 819
    iget-object v0, p0, Lio/bidmachine/AdRequest$AdRequestBuilderImpl;->params:Lio/bidmachine/AdRequest;

    iput-object p1, v0, Lio/bidmachine/AdRequest;->sessionAdParams:Lio/bidmachine/SessionAdParams;

    return-object p0
.end method

.method public setTargetingParams(Lio/bidmachine/TargetingParams;)Lio/bidmachine/models/RequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/TargetingParams;",
            ")TSelfType;"
        }
    .end annotation

    .line 810
    invoke-virtual {p0}, Lio/bidmachine/AdRequest$AdRequestBuilderImpl;->prepareRequest()V

    .line 811
    iget-object v0, p0, Lio/bidmachine/AdRequest$AdRequestBuilderImpl;->params:Lio/bidmachine/AdRequest;

    iput-object p1, v0, Lio/bidmachine/AdRequest;->targetingParams:Lio/bidmachine/TargetingParams;

    return-object p0
.end method
