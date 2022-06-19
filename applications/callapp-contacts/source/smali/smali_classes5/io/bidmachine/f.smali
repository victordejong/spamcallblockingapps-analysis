.class final Lio/bidmachine/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/f$b;,
        Lio/bidmachine/f$a;
    }
.end annotation


# static fields
.field static final Mraid:Ljava/lang/String; = "mraid"

.field static final Nast:Ljava/lang/String; = "nast"

.field static final Vast:Ljava/lang/String; = "vast"

.field static final cache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/bidmachine/NetworkConfig;",
            ">;"
        }
    .end annotation
.end field

.field private static isNetworksInitialized:Z

.field static pendingNetworks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lio/bidmachine/NetworkConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x3

    new-array v0, v0, [Lio/bidmachine/NetworkConfig;

    .line 34
    new-instance v1, Lio/bidmachine/f$1;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lio/bidmachine/f$1;-><init>(Ljava/util/Map;)V

    const/4 v3, 0x0

    aput-object v1, v0, v3

    new-instance v1, Lio/bidmachine/f$2;

    invoke-direct {v1, v2}, Lio/bidmachine/f$2;-><init>(Ljava/util/Map;)V

    const/4 v4, 0x1

    aput-object v1, v0, v4

    new-instance v1, Lio/bidmachine/f$3;

    invoke-direct {v1, v2}, Lio/bidmachine/f$3;-><init>(Ljava/util/Map;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Lio/bidmachine/f;->registerNetworks([Lio/bidmachine/NetworkConfig;)V

    .line 65
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lio/bidmachine/f;->cache:Ljava/util/Map;

    .line 67
    sput-boolean v3, Lio/bidmachine/f;->isNetworksInitialized:Z

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static checkRegisterSource(Lio/bidmachine/h;Lio/bidmachine/h;)Z
    .locals 0

    if-eqz p1, :cond_1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method static getConfig(Ljava/lang/String;)Lio/bidmachine/NetworkConfig;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 74
    :cond_0
    sget-object v0, Lio/bidmachine/f;->cache:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/NetworkConfig;

    return-object p0
.end method

.method static initializeNetworks(Lio/bidmachine/ContextProvider;Lio/bidmachine/unified/UnifiedAdRequestParams;Lio/bidmachine/f$b;)V
    .locals 1

    .line 161
    sget-boolean v0, Lio/bidmachine/f;->isNetworksInitialized:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 164
    sput-boolean v0, Lio/bidmachine/f;->isNetworksInitialized:Z

    .line 165
    new-instance v0, Lio/bidmachine/f$4;

    invoke-direct {v0, p0, p1, p2}, Lio/bidmachine/f$4;-><init>(Lio/bidmachine/ContextProvider;Lio/bidmachine/unified/UnifiedAdRequestParams;Lio/bidmachine/f$b;)V

    .line 198
    invoke-virtual {v0}, Lio/bidmachine/f$4;->start()V

    return-void
.end method

.method static isNetworkConfigEquals(Lio/bidmachine/NetworkConfig;Ljava/lang/String;Lio/bidmachine/h;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 109
    invoke-virtual {p0}, Lio/bidmachine/NetworkConfig;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 110
    invoke-virtual {p0}, Lio/bidmachine/NetworkConfig;->getRegisterSource()Lio/bidmachine/h;

    move-result-object p0

    invoke-static {p0, p2}, Lio/bidmachine/f;->checkRegisterSource(Lio/bidmachine/h;Lio/bidmachine/h;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static isNetworkInitialized(Ljava/lang/String;Lio/bidmachine/h;)Z
    .locals 1

    .line 101
    invoke-static {p0}, Lio/bidmachine/f;->getConfig(Ljava/lang/String;)Lio/bidmachine/NetworkConfig;

    move-result-object v0

    .line 102
    invoke-static {v0, p0, p1}, Lio/bidmachine/f;->isNetworkConfigEquals(Lio/bidmachine/NetworkConfig;Ljava/lang/String;Lio/bidmachine/h;)Z

    move-result p0

    return p0
.end method

.method static isNetworkRegistered(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 78
    invoke-static {p0, v0}, Lio/bidmachine/f;->isNetworkRegistered(Ljava/lang/String;Lio/bidmachine/h;)Z

    move-result p0

    return p0
.end method

.method static isNetworkRegistered(Ljava/lang/String;Lio/bidmachine/h;)Z
    .locals 3

    .line 84
    :try_start_0
    sget-object v0, Lio/bidmachine/f;->pendingNetworks:Ljava/util/Set;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 85
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/bidmachine/NetworkConfig;

    .line 86
    invoke-static {v2, p0, p1}, Lio/bidmachine/f;->isNetworkConfigEquals(Lio/bidmachine/NetworkConfig;Ljava/lang/String;Lio/bidmachine/h;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    .line 91
    :cond_1
    invoke-static {p0, p1}, Lio/bidmachine/f;->isNetworkInitialized(Ljava/lang/String;Lio/bidmachine/h;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_2

    return v1

    :catchall_0
    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method static isNetworksInitialized()Z
    .locals 1

    .line 155
    sget-boolean v0, Lio/bidmachine/f;->isNetworksInitialized:Z

    return v0
.end method

.method static registerNetwork(Lio/bidmachine/NetworkConfig;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 148
    :cond_0
    sget-object v0, Lio/bidmachine/f;->pendingNetworks:Ljava/util/Set;

    if-nez v0, :cond_1

    .line 149
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lio/bidmachine/f;->pendingNetworks:Ljava/util/Set;

    .line 151
    :cond_1
    sget-object v0, Lio/bidmachine/f;->pendingNetworks:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static registerNetworks(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 127
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 131
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 132
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge p1, v1, :cond_2

    .line 133
    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 134
    invoke-static {p0, v1}, Lio/bidmachine/NetworkConfig;->create(Landroid/content/Context;Lorg/json/JSONObject;)Lio/bidmachine/NetworkConfig;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 136
    invoke-static {v1}, Lio/bidmachine/f;->registerNetwork(Lio/bidmachine/NetworkConfig;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    return-void

    :catch_0
    move-exception p0

    .line 140
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    return-void
.end method

.method static varargs registerNetworks([Lio/bidmachine/NetworkConfig;)V
    .locals 3

    if-eqz p0, :cond_0

    .line 119
    array-length v0, p0

    if-lez v0, :cond_0

    .line 120
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    .line 121
    invoke-static {v2}, Lio/bidmachine/f;->registerNetwork(Lio/bidmachine/NetworkConfig;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static setLoggingEnabled(Z)V
    .locals 2

    .line 303
    sget-object v0, Lio/bidmachine/f;->cache:Ljava/util/Map;

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

    .line 304
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/NetworkConfig;

    invoke-virtual {v1}, Lio/bidmachine/NetworkConfig;->obtainNetworkAdapter()Lio/bidmachine/NetworkAdapter;

    move-result-object v1

    invoke-virtual {v1, p0}, Lio/bidmachine/NetworkAdapter;->setLogging(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method
