.class public Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard;
.super Lcom/callapp/contacts/activity/analytics/cards/base/AnalyticsWrapperCard;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard$CustomizationCardHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/callapp/contacts/activity/analytics/cards/base/AnalyticsWrapperCard<",
        "Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard$CustomizationCardHolder;",
        "Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallAppForYouCardItemCustomization;",
        ">;"
    }
.end annotation


# instance fields
.field private adapter:Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCardAdapter;

.field private alreadyBounded:Z

.field private billingManager:Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

.field private callScreen:I

.field private covers:I

.field private customizationVisibilityTracker:Lcom/mopub/mobileads/InlineVisibilityTracker;

.field private keypads:I

.field private mode:Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;

.field private noData:Z

.field purchasesData:Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallAppForYouCardItemCustomization;

.field private shouldShowAnimation:Z

.field private superSkin:I

.field private theme:I


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/activity/contact/cards/MultiCardContainer;)V
    .locals 1

    const v0, 0x7f0d0051

    .line 68
    invoke-direct {p0, p1, v0}, Lcom/callapp/contacts/activity/analytics/cards/base/AnalyticsWrapperCard;-><init>(Lcom/callapp/contacts/activity/contact/cards/MultiCardContainer;I)V

    const/4 p1, 0x0

    .line 54
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard;->noData:Z

    .line 57
    iput p1, p0, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard;->covers:I

    .line 58
    iput p1, p0, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard;->callScreen:I

    .line 59
    iput p1, p0, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard;->keypads:I

    .line 60
    iput p1, p0, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard;->theme:I

    .line 61
    iput p1, p0, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard;->superSkin:I

    .line 63
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard;->shouldShowAnimation:Z

    .line 64
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard;->alreadyBounded:Z

    .line 70
    new-instance p1, Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

    new-instance v0, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard$1;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard$1;-><init>(Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard;)V

    invoke-direct {p1, v0}, Lcom/callapp/contacts/manager/inAppBilling/BillingManager;-><init>(Lcom/callapp/contacts/manager/inAppBilling/BillingManager$BillingUpdatesListener;)V

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard;->billingManager:Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

    return-void
.end method

.method static synthetic access$000(Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard;)Lcom/callapp/contacts/manager/inAppBilling/BillingManager;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard;->billingManager:Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

    return-object p0
.end method

.method static synthetic access$100(Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard;Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;)Ljava/util/Map;
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard;->mapCatalogSkuToType(Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1000(Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard;)Z
    .locals 0

    .line 50
    iget-boolean p0, p0, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard;->alreadyBounded:Z

    return p0
.end method

.method static synthetic access$1100(Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard;Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard$CustomizationCardHolder;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard;->handleGraph(Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard$CustomizationCardHolder;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard;)Lcom/mopub/mobileads/InlineVisibilityTracker;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard;->customizationVisibilityTracker:Lcom/mopub/mobileads/InlineVisibilityTracker;

    return-object p0
.end method

.method static synthetic access$1202(Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard;Lcom/mopub/mobileads/InlineVisibilityTracker;)Lcom/mopub/mobileads/InlineVisibilityTracker;
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard;->customizationVisibilityTracker:Lcom/mopub/mobileads/InlineVisibilityTracker;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard;)Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCardAdapter;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard;->adapter:Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCardAdapter;

    return-object p0
.end method

.method static synthetic access$200(Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard;Ljava/lang/String;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard;->countData(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard;)I
    .locals 0

    .line 50
    iget p0, p0, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard;->covers:I

    return p0
.end method

.method static synthetic access$400(Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard;)I
    .locals 0

    .line 50
    iget p0, p0, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard;->callScreen:I

    return p0
.end method

.method static synthetic access$500(Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard;)I
    .locals 0

    .line 50
    iget p0, p0, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard;->keypads:I

    return p0
.end method

.method static synthetic access$600(Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard;)I
    .locals 0

    .line 50
    iget p0, p0, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard;->theme:I

    return p0
.end method

.method static synthetic access$700(Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard;)I
    .locals 0

    .line 50
    iget p0, p0, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard;->superSkin:I

    return p0
.end method

.method static synthetic access$902(Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard;Z)Z
    .locals 0

    .line 50
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard;->shouldShowAnimation:Z

    return p1
.end method

.method private countData(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_4

    .line 141
    sget-object v0, Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;->SUPER_SKIN:Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    iget p1, p0, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard;->superSkin:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard;->superSkin:I

    return-void

    .line 143
    :cond_0
    sget-object v0, Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;->THEME:Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 144
    iget p1, p0, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard;->theme:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard;->theme:I

    return-void

    .line 145
    :cond_1
    sget-object v0, Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;->COVER:Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 146
    iget p1, p0, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard;->covers:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard;->covers:I

    return-void

    .line 147
    :cond_2
    sget-object v0, Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;->KEYPAD:Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 148
    iget p1, p0, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard;->keypads:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard;->keypads:I

    return-void

    .line 150
    :cond_3
    sget-object v0, Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;->CALL_SCREEN:Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 151
    iget p1, p0, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard;->callScreen:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard;->callScreen:I

    :cond_4
    return-void
.end method

.method private handleGraph(Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard$CustomizationCardHolder;)V
    .locals 3

    .line 268
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard;->shouldShowAnimation:Z

    if-eqz v0, :cond_1

    .line 269
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard;->purchasesData:Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallAppForYouCardItemCustomization;

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard;->getCustomizationData(Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallAppForYouCardItemCustomization;)Ljava/util/List;

    move-result-object v0

    .line 271
    iget-object v1, p0, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard;->adapter:Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCardAdapter;

    if-nez v1, :cond_0

    .line 272
    new-instance v1, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCardAdapter;

    invoke-direct {v1, v0}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCardAdapter;-><init>(Ljava/util/List;)V

    iput-object v1, p0, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard;->adapter:Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCardAdapter;

    goto :goto_0

    .line 274
    :cond_0
    iget-object v1, p0, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    new-instance v2, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard$4;

    invoke-direct {v2, p0, v0}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard$4;-><init>(Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard;Ljava/util/List;)V

    invoke-interface {v1, v2}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->safeRunOnUIThread(Ljava/lang/Runnable;)V

    .line 282
    :goto_0
    iget-object p1, p1, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard$CustomizationCardHolder;->a:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard;->adapter:Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCardAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$a;)V

    :cond_1
    return-void
.end method

.method private mapCatalogSkuToType(Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 157
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 158
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;->getAllSuperSkins()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkin;

    .line 159
    invoke-virtual {v2}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkin;->getSku()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;->SUPER_SKIN:Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;

    invoke-virtual {v3}, Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 161
    :cond_0
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;->getAvilableCovers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemCover;

    .line 162
    invoke-virtual {v2}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemCover;->getSku()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;->COVER:Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;

    invoke-virtual {v3}, Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 164
    :cond_1
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;->getAvailableCallScreenThemes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCallScreenThemeItem;

    .line 165
    invoke-virtual {v2}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCallScreenThemeItem;->getSku()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;->CALL_SCREEN:Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;

    invoke-virtual {v3}, Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 167
    :cond_2
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;->getAvilableKeypads()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemKeypad;

    .line 168
    invoke-virtual {v2}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemKeypad;->getSku()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;->KEYPAD:Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;

    invoke-virtual {v3}, Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 170
    :cond_3
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;->getAvilableThemes()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemTheme;

    .line 171
    invoke-virtual {v1}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemTheme;->getSku()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;->THEME:Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;

    invoke-virtual {v2}, Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_4
    return-object v0
.end method


# virtual methods
.method public getCardBgColor()I
    .locals 2

    .line 179
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    const v1, 0x7f0601f1

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method public getCustomizationData(Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallAppForYouCardItemCustomization;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallAppForYouCardItemCustomization;",
            ")",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCardData;",
            ">;"
        }
    .end annotation

    .line 300
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 301
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallAppForYouCardItemCustomization;->getCallScreen()I

    move-result v1

    if-lez v1, :cond_0

    .line 302
    new-instance v1, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCardData;

    const v2, 0x7f060047

    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v3

    const v2, 0x7f120272

    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v2, 0x7f120271

    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallAppForYouCardItemCustomization;->getCallScreen()I

    move-result v6

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallAppForYouCardItemCustomization;->getMaxForProgress()I

    move-result v7

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCardData;-><init>(ILjava/lang/String;Ljava/lang/String;II)V

    .line 303
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 305
    :cond_0
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallAppForYouCardItemCustomization;->getSuperSkin()I

    move-result v1

    if-lez v1, :cond_1

    .line 306
    new-instance v1, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCardData;

    const v2, 0x7f060045

    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v3

    const v2, 0x7f12026e

    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v2, 0x7f12026d

    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallAppForYouCardItemCustomization;->getSuperSkin()I

    move-result v6

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallAppForYouCardItemCustomization;->getMaxForProgress()I

    move-result v7

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCardData;-><init>(ILjava/lang/String;Ljava/lang/String;II)V

    .line 307
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 309
    :cond_1
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallAppForYouCardItemCustomization;->getCover()I

    move-result v1

    if-lez v1, :cond_2

    .line 310
    new-instance v1, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCardData;

    const v2, 0x7f060043

    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v3

    const v2, 0x7f120265

    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v2, 0x7f120264

    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallAppForYouCardItemCustomization;->getCover()I

    move-result v6

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallAppForYouCardItemCustomization;->getMaxForProgress()I

    move-result v7

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCardData;-><init>(ILjava/lang/String;Ljava/lang/String;II)V

    .line 311
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 313
    :cond_2
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallAppForYouCardItemCustomization;->getTheme()I

    move-result v1

    if-lez v1, :cond_3

    .line 314
    new-instance v1, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCardData;

    const v2, 0x7f060046

    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v3

    const v2, 0x7f120270

    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v2, 0x7f12026f

    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallAppForYouCardItemCustomization;->getTheme()I

    move-result v6

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallAppForYouCardItemCustomization;->getMaxForProgress()I

    move-result v7

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCardData;-><init>(ILjava/lang/String;Ljava/lang/String;II)V

    .line 315
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 317
    :cond_3
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallAppForYouCardItemCustomization;->getKeypad()I

    move-result v1

    if-lez v1, :cond_4

    .line 318
    new-instance v1, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCardData;

    const v2, 0x7f060044

    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v3

    const v2, 0x7f120267

    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v2, 0x7f120266

    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallAppForYouCardItemCustomization;->getKeypad()I

    move-result v6

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallAppForYouCardItemCustomization;->getMaxForProgress()I

    move-result v7

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCardData;-><init>(ILjava/lang/String;Ljava/lang/String;II)V

    .line 319
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 321
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_5

    .line 322
    new-instance p1, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCardData;

    const v1, 0x7f06010f

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    const v1, 0x7f120269

    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v1, 0x7f120268

    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCardData;-><init>(ILjava/lang/String;Ljava/lang/String;II)V

    .line 323
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    .line 324
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard;->noData:Z

    :cond_5
    return-object v0
.end method

.method public getHeaderTitle()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
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

    .line 201
    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->phone:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    const/16 v0, 0x2b

    return v0
.end method

.method public onAnalyticsRefreshCard(Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;)V
    .locals 0

    .line 331
    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard;->mode:Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;

    return-void
.end method

.method protected onBindViewHolder(Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard$CustomizationCardHolder;)V
    .locals 3

    const/4 v0, 0x1

    .line 237
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard;->alreadyBounded:Z

    .line 238
    iget-object v0, p1, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard$CustomizationCardHolder;->e:Landroid/widget/RelativeLayout;

    const v1, 0x7f08009e

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    const v0, 0x7f0600aa

    .line 239
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    .line 240
    iget-object v1, p1, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard$CustomizationCardHolder;->e:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 242
    iget-object v0, p1, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard$CustomizationCardHolder;->b:Landroid/widget/TextView;

    const v1, 0x7f120263

    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 243
    iget-object v0, p1, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard$CustomizationCardHolder;->c:Landroid/widget/TextView;

    const v1, 0x7f120262

    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 244
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard;->noData:Z

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p1, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard$CustomizationCardHolder;->d:Landroid/widget/TextView;

    const v1, 0x7f120260

    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 247
    :cond_0
    iget-object v0, p1, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard$CustomizationCardHolder;->d:Landroid/widget/TextView;

    const v1, 0x7f120261

    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 250
    :goto_0
    iget-object v0, p1, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard$CustomizationCardHolder;->d:Landroid/widget/TextView;

    const v1, 0x7f080588

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 251
    iget-object v0, p1, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard$CustomizationCardHolder;->d:Landroid/widget/TextView;

    const v1, 0x7f0600a9

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 252
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 253
    iget-object v0, p1, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard$CustomizationCardHolder;->d:Landroid/widget/TextView;

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    const v2, 0x7f080099

    invoke-static {v1, v2}, Landroidx/core/content/b;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 255
    :cond_1
    iget-object v0, p1, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard$CustomizationCardHolder;->d:Landroid/widget/TextView;

    new-instance v1, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard$3;

    invoke-direct {v1, p0, p1}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard$3;-><init>(Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard;Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard$CustomizationCardHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 264
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard;->handleGraph(Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard$CustomizationCardHolder;)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Ljava/lang/Object;)V
    .locals 0

    .line 50
    check-cast p1, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard$CustomizationCardHolder;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard;->onBindViewHolder(Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard$CustomizationCardHolder;)V

    return-void
.end method

.method public onContactChanged(Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/model/contact/ContactData;",
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method protected onCreateViewHolder(Landroid/view/ViewGroup;)Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard$CustomizationCardHolder;
    .locals 8

    .line 216
    new-instance v0, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard$CustomizationCardHolder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard$CustomizationCardHolder;-><init>(Landroid/view/View;Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard$1;)V

    const v1, 0x7f0a02d4

    .line 217
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/RelativeLayout;

    .line 218
    new-instance v1, Lcom/mopub/mobileads/InlineVisibilityTracker;

    iget-object v2, p0, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {v2}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getRealContext()Landroid/content/Context;

    move-result-object v3

    const/16 v6, 0x1f4

    const/16 v7, 0x1f4

    move-object v2, v1

    move-object v4, p1

    invoke-direct/range {v2 .. v7}, Lcom/mopub/mobileads/InlineVisibilityTracker;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/view/View;II)V

    iput-object v1, p0, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard;->customizationVisibilityTracker:Lcom/mopub/mobileads/InlineVisibilityTracker;

    .line 219
    new-instance p1, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard$2;

    invoke-direct {p1, p0, v0}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard$2;-><init>(Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard;Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard$CustomizationCardHolder;)V

    invoke-virtual {v1, p1}, Lcom/mopub/mobileads/InlineVisibilityTracker;->setInlineVisibilityTrackerListener(Lcom/mopub/mobileads/InlineVisibilityTracker$InlineVisibilityTrackerListener;)V

    return-object v0
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;)Ljava/lang/Object;
    .locals 0

    .line 50
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard;->onCreateViewHolder(Landroid/view/ViewGroup;)Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard$CustomizationCardHolder;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 184
    invoke-super {p0}, Lcom/callapp/contacts/activity/analytics/cards/base/AnalyticsWrapperCard;->onDestroy()V

    .line 185
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard;->customizationVisibilityTracker:Lcom/mopub/mobileads/InlineVisibilityTracker;

    if-eqz v0, :cond_0

    .line 186
    invoke-virtual {v0}, Lcom/mopub/mobileads/InlineVisibilityTracker;->destroy()V

    const/4 v0, 0x0

    .line 187
    iput-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard;->customizationVisibilityTracker:Lcom/mopub/mobileads/InlineVisibilityTracker;

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard;->billingManager:Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

    if-eqz v0, :cond_1

    .line 190
    invoke-virtual {v0}, Lcom/callapp/contacts/manager/inAppBilling/BillingManager;->b()V

    :cond_1
    return-void
.end method

.method public showShouldExpandButton()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected updateCardData(Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallAppForYouCardItemCustomization;Z)V
    .locals 0

    .line 290
    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard;->purchasesData:Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallAppForYouCardItemCustomization;

    const/4 p1, 0x1

    .line 291
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard;->showCard(Z)V

    return-void
.end method

.method public bridge synthetic updateCardData(Ljava/lang/Object;Z)V
    .locals 0

    .line 50
    check-cast p1, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallAppForYouCardItemCustomization;

    invoke-virtual {p0, p1, p2}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard;->updateCardData(Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallAppForYouCardItemCustomization;Z)V

    return-void
.end method
