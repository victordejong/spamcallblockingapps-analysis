.class public abstract Lcom/callapp/contacts/loader/external/ExternalSourcesLoader;
.super Lcom/callapp/contacts/loader/SimpleContactLoader;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/loader/api/NetworkDataLoader;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/callapp/contacts/model/contact/ExternalSourceData;",
        ">",
        "Lcom/callapp/contacts/loader/SimpleContactLoader;",
        "Lcom/callapp/contacts/loader/api/NetworkDataLoader;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/callapp/contacts/loader/SimpleContactLoader;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract a(Lcom/callapp/contacts/model/contact/ExternalSourceData;)Lcom/callapp/common/model/json/JSONExternalSourceContact;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/callapp/common/model/json/JSONExternalSourceContact;"
        }
    .end annotation
.end method

.method protected a(Ljava/util/List;)Lcom/callapp/contacts/model/contact/ExternalSourceData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 64
    invoke-static {p1}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 65
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/model/contact/ExternalSourceData;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(Lcom/callapp/contacts/loader/api/LoadContext;)V
    .locals 2

    const/4 v0, 0x1

    .line 75
    invoke-static {v0}, Lcom/callapp/contacts/util/servermessage/CheckQuotaLimitation;->a(Z)Lcom/callapp/common/model/json/JSONQuotaLimitation;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {v0}, Lcom/callapp/common/model/json/JSONQuotaLimitation;->getQuotaLimitationMap()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {p0}, Lcom/callapp/contacts/loader/external/ExternalSourcesLoader;->getExernalSourceId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/common/model/json/QuotaLimitPOJO;

    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {v0}, Lcom/callapp/common/model/json/QuotaLimitPOJO;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 87
    :cond_0
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/loader/external/ExternalSourcesLoader;->c(Lcom/callapp/contacts/loader/api/LoadContext;)Ljava/util/List;

    move-result-object v0

    .line 88
    invoke-virtual {p0, p1, v0}, Lcom/callapp/contacts/loader/external/ExternalSourcesLoader;->a(Lcom/callapp/contacts/loader/api/LoadContext;Ljava/util/List;)V

    return-void
.end method

.method protected abstract a(Lcom/callapp/contacts/loader/api/LoadContext;Lcom/callapp/contacts/model/contact/ExternalSourceData;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/loader/api/LoadContext;",
            "TT;)V"
        }
    .end annotation
.end method

.method protected final a(Lcom/callapp/contacts/loader/api/LoadContext;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/loader/api/LoadContext;",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 92
    invoke-static {p2}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    invoke-virtual {p0, p2}, Lcom/callapp/contacts/loader/external/ExternalSourcesLoader;->a(Ljava/util/List;)Lcom/callapp/contacts/model/contact/ExternalSourceData;

    move-result-object v0

    .line 94
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/model/contact/ExternalSourceData;->setLastUpdated(Ljava/util/Date;)V

    .line 95
    invoke-virtual {p0, p1, v0}, Lcom/callapp/contacts/loader/external/ExternalSourcesLoader;->a(Lcom/callapp/contacts/loader/api/LoadContext;Lcom/callapp/contacts/model/contact/ExternalSourceData;)V

    .line 96
    invoke-static {}, Lcom/callapp/contacts/manager/cache/CacheManager;->get()Lcom/callapp/contacts/manager/cache/CacheManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/callapp/contacts/loader/external/ExternalSourcesLoader;->getDataClass()Ljava/lang/Class;

    move-result-object v2

    iget-object p1, p1, Lcom/callapp/contacts/loader/api/LoadContext;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {p0}, Lcom/callapp/contacts/loader/external/ExternalSourcesLoader;->getDataClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/callapp/contacts/model/contact/ContactData;->getCacheKey(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1, v0}, Lcom/callapp/contacts/manager/cache/CacheManager;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 97
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/callapp/contacts/model/contact/ExternalSourceData;

    if-eqz p2, :cond_0

    .line 98
    invoke-virtual {p2}, Lcom/callapp/contacts/model/contact/ExternalSourceData;->getFullName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {p0, p2}, Lcom/callapp/contacts/loader/external/ExternalSourcesLoader;->a(Lcom/callapp/contacts/model/contact/ExternalSourceData;)Lcom/callapp/common/model/json/JSONExternalSourceContact;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {p2}, Lcom/callapp/contacts/model/contact/ExternalSourceData;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/callapp/common/model/json/JSONExternalSourceContact;->setKey(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p0}, Lcom/callapp/contacts/loader/external/ExternalSourcesLoader;->getExernalSourceId()I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/callapp/common/model/json/JSONExternalSourceContact;->setExternalSourceId(I)V

    .line 105
    :try_start_0
    invoke-static {v0}, Lcom/callapp/contacts/loader/external/ExternalSourcesUtils;->a(Lcom/callapp/common/model/json/JSONExternalSourceContact;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 107
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final b(Lcom/callapp/contacts/loader/api/LoadContext;)V
    .locals 4

    .line 44
    iget-object v0, p1, Lcom/callapp/contacts/loader/api/LoadContext;->a:Lcom/callapp/contacts/model/contact/ContactData;

    .line 45
    invoke-static {}, Lcom/callapp/contacts/manager/cache/CacheManager;->get()Lcom/callapp/contacts/manager/cache/CacheManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/callapp/contacts/loader/external/ExternalSourcesLoader;->getDataClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Lcom/callapp/contacts/loader/external/ExternalSourcesLoader;->getDataClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/callapp/contacts/model/contact/ContactData;->getCacheKey(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    .line 1215
    invoke-virtual {v1, v2, v0, v3}, Lcom/callapp/contacts/manager/cache/CacheManager;->b(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v0

    .line 45
    check-cast v0, Lcom/callapp/contacts/model/contact/ExternalSourceData;

    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {p0, p1, v0}, Lcom/callapp/contacts/loader/external/ExternalSourcesLoader;->a(Lcom/callapp/contacts/loader/api/LoadContext;Lcom/callapp/contacts/model/contact/ExternalSourceData;)V

    :cond_0
    return-void
.end method

.method protected abstract c(Lcom/callapp/contacts/loader/api/LoadContext;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/loader/api/LoadContext;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end method

.method protected abstract getDataClass()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end method

.method protected abstract getExernalSourceId()I
.end method
