.class public Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/ManagedLifecycle;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogReqBuilder;,
        Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;,
        Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$StoreItemsListener;,
        Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$OnCatalogAttributesLoaded;,
        Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$DoneWithPayload;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String;


# instance fields
.field private final b:Ljava/lang/Object;

.field private c:Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCatalog;

.field private d:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "callapp-store"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "covers"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager;->b:Ljava/lang/Object;

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager;Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogReqBuilder;Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCatalog;)Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;
    .locals 1

    .line 1226
    new-instance v0, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;

    invoke-direct {v0}, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;-><init>()V

    .line 2062
    iget-object p0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager;->c:Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCatalog;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    .line 1229
    invoke-virtual {p2}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCatalog;->getPlans()Ljava/util/List;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;->a(Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;Ljava/util/List;)Ljava/util/List;

    .line 1230
    invoke-virtual {p2}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCatalog;->getStoreItemBanners()Ljava/util/List;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;->b(Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;Ljava/util/List;)Ljava/util/List;

    .line 1231
    invoke-virtual {p2}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCatalog;->getThemes()Ljava/util/List;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;->c(Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;Ljava/util/List;)Ljava/util/List;

    .line 1232
    invoke-virtual {p2}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCatalog;->getSuperSkins()Ljava/util/List;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;->d(Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;Ljava/util/List;)Ljava/util/List;

    .line 1233
    invoke-virtual {p2}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCatalog;->getCovers()Ljava/util/List;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;->e(Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;Ljava/util/List;)Ljava/util/List;

    .line 1234
    invoke-virtual {p2}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCatalog;->getBundlesV3()Ljava/util/List;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;->f(Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;Ljava/util/List;)Ljava/util/List;

    .line 1235
    invoke-virtual {p2}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCatalog;->getKeypads()Ljava/util/List;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;->g(Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;Ljava/util/List;)Ljava/util/List;

    .line 1236
    invoke-virtual {p2}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCatalog;->getAllCallScreenThemes()Ljava/util/List;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;->h(Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;Ljava/util/List;)Ljava/util/List;

    .line 1237
    invoke-virtual {p2}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCatalog;->getPremiumItem()Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemPremium;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;->a(Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemPremium;)Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemPremium;

    .line 1239
    invoke-static {p1}, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogReqBuilder;->a(Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogReqBuilder;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 1240
    invoke-static {p1}, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogReqBuilder;->a(Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogReqBuilder;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCatalog;->getSuperSkin(Ljava/lang/String;)Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkin;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;->a(Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkin;)Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkin;

    .line 1241
    invoke-static {v0}, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;->a(Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;)Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkin;

    move-result-object p0

    if-nez p0, :cond_1

    .line 1242
    invoke-static {p1}, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogReqBuilder;->a(Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogReqBuilder;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCatalog;->getTheme(Ljava/lang/String;)Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemTheme;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;->a(Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemTheme;)Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemTheme;

    .line 1243
    invoke-static {v0}, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;->b(Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;)Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemTheme;

    move-result-object p0

    if-nez p0, :cond_1

    .line 1244
    invoke-static {p1}, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogReqBuilder;->a(Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogReqBuilder;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCatalog;->getCover(Ljava/lang/String;)Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemCover;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;->a(Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemCover;)Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemCover;

    .line 1245
    invoke-static {v0}, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;->c(Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;)Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemCover;

    move-result-object p0

    if-nez p0, :cond_1

    .line 1246
    invoke-static {p1}, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogReqBuilder;->a(Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogReqBuilder;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCatalog;->getInCallThemeItem(Ljava/lang/String;)Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCallScreenThemeItem;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;->a(Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCallScreenThemeItem;)Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCallScreenThemeItem;

    .line 1247
    invoke-static {v0}, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;->d(Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;)Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCallScreenThemeItem;

    move-result-object p0

    if-nez p0, :cond_1

    .line 1248
    invoke-static {p1}, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogReqBuilder;->a(Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogReqBuilder;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCatalog;->getKeypad(Ljava/lang/String;)Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemKeypad;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;->a(Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemKeypad;)Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemKeypad;

    .line 1249
    invoke-static {v0}, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;->e(Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;)Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemKeypad;

    move-result-object p0

    if-nez p0, :cond_1

    .line 1250
    invoke-static {p1}, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogReqBuilder;->a(Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogReqBuilder;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCatalog;->getBundleV3(Ljava/lang/String;)Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemBundle;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;->a(Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemBundle;)Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemBundle;

    :cond_1
    return-object v0
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager;)Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCatalog;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager;->c:Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCatalog;

    return-object p0
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager;Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCatalog;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager;->setCatalog(Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCatalog;)V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager;Lcom/callapp/contacts/manager/inAppBilling/BillingManager;Ljava/util/List;ZLcom/callapp/contacts/manager/task/Task$DoneListener;)V
    .locals 2

    .line 2269
    invoke-direct {p0, p3}, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager;->a(Z)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 2270
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 2272
    :try_start_0
    invoke-direct {p0, p3}, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager;->a(Z)Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 p3, 0x0

    .line 2276
    new-instance v1, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$1;

    invoke-direct {v1, p0, p1, p2, p4}, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$1;-><init>(Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager;Lcom/callapp/contacts/manager/inAppBilling/BillingManager;Ljava/util/List;Lcom/callapp/contacts/manager/task/Task$DoneListener;)V

    invoke-static {v1}, Lcom/callapp/contacts/activity/marketplace/catalog/StoreUtils;->a(Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$StoreItemsListener;)V

    const/4 v1, 0x0

    .line 2339
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 2345
    invoke-interface {p4}, Lcom/callapp/contacts/manager/task/Task$DoneListener;->onDone()V

    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCatalog;)V
    .locals 2

    .line 2352
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->dh:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "default_1"

    .line 2353
    invoke-static {v0, v1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2354
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCatalog;->getTheme(Ljava/lang/String;)Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemTheme;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2356
    invoke-virtual {v0}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemTheme;->getColorMap()Ljava/util/Map;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/contacts/activity/marketplace/catalog/StoreUtils;->setThemeColors(Ljava/util/Map;)V

    .line 2357
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->di:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/activity/contact/header/ThemeState;

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/contact/header/ThemeState;->isLightTheme()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/ThemeUtils;->a(Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemTheme;Z)V

    .line 2361
    :cond_0
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->dN:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2362
    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2363
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCatalog;->getCover(Ljava/lang/String;)Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemCover;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 2365
    invoke-static {p0}, Lcom/callapp/contacts/activity/marketplace/catalog/StoreUtils;->setCoverUrls(Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemCover;)V

    :cond_1
    return-void
.end method

.method private a(Z)Z
    .locals 0

    if-nez p1, :cond_1

    .line 371
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager;->c:Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCatalog;

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager;->isExpired()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public static get()Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager;
    .locals 1

    .line 58
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/Singletons;->getCatalogManager()Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager;

    move-result-object v0

    return-object v0
.end method

.method private isExpired()Z
    .locals 6

    .line 375
    iget-wide v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager;->d:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0xa4cb80

    sub-long/2addr v2, v4

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private setCatalog(Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCatalog;)V
    .locals 3

    .line 379
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 380
    :try_start_0
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager;->c:Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCatalog;

    .line 381
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager;->d:J

    if-eqz p1, :cond_0

    .line 383
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->df:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCatalog;->getVersion()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->set(Ljava/lang/Object;)V

    .line 385
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public final a(Lcom/callapp/contacts/manager/inAppBilling/BillingManager;Ljava/util/List;)Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogReqBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/manager/inAppBilling/BillingManager;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/i;",
            ">;)",
            "Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogReqBuilder;"
        }
    .end annotation

    .line 264
    new-instance v0, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogReqBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogReqBuilder;-><init>(Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager;Lcom/callapp/contacts/manager/inAppBilling/BillingManager;Ljava/util/List;Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$1;)V

    return-object v0
.end method

.method public destroy()V
    .locals 0

    return-void
.end method

.method public init()V
    .locals 0

    return-void
.end method
