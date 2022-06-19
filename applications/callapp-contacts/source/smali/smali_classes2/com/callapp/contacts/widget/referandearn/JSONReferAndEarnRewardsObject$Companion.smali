.class public final Lcom/callapp/contacts/widget/referandearn/JSONReferAndEarnRewardsObject$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/widget/referandearn/JSONReferAndEarnRewardsObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004H\u0007J\u000f\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0007\u00a2\u0006\u0002\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/callapp/contacts/widget/referandearn/JSONReferAndEarnRewardsObject$Companion;",
        "",
        "()V",
        "getJSONReferAndEarnRewardsData",
        "",
        "Lcom/callapp/common/model/json/JSONReferAndEarnRewards;",
        "getMaxRewards",
        "",
        "()Ljava/lang/Integer;",
        "callapp-client_playRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/callapp/contacts/widget/referandearn/JSONReferAndEarnRewardsObject$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getJSONReferAndEarnRewardsData()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/callapp/common/model/json/JSONReferAndEarnRewards;",
            ">;"
        }
    .end annotation

    .line 29
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->eo:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 30
    invoke-static {}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->get()Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;

    move-result-object v1

    const-string v2, "enableInvitesDebugCatalog"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "ReferAndEarnCatalogUrlDebug"

    goto :goto_0

    :cond_0
    const-string v2, "ReferAndEarnCatalogUrl"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v1, v2, v0}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 31
    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    .line 33
    :try_start_0
    new-instance v1, Lcom/callapp/contacts/widget/referandearn/JSONReferAndEarnRewardsObject$Companion$getJSONReferAndEarnRewardsData$jsonReferAndEarnRewardsObject$1;

    invoke-direct {v1}, Lcom/callapp/contacts/widget/referandearn/JSONReferAndEarnRewardsObject$Companion$getJSONReferAndEarnRewardsData$jsonReferAndEarnRewardsObject$1;-><init>()V

    check-cast v1, Lcom/fasterxml/jackson/core/type/TypeReference;

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/serializer/string/Parser;->a(Ljava/lang/String;Lcom/fasterxml/jackson/core/type/TypeReference;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/widget/referandearn/JSONReferAndEarnRewardsObject;

    .line 34
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->cJ:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v1

    const-string v3, "Prefs.isPremium.get()"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 35
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->cK:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v1

    const-string v3, "Prefs.hasFreeStoreSku.get()"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/callapp/contacts/widget/referandearn/JSONReferAndEarnRewardsObject;->access$getJsonReferAndEarnRewardsStoreUnlockPremium$p(Lcom/callapp/contacts/widget/referandearn/JSONReferAndEarnRewardsObject;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_1
    return-object v2

    :cond_2
    if-eqz v0, :cond_3

    invoke-static {v0}, Lcom/callapp/contacts/widget/referandearn/JSONReferAndEarnRewardsObject;->access$getJSONReferAndEarnRewardsPremium$p(Lcom/callapp/contacts/widget/referandearn/JSONReferAndEarnRewardsObject;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_3
    return-object v2

    :cond_4
    if-eqz v0, :cond_5

    .line 37
    invoke-static {v0}, Lcom/callapp/contacts/widget/referandearn/JSONReferAndEarnRewardsObject;->access$getJSONReferAndEarnRewards$p(Lcom/callapp/contacts/widget/referandearn/JSONReferAndEarnRewardsObject;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_5
    return-object v2
.end method

.method public final getMaxRewards()Ljava/lang/Integer;
    .locals 4

    .line 47
    move-object v0, p0

    check-cast v0, Lcom/callapp/contacts/widget/referandearn/JSONReferAndEarnRewardsObject$Companion;

    invoke-virtual {v0}, Lcom/callapp/contacts/widget/referandearn/JSONReferAndEarnRewardsObject$Companion;->getJSONReferAndEarnRewardsData()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/common/model/json/JSONReferAndEarnRewards;

    invoke-virtual {v1}, Lcom/callapp/common/model/json/JSONReferAndEarnRewards;->getKey()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    check-cast v1, Ljava/lang/Comparable;

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callapp/common/model/json/JSONReferAndEarnRewards;

    invoke-virtual {v2}, Lcom/callapp/common/model/json/JSONReferAndEarnRewards;->getKey()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    check-cast v2, Ljava/lang/Comparable;

    invoke-interface {v1, v2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_1
    check-cast v1, Ljava/lang/Integer;

    return-object v1

    :cond_2
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method
