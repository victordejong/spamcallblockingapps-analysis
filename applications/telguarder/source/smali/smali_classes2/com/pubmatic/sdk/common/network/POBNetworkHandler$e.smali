.class Lcom/pubmatic/sdk/common/network/POBNetworkHandler$e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pubmatic/sdk/common/network/POBNetworkHandler;->sendImageRequest(Lcom/pubmatic/sdk/common/network/POBImageRequest;Lcom/pubmatic/sdk/common/network/POBNetworkHandler$POBImageNetworkListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pubmatic/sdk/common/network/POBNetworkHandler$POBImageNetworkListener;


# direct methods
.method constructor <init>(Lcom/pubmatic/sdk/common/network/POBNetworkHandler;Lcom/pubmatic/sdk/common/network/POBNetworkHandler$POBImageNetworkListener;)V
    .locals 0

    iput-object p2, p0, Lcom/pubmatic/sdk/common/network/POBNetworkHandler$e;->a:Lcom/pubmatic/sdk/common/network/POBNetworkHandler$POBImageNetworkListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 2

    iget-object p1, p0, Lcom/pubmatic/sdk/common/network/POBNetworkHandler$e;->a:Lcom/pubmatic/sdk/common/network/POBNetworkHandler$POBImageNetworkListener;

    if-eqz p1, :cond_0

    new-instance p1, Lcom/pubmatic/sdk/common/POBError;

    const/16 v0, 0x3ef

    const-string v1, "not able to fetch response"

    invoke-direct {p1, v0, v1}, Lcom/pubmatic/sdk/common/POBError;-><init>(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/pubmatic/sdk/common/network/POBNetworkHandler$e;->a:Lcom/pubmatic/sdk/common/network/POBNetworkHandler$POBImageNetworkListener;

    invoke-interface {v0, p1}, Lcom/pubmatic/sdk/common/network/POBNetworkHandler$POBImageNetworkListener;->onFailure(Lcom/pubmatic/sdk/common/POBError;)V

    :cond_0
    return-void
.end method
