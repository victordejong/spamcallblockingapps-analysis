.class public Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;
.super Lcom/callapp/contacts/activity/base/BaseTopBarActivity;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/activity/interfaces/ThemeChangedListener;
.implements Lcom/callapp/contacts/activity/marketplace/FreeStoreItemDialog$FreeStoreItemDialogEvents;


# instance fields
.field private a:Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;

.field private b:Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceAdapter;

.field private c:Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceAdapter;

.field private d:Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceAdapter;

.field private e:Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceAdapter;

.field private f:Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceAdapter;

.field private g:Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceAdapter;

.field private h:Lcom/callapp/contacts/widget/horizontalHeader/HorizontalPagerHeader;

.field private j:Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

.field private k:Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppInActivityChatHeadManager;

.field private l:Z

.field private m:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 106
    invoke-direct {p0}, Lcom/callapp/contacts/activity/base/BaseTopBarActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceAdapter;)Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceAdapter;
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;->c:Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceAdapter;

    return-object p1
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;)Lcom/callapp/contacts/manager/inAppBilling/BillingManager;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;->j:Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

    return-object p0
.end method

.method private synthetic a(Landroid/app/Activity;)V
    .locals 3

    .line 527
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$2;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$2;-><init>(Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 3

    .line 126
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "SHOW_LOYALTY_POPUP_EXTRA"

    const/4 v2, 0x1

    .line 127
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 129
    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 131
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .locals 3

    .line 493
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "video/"

    invoke-static {v0, v1}, Lcom/callapp/framework/util/StringUtils;->e(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.intent.extra.STREAM"

    .line 494
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    if-eqz p1, :cond_0

    .line 496
    sget-object v0, Lcom/callapp/contacts/activity/marketplace/PersonalCallScreenThemeDownloaderActivity;->n:Lcom/callapp/contacts/activity/marketplace/PersonalCallScreenThemeDownloaderActivity$Companion;

    sget-object v0, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;->VIDEO_RINGTONE:Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;

    invoke-static {v0}, Lcom/callapp/contacts/activity/marketplace/PersonalStoreItemHelper;->a(Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;->m:Ljava/lang/String;

    invoke-static {p0, v0, v1, p1, v2}, Lcom/callapp/contacts/activity/marketplace/PersonalCallScreenThemeDownloaderActivity$Companion;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;Landroid/net/Uri;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;IILandroid/view/View$OnClickListener;Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceAdapter;)V
    .locals 8

    .line 3715
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v7, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$13;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$13;-><init>(Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;IILandroid/view/View$OnClickListener;Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceAdapter;)V

    invoke-virtual {v0, v7}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_4

    const v0, 0x7f12055c

    .line 6601
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6602
    new-instance p1, Landroid/content/Intent;

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    const-class v1, Lcom/callapp/contacts/activity/marketplace/CoverStoreItemsListActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    :cond_0
    const v0, 0x7f12055d

    .line 6603
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6604
    new-instance p1, Landroid/content/Intent;

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    const-class v1, Lcom/callapp/contacts/activity/marketplace/KeypadStoreItemsListActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    :cond_1
    const v0, 0x7f12055b

    .line 6605
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6606
    new-instance p1, Landroid/content/Intent;

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    const-class v1, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeStoreItemsListActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    :cond_2
    const v0, 0x7f12055f

    .line 6607
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 6608
    new-instance p1, Landroid/content/Intent;

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    const-class v1, Lcom/callapp/contacts/activity/marketplace/ThemeStoreItemsListActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    .line 6610
    :cond_3
    new-instance p1, Landroid/content/Intent;

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    const-class v1, Lcom/callapp/contacts/activity/marketplace/SuperSkinStoreItemsListActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 6612
    :goto_0
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;->startActivity(Landroid/content/Intent;)V

    :cond_4
    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;Ljava/util/List;Lcom/callapp/contacts/manager/task/Task$DoneListener;)V
    .locals 11

    .line 2668
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2670
    invoke-static {p1}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2671
    new-instance v1, Lcom/callapp/contacts/manager/task/DoneCountNotifier;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2, p2}, Lcom/callapp/contacts/manager/task/DoneCountNotifier;-><init>(ILcom/callapp/contacts/manager/task/Task$DoneListener;)V

    .line 2673
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemBanner;

    .line 2674
    invoke-virtual {p2}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemBanner;->getHideIfPremium()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/callapp/contacts/manager/preferences/Prefs;->cJ:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v2}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2678
    :cond_1
    new-instance v10, Lcom/callapp/contacts/widget/horizontalHeader/HorizontalPagerHeader$SinglePageData;

    invoke-virtual {p2}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemBanner;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemBanner;->getSubTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemBanner;->getAction()Lcom/callapp/contacts/activity/calllog/stickyBanner/JsonStickyAction;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callapp/contacts/activity/calllog/stickyBanner/JsonStickyAction;->getActionText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemBanner;->getBackground()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$11;

    invoke-direct {v7, p0, p2}, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$11;-><init>(Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemBanner;)V

    sget-object v9, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    move-object v2, v10

    move-object v8, v1

    invoke-direct/range {v2 .. v9}, Lcom/callapp/contacts/widget/horizontalHeader/HorizontalPagerHeader$SinglePageData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;Lcom/callapp/contacts/manager/task/Task$DoneListener;Landroid/widget/ImageView$ScaleType;)V

    .line 2687
    invoke-virtual {p2}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemBanner;->getTextColor()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v10, v2}, Lcom/callapp/contacts/widget/horizontalHeader/HorizontalPagerHeader$SinglePageData;->setTitleColor(I)V

    .line 2688
    invoke-virtual {p2}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemBanner;->getTextColor()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v10, v2}, Lcom/callapp/contacts/widget/horizontalHeader/HorizontalPagerHeader$SinglePageData;->setSubtitleColor(I)V

    .line 2689
    invoke-virtual {p2}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemBanner;->getTextActionColor()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v10, v2}, Lcom/callapp/contacts/widget/horizontalHeader/HorizontalPagerHeader$SinglePageData;->setBtnTextColor(I)V

    .line 2690
    invoke-virtual {p2}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemBanner;->getActionColor()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v10, p2}, Lcom/callapp/contacts/widget/horizontalHeader/HorizontalPagerHeader$SinglePageData;->setBtnBorderColor(I)V

    .line 2691
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2696
    :cond_2
    invoke-interface {p2}, Lcom/callapp/contacts/manager/task/Task$DoneListener;->onDone()V

    .line 2700
    :cond_3
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p1

    new-instance p2, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$12;

    invoke-direct {p2, p0, v0}, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$12;-><init>(Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;Ljava/util/ArrayList;)V

    invoke-virtual {p1, p2}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;Ljava/util/List;)V
    .locals 1

    .line 3502
    invoke-static {p0}, Lcom/callapp/contacts/manager/PromotionManager;->d(Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 3504
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;

    const/4 v0, 0x0

    .line 3505
    invoke-virtual {p1, v0}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;->setPrice(F)V

    const v0, 0x7f12034b

    .line 3506
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;->setPriceWithCurrency(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 3507
    invoke-virtual {p1, v0}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;->setPurchased(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceAdapter;)Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceAdapter;
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;->g:Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceAdapter;

    return-object p1
.end method

.method static synthetic b(Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;)Lcom/callapp/contacts/widget/horizontalHeader/HorizontalPagerHeader;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;->h:Lcom/callapp/contacts/widget/horizontalHeader/HorizontalPagerHeader;

    return-object p0
.end method

.method public static b()V
    .locals 3

    .line 135
    invoke-static {}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->get()Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;

    move-result-object v0

    const-string v1, "showMarketplaceWidget"

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->c(Ljava/lang/String;)Z

    move-result v0

    .line 136
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->eg:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 137
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->eg:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    .line 138
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->eh:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private synthetic b(Landroid/app/Activity;)V
    .locals 2

    .line 521
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 522
    const-class p1, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;

    const-string v1, "RETURN_TO_PREVIOUS_CLASS"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string p1, "PLAN_PAGE_SOURCE"

    const-string v1, "loyal"

    .line 523
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 524
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic c(Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;)Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceAdapter;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;->c:Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceAdapter;

    return-object p0
.end method

.method static synthetic c(Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceAdapter;)Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceAdapter;
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;->e:Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceAdapter;

    return-object p1
.end method

.method private static c()Z
    .locals 5

    .line 652
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->ge:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    invoke-static {}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->get()Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;

    move-result-object v2

    const-string v3, "promotionShowDialogInterval"

    invoke-virtual {v2, v3}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->b(Ljava/lang/String;)J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic d(Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;)Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceAdapter;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;->g:Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceAdapter;

    return-object p0
.end method

.method static synthetic d(Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceAdapter;)Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceAdapter;
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;->b:Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceAdapter;

    return-object p1
.end method

.method static synthetic e(Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;)Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceAdapter;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;->e:Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceAdapter;

    return-object p0
.end method

.method static synthetic e(Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceAdapter;)Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceAdapter;
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;->f:Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceAdapter;

    return-object p1
.end method

.method static synthetic f(Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;)Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceAdapter;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;->b:Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceAdapter;

    return-object p0
.end method

.method static synthetic f(Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceAdapter;)Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceAdapter;
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;->d:Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceAdapter;

    return-object p1
.end method

.method static synthetic g(Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;)Ljava/lang/String;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;->m:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic h(Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;)Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceAdapter;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;->f:Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceAdapter;

    return-object p0
.end method

.method static synthetic i(Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;)Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceAdapter;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;->d:Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceAdapter;

    return-object p0
.end method

.method static synthetic j(Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;)Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;->a:Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;

    return-object p0
.end method

.method static synthetic k(Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;)Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;
    .locals 1

    const/4 v0, 0x0

    .line 106
    iput-object v0, p0, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;->a:Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;

    return-object v0
.end method

.method static synthetic l(Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;)V
    .locals 11

    .line 4540
    new-instance v10, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$4;

    const v0, 0x7f120099

    .line 4541
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v0, 0x7f120098

    .line 4542
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v0, 0x7f120874

    .line 4544
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v7

    const v0, 0x7f0600f2

    .line 4545
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v8

    new-instance v9, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$3;

    invoke-direct {v9, p0}, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$3;-><init>(Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;)V

    const v2, 0x7f080068

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v10

    move-object v1, p0

    invoke-direct/range {v0 .. v9}, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$4;-><init>(Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;Ljava/lang/String;ILcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;)V

    const/4 v0, 0x0

    .line 4556
    invoke-virtual {v10, v0}, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImage;->setCancelable(Z)V

    .line 4557
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object v0

    invoke-virtual {v0, p0, v10}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    return-void
.end method

.method public static synthetic lambda$Iv9eag1ltRGtOcLU1v9CaMGCBQk(Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;->a(Landroid/app/Activity;)V

    return-void
.end method

.method public static synthetic lambda$Ogdg_XjAez81sabrlE3sk8-wHWM(Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;->b(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic m(Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;)Z
    .locals 13

    .line 4562
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->gf:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/callapp/contacts/manager/PromotionManager;->isUserHasActivePromotion()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/callapp/contacts/manager/PromotionManager;->isUserPurchaesPromotion()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4563
    invoke-static {}, Lcom/callapp/contacts/manager/PromotionManager;->getPromotionBannerNotBuyTitle()Landroid/util/Pair;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4565
    new-instance v12, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$7;

    const v4, 0x7f08007d

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v5, v2

    check-cast v5, Ljava/lang/CharSequence;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Ljava/lang/CharSequence;

    const v0, 0x7f1204ea

    .line 4568
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$5;

    invoke-direct {v8, p0}, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$5;-><init>(Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;)V

    const v0, 0x7f1203eb

    .line 4574
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v9

    const v0, 0x7f0600f2

    .line 4575
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v10

    new-instance v11, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$6;

    invoke-direct {v11, p0}, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$6;-><init>(Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;)V

    move-object v2, v12

    move-object v3, p0

    invoke-direct/range {v2 .. v11}, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$7;-><init>(Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;Ljava/lang/String;ILcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;)V

    .line 4587
    invoke-virtual {v12, v1}, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImage;->setCancelable(Z)V

    .line 4589
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object v0

    invoke-virtual {v0, p0, v12}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method static synthetic n(Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;)Z
    .locals 13

    .line 4617
    invoke-static {}, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;->c()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/callapp/contacts/manager/PromotionManager;->isUserPurchaesPromotion()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4618
    invoke-static {}, Lcom/callapp/contacts/manager/PromotionManager;->getPromotionBannerBuyTitle()Landroid/util/Pair;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4620
    new-instance v12, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$10;

    const v4, 0x7f08007c

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v5, v2

    check-cast v5, Ljava/lang/CharSequence;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Ljava/lang/CharSequence;

    const v0, 0x7f1204ea

    .line 4623
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$8;

    invoke-direct {v8, p0}, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$8;-><init>(Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;)V

    const v0, 0x7f1203eb

    .line 4628
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v9

    const v0, 0x7f0600f2

    .line 4629
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v10

    new-instance v11, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$9;

    invoke-direct {v11, p0}, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$9;-><init>(Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;)V

    move-object v2, v12

    move-object v3, p0

    invoke-direct/range {v2 .. v11}, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$10;-><init>(Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;Ljava/lang/String;ILcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;)V

    .line 4641
    invoke-virtual {v12, v1}, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImage;->setCancelable(Z)V

    .line 4643
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object v0

    invoke-virtual {v0, p0, v12}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method static synthetic o(Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;)V
    .locals 18

    move-object/from16 v0, p0

    .line 5514
    invoke-static {}, Lcom/callapp/contacts/manager/UserProfileManager;->get()Lcom/callapp/contacts/manager/UserProfileManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/UserProfileManager;->getUserFirstName()Ljava/lang/String;

    move-result-object v1

    .line 5515
    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    .line 5516
    :goto_0
    new-instance v2, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImage;

    const v6, 0x7f0800ab

    const/4 v7, 0x0

    const v8, 0x7f0800ac

    const v5, 0x7f120420

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v3

    .line 5517
    invoke-static {v5, v4}, Lcom/callapp/contacts/util/Activities;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    const v10, 0x7f0601ec

    const v1, 0x7f12041f

    .line 5518
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v11

    const v1, 0x7f120354

    .line 5519
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v12

    new-instance v13, Lcom/callapp/contacts/activity/marketplace/-$$Lambda$MarketPlaceActivity$Ogdg_XjAez81sabrlE3sk8-wHWM;

    invoke-direct {v13, v0}, Lcom/callapp/contacts/activity/marketplace/-$$Lambda$MarketPlaceActivity$Ogdg_XjAez81sabrlE3sk8-wHWM;-><init>(Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;)V

    const v1, 0x7f1204d2

    .line 5526
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    const v1, 0x7f06010f

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v16

    new-instance v1, Lcom/callapp/contacts/activity/marketplace/-$$Lambda$MarketPlaceActivity$Iv9eag1ltRGtOcLU1v9CaMGCBQk;

    invoke-direct {v1, v0}, Lcom/callapp/contacts/activity/marketplace/-$$Lambda$MarketPlaceActivity$Iv9eag1ltRGtOcLU1v9CaMGCBQk;-><init>(Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;)V

    move-object v5, v2

    move-object/from16 v17, v1

    invoke-direct/range {v5 .. v17}, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImage;-><init>(IIILjava/lang/CharSequence;ILjava/lang/CharSequence;Ljava/lang/String;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;Ljava/lang/String;ZILcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;)V

    .line 5534
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->an:Lcom/callapp/contacts/manager/preferences/prefs/DatePref;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v3}, Lcom/callapp/contacts/manager/preferences/prefs/DatePref;->set(Ljava/lang/Object;)V

    .line 5535
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    return-void
.end method

.method static synthetic p(Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;)V
    .locals 11

    .line 5785
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;->l:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;->k:Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppInActivityChatHeadManager;

    if-nez v0, :cond_0

    const v0, 0x7f0a0435

    .line 5786
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 5787
    new-instance v1, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/MarketplaceWidgetManager;

    new-instance v2, Lcom/callapp/contacts/widget/floatingwidget/FrameLayoutChatHeadContainer;

    invoke-direct {v2, v0}, Lcom/callapp/contacts/widget/floatingwidget/FrameLayoutChatHeadContainer;-><init>(Landroid/widget/FrameLayout;)V

    invoke-direct {v1, p0, v2}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/MarketplaceWidgetManager;-><init>(Landroid/app/Activity;Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadContainer;)V

    iput-object v1, p0, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;->k:Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppInActivityChatHeadManager;

    .line 5788
    const-class v0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;

    const/4 v2, 0x0

    .line 6382
    invoke-virtual {v1, v0, v2}, Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager;->a(Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 5789
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;->k:Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppInActivityChatHeadManager;

    new-instance v1, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$14;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$14;-><init>(Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppInActivityChatHeadManager;->setOnItemSelectedListener(Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager$OnItemSelectedListener;)V

    .line 5810
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;->k:Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppInActivityChatHeadManager;

    new-instance v1, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$15;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$15;-><init>(Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppInActivityChatHeadManager;->setListener(Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadListener;)V

    .line 5837
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;->k:Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppInActivityChatHeadManager;

    const-string v1, "market"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppInActivityChatHeadManager;->a(Ljava/io/Serializable;ZZ)Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;

    .line 5838
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v4

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v0, 0x2

    new-array v10, v0, [Ljava/lang/String;

    const-string v0, "source"

    aput-object v0, v10, v2

    iget-object p0, p0, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;->m:Ljava/lang/String;

    aput-object p0, v10, v3

    const-string v5, "Store"

    const-string v6, "MarketPlace Widget Added"

    invoke-virtual/range {v4 .. v10}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic q(Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;)Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppInActivityChatHeadManager;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;->k:Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppInActivityChatHeadManager;

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$StoreItemType;)V
    .locals 0

    return-void
.end method

.method public final g()V
    .locals 4

    .line 867
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$17;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$17;-><init>(Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 874
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->cQ:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public getLayoutResourceId()I
    .locals 1

    const v0, 0x7f0d0035

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 149
    invoke-super {p0, p1}, Lcom/callapp/contacts/activity/base/BaseTopBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 150
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 151
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "source"

    .line 152
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;->m:Ljava/lang/String;

    :cond_0
    const p1, 0x7f120687

    .line 154
    invoke-static {p1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 155
    invoke-static {}, Lcom/callapp/contacts/activity/contact/list/RetentionAnalytics;->get()Lcom/callapp/contacts/activity/contact/list/RetentionAnalytics;

    invoke-static {}, Lcom/callapp/contacts/activity/contact/list/RetentionAnalytics;->a()V

    .line 156
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->ge:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    const/4 v0, 0x1

    .line 1039
    invoke-virtual {p1, v0}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->b(I)Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    .line 157
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->cJ:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->get()Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;

    move-result-object p1

    const-string v1, "showMarketplaceWidget"

    invoke-virtual {p1, v1}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->c(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;->l:Z

    .line 158
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p1

    const v0, 0x7f0600f3

    invoke-static {p1, v0}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result p1

    const v0, 0x7f0a079f

    .line 159
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 160
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 162
    new-instance p1, Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

    new-instance v1, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1;

    invoke-direct {v1, p0, v0}, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1;-><init>(Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;Landroid/view/View;)V

    invoke-direct {p1, v1}, Lcom/callapp/contacts/manager/inAppBilling/BillingManager;-><init>(Lcom/callapp/contacts/manager/inAppBilling/BillingManager$BillingUpdatesListener;)V

    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;->j:Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

    const p1, 0x7f0a04a5

    .line 460
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/widget/horizontalHeader/HorizontalPagerHeader;

    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;->h:Lcom/callapp/contacts/widget/horizontalHeader/HorizontalPagerHeader;

    .line 462
    invoke-static {}, Lcom/callapp/contacts/util/http/HttpUtils;->a()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_2

    .line 463
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;->finish()V

    .line 464
    invoke-static {}, Lcom/callapp/contacts/manager/FeedbackManager;->get()Lcom/callapp/contacts/manager/FeedbackManager;

    move-result-object p1

    const v1, 0x7f12052f

    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1111
    invoke-virtual {p1, v1, v0}, Lcom/callapp/contacts/manager/FeedbackManager;->a(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void

    .line 468
    :cond_2
    invoke-static {}, Lcom/callapp/contacts/manager/inAppBilling/BillingManager;->isBillingAvailable()Z

    move-result p1

    if-nez p1, :cond_3

    .line 469
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;->finish()V

    .line 470
    invoke-static {}, Lcom/callapp/contacts/manager/FeedbackManager;->get()Lcom/callapp/contacts/manager/FeedbackManager;

    move-result-object p1

    const v1, 0x7f1200ef

    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2111
    invoke-virtual {p1, v1, v0}, Lcom/callapp/contacts/manager/FeedbackManager;->a(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void

    .line 474
    :cond_3
    new-instance p1, Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;

    invoke-direct {p1}, Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;-><init>()V

    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;->a:Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;

    const v0, 0x7f120537

    .line 475
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 476
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object p1

    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;->a:Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;

    invoke-virtual {p1, p0, v0}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    .line 478
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.SEND"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 479
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;->a(Landroid/content/Intent;)V

    :cond_4
    return-void
.end method

.method public onDestroy()V
    .locals 7

    .line 751
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const/4 v1, 0x2

    new-array v6, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "source"

    aput-object v2, v6, v1

    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;->m:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v6, v2

    const-string v1, "Screen"

    const-string v2, "ScreenClose"

    const-string v3, "Store screen"

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D[Ljava/lang/String;)V

    .line 753
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;->b:Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 754
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceAdapter;->setItemClickedListener(Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceAdapter$MarketItemClickEvent;)V

    .line 757
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;->c:Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceAdapter;

    if-eqz v0, :cond_1

    .line 758
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceAdapter;->setItemClickedListener(Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceAdapter$MarketItemClickEvent;)V

    .line 761
    :cond_1
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;->e:Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceAdapter;

    if-eqz v0, :cond_2

    .line 762
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceAdapter;->setItemClickedListener(Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceAdapter$MarketItemClickEvent;)V

    .line 765
    :cond_2
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;->f:Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceAdapter;

    if-eqz v0, :cond_3

    .line 766
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceAdapter;->setItemClickedListener(Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceAdapter$MarketItemClickEvent;)V

    .line 769
    :cond_3
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;->g:Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceAdapter;

    if-eqz v0, :cond_4

    .line 770
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceAdapter;->setItemClickedListener(Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceAdapter$MarketItemClickEvent;)V

    .line 773
    :cond_4
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;->j:Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

    if-eqz v0, :cond_5

    .line 774
    invoke-virtual {v0}, Lcom/callapp/contacts/manager/inAppBilling/BillingManager;->b()V

    .line 775
    iput-object v1, p0, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;->j:Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

    .line 778
    :cond_5
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;->a:Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;

    invoke-static {v0}, Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;->a(Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;)V

    .line 779
    iput-object v1, p0, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;->a:Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;

    .line 781
    invoke-super {p0}, Lcom/callapp/contacts/activity/base/BaseTopBarActivity;->onDestroy()V

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 2

    .line 486
    invoke-super {p0, p1}, Lcom/callapp/contacts/activity/base/BaseTopBarActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 487
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SEND"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 488
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;->a(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 742
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;->h:Lcom/callapp/contacts/widget/horizontalHeader/HorizontalPagerHeader;

    if-eqz v0, :cond_0

    .line 2172
    iget-object v0, v0, Lcom/callapp/contacts/widget/horizontalHeader/HorizontalPagerHeader;->a:Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerLayoutViewHolder;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerLayoutViewHolder;->c()V

    .line 746
    :cond_0
    invoke-super {p0}, Lcom/callapp/contacts/activity/base/BaseTopBarActivity;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 844
    invoke-super {p0}, Lcom/callapp/contacts/activity/base/BaseTopBarActivity;->onResume()V

    .line 845
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;->k:Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppInActivityChatHeadManager;

    if-eqz v0, :cond_0

    .line 846
    invoke-virtual {v0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppInActivityChatHeadManager;->k()V

    :cond_0
    return-void
.end method

.method public onThemeChanged()V
    .locals 2

    .line 852
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$16;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$16;-><init>(Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    return-void
.end method
