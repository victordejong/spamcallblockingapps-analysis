.class Lcom/callapp/contacts/api/helper/instagram/InstagramHelper$2;
.super Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$SocialCallable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/api/helper/instagram/InstagramHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$SocialCallable<",
        "Lcom/callapp/contacts/api/helper/instagram/fulljsondata/JSONFullInstagramData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/callapp/contacts/api/helper/instagram/InstagramHelper;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/api/helper/instagram/InstagramHelper;Ljava/lang/String;)V
    .locals 0

    .line 337
    iput-object p1, p0, Lcom/callapp/contacts/api/helper/instagram/InstagramHelper$2;->b:Lcom/callapp/contacts/api/helper/instagram/InstagramHelper;

    iput-object p2, p0, Lcom/callapp/contacts/api/helper/instagram/InstagramHelper$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$SocialCallable;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 4

    .line 1340
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "https://www.instagram.com/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/callapp/contacts/api/helper/instagram/InstagramHelper$2;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/?__a=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1342
    new-instance v1, Lcom/callapp/contacts/util/serializer/string/ClassParserHttpResponseHandler;

    const-class v2, Lcom/callapp/contacts/api/helper/instagram/fulljsondata/JSONFullInstagramData;

    invoke-direct {v1, v2}, Lcom/callapp/contacts/util/serializer/string/ClassParserHttpResponseHandler;-><init>(Ljava/lang/Class;)V

    .line 1343
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

    .line 1343
    invoke-virtual {v2}, Lcom/callapp/contacts/util/http/HttpRequestParams$HttpRequestParamsBuilder;->a()Lcom/callapp/contacts/util/http/HttpRequestParams;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/contacts/util/http/HttpUtils;->b(Lcom/callapp/contacts/util/http/HttpRequestParams;)Z

    .line 1345
    invoke-virtual {v1}, Lcom/callapp/contacts/util/serializer/string/ClassParserHttpResponseHandler;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/api/helper/instagram/fulljsondata/JSONFullInstagramData;

    return-object v0
.end method

.method public getCacheKey()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 350
    iget-object v1, p0, Lcom/callapp/contacts/api/helper/instagram/InstagramHelper$2;->a:Ljava/lang/String;

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
