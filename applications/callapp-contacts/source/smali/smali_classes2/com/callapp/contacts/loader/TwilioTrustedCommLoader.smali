.class public Lcom/callapp/contacts/loader/TwilioTrustedCommLoader;
.super Lcom/callapp/contacts/loader/SimpleContactLoader;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/loader/api/NetworkDataLoader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/loader/TwilioTrustedCommLoader$JWTTokens;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/callapp/contacts/loader/SimpleContactLoader;-><init>()V

    return-void
.end method

.method private a(Lcom/callapp/contacts/loader/api/LoadContext;Lcom/callapp/contacts/model/contact/TwilioTrustedCommData;)V
    .locals 3

    .line 172
    iget-object v0, p1, Lcom/callapp/contacts/loader/api/LoadContext;->a:Lcom/callapp/contacts/model/contact/ContactData;

    .line 173
    invoke-virtual {v0, p2}, Lcom/callapp/contacts/model/contact/ContactData;->setTwilioTrustedCommData(Lcom/callapp/contacts/model/contact/TwilioTrustedCommData;)V

    .line 174
    iget-object p2, p1, Lcom/callapp/contacts/loader/api/LoadContext;->b:Ljava/util/Set;

    .line 175
    invoke-virtual {p1}, Lcom/callapp/contacts/loader/api/LoadContext;->b()Lcom/callapp/contacts/framework/util/MultiTaskRunner;

    move-result-object v1

    .line 176
    sget-object v2, Lcom/callapp/contacts/model/contact/social/ContactFieldEnumSets;->NAME_FIELDS:Ljava/util/EnumSet;

    invoke-static {p2, v2}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Set;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 177
    new-instance v2, Lcom/callapp/contacts/loader/TwilioTrustedCommLoader$1;

    invoke-direct {v2, p0, v0}, Lcom/callapp/contacts/loader/TwilioTrustedCommLoader$1;-><init>(Lcom/callapp/contacts/loader/TwilioTrustedCommLoader;Lcom/callapp/contacts/model/contact/ContactData;)V

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->a(Lcom/callapp/contacts/manager/task/Task;)V

    .line 186
    :cond_0
    sget-object v2, Lcom/callapp/contacts/model/contact/social/ContactFieldEnumSets;->PHOTO_FIELDS:Ljava/util/EnumSet;

    invoke-static {p2, v2}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Set;Ljava/util/Set;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 187
    new-instance p2, Lcom/callapp/contacts/loader/TwilioTrustedCommLoader$2;

    invoke-direct {p2, p0, v0}, Lcom/callapp/contacts/loader/TwilioTrustedCommLoader$2;-><init>(Lcom/callapp/contacts/loader/TwilioTrustedCommLoader;Lcom/callapp/contacts/model/contact/ContactData;)V

    invoke-virtual {v1, p2}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->a(Lcom/callapp/contacts/manager/task/Task;)V

    :cond_1
    const/4 p2, 0x0

    .line 196
    invoke-virtual {p1, v1, p2}, Lcom/callapp/contacts/loader/api/LoadContext;->a(Lcom/callapp/contacts/framework/util/MultiTaskRunner;Z)V

    return-void
.end method

.method private getJWTToken()Lcom/callapp/contacts/loader/TwilioTrustedCommLoader$JWTTokens;
    .locals 9

    .line 117
    const-class v0, Lcom/callapp/contacts/loader/TwilioTrustedCommLoader;

    invoke-static {}, Lcom/callapp/contacts/manager/cache/CacheManager;->get()Lcom/callapp/contacts/manager/cache/CacheManager;

    move-result-object v1

    const-class v2, Lcom/callapp/contacts/loader/TwilioTrustedCommLoader$JWTTokens;

    const-string v3, "TWCpsTokens"

    const/4 v4, 0x0

    .line 1215
    invoke-virtual {v1, v2, v3, v4}, Lcom/callapp/contacts/manager/cache/CacheManager;->b(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v1

    .line 117
    check-cast v1, Lcom/callapp/contacts/loader/TwilioTrustedCommLoader$JWTTokens;

    if-eqz v1, :cond_0

    return-object v1

    .line 123
    :cond_0
    sget-object v2, Lcom/callapp/contacts/manager/preferences/Prefs;->aR:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v2}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 124
    invoke-static {v2}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 125
    new-instance v5, Ljava/lang/StringBuilder;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    .line 126
    invoke-static {}, Lcom/callapp/contacts/util/http/HttpUtils;->getCallappServerPrefix()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    const/4 v4, 0x1

    const-string v7, "twcpsjwttoken"

    aput-object v7, v6, v4

    const-string v4, "%s%s?"

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "myp="

    .line 127
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/callapp/common/util/UrlUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&tk="

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    sget-object v2, Lcom/callapp/contacts/manager/preferences/Prefs;->aV:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v2}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    new-instance v2, Lcom/callapp/contacts/util/serializer/string/ClassParserHttpResponseHandler;

    const-class v4, Lcom/callapp/contacts/loader/TwilioTrustedCommLoader$JWTTokens;

    invoke-direct {v2, v4}, Lcom/callapp/contacts/util/serializer/string/ClassParserHttpResponseHandler;-><init>(Ljava/lang/Class;)V

    .line 131
    new-instance v4, Lcom/callapp/contacts/util/http/HttpRequestParams$HttpRequestParamsBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/callapp/contacts/util/http/HttpRequestParams$HttpRequestParamsBuilder;-><init>(Ljava/lang/String;)V

    .line 2090
    iput-object v2, v4, Lcom/callapp/contacts/util/http/HttpRequestParams$HttpRequestParamsBuilder;->c:Lcom/callapp/contacts/util/http/HttpUtils$HttpResponseHandler;

    .line 131
    invoke-virtual {v4}, Lcom/callapp/contacts/util/http/HttpRequestParams$HttpRequestParamsBuilder;->a()Lcom/callapp/contacts/util/http/HttpRequestParams;

    move-result-object v4

    invoke-static {v4}, Lcom/callapp/contacts/util/http/HttpUtils;->b(Lcom/callapp/contacts/util/http/HttpRequestParams;)Z

    .line 133
    invoke-virtual {v2}, Lcom/callapp/contacts/util/serializer/string/ClassParserHttpResponseHandler;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callapp/contacts/loader/TwilioTrustedCommLoader$JWTTokens;

    if-eqz v2, :cond_2

    .line 134
    invoke-virtual {v2}, Lcom/callapp/contacts/loader/TwilioTrustedCommLoader$JWTTokens;->getCallInfoToken()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v2}, Lcom/callapp/contacts/loader/TwilioTrustedCommLoader$JWTTokens;->getDirectoryToken()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 135
    invoke-virtual {v2}, Lcom/callapp/contacts/loader/TwilioTrustedCommLoader$JWTTokens;->getExp()Ljava/util/Date;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 136
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Lcom/callapp/contacts/loader/TwilioTrustedCommLoader$JWTTokens;->getExp()Ljava/util/Date;

    move-result-object v5

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-static {v4, v5, v6}, Lcom/callapp/contacts/util/date/DateUtils;->a(Ljava/util/Date;Ljava/util/Date;Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    const-wide/16 v6, 0x1

    cmp-long v8, v4, v6

    if-gez v8, :cond_1

    return-object v1

    :cond_1
    long-to-double v4, v4

    const-wide v6, 0x3feb333333333333L    # 0.85

    mul-double v4, v4, v6

    double-to-long v4, v4

    .line 145
    :try_start_0
    invoke-static {}, Lcom/callapp/contacts/manager/cache/CacheManager;->get()Lcom/callapp/contacts/manager/cache/CacheManager;

    move-result-object v1

    const-class v6, Lcom/callapp/contacts/loader/TwilioTrustedCommLoader$JWTTokens;

    long-to-int v5, v4

    invoke-virtual {v1, v6, v3, v2, v5}, Lcom/callapp/contacts/manager/cache/CacheManager;->b(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 147
    invoke-static {v0, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/Throwable;)V

    :goto_0
    move-object v1, v2

    goto :goto_1

    .line 154
    :cond_2
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Bad JWTToken: "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-object v1
.end method


# virtual methods
.method public final a(Lcom/callapp/contacts/loader/api/LoadContext;)V
    .locals 11

    .line 202
    const-class v0, Lcom/callapp/contacts/loader/TwilioTrustedCommLoader;

    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->aT:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 205
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->get()Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;

    move-result-object v1

    const-string v2, "twilioTrustedCommCPSEnabled"

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 209
    :cond_1
    iget-object v1, p1, Lcom/callapp/contacts/loader/api/LoadContext;->c:Ljava/util/Set;

    if-eqz v1, :cond_10

    iget-object v1, p1, Lcom/callapp/contacts/loader/api/LoadContext;->b:Ljava/util/Set;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/callapp/contacts/model/contact/ContactField;

    const/4 v3, 0x0

    sget-object v4, Lcom/callapp/contacts/model/contact/ContactField;->call:Lcom/callapp/contacts/model/contact/ContactField;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto/16 :goto_5

    .line 213
    :cond_2
    iget-object v1, p1, Lcom/callapp/contacts/loader/api/LoadContext;->a:Lcom/callapp/contacts/model/contact/ContactData;

    .line 214
    invoke-virtual {v1, v0}, Lcom/callapp/contacts/model/contact/ContactData;->getLock(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 215
    :try_start_0
    invoke-virtual {v1}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v3

    .line 217
    invoke-virtual {v3}, Lcom/callapp/framework/phone/Phone;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 218
    monitor-exit v2

    return-void

    .line 220
    :cond_3
    invoke-virtual {v3}, Lcom/callapp/framework/phone/Phone;->a()Ljava/lang/String;

    move-result-object v3

    .line 222
    invoke-direct {p0}, Lcom/callapp/contacts/loader/TwilioTrustedCommLoader;->getJWTToken()Lcom/callapp/contacts/loader/TwilioTrustedCommLoader$JWTTokens;

    move-result-object v4

    if-eqz v4, :cond_f

    .line 224
    invoke-virtual {v4}, Lcom/callapp/contacts/loader/TwilioTrustedCommLoader$JWTTokens;->getDirectoryToken()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_f

    invoke-virtual {v4}, Lcom/callapp/contacts/loader/TwilioTrustedCommLoader$JWTTokens;->getCallInfoToken()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_4

    goto/16 :goto_4

    .line 229
    :cond_4
    new-instance v5, Lcom/callapp/contacts/util/serializer/string/ClassParserHttpResponseHandler;

    const-class v6, Lcom/fasterxml/jackson/databind/JsonNode;

    invoke-direct {v5, v6}, Lcom/callapp/contacts/util/serializer/string/ClassParserHttpResponseHandler;-><init>(Ljava/lang/Class;)V

    .line 230
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v7, "Accept"

    const-string v8, "application/json"

    .line 231
    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "Authorization"

    .line 232
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Bearer "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/callapp/contacts/loader/TwilioTrustedCommLoader$JWTTokens;->getDirectoryToken()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "X-XCNAM-Sensitive-Phone-Number"

    .line 234
    invoke-interface {v6, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    new-instance v7, Lcom/callapp/contacts/util/http/HttpRequestParams$HttpRequestParamsBuilder;

    const-string v8, "https://preview.twilio.com/TrustedComms/CPS"

    invoke-direct {v7, v8}, Lcom/callapp/contacts/util/http/HttpRequestParams$HttpRequestParamsBuilder;-><init>(Ljava/lang/String;)V

    .line 3075
    iput-object v6, v7, Lcom/callapp/contacts/util/http/HttpRequestParams$HttpRequestParamsBuilder;->a:Ljava/util/Map;

    .line 3090
    iput-object v5, v7, Lcom/callapp/contacts/util/http/HttpRequestParams$HttpRequestParamsBuilder;->c:Lcom/callapp/contacts/util/http/HttpUtils$HttpResponseHandler;

    .line 236
    invoke-virtual {v7}, Lcom/callapp/contacts/util/http/HttpRequestParams$HttpRequestParamsBuilder;->a()Lcom/callapp/contacts/util/http/HttpRequestParams;

    move-result-object v7

    invoke-static {v7}, Lcom/callapp/contacts/util/http/HttpUtils;->b(Lcom/callapp/contacts/util/http/HttpRequestParams;)Z

    .line 237
    invoke-virtual {v5}, Lcom/callapp/contacts/util/serializer/string/ClassParserHttpResponseHandler;->getResult()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/fasterxml/jackson/databind/JsonNode;

    .line 239
    const-class v8, Lcom/callapp/contacts/model/contact/TwilioTrustedCommData;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "CPS directory response code: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/callapp/contacts/util/serializer/string/ClassParserHttpResponseHandler;->getResponseCode()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", json: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/callapp/contacts/util/serializer/string/ClassParserHttpResponseHandler;->getResult()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    if-eqz v7, :cond_e

    const-string v8, "cps_url"

    .line 241
    invoke-virtual {v7, v8}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v7

    if-eqz v7, :cond_d

    .line 242
    invoke-virtual {v7}, Lcom/fasterxml/jackson/databind/JsonNode;->isNull()Z

    move-result v8

    if-eqz v8, :cond_5

    goto/16 :goto_2

    .line 245
    :cond_5
    invoke-virtual {v7}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v7

    .line 247
    invoke-static {v7}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 248
    monitor-exit v2

    return-void

    :cond_6
    const/4 v8, 0x0

    .line 4034
    iput-object v8, v5, Lcom/callapp/contacts/util/serializer/string/ClassParserHttpResponseHandler;->b:Ljava/lang/Object;

    const-string v8, "X-XCNAM-Sensitive-Phone-Number"

    .line 253
    invoke-interface {v6, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "Accept"

    const-string v9, "application/json"

    .line 254
    invoke-interface {v6, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "Authorization"

    .line 255
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Bearer "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/callapp/contacts/loader/TwilioTrustedCommLoader$JWTTokens;->getCallInfoToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v6, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "X-XCNAM-Sensitive-Phone-Number-From"

    .line 256
    invoke-interface {v6, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "X-XCNAM-Sensitive-Phone-Number-To"

    .line 257
    sget-object v4, Lcom/callapp/contacts/manager/preferences/Prefs;->aR:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v4}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->get()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v6, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    new-instance v3, Lcom/callapp/contacts/util/http/HttpRequestParams$HttpRequestParamsBuilder;

    invoke-direct {v3, v7}, Lcom/callapp/contacts/util/http/HttpRequestParams$HttpRequestParamsBuilder;-><init>(Ljava/lang/String;)V

    .line 4075
    iput-object v6, v3, Lcom/callapp/contacts/util/http/HttpRequestParams$HttpRequestParamsBuilder;->a:Ljava/util/Map;

    .line 4090
    iput-object v5, v3, Lcom/callapp/contacts/util/http/HttpRequestParams$HttpRequestParamsBuilder;->c:Lcom/callapp/contacts/util/http/HttpUtils$HttpResponseHandler;

    .line 259
    invoke-virtual {v3}, Lcom/callapp/contacts/util/http/HttpRequestParams$HttpRequestParamsBuilder;->a()Lcom/callapp/contacts/util/http/HttpRequestParams;

    move-result-object v3

    invoke-static {v3}, Lcom/callapp/contacts/util/http/HttpUtils;->b(Lcom/callapp/contacts/util/http/HttpRequestParams;)Z

    .line 260
    invoke-virtual {v5}, Lcom/callapp/contacts/util/serializer/string/ClassParserHttpResponseHandler;->getResult()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fasterxml/jackson/databind/JsonNode;

    .line 262
    const-class v4, Lcom/callapp/contacts/model/contact/TwilioTrustedCommData;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "CPS url response code: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/callapp/contacts/util/serializer/string/ClassParserHttpResponseHandler;->getResponseCode()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", json: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/callapp/contacts/util/serializer/string/ClassParserHttpResponseHandler;->getResult()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    if-eqz v3, :cond_e

    const-string v4, "caller"

    .line 265
    invoke-virtual {v3, v4}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v4

    if-eqz v4, :cond_c

    .line 266
    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/JsonNode;->isNull()Z

    move-result v5

    if-eqz v5, :cond_7

    goto/16 :goto_1

    .line 269
    :cond_7
    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v4

    .line 270
    invoke-static {v4}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 271
    monitor-exit v2

    return-void

    .line 273
    :cond_8
    new-instance v5, Lcom/callapp/contacts/model/contact/TwilioTrustedCommData;

    invoke-direct {v5, v4}, Lcom/callapp/contacts/model/contact/TwilioTrustedCommData;-><init>(Ljava/lang/String;)V

    const-string v4, "logo"

    .line 276
    invoke-virtual {v3, v4}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 277
    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/JsonNode;->isNull()Z

    move-result v6

    if-nez v6, :cond_9

    .line 278
    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v4

    .line 279
    invoke-static {v4}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 280
    invoke-virtual {v5, v4}, Lcom/callapp/contacts/model/contact/TwilioTrustedCommData;->setLogoUrl(Ljava/lang/String;)V

    :cond_9
    const-string v4, "bg_color"

    .line 285
    invoke-virtual {v3, v4}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v4

    if-eqz v4, :cond_a

    .line 286
    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/JsonNode;->isNull()Z

    move-result v6

    if-nez v6, :cond_a

    .line 287
    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v4

    .line 288
    invoke-static {v4}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_a

    .line 290
    :try_start_1
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    .line 291
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/callapp/contacts/model/contact/TwilioTrustedCommData;->setLogoBgColor(Ljava/lang/Integer;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v4

    .line 293
    :try_start_2
    invoke-static {v0, v4}, Lcom/callapp/contacts/util/CLog;->b(Ljava/lang/Class;Ljava/lang/Throwable;)V

    .line 298
    :cond_a
    :goto_0
    invoke-direct {p0, p1, v5}, Lcom/callapp/contacts/loader/TwilioTrustedCommLoader;->a(Lcom/callapp/contacts/loader/api/LoadContext;Lcom/callapp/contacts/model/contact/TwilioTrustedCommData;)V

    const-string p1, "reason"

    .line 301
    invoke-virtual {v3, p1}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 302
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JsonNode;->isNull()Z

    move-result v0

    if-nez v0, :cond_b

    .line 303
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object p1

    .line 304
    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 305
    invoke-virtual {v5, p1}, Lcom/callapp/contacts/model/contact/TwilioTrustedCommData;->setCallReason(Ljava/lang/String;)V

    .line 306
    new-instance p1, Lcom/callapp/contacts/loader/TwilioTrustedCommLoader$3;

    invoke-direct {p1, p0, v1}, Lcom/callapp/contacts/loader/TwilioTrustedCommLoader$3;-><init>(Lcom/callapp/contacts/loader/TwilioTrustedCommLoader;Lcom/callapp/contacts/model/contact/ContactData;)V

    .line 311
    invoke-virtual {p1}, Lcom/callapp/contacts/loader/TwilioTrustedCommLoader$3;->execute()Lcom/callapp/contacts/manager/task/Task;

    .line 316
    :cond_b
    invoke-static {}, Lcom/callapp/contacts/manager/cache/CacheManager;->get()Lcom/callapp/contacts/manager/cache/CacheManager;

    move-result-object p1

    const-class v0, Lcom/callapp/contacts/model/contact/TwilioTrustedCommData;

    const-class v3, Lcom/callapp/contacts/model/contact/TwilioTrustedCommData;

    invoke-virtual {v1, v3}, Lcom/callapp/contacts/model/contact/ContactData;->getCacheKey(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1, v5}, Lcom/callapp/contacts/manager/cache/CacheManager;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3

    .line 267
    :cond_c
    :goto_1
    monitor-exit v2

    return-void

    .line 243
    :cond_d
    :goto_2
    monitor-exit v2

    return-void

    .line 319
    :cond_e
    :goto_3
    monitor-exit v2

    return-void

    .line 225
    :cond_f
    :goto_4
    monitor-exit v2

    return-void

    :catchall_0
    move-exception p1

    .line 319
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_10
    :goto_5
    return-void
.end method

.method public final b(Lcom/callapp/contacts/loader/api/LoadContext;)V
    .locals 4

    .line 163
    iget-object v0, p1, Lcom/callapp/contacts/loader/api/LoadContext;->a:Lcom/callapp/contacts/model/contact/ContactData;

    .line 164
    invoke-static {}, Lcom/callapp/contacts/manager/cache/CacheManager;->get()Lcom/callapp/contacts/manager/cache/CacheManager;

    move-result-object v1

    const-class v2, Lcom/callapp/contacts/model/contact/TwilioTrustedCommData;

    const-class v3, Lcom/callapp/contacts/model/contact/TwilioTrustedCommData;

    invoke-virtual {v0, v3}, Lcom/callapp/contacts/model/contact/ContactData;->getCacheKey(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    .line 2215
    invoke-virtual {v1, v2, v0, v3}, Lcom/callapp/contacts/manager/cache/CacheManager;->b(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v0

    .line 164
    check-cast v0, Lcom/callapp/contacts/model/contact/TwilioTrustedCommData;

    if-eqz v0, :cond_0

    .line 166
    invoke-direct {p0, p1, v0}, Lcom/callapp/contacts/loader/TwilioTrustedCommLoader;->a(Lcom/callapp/contacts/loader/api/LoadContext;Lcom/callapp/contacts/model/contact/TwilioTrustedCommData;)V

    :cond_0
    return-void
.end method

.method public getListenFields()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;"
        }
    .end annotation

    .line 112
    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->call:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method
