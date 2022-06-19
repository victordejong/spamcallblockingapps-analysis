.class Lcom/callapp/contacts/api/helper/instagram/InstagramHelper$1;
.super Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$SocialCallable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/api/helper/instagram/InstagramHelper;->l(Ljava/lang/String;)Lcom/callapp/contacts/api/helper/instagram/minimaljsondata/JSONMinimalInstagramData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$SocialCallable<",
        "Lcom/callapp/contacts/api/helper/instagram/minimaljsondata/JSONMinimalInstagramData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/callapp/contacts/api/helper/instagram/InstagramHelper;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/api/helper/instagram/InstagramHelper;Ljava/lang/String;)V
    .locals 0

    .line 304
    iput-object p1, p0, Lcom/callapp/contacts/api/helper/instagram/InstagramHelper$1;->b:Lcom/callapp/contacts/api/helper/instagram/InstagramHelper;

    iput-object p2, p0, Lcom/callapp/contacts/api/helper/instagram/InstagramHelper$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$SocialCallable;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 4

    .line 1307
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 1308
    iget-object v1, p0, Lcom/callapp/contacts/api/helper/instagram/InstagramHelper$1;->a:Ljava/lang/String;

    const-string v2, "user_id"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1309
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "include_reel"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1311
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "https://www.instagram.com/graphql/query/?query_hash=c9100bf9110dd6361671f113dd02e7d6&variables="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1313
    new-instance v1, Lcom/callapp/contacts/util/serializer/string/ClassParserHttpResponseHandler;

    const-class v2, Lcom/callapp/contacts/api/helper/instagram/minimaljsondata/JSONMinimalInstagramData;

    invoke-direct {v1, v2}, Lcom/callapp/contacts/util/serializer/string/ClassParserHttpResponseHandler;-><init>(Ljava/lang/Class;)V

    .line 1314
    new-instance v2, Lcom/callapp/contacts/util/http/HttpRequestParams$HttpRequestParamsBuilder;

    invoke-direct {v2, v0}, Lcom/callapp/contacts/util/http/HttpRequestParams$HttpRequestParamsBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->get()Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;

    move-result-object v0

    const-string v3, "webViewUserAgent"

    invoke-virtual {v0, v3}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2095
    iput-object v0, v2, Lcom/callapp/contacts/util/http/HttpRequestParams$HttpRequestParamsBuilder;->d:Ljava/lang/String;

    .line 3090
    iput-object v1, v2, Lcom/callapp/contacts/util/http/HttpRequestParams$HttpRequestParamsBuilder;->c:Lcom/callapp/contacts/util/http/HttpUtils$HttpResponseHandler;

    .line 1314
    invoke-virtual {v2}, Lcom/callapp/contacts/util/http/HttpRequestParams$HttpRequestParamsBuilder;->a()Lcom/callapp/contacts/util/http/HttpRequestParams;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/contacts/util/http/HttpUtils;->b(Lcom/callapp/contacts/util/http/HttpRequestParams;)Z

    .line 1316
    invoke-virtual {v1}, Lcom/callapp/contacts/util/serializer/string/ClassParserHttpResponseHandler;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/api/helper/instagram/minimaljsondata/JSONMinimalInstagramData;

    return-object v0
.end method

.method public getCacheKey()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 321
    iget-object v1, p0, Lcom/callapp/contacts/api/helper/instagram/InstagramHelper$1;->a:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "instagram_user_%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCacheTtl()I
    .locals 1

    const v0, 0x7f0b0028

    return v0
.end method

.method public getRefreshInterval()I
    .locals 1

    const v0, 0x7f0b0029

    return v0
.end method
