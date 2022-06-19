.class public Lcom/callapp/contacts/loader/LocalGenomeLoader;
.super Lcom/callapp/contacts/loader/EagerContactLoader;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/loader/api/NetworkDataLoader;
.implements Lcom/callapp/contacts/service/jobs/ConnectionChangedService$ConnectionChangedListener;


# instance fields
.field private a:Z

.field private b:Lcom/callapp/common/model/json/JSONContact;

.field private c:Ljava/lang/Boolean;

.field private f:Lcom/callapp/contacts/loader/api/LoadContext;

.field private g:Z

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    .line 62
    invoke-direct {p0}, Lcom/callapp/contacts/loader/EagerContactLoader;-><init>()V

    const/4 v0, 0x0

    .line 60
    iput-boolean v0, p0, Lcom/callapp/contacts/loader/LocalGenomeLoader;->g:Z

    const/4 v0, 0x0

    .line 74
    iput-object v0, p0, Lcom/callapp/contacts/loader/LocalGenomeLoader;->h:Ljava/lang/String;

    .line 63
    iput-boolean p1, p0, Lcom/callapp/contacts/loader/LocalGenomeLoader;->a:Z

    return-void
.end method

.method private a(Lcom/callapp/contacts/model/contact/ContactData;)Landroid/util/Pair;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/model/contact/ContactData;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Boolean;",
            "Lcom/callapp/common/model/json/JSONContact;",
            ">;"
        }
    .end annotation

    .line 289
    const-class v0, Lcom/callapp/contacts/loader/LocalGenomeLoader;

    invoke-static {}, Lcom/callapp/contacts/util/http/HttpUtils;->getCallAppServerHost()Ljava/lang/String;

    invoke-static {}, Lcom/callapp/contacts/util/http/HttpUtils;->b()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string p1, "No internet - registering for connection changed"

    .line 290
    invoke-static {v0, p1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 291
    invoke-static {p0}, Lcom/callapp/contacts/service/jobs/ConnectionChangedService;->a(Lcom/callapp/contacts/service/jobs/ConnectionChangedService$ConnectionChangedListener;)V

    .line 292
    new-instance p1, Landroid/util/Pair;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p1, v0, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 296
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 297
    sget-object v3, Lcom/callapp/contacts/manager/preferences/Prefs;->aR:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v3}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getPhonesList()Ljava/util/List;

    move-result-object v5

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getEmails()Ljava/util/Collection;

    move-result-object v6

    iget-boolean v7, p0, Lcom/callapp/contacts/loader/LocalGenomeLoader;->a:Z

    .line 298
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->isContactInDevice()Z

    move-result v8

    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/phone/PhoneManager;->getCountryIso()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v10

    .line 297
    invoke-static/range {v4 .. v10}, Lcom/callapp/contacts/loader/GenomeLoaderHelper;->a(Ljava/lang/String;Ljava/util/List;Ljava/util/Collection;ZZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 300
    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 301
    new-instance p1, Landroid/util/Pair;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p1, v0, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 306
    :cond_1
    new-instance v1, Lcom/callapp/contacts/util/http/ValidatorHttpResponseHandler;

    invoke-direct {v1}, Lcom/callapp/contacts/util/http/ValidatorHttpResponseHandler;-><init>()V

    const-string v3, "Sending request to genome: "

    .line 307
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 308
    new-instance v3, Lcom/callapp/contacts/util/http/HttpRequestParams$HttpRequestParamsBuilder;

    invoke-direct {v3, p1}, Lcom/callapp/contacts/util/http/HttpRequestParams$HttpRequestParamsBuilder;-><init>(Ljava/lang/String;)V

    .line 4090
    iput-object v1, v3, Lcom/callapp/contacts/util/http/HttpRequestParams$HttpRequestParamsBuilder;->c:Lcom/callapp/contacts/util/http/HttpUtils$HttpResponseHandler;

    .line 308
    invoke-virtual {v3}, Lcom/callapp/contacts/util/http/HttpRequestParams$HttpRequestParamsBuilder;->a()Lcom/callapp/contacts/util/http/HttpRequestParams;

    move-result-object v3

    invoke-static {v3}, Lcom/callapp/contacts/util/http/HttpUtils;->c(Lcom/callapp/contacts/util/http/HttpRequestParams;)Z

    .line 309
    invoke-virtual {v1}, Lcom/callapp/contacts/util/http/ValidatorHttpResponseHandler;->getResult()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    const-string v3, "Received response from genome: "

    .line 310
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 311
    invoke-virtual {v1}, Lcom/callapp/contacts/util/http/ValidatorHttpResponseHandler;->getResult()Ljava/lang/String;

    move-result-object p1

    const-class v0, Lcom/callapp/common/model/json/JSONContact;

    invoke-static {p1, v0}, Lcom/callapp/contacts/util/serializer/string/Parser;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callapp/common/model/json/JSONContact;

    if-eqz p1, :cond_2

    .line 313
    invoke-static {p1}, Lcom/callapp/contacts/loader/LocalGenomeLoader;->a(Lcom/callapp/common/model/json/JSONContact;)V

    .line 4346
    invoke-virtual {p1}, Lcom/callapp/common/model/json/JSONContact;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/common/util/RegexUtils;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 4347
    invoke-virtual {p1, v2}, Lcom/callapp/common/model/json/JSONContact;->setName(Ljava/lang/String;)V

    .line 321
    :cond_2
    new-instance v0, Landroid/util/Pair;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v0, v1, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :cond_3
    const-string v1, "Received empty response from genome: "

    .line 317
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 318
    new-instance p1, Landroid/util/Pair;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    new-instance v1, Lcom/callapp/common/model/json/JSONContact;

    invoke-direct {v1}, Lcom/callapp/common/model/json/JSONContact;-><init>()V

    invoke-direct {p1, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 326
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/callapp/contacts/util/CLog;->b(Ljava/lang/Class;Ljava/lang/Throwable;)V

    .line 327
    new-instance p1, Landroid/util/Pair;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p1, v0, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    .line 323
    :goto_0
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/Singletons;->getExceptionManager()Lcom/callapp/contacts/manager/ExceptionManager;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/callapp/contacts/manager/ExceptionManager;->a(Ljava/lang/Class;Ljava/io/IOException;)V

    .line 324
    new-instance p1, Landroid/util/Pair;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p1, v0, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method private static a(Lcom/callapp/common/model/json/JSONContact;)V
    .locals 1

    if-eqz p0, :cond_2

    .line 333
    invoke-virtual {p0}, Lcom/callapp/common/model/json/JSONContact;->getEmails()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 335
    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 336
    invoke-interface {p0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/common/model/json/JSONEmail;

    if-eqz v0, :cond_1

    .line 337
    invoke-virtual {v0}, Lcom/callapp/common/model/json/JSONEmail;->getEmail()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/common/util/RegexUtils;->j(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 338
    :cond_1
    invoke-interface {p0}, Ljava/util/ListIterator;->remove()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private a(Lcom/callapp/contacts/loader/api/LoadContext;Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Set;Lcom/callapp/common/model/json/JSONContact;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/loader/api/LoadContext;",
            "Lcom/callapp/contacts/model/contact/ContactData;",
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;",
            "Lcom/callapp/common/model/json/JSONContact;",
            ")V"
        }
    .end annotation

    .line 352
    invoke-virtual {p1}, Lcom/callapp/contacts/loader/api/LoadContext;->b()Lcom/callapp/contacts/framework/util/MultiTaskRunner;

    move-result-object v0

    .line 353
    invoke-virtual {p2, p4}, Lcom/callapp/contacts/model/contact/ContactData;->setGenomeData(Lcom/callapp/common/model/json/JSONContact;)V

    if-nez p4, :cond_0

    return-void

    .line 359
    :cond_0
    sget-object v1, Lcom/callapp/contacts/model/contact/social/ContactFieldEnumSets;->NAME_FIELDS:Ljava/util/EnumSet;

    invoke-static {p3, v1}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Set;Ljava/util/Set;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 360
    invoke-virtual {p4}, Lcom/callapp/common/model/json/JSONContact;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 361
    new-instance v1, Lcom/callapp/contacts/loader/LocalGenomeLoader$1;

    invoke-direct {v1, p0, p2}, Lcom/callapp/contacts/loader/LocalGenomeLoader$1;-><init>(Lcom/callapp/contacts/loader/LocalGenomeLoader;Lcom/callapp/contacts/model/contact/ContactData;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->a(Lcom/callapp/contacts/manager/task/Task;)V

    .line 371
    :cond_1
    sget-object v1, Lcom/callapp/contacts/model/contact/social/ContactFieldEnumSets;->PHOTO_FIELDS:Ljava/util/EnumSet;

    invoke-static {p3, v1}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Set;Ljava/util/Set;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 372
    invoke-virtual {p4}, Lcom/callapp/common/model/json/JSONContact;->getPhotoUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 373
    new-instance v1, Lcom/callapp/contacts/loader/LocalGenomeLoader$2;

    invoke-direct {v1, p0, p2}, Lcom/callapp/contacts/loader/LocalGenomeLoader$2;-><init>(Lcom/callapp/contacts/loader/LocalGenomeLoader;Lcom/callapp/contacts/model/contact/ContactData;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->a(Lcom/callapp/contacts/manager/task/Task;)V

    :cond_2
    const/4 v1, 0x1

    new-array v2, v1, [Lcom/callapp/contacts/model/contact/ContactField;

    .line 383
    sget-object v3, Lcom/callapp/contacts/model/contact/ContactField;->phones:Lcom/callapp/contacts/model/contact/ContactField;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p3, v2}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 384
    invoke-virtual {p4}, Lcom/callapp/common/model/json/JSONContact;->getPhoneNumbers()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 385
    new-instance v2, Lcom/callapp/contacts/loader/LocalGenomeLoader$3;

    invoke-direct {v2, p0, p2}, Lcom/callapp/contacts/loader/LocalGenomeLoader$3;-><init>(Lcom/callapp/contacts/loader/LocalGenomeLoader;Lcom/callapp/contacts/model/contact/ContactData;)V

    invoke-virtual {v0, v2}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->a(Lcom/callapp/contacts/manager/task/Task;)V

    :cond_3
    new-array v2, v1, [Lcom/callapp/contacts/model/contact/ContactField;

    .line 395
    sget-object v3, Lcom/callapp/contacts/model/contact/ContactField;->addresses:Lcom/callapp/contacts/model/contact/ContactField;

    aput-object v3, v2, v4

    invoke-static {p3, v2}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 396
    invoke-virtual {p4}, Lcom/callapp/common/model/json/JSONContact;->getAddresses()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 397
    new-instance v2, Lcom/callapp/contacts/loader/LocalGenomeLoader$4;

    invoke-direct {v2, p0, p2}, Lcom/callapp/contacts/loader/LocalGenomeLoader$4;-><init>(Lcom/callapp/contacts/loader/LocalGenomeLoader;Lcom/callapp/contacts/model/contact/ContactData;)V

    invoke-virtual {v0, v2}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->a(Lcom/callapp/contacts/manager/task/Task;)V

    :cond_4
    new-array v2, v1, [Lcom/callapp/contacts/model/contact/ContactField;

    .line 407
    sget-object v3, Lcom/callapp/contacts/model/contact/ContactField;->birthday:Lcom/callapp/contacts/model/contact/ContactField;

    aput-object v3, v2, v4

    invoke-static {p3, v2}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 408
    invoke-virtual {p4}, Lcom/callapp/common/model/json/JSONContact;->getBirthday()Lcom/callapp/common/model/json/JSONDate;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 409
    new-instance v2, Lcom/callapp/contacts/loader/LocalGenomeLoader$5;

    invoke-direct {v2, p0, p2}, Lcom/callapp/contacts/loader/LocalGenomeLoader$5;-><init>(Lcom/callapp/contacts/loader/LocalGenomeLoader;Lcom/callapp/contacts/model/contact/ContactData;)V

    invoke-virtual {v0, v2}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->a(Lcom/callapp/contacts/manager/task/Task;)V

    :cond_5
    new-array v2, v1, [Lcom/callapp/contacts/model/contact/ContactField;

    .line 419
    sget-object v3, Lcom/callapp/contacts/model/contact/ContactField;->imAddresses:Lcom/callapp/contacts/model/contact/ContactField;

    aput-object v3, v2, v4

    invoke-static {p3, v2}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 420
    invoke-virtual {p4}, Lcom/callapp/common/model/json/JSONContact;->getIMAddresses()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 421
    new-instance v2, Lcom/callapp/contacts/loader/LocalGenomeLoader$6;

    invoke-direct {v2, p0, p2}, Lcom/callapp/contacts/loader/LocalGenomeLoader$6;-><init>(Lcom/callapp/contacts/loader/LocalGenomeLoader;Lcom/callapp/contacts/model/contact/ContactData;)V

    invoke-virtual {v0, v2}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->a(Lcom/callapp/contacts/manager/task/Task;)V

    :cond_6
    new-array v2, v1, [Lcom/callapp/contacts/model/contact/ContactField;

    .line 430
    sget-object v3, Lcom/callapp/contacts/model/contact/ContactField;->emails:Lcom/callapp/contacts/model/contact/ContactField;

    aput-object v3, v2, v4

    invoke-static {p3, v2}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 431
    invoke-virtual {p4}, Lcom/callapp/common/model/json/JSONContact;->getEmails()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 432
    new-instance v2, Lcom/callapp/contacts/loader/LocalGenomeLoader$7;

    invoke-direct {v2, p0, p2}, Lcom/callapp/contacts/loader/LocalGenomeLoader$7;-><init>(Lcom/callapp/contacts/loader/LocalGenomeLoader;Lcom/callapp/contacts/model/contact/ContactData;)V

    invoke-virtual {v0, v2}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->a(Lcom/callapp/contacts/manager/task/Task;)V

    :cond_7
    new-array v2, v1, [Lcom/callapp/contacts/model/contact/ContactField;

    .line 442
    sget-object v3, Lcom/callapp/contacts/model/contact/ContactField;->organizations:Lcom/callapp/contacts/model/contact/ContactField;

    aput-object v3, v2, v4

    invoke-static {p3, v2}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 443
    invoke-virtual {p4}, Lcom/callapp/common/model/json/JSONContact;->getOrgData()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 444
    new-instance v2, Lcom/callapp/contacts/loader/LocalGenomeLoader$8;

    invoke-direct {v2, p0, p2}, Lcom/callapp/contacts/loader/LocalGenomeLoader$8;-><init>(Lcom/callapp/contacts/loader/LocalGenomeLoader;Lcom/callapp/contacts/model/contact/ContactData;)V

    invoke-virtual {v0, v2}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->a(Lcom/callapp/contacts/manager/task/Task;)V

    .line 454
    :cond_8
    sget-object v2, Lcom/callapp/contacts/model/contact/social/ContactFieldEnumSets;->SOCIAL_NETWORKS_IDS:Ljava/util/EnumSet;

    invoke-static {p3, v2}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Set;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 455
    invoke-virtual {p4}, Lcom/callapp/common/model/json/JSONContact;->getFacebookID()Lcom/callapp/common/model/json/JSONSocialNetworkID;

    move-result-object v2

    if-nez v2, :cond_9

    invoke-virtual {p4}, Lcom/callapp/common/model/json/JSONContact;->getFoursquareID()Lcom/callapp/common/model/json/JSONSocialNetworkID;

    move-result-object v2

    if-nez v2, :cond_9

    invoke-virtual {p4}, Lcom/callapp/common/model/json/JSONContact;->getTwitterScreenName()Lcom/callapp/common/model/json/JSONSocialNetworkID;

    move-result-object v2

    if-nez v2, :cond_9

    invoke-virtual {p4}, Lcom/callapp/common/model/json/JSONContact;->getInstagramID()Lcom/callapp/common/model/json/JSONSocialNetworkID;

    move-result-object v2

    if-nez v2, :cond_9

    invoke-virtual {p4}, Lcom/callapp/common/model/json/JSONContact;->getVenueFoursquareID()Lcom/callapp/common/model/json/JSONSocialNetworkID;

    move-result-object v2

    if-nez v2, :cond_9

    invoke-virtual {p4}, Lcom/callapp/common/model/json/JSONContact;->getPinterestID()Lcom/callapp/common/model/json/JSONSocialNetworkID;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 456
    :cond_9
    new-instance v2, Lcom/callapp/contacts/loader/LocalGenomeLoader$9;

    invoke-direct {v2, p0, p2}, Lcom/callapp/contacts/loader/LocalGenomeLoader$9;-><init>(Lcom/callapp/contacts/loader/LocalGenomeLoader;Lcom/callapp/contacts/model/contact/ContactData;)V

    invoke-virtual {v0, v2}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->a(Lcom/callapp/contacts/manager/task/Task;)V

    :cond_a
    new-array v2, v1, [Lcom/callapp/contacts/model/contact/ContactField;

    .line 466
    sget-object v3, Lcom/callapp/contacts/model/contact/ContactField;->websites:Lcom/callapp/contacts/model/contact/ContactField;

    aput-object v3, v2, v4

    invoke-static {p3, v2}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 467
    invoke-virtual {p4}, Lcom/callapp/common/model/json/JSONContact;->getWebsites()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 468
    new-instance v2, Lcom/callapp/contacts/loader/LocalGenomeLoader$10;

    invoke-direct {v2, p0, p2}, Lcom/callapp/contacts/loader/LocalGenomeLoader$10;-><init>(Lcom/callapp/contacts/loader/LocalGenomeLoader;Lcom/callapp/contacts/model/contact/ContactData;)V

    invoke-virtual {v0, v2}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->a(Lcom/callapp/contacts/manager/task/Task;)V

    :cond_b
    new-array v2, v1, [Lcom/callapp/contacts/model/contact/ContactField;

    .line 478
    sget-object v3, Lcom/callapp/contacts/model/contact/ContactField;->categories:Lcom/callapp/contacts/model/contact/ContactField;

    aput-object v3, v2, v4

    invoke-static {p3, v2}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 479
    invoke-virtual {p4}, Lcom/callapp/common/model/json/JSONContact;->getCategories()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 480
    new-instance v2, Lcom/callapp/contacts/loader/LocalGenomeLoader$11;

    invoke-direct {v2, p0, p2}, Lcom/callapp/contacts/loader/LocalGenomeLoader$11;-><init>(Lcom/callapp/contacts/loader/LocalGenomeLoader;Lcom/callapp/contacts/model/contact/ContactData;)V

    invoke-virtual {v0, v2}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->a(Lcom/callapp/contacts/manager/task/Task;)V

    :cond_c
    new-array v2, v1, [Lcom/callapp/contacts/model/contact/ContactField;

    .line 490
    sget-object v3, Lcom/callapp/contacts/model/contact/ContactField;->reviews:Lcom/callapp/contacts/model/contact/ContactField;

    aput-object v3, v2, v4

    invoke-static {p3, v2}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 491
    invoke-virtual {p4}, Lcom/callapp/common/model/json/JSONContact;->getReviews()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 492
    new-instance v2, Lcom/callapp/contacts/loader/LocalGenomeLoader$12;

    invoke-direct {v2, p0, p2}, Lcom/callapp/contacts/loader/LocalGenomeLoader$12;-><init>(Lcom/callapp/contacts/loader/LocalGenomeLoader;Lcom/callapp/contacts/model/contact/ContactData;)V

    invoke-virtual {v0, v2}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->a(Lcom/callapp/contacts/manager/task/Task;)V

    :cond_d
    new-array v2, v1, [Lcom/callapp/contacts/model/contact/ContactField;

    .line 502
    sget-object v3, Lcom/callapp/contacts/model/contact/ContactField;->events:Lcom/callapp/contacts/model/contact/ContactField;

    aput-object v3, v2, v4

    invoke-static {p3, v2}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 503
    invoke-virtual {p4}, Lcom/callapp/common/model/json/JSONContact;->getEvents()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 504
    new-instance v2, Lcom/callapp/contacts/loader/LocalGenomeLoader$13;

    invoke-direct {v2, p0, p2}, Lcom/callapp/contacts/loader/LocalGenomeLoader$13;-><init>(Lcom/callapp/contacts/loader/LocalGenomeLoader;Lcom/callapp/contacts/model/contact/ContactData;)V

    invoke-virtual {v0, v2}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->a(Lcom/callapp/contacts/manager/task/Task;)V

    :cond_e
    new-array v2, v1, [Lcom/callapp/contacts/model/contact/ContactField;

    .line 514
    sget-object v3, Lcom/callapp/contacts/model/contact/ContactField;->rating:Lcom/callapp/contacts/model/contact/ContactField;

    aput-object v3, v2, v4

    invoke-static {p3, v2}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 515
    invoke-virtual {p4}, Lcom/callapp/common/model/json/JSONContact;->getAvgRating()D

    move-result-wide v2

    const-wide/high16 v5, -0x4010000000000000L    # -1.0

    cmpl-double v7, v2, v5

    if-eqz v7, :cond_f

    .line 516
    new-instance v2, Lcom/callapp/contacts/loader/LocalGenomeLoader$14;

    invoke-direct {v2, p0, p2}, Lcom/callapp/contacts/loader/LocalGenomeLoader$14;-><init>(Lcom/callapp/contacts/loader/LocalGenomeLoader;Lcom/callapp/contacts/model/contact/ContactData;)V

    invoke-virtual {v0, v2}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->a(Lcom/callapp/contacts/manager/task/Task;)V

    :cond_f
    new-array v2, v1, [Lcom/callapp/contacts/model/contact/ContactField;

    .line 526
    sget-object v3, Lcom/callapp/contacts/model/contact/ContactField;->description:Lcom/callapp/contacts/model/contact/ContactField;

    aput-object v3, v2, v4

    invoke-static {p3, v2}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 527
    invoke-virtual {p4}, Lcom/callapp/common/model/json/JSONContact;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 528
    new-instance v2, Lcom/callapp/contacts/loader/LocalGenomeLoader$15;

    invoke-direct {v2, p0, p2}, Lcom/callapp/contacts/loader/LocalGenomeLoader$15;-><init>(Lcom/callapp/contacts/loader/LocalGenomeLoader;Lcom/callapp/contacts/model/contact/ContactData;)V

    invoke-virtual {v0, v2}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->a(Lcom/callapp/contacts/manager/task/Task;)V

    :cond_10
    new-array v2, v1, [Lcom/callapp/contacts/model/contact/ContactField;

    .line 538
    sget-object v3, Lcom/callapp/contacts/model/contact/ContactField;->userDefinition:Lcom/callapp/contacts/model/contact/ContactField;

    aput-object v3, v2, v4

    invoke-static {p3, v2}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 539
    invoke-virtual {p4}, Lcom/callapp/common/model/json/JSONContact;->getUserDefinition()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 540
    new-instance v2, Lcom/callapp/contacts/loader/LocalGenomeLoader$16;

    invoke-direct {v2, p0, p2}, Lcom/callapp/contacts/loader/LocalGenomeLoader$16;-><init>(Lcom/callapp/contacts/loader/LocalGenomeLoader;Lcom/callapp/contacts/model/contact/ContactData;)V

    invoke-virtual {v0, v2}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->a(Lcom/callapp/contacts/manager/task/Task;)V

    :cond_11
    new-array v2, v1, [Lcom/callapp/contacts/model/contact/ContactField;

    .line 549
    sget-object v3, Lcom/callapp/contacts/model/contact/ContactField;->cover:Lcom/callapp/contacts/model/contact/ContactField;

    aput-object v3, v2, v4

    invoke-static {p3, v2}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 550
    invoke-virtual {p4}, Lcom/callapp/common/model/json/JSONContact;->getCover()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 551
    new-instance v2, Lcom/callapp/contacts/loader/LocalGenomeLoader$17;

    invoke-direct {v2, p0, p2}, Lcom/callapp/contacts/loader/LocalGenomeLoader$17;-><init>(Lcom/callapp/contacts/loader/LocalGenomeLoader;Lcom/callapp/contacts/model/contact/ContactData;)V

    invoke-virtual {v0, v2}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->a(Lcom/callapp/contacts/manager/task/Task;)V

    :cond_12
    new-array v2, v1, [Lcom/callapp/contacts/model/contact/ContactField;

    .line 559
    sget-object v3, Lcom/callapp/contacts/model/contact/ContactField;->latLng:Lcom/callapp/contacts/model/contact/ContactField;

    aput-object v3, v2, v4

    invoke-static {p3, v2}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 560
    invoke-virtual {p4}, Lcom/callapp/common/model/json/JSONContact;->getLat()D

    move-result-wide v2

    const-wide/16 v5, 0x0

    cmpl-double v7, v2, v5

    if-nez v7, :cond_13

    invoke-virtual {p4}, Lcom/callapp/common/model/json/JSONContact;->getLng()D

    move-result-wide v2

    cmpl-double v7, v2, v5

    if-eqz v7, :cond_14

    .line 561
    :cond_13
    new-instance v2, Lcom/callapp/contacts/loader/LocalGenomeLoader$18;

    invoke-direct {v2, p0, p2}, Lcom/callapp/contacts/loader/LocalGenomeLoader$18;-><init>(Lcom/callapp/contacts/loader/LocalGenomeLoader;Lcom/callapp/contacts/model/contact/ContactData;)V

    invoke-virtual {v0, v2}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->a(Lcom/callapp/contacts/manager/task/Task;)V

    :cond_14
    new-array v2, v1, [Lcom/callapp/contacts/model/contact/ContactField;

    .line 571
    sget-object v3, Lcom/callapp/contacts/model/contact/ContactField;->priceRange:Lcom/callapp/contacts/model/contact/ContactField;

    aput-object v3, v2, v4

    invoke-static {p3, v2}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 572
    invoke-virtual {p4}, Lcom/callapp/common/model/json/JSONContact;->getPriceRange()I

    move-result v2

    if-eqz v2, :cond_15

    .line 573
    new-instance v2, Lcom/callapp/contacts/loader/LocalGenomeLoader$19;

    invoke-direct {v2, p0, p2}, Lcom/callapp/contacts/loader/LocalGenomeLoader$19;-><init>(Lcom/callapp/contacts/loader/LocalGenomeLoader;Lcom/callapp/contacts/model/contact/ContactData;)V

    invoke-virtual {v0, v2}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->a(Lcom/callapp/contacts/manager/task/Task;)V

    :cond_15
    new-array v2, v1, [Lcom/callapp/contacts/model/contact/ContactField;

    .line 583
    sget-object v3, Lcom/callapp/contacts/model/contact/ContactField;->openingHours:Lcom/callapp/contacts/model/contact/ContactField;

    aput-object v3, v2, v4

    invoke-static {p3, v2}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 584
    invoke-virtual {p4}, Lcom/callapp/common/model/json/JSONContact;->getOpeningHours()Lcom/callapp/common/model/json/JSONOpeningHours;

    move-result-object v2

    if-eqz v2, :cond_16

    .line 585
    new-instance v2, Lcom/callapp/contacts/loader/LocalGenomeLoader$20;

    invoke-direct {v2, p0, p2}, Lcom/callapp/contacts/loader/LocalGenomeLoader$20;-><init>(Lcom/callapp/contacts/loader/LocalGenomeLoader;Lcom/callapp/contacts/model/contact/ContactData;)V

    invoke-virtual {v0, v2}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->a(Lcom/callapp/contacts/manager/task/Task;)V

    :cond_16
    new-array v2, v1, [Lcom/callapp/contacts/model/contact/ContactField;

    .line 595
    sget-object v3, Lcom/callapp/contacts/model/contact/ContactField;->menuUrl:Lcom/callapp/contacts/model/contact/ContactField;

    aput-object v3, v2, v4

    invoke-static {p3, v2}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 596
    invoke-virtual {p4}, Lcom/callapp/common/model/json/JSONContact;->getMenuUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 597
    new-instance v2, Lcom/callapp/contacts/loader/LocalGenomeLoader$21;

    invoke-direct {v2, p0, p2}, Lcom/callapp/contacts/loader/LocalGenomeLoader$21;-><init>(Lcom/callapp/contacts/loader/LocalGenomeLoader;Lcom/callapp/contacts/model/contact/ContactData;)V

    invoke-virtual {v0, v2}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->a(Lcom/callapp/contacts/manager/task/Task;)V

    :cond_17
    new-array v2, v1, [Lcom/callapp/contacts/model/contact/ContactField;

    .line 607
    sget-object v3, Lcom/callapp/contacts/model/contact/ContactField;->reserveUrl:Lcom/callapp/contacts/model/contact/ContactField;

    aput-object v3, v2, v4

    invoke-static {p3, v2}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 608
    invoke-virtual {p4}, Lcom/callapp/common/model/json/JSONContact;->getReserveUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 609
    new-instance v2, Lcom/callapp/contacts/loader/LocalGenomeLoader$22;

    invoke-direct {v2, p0, p2}, Lcom/callapp/contacts/loader/LocalGenomeLoader$22;-><init>(Lcom/callapp/contacts/loader/LocalGenomeLoader;Lcom/callapp/contacts/model/contact/ContactData;)V

    invoke-virtual {v0, v2}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->a(Lcom/callapp/contacts/manager/task/Task;)V

    :cond_18
    new-array v2, v1, [Lcom/callapp/contacts/model/contact/ContactField;

    .line 619
    sget-object v3, Lcom/callapp/contacts/model/contact/ContactField;->spamScore:Lcom/callapp/contacts/model/contact/ContactField;

    aput-object v3, v2, v4

    invoke-static {p3, v2}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;[Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_19

    .line 620
    invoke-virtual {p4}, Lcom/callapp/common/model/json/JSONContact;->getSpamScore()I

    move-result p3

    if-eqz p3, :cond_19

    .line 621
    new-instance p3, Lcom/callapp/contacts/loader/LocalGenomeLoader$23;

    invoke-direct {p3, p0, p2}, Lcom/callapp/contacts/loader/LocalGenomeLoader$23;-><init>(Lcom/callapp/contacts/loader/LocalGenomeLoader;Lcom/callapp/contacts/model/contact/ContactData;)V

    invoke-virtual {v0, p3}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->a(Lcom/callapp/contacts/manager/task/Task;)V

    .line 631
    :cond_19
    invoke-virtual {p1, v0, v1}, Lcom/callapp/contacts/loader/api/LoadContext;->a(Lcom/callapp/contacts/framework/util/MultiTaskRunner;Z)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/callapp/contacts/loader/api/LoadContext;)V
    .locals 8

    .line 155
    iput-object p1, p0, Lcom/callapp/contacts/loader/LocalGenomeLoader;->f:Lcom/callapp/contacts/loader/api/LoadContext;

    .line 156
    iget-object v0, p1, Lcom/callapp/contacts/loader/api/LoadContext;->a:Lcom/callapp/contacts/model/contact/ContactData;

    .line 159
    invoke-virtual {p1}, Lcom/callapp/contacts/loader/api/LoadContext;->getFlags()Ljava/util/Set;

    move-result-object v1

    .line 161
    iget-object v2, p1, Lcom/callapp/contacts/loader/api/LoadContext;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/callapp/contacts/model/contact/ContactData;->getLock(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 162
    :try_start_0
    invoke-static {v0}, Lcom/callapp/contacts/manager/RestrictionManager;->a(Lcom/callapp/contacts/model/contact/ContactData;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 163
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string v1, "Search"

    const-string v3, "country restricted for loading from genome"

    invoke-virtual {p1, v1, v3}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    const-class p1, Lcom/callapp/contacts/loader/LocalGenomeLoader;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "country restricted for loading from genome for numbers: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 165
    invoke-virtual {p0}, Lcom/callapp/contacts/loader/LocalGenomeLoader;->getContactField()Lcom/callapp/contacts/model/contact/ContactField;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/model/contact/ContactData;->fireChange(Lcom/callapp/contacts/model/contact/ContactField;)V

    .line 166
    monitor-exit v2

    return-void

    .line 169
    :cond_0
    iget-object v3, p1, Lcom/callapp/contacts/loader/api/LoadContext;->b:Ljava/util/Set;

    sget-object v4, Lcom/callapp/contacts/model/contact/ContactField;->phones:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-static {v4}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Set;Ljava/util/Set;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 170
    iget-object v3, p0, Lcom/callapp/contacts/loader/LocalGenomeLoader;->h:Ljava/lang/String;

    invoke-static {v0}, Lcom/callapp/contacts/loader/GenomeLoaderHelper;->a(Lcom/callapp/contacts/model/contact/ContactData;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 171
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/loader/LocalGenomeLoader;->b(Lcom/callapp/contacts/loader/api/LoadContext;)V

    .line 175
    :cond_1
    iget-object v3, p0, Lcom/callapp/contacts/loader/LocalGenomeLoader;->b:Lcom/callapp/common/model/json/JSONContact;

    .line 176
    sget-object v4, Lcom/callapp/contacts/loader/api/LoaderFlags;->loadOnlyFromCache:Lcom/callapp/contacts/loader/api/LoaderFlags;

    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_15

    if-eqz v3, :cond_2

    sget-object v4, Lcom/callapp/contacts/loader/api/LoaderFlags;->forceRefresh:Lcom/callapp/contacts/loader/api/LoaderFlags;

    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto/16 :goto_2

    :cond_2
    if-eqz v3, :cond_3

    .line 181
    invoke-virtual {v3}, Lcom/callapp/common/model/json/JSONContact;->getLastUpdated()Ljava/util/Date;

    move-result-object v1

    const v4, 0x7f0b0039

    invoke-static {v1, v4}, Lcom/callapp/contacts/util/date/DateUtils;->b(Ljava/util/Date;I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 182
    monitor-exit v2

    return-void

    .line 186
    :cond_3
    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/framework/phone/Phone;->isValidForSearch()Z

    move-result v1

    if-nez v1, :cond_4

    .line 188
    iget-object v1, p1, Lcom/callapp/contacts/loader/api/LoadContext;->b:Ljava/util/Set;

    new-instance v3, Lcom/callapp/common/model/json/JSONContact;

    invoke-direct {v3}, Lcom/callapp/common/model/json/JSONContact;-><init>()V

    invoke-direct {p0, p1, v0, v1, v3}, Lcom/callapp/contacts/loader/LocalGenomeLoader;->a(Lcom/callapp/contacts/loader/api/LoadContext;Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Set;Lcom/callapp/common/model/json/JSONContact;)V

    .line 189
    invoke-virtual {p0}, Lcom/callapp/contacts/loader/LocalGenomeLoader;->getContactField()Lcom/callapp/contacts/model/contact/ContactField;

    move-result-object p1

    invoke-virtual {p0}, Lcom/callapp/contacts/loader/LocalGenomeLoader;->getDataSource()Lcom/callapp/contacts/model/contact/DataSource;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/callapp/contacts/model/contact/ContactData;->setDataSource(Lcom/callapp/contacts/model/contact/ContactField;Lcom/callapp/contacts/model/contact/DataSource;)V

    .line 193
    invoke-virtual {p0}, Lcom/callapp/contacts/loader/LocalGenomeLoader;->getContactField()Lcom/callapp/contacts/model/contact/ContactField;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/model/contact/ContactData;->fireChange(Lcom/callapp/contacts/model/contact/ContactField;)V

    .line 195
    monitor-exit v2

    return-void

    .line 199
    :cond_4
    invoke-direct {p0, v0}, Lcom/callapp/contacts/loader/LocalGenomeLoader;->a(Lcom/callapp/contacts/model/contact/ContactData;)Landroid/util/Pair;

    move-result-object v1

    .line 201
    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->isContactInDevice()Z

    move-result v4

    if-nez v4, :cond_8

    .line 203
    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iget-object v5, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Lcom/callapp/common/model/json/JSONContact;

    .line 1261
    iget-boolean v6, p0, Lcom/callapp/contacts/loader/LocalGenomeLoader;->a:Z

    if-nez v6, :cond_8

    if-eqz v4, :cond_5

    const-string v4, "Genome had a result "

    goto :goto_0

    :cond_5
    if-eqz v5, :cond_6

    const-string v4, "Genome didn\'t have a result"

    goto :goto_0

    .line 1272
    :cond_6
    invoke-static {}, Lcom/callapp/contacts/util/http/HttpUtils;->a()Z

    move-result v4

    if-nez v4, :cond_7

    const-string v4, "No internet when trying to access genome"

    goto :goto_0

    :cond_7
    const-string v4, "Error when trying to access genome"

    .line 1283
    :goto_0
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v5

    const-string v6, "Contact Details"

    const-string v7, "Contact Details: "

    invoke-virtual {v7, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v4, v7}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    :cond_8
    iget-boolean v4, p0, Lcom/callapp/contacts/loader/LocalGenomeLoader;->a:Z

    if-nez v4, :cond_9

    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_9

    iget-object v4, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-nez v4, :cond_9

    sget-object v4, Lcom/callapp/contacts/manager/preferences/Prefs;->n:Lcom/callapp/contacts/manager/preferences/prefs/CachedPref;

    invoke-virtual {v4}, Lcom/callapp/contacts/manager/preferences/prefs/CachedPref;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 208
    invoke-static {}, Lcom/callapp/contacts/manager/FeedbackManager;->get()Lcom/callapp/contacts/manager/FeedbackManager;

    move-result-object v4

    const-string v5, "Was problem trying reaching genome"

    const/16 v6, 0x50

    .line 2206
    invoke-virtual {v4, v5, v6}, Lcom/callapp/contacts/manager/FeedbackManager;->a(Ljava/lang/String;I)V

    .line 211
    :cond_9
    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    iput-object v4, p0, Lcom/callapp/contacts/loader/LocalGenomeLoader;->c:Ljava/lang/Boolean;

    .line 212
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lcom/callapp/common/model/json/JSONContact;

    iput-object v1, p0, Lcom/callapp/contacts/loader/LocalGenomeLoader;->b:Lcom/callapp/common/model/json/JSONContact;

    if-eqz v1, :cond_12

    if-eqz v1, :cond_13

    if-nez v3, :cond_a

    goto/16 :goto_1

    .line 3119
    :cond_a
    invoke-virtual {v1}, Lcom/callapp/common/model/json/JSONContact;->getFacebookID()Lcom/callapp/common/model/json/JSONSocialNetworkID;

    move-result-object v4

    if-nez v4, :cond_b

    invoke-virtual {v3}, Lcom/callapp/common/model/json/JSONContact;->getFacebookID()Lcom/callapp/common/model/json/JSONSocialNetworkID;

    move-result-object v4

    if-eqz v4, :cond_b

    .line 3120
    invoke-virtual {v3}, Lcom/callapp/common/model/json/JSONContact;->getFacebookID()Lcom/callapp/common/model/json/JSONSocialNetworkID;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/callapp/common/model/json/JSONContact;->setFacebookID(Lcom/callapp/common/model/json/JSONSocialNetworkID;)V

    .line 3123
    :cond_b
    invoke-virtual {v1}, Lcom/callapp/common/model/json/JSONContact;->getVkID()Lcom/callapp/common/model/json/JSONSocialNetworkID;

    move-result-object v4

    if-nez v4, :cond_c

    invoke-virtual {v3}, Lcom/callapp/common/model/json/JSONContact;->getVkID()Lcom/callapp/common/model/json/JSONSocialNetworkID;

    move-result-object v4

    if-eqz v4, :cond_c

    .line 3124
    invoke-virtual {v3}, Lcom/callapp/common/model/json/JSONContact;->getVkID()Lcom/callapp/common/model/json/JSONSocialNetworkID;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/callapp/common/model/json/JSONContact;->setVkID(Lcom/callapp/common/model/json/JSONSocialNetworkID;)V

    .line 3127
    :cond_c
    invoke-virtual {v1}, Lcom/callapp/common/model/json/JSONContact;->getTwitterScreenName()Lcom/callapp/common/model/json/JSONSocialNetworkID;

    move-result-object v4

    if-nez v4, :cond_d

    invoke-virtual {v3}, Lcom/callapp/common/model/json/JSONContact;->getTwitterScreenName()Lcom/callapp/common/model/json/JSONSocialNetworkID;

    move-result-object v4

    if-eqz v4, :cond_d

    .line 3128
    invoke-virtual {v3}, Lcom/callapp/common/model/json/JSONContact;->getTwitterScreenName()Lcom/callapp/common/model/json/JSONSocialNetworkID;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/callapp/common/model/json/JSONContact;->setTwitterScreenName(Lcom/callapp/common/model/json/JSONSocialNetworkID;)V

    .line 3131
    :cond_d
    invoke-virtual {v1}, Lcom/callapp/common/model/json/JSONContact;->getFoursquareID()Lcom/callapp/common/model/json/JSONSocialNetworkID;

    move-result-object v4

    if-nez v4, :cond_e

    invoke-virtual {v3}, Lcom/callapp/common/model/json/JSONContact;->getFoursquareID()Lcom/callapp/common/model/json/JSONSocialNetworkID;

    move-result-object v4

    if-eqz v4, :cond_e

    .line 3132
    invoke-virtual {v3}, Lcom/callapp/common/model/json/JSONContact;->getFoursquareID()Lcom/callapp/common/model/json/JSONSocialNetworkID;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/callapp/common/model/json/JSONContact;->setFoursquareID(Lcom/callapp/common/model/json/JSONSocialNetworkID;)V

    .line 3135
    :cond_e
    invoke-virtual {v1}, Lcom/callapp/common/model/json/JSONContact;->getVenueFoursquareID()Lcom/callapp/common/model/json/JSONSocialNetworkID;

    move-result-object v4

    if-nez v4, :cond_f

    invoke-virtual {v3}, Lcom/callapp/common/model/json/JSONContact;->getVenueFoursquareID()Lcom/callapp/common/model/json/JSONSocialNetworkID;

    move-result-object v4

    if-eqz v4, :cond_f

    .line 3136
    invoke-virtual {v3}, Lcom/callapp/common/model/json/JSONContact;->getVenueFoursquareID()Lcom/callapp/common/model/json/JSONSocialNetworkID;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/callapp/common/model/json/JSONContact;->setVenueFoursquareID(Lcom/callapp/common/model/json/JSONSocialNetworkID;)V

    .line 3139
    :cond_f
    invoke-virtual {v1}, Lcom/callapp/common/model/json/JSONContact;->getInstagramID()Lcom/callapp/common/model/json/JSONSocialNetworkID;

    move-result-object v4

    if-nez v4, :cond_10

    invoke-virtual {v3}, Lcom/callapp/common/model/json/JSONContact;->getInstagramID()Lcom/callapp/common/model/json/JSONSocialNetworkID;

    move-result-object v4

    if-eqz v4, :cond_10

    .line 3140
    invoke-virtual {v3}, Lcom/callapp/common/model/json/JSONContact;->getInstagramID()Lcom/callapp/common/model/json/JSONSocialNetworkID;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/callapp/common/model/json/JSONContact;->setInstagramID(Lcom/callapp/common/model/json/JSONSocialNetworkID;)V

    .line 3143
    :cond_10
    invoke-virtual {v1}, Lcom/callapp/common/model/json/JSONContact;->getGooglePlacesId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_11

    invoke-virtual {v3}, Lcom/callapp/common/model/json/JSONContact;->getGooglePlacesId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_11

    .line 3144
    invoke-virtual {v3}, Lcom/callapp/common/model/json/JSONContact;->getGooglePlacesId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/callapp/common/model/json/JSONContact;->setGooglePlacesId(Ljava/lang/String;)V

    .line 3148
    :cond_11
    invoke-virtual {v1}, Lcom/callapp/common/model/json/JSONContact;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-virtual {v3}, Lcom/callapp/common/model/json/JSONContact;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_13

    .line 3149
    invoke-virtual {v3}, Lcom/callapp/common/model/json/JSONContact;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/callapp/common/model/json/JSONContact;->setName(Ljava/lang/String;)V

    goto :goto_1

    :cond_12
    if-eqz v3, :cond_13

    .line 217
    iput-object v3, p0, Lcom/callapp/contacts/loader/LocalGenomeLoader;->b:Lcom/callapp/common/model/json/JSONContact;

    .line 218
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v1}, Lcom/callapp/common/model/json/JSONContact;->setLastUpdated(Ljava/util/Date;)V

    .line 221
    :cond_13
    :goto_1
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/loader/LocalGenomeLoader;->e(Lcom/callapp/contacts/loader/api/LoadContext;)V

    .line 224
    iget-object p1, p0, Lcom/callapp/contacts/loader/LocalGenomeLoader;->b:Lcom/callapp/common/model/json/JSONContact;

    if-eqz p1, :cond_14

    .line 225
    invoke-static {v0}, Lcom/callapp/contacts/loader/GenomeLoaderHelper;->a(Lcom/callapp/contacts/model/contact/ContactData;)Ljava/lang/String;

    move-result-object p1

    .line 226
    invoke-static {}, Lcom/callapp/contacts/manager/cache/CacheManager;->get()Lcom/callapp/contacts/manager/cache/CacheManager;

    move-result-object v0

    const-class v1, Lcom/callapp/common/model/json/JSONContact;

    iget-object v3, p0, Lcom/callapp/contacts/loader/LocalGenomeLoader;->b:Lcom/callapp/common/model/json/JSONContact;

    invoke-virtual {v0, v1, p1, v3}, Lcom/callapp/contacts/manager/cache/CacheManager;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 228
    :cond_14
    monitor-exit v2

    return-void

    .line 177
    :cond_15
    :goto_2
    monitor-exit v2

    return-void

    :catchall_0
    move-exception p1

    .line 228
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final a(Z)V
    .locals 3

    .line 642
    const-class v0, Lcom/callapp/contacts/loader/LocalGenomeLoader;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Connection changed: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 645
    iget-object p1, p0, Lcom/callapp/contacts/loader/LocalGenomeLoader;->f:Lcom/callapp/contacts/loader/api/LoadContext;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/loader/LocalGenomeLoader;->a(Lcom/callapp/contacts/loader/api/LoadContext;)V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 2

    .line 636
    const-class v0, Lcom/callapp/contacts/loader/LocalGenomeLoader;

    const-string v1, "Unregistering from connection changed"

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 637
    invoke-static {p0}, Lcom/callapp/contacts/service/jobs/ConnectionChangedService;->b(Lcom/callapp/contacts/service/jobs/ConnectionChangedService$ConnectionChangedListener;)V

    return-void
.end method

.method public final b(Lcom/callapp/contacts/loader/api/LoadContext;)V
    .locals 8

    .line 84
    iget-object v0, p1, Lcom/callapp/contacts/loader/api/LoadContext;->a:Lcom/callapp/contacts/model/contact/ContactData;

    .line 85
    invoke-static {v0}, Lcom/callapp/contacts/manager/RestrictionManager;->a(Lcom/callapp/contacts/model/contact/ContactData;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 86
    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/framework/phone/Phone;->isNotEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 87
    invoke-static {v0}, Lcom/callapp/contacts/loader/GenomeLoaderHelper;->a(Lcom/callapp/contacts/model/contact/ContactData;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/loader/LocalGenomeLoader;->h:Ljava/lang/String;

    .line 88
    invoke-static {}, Lcom/callapp/contacts/manager/cache/CacheManager;->get()Lcom/callapp/contacts/manager/cache/CacheManager;

    move-result-object v0

    const-class v1, Lcom/callapp/common/model/json/JSONContact;

    iget-object v2, p0, Lcom/callapp/contacts/loader/LocalGenomeLoader;->h:Ljava/lang/String;

    const/4 v3, 0x0

    .line 1215
    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/manager/cache/CacheManager;->b(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v0

    .line 88
    check-cast v0, Lcom/callapp/common/model/json/JSONContact;

    iput-object v0, p0, Lcom/callapp/contacts/loader/LocalGenomeLoader;->b:Lcom/callapp/common/model/json/JSONContact;

    if-eqz v0, :cond_5

    .line 90
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/callapp/contacts/loader/LocalGenomeLoader;->c:Ljava/lang/Boolean;

    .line 93
    iget-object v0, p0, Lcom/callapp/contacts/loader/LocalGenomeLoader;->b:Lcom/callapp/common/model/json/JSONContact;

    invoke-virtual {v0}, Lcom/callapp/common/model/json/JSONContact;->getOrgData()Ljava/util/List;

    move-result-object v0

    .line 94
    invoke-static {v0}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 95
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 96
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/callapp/common/model/json/JSONOrgData;

    .line 97
    invoke-virtual {v3}, Lcom/callapp/common/model/json/JSONOrgData;->getCompany()Ljava/lang/String;

    move-result-object v4

    .line 98
    invoke-virtual {v3}, Lcom/callapp/common/model/json/JSONOrgData;->getTitle()Ljava/lang/String;

    move-result-object v5

    .line 99
    invoke-static {v4}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v6

    const/4 v7, 0x2

    if-eqz v6, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v4, v7, :cond_2

    :cond_1
    invoke-static {v5}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v4, v7, :cond_0

    .line 100
    :cond_2
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 104
    :cond_3
    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 108
    :cond_4
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/loader/LocalGenomeLoader;->e(Lcom/callapp/contacts/loader/api/LoadContext;)V

    :cond_5
    return-void
.end method

.method public final e(Lcom/callapp/contacts/loader/api/LoadContext;)V
    .locals 5

    .line 233
    invoke-virtual {p0}, Lcom/callapp/contacts/loader/LocalGenomeLoader;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 234
    iget-object v0, p0, Lcom/callapp/contacts/loader/LocalGenomeLoader;->c:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 235
    iget-object v0, p1, Lcom/callapp/contacts/loader/api/LoadContext;->a:Lcom/callapp/contacts/model/contact/ContactData;

    const/4 v1, 0x0

    .line 238
    iget-object v2, p0, Lcom/callapp/contacts/loader/LocalGenomeLoader;->c:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getGenomeData()Lcom/callapp/common/model/json/JSONContact;

    move-result-object v2

    iget-object v4, p0, Lcom/callapp/contacts/loader/LocalGenomeLoader;->b:Lcom/callapp/common/model/json/JSONContact;

    invoke-static {v2, v4}, Lcom/callapp/common/util/Objects;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 240
    iget-object v1, p1, Lcom/callapp/contacts/loader/api/LoadContext;->b:Ljava/util/Set;

    iget-object v2, p0, Lcom/callapp/contacts/loader/LocalGenomeLoader;->b:Lcom/callapp/common/model/json/JSONContact;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/callapp/contacts/loader/LocalGenomeLoader;->a(Lcom/callapp/contacts/loader/api/LoadContext;Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Set;Lcom/callapp/common/model/json/JSONContact;)V

    const/4 v1, 0x1

    .line 244
    :cond_0
    iget-object p1, p0, Lcom/callapp/contacts/loader/LocalGenomeLoader;->b:Lcom/callapp/common/model/json/JSONContact;

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/callapp/contacts/loader/LocalGenomeLoader;->g:Z

    if-nez p1, :cond_1

    .line 247
    iput-boolean v3, p0, Lcom/callapp/contacts/loader/LocalGenomeLoader;->g:Z

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_0
    if-eqz v3, :cond_2

    .line 252
    invoke-virtual {p0}, Lcom/callapp/contacts/loader/LocalGenomeLoader;->getContactField()Lcom/callapp/contacts/model/contact/ContactField;

    move-result-object p1

    invoke-virtual {p0}, Lcom/callapp/contacts/loader/LocalGenomeLoader;->getDataSource()Lcom/callapp/contacts/model/contact/DataSource;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/callapp/contacts/model/contact/ContactData;->setDataSource(Lcom/callapp/contacts/model/contact/ContactField;Lcom/callapp/contacts/model/contact/DataSource;)V

    .line 253
    invoke-virtual {p0}, Lcom/callapp/contacts/loader/LocalGenomeLoader;->getContactField()Lcom/callapp/contacts/model/contact/ContactField;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/model/contact/ContactData;->fireChange(Lcom/callapp/contacts/model/contact/ContactField;)V

    :cond_2
    return-void
.end method

.method protected getContactField()Lcom/callapp/contacts/model/contact/ContactField;
    .locals 1

    .line 67
    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->genomeData:Lcom/callapp/contacts/model/contact/ContactField;

    return-object v0
.end method

.method protected getDataSource()Lcom/callapp/contacts/model/contact/DataSource;
    .locals 1

    .line 71
    sget-object v0, Lcom/callapp/contacts/model/contact/DataSource;->genome:Lcom/callapp/contacts/model/contact/DataSource;

    return-object v0
.end method

.method public getListenFields()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;"
        }
    .end annotation

    .line 79
    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->phones:Lcom/callapp/contacts/model/contact/ContactField;

    sget-object v1, Lcom/callapp/contacts/model/contact/ContactField;->call:Lcom/callapp/contacts/model/contact/ContactField;

    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->emails:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-static {v0, v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method
