.class public abstract Lcom/millennialmedia/internal/adadapters/AdAdapter;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/millennialmedia/internal/adadapters/AdAdapter$AdapterRegistration;
    }
.end annotation


# static fields
.field public static final DEFAULT_MIN_IMPRESSION_DELAY:I = 0x3e8

.field public static final DEFAULT_MIN_IMPRESSION_VIEWABILITY_PERCENTAGE:I = 0x32

.field public static final NO_IMPRESSION_DELAY:I = 0x0

.field public static final NO_MIN_IMPRESSION_VIEWABILITY_PERCENTAGE:I = -0x1

.field private static final TAG:Ljava/lang/String; = "AdAdapter"

.field private static registeredAdapters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/millennialmedia/internal/adadapters/AdAdapter$AdapterRegistration;",
            ">;"
        }
    .end annotation
.end field

.field private static registeredMediatedAdAdapters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/millennialmedia/internal/AdPlacement;",
            ">;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/millennialmedia/internal/adadapters/MediatedAdAdapter;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field public adContent:Ljava/lang/String;

.field public adMetadata:Lcom/millennialmedia/internal/AdMetadata;

.field private creativeInfo:Lcom/millennialmedia/CreativeInfo;

.field public requestTimeout:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/millennialmedia/internal/adadapters/AdAdapter;->registeredAdapters:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/millennialmedia/internal/adadapters/AdAdapter;->registeredMediatedAdAdapters:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/millennialmedia/internal/AdMetadata;

    invoke-direct {v0}, Lcom/millennialmedia/internal/AdMetadata;-><init>()V

    iput-object v0, p0, Lcom/millennialmedia/internal/adadapters/AdAdapter;->adMetadata:Lcom/millennialmedia/internal/AdMetadata;

    const/4 v0, 0x0

    iput v0, p0, Lcom/millennialmedia/internal/adadapters/AdAdapter;->requestTimeout:I

    return-void
.end method

.method public static getAdapterInstance(Ljava/lang/Class;Ljava/lang/Class;)Lcom/millennialmedia/internal/adadapters/AdAdapter;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/millennialmedia/internal/adadapters/AdAdapter;"
        }
    .end annotation

    sget-object v0, Lcom/millennialmedia/internal/adadapters/AdAdapter;->registeredAdapters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/millennialmedia/internal/adadapters/AdAdapter$AdapterRegistration;

    iget-object v3, v1, Lcom/millennialmedia/internal/adadapters/AdAdapter$AdapterRegistration;->adPlacementClass:Ljava/lang/Class;

    invoke-virtual {v3, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    iget-object v4, v1, Lcom/millennialmedia/internal/adadapters/AdAdapter$AdapterRegistration;->adControllerClass:Ljava/lang/Class;

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    iget-object v0, v1, Lcom/millennialmedia/internal/adadapters/AdAdapter$AdapterRegistration;->adAdapterClass:Ljava/lang/Class;

    goto :goto_0

    :cond_1
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_2

    const/4 v1, 0x0

    :try_start_0
    new-array v3, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/internal/adadapters/AdAdapter;

    move-object v2, v0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Unable to find adapter class"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    sget-object v1, Lcom/millennialmedia/internal/adadapters/AdAdapter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to create ad adapter instance for the placement type <"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "> and ad controller type <"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ">"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, v0}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-object v2
.end method

.method public static getMediatedAdapterInstance(Ljava/lang/Class;)Lcom/millennialmedia/internal/adadapters/MediatedAdAdapter;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/millennialmedia/internal/AdPlacement;",
            ">;)",
            "Lcom/millennialmedia/internal/adadapters/MediatedAdAdapter;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    sget-object p0, Lcom/millennialmedia/internal/adadapters/AdAdapter;->TAG:Ljava/lang/String;

    const-string v1, "Ad placement class cannot be null."

    invoke-static {p0, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    sget-object v1, Lcom/millennialmedia/internal/adadapters/AdAdapter;->registeredMediatedAdAdapters:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    sget-object v1, Lcom/millennialmedia/internal/adadapters/AdAdapter;->TAG:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v2

    const-string p0, "No mediated ad adapters registered for placement type: %s"

    invoke-static {p0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_1
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/millennialmedia/internal/adadapters/MediatedAdAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v4

    :catchall_0
    move-exception v4

    sget-object v5, Lcom/millennialmedia/internal/adadapters/AdAdapter;->TAG:Ljava/lang/String;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v1, v6, v2

    aput-object p0, v6, v3

    const-string p0, "Unable to instantiate mediated ad adapter class %s for placement %s."

    invoke-static {p0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0, v4}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static registerAdapter(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    const-class v0, Lcom/millennialmedia/internal/AdPlacement;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-class v0, Lcom/millennialmedia/internal/adadapters/AdAdapter;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-class v0, Lcom/millennialmedia/internal/adcontrollers/AdController;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/millennialmedia/internal/adadapters/AdAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Registering ad adapter <"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "> for ad placement <"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "> and ad controller <"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    sget-object v0, Lcom/millennialmedia/internal/adadapters/AdAdapter;->registeredAdapters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/millennialmedia/internal/adadapters/AdAdapter$AdapterRegistration;

    iget-object v2, v1, Lcom/millennialmedia/internal/adadapters/AdAdapter$AdapterRegistration;->adPlacementClass:Ljava/lang/Class;

    if-ne v2, p0, :cond_1

    iget-object v2, v1, Lcom/millennialmedia/internal/adadapters/AdAdapter$AdapterRegistration;->adAdapterClass:Ljava/lang/Class;

    if-ne v2, p1, :cond_1

    iget-object v1, v1, Lcom/millennialmedia/internal/adadapters/AdAdapter$AdapterRegistration;->adControllerClass:Ljava/lang/Class;

    if-ne v1, p2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/millennialmedia/internal/adadapters/AdAdapter;->registeredAdapters:Ljava/util/List;

    new-instance v1, Lcom/millennialmedia/internal/adadapters/AdAdapter$AdapterRegistration;

    invoke-direct {v1, p0, p1, p2}, Lcom/millennialmedia/internal/adadapters/AdAdapter$AdapterRegistration;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unable to register ad adapter, specified controller class is not an instance of AdController"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unable to register ad adapter, specified adapter class is not an instance of AdAdapter"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unable to register ad adapter, specified placement class is not an instance of AdPlacement"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static registerMediatedAdAdapter(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/millennialmedia/internal/AdPlacement;",
            ">;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/millennialmedia/internal/adadapters/MediatedAdAdapter;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_2

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/millennialmedia/internal/adadapters/AdAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Registering mediated ad adapter <"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "> for ad placement <"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    sget-object v0, Lcom/millennialmedia/internal/adadapters/AdAdapter;->registeredMediatedAdAdapters:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unable to register mediated ad adapter, specified mediated ad adapter class must not be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unable to register mediated ad adapter, specified placement class must not be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static registerPackagedAdapters()V
    .locals 5

    const-class v0, Lcom/millennialmedia/internal/adcontrollers/WebController;

    const-class v1, Lcom/millennialmedia/InterstitialAd;

    const-class v2, Lcom/millennialmedia/InlineAd;

    const-class v3, Lcom/millennialmedia/internal/adadapters/InlineLightboxAdapter;

    const-class v4, Lcom/millennialmedia/internal/adcontrollers/LightboxController;

    invoke-static {v2, v3, v4}, Lcom/millennialmedia/internal/adadapters/AdAdapter;->registerAdapter(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    const-class v3, Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;

    const-class v4, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;

    invoke-static {v1, v3, v4}, Lcom/millennialmedia/internal/adadapters/AdAdapter;->registerAdapter(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    const-class v3, Lcom/millennialmedia/internal/adadapters/InlineWebAdapter;

    invoke-static {v2, v3, v0}, Lcom/millennialmedia/internal/adadapters/AdAdapter;->registerAdapter(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    const-class v2, Lcom/millennialmedia/internal/adadapters/InterstitialWebAdapter;

    invoke-static {v1, v2, v0}, Lcom/millennialmedia/internal/adadapters/AdAdapter;->registerAdapter(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    const-class v0, Lcom/millennialmedia/NativeAd;

    const-class v1, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;

    const-class v2, Lcom/millennialmedia/internal/adcontrollers/NativeController;

    invoke-static {v0, v1, v2}, Lcom/millennialmedia/internal/adadapters/AdAdapter;->registerAdapter(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public getCreativeInfo()Lcom/millennialmedia/CreativeInfo;
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/AdAdapter;->creativeInfo:Lcom/millennialmedia/CreativeInfo;

    return-object v0
.end method

.method public getImpressionDelay()J
    .locals 2

    const-wide/16 v0, 0x3e8

    return-wide v0
.end method

.method public getMinImpressionViewabilityPercentage()I
    .locals 1

    const/16 v0, 0x32

    return v0
.end method

.method public abstract release()V
.end method

.method public setAdMetadata(Lcom/millennialmedia/internal/AdMetadata;)V
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/AdAdapter;->adMetadata:Lcom/millennialmedia/internal/AdMetadata;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/internal/AdMetadata;->addAll(Lcom/millennialmedia/internal/AdMetadata;)V

    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/internal/adadapters/AdAdapter;->adContent:Ljava/lang/String;

    return-void
.end method

.method public setCreativeInfo(Lcom/millennialmedia/CreativeInfo;)V
    .locals 3

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/millennialmedia/internal/adadapters/AdAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CreativeInfo "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iput-object p1, p0, Lcom/millennialmedia/internal/adadapters/AdAdapter;->creativeInfo:Lcom/millennialmedia/CreativeInfo;

    return-void
.end method
