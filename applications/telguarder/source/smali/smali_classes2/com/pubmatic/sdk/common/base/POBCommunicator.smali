.class public Lcom/pubmatic/sdk/common/base/POBCommunicator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/pubmatic/sdk/common/network/POBNetworkHandler$POBNetworkListener;
.implements Lcom/pubmatic/sdk/common/base/POBResponseParsing$PMResponseParserListener;
.implements Lcom/pubmatic/sdk/common/base/POBAdBuilding$PMAdBuilderListener;
.implements Lcom/pubmatic/sdk/common/network/POBNetworkHandler$POBNetworkResultListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pubmatic/sdk/common/base/POBCommunicator$POBErrorCustomisationListener;,
        Lcom/pubmatic/sdk/common/base/POBCommunicator$PMCommunicatorListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<AdDescriptorType::",
        "Lcom/pubmatic/sdk/common/base/POBAdDescriptor;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/pubmatic/sdk/common/network/POBNetworkHandler$POBNetworkListener<",
        "Lorg/json/JSONObject;",
        ">;",
        "Lcom/pubmatic/sdk/common/base/POBResponseParsing$PMResponseParserListener<",
        "TAdDescriptorType;>;",
        "Lcom/pubmatic/sdk/common/base/POBAdBuilding$PMAdBuilderListener<",
        "TAdDescriptorType;>;",
        "Lcom/pubmatic/sdk/common/network/POBNetworkHandler$POBNetworkResultListener;"
    }
.end annotation


# instance fields
.field private final a:Lcom/pubmatic/sdk/common/base/POBRequestBuilding;

.field private final b:Lcom/pubmatic/sdk/common/base/POBResponseParsing;

.field private final c:Lcom/pubmatic/sdk/common/base/POBAdBuilding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/pubmatic/sdk/common/base/POBAdBuilding<",
            "TAdDescriptorType;>;"
        }
    .end annotation
.end field

.field private final d:Lcom/pubmatic/sdk/common/network/POBNetworkHandler;

.field private e:Lcom/pubmatic/sdk/common/base/POBCommunicator$PMCommunicatorListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/pubmatic/sdk/common/base/POBCommunicator$PMCommunicatorListener<",
            "TAdDescriptorType;>;"
        }
    .end annotation
.end field

.field private f:Lcom/pubmatic/sdk/common/network/POBNetworkResult;

.field private g:Lcom/pubmatic/sdk/common/base/POBCommunicator$POBErrorCustomisationListener;


# direct methods
.method public constructor <init>(Lcom/pubmatic/sdk/common/base/POBRequestBuilding;Lcom/pubmatic/sdk/common/base/POBResponseParsing;Lcom/pubmatic/sdk/common/base/POBAdBuilding;Lcom/pubmatic/sdk/common/network/POBNetworkHandler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pubmatic/sdk/common/base/POBRequestBuilding;",
            "Lcom/pubmatic/sdk/common/base/POBResponseParsing;",
            "Lcom/pubmatic/sdk/common/base/POBAdBuilding<",
            "TAdDescriptorType;>;",
            "Lcom/pubmatic/sdk/common/network/POBNetworkHandler;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/pubmatic/sdk/common/base/POBCommunicator;->a:Lcom/pubmatic/sdk/common/base/POBRequestBuilding;

    iput-object p4, p0, Lcom/pubmatic/sdk/common/base/POBCommunicator;->d:Lcom/pubmatic/sdk/common/network/POBNetworkHandler;

    iput-object p3, p0, Lcom/pubmatic/sdk/common/base/POBCommunicator;->c:Lcom/pubmatic/sdk/common/base/POBAdBuilding;

    invoke-interface {p3, p0}, Lcom/pubmatic/sdk/common/base/POBAdBuilding;->setListener(Lcom/pubmatic/sdk/common/base/POBAdBuilding$PMAdBuilderListener;)V

    iput-object p2, p0, Lcom/pubmatic/sdk/common/base/POBCommunicator;->b:Lcom/pubmatic/sdk/common/base/POBResponseParsing;

    invoke-interface {p2, p0}, Lcom/pubmatic/sdk/common/base/POBResponseParsing;->setListener(Lcom/pubmatic/sdk/common/base/POBResponseParsing$PMResponseParserListener;)V

    return-void
.end method

.method private a(Lcom/pubmatic/sdk/common/POBError;)V
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/common/base/POBCommunicator;->e:Lcom/pubmatic/sdk/common/base/POBCommunicator$PMCommunicatorListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/pubmatic/sdk/common/base/POBCommunicator$PMCommunicatorListener;->onError(Lcom/pubmatic/sdk/common/POBError;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public adBuilderOnError(Lcom/pubmatic/sdk/common/POBError;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/pubmatic/sdk/common/base/POBCommunicator;->a(Lcom/pubmatic/sdk/common/POBError;)V

    return-void
.end method

.method public adBuilderOnSuccess(Lcom/pubmatic/sdk/common/models/POBAdResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pubmatic/sdk/common/models/POBAdResponse<",
            "TAdDescriptorType;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/pubmatic/sdk/common/base/POBCommunicator;->e:Lcom/pubmatic/sdk/common/base/POBCommunicator$PMCommunicatorListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/pubmatic/sdk/common/base/POBCommunicator$PMCommunicatorListener;->onSuccess(Lcom/pubmatic/sdk/common/models/POBAdResponse;)V

    :cond_0
    return-void
.end method

.method public cancel()V
    .locals 2

    iget-object v0, p0, Lcom/pubmatic/sdk/common/base/POBCommunicator;->d:Lcom/pubmatic/sdk/common/network/POBNetworkHandler;

    iget-object v1, p0, Lcom/pubmatic/sdk/common/base/POBCommunicator;->a:Lcom/pubmatic/sdk/common/base/POBRequestBuilding;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pubmatic/sdk/common/network/POBNetworkHandler;->cancelRequest(Ljava/lang/String;)V

    return-void
.end method

.method public getNetworkResult()Lcom/pubmatic/sdk/common/network/POBNetworkResult;
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/common/base/POBCommunicator;->f:Lcom/pubmatic/sdk/common/network/POBNetworkResult;

    return-object v0
.end method

.method public onFailure(Lcom/pubmatic/sdk/common/POBError;)V
    .locals 3

    iget-object v0, p0, Lcom/pubmatic/sdk/common/base/POBCommunicator;->g:Lcom/pubmatic/sdk/common/base/POBCommunicator$POBErrorCustomisationListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/pubmatic/sdk/common/base/POBCommunicator;->f:Lcom/pubmatic/sdk/common/network/POBNetworkResult;

    invoke-interface {v0, p1, v1}, Lcom/pubmatic/sdk/common/base/POBCommunicator$POBErrorCustomisationListener;->customisePOBError(Lcom/pubmatic/sdk/common/POBError;Lcom/pubmatic/sdk/common/network/POBNetworkResult;)Lcom/pubmatic/sdk/common/POBError;

    move-result-object p1

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/pubmatic/sdk/common/POBError;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "POBCommunicator"

    const-string v2, "Failed to receive an Ad response from server - %s"

    invoke-static {v1, v2, v0}, Lcom/pubmatic/sdk/common/log/PMLog;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/pubmatic/sdk/common/base/POBCommunicator;->a(Lcom/pubmatic/sdk/common/POBError;)V

    return-void
.end method

.method public onResult(Lcom/pubmatic/sdk/common/network/POBNetworkResult;)V
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/common/base/POBCommunicator;->f:Lcom/pubmatic/sdk/common/network/POBNetworkResult;

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/pubmatic/sdk/common/base/POBCommunicator;->onSuccess(Lorg/json/JSONObject;)V

    return-void
.end method

.method public onSuccess(Lorg/json/JSONObject;)V
    .locals 3

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "POBCommunicator"

    const-string v2, "Successfully received Ad response from server - %s"

    invoke-static {v1, v2, v0}, Lcom/pubmatic/sdk/common/log/PMLog;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/pubmatic/sdk/common/base/POBCommunicator;->b:Lcom/pubmatic/sdk/common/base/POBResponseParsing;

    invoke-interface {v0, p1}, Lcom/pubmatic/sdk/common/base/POBResponseParsing;->parse(Lorg/json/JSONObject;)V

    return-void
.end method

.method public parserOnError(Lcom/pubmatic/sdk/common/POBError;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/pubmatic/sdk/common/base/POBCommunicator;->a(Lcom/pubmatic/sdk/common/POBError;)V

    return-void
.end method

.method public parserOnSuccess(Lcom/pubmatic/sdk/common/models/POBAdResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pubmatic/sdk/common/models/POBAdResponse<",
            "TAdDescriptorType;>;)V"
        }
    .end annotation

    new-instance v0, Lcom/pubmatic/sdk/common/models/POBAdResponse$Builder;

    invoke-direct {v0, p1}, Lcom/pubmatic/sdk/common/models/POBAdResponse$Builder;-><init>(Lcom/pubmatic/sdk/common/models/POBAdResponse;)V

    iget-object p1, p0, Lcom/pubmatic/sdk/common/base/POBCommunicator;->c:Lcom/pubmatic/sdk/common/base/POBAdBuilding;

    invoke-virtual {v0}, Lcom/pubmatic/sdk/common/models/POBAdResponse$Builder;->build()Lcom/pubmatic/sdk/common/models/POBAdResponse;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/pubmatic/sdk/common/base/POBAdBuilding;->build(Lcom/pubmatic/sdk/common/models/POBAdResponse;)V

    return-void
.end method

.method public requestAd()V
    .locals 4

    iget-object v0, p0, Lcom/pubmatic/sdk/common/base/POBCommunicator;->a:Lcom/pubmatic/sdk/common/base/POBRequestBuilding;

    invoke-interface {v0}, Lcom/pubmatic/sdk/common/base/POBRequestBuilding;->build()Lcom/pubmatic/sdk/common/network/POBHttpRequest;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/pubmatic/sdk/common/POBError;

    const/16 v1, 0x3e9

    const-string v2, "Exception occurred while preparing this ad request"

    invoke-direct {v0, v1, v2}, Lcom/pubmatic/sdk/common/POBError;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/pubmatic/sdk/common/base/POBCommunicator;->a(Lcom/pubmatic/sdk/common/POBError;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/pubmatic/sdk/common/network/POBHttpRequest;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "POBCommunicator"

    const-string v3, "Sending an Ad request - : %s"

    invoke-static {v2, v3, v1}, Lcom/pubmatic/sdk/common/log/PMLog;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/pubmatic/sdk/common/base/POBCommunicator;->d:Lcom/pubmatic/sdk/common/network/POBNetworkHandler;

    invoke-virtual {v1, v0, p0, p0}, Lcom/pubmatic/sdk/common/network/POBNetworkHandler;->sendJSONRequest(Lcom/pubmatic/sdk/common/network/POBHttpRequest;Lcom/pubmatic/sdk/common/network/POBNetworkHandler$POBNetworkListener;Lcom/pubmatic/sdk/common/network/POBNetworkHandler$POBNetworkResultListener;)V

    :goto_0
    return-void
.end method

.method public setListener(Lcom/pubmatic/sdk/common/base/POBCommunicator$PMCommunicatorListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pubmatic/sdk/common/base/POBCommunicator$PMCommunicatorListener<",
            "TAdDescriptorType;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/pubmatic/sdk/common/base/POBCommunicator;->e:Lcom/pubmatic/sdk/common/base/POBCommunicator$PMCommunicatorListener;

    return-void
.end method

.method public setPOBErrorCustomisationListener(Lcom/pubmatic/sdk/common/base/POBCommunicator$POBErrorCustomisationListener;)V
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/common/base/POBCommunicator;->g:Lcom/pubmatic/sdk/common/base/POBCommunicator$POBErrorCustomisationListener;

    return-void
.end method
