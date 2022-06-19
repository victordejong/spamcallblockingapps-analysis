.class public Lcom/callapp/contacts/util/JSONGroupTypePreference;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getGroupTypePreference(Ljava/lang/String;)Lcom/callapp/contacts/util/JSONGroupType;
    .locals 4

    .line 15
    invoke-static {p0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->get()Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v1

    .line 16
    :goto_0
    invoke-static {p0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 18
    :try_start_0
    new-instance v0, Lcom/callapp/contacts/util/JSONGroupTypePreference$1;

    invoke-direct {v0}, Lcom/callapp/contacts/util/JSONGroupTypePreference$1;-><init>()V

    invoke-static {p0, v0}, Lcom/callapp/contacts/util/serializer/string/Parser;->a(Ljava/lang/String;Lcom/fasterxml/jackson/core/type/TypeReference;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/callapp/contacts/util/ads/JSONExperiment;

    if-eqz p0, :cond_2

    .line 20
    invoke-virtual {p0}, Lcom/callapp/contacts/util/ads/JSONExperiment;->getExperiments()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 21
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AbTestUtils;->getGroupDimension()I

    move-result v0

    .line 22
    invoke-virtual {p0}, Lcom/callapp/contacts/util/ads/JSONExperiment;->getExperiments()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callapp/contacts/util/JSONGroupType;

    .line 23
    invoke-virtual {v2}, Lcom/callapp/contacts/util/JSONGroupType;->getGroup()I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v0, v3, :cond_1

    return-object v2

    :catch_0
    move-exception p0

    .line 29
    const-class v0, Lcom/callapp/contacts/util/ads/AdUtils;

    invoke-static {v0, p0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/Throwable;)V

    :cond_2
    return-object v1
.end method
