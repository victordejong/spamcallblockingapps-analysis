.class Lcom/pubmatic/sdk/common/network/POBNetworkHandler$c;
.super Lcom/android/volley/toolbox/StringRequest;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pubmatic/sdk/common/network/POBNetworkHandler;->sendRequest(Lcom/pubmatic/sdk/common/network/POBHttpRequest;Lcom/pubmatic/sdk/common/network/POBNetworkHandler$POBNetworkListener;Lcom/pubmatic/sdk/common/network/POBNetworkHandler$k;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pubmatic/sdk/common/network/POBHttpRequest;


# direct methods
.method constructor <init>(Lcom/pubmatic/sdk/common/network/POBNetworkHandler;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Lcom/pubmatic/sdk/common/network/POBHttpRequest;)V
    .locals 0

    iput-object p6, p0, Lcom/pubmatic/sdk/common/network/POBNetworkHandler$c;->a:Lcom/pubmatic/sdk/common/network/POBHttpRequest;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/volley/toolbox/StringRequest;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    return-void
.end method


# virtual methods
.method public getBody()[B
    .locals 2

    iget-object v0, p0, Lcom/pubmatic/sdk/common/network/POBNetworkHandler$c;->a:Lcom/pubmatic/sdk/common/network/POBHttpRequest;

    invoke-virtual {v0}, Lcom/pubmatic/sdk/common/network/POBHttpRequest;->getPostData()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/pubmatic/sdk/common/network/POBNetworkHandler$c;->a:Lcom/pubmatic/sdk/common/network/POBHttpRequest;

    invoke-virtual {v0}, Lcom/pubmatic/sdk/common/network/POBHttpRequest;->getPostData()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/pubmatic/sdk/common/network/POBNetworkHandler$c;->a:Lcom/pubmatic/sdk/common/network/POBHttpRequest;

    invoke-virtual {v0}, Lcom/pubmatic/sdk/common/network/POBHttpRequest;->getHeaders()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
