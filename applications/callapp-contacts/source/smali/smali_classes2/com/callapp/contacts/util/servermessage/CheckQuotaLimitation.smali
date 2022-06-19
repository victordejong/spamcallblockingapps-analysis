.class public Lcom/callapp/contacts/util/servermessage/CheckQuotaLimitation;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/Object;

.field private static b:Lcom/callapp/common/model/json/JSONQuotaLimitation;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/callapp/contacts/util/servermessage/CheckQuotaLimitation;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Lcom/callapp/common/model/json/JSONQuotaLimitation;
    .locals 1

    .line 21
    invoke-static {}, Lcom/callapp/contacts/util/servermessage/CheckQuotaLimitation;->getServerQuotaLimitation()Lcom/callapp/common/model/json/JSONQuotaLimitation;

    move-result-object v0

    return-object v0
.end method

.method public static a(Z)Lcom/callapp/common/model/json/JSONQuotaLimitation;
    .locals 4

    .line 47
    invoke-static {}, Lcom/callapp/contacts/manager/cache/CacheManager;->get()Lcom/callapp/contacts/manager/cache/CacheManager;

    move-result-object v0

    const-class v1, Lcom/callapp/common/model/json/JSONQuotaLimitation;

    const-string v2, "quota_limitation"

    const/4 v3, 0x0

    .line 1215
    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/manager/cache/CacheManager;->b(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v0

    .line 47
    check-cast v0, Lcom/callapp/common/model/json/JSONQuotaLimitation;

    if-eqz p0, :cond_0

    return-object v0

    :cond_0
    if-nez v0, :cond_1

    .line 53
    invoke-static {}, Lcom/callapp/contacts/util/servermessage/CheckQuotaLimitation;->getServerQuotaLimitation()Lcom/callapp/common/model/json/JSONQuotaLimitation;

    move-result-object v0

    goto :goto_0

    .line 54
    :cond_1
    invoke-virtual {v0}, Lcom/callapp/common/model/json/JSONQuotaLimitation;->isExpired()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 55
    new-instance p0, Lcom/callapp/contacts/util/servermessage/CheckQuotaLimitation$1;

    invoke-direct {p0}, Lcom/callapp/contacts/util/servermessage/CheckQuotaLimitation$1;-><init>()V

    .line 62
    invoke-virtual {p0}, Lcom/callapp/contacts/util/servermessage/CheckQuotaLimitation$1;->execute()Lcom/callapp/contacts/manager/task/Task;

    :cond_2
    :goto_0
    return-object v0
.end method

.method private static getServerQuotaLimitation()Lcom/callapp/common/model/json/JSONQuotaLimitation;
    .locals 6

    .line 69
    invoke-static {}, Lcom/callapp/contacts/util/http/HttpUtils;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 70
    sget-object v0, Lcom/callapp/contacts/util/servermessage/CheckQuotaLimitation;->b:Lcom/callapp/common/model/json/JSONQuotaLimitation;

    if-nez v0, :cond_3

    .line 71
    sget-object v0, Lcom/callapp/contacts/util/servermessage/CheckQuotaLimitation;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 72
    :try_start_0
    sget-object v1, Lcom/callapp/contacts/util/servermessage/CheckQuotaLimitation;->b:Lcom/callapp/common/model/json/JSONQuotaLimitation;

    if-nez v1, :cond_2

    .line 73
    new-instance v1, Lcom/callapp/contacts/util/servermessage/CheckQuotaLimitation$2;

    invoke-direct {v1}, Lcom/callapp/contacts/util/servermessage/CheckQuotaLimitation$2;-><init>()V

    .line 75
    new-instance v2, Lcom/callapp/contacts/util/serializer/string/TypeReferenceParserHttpResponseHandler;

    invoke-direct {v2, v1}, Lcom/callapp/contacts/util/serializer/string/TypeReferenceParserHttpResponseHandler;-><init>(Lcom/fasterxml/jackson/core/type/TypeReference;)V

    .line 78
    invoke-static {}, Lcom/callapp/contacts/util/http/HttpUtils;->getCallAppServerHost()Ljava/lang/String;

    invoke-static {}, Lcom/callapp/contacts/util/http/HttpUtils;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2105
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/callapp/contacts/util/http/HttpUtils;->getCallappServerPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "cq"

    .line 2106
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "?"

    .line 2107
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "myp"

    .line 2108
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "="

    .line 2109
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2110
    sget-object v3, Lcom/callapp/contacts/manager/preferences/Prefs;->aR:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v3}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/callapp/common/util/UrlUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "&"

    .line 2111
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "tk"

    .line 2112
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "="

    .line 2113
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2114
    sget-object v3, Lcom/callapp/contacts/manager/preferences/Prefs;->aV:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v3}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2116
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 80
    new-instance v3, Lcom/callapp/contacts/util/http/HttpRequestParams$HttpRequestParamsBuilder;

    invoke-direct {v3, v1}, Lcom/callapp/contacts/util/http/HttpRequestParams$HttpRequestParamsBuilder;-><init>(Ljava/lang/String;)V

    .line 3090
    iput-object v2, v3, Lcom/callapp/contacts/util/http/HttpRequestParams$HttpRequestParamsBuilder;->c:Lcom/callapp/contacts/util/http/HttpUtils$HttpResponseHandler;

    .line 80
    invoke-virtual {v3}, Lcom/callapp/contacts/util/http/HttpRequestParams$HttpRequestParamsBuilder;->a()Lcom/callapp/contacts/util/http/HttpRequestParams;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/contacts/util/http/HttpUtils;->b(Lcom/callapp/contacts/util/http/HttpRequestParams;)Z

    .line 83
    :cond_0
    invoke-virtual {v2}, Lcom/callapp/contacts/util/serializer/string/TypeReferenceParserHttpResponseHandler;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 84
    invoke-static {v1}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Map;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 85
    new-instance v2, Lcom/callapp/common/model/json/JSONQuotaLimitation;

    invoke-direct {v2, v1}, Lcom/callapp/common/model/json/JSONQuotaLimitation;-><init>(Ljava/util/Map;)V

    sput-object v2, Lcom/callapp/contacts/util/servermessage/CheckQuotaLimitation;->b:Lcom/callapp/common/model/json/JSONQuotaLimitation;

    .line 86
    invoke-static {}, Lcom/callapp/contacts/manager/cache/CacheManager;->get()Lcom/callapp/contacts/manager/cache/CacheManager;

    move-result-object v1

    const-class v2, Lcom/callapp/common/model/json/JSONQuotaLimitation;

    const-string v3, "quota_limitation"

    sget-object v4, Lcom/callapp/contacts/util/servermessage/CheckQuotaLimitation;->b:Lcom/callapp/common/model/json/JSONQuotaLimitation;

    const v5, 0x7f0b0056

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/callapp/contacts/manager/cache/CacheManager;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;I)V

    .line 90
    :cond_1
    sget-object v1, Lcom/callapp/contacts/util/servermessage/CheckQuotaLimitation;->b:Lcom/callapp/common/model/json/JSONQuotaLimitation;

    if-nez v1, :cond_2

    .line 93
    new-instance v1, Lcom/callapp/common/model/json/JSONQuotaLimitation;

    invoke-direct {v1}, Lcom/callapp/common/model/json/JSONQuotaLimitation;-><init>()V

    sput-object v1, Lcom/callapp/contacts/util/servermessage/CheckQuotaLimitation;->b:Lcom/callapp/common/model/json/JSONQuotaLimitation;

    .line 94
    invoke-static {}, Lcom/callapp/contacts/manager/cache/CacheManager;->get()Lcom/callapp/contacts/manager/cache/CacheManager;

    move-result-object v1

    const-class v2, Lcom/callapp/common/model/json/JSONQuotaLimitation;

    const-string v3, "quota_limitation"

    sget-object v4, Lcom/callapp/contacts/util/servermessage/CheckQuotaLimitation;->b:Lcom/callapp/common/model/json/JSONQuotaLimitation;

    const v5, 0x7f0b001e

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/callapp/contacts/manager/cache/CacheManager;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;I)V

    .line 98
    :cond_2
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 101
    :cond_3
    :goto_0
    sget-object v0, Lcom/callapp/contacts/util/servermessage/CheckQuotaLimitation;->b:Lcom/callapp/common/model/json/JSONQuotaLimitation;

    return-object v0
.end method
