.class Lcom/callapp/contacts/activity/marketplace/SuperSkinMoreInfoActivity$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$DownloaderCardEvents;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/marketplace/SuperSkinMoreInfoActivity;->getDownloaderListenerEvents()Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$DownloaderCardEvents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$DownloaderCardEvents<",
        "Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkin;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/marketplace/SuperSkinMoreInfoActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/marketplace/SuperSkinMoreInfoActivity;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/SuperSkinMoreInfoActivity$3;->a:Lcom/callapp/contacts/activity/marketplace/SuperSkinMoreInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;Lcom/callapp/contacts/widget/ProgressCardView;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$DownloaderCardEvents$-CC;->$default$a(Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$DownloaderCardEvents;Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;Lcom/callapp/contacts/widget/ProgressCardView;)V

    return-void
.end method

.method public final synthetic a(Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;)Z
    .locals 0

    .line 3153
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->cP:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/SuperSkinMoreInfoActivity$3;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final synthetic b(Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;)V
    .locals 2

    .line 138
    check-cast p1, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkin;

    .line 3163
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->ea:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    .line 3164
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkin;->getDaysOfFreeSubscription()I

    move-result v0

    if-lez v0, :cond_0

    .line 3165
    sget-object v0, Lcom/callapp/contacts/workers/TrackSuperSkinPremiumSubscriptionEndedWorker;->a:Lcom/callapp/contacts/workers/TrackSuperSkinPremiumSubscriptionEndedWorker$Companion;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkin;->getDaysOfFreeSubscription()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/workers/TrackSuperSkinPremiumSubscriptionEndedWorker$Companion;->a(I)V

    :cond_0
    return-void
.end method

.method public synthetic c()Z
    .locals 1

    invoke-static {p0}, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$DownloaderCardEvents$-CC;->$default$c(Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$DownloaderCardEvents;)Z

    move-result v0

    return v0
.end method

.method public final synthetic c(Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;)[Ljava/lang/String;
    .locals 9

    .line 138
    check-cast p1, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkin;

    .line 3229
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3230
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkin;->getImageUrls()[Ljava/lang/String;

    move-result-object v1

    .line 3231
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkin;->getOverlayUrls()[Ljava/lang/String;

    move-result-object v2

    .line 3232
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkin;->getCardUrl()[Ljava/lang/String;

    move-result-object v3

    .line 3233
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkin;->getGifFileUrls()[Ljava/lang/String;

    move-result-object v4

    .line 3235
    invoke-static {v1}, Lcom/callapp/framework/util/CollectionUtils;->b([Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    .line 3236
    array-length v5, v1

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v5, :cond_0

    aget-object v8, v1, v7

    .line 3237
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 3241
    :cond_0
    invoke-static {v2}, Lcom/callapp/framework/util/CollectionUtils;->b([Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3242
    array-length v1, v2

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v1, :cond_1

    aget-object v7, v2, v5

    .line 3243
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 3247
    :cond_1
    invoke-static {v3}, Lcom/callapp/framework/util/CollectionUtils;->b([Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3248
    array-length v1, v3

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v1, :cond_2

    aget-object v5, v3, v2

    .line 3249
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 3253
    :cond_2
    invoke-static {v4}, Lcom/callapp/framework/util/CollectionUtils;->b([Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3254
    array-length v1, v4

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v1, :cond_3

    aget-object v3, v4, v2

    .line 3255
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 3259
    :cond_3
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkin;->getListBackgroundUrls()[Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkinBackground;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/framework/util/CollectionUtils;->b([Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3260
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkin;->getListBackgroundUrls()[Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkinBackground;

    move-result-object v1

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    :goto_4
    if-ge v3, v1, :cond_4

    .line 3262
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkin;->getListBackgroundUrls()[Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkinBackground;

    move-result-object v4

    div-int/lit8 v5, v3, 0x2

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkinBackground;->getLightBackground()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v4, v3, 0x1

    .line 3263
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkin;->getListBackgroundUrls()[Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkinBackground;

    move-result-object v7

    aget-object v5, v7, v5

    invoke-virtual {v5}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkinBackground;->getDarkBackground()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    add-int/lit8 v3, v3, 0x2

    goto :goto_4

    :cond_4
    const/4 v3, 0x0

    :goto_5
    if-ge v3, v1, :cond_5

    .line 3266
    aget-object v4, v2, v3

    .line 3267
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 3271
    :cond_5
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkin;->getTopBarBackgroundUrls()[Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkinBackground;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/framework/util/CollectionUtils;->b([Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 3272
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkin;->getTopBarBackgroundUrls()[Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkinBackground;

    move-result-object v1

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    :goto_6
    if-ge v3, v1, :cond_6

    .line 3274
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkin;->getTopBarBackgroundUrls()[Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkinBackground;

    move-result-object v4

    div-int/lit8 v5, v3, 0x2

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkinBackground;->getLightBackground()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v4, v3, 0x1

    .line 3275
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkin;->getTopBarBackgroundUrls()[Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkinBackground;

    move-result-object v7

    aget-object v5, v7, v5

    invoke-virtual {v5}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkinBackground;->getDarkBackground()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    add-int/lit8 v3, v3, 0x2

    goto :goto_6

    :cond_6
    :goto_7
    if-ge v6, v1, :cond_7

    .line 3278
    aget-object p1, v2, v6

    .line 3279
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 3282
    :cond_7
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1
.end method

.method public final synthetic d(Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;)V
    .locals 2

    .line 138
    check-cast p1, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkin;

    .line 4171
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->dN:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkin;->getSku()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->set(Ljava/lang/Object;)V

    .line 4172
    invoke-static {p1}, Lcom/callapp/contacts/activity/marketplace/catalog/StoreUtils;->setSuperSkin(Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkin;)V

    .line 4173
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/SuperSkinMoreInfoActivity$3;->a:Lcom/callapp/contacts/activity/marketplace/SuperSkinMoreInfoActivity;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/marketplace/SuperSkinMoreInfoActivity;->o_()V

    return-void
.end method

.method public final e()V
    .locals 3

    .line 142
    invoke-static {}, Lcom/callapp/contacts/manager/FeedbackManager;->get()Lcom/callapp/contacts/manager/FeedbackManager;

    move-result-object v0

    const-string v1, "Download button clicked"

    const/16 v2, 0x50

    .line 1206
    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/manager/FeedbackManager;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public final f()V
    .locals 3

    .line 147
    invoke-static {}, Lcom/callapp/contacts/manager/FeedbackManager;->get()Lcom/callapp/contacts/manager/FeedbackManager;

    move-result-object v0

    const-string v1, "Download finished"

    const/16 v2, 0x50

    .line 2206
    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/manager/FeedbackManager;->a(Ljava/lang/String;I)V

    .line 148
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/SuperSkinMoreInfoActivity$3;->a:Lcom/callapp/contacts/activity/marketplace/SuperSkinMoreInfoActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/marketplace/SuperSkinMoreInfoActivity;->b(Lcom/callapp/contacts/activity/marketplace/SuperSkinMoreInfoActivity;)Z

    return-void
.end method

.method public final g()V
    .locals 6

    .line 178
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->dN:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->set(Ljava/lang/Object;)V

    .line 179
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->dT:[Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, v0, v4

    .line 180
    invoke-virtual {v5, v1}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->set(Ljava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 183
    :goto_1
    sget-object v2, Lcom/callapp/contacts/manager/preferences/Prefs;->dq:[Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 184
    sget-object v2, Lcom/callapp/contacts/manager/preferences/Prefs;->dq:[Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    aget-object v2, v2, v0

    invoke-virtual {v2, v1}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->set(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 187
    :cond_1
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->dK:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->set(Ljava/lang/Object;)V

    .line 188
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->dH:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->set(Ljava/lang/Object;)V

    .line 189
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->dG:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->set(Ljava/lang/Object;)V

    .line 190
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->dL:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->set(Ljava/lang/Object;)V

    .line 191
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->dM:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->set(Ljava/lang/Object;)V

    .line 192
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->dZ:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v2}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 194
    :goto_2
    sget-object v2, Lcom/callapp/contacts/manager/preferences/Prefs;->dI:[Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 195
    sget-object v2, Lcom/callapp/contacts/manager/preferences/Prefs;->dI:[Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    aget-object v2, v2, v0

    invoke-virtual {v2, v1}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->set(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    .line 198
    :goto_3
    sget-object v2, Lcom/callapp/contacts/manager/preferences/Prefs;->dJ:[Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 199
    sget-object v2, Lcom/callapp/contacts/manager/preferences/Prefs;->dJ:[Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    aget-object v2, v2, v0

    invoke-virtual {v2, v1}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->set(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 202
    :cond_3
    invoke-static {}, Lcom/callapp/contacts/manager/FeedbackManager;->get()Lcom/callapp/contacts/manager/FeedbackManager;

    move-result-object v0

    const v2, 0x7f120615

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const v5, 0x7f120251

    invoke-static {v5}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-static {v2, v4}, Lcom/callapp/contacts/util/Activities;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 3111
    invoke-virtual {v0, v2, v1}, Lcom/callapp/contacts/manager/FeedbackManager;->a(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 203
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/SuperSkinMoreInfoActivity$3;->a:Lcom/callapp/contacts/activity/marketplace/SuperSkinMoreInfoActivity;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/marketplace/SuperSkinMoreInfoActivity;->o_()V

    return-void
.end method

.method public synthetic getItemType()I
    .locals 1

    invoke-static {p0}, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$DownloaderCardEvents$-CC;->$default$getItemType(Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$DownloaderCardEvents;)I

    move-result v0

    return v0
.end method

.method public synthetic getLeftButtonPrefixText()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$DownloaderCardEvents$-CC;->$default$getLeftButtonPrefixText(Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$DownloaderCardEvents;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPromotionType()Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;
    .locals 1

    .line 158
    sget-object v0, Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;->SUPER_SKIN:Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;

    return-object v0
.end method

.method public synthetic getPurchasePref()Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;
    .locals 1

    invoke-static {p0}, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$DownloaderCardEvents$-CC;->$default$getPurchasePref(Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$DownloaderCardEvents;)Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    move-result-object v0

    return-object v0
.end method

.method public final h()Z
    .locals 1

    .line 214
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->dN:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final i()V
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/SuperSkinMoreInfoActivity$3;->a:Lcom/callapp/contacts/activity/marketplace/SuperSkinMoreInfoActivity;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/marketplace/SuperSkinMoreInfoActivity;->o_()V

    return-void
.end method

.method public isLightTheme()Z
    .locals 1

    .line 209
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->di:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/activity/contact/header/ThemeState;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/header/ThemeState;->isLightTheme()Z

    move-result v0

    return v0
.end method

.method public isSkuInUse()Z
    .locals 2

    .line 219
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->dN:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/SuperSkinMoreInfoActivity$3;->a:Lcom/callapp/contacts/activity/marketplace/SuperSkinMoreInfoActivity;

    iget-object v1, v1, Lcom/callapp/contacts/activity/marketplace/SuperSkinMoreInfoActivity;->a:Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;

    check-cast v1, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkin;

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkin;->getSku()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public synthetic j()V
    .locals 0

    invoke-static {p0}, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$DownloaderCardEvents$-CC;->$default$j(Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$DownloaderCardEvents;)V

    return-void
.end method
