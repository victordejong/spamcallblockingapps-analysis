.class public Lcom/millennialmedia/InlineAd$InlineAdMetadata;
.super Lcom/millennialmedia/internal/AdPlacementMetadata;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/InlineAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InlineAdMetadata"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/millennialmedia/internal/AdPlacementMetadata<",
        "Lcom/millennialmedia/InlineAd$InlineAdMetadata;",
        ">;"
    }
.end annotation


# static fields
.field private static final PLACEMENT_TYPE_INLINE:Ljava/lang/String; = "inline"


# instance fields
.field private adSize:Lcom/millennialmedia/InlineAd$AdSize;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "inline"

    invoke-direct {p0, v0}, Lcom/millennialmedia/internal/AdPlacementMetadata;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private addElementsToMap(Ljava/util/Map;Lcom/millennialmedia/InlineAd;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/millennialmedia/InlineAd;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p2}, Lcom/millennialmedia/InlineAd$InlineAdMetadata;->getWidth(Lcom/millennialmedia/InlineAd;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "width"

    invoke-static {p1, v1, v0}, Lcom/millennialmedia/internal/utils/Utils;->injectIfNotNull(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, p2}, Lcom/millennialmedia/InlineAd$InlineAdMetadata;->getHeight(Lcom/millennialmedia/InlineAd;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "height"

    invoke-static {p1, v1, v0}, Lcom/millennialmedia/internal/utils/Utils;->injectIfNotNull(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/millennialmedia/InlineAd;->getRefreshInterval()Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "refreshRate"

    invoke-static {p1, v0, p2}, Lcom/millennialmedia/internal/utils/Utils;->injectIfNotNull(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-object p1
.end method


# virtual methods
.method public getAdSize()Lcom/millennialmedia/InlineAd$AdSize;
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/InlineAd$InlineAdMetadata;->adSize:Lcom/millennialmedia/InlineAd$AdSize;

    return-object v0
.end method

.method public getHeight(Lcom/millennialmedia/InlineAd;)I
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/InlineAd$InlineAdMetadata;->adSize:Lcom/millennialmedia/InlineAd$AdSize;

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/millennialmedia/InlineAd$AdSize;->height:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-static {p1}, Lcom/millennialmedia/InlineAd;->access$100(Lcom/millennialmedia/InlineAd;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    if-nez p1, :cond_1

    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    invoke-static {p1}, Lcom/millennialmedia/internal/utils/ViewUtils;->convertPixelsToDips(I)I

    move-result p1

    return p1

    :cond_2
    return v0
.end method

.method public getWidth(Lcom/millennialmedia/InlineAd;)I
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/InlineAd$InlineAdMetadata;->adSize:Lcom/millennialmedia/InlineAd$AdSize;

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/millennialmedia/InlineAd$AdSize;->width:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-static {p1}, Lcom/millennialmedia/InlineAd;->access$100(Lcom/millennialmedia/InlineAd;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    if-nez p1, :cond_1

    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result p1

    invoke-static {p1}, Lcom/millennialmedia/internal/utils/ViewUtils;->convertPixelsToDips(I)I

    move-result p1

    return p1

    :cond_2
    return v0
.end method

.method public hasValidAdSize()Z
    .locals 2

    iget-object v0, p0, Lcom/millennialmedia/InlineAd$InlineAdMetadata;->adSize:Lcom/millennialmedia/InlineAd$AdSize;

    if-eqz v0, :cond_0

    iget v1, v0, Lcom/millennialmedia/InlineAd$AdSize;->width:I

    if-ltz v1, :cond_0

    iget v0, v0, Lcom/millennialmedia/InlineAd$AdSize;->height:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setAdSize(Lcom/millennialmedia/InlineAd$AdSize;)Lcom/millennialmedia/InlineAd$InlineAdMetadata;
    .locals 1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/millennialmedia/InlineAd;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Provided AdSize cannot be null"

    invoke-static {p1, v0}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/millennialmedia/InlineAd$InlineAdMetadata;->adSize:Lcom/millennialmedia/InlineAd$AdSize;

    :goto_0
    return-object p0
.end method

.method public toMap(Lcom/millennialmedia/InlineAd;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/millennialmedia/InlineAd;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/millennialmedia/internal/AdPlacementMetadata;->toMap(Lcom/millennialmedia/internal/AdPlacement;)Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/millennialmedia/InlineAd$InlineAdMetadata;->addElementsToMap(Ljava/util/Map;Lcom/millennialmedia/InlineAd;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public toMap(Ljava/lang/String;)Ljava/util/Map;
    .locals 1
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

    invoke-super {p0, p1}, Lcom/millennialmedia/internal/AdPlacementMetadata;->toMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/millennialmedia/InlineAd$InlineAdMetadata;->addElementsToMap(Ljava/util/Map;Lcom/millennialmedia/InlineAd;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method
