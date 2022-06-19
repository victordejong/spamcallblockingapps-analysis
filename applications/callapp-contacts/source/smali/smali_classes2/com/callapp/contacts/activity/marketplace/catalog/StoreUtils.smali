.class public Lcom/callapp/contacts/activity/marketplace/catalog/StoreUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/util/List;Z)Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemPremiumAppItem;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemPremiumAppItem;",
            ">;Z)",
            "Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemPremiumAppItem;"
        }
    .end annotation

    .line 175
    invoke-static {p0}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 176
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 177
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemPremiumAppItem;

    .line 178
    invoke-virtual {v1}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemPremiumAppItem;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemPremiumAppItem;->isSubscription()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 179
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AbTestUtils;->getGroupDimension()I

    move-result v2

    .line 180
    invoke-virtual {v1}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemPremiumAppItem;->getGroups()[I

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_1

    aget v6, v3, v5

    if-ne v6, v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 122
    invoke-static {p0}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const-string v0, " ("

    .line 126
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_1

    const/4 v1, 0x0

    .line 128
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method static a(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;",
            ">(",
            "Ljava/util/List<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 63
    invoke-static {p0}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 64
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;

    .line 65
    invoke-virtual {v1}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;->getSku()Ljava/lang/String;

    move-result-object v2

    .line 66
    invoke-static {v2}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 67
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static a()V
    .locals 11

    .line 342
    invoke-static {}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->get()Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;

    move-result-object v0

    const-string v1, "will_churn"

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 344
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->cY:Lcom/callapp/contacts/manager/preferences/prefs/DatePref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/DatePref;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 346
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->cY:Lcom/callapp/contacts/manager/preferences/prefs/DatePref;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/DatePref;->set(Ljava/lang/Object;)V

    .line 347
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v1, "Retention"

    const-string v2, "got will_churn true"

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    :cond_0
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->cJ:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getDaysSinceInstall()J

    move-result-wide v0

    const-wide/16 v2, 0x3

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 351
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_1

    const/16 v1, 0x17

    if-ge v0, v1, :cond_1

    .line 353
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v2

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const-string v3, "Retention"

    const-string v4, "will_churn popup shown"

    invoke-virtual/range {v2 .. v7}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 355
    new-instance v0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImage;

    const v2, 0x7f08007e

    const v1, 0x7f120872

    .line 356
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v1, 0x7f120871

    .line 357
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/contacts/util/HtmlUtils;->b(Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object v4

    const v1, 0x7f1204ea

    .line 358
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-instance v7, Lcom/callapp/contacts/activity/marketplace/catalog/StoreUtils$2;

    invoke-direct {v7}, Lcom/callapp/contacts/activity/marketplace/catalog/StoreUtils$2;-><init>()V

    const v1, 0x7f1201a9

    .line 367
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    const v9, 0x7f0600f2

    invoke-static {v1, v9}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v9

    new-instance v10, Lcom/callapp/contacts/activity/marketplace/catalog/StoreUtils$3;

    invoke-direct {v10}, Lcom/callapp/contacts/activity/marketplace/catalog/StoreUtils$3;-><init>()V

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImage;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;ZLcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;Ljava/lang/String;ILcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;)V

    .line 375
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object v1

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    .line 381
    :cond_1
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->cY:Lcom/callapp/contacts/manager/preferences/prefs/DatePref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/DatePref;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->cY:Lcom/callapp/contacts/manager/preferences/prefs/DatePref;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/DatePref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Date;

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/date/DateUtils;->b(Ljava/util/Date;Ljava/util/Date;)J

    move-result-wide v0

    const-wide/16 v2, 0x7

    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    .line 382
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v5

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const-string v6, "Retention"

    const-string v7, "got will_churn true after 7 days"

    invoke-virtual/range {v5 .. v10}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z

    :cond_2
    return-void
.end method

.method public static a(Landroid/app/Activity;Landroid/content/Intent;I[Landroid/view/View;)V
    .locals 7

    .line 288
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/String;

    const v3, 0x7f12072c

    .line 289
    invoke-static {v3}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const v3, 0x7f12072d

    invoke-static {v3}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const v3, 0x7f12072e

    invoke-static {v3}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x2

    aput-object v3, v2, v5

    .line 290
    array-length v3, p3

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    .line 292
    aget-object v5, p3, v3

    if-eqz v5, :cond_0

    .line 294
    aget-object v6, v2, v3

    invoke-static {v5, v6}, Landroidx/core/e/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Landroidx/core/e/b;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    .line 299
    invoke-static {v0}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 300
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p3

    new-array p3, p3, [Landroidx/core/e/b;

    .line 301
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v4, v1, :cond_2

    .line 302
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/core/e/b;

    aput-object v1, p3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, -0x1

    if-ne p2, v0, :cond_3

    .line 307
    invoke-static {p0, p1, p3}, Lcom/callapp/contacts/util/Activities;->a(Landroid/app/Activity;Landroid/content/Intent;[Landroidx/core/e/b;)V

    return-void

    .line 309
    :cond_3
    invoke-static {p0, p1, p2, p3}, Lcom/callapp/contacts/util/Activities;->a(Landroid/app/Activity;Landroid/content/Intent;I[Landroidx/core/e/b;)V

    return-void
.end method

.method public static a(Landroid/app/Activity;Landroid/content/Intent;[Landroid/view/View;)V
    .locals 1

    const/4 v0, -0x1

    .line 283
    invoke-static {p0, p1, v0, p2}, Lcom/callapp/contacts/activity/marketplace/catalog/StoreUtils;->a(Landroid/app/Activity;Landroid/content/Intent;I[Landroid/view/View;)V

    return-void
.end method

.method static a(Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$StoreItemsListener;)V
    .locals 2

    .line 148
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/marketplace/catalog/-$$Lambda$StoreUtils$s-1AJt5yoBHIbrWHujOkPZtWQEQ;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/marketplace/catalog/-$$Lambda$StoreUtils$s-1AJt5yoBHIbrWHujOkPZtWQEQ;-><init>(Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$StoreItemsListener;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method static a(Lcom/callapp/contacts/manager/inAppBilling/BillingManager;Ljava/util/List;Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCatalog;Ljava/util/List;Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$StoreItemsListener;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/manager/inAppBilling/BillingManager;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/i;",
            ">;",
            "Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCatalog;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$StoreItemsListener;",
            ")V"
        }
    .end annotation

    .line 193
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v7, Lcom/callapp/contacts/activity/marketplace/catalog/StoreUtils$1;

    move-object v1, v7

    move-object v2, p2

    move-object v3, p0

    move-object v4, p3

    move-object v5, p1

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/callapp/contacts/activity/marketplace/catalog/StoreUtils$1;-><init>(Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCatalog;Lcom/callapp/contacts/manager/inAppBilling/BillingManager;Ljava/util/List;Ljava/util/List;Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$StoreItemsListener;)V

    invoke-virtual {v0, v7}, Lcom/callapp/contacts/CallAppApplication;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Ljava/util/List;Ljava/util/HashMap;Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;)V
    .locals 6

    .line 5075
    invoke-virtual {p2}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;->getSku()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 5077
    invoke-virtual {p2}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;->getSku()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/billingclient/api/k;

    .line 5078
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->cK:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_8

    if-nez p1, :cond_0

    goto/16 :goto_3

    .line 5089
    :cond_0
    invoke-static {p0}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;->getSku()Ljava/lang/String;

    move-result-object v0

    .line 5104
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/billingclient/api/i;

    .line 5105
    invoke-virtual {v3}, Lcom/android/billingclient/api/i;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_6

    .line 5089
    :cond_3
    invoke-virtual {p2}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;->getSku()Ljava/lang/String;

    move-result-object p0

    .line 5135
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->cW:Lcom/callapp/contacts/manager/preferences/prefs/ArrayPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/ArrayPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 5136
    invoke-static {v0}, Lcom/callapp/contacts/util/ArrayUtils;->b([Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 5137
    array-length v3, v0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_5

    aget-object v5, v0, v4

    .line 5138
    invoke-static {v5, p0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v2, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    if-eqz v2, :cond_7

    .line 5090
    :cond_6
    invoke-virtual {p2, v1}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;->setPurchased(Z)V

    .line 5091
    invoke-virtual {p2, v1}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;->setNotValidForPromotion(Z)V

    .line 5093
    :cond_7
    invoke-virtual {p1}, Lcom/android/billingclient/api/k;->c()J

    move-result-wide v2

    long-to-float p0, v2

    const v0, 0x49742400    # 1000000.0f

    div-float/2addr p0, v0

    invoke-virtual {p2, p0}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;->setPrice(F)V

    .line 5094
    iget-object p0, p1, Lcom/android/billingclient/api/k;->b:Lorg/json/JSONObject;

    const-string v0, "price"

    .line 6001
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 5094
    invoke-virtual {p2, p0}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;->setPriceWithCurrency(Ljava/lang/String;)V

    .line 5095
    invoke-virtual {p1}, Lcom/android/billingclient/api/k;->e()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/callapp/contacts/activity/marketplace/catalog/StoreUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;->setTitle(Ljava/lang/String;)V

    .line 5096
    invoke-virtual {p1}, Lcom/android/billingclient/api/k;->d()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;->setCurrencyCode(Ljava/lang/String;)V

    .line 5097
    invoke-virtual {p1}, Lcom/android/billingclient/api/k;->f()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;->setDescription(Ljava/lang/String;)V

    goto :goto_4

    :cond_8
    :goto_3
    const/4 p0, 0x0

    .line 5079
    invoke-virtual {p2, p0}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;->setPrice(F)V

    const p0, 0x7f12034b

    .line 5080
    invoke-static {p0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;->setPriceWithCurrency(Ljava/lang/String;)V

    .line 5081
    invoke-virtual {p2, v1}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;->setPurchased(Z)V

    .line 5082
    invoke-virtual {p2, v1}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;->setNotValidForPromotion(Z)V

    if-eqz p1, :cond_9

    .line 5084
    invoke-virtual {p1}, Lcom/android/billingclient/api/k;->e()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/callapp/contacts/activity/marketplace/catalog/StoreUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;->setTitle(Ljava/lang/String;)V

    .line 5085
    invoke-virtual {p1}, Lcom/android/billingclient/api/k;->f()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;->setDescription(Ljava/lang/String;)V

    .line 5099
    :cond_9
    :goto_4
    invoke-virtual {p2, v1}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;->setLoadedFromPlay(Z)V

    :cond_a
    return-void
.end method

.method public static a(Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;",
            ">(TT;)Z"
        }
    .end annotation

    .line 279
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;->getPrice()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;->getPromotionPercent()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static a(Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemTheme;)Z
    .locals 2

    .line 275
    invoke-static {}, Lcom/callapp/contacts/util/ThemeUtils;->getThemeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemTheme;->getSku()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemTheme;->isPurchased()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemTheme;->getPrice()F

    move-result p0

    const/4 v0, 0x0

    cmpl-float p0, p0, v0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static a(Ljava/util/List;Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/i;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 112
    invoke-static {p1}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 113
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/billingclient/api/i;

    .line 114
    invoke-virtual {v0}, Lcom/android/billingclient/api/i;->b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic b(Ljava/util/List;)Ljava/util/HashMap;
    .locals 3

    .line 4231
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4232
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/billingclient/api/k;

    .line 4233
    invoke-virtual {v1}, Lcom/android/billingclient/api/k;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static synthetic b(Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$StoreItemsListener;)V
    .locals 4

    .line 149
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->en:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 150
    invoke-static {}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->get()Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;

    move-result-object v1

    if-eqz v0, :cond_0

    const-string v2, "StoreCatalogUrlDebug"

    goto :goto_0

    :cond_0
    const-string v2, "StoreCatalogUrl"

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 152
    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 154
    :try_start_0
    const-class v1, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCatalog;

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/serializer/string/Parser;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCatalog;

    if-eqz v0, :cond_2

    if-eqz p0, :cond_2

    .line 157
    invoke-interface {p0, v0}, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$StoreItemsListener;->onDone(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 162
    :catchall_0
    invoke-static {}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->get()Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;

    move-result-object v0

    .line 2486
    invoke-virtual {v0, v2, v3}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->a(ZLcom/callapp/contacts/manager/task/Task$DoneListener;)Lcom/google/android/gms/tasks/h;

    goto :goto_1

    .line 165
    :cond_1
    invoke-static {}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->get()Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;

    move-result-object v0

    .line 3486
    invoke-virtual {v0, v2, v3}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->a(ZLcom/callapp/contacts/manager/task/Task$DoneListener;)Lcom/google/android/gms/tasks/h;

    :cond_2
    :goto_1
    if-eqz p0, :cond_3

    .line 169
    invoke-interface {p0, v3}, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$StoreItemsListener;->onDone(Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public static synthetic lambda$s-1AJt5yoBHIbrWHujOkPZtWQEQ(Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$StoreItemsListener;)V
    .locals 0

    invoke-static {p0}, Lcom/callapp/contacts/activity/marketplace/catalog/StoreUtils;->b(Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$StoreItemsListener;)V

    return-void
.end method

.method public static setCoverUrls(Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemCover;)V
    .locals 6

    .line 250
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemCover;->getImageUrls()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 252
    array-length v2, v0

    sget-object v3, Lcom/callapp/contacts/manager/preferences/Prefs;->dT:[Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    array-length v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    .line 254
    sget-object v4, Lcom/callapp/contacts/manager/preferences/Prefs;->dT:[Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    aget-object v4, v4, v3

    aget-object v5, v0, v3

    invoke-virtual {v4, v5}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->set(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 258
    :cond_0
    invoke-static {p0}, Lcom/callapp/contacts/activity/marketplace/catalog/StoreUtils;->setOverlayChosenCoverUrlsPref(Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemCover;)V

    const/4 p0, 0x0

    :goto_1
    const/4 v0, 0x5

    const/4 v2, 0x0

    if-ge p0, v0, :cond_1

    .line 261
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->dI:[Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    aget-object v0, v0, p0

    invoke-virtual {v0, v2}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->set(Ljava/lang/Object;)V

    .line 262
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->dJ:[Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    aget-object v0, v0, p0

    invoke-virtual {v0, v2}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->set(Ljava/lang/Object;)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    .line 265
    :cond_1
    sget-object p0, Lcom/callapp/contacts/manager/preferences/Prefs;->dK:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {p0, v2}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->set(Ljava/lang/Object;)V

    .line 266
    sget-object p0, Lcom/callapp/contacts/manager/preferences/Prefs;->dL:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {p0, v2}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->set(Ljava/lang/Object;)V

    .line 267
    sget-object p0, Lcom/callapp/contacts/manager/preferences/Prefs;->dM:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {p0, v2}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->set(Ljava/lang/Object;)V

    .line 268
    sget-object p0, Lcom/callapp/contacts/manager/preferences/Prefs;->dH:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {p0, v2}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->set(Ljava/lang/Object;)V

    .line 269
    sget-object p0, Lcom/callapp/contacts/manager/preferences/Prefs;->dG:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {p0, v2}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->set(Ljava/lang/Object;)V

    .line 270
    sget-object p0, Lcom/callapp/contacts/manager/preferences/Prefs;->dZ:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    .line 271
    sget-object p0, Lcom/callapp/contacts/event/EventBusManager;->a:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object v0, Lcom/callapp/contacts/activity/interfaces/OnUseMarketItemListener;->a:Lcom/callapp/contacts/event/bus/EventType;

    .line 1091
    invoke-virtual {p0, v0, v2, v1}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;Z)V

    return-void
.end method

.method public static setOverlayChosenCoverUrlsPref(Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemCover;)V
    .locals 4

    if-eqz p0, :cond_0

    .line 388
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemCover;->getOverlayUrls()[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 390
    array-length v0, p0

    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->dq:[Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 392
    sget-object v2, Lcom/callapp/contacts/manager/preferences/Prefs;->dq:[Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    aget-object v2, v2, v1

    aget-object v3, p0, v1

    invoke-virtual {v2, v3}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->set(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static setSuperSkin(Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkin;)V
    .locals 6

    .line 314
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->dN:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkin;->getSku()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->set(Ljava/lang/Object;)V

    .line 315
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->dT:[Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x0

    if-ge v3, v1, :cond_0

    aget-object v5, v0, v3

    .line 316
    invoke-virtual {v5, v4}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->set(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 319
    :goto_1
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->dq:[Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 320
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->dq:[Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    aget-object v1, v1, v0

    invoke-virtual {v1, v4}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->set(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 323
    :cond_1
    invoke-static {p0}, Lcom/callapp/contacts/activity/marketplace/catalog/StoreUtils;->setCoverUrls(Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemCover;)V

    .line 324
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->dI:[Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    array-length v0, v0

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkin;->getTopBarBackgroundUrls()[Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkinBackground;

    move-result-object v1

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_2

    .line 326
    sget-object v3, Lcom/callapp/contacts/manager/preferences/Prefs;->dI:[Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    aget-object v3, v3, v1

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkin;->getTopBarBackgroundUrls()[Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkinBackground;

    move-result-object v5

    aget-object v5, v5, v1

    invoke-virtual {v5}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkinBackground;->getLightBackground()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->set(Ljava/lang/Object;)V

    .line 327
    sget-object v3, Lcom/callapp/contacts/manager/preferences/Prefs;->dJ:[Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    aget-object v3, v3, v1

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkin;->getTopBarBackgroundUrls()[Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkinBackground;

    move-result-object v5

    aget-object v5, v5, v1

    invoke-virtual {v5}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkinBackground;->getDarkBackground()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->set(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 330
    :cond_2
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->dK:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkin;->getCardUrl()[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->set(Ljava/lang/Object;)V

    .line 331
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->dL:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkin;->getWizardImageUrls()[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->set(Ljava/lang/Object;)V

    .line 332
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->dM:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkin;->getGifFileUrls()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/framework/util/CollectionUtils;->b([Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkin;->getGifFileUrls()[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v2

    const-string v3, ".gif"

    invoke-static {v1, v3}, Lcom/callapp/framework/util/StringUtils;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkin;->getGifFileUrls()[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v2

    goto :goto_3

    :cond_3
    move-object v1, v4

    :goto_3
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->set(Ljava/lang/Object;)V

    .line 333
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->dH:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkin;->getListBackgroundUrls()[Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkinBackground;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkinBackground;->getDarkBackground()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->set(Ljava/lang/Object;)V

    .line 334
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->dG:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkin;->getListBackgroundUrls()[Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkinBackground;

    move-result-object p0

    aget-object p0, p0, v2

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkinBackground;->getLightBackground()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->set(Ljava/lang/Object;)V

    .line 336
    sget-object p0, Lcom/callapp/contacts/manager/preferences/Prefs;->dZ:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    .line 338
    sget-object p0, Lcom/callapp/contacts/event/EventBusManager;->a:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object v0, Lcom/callapp/contacts/activity/interfaces/OnUseMarketItemListener;->a:Lcom/callapp/contacts/event/bus/EventType;

    .line 2091
    invoke-virtual {p0, v0, v4, v2}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;Z)V

    return-void
.end method

.method public static setThemeColors(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 239
    invoke-static {p0}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->dj:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    const-string v1, "colorPrimary"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->set(Ljava/lang/Object;)V

    .line 241
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->dk:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    const-string v1, "colorPrimaryLight"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->set(Ljava/lang/Object;)V

    .line 242
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->dl:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    const-string v1, "colorPrimaryDark"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->set(Ljava/lang/Object;)V

    .line 243
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->dm:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    const-string v1, "darkColorPrimary"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->set(Ljava/lang/Object;)V

    .line 244
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->dn:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    const-string v1, "darkColorPrimaryLight"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->set(Ljava/lang/Object;)V

    .line 245
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->do:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    const-string v1, "darkColorPrimaryDark"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->set(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
