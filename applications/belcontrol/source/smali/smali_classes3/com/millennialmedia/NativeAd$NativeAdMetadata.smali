.class public Lcom/millennialmedia/NativeAd$NativeAdMetadata;
.super Lcom/millennialmedia/internal/AdPlacementMetadata;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/NativeAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NativeAdMetadata"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/millennialmedia/internal/AdPlacementMetadata<",
        "Lcom/millennialmedia/NativeAd$NativeAdMetadata;",
        ">;"
    }
.end annotation


# static fields
.field private static final PLACEMENT_TYPE_NATIVE:Ljava/lang/String; = "native"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "native"

    invoke-direct {p0, v0}, Lcom/millennialmedia/internal/AdPlacementMetadata;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public toMap(Lcom/millennialmedia/NativeAd;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/millennialmedia/NativeAd;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/millennialmedia/internal/AdPlacementMetadata;->toMap(Lcom/millennialmedia/internal/AdPlacement;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Lcom/millennialmedia/NativeAd;->access$000(Lcom/millennialmedia/NativeAd;)Ljava/util/List;

    move-result-object p1

    const-string v1, "nativeTypes"

    invoke-static {v0, v1, p1}, Lcom/millennialmedia/internal/utils/Utils;->injectIfNotNull(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method
