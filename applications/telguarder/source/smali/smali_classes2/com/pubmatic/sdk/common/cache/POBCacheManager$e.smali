.class Lcom/pubmatic/sdk/common/cache/POBCacheManager$e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/pubmatic/sdk/common/network/POBNetworkHandler$POBNetworkListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pubmatic/sdk/common/cache/POBCacheManager;->a(Ljava/lang/String;ILjava/lang/Integer;Lcom/pubmatic/sdk/common/cache/POBCacheManager$POBProfileConfigListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/pubmatic/sdk/common/network/POBNetworkHandler$POBNetworkListener<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/pubmatic/sdk/common/cache/POBCacheManager$POBProfileConfigListener;

.field final synthetic c:Lcom/pubmatic/sdk/common/cache/POBCacheManager;


# direct methods
.method constructor <init>(Lcom/pubmatic/sdk/common/cache/POBCacheManager;Ljava/lang/String;Lcom/pubmatic/sdk/common/cache/POBCacheManager$POBProfileConfigListener;)V
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/common/cache/POBCacheManager$e;->c:Lcom/pubmatic/sdk/common/cache/POBCacheManager;

    iput-object p2, p0, Lcom/pubmatic/sdk/common/cache/POBCacheManager$e;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/pubmatic/sdk/common/cache/POBCacheManager$e;->b:Lcom/pubmatic/sdk/common/cache/POBCacheManager$POBProfileConfigListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "PMCacheManager"

    const-string v2, "Received profile config response - %s"

    invoke-static {v1, v2, v0}, Lcom/pubmatic/sdk/common/log/PMLog;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/pubmatic/sdk/common/utility/POBUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0x3ef

    if-nez v0, :cond_1

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/pubmatic/sdk/common/models/POBProfileInfo;->build(Lorg/json/JSONObject;)Lcom/pubmatic/sdk/common/models/POBProfileInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pubmatic/sdk/common/models/POBProfileInfo;->getPartnerList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/pubmatic/sdk/common/models/POBProfileInfo;->getPartnerList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/pubmatic/sdk/common/cache/POBCacheManager$e;->c:Lcom/pubmatic/sdk/common/cache/POBCacheManager;

    invoke-static {v0}, Lcom/pubmatic/sdk/common/cache/POBCacheManager;->b(Lcom/pubmatic/sdk/common/cache/POBCacheManager;)Ljava/util/Map;

    move-result-object v0

    iget-object v2, p0, Lcom/pubmatic/sdk/common/cache/POBCacheManager$e;->a:Ljava/lang/String;

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/pubmatic/sdk/common/cache/POBCacheManager$e;->b:Lcom/pubmatic/sdk/common/cache/POBCacheManager$POBProfileConfigListener;

    invoke-virtual {v0, p1}, Lcom/pubmatic/sdk/common/cache/POBCacheManager$POBProfileConfigListener;->onSuccess(Lcom/pubmatic/sdk/common/models/POBProfileInfo;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/pubmatic/sdk/common/cache/POBCacheManager$e;->c:Lcom/pubmatic/sdk/common/cache/POBCacheManager;

    new-instance v0, Lcom/pubmatic/sdk/common/POBError;

    const/16 v2, 0xfa1

    const-string v3, "No client side partners configured for profile."

    invoke-direct {v0, v2, v3}, Lcom/pubmatic/sdk/common/POBError;-><init>(ILjava/lang/String;)V

    iget-object v2, p0, Lcom/pubmatic/sdk/common/cache/POBCacheManager$e;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/pubmatic/sdk/common/cache/POBCacheManager$e;->b:Lcom/pubmatic/sdk/common/cache/POBCacheManager$POBProfileConfigListener;

    invoke-static {p1, v0, v2, v3}, Lcom/pubmatic/sdk/common/cache/POBCacheManager;->a(Lcom/pubmatic/sdk/common/cache/POBCacheManager;Lcom/pubmatic/sdk/common/POBError;Ljava/lang/String;Lcom/pubmatic/sdk/common/cache/POBCacheManager$POBProfileConfigListener;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object v0, p0, Lcom/pubmatic/sdk/common/cache/POBCacheManager$e;->c:Lcom/pubmatic/sdk/common/cache/POBCacheManager;

    new-instance v2, Lcom/pubmatic/sdk/common/POBError;

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, v1, p1}, Lcom/pubmatic/sdk/common/POBError;-><init>(ILjava/lang/String;)V

    iget-object p1, p0, Lcom/pubmatic/sdk/common/cache/POBCacheManager$e;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/pubmatic/sdk/common/cache/POBCacheManager$e;->b:Lcom/pubmatic/sdk/common/cache/POBCacheManager$POBProfileConfigListener;

    invoke-static {v0, v2, p1, v1}, Lcom/pubmatic/sdk/common/cache/POBCacheManager;->a(Lcom/pubmatic/sdk/common/cache/POBCacheManager;Lcom/pubmatic/sdk/common/POBError;Ljava/lang/String;Lcom/pubmatic/sdk/common/cache/POBCacheManager$POBProfileConfigListener;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/pubmatic/sdk/common/cache/POBCacheManager$e;->c:Lcom/pubmatic/sdk/common/cache/POBCacheManager;

    new-instance v0, Lcom/pubmatic/sdk/common/POBError;

    const-string v2, "Failed to fetch the config."

    invoke-direct {v0, v1, v2}, Lcom/pubmatic/sdk/common/POBError;-><init>(ILjava/lang/String;)V

    iget-object v1, p0, Lcom/pubmatic/sdk/common/cache/POBCacheManager$e;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/pubmatic/sdk/common/cache/POBCacheManager$e;->b:Lcom/pubmatic/sdk/common/cache/POBCacheManager$POBProfileConfigListener;

    invoke-static {p1, v0, v1, v2}, Lcom/pubmatic/sdk/common/cache/POBCacheManager;->a(Lcom/pubmatic/sdk/common/cache/POBCacheManager;Lcom/pubmatic/sdk/common/POBError;Ljava/lang/String;Lcom/pubmatic/sdk/common/cache/POBCacheManager$POBProfileConfigListener;)V

    :goto_0
    return-void
.end method

.method public onFailure(Lcom/pubmatic/sdk/common/POBError;)V
    .locals 3

    iget-object v0, p0, Lcom/pubmatic/sdk/common/cache/POBCacheManager$e;->c:Lcom/pubmatic/sdk/common/cache/POBCacheManager;

    iget-object v1, p0, Lcom/pubmatic/sdk/common/cache/POBCacheManager$e;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/pubmatic/sdk/common/cache/POBCacheManager$e;->b:Lcom/pubmatic/sdk/common/cache/POBCacheManager$POBProfileConfigListener;

    invoke-static {v0, p1, v1, v2}, Lcom/pubmatic/sdk/common/cache/POBCacheManager;->a(Lcom/pubmatic/sdk/common/cache/POBCacheManager;Lcom/pubmatic/sdk/common/POBError;Ljava/lang/String;Lcom/pubmatic/sdk/common/cache/POBCacheManager$POBProfileConfigListener;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/pubmatic/sdk/common/cache/POBCacheManager$e;->a(Ljava/lang/String;)V

    return-void
.end method
