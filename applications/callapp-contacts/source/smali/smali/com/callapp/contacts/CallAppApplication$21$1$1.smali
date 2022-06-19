.class Lcom/callapp/contacts/CallAppApplication$21$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$OnCatalogAttributesLoaded;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/CallAppApplication$21$1;->a(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/callapp/contacts/CallAppApplication$21$1;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/CallAppApplication$21$1;Ljava/util/List;)V
    .locals 0

    .line 1219
    iput-object p1, p0, Lcom/callapp/contacts/CallAppApplication$21$1$1;->b:Lcom/callapp/contacts/CallAppApplication$21$1;

    iput-object p2, p0, Lcom/callapp/contacts/CallAppApplication$21$1$1;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic onDone(Ljava/lang/Object;)V
    .locals 7

    .line 1219
    check-cast p1, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;

    .line 2223
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2224
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;->getAvailableCallScreenThemes()Ljava/util/List;

    move-result-object p1

    .line 2225
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCallScreenThemeItem;

    .line 2226
    invoke-virtual {v1}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCallScreenThemeItem;->getSku()Ljava/lang/String;

    move-result-object v1

    .line 2227
    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2228
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2232
    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->cW:Lcom/callapp/contacts/manager/preferences/prefs/ArrayPref;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/ArrayPref;->isNotNull()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->cW:Lcom/callapp/contacts/manager/preferences/prefs/ArrayPref;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/ArrayPref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    goto :goto_1

    :cond_2
    new-array v1, v2, [Ljava/lang/String;

    :goto_1
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2233
    iget-object v1, p0, Lcom/callapp/contacts/CallAppApplication$21$1$1;->a:Ljava/util/List;

    invoke-static {v1}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_5

    .line 2234
    iget-object v1, p0, Lcom/callapp/contacts/CallAppApplication$21$1$1;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/billingclient/api/i;

    .line 2235
    invoke-virtual {v4}, Lcom/android/billingclient/api/i;->b()Ljava/lang/String;

    move-result-object v4

    .line 2236
    invoke-static {v4}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    new-array v5, v3, [Ljava/lang/String;

    .line 2237
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v0, v5}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;[Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    new-array v5, v3, [Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v2

    invoke-static {p1, v5}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;[Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2238
    :cond_4
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->du:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v4}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    :cond_5
    new-array v1, v3, [Ljava/lang/String;

    .line 2244
    sget-object v4, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;->VIDEO_RINGTONE:Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;

    invoke-static {v4}, Lcom/callapp/contacts/activity/marketplace/PersonalStoreItemHelper;->a(Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v0, v1}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    new-array v1, v3, [Ljava/lang/String;

    sget-object v4, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;->VIDEO_RINGTONE:Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;

    invoke-static {v4}, Lcom/callapp/contacts/activity/marketplace/PersonalStoreItemHelper;->a(Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {p1, v1}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2245
    :cond_6
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->dv:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v4}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    :cond_7
    new-array v1, v3, [Ljava/lang/String;

    .line 2247
    sget-object v4, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;->COVER:Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;

    invoke-static {v4}, Lcom/callapp/contacts/activity/marketplace/PersonalStoreItemHelper;->a(Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v0, v1}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;[Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    new-array v0, v3, [Ljava/lang/String;

    sget-object v1, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;->COVER:Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;

    invoke-static {v1}, Lcom/callapp/contacts/activity/marketplace/PersonalStoreItemHelper;->a(Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {p1, v0}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;[Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 2248
    :cond_8
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->dB:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    .line 2251
    :cond_9
    iget-object p1, p0, Lcom/callapp/contacts/CallAppApplication$21$1$1;->b:Lcom/callapp/contacts/CallAppApplication$21$1;

    iget-object p1, p1, Lcom/callapp/contacts/CallAppApplication$21$1;->a:Lcom/callapp/contacts/CallAppApplication$21;

    iget-object p1, p1, Lcom/callapp/contacts/CallAppApplication$21;->a:Lcom/callapp/contacts/CallAppApplication;

    invoke-static {p1}, Lcom/callapp/contacts/CallAppApplication;->h(Lcom/callapp/contacts/CallAppApplication;)Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 2252
    iget-object p1, p0, Lcom/callapp/contacts/CallAppApplication$21$1$1;->b:Lcom/callapp/contacts/CallAppApplication$21$1;

    iget-object p1, p1, Lcom/callapp/contacts/CallAppApplication$21$1;->a:Lcom/callapp/contacts/CallAppApplication$21;

    iget-object p1, p1, Lcom/callapp/contacts/CallAppApplication$21;->a:Lcom/callapp/contacts/CallAppApplication;

    invoke-static {p1}, Lcom/callapp/contacts/CallAppApplication;->h(Lcom/callapp/contacts/CallAppApplication;)Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/inAppBilling/BillingManager;->b()V

    .line 2253
    iget-object p1, p0, Lcom/callapp/contacts/CallAppApplication$21$1$1;->b:Lcom/callapp/contacts/CallAppApplication$21$1;

    iget-object p1, p1, Lcom/callapp/contacts/CallAppApplication$21$1;->a:Lcom/callapp/contacts/CallAppApplication$21;

    iget-object p1, p1, Lcom/callapp/contacts/CallAppApplication$21;->a:Lcom/callapp/contacts/CallAppApplication;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/callapp/contacts/CallAppApplication;->a(Lcom/callapp/contacts/CallAppApplication;Lcom/callapp/contacts/manager/inAppBilling/BillingManager;)Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

    :cond_a
    return-void
.end method
