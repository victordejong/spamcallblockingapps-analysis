.class public Lcom/callapp/contacts/activity/calllog/stickyBanner/JSONStickyDataObject;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private jsonStickyData:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "JsonStickyData"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/calllog/stickyBanner/JsonStickyData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDataFromRemoteConfig(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/calllog/stickyBanner/JsonStickyData;",
            ">;"
        }
    .end annotation

    .line 36
    invoke-static {}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->get()Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 37
    invoke-static {p0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    :try_start_0
    new-instance v0, Lcom/callapp/contacts/activity/calllog/stickyBanner/JSONStickyDataObject$1;

    invoke-direct {v0}, Lcom/callapp/contacts/activity/calllog/stickyBanner/JSONStickyDataObject$1;-><init>()V

    invoke-static {p0, v0}, Lcom/callapp/contacts/util/serializer/string/Parser;->a(Ljava/lang/String;Lcom/fasterxml/jackson/core/type/TypeReference;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/callapp/contacts/activity/calllog/stickyBanner/JSONStickyDataObject;

    if-eqz p0, :cond_0

    .line 42
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/calllog/stickyBanner/JSONStickyDataObject;->getJsonStickyData()Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    .line 25
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 26
    :cond_1
    check-cast p1, Lcom/callapp/contacts/activity/calllog/stickyBanner/JSONStickyDataObject;

    .line 27
    iget-object v0, p0, Lcom/callapp/contacts/activity/calllog/stickyBanner/JSONStickyDataObject;->jsonStickyData:Ljava/util/List;

    iget-object p1, p1, Lcom/callapp/contacts/activity/calllog/stickyBanner/JSONStickyDataObject;->jsonStickyData:Ljava/util/List;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public getJsonStickyData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/calllog/stickyBanner/JsonStickyData;",
            ">;"
        }
    .end annotation

    .line 19
    iget-object v0, p0, Lcom/callapp/contacts/activity/calllog/stickyBanner/JSONStickyDataObject;->jsonStickyData:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 32
    iget-object v1, p0, Lcom/callapp/contacts/activity/calllog/stickyBanner/JSONStickyDataObject;->jsonStickyData:Ljava/util/List;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
