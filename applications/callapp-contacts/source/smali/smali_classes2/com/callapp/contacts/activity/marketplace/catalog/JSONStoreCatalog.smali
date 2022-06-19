.class Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCatalog;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private allItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;",
            ">;"
        }
    .end annotation
.end field

.field private bundlesV3:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "bundlesV3"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemBundle;",
            ">;"
        }
    .end annotation
.end field

.field private callScreenThemeItems:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "inCallThemes"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCallScreenThemeItem;",
            ">;"
        }
    .end annotation
.end field

.field private combinedCallScreenThemeItems:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCallScreenThemeItem;",
            ">;"
        }
    .end annotation
.end field

.field private combinedCoverItems:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemCover;",
            ">;"
        }
    .end annotation
.end field

.field private combinedKeypadItems:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemKeypad;",
            ">;"
        }
    .end annotation
.end field

.field private covers:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "covers"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemCover;",
            ">;"
        }
    .end annotation
.end field

.field private customizedCallScreenThemeItems:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "customizedInCallThemes"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCallScreenThemeItem;",
            ">;"
        }
    .end annotation
.end field

.field private customizedCovers:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "customizedCovers"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemCover;",
            ">;"
        }
    .end annotation
.end field

.field private customizedKeypads:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "customizedKeypads"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemKeypad;",
            ">;"
        }
    .end annotation
.end field

.field private keypads:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "keypads"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemKeypad;",
            ">;"
        }
    .end annotation
.end field

.field private plans:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "plans"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemPremiumAppItem;",
            ">;"
        }
    .end annotation
.end field

.field private premiumItem:Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemPremium;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "premiumItem"
    .end annotation
.end field

.field private storeItemBanners:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "storeItemCustomizedBanners"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemBanner;",
            ">;"
        }
    .end annotation
.end field

.field private superSkins:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "superSkins"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkin;",
            ">;"
        }
    .end annotation
.end field

.field private themes:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "themes"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemTheme;",
            ">;"
        }
    .end annotation
.end field

.field private version:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "version"
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$getJsonStoreItem$0(Ljava/lang/String;Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;)Z
    .locals 0

    .line 228
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;->getSku()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_11

    .line 235
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto/16 :goto_0

    .line 237
    :cond_1
    check-cast p1, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCatalog;

    .line 239
    iget v1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCatalog;->version:I

    iget v2, p1, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCatalog;->version:I

    if-eq v1, v2, :cond_2

    return v0

    .line 240
    :cond_2
    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCatalog;->customizedCallScreenThemeItems:Ljava/util/List;

    iget-object v2, p1, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCatalog;->customizedCallScreenThemeItems:Ljava/util/List;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v0

    .line 242
    :cond_3
    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCatalog;->callScreenThemeItems:Ljava/util/List;

    iget-object v2, p1, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCatalog;->callScreenThemeItems:Ljava/util/List;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v0

    .line 244
    :cond_4
    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCatalog;->superSkins:Ljava/util/List;

    iget-object v2, p1, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCatalog;->superSkins:Ljava/util/List;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v0

    .line 246
    :cond_5
    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCatalog;->themes:Ljava/util/List;

    iget-object v2, p1, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCatalog;->themes:Ljava/util/List;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v0

    .line 247
    :cond_6
    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCatalog;->covers:Ljava/util/List;

    iget-object v2, p1, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCatalog;->covers:Ljava/util/List;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v0

    .line 248
    :cond_7
    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCatalog;->bundlesV3:Ljava/util/List;

    iget-object v2, p1, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCatalog;->bundlesV3:Ljava/util/List;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v0

    .line 249
    :cond_8
    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCatalog;->customizedKeypads:Ljava/util/List;

    iget-object v2, p1, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCatalog;->customizedKeypads:Ljava/util/List;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v0

    .line 251
    :cond_9
    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCatalog;->keypads:Ljava/util/List;

    iget-object v2, p1, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCatalog;->keypads:Ljava/util/List;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v0

    .line 252
    :cond_a
    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCatalog;->storeItemBanners:Ljava/util/List;

    iget-object v2, p1, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCatalog;->storeItemBanners:Ljava/util/List;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v0

    .line 254
    :cond_b
    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCatalog;->premiumItem:Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemPremium;

    iget-object v2, p1, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCatalog;->premiumItem:Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemPremium;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v0

    .line 256
    :cond_c
    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCatalog;->plans:Ljava/util/List;

    iget-object v2, p1, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCatalog;->plans:Ljava/util/List;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v0

    .line 257
    :cond_d
    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCatalog;->allItems:Ljava/util/List;

    iget-object v2, p1, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCatalog;->allItems:Ljava/util/List;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v0

    .line 259
    :cond_e
    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCatalog;->combinedCallScreenThemeItems:Ljava/util/List;

    iget-object v2, p1, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCatalog;->combinedCallScreenThemeItems:Ljava/util/List;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v0

    .line 261
    :cond_f
    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCatalog;->combinedCoverItems:Ljava/util/List;

    iget-object v2, p1, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCatalog;->combinedCoverItems:Ljava/util/List;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    return v0

    .line 263
    :cond_10
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCatalog;->combinedKeypadItems:Ljava/util/List;

    iget-object p1, p1, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCatalog;->combinedKeypadItems:Ljava/util/List;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_11
    :goto_0
    return v0
.end method

.method public getAllCallScreenThemes()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCallScreenThemeItem;",
            ">;"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCatalog;->combinedCallScreenThemeItems:Ljava/util/List;

    if-nez v0, :cond_1

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCatalog;->combinedCallScreenThemeItems:Ljava/util/List;

    .line 59
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCatalog;->customizedCallScreenThemeItems:Ljava/util/List;

    invoke-static {v0}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCatalog;->combinedCallScreenThemeItems:Ljava/util/List;

    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCatalog;->customizedCallScreenThemeItems:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCatalog;->callScreenThemeItems:Ljava/util/List;

    invoke-static {v0}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCatalog;->combinedCallScreenThemeItems:Ljava/util/List;

    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCatalog;->callScreenThemeItems:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 67
    :cond_1
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCatalog;->combinedCallScreenThemeItems:Ljava/util/List;

    return-object v0
.end method

.method getBundleV3(Ljava/lang/String;)Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemBundle;
    .locals 3

    .line 161
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCatalog;->bundlesV3:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 162
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemBundle;

    .line 163
    invoke-virtual {v1}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemBundle;->getSku()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getBundlesV3()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemBundle;",
            ">;"
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCatalog;->bundlesV3:Ljava/util/List;

    return-object v0
.end method

.method getCover(Ljava/lang/String;)Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemCover;
    .locals 3

    .line 135
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCatalog;->getCovers()Ljava/util/List;

    move-result-object v0

    .line 136
    invoke-static {v0}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 137
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemCover;

    .line 138
    invoke-virtual {v1}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemCover;->getSku()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method getCovers()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemCover;",
            ">;"
        }
    .end annotation

    .line 146
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCatalog;->combinedCoverItems:Ljava/util/List;

    if-nez v0, :cond_1

    .line 147
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCatalog;->combinedCoverItems:Ljava/util/List;

    .line 148
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCatalog;->customizedCovers:Ljava/util/List;

    invoke-static {v0}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCatalog;->combinedCoverItems:Ljava/util/List;

    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCatalog;->customizedCovers:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCatalog;->covers:Ljava/util/List;

    invoke-static {v0}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 153
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCatalog;->combinedCoverItems:Ljava/util/List;

    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCatalog;->covers:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 157
    :cond_1
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCatalog;->combinedCoverItems:Ljava/util/List;

    return-object v0
.end method

.method public getInCallThemeItem(Ljava/lang/String;)Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCallScreenThemeItem;
    .locals 3

    .line 184
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCatalog;->getAllCallScreenThemes()Ljava/util/List;

    move-result-object v0

    .line 185
    invoke-static {v0}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 186
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCallScreenThemeItem;

    .line 187
    invoke-virtual {v1}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCallScreenThemeItem;->getSku()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method getJsonStoreItem(Ljava/lang/String;)Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;
    .locals 2

    .line 217
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCatalog;->allItems:Ljava/util/List;

    invoke-static {v0}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCatalog;->allItems:Ljava/util/List;

    .line 219
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCatalog;->getThemes()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/List;Ljava/util/List;)V

    .line 220
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCatalog;->allItems:Ljava/util/List;

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCatalog;->getSuperSkins()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/List;Ljava/util/List;)V

    .line 221
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCatalog;->allItems:Ljava/util/List;

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCatalog;->getAllCallScreenThemes()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/List;Ljava/util/List;)V

    .line 222
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCatalog;->allItems:Ljava/util/List;

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCatalog;->getKeypads()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/List;Ljava/util/List;)V

    .line 223
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCatalog;->allItems:Ljava/util/List;

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCatalog;->getCovers()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/List;Ljava/util/List;)V

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCatalog;->allItems:Ljava/util/List;

    new-instance v1, Lcom/callapp/contacts/activity/marketplace/catalog/-$$Lambda$JSONStoreCatalog$OMIMV1VWmzHMINpIyr5MHWxRkV0;

    invoke-direct {v1, p1}, Lcom/callapp/contacts/activity/marketplace/catalog/-$$Lambda$JSONStoreCatalog$OMIMV1VWmzHMINpIyr5MHWxRkV0;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;Lcom/callapp/framework/util/CollectionUtils$Predicate;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;

    return-object p1
.end method

.method getKeypad(Ljava/lang/String;)Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemKeypad;
    .locals 3

    .line 172
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCatalog;->getKeypads()Ljava/util/List;

    move-result-object v0

    .line 173
    invoke-static {v0}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 174
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemKeypad;

    .line 175
    invoke-virtual {v1}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemKeypad;->getSku()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getKeypads()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemKeypad;",
            ">;"
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCatalog;->combinedKeypadItems:Ljava/util/List;

    if-nez v0, :cond_1

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCatalog;->combinedKeypadItems:Ljava/util/List;

    .line 101
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCatalog;->customizedKeypads:Ljava/util/List;

    invoke-static {v0}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCatalog;->combinedKeypadItems:Ljava/util/List;

    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCatalog;->customizedKeypads:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCatalog;->keypads:Ljava/util/List;

    invoke-static {v0}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 106
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCatalog;->combinedKeypadItems:Ljava/util/List;

    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCatalog;->keypads:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 110
    :cond_1
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCatalog;->combinedKeypadItems:Ljava/util/List;

    return-object v0
.end method

.method public getPlans()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemPremiumAppItem;",
            ">;"
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCatalog;->plans:Ljava/util/List;

    return-object v0
.end method

.method getPremiumItem()Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemPremium;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCatalog;->premiumItem:Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemPremium;

    return-object v0
.end method

.method getStoreItemBanners()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemBanner;",
            ">;"
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCatalog;->storeItemBanners:Ljava/util/List;

    return-object v0
.end method

.method public getSuperSkin(Ljava/lang/String;)Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkin;
    .locals 3

    .line 196
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCatalog;->superSkins:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 197
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkin;

    .line 198
    invoke-virtual {v1}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkin;->getSku()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getSuperSkins()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkin;",
            ">;"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCatalog;->superSkins:Ljava/util/List;

    return-object v0
.end method

.method public getTheme(Ljava/lang/String;)Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemTheme;
    .locals 3

    .line 207
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCatalog;->themes:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 208
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemTheme;

    .line 209
    invoke-virtual {v1}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemTheme;->getSku()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getThemes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemTheme;",
            ">;"
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCatalog;->themes:Ljava/util/List;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .line 83
    iget v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCatalog;->version:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 268
    iget v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCatalog;->version:I

    mul-int/lit8 v0, v0, 0x1f

    .line 269
    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCatalog;->customizedCallScreenThemeItems:Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 270
    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCatalog;->callScreenThemeItems:Ljava/util/List;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 271
    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCatalog;->superSkins:Ljava/util/List;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 272
    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCatalog;->themes:Ljava/util/List;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 273
    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCatalog;->covers:Ljava/util/List;

    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 274
    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCatalog;->bundlesV3:Ljava/util/List;

    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    goto :goto_5

    :cond_5
    const/4 v1, 0x0

    :goto_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 275
    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCatalog;->customizedKeypads:Ljava/util/List;

    if-eqz v1, :cond_6

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    goto :goto_6

    :cond_6
    const/4 v1, 0x0

    :goto_6
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 276
    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCatalog;->keypads:Ljava/util/List;

    if-eqz v1, :cond_7

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    goto :goto_7

    :cond_7
    const/4 v1, 0x0

    :goto_7
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 277
    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCatalog;->storeItemBanners:Ljava/util/List;

    if-eqz v1, :cond_8

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    goto :goto_8

    :cond_8
    const/4 v1, 0x0

    :goto_8
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 278
    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCatalog;->premiumItem:Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemPremium;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemPremium;->hashCode()I

    move-result v1

    goto :goto_9

    :cond_9
    const/4 v1, 0x0

    :goto_9
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 279
    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCatalog;->plans:Ljava/util/List;

    if-eqz v1, :cond_a

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    goto :goto_a

    :cond_a
    const/4 v1, 0x0

    :goto_a
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 280
    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCatalog;->allItems:Ljava/util/List;

    if-eqz v1, :cond_b

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    goto :goto_b

    :cond_b
    const/4 v1, 0x0

    :goto_b
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 281
    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCatalog;->combinedCallScreenThemeItems:Ljava/util/List;

    if-eqz v1, :cond_c

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    goto :goto_c

    :cond_c
    const/4 v1, 0x0

    :goto_c
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 282
    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCatalog;->combinedKeypadItems:Ljava/util/List;

    if-eqz v1, :cond_d

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    goto :goto_d

    :cond_d
    const/4 v1, 0x0

    :goto_d
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 283
    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCatalog;->combinedCoverItems:Ljava/util/List;

    if-eqz v1, :cond_e

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v2

    :cond_e
    add-int/2addr v0, v2

    return v0
.end method

.method isSubscriptionSkuLoaded()Z
    .locals 4

    .line 122
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCatalog;->plans:Ljava/util/List;

    invoke-static {v0}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 123
    :goto_0
    iget-object v2, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCatalog;->plans:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 124
    iget-object v2, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCatalog;->plans:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemPremiumAppItem;

    .line 125
    invoke-virtual {v2}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemPremiumAppItem;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemPremiumAppItem;->isSubscription()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 126
    invoke-virtual {v2}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemPremiumAppItem;->getPriceWithCurrency()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public setCallScreenThemeItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCallScreenThemeItem;",
            ">;)V"
        }
    .end annotation

    .line 71
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCatalog;->callScreenThemeItems:Ljava/util/List;

    return-void
.end method

.method public setCovers(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemCover;",
            ">;)V"
        }
    .end annotation

    .line 75
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCatalog;->covers:Ljava/util/List;

    return-void
.end method

.method public setKeypads(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemKeypad;",
            ">;)V"
        }
    .end annotation

    .line 79
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCatalog;->keypads:Ljava/util/List;

    return-void
.end method
