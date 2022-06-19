.class public Lio/bidmachine/ApiRequest$ApiAuctionDataBinder;
.super Lio/bidmachine/ApiRequest$ApiDataBinder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/ApiRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ApiAuctionDataBinder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/bidmachine/ApiRequest$ApiDataBinder<",
        "Lcom/explorestack/protobuf/openrtb/Request;",
        "Lcom/explorestack/protobuf/openrtb/Response;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 195
    invoke-direct {p0}, Lio/bidmachine/ApiRequest$ApiDataBinder;-><init>()V

    return-void
.end method


# virtual methods
.method protected createSuccessResult(Lio/bidmachine/core/NetworkRequest;Ljava/net/URLConnection;[B)Lcom/explorestack/protobuf/openrtb/Response;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/core/NetworkRequest<",
            "Lcom/explorestack/protobuf/openrtb/Request;",
            "Lcom/explorestack/protobuf/openrtb/Response;",
            "Lio/bidmachine/utils/BMError;",
            ">;",
            "Ljava/net/URLConnection;",
            "[B)",
            "Lcom/explorestack/protobuf/openrtb/Response;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 212
    invoke-static {p3}, Lcom/explorestack/protobuf/openrtb/Openrtb;->parseFrom([B)Lcom/explorestack/protobuf/openrtb/Openrtb;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p2, "Response"

    .line 215
    invoke-static {p2, p1}, Lio/bidmachine/g;->dump(Ljava/lang/String;Lcom/explorestack/protobuf/MessageOrBuilder;)V

    .line 216
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Openrtb;->getResponse()Lcom/explorestack/protobuf/openrtb/Response;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic createSuccessResult(Lio/bidmachine/core/NetworkRequest;Ljava/net/URLConnection;[B)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 195
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/ApiRequest$ApiAuctionDataBinder;->createSuccessResult(Lio/bidmachine/core/NetworkRequest;Ljava/net/URLConnection;[B)Lcom/explorestack/protobuf/openrtb/Response;

    move-result-object p1

    return-object p1
.end method

.method protected obtainData(Lio/bidmachine/core/NetworkRequest;Ljava/net/URLConnection;Lcom/explorestack/protobuf/openrtb/Request;)[B
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/core/NetworkRequest<",
            "Lcom/explorestack/protobuf/openrtb/Request;",
            "Lcom/explorestack/protobuf/openrtb/Response;",
            "Lio/bidmachine/utils/BMError;",
            ">;",
            "Ljava/net/URLConnection;",
            "Lcom/explorestack/protobuf/openrtb/Request;",
            ")[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 226
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Openrtb;->newBuilder()Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

    move-result-object p1

    .line 227
    invoke-virtual {p1, p3}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->setRequest(Lcom/explorestack/protobuf/openrtb/Request;)Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

    const-string p2, "3.0"

    .line 228
    invoke-virtual {p1, p2}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->setVer(Ljava/lang/String;)Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

    const-string p2, "adcom"

    .line 229
    invoke-virtual {p1, p2}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->setDomainspec(Ljava/lang/String;)Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

    const-string p2, "1.0"

    .line 230
    invoke-virtual {p1, p2}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->setDomainver(Ljava/lang/String;)Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

    const-string p2, "Auction request"

    .line 232
    invoke-static {p2, p1}, Lio/bidmachine/g;->dump(Ljava/lang/String;Lcom/explorestack/protobuf/MessageOrBuilder;)V

    .line 233
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->build()Lcom/explorestack/protobuf/openrtb/Openrtb;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Openrtb;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic obtainData(Lio/bidmachine/core/NetworkRequest;Ljava/net/URLConnection;Ljava/lang/Object;)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 195
    check-cast p3, Lcom/explorestack/protobuf/openrtb/Request;

    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/ApiRequest$ApiAuctionDataBinder;->obtainData(Lio/bidmachine/core/NetworkRequest;Ljava/net/URLConnection;Lcom/explorestack/protobuf/openrtb/Request;)[B

    move-result-object p1

    return-object p1
.end method

.method public prepareHeaders(Lio/bidmachine/core/NetworkRequest;Ljava/net/URLConnection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/core/NetworkRequest<",
            "Lcom/explorestack/protobuf/openrtb/Request;",
            "Lcom/explorestack/protobuf/openrtb/Response;",
            "Lio/bidmachine/utils/BMError;",
            ">;",
            "Ljava/net/URLConnection;",
            ")V"
        }
    .end annotation

    const-string p1, "Content-Type"

    const-string v0, "application/x-protobuf"

    .line 203
    invoke-virtual {p2, p1, v0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    invoke-virtual {p2}, Ljava/net/URLConnection;->getRequestProperties()Ljava/util/Map;

    move-result-object p1

    const-string p2, "Auction request headers"

    invoke-static {p2, p1}, Lio/bidmachine/core/Logger;->log(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
