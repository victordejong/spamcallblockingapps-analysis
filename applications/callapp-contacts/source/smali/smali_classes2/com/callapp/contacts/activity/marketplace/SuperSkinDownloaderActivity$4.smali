.class Lcom/callapp/contacts/activity/marketplace/SuperSkinDownloaderActivity$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$DownloaderCardEvents;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/marketplace/SuperSkinDownloaderActivity;->getDownloaderListenerEvents()Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$DownloaderCardEvents;
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
.field final synthetic a:Lcom/callapp/contacts/activity/marketplace/SuperSkinDownloaderActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/marketplace/SuperSkinDownloaderActivity;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/SuperSkinDownloaderActivity$4;->a:Lcom/callapp/contacts/activity/marketplace/SuperSkinDownloaderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic a(Lcom/callapp/contacts/widget/ProgressCardView;Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkin;)V
    .locals 2

    .line 198
    new-instance v0, Lcom/callapp/contacts/manager/asset/mappers/AssetListenerMapper;

    new-instance v1, Lcom/callapp/contacts/activity/marketplace/SuperSkinDownloaderActivity$4$1;

    invoke-direct {v1, p0, p1}, Lcom/callapp/contacts/activity/marketplace/SuperSkinDownloaderActivity$4$1;-><init>(Lcom/callapp/contacts/activity/marketplace/SuperSkinDownloaderActivity$4;Lcom/callapp/contacts/widget/ProgressCardView;)V

    invoke-direct {v0, v1}, Lcom/callapp/contacts/manager/asset/mappers/AssetListenerMapper;-><init>(Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$AssetListener;)V

    .line 203
    invoke-virtual {p2}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkin;->getCardUrl()[Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aget-object p1, p1, p2

    const/4 p2, 0x0

    invoke-virtual {v0, p1, p2}, Lcom/callapp/contacts/manager/asset/mappers/AssetListenerMapper;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$K7Ow0gQAeq1TwN8mD1CQJb0Zcnk(Lcom/callapp/contacts/activity/marketplace/SuperSkinDownloaderActivity$4;Lcom/callapp/contacts/widget/ProgressCardView;Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkin;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/activity/marketplace/SuperSkinDownloaderActivity$4;->a(Lcom/callapp/contacts/widget/ProgressCardView;Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkin;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;Lcom/callapp/contacts/widget/ProgressCardView;)V
    .locals 3

    .line 193
    check-cast p1, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkin;

    .line 5076
    iget-object v0, p2, Lcom/callapp/contacts/widget/ProgressCardView;->g:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5077
    iget-object v0, p2, Lcom/callapp/contacts/widget/ProgressCardView;->g:Landroid/view/View;

    const v2, 0x7f0a06ff

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4198
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/marketplace/-$$Lambda$SuperSkinDownloaderActivity$4$K7Ow0gQAeq1TwN8mD1CQJb0Zcnk;

    invoke-direct {v1, p0, p2, p1}, Lcom/callapp/contacts/activity/marketplace/-$$Lambda$SuperSkinDownloaderActivity$4$K7Ow0gQAeq1TwN8mD1CQJb0Zcnk;-><init>(Lcom/callapp/contacts/activity/marketplace/SuperSkinDownloaderActivity$4;Lcom/callapp/contacts/widget/ProgressCardView;Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkin;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final synthetic a(Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;)Z
    .locals 0

    .line 3208
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->cP:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/SuperSkinDownloaderActivity$4;->c()Z

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

    .line 193
    check-cast p1, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkin;

    .line 3218
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->ea:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    .line 3219
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkin;->getDaysOfFreeSubscription()I

    move-result v0

    if-lez v0, :cond_0

    .line 3220
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

    .line 193
    check-cast p1, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkin;

    .line 3293
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3294
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkin;->getImageUrls()[Ljava/lang/String;

    move-result-object v1

    .line 3295
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkin;->getOverlayUrls()[Ljava/lang/String;

    move-result-object v2

    .line 3296
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkin;->getCardUrl()[Ljava/lang/String;

    move-result-object v3

    .line 3297
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkin;->getGifFileUrls()[Ljava/lang/String;

    move-result-object v4

    .line 3299
    invoke-static {v1}, Lcom/callapp/framework/util/CollectionUtils;->b([Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    .line 3300
    array-length v5, v1

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v5, :cond_0

    aget-object v8, v1, v7

    .line 3301
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 3305
    :cond_0
    invoke-static {v2}, Lcom/callapp/framework/util/CollectionUtils;->b([Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3306
    array-length v1, v2

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v1, :cond_1

    aget-object v7, v2, v5

    .line 3307
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 3311
    :cond_1
    invoke-static {v3}, Lcom/callapp/framework/util/CollectionUtils;->b([Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3312
    array-length v1, v3

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v1, :cond_2

    aget-object v5, v3, v2

    .line 3313
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 3317
    :cond_2
    invoke-static {v4}, Lcom/callapp/framework/util/CollectionUtils;->b([Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3318
    array-length v1, v4

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v1, :cond_3

    aget-object v3, v4, v2

    .line 3319
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 3323
    :cond_3
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkin;->getListBackgroundUrls()[Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkinBackground;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/framework/util/CollectionUtils;->b([Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3324
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkin;->getListBackgroundUrls()[Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkinBackground;

    move-result-object v1

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    :goto_4
    if-ge v3, v1, :cond_4

    .line 3326
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkin;->getListBackgroundUrls()[Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkinBackground;

    move-result-object v4

    div-int/lit8 v5, v3, 0x2

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkinBackground;->getLightBackground()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v4, v3, 0x1

    .line 3327
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

    .line 3330
    aget-object v4, v2, v3

    .line 3331
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 3335
    :cond_5
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkin;->getTopBarBackgroundUrls()[Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkinBackground;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/framework/util/CollectionUtils;->b([Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 3336
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkin;->getTopBarBackgroundUrls()[Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkinBackground;

    move-result-object v1

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    :goto_6
    if-ge v3, v1, :cond_6

    .line 3338
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkin;->getTopBarBackgroundUrls()[Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkinBackground;

    move-result-object v4

    div-int/lit8 v5, v3, 0x2

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkinBackground;->getLightBackground()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v4, v3, 0x1

    .line 3339
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

    .line 3342
    aget-object p1, v2, v6

    .line 3343
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 3346
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

    .line 193
    check-cast p1, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkin;

    .line 5236
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->dN:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkin;->getSku()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->set(Ljava/lang/Object;)V

    .line 5237
    invoke-static {p1}, Lcom/callapp/contacts/activity/marketplace/catalog/StoreUtils;->setSuperSkin(Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkin;)V

    .line 5238
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/SuperSkinDownloaderActivity$4;->a:Lcom/callapp/contacts/activity/marketplace/SuperSkinDownloaderActivity;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/marketplace/SuperSkinDownloaderActivity;->o_()V

    return-void
.end method

.method public final e()V
    .locals 3

    .line 226
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

    .line 231
    invoke-static {}, Lcom/callapp/contacts/manager/FeedbackManager;->get()Lcom/callapp/contacts/manager/FeedbackManager;

    move-result-object v0

    const-string v1, "Download finished"

    const/16 v2, 0x50

    .line 2206
    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/manager/FeedbackManager;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public final g()V
    .locals 6

    .line 243
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->dN:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->set(Ljava/lang/Object;)V

    .line 244
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->dT:[Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, v0, v4

    .line 245
    invoke-virtual {v5, v1}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->set(Ljava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 248
    :goto_1
    sget-object v2, Lcom/callapp/contacts/manager/preferences/Prefs;->dq:[Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 249
    sget-object v2, Lcom/callapp/contacts/manager/preferences/Prefs;->dq:[Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    aget-object v2, v2, v0

    invoke-virtual {v2, v1}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->set(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 252
    :cond_1
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->dK:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->set(Ljava/lang/Object;)V

    .line 253
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->dH:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->set(Ljava/lang/Object;)V

    .line 254
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->dG:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->set(Ljava/lang/Object;)V

    .line 255
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->dL:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->set(Ljava/lang/Object;)V

    .line 256
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->dM:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->set(Ljava/lang/Object;)V

    .line 257
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->dZ:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v2}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 259
    :goto_2
    sget-object v2, Lcom/callapp/contacts/manager/preferences/Prefs;->dI:[Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 260
    sget-object v2, Lcom/callapp/contacts/manager/preferences/Prefs;->dI:[Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    aget-object v2, v2, v0

    invoke-virtual {v2, v1}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->set(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    .line 263
    :goto_3
    sget-object v2, Lcom/callapp/contacts/manager/preferences/Prefs;->dJ:[Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 264
    sget-object v2, Lcom/callapp/contacts/manager/preferences/Prefs;->dJ:[Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    aget-object v2, v2, v0

    invoke-virtual {v2, v1}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->set(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 267
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

    .line 268
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/SuperSkinDownloaderActivity$4;->a:Lcom/callapp/contacts/activity/marketplace/SuperSkinDownloaderActivity;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/marketplace/SuperSkinDownloaderActivity;->o_()V

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

    .line 213
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

    .line 278
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

    .line 288
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/SuperSkinDownloaderActivity$4;->a:Lcom/callapp/contacts/activity/marketplace/SuperSkinDownloaderActivity;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/marketplace/SuperSkinDownloaderActivity;->o_()V

    return-void
.end method

.method public isLightTheme()Z
    .locals 1

    .line 273
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

    .line 283
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->dN:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/SuperSkinDownloaderActivity$4;->a:Lcom/callapp/contacts/activity/marketplace/SuperSkinDownloaderActivity;

    iget-object v1, v1, Lcom/callapp/contacts/activity/marketplace/SuperSkinDownloaderActivity;->a:Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;

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
