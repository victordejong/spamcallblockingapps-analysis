.class public abstract Lcom/millennialmedia/internal/AdPlacementMetadata;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MetadataType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final METADATA_KEY_CUSTOM_TARGETING:Ljava/lang/String; = "customTargeting"

.field public static final METADATA_KEY_HEIGHT:Ljava/lang/String; = "height"

.field public static final METADATA_KEY_IMPRESSION_GROUP:Ljava/lang/String; = "impressionGroup"

.field public static final METADATA_KEY_KEYWORDS:Ljava/lang/String; = "keywords"

.field public static final METADATA_KEY_NATIVE_TYPES:Ljava/lang/String; = "nativeTypes"

.field public static final METADATA_KEY_PLACEMENT_ID:Ljava/lang/String; = "placementId"

.field public static final METADATA_KEY_PLACEMENT_TYPE:Ljava/lang/String; = "placementType"

.field public static final METADATA_KEY_SUPPORTED_ORIENTATIONS:Ljava/lang/String; = "supportedOrientations"

.field public static final METADATA_KEY_WIDTH:Ljava/lang/String; = "width"

.field private static final TAG:Ljava/lang/String; = "com.millennialmedia.internal.AdPlacementMetadata"

.field private static final validOrientations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private customTargeting:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private impressionGroup:Ljava/lang/String;

.field private keywords:Ljava/lang/String;

.field private final placementType:Ljava/lang/String;

.field private supportedOrientations:Ljava/util/List;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "portrait"

    const-string v1, "landscape"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/millennialmedia/internal/AdPlacementMetadata;->validOrientations:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/millennialmedia/internal/AdPlacementMetadata;->placementType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public buildValidatedList(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, ","

    invoke-virtual {p2, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    array-length v2, p2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, p2, v3

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    sget-object v5, Lcom/millennialmedia/internal/AdPlacementMetadata;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Value <"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "> is not a valid "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_3

    goto :goto_2

    :cond_3
    move-object v0, v1

    :cond_4
    :goto_2
    return-object v0
.end method

.method public getCustomTargeting(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/internal/AdPlacementMetadata;->customTargeting:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getImpressionGroup()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/internal/AdPlacementMetadata;->impressionGroup:Ljava/lang/String;

    return-object v0
.end method

.method public getKeywords()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/internal/AdPlacementMetadata;->keywords:Ljava/lang/String;

    return-object v0
.end method

.method public getSupportedOrientations()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/internal/AdPlacementMetadata;->supportedOrientations:Ljava/util/List;

    return-object v0
.end method

.method public setCustomTargeting(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TMetadataType;"
        }
    .end annotation

    invoke-static {p1}, Lcom/millennialmedia/internal/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/internal/AdPlacementMetadata;->customTargeting:Ljava/util/Map;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/millennialmedia/internal/AdPlacementMetadata;->customTargeting:Ljava/util/Map;

    :cond_1
    invoke-static {p2}, Lcom/millennialmedia/internal/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p2, p0, Lcom/millennialmedia/internal/AdPlacementMetadata;->customTargeting:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/millennialmedia/internal/AdPlacementMetadata;->customTargeting:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-object p0
.end method

.method public setImpressionGroup(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TMetadataType;"
        }
    .end annotation

    iput-object p1, p0, Lcom/millennialmedia/internal/AdPlacementMetadata;->impressionGroup:Ljava/lang/String;

    return-object p0
.end method

.method public setKeywords(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TMetadataType;"
        }
    .end annotation

    iput-object p1, p0, Lcom/millennialmedia/internal/AdPlacementMetadata;->keywords:Ljava/lang/String;

    return-object p0
.end method

.method public setSupportedOrientations(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TMetadataType;"
        }
    .end annotation

    sget-object v0, Lcom/millennialmedia/internal/AdPlacementMetadata;->validOrientations:Ljava/util/List;

    const-string v1, "orientation"

    invoke-virtual {p0, v1, p1, v0}, Lcom/millennialmedia/internal/AdPlacementMetadata;->buildValidatedList(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/millennialmedia/internal/AdPlacementMetadata;->supportedOrientations:Ljava/util/List;

    return-object p0
.end method

.method public toMap(Lcom/millennialmedia/internal/AdPlacement;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/millennialmedia/internal/AdPlacement;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object p1, p1, Lcom/millennialmedia/internal/AdPlacement;->placementId:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/millennialmedia/internal/AdPlacementMetadata;->toMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public toMap(Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "placementId"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/millennialmedia/internal/AdPlacementMetadata;->placementType:Ljava/lang/String;

    const-string v1, "placementType"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/millennialmedia/internal/AdPlacementMetadata;->keywords:Ljava/lang/String;

    const-string v1, "keywords"

    invoke-static {v0, v1, p1}, Lcom/millennialmedia/internal/utils/Utils;->injectIfNotNull(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/millennialmedia/internal/AdPlacementMetadata;->supportedOrientations:Ljava/util/List;

    const-string v1, "supportedOrientations"

    invoke-static {v0, v1, p1}, Lcom/millennialmedia/internal/utils/Utils;->injectIfNotNull(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/millennialmedia/internal/AdPlacementMetadata;->impressionGroup:Ljava/lang/String;

    const-string v1, "impressionGroup"

    invoke-static {v0, v1, p1}, Lcom/millennialmedia/internal/utils/Utils;->injectIfNotNull(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/millennialmedia/internal/AdPlacementMetadata;->customTargeting:Ljava/util/Map;

    const-string v1, "customTargeting"

    invoke-static {v0, v1, p1}, Lcom/millennialmedia/internal/utils/Utils;->injectIfNotNull(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method
