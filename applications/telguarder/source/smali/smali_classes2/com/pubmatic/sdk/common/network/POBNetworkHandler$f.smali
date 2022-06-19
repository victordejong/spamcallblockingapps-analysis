.class Lcom/pubmatic/sdk/common/network/POBNetworkHandler$f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pubmatic/sdk/common/network/POBNetworkHandler;->c(Lcom/pubmatic/sdk/common/network/POBHttpRequest;Lcom/pubmatic/sdk/common/network/POBNetworkHandler$POBNetworkListener;Lcom/pubmatic/sdk/common/network/POBNetworkHandler$k;Lcom/pubmatic/sdk/common/network/POBNetworkHandler$POBNetworkResultListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/pubmatic/sdk/common/network/POBNetworkHandler$POBNetworkListener;


# direct methods
.method constructor <init>(Lcom/pubmatic/sdk/common/network/POBNetworkHandler;Lcom/pubmatic/sdk/common/network/POBNetworkHandler$POBNetworkListener;)V
    .locals 0

    iput-object p2, p0, Lcom/pubmatic/sdk/common/network/POBNetworkHandler$f;->a:Lcom/pubmatic/sdk/common/network/POBNetworkHandler$POBNetworkListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)V
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/common/network/POBNetworkHandler$f;->a:Lcom/pubmatic/sdk/common/network/POBNetworkHandler$POBNetworkListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/pubmatic/sdk/common/network/POBNetworkHandler$POBNetworkListener;->onSuccess(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/pubmatic/sdk/common/network/POBNetworkHandler$f;->a(Lorg/json/JSONObject;)V

    return-void
.end method
