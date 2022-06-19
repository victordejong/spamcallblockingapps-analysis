.class public Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/activity/interfaces/OnUseMarketItemListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$Builder;,
        Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$AssetListener;
    }
.end annotation


# instance fields
.field public final b:Lcom/callapp/contacts/manager/asset/managers/SuperSkinListBackgroundAssetManager;

.field private c:Lcom/callapp/contacts/manager/asset/managers/CoverAssetManager;

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/callapp/contacts/manager/asset/managers/UrlAssetManager;",
            "Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$AssetListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$Builder;)V
    .locals 8

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager;->d:Ljava/util/Map;

    .line 22
    sget-object v1, Lcom/callapp/contacts/event/EventBusManager;->a:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object v2, Lcom/callapp/contacts/activity/interfaces/OnUseMarketItemListener;->a:Lcom/callapp/contacts/event/bus/EventType;

    invoke-virtual {v1, v2, p0}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;)V

    .line 23
    new-instance v1, Lcom/callapp/contacts/manager/asset/managers/SuperSkinListBackgroundAssetManager;

    invoke-static {p1}, Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$Builder;->a(Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$Builder;)Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/callapp/contacts/manager/asset/managers/SuperSkinListBackgroundAssetManager;-><init>(Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;)V

    iput-object v1, p0, Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager;->b:Lcom/callapp/contacts/manager/asset/managers/SuperSkinListBackgroundAssetManager;

    .line 24
    new-instance v2, Lcom/callapp/contacts/manager/asset/managers/SuperSkinTopBarBackgroundAssetManager;

    invoke-static {p1}, Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$Builder;->b(Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$Builder;)Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/callapp/contacts/manager/asset/managers/SuperSkinTopBarBackgroundAssetManager;-><init>(Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;)V

    .line 25
    new-instance v3, Lcom/callapp/contacts/manager/asset/managers/SuperSkinWizardIconAssetManager;

    invoke-static {p1}, Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$Builder;->c(Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$Builder;)Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/callapp/contacts/manager/asset/managers/SuperSkinWizardIconAssetManager;-><init>(Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;)V

    .line 26
    new-instance v4, Lcom/callapp/contacts/manager/asset/managers/SuperSkinCardIconAssetManager;

    invoke-static {p1}, Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$Builder;->d(Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$Builder;)Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/callapp/contacts/manager/asset/managers/SuperSkinCardIconAssetManager;-><init>(Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;)V

    .line 27
    new-instance v5, Lcom/callapp/contacts/manager/asset/managers/SuperSkinAnimationGifDownloaderAssetManager;

    invoke-static {p1}, Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$Builder;->e(Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$Builder;)Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/callapp/contacts/manager/asset/managers/SuperSkinAnimationGifDownloaderAssetManager;-><init>(Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;)V

    .line 28
    new-instance v6, Lcom/callapp/contacts/manager/asset/managers/KeypadAssetManager;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Lcom/callapp/contacts/manager/asset/managers/KeypadAssetManager;-><init>(Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;)V

    .line 30
    invoke-static {p1}, Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$Builder;->f(Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$Builder;)Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$AssetListener;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 31
    invoke-static {p1}, Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$Builder;->f(Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$Builder;)Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$AssetListener;

    move-result-object v7

    invoke-interface {v0, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    :cond_0
    invoke-static {p1}, Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$Builder;->g(Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$Builder;)Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$AssetListener;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 34
    invoke-static {p1}, Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$Builder;->g(Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$Builder;)Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$AssetListener;

    move-result-object v4

    invoke-interface {v0, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    :cond_1
    invoke-static {p1}, Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$Builder;->h(Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$Builder;)Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$AssetListener;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 38
    new-instance v4, Lcom/callapp/contacts/manager/asset/managers/CoverAssetManager;

    invoke-direct {v4}, Lcom/callapp/contacts/manager/asset/managers/CoverAssetManager;-><init>()V

    iput-object v4, p0, Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager;->c:Lcom/callapp/contacts/manager/asset/managers/CoverAssetManager;

    .line 39
    invoke-static {p1}, Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$Builder;->h(Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$Builder;)Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$AssetListener;

    move-result-object v6

    invoke-interface {v0, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    :cond_2
    invoke-static {p1}, Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$Builder;->i(Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$Builder;)Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$AssetListener;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 43
    new-instance v4, Lcom/callapp/contacts/manager/asset/managers/OverlayAssetManager;

    invoke-direct {v4}, Lcom/callapp/contacts/manager/asset/managers/OverlayAssetManager;-><init>()V

    .line 44
    invoke-static {p1}, Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$Builder;->i(Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$Builder;)Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$AssetListener;

    move-result-object v6

    invoke-interface {v0, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    :cond_3
    invoke-static {p1}, Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$Builder;->j(Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$Builder;)Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$AssetListener;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 48
    invoke-static {p1}, Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$Builder;->j(Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$Builder;)Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$AssetListener;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    :cond_4
    invoke-static {p1}, Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$Builder;->k(Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$Builder;)Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$AssetListener;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 52
    invoke-static {p1}, Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$Builder;->k(Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$Builder;)Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$AssetListener;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    :cond_5
    invoke-static {p1}, Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$Builder;->l(Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$Builder;)Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$AssetListener;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 56
    invoke-static {p1}, Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$Builder;->l(Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$Builder;)Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$AssetListener;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    :cond_6
    invoke-static {p1}, Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$Builder;->m(Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$Builder;)Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$AssetListener;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 60
    invoke-static {p1}, Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$Builder;->m(Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$Builder;)Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$AssetListener;

    move-result-object p1

    invoke-interface {v0, v5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    return-void
.end method

.method synthetic constructor <init>(Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$Builder;Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$1;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager;-><init>(Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$Builder;)V

    return-void
.end method

.method public static isSuperSkinEnabled()Z
    .locals 1

    .line 75
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->dZ:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 162
    iget-object v0, p0, Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/manager/asset/managers/UrlAssetManager;

    const/4 v2, 0x0

    .line 163
    invoke-virtual {v1, v2}, Lcom/callapp/contacts/manager/asset/managers/UrlAssetManager;->setAsset(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 2

    .line 153
    iget-object v0, p0, Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 154
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    goto :goto_0

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 157
    sget-object v0, Lcom/callapp/contacts/event/EventBusManager;->a:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object v1, Lcom/callapp/contacts/activity/interfaces/OnUseMarketItemListener;->a:Lcom/callapp/contacts/event/bus/EventType;

    invoke-virtual {v0, v1, p0}, Lcom/callapp/contacts/event/bus/EventBus;->b(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;)V

    return-void
.end method

.method public getAssets()V
    .locals 4

    .line 65
    iget-object v0, p0, Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 66
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callapp/contacts/manager/asset/managers/UrlAssetManager;

    .line 67
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$AssetListener;

    .line 68
    invoke-virtual {v2}, Lcom/callapp/contacts/manager/asset/managers/UrlAssetManager;->c()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 69
    invoke-virtual {v2, v1}, Lcom/callapp/contacts/manager/asset/managers/UrlAssetManager;->a(Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$AssetListener;)V

    goto :goto_0

    :cond_1
    return-void
.end method
