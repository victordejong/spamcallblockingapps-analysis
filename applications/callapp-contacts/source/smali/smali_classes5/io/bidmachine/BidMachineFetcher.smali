.class public Lio/bidmachine/BidMachineFetcher;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/BidMachineFetcher$MoPub;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final AD_TYPE_DISPLAY:Ljava/lang/String; = "display"

.field public static final AD_TYPE_NATIVE:Ljava/lang/String; = "native"

.field public static final AD_TYPE_VIDEO:Ljava/lang/String; = "video"

.field private static final DEF_PRICE_ROUNDING:Ljava/math/BigDecimal;

.field private static final DEF_PRICE_ROUNDING_MODE:Ljava/math/RoundingMode;

.field public static final KEY_AD_TYPE:Ljava/lang/String; = "bm_ad_type"

.field public static final KEY_ID:Ljava/lang/String; = "bm_id"

.field public static final KEY_NETWORK_KEY:Ljava/lang/String; = "bm_network_key"

.field public static final KEY_PRICE:Ljava/lang/String; = "bm_pf"

.field static cachedRequests:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Lio/bidmachine/AdsType;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/bidmachine/AdRequest;",
            ">;>;"
        }
    .end annotation
.end field

.field static priceRounding:Ljava/math/BigDecimal;

.field static priceRoundingMode:Ljava/math/RoundingMode;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 30
    new-instance v0, Ljava/math/BigDecimal;

    const-string v1, "0.01"

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/bidmachine/BidMachineFetcher;->DEF_PRICE_ROUNDING:Ljava/math/BigDecimal;

    .line 31
    sget-object v1, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    sput-object v1, Lio/bidmachine/BidMachineFetcher;->DEF_PRICE_ROUNDING_MODE:Ljava/math/RoundingMode;

    .line 34
    sput-object v0, Lio/bidmachine/BidMachineFetcher;->priceRounding:Ljava/math/BigDecimal;

    .line 36
    sput-object v1, Lio/bidmachine/BidMachineFetcher;->priceRoundingMode:Ljava/math/RoundingMode;

    .line 39
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lio/bidmachine/AdsType;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lio/bidmachine/BidMachineFetcher;->cachedRequests:Ljava/util/EnumMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fetch(Lio/bidmachine/AdRequest;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/AdRequest;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 58
    invoke-static {p0}, Lio/bidmachine/BidMachineFetcher;->toMap(Lio/bidmachine/AdRequest;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "bm_id"

    .line 59
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 60
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 64
    :cond_0
    invoke-virtual {p0}, Lio/bidmachine/AdRequest;->getType()Lio/bidmachine/AdsType;

    move-result-object v2

    .line 65
    new-instance v3, Lio/bidmachine/BidMachineFetcher$1;

    invoke-direct {v3}, Lio/bidmachine/BidMachineFetcher$1;-><init>()V

    invoke-virtual {p0, v3}, Lio/bidmachine/AdRequest;->addListener(Lio/bidmachine/AdRequest$AdRequestListener;)V

    .line 82
    const-class v3, Lio/bidmachine/BidMachineFetcher;

    monitor-enter v3

    .line 83
    :try_start_0
    sget-object v4, Lio/bidmachine/BidMachineFetcher;->cachedRequests:Ljava/util/EnumMap;

    invoke-virtual {v4, v2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    if-nez v4, :cond_1

    .line 85
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 86
    sget-object v5, Lio/bidmachine/BidMachineFetcher;->cachedRequests:Ljava/util/EnumMap;

    invoke-virtual {v5, v2, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    :cond_1
    invoke-interface {v4, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    monitor-exit v3

    return-object v0

    :catchall_0
    move-exception p0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static identifyAdType(Lio/bidmachine/CreativeFormat;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 169
    :cond_0
    sget-object v1, Lio/bidmachine/BidMachineFetcher$2;->$SwitchMap$io$bidmachine$CreativeFormat:[I

    invoke-virtual {p0}, Lio/bidmachine/CreativeFormat;->ordinal()I

    move-result p0

    aget p0, v1, p0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_3

    const/4 v1, 0x2

    if-eq p0, v1, :cond_2

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1

    return-object v0

    :cond_1
    const-string p0, "native"

    return-object p0

    :cond_2
    const-string p0, "video"

    return-object p0

    :cond_3
    const-string p0, "display"

    return-object p0
.end method

.method public static release(Lio/bidmachine/AdRequest;)Lio/bidmachine/AdRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lio/bidmachine/AdRequest;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 95
    invoke-virtual {p0}, Lio/bidmachine/AdRequest;->getAuctionResult()Lio/bidmachine/models/AuctionResult;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {p0}, Lio/bidmachine/AdRequest;->getType()Lio/bidmachine/AdsType;

    move-result-object p0

    invoke-interface {v0}, Lio/bidmachine/models/AuctionResult;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lio/bidmachine/BidMachineFetcher;->release(Lio/bidmachine/AdsType;Ljava/lang/String;)Lio/bidmachine/AdRequest;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static release(Lio/bidmachine/AdsType;Ljava/lang/String;)Lio/bidmachine/AdRequest;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lio/bidmachine/AdRequest;",
            ">(",
            "Lio/bidmachine/AdsType;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 113
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 116
    :cond_0
    const-class v0, Lio/bidmachine/BidMachineFetcher;

    monitor-enter v0

    .line 117
    :try_start_0
    sget-object v2, Lio/bidmachine/BidMachineFetcher;->cachedRequests:Ljava/util/EnumMap;

    invoke-virtual {v2, p0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_1

    .line 120
    :try_start_1
    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/AdRequest;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return-object p0

    .line 122
    :catch_0
    monitor-exit v0

    return-object v1

    .line 125
    :cond_1
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    .line 126
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public static release(Lio/bidmachine/AdsType;Ljava/util/Map;)Lio/bidmachine/AdRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lio/bidmachine/AdRequest;",
            ">(",
            "Lio/bidmachine/AdsType;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)TT;"
        }
    .end annotation

    const-string v0, "bm_id"

    .line 105
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 106
    invoke-static {p0, p1}, Lio/bidmachine/BidMachineFetcher;->release(Lio/bidmachine/AdsType;Ljava/lang/String;)Lio/bidmachine/AdRequest;

    move-result-object p0

    return-object p0
.end method

.method public static resetPriceRounding()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 140
    sget-object v0, Lio/bidmachine/BidMachineFetcher;->DEF_PRICE_ROUNDING:Ljava/math/BigDecimal;

    sput-object v0, Lio/bidmachine/BidMachineFetcher;->priceRounding:Ljava/math/BigDecimal;

    .line 141
    sget-object v0, Lio/bidmachine/BidMachineFetcher;->DEF_PRICE_ROUNDING_MODE:Ljava/math/RoundingMode;

    sput-object v0, Lio/bidmachine/BidMachineFetcher;->priceRoundingMode:Ljava/math/RoundingMode;

    return-void
.end method

.method public static roundPrice(D)Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 131
    new-instance v0, Ljava/math/BigDecimal;

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 132
    sget-object p0, Lio/bidmachine/BidMachineFetcher;->priceRounding:Ljava/math/BigDecimal;

    invoke-virtual {p0}, Ljava/math/BigDecimal;->signum()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lio/bidmachine/BidMachineFetcher;->priceRounding:Ljava/math/BigDecimal;

    const/4 p1, 0x0

    sget-object v1, Lio/bidmachine/BidMachineFetcher;->priceRoundingMode:Ljava/math/RoundingMode;

    .line 134
    invoke-virtual {v0, p0, p1, v1}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p0

    sget-object p1, Lio/bidmachine/BidMachineFetcher;->priceRounding:Ljava/math/BigDecimal;

    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    .line 135
    :goto_0
    sget-object p0, Lio/bidmachine/BidMachineFetcher;->priceRounding:Ljava/math/BigDecimal;

    invoke-virtual {p0}, Ljava/math/BigDecimal;->scale()I

    move-result p0

    sget-object p1, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    invoke-virtual {v0, p0, p1}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static setPriceRounding(D)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 43
    sget-object v0, Lio/bidmachine/BidMachineFetcher;->DEF_PRICE_ROUNDING_MODE:Ljava/math/RoundingMode;

    invoke-static {p0, p1, v0}, Lio/bidmachine/BidMachineFetcher;->setPriceRounding(DLjava/math/RoundingMode;)V

    return-void
.end method

.method public static setPriceRounding(DLjava/math/RoundingMode;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 48
    sget-object v0, Ljava/math/RoundingMode;->UNNECESSARY:Ljava/math/RoundingMode;

    if-eq p2, v0, :cond_0

    .line 51
    new-instance v0, Ljava/math/BigDecimal;

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/bidmachine/BidMachineFetcher;->priceRounding:Ljava/math/BigDecimal;

    .line 52
    sput-object p2, Lio/bidmachine/BidMachineFetcher;->priceRoundingMode:Ljava/math/RoundingMode;

    return-void

    .line 49
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid rounding mode"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static toMap(Lio/bidmachine/AdRequest;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/AdRequest;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 146
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 147
    invoke-virtual {p0}, Lio/bidmachine/AdRequest;->getAuctionResult()Lio/bidmachine/models/AuctionResult;

    move-result-object p0

    if-nez p0, :cond_0

    return-object v0

    .line 151
    :cond_0
    invoke-interface {p0}, Lio/bidmachine/models/AuctionResult;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "bm_id"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    invoke-interface {p0}, Lio/bidmachine/models/AuctionResult;->getPrice()D

    move-result-wide v1

    invoke-static {v1, v2}, Lio/bidmachine/BidMachineFetcher;->roundPrice(D)Ljava/lang/String;

    move-result-object v1

    const-string v2, "bm_pf"

    .line 152
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    invoke-interface {p0}, Lio/bidmachine/models/AuctionResult;->getNetworkKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "bm_network_key"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    invoke-interface {p0}, Lio/bidmachine/models/AuctionResult;->getCreativeFormat()Lio/bidmachine/CreativeFormat;

    move-result-object v1

    invoke-static {v1}, Lio/bidmachine/BidMachineFetcher;->identifyAdType(Lio/bidmachine/CreativeFormat;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "bm_ad_type"

    .line 157
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    :cond_1
    invoke-interface {p0}, Lio/bidmachine/models/AuctionResult;->getCustomParams()Ljava/util/Map;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object v0
.end method
