.class public Lcom/callapp/contacts/loader/external/WhitePagesLoader;
.super Lcom/callapp/contacts/loader/external/ExternalSourcesLoader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/loader/external/WhitePagesLoader$WhitePagesListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/callapp/contacts/loader/external/ExternalSourcesLoader<",
        "Lcom/callapp/contacts/model/contact/WhitePagesData;",
        ">;"
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/String;

.field private static final c:Ljava/lang/String;


# instance fields
.field final a:Lcom/callapp/contacts/loader/api/ContactLoader;

.field private f:Landroid/webkit/WebViewClient;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 54
    new-instance v0, Ljava/lang/String;

    invoke-static {}, Lcom/callapp/contacts/util/Base64Utils;->getInstance()Lcom/callapp/contacts/util/Base64Utils;

    const-string v1, "aHR0cDovL3d3dy53aGl0ZXBhZ2VzLmNvbS9waG9uZS8lcw=="

    .line 2016
    invoke-static {v1}, Lcom/callapp/repackaged/org/apache/commons/codec/binary/Base64;->a(Ljava/lang/String;)[B

    move-result-object v1

    .line 54
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    sput-object v0, Lcom/callapp/contacts/loader/external/WhitePagesLoader;->b:Ljava/lang/String;

    .line 55
    new-instance v0, Ljava/lang/String;

    invoke-static {}, Lcom/callapp/contacts/util/Base64Utils;->getInstance()Lcom/callapp/contacts/util/Base64Utils;

    const-string v1, "d2hpdGVwYWdlcy5jb20="

    .line 3016
    invoke-static {v1}, Lcom/callapp/repackaged/org/apache/commons/codec/binary/Base64;->a(Ljava/lang/String;)[B

    move-result-object v1

    .line 55
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    sput-object v0, Lcom/callapp/contacts/loader/external/WhitePagesLoader;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/callapp/contacts/loader/api/ContactLoader;)V
    .locals 1

    .line 63
    invoke-direct {p0}, Lcom/callapp/contacts/loader/external/ExternalSourcesLoader;-><init>()V

    .line 119
    new-instance v0, Lcom/callapp/contacts/loader/external/WhitePagesLoader$1;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/loader/external/WhitePagesLoader$1;-><init>(Lcom/callapp/contacts/loader/external/WhitePagesLoader;)V

    iput-object v0, p0, Lcom/callapp/contacts/loader/external/WhitePagesLoader;->f:Landroid/webkit/WebViewClient;

    .line 64
    iput-object p1, p0, Lcom/callapp/contacts/loader/external/WhitePagesLoader;->a:Lcom/callapp/contacts/loader/api/ContactLoader;

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/loader/external/WhitePagesLoader;)Landroid/webkit/WebViewClient;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/callapp/contacts/loader/external/WhitePagesLoader;->f:Landroid/webkit/WebViewClient;

    return-object p0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .line 53
    sget-object v0, Lcom/callapp/contacts/loader/external/WhitePagesLoader;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/callapp/contacts/loader/external/WhitePagesLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/callapp/contacts/loader/external/WhitePagesLoader;->a:Lcom/callapp/contacts/loader/api/ContactLoader;

    return-object p0
.end method


# virtual methods
.method protected final synthetic a(Lcom/callapp/contacts/model/contact/ExternalSourceData;)Lcom/callapp/common/model/json/JSONExternalSourceContact;
    .locals 2

    .line 53
    check-cast p1, Lcom/callapp/contacts/model/contact/WhitePagesData;

    .line 1269
    new-instance v0, Lcom/callapp/common/model/json/JSONExternalSourceContact;

    invoke-direct {v0}, Lcom/callapp/common/model/json/JSONExternalSourceContact;-><init>()V

    .line 1270
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/WhitePagesData;->getFullName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/common/model/json/JSONExternalSourceContact;->setName(Ljava/lang/String;)V

    .line 1271
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/WhitePagesData;->getAddress()Lcom/callapp/common/model/json/JSONAddress;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1272
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/WhitePagesData;->getAddress()Lcom/callapp/common/model/json/JSONAddress;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/callapp/common/model/json/JSONExternalSourceContact;->setAddresses(Ljava/util/List;)V

    :cond_0
    return-object v0
.end method

.method protected final synthetic a(Lcom/callapp/contacts/loader/api/LoadContext;Lcom/callapp/contacts/model/contact/ExternalSourceData;)V
    .locals 2

    .line 53
    check-cast p2, Lcom/callapp/contacts/model/contact/WhitePagesData;

    .line 1284
    iget-object v0, p1, Lcom/callapp/contacts/loader/api/LoadContext;->a:Lcom/callapp/contacts/model/contact/ContactData;

    .line 1285
    invoke-virtual {v0, p2}, Lcom/callapp/contacts/model/contact/ContactData;->setWhitePagesData(Lcom/callapp/contacts/model/contact/WhitePagesData;)V

    .line 1286
    invoke-virtual {p1}, Lcom/callapp/contacts/loader/api/LoadContext;->b()Lcom/callapp/contacts/framework/util/MultiTaskRunner;

    move-result-object p2

    .line 1287
    new-instance v1, Lcom/callapp/contacts/loader/external/WhitePagesLoader$3;

    invoke-direct {v1, p0, v0}, Lcom/callapp/contacts/loader/external/WhitePagesLoader$3;-><init>(Lcom/callapp/contacts/loader/external/WhitePagesLoader;Lcom/callapp/contacts/model/contact/ContactData;)V

    invoke-virtual {p2, v1}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->a(Lcom/callapp/contacts/manager/task/Task;)V

    .line 1295
    new-instance v1, Lcom/callapp/contacts/loader/external/WhitePagesLoader$4;

    invoke-direct {v1, p0, v0}, Lcom/callapp/contacts/loader/external/WhitePagesLoader$4;-><init>(Lcom/callapp/contacts/loader/external/WhitePagesLoader;Lcom/callapp/contacts/model/contact/ContactData;)V

    invoke-virtual {p2, v1}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->a(Lcom/callapp/contacts/manager/task/Task;)V

    .line 1303
    iget-boolean v0, p0, Lcom/callapp/contacts/loader/external/WhitePagesLoader;->d:Z

    invoke-virtual {p1, p2, v0}, Lcom/callapp/contacts/loader/api/LoadContext;->a(Lcom/callapp/contacts/framework/util/MultiTaskRunner;Z)V

    return-void
.end method

.method protected final c(Lcom/callapp/contacts/loader/api/LoadContext;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/loader/api/LoadContext;",
            ")",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/model/contact/WhitePagesData;",
            ">;"
        }
    .end annotation

    .line 78
    const-class v0, Lcom/callapp/contacts/loader/external/WhitePagesLoader;

    iget-object v1, p1, Lcom/callapp/contacts/loader/api/LoadContext;->a:Lcom/callapp/contacts/model/contact/ContactData;

    .line 79
    invoke-virtual {v1}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v2

    .line 81
    invoke-virtual {v1, v0}, Lcom/callapp/contacts/model/contact/ContactData;->getLock(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    const/4 v4, 0x0

    if-eqz v2, :cond_6

    .line 83
    :try_start_0
    invoke-virtual {v1}, Lcom/callapp/contacts/model/contact/ContactData;->isContactInDevice()Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "US"

    .line 84
    invoke-virtual {v2}, Lcom/callapp/framework/phone/Phone;->getRegionCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "CA"

    invoke-virtual {v2}, Lcom/callapp/framework/phone/Phone;->getRegionCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    goto/16 :goto_1

    .line 89
    :cond_0
    invoke-virtual {v1}, Lcom/callapp/contacts/model/contact/ContactData;->getWhitePagesData()Lcom/callapp/contacts/model/contact/WhitePagesData;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 91
    invoke-virtual {v5}, Lcom/callapp/contacts/model/contact/WhitePagesData;->getFullName()Ljava/lang/String;

    move-result-object v6

    .line 92
    invoke-static {v6}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v5}, Lcom/callapp/contacts/model/contact/WhitePagesData;->getFullName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/callapp/framework/util/NameValidationUtils;->b(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 93
    invoke-static {}, Lcom/callapp/contacts/manager/cache/CacheManager;->get()Lcom/callapp/contacts/manager/cache/CacheManager;

    move-result-object v5

    invoke-virtual {p0}, Lcom/callapp/contacts/loader/external/WhitePagesLoader;->getDataClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {p0}, Lcom/callapp/contacts/loader/external/WhitePagesLoader;->getDataClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/callapp/contacts/model/contact/ContactData;->getCacheKey(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v6, v1}, Lcom/callapp/contacts/manager/cache/CacheManager;->a(Ljava/lang/Class;Ljava/lang/String;)V

    move-object v5, v4

    :cond_1
    if-eqz v5, :cond_2

    const v1, 0x7f0b0057

    .line 98
    invoke-virtual {v5, v1}, Lcom/callapp/contacts/model/contact/WhitePagesData;->isExpired(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 99
    monitor-exit v3

    return-object v4

    .line 102
    :cond_2
    invoke-static {}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->get()Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;

    move-result-object v1

    const-string/jumbo v5, "whitePagesEnabled"

    invoke-virtual {v1, v5}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string p1, "WhitePagesLoader is disabled"

    .line 103
    invoke-static {v0, p1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 104
    monitor-exit v3

    return-object v4

    .line 107
    :cond_3
    invoke-static {}, Lcom/callapp/contacts/util/http/HttpUtils;->c()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v2}, Lcom/callapp/framework/phone/Phone;->isValidForSearch()Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    .line 112
    :cond_4
    sget-object v0, Lcom/callapp/contacts/loader/external/WhitePagesLoader;->b:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v2}, Lcom/callapp/framework/phone/Phone;->b()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1155
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    new-instance v2, Lcom/callapp/contacts/loader/external/WhitePagesLoader$2;

    invoke-direct {v2, p0, p1, p0, v0}, Lcom/callapp/contacts/loader/external/WhitePagesLoader$2;-><init>(Lcom/callapp/contacts/loader/external/WhitePagesLoader;Lcom/callapp/contacts/loader/api/LoadContext;Lcom/callapp/contacts/loader/external/WhitePagesLoader;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    .line 115
    monitor-exit v3

    return-object v4

    .line 108
    :cond_5
    :goto_0
    monitor-exit v3

    return-object v4

    .line 85
    :cond_6
    :goto_1
    monitor-exit v3

    return-object v4

    :catchall_0
    move-exception p1

    .line 116
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected getDataClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/callapp/contacts/model/contact/WhitePagesData;",
            ">;"
        }
    .end annotation

    .line 259
    const-class v0, Lcom/callapp/contacts/model/contact/WhitePagesData;

    return-object v0
.end method

.method protected getExernalSourceId()I
    .locals 1

    const/16 v0, 0x3ec

    return v0
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

    .line 73
    sget-object v0, Lcom/callapp/contacts/model/contact/social/ContactFieldEnumSets;->NONE:Ljava/util/EnumSet;

    return-object v0
.end method
