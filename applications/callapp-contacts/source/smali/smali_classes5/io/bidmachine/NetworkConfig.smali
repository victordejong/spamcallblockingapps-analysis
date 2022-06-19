.class public abstract Lio/bidmachine/NetworkConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field static final CONFIG_ORIENTATION:Ljava/lang/String; = "orientation"

.field private static final KEY_AD_UNITS:Ljava/lang/String; = "ad_units"

.field private static final KEY_CLASSPATH:Ljava/lang/String; = "classpath"

.field private static final KEY_FORMAT:Ljava/lang/String; = "format"

.field static final KEY_NETWORK:Ljava/lang/String; = "network"

.field public static final PRIVATE_FIELDS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private baseMediationConfig:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mergedAdsTypes:[Lio/bidmachine/AdsType;

.field private networkAdapter:Lio/bidmachine/NetworkAdapter;

.field private networkConfigParams:Lio/bidmachine/NetworkConfigParams;

.field private networkParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private registerSource:Lio/bidmachine/h;

.field private supportedAdsTypes:[Lio/bidmachine/AdsType;

.field private typedMediationConfigs:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Lio/bidmachine/AdsFormat;",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    new-instance v0, Lio/bidmachine/NetworkConfig$1;

    invoke-direct {v0}, Lio/bidmachine/NetworkConfig$1;-><init>()V

    sput-object v0, Lio/bidmachine/NetworkConfig;->PRIVATE_FIELDS:Ljava/util/List;

    return-void
.end method

.method protected constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    sget-object v0, Lio/bidmachine/h;->Publisher:Lio/bidmachine/h;

    iput-object v0, p0, Lio/bidmachine/NetworkConfig;->registerSource:Lio/bidmachine/h;

    .line 61
    new-instance v0, Lio/bidmachine/NetworkConfig$2;

    invoke-direct {v0, p0}, Lio/bidmachine/NetworkConfig$2;-><init>(Lio/bidmachine/NetworkConfig;)V

    iput-object v0, p0, Lio/bidmachine/NetworkConfig;->networkConfigParams:Lio/bidmachine/NetworkConfigParams;

    .line 107
    invoke-virtual {p0, p1}, Lio/bidmachine/NetworkConfig;->withNetworkParams(Ljava/util/Map;)Lio/bidmachine/NetworkConfig;

    return-void
.end method

.method static synthetic access$000(Lio/bidmachine/NetworkConfig;)Ljava/util/Map;
    .locals 0

    .line 31
    iget-object p0, p0, Lio/bidmachine/NetworkConfig;->networkParams:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$100(Lio/bidmachine/NetworkConfig;)Ljava/util/EnumMap;
    .locals 0

    .line 31
    iget-object p0, p0, Lio/bidmachine/NetworkConfig;->typedMediationConfigs:Ljava/util/EnumMap;

    return-object p0
.end method

.method static synthetic access$200(Lio/bidmachine/NetworkConfig;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lio/bidmachine/NetworkConfig;->prepareTypedMediationConfig(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private contains([Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 4

    .line 454
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    if-ne v3, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method static create(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)Lio/bidmachine/NetworkConfig;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lio/bidmachine/NetworkConfig;"
        }
    .end annotation

    .line 401
    invoke-static {p0, p1}, Lio/bidmachine/NetworkConfig;->readAssetByNetworkName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 402
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 407
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "classpath"

    .line 408
    invoke-virtual {v3, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 409
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/util/Map;

    aput-object v4, v3, v0

    .line 410
    invoke-virtual {p0, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    new-array v3, v2, [Ljava/lang/Object;

    aput-object p2, v3, v0

    .line 411
    invoke-virtual {p0, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/NetworkConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    new-array p2, v2, [Ljava/lang/Object;

    aput-object p1, p2, v0

    const-string p1, "Network (%s) load fail!"

    .line 413
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/bidmachine/core/Logger;->log(Ljava/lang/String;)V

    .line 414
    invoke-static {p0}, Lio/bidmachine/core/Logger;->log(Ljava/lang/Throwable;)V

    return-object v1
.end method

.method static create(Landroid/content/Context;Lorg/json/JSONObject;)Lio/bidmachine/NetworkConfig;
    .locals 9

    const-string v0, "format"

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_0
    const-string v4, "network"

    .line 366
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 369
    :try_start_1
    invoke-static {p1}, Lio/bidmachine/NetworkConfig;->toMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v5

    .line 367
    invoke-static {p0, v4, v5}, Lio/bidmachine/NetworkConfig;->create(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)Lio/bidmachine/NetworkConfig;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v1

    :cond_1
    const-string v5, "ad_units"

    .line 373
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v5, 0x0

    .line 374
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v6

    const/4 v7, 0x2

    if-ge v5, v6, :cond_3

    .line 375
    invoke-virtual {p1, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 376
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lio/bidmachine/AdsFormat;->byRemoteName(Ljava/lang/String;)Lio/bidmachine/AdsFormat;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 378
    invoke-static {v6}, Lio/bidmachine/NetworkConfig;->toMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v6

    invoke-virtual {p0, v8, v6}, Lio/bidmachine/NetworkConfig;->withMediationConfig(Lio/bidmachine/AdsFormat;Ljava/util/Map;)Lio/bidmachine/NetworkConfig;

    goto :goto_1

    :cond_2
    const-string v6, "Network (%s) adUnit register fail: %s not provided"

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v4, v7, v2

    aput-object v0, v7, v3

    .line 380
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lio/bidmachine/core/Logger;->log(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    const-string p1, "Load network from json config completed successfully: %s, %s"

    new-array v0, v7, [Ljava/lang/Object;

    .line 387
    invoke-virtual {p0}, Lio/bidmachine/NetworkConfig;->getKey()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v2

    .line 388
    invoke-virtual {p0}, Lio/bidmachine/NetworkConfig;->getVersion()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v3

    .line 385
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/bidmachine/core/Logger;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catchall_1
    move-exception p0

    move-object v4, v1

    :goto_2
    new-array p1, v3, [Ljava/lang/Object;

    aput-object v4, p1, v2

    const-string v0, "Network (%s) load fail!"

    .line 391
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/bidmachine/core/Logger;->log(Ljava/lang/String;)V

    .line 392
    invoke-static {p0}, Lio/bidmachine/core/Logger;->log(Ljava/lang/Throwable;)V

    return-object v1
.end method

.method private prepareTypedMediationConfig(Ljava/util/Map;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 347
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 348
    iget-object v1, p0, Lio/bidmachine/NetworkConfig;->networkParams:Ljava/util/Map;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lio/bidmachine/NetworkConfig;->useNetworkParamsAsMediationBase()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 349
    iget-object v1, p0, Lio/bidmachine/NetworkConfig;->networkParams:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 351
    :cond_0
    iget-object v1, p0, Lio/bidmachine/NetworkConfig;->baseMediationConfig:Ljava/util/Map;

    if-eqz v1, :cond_1

    .line 352
    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 354
    :cond_1
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object v0
.end method

.method private static readAssetByNetworkName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "bm_networks/%s.bmnetwork"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 424
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 425
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 426
    :try_start_1
    invoke-static {p0}, Lio/bidmachine/core/Utils;->streamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 430
    invoke-static {p0}, Lio/bidmachine/core/Utils;->close(Ljava/io/Closeable;)V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    move-object p0, v0

    .line 428
    :goto_0
    :try_start_2
    invoke-static {p1}, Lio/bidmachine/core/Logger;->log(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 430
    invoke-static {p0}, Lio/bidmachine/core/Utils;->close(Ljava/io/Closeable;)V

    return-object v0

    :catchall_2
    move-exception p1

    invoke-static {p0}, Lio/bidmachine/core/Utils;->close(Ljava/io/Closeable;)V

    .line 431
    throw p1
.end method

.method private static toMap(Lorg/json/JSONObject;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 436
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 437
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 438
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 439
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 440
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 442
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method protected abstract createNetworkAdapter()Lio/bidmachine/NetworkAdapter;
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    .line 463
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 464
    :cond_1
    check-cast p1, Lio/bidmachine/NetworkConfig;

    .line 465
    invoke-virtual {p0}, Lio/bidmachine/NetworkConfig;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lio/bidmachine/NetworkConfig;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public varargs forAdTypes([Lio/bidmachine/AdsType;)Lio/bidmachine/NetworkConfig;
    .locals 0

    .line 254
    iput-object p1, p0, Lio/bidmachine/NetworkConfig;->supportedAdsTypes:[Lio/bidmachine/AdsType;

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 127
    invoke-virtual {p0}, Lio/bidmachine/NetworkConfig;->obtainNetworkAdapter()Lio/bidmachine/NetworkAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/NetworkAdapter;->getKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getNetworkConfigParams()Lio/bidmachine/NetworkConfigParams;
    .locals 1

    .line 343
    iget-object v0, p0, Lio/bidmachine/NetworkConfig;->networkConfigParams:Lio/bidmachine/NetworkConfigParams;

    return-object v0
.end method

.method getRegisterSource()Lio/bidmachine/h;
    .locals 1

    .line 112
    iget-object v0, p0, Lio/bidmachine/NetworkConfig;->registerSource:Lio/bidmachine/h;

    return-object v0
.end method

.method getSupportedAdsTypes()[Lio/bidmachine/AdsType;
    .locals 7

    .line 328
    iget-object v0, p0, Lio/bidmachine/NetworkConfig;->mergedAdsTypes:[Lio/bidmachine/AdsType;

    if-nez v0, :cond_3

    .line 329
    invoke-virtual {p0}, Lio/bidmachine/NetworkConfig;->obtainNetworkAdapter()Lio/bidmachine/NetworkAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/NetworkAdapter;->getSupportedTypes()[Lio/bidmachine/AdsType;

    move-result-object v0

    .line 330
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 331
    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v0, v4

    .line 332
    iget-object v6, p0, Lio/bidmachine/NetworkConfig;->supportedAdsTypes:[Lio/bidmachine/AdsType;

    if-eqz v6, :cond_0

    invoke-direct {p0, v6, v5}, Lio/bidmachine/NetworkConfig;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 333
    :cond_0
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    new-array v0, v3, [Lio/bidmachine/AdsType;

    .line 336
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/bidmachine/AdsType;

    iput-object v0, p0, Lio/bidmachine/NetworkConfig;->mergedAdsTypes:[Lio/bidmachine/AdsType;

    .line 338
    :cond_3
    iget-object v0, p0, Lio/bidmachine/NetworkConfig;->mergedAdsTypes:[Lio/bidmachine/AdsType;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 135
    invoke-virtual {p0}, Lio/bidmachine/NetworkConfig;->obtainNetworkAdapter()Lio/bidmachine/NetworkAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/NetworkAdapter;->getVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 470
    invoke-virtual {p0}, Lio/bidmachine/NetworkConfig;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method isOrientationMatched(Ljava/util/Map;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    const-string v1, "orientation"

    .line 296
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 297
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    .line 304
    :cond_1
    :try_start_0
    invoke-static {p1}, Lio/bidmachine/Utils;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/bidmachine/Orientation;->valueOf(Ljava/lang/String;)Lio/bidmachine/Orientation;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 308
    sget-object v1, Lio/bidmachine/Orientation;->Undefined:Lio/bidmachine/Orientation;

    if-ne p1, v1, :cond_2

    return v0

    .line 311
    :cond_2
    invoke-static {}, Lio/bidmachine/Utils;->getOrientation()I

    move-result v1

    .line 312
    sget-object v2, Lio/bidmachine/Orientation;->Portrait:Lio/bidmachine/Orientation;

    if-ne p1, v2, :cond_3

    if-ne v1, v0, :cond_3

    return v0

    .line 316
    :cond_3
    sget-object v2, Lio/bidmachine/Orientation;->Landscape:Lio/bidmachine/Orientation;

    if-ne p1, v2, :cond_4

    const/4 p1, 0x2

    if-ne v1, p1, :cond_4

    return v0

    :cond_4
    const/4 p1, 0x0

    return p1

    :catch_0
    return v0
.end method

.method public obtainNetworkAdapter()Lio/bidmachine/NetworkAdapter;
    .locals 1

    .line 143
    iget-object v0, p0, Lio/bidmachine/NetworkConfig;->networkAdapter:Lio/bidmachine/NetworkAdapter;

    if-nez v0, :cond_0

    .line 144
    invoke-virtual {p0}, Lio/bidmachine/NetworkConfig;->createNetworkAdapter()Lio/bidmachine/NetworkAdapter;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/NetworkConfig;->networkAdapter:Lio/bidmachine/NetworkAdapter;

    .line 146
    :cond_0
    iget-object v0, p0, Lio/bidmachine/NetworkConfig;->networkAdapter:Lio/bidmachine/NetworkAdapter;

    return-object v0
.end method

.method public peekMediationConfig(Lio/bidmachine/AdsType;Lio/bidmachine/unified/UnifiedAdRequestParams;Lio/bidmachine/AdContentType;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lio/bidmachine/unified/UnifiedAdRequestParams;",
            ">(",
            "Lio/bidmachine/AdsType;",
            "TT;",
            "Lio/bidmachine/AdContentType;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 270
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 271
    iget-object v1, p0, Lio/bidmachine/NetworkConfig;->typedMediationConfigs:Ljava/util/EnumMap;

    if-eqz v1, :cond_2

    .line 272
    invoke-virtual {v1}, Ljava/util/EnumMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 273
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/bidmachine/AdsFormat;

    invoke-virtual {v3, p1, p2, p3}, Lio/bidmachine/AdsFormat;->isMatch(Lio/bidmachine/AdsType;Lio/bidmachine/unified/UnifiedAdRequestParams;Lio/bidmachine/AdContentType;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 274
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_0

    .line 276
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 277
    invoke-virtual {p0, v3}, Lio/bidmachine/NetworkConfig;->isOrientationMatched(Ljava/util/Map;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 278
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 285
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    if-ge p1, p2, :cond_3

    .line 286
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map;

    invoke-direct {p0, p2}, Lio/bidmachine/NetworkConfig;->prepareTypedMediationConfig(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_3
    return-object v0
.end method

.method public setBaseMediationParam(Ljava/lang/String;Ljava/lang/String;)Lio/bidmachine/NetworkConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lio/bidmachine/NetworkConfig;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 196
    iget-object v0, p0, Lio/bidmachine/NetworkConfig;->baseMediationConfig:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 197
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/bidmachine/NetworkConfig;->baseMediationConfig:Ljava/util/Map;

    .line 199
    :cond_0
    iget-object v0, p0, Lio/bidmachine/NetworkConfig;->baseMediationConfig:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setNetworkParam(Ljava/lang/String;Ljava/lang/String;)Lio/bidmachine/NetworkConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lio/bidmachine/NetworkConfig;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 168
    iget-object v0, p0, Lio/bidmachine/NetworkConfig;->networkParams:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 169
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/bidmachine/NetworkConfig;->networkParams:Ljava/util/Map;

    .line 171
    :cond_0
    iget-object v0, p0, Lio/bidmachine/NetworkConfig;->networkParams:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method setRegisterSource(Lio/bidmachine/h;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lio/bidmachine/NetworkConfig;->registerSource:Lio/bidmachine/h;

    return-void
.end method

.method protected useNetworkParamsAsMediationBase()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public withBaseMediationConfig(Ljava/util/Map;)Lio/bidmachine/NetworkConfig;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lio/bidmachine/NetworkConfig;",
            ">(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)TT;"
        }
    .end annotation

    .line 183
    iput-object p1, p0, Lio/bidmachine/NetworkConfig;->baseMediationConfig:Ljava/util/Map;

    return-object p0
.end method

.method public withMediationConfig(Lio/bidmachine/AdsFormat;Ljava/util/Map;)Lio/bidmachine/NetworkConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lio/bidmachine/NetworkConfig;",
            ">(",
            "Lio/bidmachine/AdsFormat;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 213
    invoke-virtual {p0, p1, p2, v0}, Lio/bidmachine/NetworkConfig;->withMediationConfig(Lio/bidmachine/AdsFormat;Ljava/util/Map;Lio/bidmachine/Orientation;)Lio/bidmachine/NetworkConfig;

    move-result-object p1

    return-object p1
.end method

.method public withMediationConfig(Lio/bidmachine/AdsFormat;Ljava/util/Map;Lio/bidmachine/Orientation;)Lio/bidmachine/NetworkConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lio/bidmachine/NetworkConfig;",
            ">(",
            "Lio/bidmachine/AdsFormat;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lio/bidmachine/Orientation;",
            ")TT;"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 228
    iget-object p2, p0, Lio/bidmachine/NetworkConfig;->typedMediationConfigs:Ljava/util/EnumMap;

    if-eqz p2, :cond_4

    .line 229
    invoke-virtual {p2, p1}, Ljava/util/EnumMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    .line 233
    invoke-virtual {p3}, Lio/bidmachine/Orientation;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p3

    const-string v0, "orientation"

    invoke-interface {p2, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    :cond_1
    iget-object p3, p0, Lio/bidmachine/NetworkConfig;->typedMediationConfigs:Ljava/util/EnumMap;

    if-nez p3, :cond_2

    .line 236
    new-instance p3, Ljava/util/EnumMap;

    const-class v0, Lio/bidmachine/AdsFormat;

    invoke-direct {p3, v0}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object p3, p0, Lio/bidmachine/NetworkConfig;->typedMediationConfigs:Ljava/util/EnumMap;

    .line 238
    :cond_2
    iget-object p3, p0, Lio/bidmachine/NetworkConfig;->typedMediationConfigs:Ljava/util/EnumMap;

    invoke-virtual {p3, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/List;

    if-nez p3, :cond_3

    .line 240
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 241
    iget-object v0, p0, Lio/bidmachine/NetworkConfig;->typedMediationConfigs:Ljava/util/EnumMap;

    invoke-virtual {v0, p1, p3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    :cond_3
    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_0
    return-object p0
.end method

.method public withNetworkParams(Ljava/util/Map;)Lio/bidmachine/NetworkConfig;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lio/bidmachine/NetworkConfig;",
            ">(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)TT;"
        }
    .end annotation

    .line 156
    iput-object p1, p0, Lio/bidmachine/NetworkConfig;->networkParams:Ljava/util/Map;

    return-object p0
.end method
