.class public Lcom/callapp/contacts/manager/PromotionManager;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 5

    .line 71
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object v0

    const-class v1, Lcom/callapp/contacts/model/objectbox/Promotion;

    invoke-virtual {v0, v1}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v0

    .line 72
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 73
    invoke-virtual {v0}, Lio/objectbox/a;->e()Lio/objectbox/query/QueryBuilder;

    move-result-object v2

    sget-object v3, Lcom/callapp/contacts/model/objectbox/Promotion_;->expiredDate:Lio/objectbox/g;

    invoke-virtual {v2, v3, v1}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;Ljava/util/Date;)Lio/objectbox/query/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lio/objectbox/query/QueryBuilder;->a()Lio/objectbox/query/Query;

    move-result-object v1

    invoke-virtual {v1}, Lio/objectbox/query/Query;->c()Ljava/util/List;

    move-result-object v1

    .line 74
    invoke-static {v1}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 75
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/callapp/contacts/model/objectbox/Promotion;

    .line 76
    invoke-virtual {v3}, Lcom/callapp/contacts/model/objectbox/Promotion;->getCurrentNumberToGetGift()I

    move-result v4

    invoke-virtual {v3}, Lcom/callapp/contacts/model/objectbox/Promotion;->getNumberToGetGift()I

    move-result v3

    if-eq v4, v3, :cond_0

    .line 77
    invoke-virtual {v0, v1}, Lio/objectbox/a;->b(Ljava/util/Collection;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static a(Landroid/net/Uri;Landroid/content/Context;)V
    .locals 13

    const-string v0, "X"

    .line 87
    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "A"

    .line 88
    invoke-virtual {p0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Y"

    .line 89
    invoke-virtual {p0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Z"

    .line 90
    invoke-virtual {p0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "T"

    .line 91
    invoke-virtual {p0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    if-eqz v1, :cond_0

    .line 95
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;->valueOf(Ljava/lang/String;)Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;

    move-result-object v10

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;->valueOf(Ljava/lang/String;)Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;

    move-result-object v12

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 1043
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object v0

    const-class v2, Lcom/callapp/contacts/model/objectbox/Promotion;

    invoke-virtual {v0, v2}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v0

    .line 1044
    invoke-static {}, Lcom/callapp/contacts/manager/PromotionManager;->a()V

    .line 1045
    invoke-virtual {v0}, Lio/objectbox/a;->e()Lio/objectbox/query/QueryBuilder;

    move-result-object v2

    sget-object v3, Lcom/callapp/contacts/model/objectbox/Promotion_;->currentNumberToGetGift:Lio/objectbox/g;

    const-wide/16 v6, 0x0

    invoke-virtual {v2, v3, v6, v7}, Lio/objectbox/query/QueryBuilder;->d(Lio/objectbox/g;J)Lio/objectbox/query/QueryBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lio/objectbox/query/QueryBuilder;->a()Lio/objectbox/query/Query;

    move-result-object v2

    invoke-virtual {v2}, Lio/objectbox/query/Query;->c()Ljava/util/List;

    move-result-object v2

    .line 1046
    invoke-static {v2}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x5

    .line 1047
    invoke-static {p0, v2}, Lcom/callapp/contacts/util/date/DateUtils;->a(II)Ljava/util/Calendar;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    .line 1048
    new-instance p0, Lcom/callapp/contacts/model/objectbox/Promotion;

    const/4 v9, 0x0

    move-object v6, p0

    invoke-direct/range {v6 .. v12}, Lcom/callapp/contacts/model/objectbox/Promotion;-><init>(Ljava/util/Date;IILcom/callapp/contacts/model/objectbox/Promotion$ProductType;ILcom/callapp/contacts/model/objectbox/Promotion$ProductType;)V

    invoke-virtual {v0, p0}, Lio/objectbox/a;->a(Ljava/lang/Object;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v5, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 98
    const-class v0, Lcom/callapp/contacts/manager/PromotionManager;

    invoke-static {v0, p0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    if-eqz v5, :cond_5

    .line 102
    new-instance p0, Landroid/content/Intent;

    .line 1112
    sget-object v0, Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;->CALL_SCREEN:Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1113
    const-class v0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeStoreItemsListActivity;

    goto :goto_1

    .line 1114
    :cond_1
    sget-object v0, Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;->COVER:Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1115
    const-class v0, Lcom/callapp/contacts/activity/marketplace/CoverStoreItemsListActivity;

    goto :goto_1

    .line 1116
    :cond_2
    sget-object v0, Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;->SUPER_SKIN:Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1117
    const-class v0, Lcom/callapp/contacts/activity/marketplace/SuperSkinStoreItemsListActivity;

    goto :goto_1

    .line 1118
    :cond_3
    sget-object v0, Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;->THEME:Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1119
    const-class v0, Lcom/callapp/contacts/activity/marketplace/ThemeStoreItemsListActivity;

    goto :goto_1

    .line 1121
    :cond_4
    const-class v0, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;

    .line 102
    :goto_1
    invoke-direct {p0, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 103
    invoke-static {p1, p0}, Lcom/callapp/contacts/util/Activities;->b(Landroid/content/Context;Landroid/content/Intent;)V

    return-void

    .line 105
    :cond_5
    new-instance p0, Landroid/content/Intent;

    const-class v0, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;

    invoke-direct {p0, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "USER_ALREADY_HAS_PROMOTION"

    .line 106
    invoke-virtual {p0, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 107
    invoke-static {p1, p0}, Lcom/callapp/contacts/util/Activities;->b(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public static a(Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;)V
    .locals 5

    .line 58
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object v0

    const-class v1, Lcom/callapp/contacts/model/objectbox/Promotion;

    invoke-virtual {v0, v1}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v0

    .line 59
    invoke-virtual {v0}, Lio/objectbox/a;->e()Lio/objectbox/query/QueryBuilder;

    move-result-object v1

    sget-object v2, Lcom/callapp/contacts/model/objectbox/Promotion_;->typeToBuyToGetGift:Lio/objectbox/g;

    invoke-virtual {p0}, Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;->ordinal()I

    move-result p0

    int-to-long v3, p0

    invoke-virtual {v1, v2, v3, v4}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;J)Lio/objectbox/query/QueryBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lio/objectbox/query/QueryBuilder;->a()Lio/objectbox/query/Query;

    move-result-object p0

    invoke-virtual {p0}, Lio/objectbox/query/Query;->c()Ljava/util/List;

    move-result-object p0

    .line 60
    invoke-static {p0}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 61
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/model/objectbox/Promotion;

    .line 62
    invoke-virtual {v1}, Lcom/callapp/contacts/model/objectbox/Promotion;->incrementCurrentProductNumber()V

    .line 63
    invoke-virtual {v0, v1}, Lio/objectbox/a;->a(Ljava/lang/Object;)J

    goto :goto_0

    .line 66
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p0

    const-string v0, "Store"

    const-string v1, "buy from promo"

    invoke-virtual {p0, v0, v1}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static a(Landroid/net/Uri;)Z
    .locals 6

    .line 213
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object v0

    const-class v1, Lcom/callapp/contacts/model/objectbox/Promotion;

    invoke-virtual {v0, v1}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v0

    const-string v1, "A"

    .line 214
    invoke-virtual {p0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Z"

    .line 215
    invoke-virtual {p0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    if-eqz v1, :cond_0

    .line 217
    invoke-virtual {v0}, Lio/objectbox/a;->e()Lio/objectbox/query/QueryBuilder;

    move-result-object v0

    sget-object v3, Lcom/callapp/contacts/model/objectbox/Promotion_;->typeOfGift:Lio/objectbox/g;

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;->valueOf(Ljava/lang/String;)Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;

    move-result-object p0

    invoke-virtual {p0}, Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;->ordinal()I

    move-result p0

    int-to-long v4, p0

    invoke-virtual {v0, v3, v4, v5}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;J)Lio/objectbox/query/QueryBuilder;

    move-result-object p0

    sget-object v0, Lcom/callapp/contacts/model/objectbox/Promotion_;->typeToBuyToGetGift:Lio/objectbox/g;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;->valueOf(Ljava/lang/String;)Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;->ordinal()I

    move-result v1

    int-to-long v3, v1

    invoke-virtual {p0, v0, v3, v4}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;J)Lio/objectbox/query/QueryBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lio/objectbox/query/QueryBuilder;->a()Lio/objectbox/query/Query;

    move-result-object p0

    invoke-virtual {p0}, Lio/objectbox/query/Query;->c()Ljava/util/List;

    move-result-object p0

    .line 218
    invoke-static {p0}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v2
.end method

.method public static b(Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;)Z
    .locals 4

    .line 126
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object v0

    const-class v1, Lcom/callapp/contacts/model/objectbox/Promotion;

    invoke-virtual {v0, v1}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v0

    .line 127
    invoke-virtual {v0}, Lio/objectbox/a;->e()Lio/objectbox/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/model/objectbox/Promotion_;->typeOfGift:Lio/objectbox/g;

    invoke-virtual {p0}, Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;->ordinal()I

    move-result p0

    int-to-long v2, p0

    invoke-virtual {v0, v1, v2, v3}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;J)Lio/objectbox/query/QueryBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lio/objectbox/query/QueryBuilder;->a()Lio/objectbox/query/Query;

    move-result-object p0

    invoke-virtual {p0}, Lio/objectbox/query/Query;->c()Ljava/util/List;

    move-result-object p0

    .line 128
    invoke-static {p0}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 129
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/model/objectbox/Promotion;

    .line 130
    invoke-virtual {v0}, Lcom/callapp/contacts/model/objectbox/Promotion;->getNumberToGetGift()I

    move-result v1

    invoke-virtual {v0}, Lcom/callapp/contacts/model/objectbox/Promotion;->getCurrentNumberToGetGift()I

    move-result v0

    if-ne v1, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static c(Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;)V
    .locals 5

    .line 140
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object v0

    const-class v1, Lcom/callapp/contacts/model/objectbox/Promotion;

    invoke-virtual {v0, v1}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v0

    .line 141
    invoke-virtual {v0}, Lio/objectbox/a;->e()Lio/objectbox/query/QueryBuilder;

    move-result-object v1

    sget-object v2, Lcom/callapp/contacts/model/objectbox/Promotion_;->typeOfGift:Lio/objectbox/g;

    invoke-virtual {p0}, Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;->ordinal()I

    move-result p0

    int-to-long v3, p0

    invoke-virtual {v1, v2, v3, v4}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;J)Lio/objectbox/query/QueryBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lio/objectbox/query/QueryBuilder;->a()Lio/objectbox/query/Query;

    move-result-object p0

    invoke-virtual {p0}, Lio/objectbox/query/Query;->c()Ljava/util/List;

    move-result-object p0

    .line 142
    invoke-static {p0}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 143
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/model/objectbox/Promotion;

    .line 144
    invoke-virtual {v1}, Lcom/callapp/contacts/model/objectbox/Promotion;->getNumberOfUsedGift()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 146
    invoke-virtual {v1, v2}, Lcom/callapp/contacts/model/objectbox/Promotion;->setNumberOfUsedGift(I)V

    .line 147
    invoke-virtual {v1}, Lcom/callapp/contacts/model/objectbox/Promotion;->getNumberOfGift()I

    move-result v3

    if-lt v2, v3, :cond_0

    .line 148
    invoke-virtual {v0, v1}, Lio/objectbox/a;->b(Ljava/lang/Object;)Z

    goto :goto_0

    .line 150
    :cond_0
    invoke-virtual {v0, v1}, Lio/objectbox/a;->a(Ljava/lang/Object;)J

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static d(Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;)Z
    .locals 4

    .line 157
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object v0

    const-class v1, Lcom/callapp/contacts/model/objectbox/Promotion;

    invoke-virtual {v0, v1}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v0

    .line 158
    invoke-virtual {v0}, Lio/objectbox/a;->e()Lio/objectbox/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/model/objectbox/Promotion_;->typeOfGift:Lio/objectbox/g;

    invoke-virtual {p0}, Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;->ordinal()I

    move-result p0

    int-to-long v2, p0

    invoke-virtual {v0, v1, v2, v3}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;J)Lio/objectbox/query/QueryBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lio/objectbox/query/QueryBuilder;->a()Lio/objectbox/query/Query;

    move-result-object p0

    invoke-virtual {p0}, Lio/objectbox/query/Query;->c()Ljava/util/List;

    move-result-object p0

    .line 159
    invoke-static {p0}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 160
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/model/objectbox/Promotion;

    .line 161
    invoke-virtual {v0}, Lcom/callapp/contacts/model/objectbox/Promotion;->getNumberToGetGift()I

    move-result v1

    invoke-virtual {v0}, Lcom/callapp/contacts/model/objectbox/Promotion;->getCurrentNumberToGetGift()I

    move-result v0

    if-ne v1, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static getPromotionBannerBuyTitle()Landroid/util/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 200
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object v0

    const-class v1, Lcom/callapp/contacts/model/objectbox/Promotion;

    invoke-virtual {v0, v1}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v0

    .line 201
    invoke-virtual {v0}, Lio/objectbox/a;->c()Ljava/util/List;

    move-result-object v0

    .line 202
    invoke-static {v0}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 203
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/model/objectbox/Promotion;

    const v2, 0x7f120559

    .line 204
    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f120556

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 205
    invoke-virtual {v0}, Lcom/callapp/contacts/model/objectbox/Promotion;->getTypeToBuyToGetGift()Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;->getTitle()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v1, 0x1

    invoke-virtual {v0}, Lcom/callapp/contacts/model/objectbox/Promotion;->getTypeOfGift()Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;->getTitle()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-static {v3, v4}, Lcom/callapp/contacts/util/Activities;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 206
    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, v2, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getPromotionBannerNotBuyTitle()Landroid/util/Pair;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 183
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object v0

    const-class v1, Lcom/callapp/contacts/model/objectbox/Promotion;

    invoke-virtual {v0, v1}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v0

    .line 184
    invoke-virtual {v0}, Lio/objectbox/a;->c()Ljava/util/List;

    move-result-object v0

    .line 185
    invoke-static {v0}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 186
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/model/objectbox/Promotion;

    .line 187
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Lcom/callapp/contacts/model/objectbox/Promotion;->getExpiredDate()Ljava/util/Date;

    move-result-object v3

    sget-object v4, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v2, v3, v4}, Lcom/callapp/contacts/util/date/DateUtils;->a(Ljava/util/Date;Ljava/util/Date;Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f120558

    .line 188
    invoke-static {v3}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 189
    invoke-virtual {v0}, Lcom/callapp/contacts/model/objectbox/Promotion;->getNumberToGetGift()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 190
    invoke-virtual {v0}, Lcom/callapp/contacts/model/objectbox/Promotion;->getNumberOfGift()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f120557

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v2, v7, v1

    const/4 v1, 0x1

    aput-object v4, v7, v1

    const/4 v1, 0x2

    .line 191
    invoke-virtual {v0}, Lcom/callapp/contacts/model/objectbox/Promotion;->getTypeToBuyToGetGift()Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;->getTitle()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v1

    const/4 v1, 0x3

    aput-object v5, v7, v1

    const/4 v1, 0x4

    invoke-virtual {v0}, Lcom/callapp/contacts/model/objectbox/Promotion;->getTypeOfGift()Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;->getTitle()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v1

    invoke-static {v6, v7}, Lcom/callapp/contacts/util/Activities;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 192
    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, v3, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getPromotionType()Ljava/lang/String;
    .locals 2

    .line 229
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object v0

    const-class v1, Lcom/callapp/contacts/model/objectbox/Promotion;

    invoke-virtual {v0, v1}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v0

    .line 230
    invoke-virtual {v0}, Lio/objectbox/a;->c()Ljava/util/List;

    move-result-object v0

    .line 231
    invoke-static {v0}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 232
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/model/objectbox/Promotion;

    .line 233
    invoke-virtual {v0}, Lcom/callapp/contacts/model/objectbox/Promotion;->getTypeToBuyToGetGift()Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static isUserHasActivePromotion()Z
    .locals 5

    .line 170
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object v0

    const-class v1, Lcom/callapp/contacts/model/objectbox/Promotion;

    invoke-virtual {v0, v1}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v0

    .line 1280
    invoke-virtual {v0}, Lio/objectbox/a;->b()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isUserPurchaesPromotion()Z
    .locals 3

    .line 176
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object v0

    const-class v1, Lcom/callapp/contacts/model/objectbox/Promotion;

    invoke-virtual {v0, v1}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v0

    .line 177
    invoke-virtual {v0}, Lio/objectbox/a;->c()Ljava/util/List;

    move-result-object v0

    .line 178
    invoke-static {v0}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/model/objectbox/Promotion;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/objectbox/Promotion;->getCurrentNumberToGetGift()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v2
.end method
