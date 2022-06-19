.class public Lcom/pubmatic/sdk/openwrap/core/internal/POBResponseParser;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/pubmatic/sdk/common/base/POBResponseParsing;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/pubmatic/sdk/common/base/POBResponseParsing<",
        "Lcom/pubmatic/sdk/openwrap/core/POBBid;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/pubmatic/sdk/common/base/POBResponseParsing$PMResponseParserListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/pubmatic/sdk/common/base/POBResponseParsing$PMResponseParserListener<",
            "Lcom/pubmatic/sdk/openwrap/core/POBBid;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v2, "PMResponseParser"

    const-string v3, "response :%s"

    invoke-static {v2, v3, v0}, Lcom/pubmatic/sdk/common/log/PMLog;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    new-instance v0, Lcom/pubmatic/sdk/common/models/POBAdResponse$Builder;

    invoke-direct {v0, p1}, Lcom/pubmatic/sdk/common/models/POBAdResponse$Builder;-><init>(Lorg/json/JSONObject;)V

    iget-object p1, p0, Lcom/pubmatic/sdk/openwrap/core/internal/POBResponseParser;->a:Lcom/pubmatic/sdk/common/base/POBResponseParsing$PMResponseParserListener;

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Lcom/pubmatic/sdk/common/models/POBAdResponse$Builder;->build()Lcom/pubmatic/sdk/common/models/POBAdResponse;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/pubmatic/sdk/common/base/POBResponseParsing$PMResponseParserListener;->parserOnSuccess(Lcom/pubmatic/sdk/common/models/POBAdResponse;)V

    goto :goto_0

    :cond_0
    const-string p1, "Listener not set to respond back for invalid input"

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {v2, p1, v0}, Lcom/pubmatic/sdk/common/log/PMLog;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/core/internal/POBResponseParser;->a:Lcom/pubmatic/sdk/common/base/POBResponseParsing$PMResponseParserListener;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/pubmatic/sdk/common/POBError;

    const/16 v2, 0x3ef

    invoke-direct {v1, v2, p1}, Lcom/pubmatic/sdk/common/POBError;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/pubmatic/sdk/common/base/POBResponseParsing$PMResponseParserListener;->parserOnError(Lcom/pubmatic/sdk/common/POBError;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setListener(Lcom/pubmatic/sdk/common/base/POBResponseParsing$PMResponseParserListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pubmatic/sdk/common/base/POBResponseParsing$PMResponseParserListener<",
            "Lcom/pubmatic/sdk/openwrap/core/POBBid;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/pubmatic/sdk/openwrap/core/internal/POBResponseParser;->a:Lcom/pubmatic/sdk/common/base/POBResponseParsing$PMResponseParserListener;

    return-void
.end method
