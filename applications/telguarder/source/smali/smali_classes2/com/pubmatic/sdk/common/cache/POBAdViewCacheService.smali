.class public Lcom/pubmatic/sdk/common/cache/POBAdViewCacheService;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pubmatic/sdk/common/cache/POBAdViewCacheService$AdViewConfig;
    }
.end annotation


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/pubmatic/sdk/common/cache/POBAdViewCacheService$AdViewConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/pubmatic/sdk/common/cache/POBAdViewCacheService;->a:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getStoredAdView(Ljava/lang/Integer;)Lcom/pubmatic/sdk/common/cache/POBAdViewCacheService$AdViewConfig;
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/common/cache/POBAdViewCacheService;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/pubmatic/sdk/common/cache/POBAdViewCacheService$AdViewConfig;

    return-object p1
.end method

.method public popStoredAdView(Ljava/lang/Integer;)Lcom/pubmatic/sdk/common/cache/POBAdViewCacheService$AdViewConfig;
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/common/cache/POBAdViewCacheService;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/pubmatic/sdk/common/cache/POBAdViewCacheService$AdViewConfig;

    return-object p1
.end method

.method public storeAdView(Ljava/lang/Integer;Lcom/pubmatic/sdk/common/cache/POBAdViewCacheService$AdViewConfig;)V
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/common/cache/POBAdViewCacheService;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
