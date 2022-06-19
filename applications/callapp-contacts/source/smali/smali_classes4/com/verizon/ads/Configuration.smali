.class public final Lcom/verizon/ads/Configuration;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/verizon/ads/Configuration$ConfigurationChangeEvent;
    }
.end annotation


# static fields
.field public static final CONFIGURATION_CHANGE_EVENT_ID:Ljava/lang/String; = "com.verizon.ads.configuration.change"

.field private static final DOMAIN_AND_KEY_REQUIRED_MESSAGE:Ljava/lang/String; = "Domain and key cannot be null or empty"

.field private static final DOMAIN_REQUIRED_MESSAGE:Ljava/lang/String; = "Domain cannot be null"

.field private static final SECURITY_KEY_REQUIRED_MESSAGE:Ljava/lang/String; = "Security key cannot be null"

.field private static final domainDataStore:Lcom/verizon/ads/DataStore;

.field private static final logger:Lcom/verizon/ads/Logger;

.field private static final protectedDomains:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    const-class v0, Lcom/verizon/ads/Configuration;

    invoke-static {v0}, Lcom/verizon/ads/Logger;->getInstance(Ljava/lang/Class;)Lcom/verizon/ads/Logger;

    move-result-object v0

    sput-object v0, Lcom/verizon/ads/Configuration;->logger:Lcom/verizon/ads/Logger;

    .line 27
    new-instance v0, Lcom/verizon/ads/DataStore;

    invoke-direct {v0}, Lcom/verizon/ads/DataStore;-><init>()V

    sput-object v0, Lcom/verizon/ads/Configuration;->domainDataStore:Lcom/verizon/ads/DataStore;

    .line 28
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/verizon/ads/Configuration;->protectedDomains:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static asString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 520
    sget-object v1, Lcom/verizon/ads/Configuration;->domainDataStore:Lcom/verizon/ads/DataStore;

    invoke-virtual {v1}, Lcom/verizon/ads/DataStore;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Configuration:\n%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static exists(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 142
    invoke-static {p0}, Lcom/verizon/ads/utils/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/verizon/ads/utils/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 148
    :cond_0
    sget-object v0, Lcom/verizon/ads/Configuration;->domainDataStore:Lcom/verizon/ads/DataStore;

    invoke-static {p0, p1}, Lcom/verizon/ads/Configuration;->makeDataStoreKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/verizon/ads/DataStore;->containsKey(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 143
    :cond_1
    :goto_0
    sget-object p0, Lcom/verizon/ads/Configuration;->logger:Lcom/verizon/ads/Logger;

    const-string p1, "Domain and key cannot be null or empty"

    invoke-virtual {p0, p1}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;TT;)TT;"
        }
    .end annotation

    .line 414
    invoke-static {p0}, Lcom/verizon/ads/utils/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Lcom/verizon/ads/utils/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 420
    :cond_0
    sget-object v0, Lcom/verizon/ads/Configuration;->domainDataStore:Lcom/verizon/ads/DataStore;

    invoke-static {p0, p1}, Lcom/verizon/ads/Configuration;->makeDataStoreKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p2, p3}, Lcom/verizon/ads/DataStore;->get(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1

    return-object p0

    .line 426
    :cond_1
    invoke-static {p3}, Lcom/verizon/ads/Configuration;->getImmutableValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 415
    :cond_2
    :goto_0
    sget-object p0, Lcom/verizon/ads/Configuration;->logger:Lcom/verizon/ads/Logger;

    const-string p1, "Domain and key cannot be null or empty"

    invoke-virtual {p0, p1}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    .line 417
    invoke-static {p3}, Lcom/verizon/ads/Configuration;->getImmutableValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1

    .line 207
    const-class v0, Ljava/lang/Boolean;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p0, p1, v0, p2}, Lcom/verizon/ads/Configuration;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static getDouble(Ljava/lang/String;Ljava/lang/String;D)D
    .locals 1

    .line 192
    const-class v0, Ljava/lang/Double;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-static {p0, p1, v0, p2}, Lcom/verizon/ads/Configuration;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    return-wide p0
.end method

.method private static getImmutableValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 433
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 434
    check-cast p0, Ljava/util/Map;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0

    .line 437
    :cond_0
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_1

    .line 438
    check-cast p0, Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public static getInt(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 1

    .line 177
    const-class v0, Ljava/lang/Integer;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p0, p1, v0, p2}, Lcom/verizon/ads/Configuration;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static getList(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 1

    .line 252
    const-class v0, Ljava/util/List;

    invoke-static {p0, p1, v0, p2}, Lcom/verizon/ads/Configuration;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public static getMap(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;
    .locals 1

    .line 237
    const-class v0, Ljava/util/Map;

    invoke-static {p0, p1, v0, p2}, Lcom/verizon/ads/Configuration;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    return-object p0
.end method

.method public static getObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 162
    const-class v0, Ljava/lang/Object;

    invoke-static {p0, p1, v0, p2}, Lcom/verizon/ads/Configuration;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 222
    const-class v0, Ljava/lang/String;

    invoke-static {p0, p1, v0, p2}, Lcom/verizon/ads/Configuration;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private static isAllowedToUpdateDomain(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 450
    invoke-static {p0}, Lcom/verizon/ads/utils/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 454
    :cond_0
    sget-object v0, Lcom/verizon/ads/Configuration;->protectedDomains:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 455
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 459
    :cond_1
    sget-object p1, Lcom/verizon/ads/Configuration;->logger:Lcom/verizon/ads/Logger;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Not authorized to set value for a protected domain: "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    return v1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isDomainProtected(Ljava/lang/String;)Z
    .locals 1

    .line 123
    invoke-static {p0}, Lcom/verizon/ads/utils/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    sget-object p0, Lcom/verizon/ads/Configuration;->logger:Lcom/verizon/ads/Logger;

    const-string v0, "Domain cannot be null"

    invoke-virtual {p0, v0}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 129
    :cond_0
    sget-object v0, Lcom/verizon/ads/Configuration;->protectedDomains:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static makeDataStoreKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 513
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x2e

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static protectDomain(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 93
    invoke-static {p0}, Lcom/verizon/ads/utils/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 94
    sget-object p0, Lcom/verizon/ads/Configuration;->logger:Lcom/verizon/ads/Logger;

    const-string p1, "Domain cannot be null"

    invoke-virtual {p0, p1}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    return v1

    .line 99
    :cond_0
    invoke-static {p1}, Lcom/verizon/ads/utils/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    sget-object p0, Lcom/verizon/ads/Configuration;->logger:Lcom/verizon/ads/Logger;

    const-string p1, "Security key cannot be null"

    invoke-virtual {p0, p1}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    return v1

    .line 105
    :cond_1
    sget-object v0, Lcom/verizon/ads/Configuration;->protectedDomains:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 106
    :cond_2
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "Domain has already been protected"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    .line 109
    :cond_3
    :goto_0
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    return p0
.end method

.method private static removeDomainValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 494
    invoke-static {p0}, Lcom/verizon/ads/utils/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p1}, Lcom/verizon/ads/utils/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 501
    :cond_0
    invoke-static {p0, p2}, Lcom/verizon/ads/Configuration;->isAllowedToUpdateDomain(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    return-void

    .line 505
    :cond_1
    sget-object p2, Lcom/verizon/ads/Configuration;->domainDataStore:Lcom/verizon/ads/DataStore;

    invoke-static {p0, p1}, Lcom/verizon/ads/Configuration;->makeDataStoreKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/verizon/ads/DataStore;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 506
    new-instance p2, Lcom/verizon/ads/Configuration$ConfigurationChangeEvent;

    const/4 v0, 0x0

    invoke-direct {p2, p0, p1, v0}, Lcom/verizon/ads/Configuration$ConfigurationChangeEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "com.verizon.ads.configuration.change"

    invoke-static {p0, p2}, Lcom/verizon/ads/events/Events;->sendEvent(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    return-void

    .line 495
    :cond_3
    :goto_0
    sget-object p0, Lcom/verizon/ads/Configuration;->logger:Lcom/verizon/ads/Logger;

    const-string p1, "Domain and key cannot be null or empty"

    invoke-virtual {p0, p1}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    return-void
.end method

.method public static set(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    if-nez p0, :cond_0

    .line 273
    invoke-static {p1, p2, p3}, Lcom/verizon/ads/Configuration;->removeDomainValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 275
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/verizon/ads/Configuration;->setDomainValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setBoolean(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 354
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {p0, p1, p2, p3}, Lcom/verizon/ads/Configuration;->set(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static setDomainValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 470
    invoke-static {p1}, Lcom/verizon/ads/utils/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p2}, Lcom/verizon/ads/utils/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 477
    :cond_0
    invoke-static {p1, p3}, Lcom/verizon/ads/Configuration;->isAllowedToUpdateDomain(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_1

    return-void

    .line 481
    :cond_1
    invoke-static {p0}, Lcom/verizon/ads/Configuration;->getImmutableValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    .line 482
    sget-object v0, Lcom/verizon/ads/Configuration;->domainDataStore:Lcom/verizon/ads/DataStore;

    invoke-static {p1, p2}, Lcom/verizon/ads/Configuration;->makeDataStoreKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Lcom/verizon/ads/DataStore;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 483
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    .line 484
    new-instance p0, Lcom/verizon/ads/Configuration$ConfigurationChangeEvent;

    invoke-direct {p0, p1, p2, p3}, Lcom/verizon/ads/Configuration$ConfigurationChangeEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "com.verizon.ads.configuration.change"

    invoke-static {p1, p0}, Lcom/verizon/ads/events/Events;->sendEvent(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    return-void

    .line 471
    :cond_3
    :goto_0
    sget-object p0, Lcom/verizon/ads/Configuration;->logger:Lcom/verizon/ads/Logger;

    const-string p1, "Domain and key cannot be null or empty"

    invoke-virtual {p0, p1}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    return-void
.end method

.method public static setDouble(DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 335
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-static {p0, p2, p3, p4}, Lcom/verizon/ads/Configuration;->set(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setInt(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 316
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0, p1, p2, p3}, Lcom/verizon/ads/Configuration;->set(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setList(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 408
    invoke-static {p0, p1, p2, p3}, Lcom/verizon/ads/Configuration;->set(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 390
    invoke-static {p0, p1, p2, p3}, Lcom/verizon/ads/Configuration;->set(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 297
    invoke-static {p0, p1, p2, p3}, Lcom/verizon/ads/Configuration;->set(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 372
    invoke-static {p0, p1, p2, p3}, Lcom/verizon/ads/Configuration;->set(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
