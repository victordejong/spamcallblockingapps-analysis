.class public Lcom/millennialmedia/NativeAd;
.super Lcom/millennialmedia/internal/AdPlacement;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/millennialmedia/NativeAd$ExpirationRunnable;,
        Lcom/millennialmedia/NativeAd$ImpressionReporter;,
        Lcom/millennialmedia/NativeAd$NativeAdMetadata;,
        Lcom/millennialmedia/NativeAd$NativeErrorStatus;,
        Lcom/millennialmedia/NativeAd$NativeListener;,
        Lcom/millennialmedia/NativeAd$ComponentName;
    }
.end annotation


# static fields
.field public static final COMPONENT_ID_BODY:Ljava/lang/String; = "body"

.field public static final COMPONENT_ID_CALL_TO_ACTION:Ljava/lang/String; = "callToAction"

.field public static final COMPONENT_ID_DISCLAIMER:Ljava/lang/String; = "disclaimer"

.field public static final COMPONENT_ID_ICON_IMAGE:Ljava/lang/String; = "iconImage"

.field public static final COMPONENT_ID_MAIN_IMAGE:Ljava/lang/String; = "mainImage"

.field public static final COMPONENT_ID_RATING:Ljava/lang/String; = "rating"

.field public static final COMPONENT_ID_TITLE:Ljava/lang/String; = "title"

.field private static final DEFAULT_DISCLAIMER_TEXT:Ljava/lang/String; = "Sponsored"

.field private static final MAX_COMP_INSTANCE_ID:I = 0x384

.field private static final MIN_COMP_INSTANCE_ID:I = 0x1

.field public static final NATIVE_TYPE_INLINE:Ljava/lang/String; = "inline"

.field public static final STATE_EXPIRED:Ljava/lang/String; = "expired"

.field private static final TAG:Ljava/lang/String; = "NativeAd"


# instance fields
.field private accessedComponentIndices:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private adAdapterRequestTimeoutRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

.field private bodyInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/millennialmedia/internal/adadapters/NativeAdapter$TextComponentInfo;",
            ">;"
        }
    .end annotation
.end field

.field private callToActionInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/millennialmedia/internal/adadapters/NativeAdapter$TextComponentInfo;",
            ">;"
        }
    .end annotation
.end field

.field private contextRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private volatile currentNativeAdAdapter:Lcom/millennialmedia/internal/adadapters/NativeAdapter;

.field private disclaimerInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/millennialmedia/internal/adadapters/NativeAdapter$TextComponentInfo;",
            ">;"
        }
    .end annotation
.end field

.field private expirationRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

.field private iconImageInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/millennialmedia/internal/adadapters/NativeAdapter$ImageComponentInfo;",
            ">;"
        }
    .end annotation
.end field

.field private impressionReported:Z

.field private impressionReporter:Lcom/millennialmedia/NativeAd$ImpressionReporter;

.field public loadedComponents:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private mainImageInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/millennialmedia/internal/adadapters/NativeAdapter$ImageComponentInfo;",
            ">;"
        }
    .end annotation
.end field

.field private nativeAdMetadata:Lcom/millennialmedia/NativeAd$NativeAdMetadata;

.field private nativeListener:Lcom/millennialmedia/NativeAd$NativeListener;

.field private nativeTypeDefinition:Lcom/millennialmedia/internal/Handshake$NativeTypeDefinition;

.field private volatile nextNativeAdAdapter:Lcom/millennialmedia/internal/adadapters/NativeAdapter;

.field private placementRequestTimeoutRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

.field private ratingInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/millennialmedia/internal/adadapters/NativeAdapter$TextComponentInfo;",
            ">;"
        }
    .end annotation
.end field

.field private requestedNativeTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private titleInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/millennialmedia/internal/adadapters/NativeAdapter$TextComponentInfo;",
            ">;"
        }
    .end annotation
.end field

.field private usingManagedLayout:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 8

    invoke-direct {p0, p1}, Lcom/millennialmedia/internal/AdPlacement;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/millennialmedia/NativeAd;->usingManagedLayout:Z

    iput-boolean p1, p0, Lcom/millennialmedia/NativeAd;->impressionReported:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/millennialmedia/NativeAd;->accessedComponentIndices:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/millennialmedia/NativeAd;->loadedComponents:Ljava/util/Map;

    if-eqz p2, :cond_4

    array-length v0, p2

    if-eqz v0, :cond_4

    aget-object v0, p2, p1

    if-eqz v0, :cond_4

    aget-object v0, p2, p1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/millennialmedia/internal/Handshake;->getNativeTypeDefinitions()Ljava/util/Map;

    move-result-object v1

    array-length v2, p2

    :goto_0
    if-ge p1, v2, :cond_3

    aget-object v3, p2, p1

    const/4 v4, 0x0

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/millennialmedia/internal/Handshake$NativeTypeDefinition;

    iget-object v6, v6, Lcom/millennialmedia/internal/Handshake$NativeTypeDefinition;->typeName:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v4, v7

    :cond_1
    if-eqz v4, :cond_2

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    new-instance p1, Lcom/millennialmedia/MMException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to load native ad, specified native type <"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "> is not recognized"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/millennialmedia/MMException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    iput-object v0, p0, Lcom/millennialmedia/NativeAd;->requestedNativeTypes:Ljava/util/List;

    return-void

    :cond_4
    new-instance p1, Lcom/millennialmedia/MMException;

    const-string p2, "Unable to create native ad, nativeTypes is required"

    invoke-direct {p1, p2}, Lcom/millennialmedia/MMException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic access$000(Lcom/millennialmedia/NativeAd;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/millennialmedia/NativeAd;->requestedNativeTypes:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/millennialmedia/NativeAd;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$1002(Lcom/millennialmedia/NativeAd;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/internal/AdPlacement;->placementState:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$1102(Lcom/millennialmedia/NativeAd;Lcom/millennialmedia/internal/PlayList;)Lcom/millennialmedia/internal/PlayList;
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/internal/AdPlacement;->playList:Lcom/millennialmedia/internal/PlayList;

    return-object p1
.end method

.method public static synthetic access$1202(Lcom/millennialmedia/NativeAd;Lcom/millennialmedia/internal/AdPlacement$RequestState;)Lcom/millennialmedia/internal/AdPlacement$RequestState;
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/internal/AdPlacement;->currentRequestState:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    return-object p1
.end method

.method public static synthetic access$1300(Lcom/millennialmedia/NativeAd;Lcom/millennialmedia/internal/AdPlacement$RequestState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/millennialmedia/NativeAd;->loadAdAdapter(Lcom/millennialmedia/internal/AdPlacement$RequestState;)V

    return-void
.end method

.method public static synthetic access$1400(Lcom/millennialmedia/NativeAd;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/millennialmedia/internal/AdPlacement;->doPendingDestroy()Z

    move-result p0

    return p0
.end method

.method public static synthetic access$1500(Lcom/millennialmedia/NativeAd;Lcom/millennialmedia/internal/AdPlacement$RequestState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/millennialmedia/NativeAd;->onAdAdapterLoadFailed(Lcom/millennialmedia/internal/AdPlacement$RequestState;)V

    return-void
.end method

.method public static synthetic access$1600(Lcom/millennialmedia/NativeAd;)Lcom/millennialmedia/internal/AdPlacement$RequestState;
    .locals 0

    iget-object p0, p0, Lcom/millennialmedia/internal/AdPlacement;->currentRequestState:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    return-object p0
.end method

.method public static synthetic access$1700(Lcom/millennialmedia/NativeAd;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/millennialmedia/internal/AdPlacement;->placementState:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$1800(Lcom/millennialmedia/NativeAd;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/millennialmedia/internal/AdPlacement;->placementState:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$1900(Lcom/millennialmedia/NativeAd;)Lcom/millennialmedia/internal/adadapters/NativeAdapter;
    .locals 0

    iget-object p0, p0, Lcom/millennialmedia/NativeAd;->nextNativeAdAdapter:Lcom/millennialmedia/internal/adadapters/NativeAdapter;

    return-object p0
.end method

.method public static synthetic access$1902(Lcom/millennialmedia/NativeAd;Lcom/millennialmedia/internal/adadapters/NativeAdapter;)Lcom/millennialmedia/internal/adadapters/NativeAdapter;
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/NativeAd;->nextNativeAdAdapter:Lcom/millennialmedia/internal/adadapters/NativeAdapter;

    return-object p1
.end method

.method public static synthetic access$200(Lcom/millennialmedia/NativeAd;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/millennialmedia/NativeAd;->impressionReported:Z

    return p0
.end method

.method public static synthetic access$2000(Lcom/millennialmedia/NativeAd;Lcom/millennialmedia/internal/adadapters/NativeAdapter;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/millennialmedia/NativeAd;->setCurrentAdAdapter(Lcom/millennialmedia/internal/adadapters/NativeAdapter;)V

    return-void
.end method

.method public static synthetic access$202(Lcom/millennialmedia/NativeAd;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/millennialmedia/NativeAd;->impressionReported:Z

    return p1
.end method

.method public static synthetic access$2100(Lcom/millennialmedia/NativeAd;)Lcom/millennialmedia/internal/adadapters/NativeAdapter;
    .locals 0

    iget-object p0, p0, Lcom/millennialmedia/NativeAd;->currentNativeAdAdapter:Lcom/millennialmedia/internal/adadapters/NativeAdapter;

    return-object p0
.end method

.method public static synthetic access$2200(Lcom/millennialmedia/NativeAd;Lcom/millennialmedia/internal/adadapters/NativeAdapter;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/millennialmedia/NativeAd;->loadComponents(Lcom/millennialmedia/internal/adadapters/NativeAdapter;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$2300(Lcom/millennialmedia/NativeAd;Lcom/millennialmedia/internal/AdPlacement$RequestState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/millennialmedia/NativeAd;->onLoadSucceeded(Lcom/millennialmedia/internal/AdPlacement$RequestState;)V

    return-void
.end method

.method public static synthetic access$2400(Lcom/millennialmedia/NativeAd;Lcom/millennialmedia/XIncentivizedEventListener$XIncentiveEvent;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/millennialmedia/internal/AdPlacement;->onIncentiveEarned(Lcom/millennialmedia/XIncentivizedEventListener$XIncentiveEvent;)V

    return-void
.end method

.method public static synthetic access$2500(Lcom/millennialmedia/NativeAd;Lcom/millennialmedia/internal/AdPlacementReporter;Lcom/millennialmedia/internal/adadapters/NativeAdapter$ComponentInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/millennialmedia/NativeAd;->reportClick(Lcom/millennialmedia/internal/AdPlacementReporter;Lcom/millennialmedia/internal/adadapters/NativeAdapter$ComponentInfo;)V

    return-void
.end method

.method public static synthetic access$2600(Lcom/millennialmedia/NativeAd;)Lcom/millennialmedia/NativeAd$NativeListener;
    .locals 0

    iget-object p0, p0, Lcom/millennialmedia/NativeAd;->nativeListener:Lcom/millennialmedia/NativeAd$NativeListener;

    return-object p0
.end method

.method public static synthetic access$2700(Lcom/millennialmedia/NativeAd;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/millennialmedia/NativeAd;->invokeAction(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$300(Lcom/millennialmedia/NativeAd;)Lcom/millennialmedia/internal/AdPlacement$RequestState;
    .locals 0

    iget-object p0, p0, Lcom/millennialmedia/internal/AdPlacement;->currentRequestState:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/millennialmedia/NativeAd;Lcom/millennialmedia/internal/AdPlacementReporter;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/millennialmedia/NativeAd;->reportImpression(Lcom/millennialmedia/internal/AdPlacementReporter;I)V

    return-void
.end method

.method public static synthetic access$502(Lcom/millennialmedia/NativeAd;Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;)Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/NativeAd;->expirationRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    return-object p1
.end method

.method public static synthetic access$600(Lcom/millennialmedia/NativeAd;Lcom/millennialmedia/internal/AdPlacement$RequestState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/millennialmedia/NativeAd;->onExpired(Lcom/millennialmedia/internal/AdPlacement$RequestState;)V

    return-void
.end method

.method public static synthetic access$700(Lcom/millennialmedia/NativeAd;Lcom/millennialmedia/internal/AdPlacement$RequestState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/millennialmedia/NativeAd;->onLoadFailed(Lcom/millennialmedia/internal/AdPlacement$RequestState;)V

    return-void
.end method

.method public static synthetic access$800(Lcom/millennialmedia/NativeAd;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/millennialmedia/internal/AdPlacement;->doPendingDestroy()Z

    move-result p0

    return p0
.end method

.method public static synthetic access$900(Lcom/millennialmedia/NativeAd;)Lcom/millennialmedia/internal/AdPlacement$RequestState;
    .locals 0

    iget-object p0, p0, Lcom/millennialmedia/internal/AdPlacement;->currentRequestState:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    return-object p0
.end method

.method public static createInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/millennialmedia/NativeAd;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p0, v0}, Lcom/millennialmedia/NativeAd;->createInstance(Ljava/lang/String;[Ljava/lang/String;)Lcom/millennialmedia/NativeAd;

    move-result-object p0

    return-object p0
.end method

.method public static createInstance(Ljava/lang/String;[Ljava/lang/String;)Lcom/millennialmedia/NativeAd;
    .locals 1

    invoke-static {}, Lcom/millennialmedia/MMSDK;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/millennialmedia/NativeAd;

    invoke-direct {v0, p0, p1}, Lcom/millennialmedia/NativeAd;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    return-object v0

    :cond_0
    new-instance p0, Lcom/millennialmedia/MMInitializationException;

    const-string p1, "Unable to create instance, SDK must be initialized first"

    invoke-direct {p0, p1}, Lcom/millennialmedia/MMInitializationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private fillImageViews(Ljava/util/List;Ljava/lang/String;Lcom/millennialmedia/NativeAd$ComponentName;Ljava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/widget/ImageView;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/millennialmedia/NativeAd$ComponentName;",
            "Ljava/util/List<",
            "Lcom/millennialmedia/internal/adadapters/NativeAdapter$ImageComponentInfo;",
            ">;Z)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/NativeAd;->loadedComponents:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    if-eqz p5, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p5

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p5

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {p5, v0}, Ljava/lang/Math;->min(II)I

    move-result p5

    :goto_0
    const/4 v0, 0x0

    :goto_1
    if-ge v0, p5, :cond_3

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/millennialmedia/internal/adadapters/NativeAdapter$ComponentInfo;

    invoke-direct {p0, v1, p3, v0, v2}, Lcom/millennialmedia/NativeAd;->setComponentClickListener(Landroid/view/View;Lcom/millennialmedia/NativeAd$ComponentName;ILcom/millennialmedia/internal/adadapters/NativeAdapter$ComponentInfo;)V

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method private fillTextViews(Ljava/util/List;Ljava/lang/String;Lcom/millennialmedia/NativeAd$ComponentName;Ljava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/widget/TextView;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/millennialmedia/NativeAd$ComponentName;",
            "Ljava/util/List<",
            "Lcom/millennialmedia/internal/adadapters/NativeAdapter$TextComponentInfo;",
            ">;Z)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/NativeAd;->loadedComponents:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    if-eqz p5, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p5

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p5

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {p5, v0}, Ljava/lang/Math;->min(II)I

    move-result p5

    :goto_0
    const/4 v0, 0x0

    :goto_1
    if-ge v0, p5, :cond_3

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/millennialmedia/internal/adadapters/NativeAdapter$ComponentInfo;

    invoke-direct {p0, v1, p3, v0, v2}, Lcom/millennialmedia/NativeAd;->setComponentClickListener(Landroid/view/View;Lcom/millennialmedia/NativeAd$ComponentName;ILcom/millennialmedia/internal/adadapters/NativeAdapter$ComponentInfo;)V

    goto :goto_2

    :cond_2
    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method private findImageViewsByComponentId(Landroid/view/View;Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    :goto_0
    const/16 v2, 0x384

    if-gt v1, v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    instance-of v3, v2, Landroid/widget/ImageView;

    if-eqz v3, :cond_0

    check-cast v2, Landroid/widget/ImageView;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/millennialmedia/MMException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Expected View with tag = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " to be a ImageView."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/millennialmedia/MMException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-object v0
.end method

.method private findTextViewsByComponentId(Landroid/view/View;Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    :goto_0
    const/16 v2, 0x384

    if-gt v1, v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    instance-of v3, v2, Landroid/widget/TextView;

    if-eqz v3, :cond_0

    check-cast v2, Landroid/widget/TextView;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/millennialmedia/MMException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Expected View with tag = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " to be a TextView."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/millennialmedia/MMException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-object v0
.end method

.method private getComponentInfo(Lcom/millennialmedia/NativeAd$ComponentName;I)Lcom/millennialmedia/internal/adadapters/NativeAdapter$ComponentInfo;
    .locals 6

    sget-object v0, Lcom/millennialmedia/NativeAd$ComponentName;->CALL_TO_ACTION:Lcom/millennialmedia/NativeAd$ComponentName;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/NativeAd;->callToActionInfoList:Ljava/util/List;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/millennialmedia/NativeAd$ComponentName;->ICON_IMAGE:Lcom/millennialmedia/NativeAd$ComponentName;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/millennialmedia/NativeAd;->iconImageInfoList:Ljava/util/List;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/millennialmedia/NativeAd$ComponentName;->MAIN_IMAGE:Lcom/millennialmedia/NativeAd$ComponentName;

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/millennialmedia/NativeAd;->mainImageInfoList:Ljava/util/List;

    goto :goto_0

    :cond_2
    move-object v0, v1

    :goto_0
    const/4 v2, 0x1

    if-nez v0, :cond_3

    sget-object v0, Lcom/millennialmedia/NativeAd;->TAG:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v2

    const-string p1, "Unable to get component info for component name <%s> and instance id <%d>, did not find component info list"

    invoke-static {v3, p1, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_3
    const-string v3, "> and instance id <"

    const-string v4, "Unable to get component info for component name <"

    if-ge p2, v2, :cond_4

    sget-object v0, Lcom/millennialmedia/NativeAd;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ">, instance id must be greater than 0"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v2, p2, :cond_5

    sget-object v2, Lcom/millennialmedia/NativeAd;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ">, only <"

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "> instances found"

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_5
    add-int/lit8 p2, p2, -0x1

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/internal/adadapters/NativeAdapter$ComponentInfo;

    if-nez v0, :cond_6

    sget-object v0, Lcom/millennialmedia/NativeAd;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ">, found value is null"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_6
    return-object v0
.end method

.method private getComponentInstance(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 4

    const/4 v0, 0x0

    const-string v1, "Unable to retrieve the requested <"

    const/4 v2, 0x1

    if-ge p1, v2, :cond_0

    sget-object p1, Lcom/millennialmedia/NativeAd;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "> instance, instance value must be 1 or greater"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    iget-object v2, p0, Lcom/millennialmedia/NativeAd;->loadedComponents:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v3, p1, :cond_1

    sget-object p2, Lcom/millennialmedia/NativeAd;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "> instance <"

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ">, only <"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "> instances available"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_1
    invoke-direct {p0, p2, p1}, Lcom/millennialmedia/NativeAd;->markComponentAsAccessed(Ljava/lang/String;I)V

    add-int/lit8 p1, p1, -0x1

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private static getImpressionDelay(Lcom/millennialmedia/internal/adadapters/AdAdapter;)J
    .locals 2

    invoke-virtual {p0}, Lcom/millennialmedia/internal/adadapters/AdAdapter;->getImpressionDelay()J

    move-result-wide v0

    return-wide v0
.end method

.method private internalUpdateLayout(Landroid/view/View;ZZ)Z
    .locals 15

    move-object v6, p0

    move-object/from16 v7, p1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, v6, Lcom/millennialmedia/NativeAd;->nativeTypeDefinition:Lcom/millennialmedia/internal/Handshake$NativeTypeDefinition;

    iget-object v1, v1, Lcom/millennialmedia/internal/Handshake$NativeTypeDefinition;->componentDefinitions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/millennialmedia/internal/Handshake$NativeTypeDefinition$ComponentDefinition;

    iget-object v3, v2, Lcom/millennialmedia/internal/Handshake$NativeTypeDefinition$ComponentDefinition;->componentId:Ljava/lang/String;

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string v1, "body"

    invoke-direct {p0, v7, v1}, Lcom/millennialmedia/NativeAd;->findTextViewsByComponentId(Landroid/view/View;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/millennialmedia/internal/Handshake$NativeTypeDefinition$ComponentDefinition;

    const/4 v8, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    iget v1, v1, Lcom/millennialmedia/internal/Handshake$NativeTypeDefinition$ComponentDefinition;->publisherRequired:I

    if-ge v4, v1, :cond_1

    sget-object v1, Lcom/millennialmedia/NativeAd;->TAG:Ljava/lang/String;

    const-string v4, "Layout does not contain the required number of Views for the body component."

    invoke-static {v1, v4}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    :goto_1
    const-string v4, "callToAction"

    invoke-direct {p0, v7, v4}, Lcom/millennialmedia/NativeAd;->findTextViewsByComponentId(Landroid/view/View;Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/millennialmedia/internal/Handshake$NativeTypeDefinition$ComponentDefinition;

    if-eqz v4, :cond_2

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v5

    iget v4, v4, Lcom/millennialmedia/internal/Handshake$NativeTypeDefinition$ComponentDefinition;->publisherRequired:I

    if-ge v5, v4, :cond_2

    sget-object v1, Lcom/millennialmedia/NativeAd;->TAG:Ljava/lang/String;

    const-string v4, "Layout does not contain the required number of Views for the \'Call To Action\' component."

    invoke-static {v1, v4}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_2
    const-string v4, "disclaimer"

    invoke-direct {p0, v7, v4}, Lcom/millennialmedia/NativeAd;->findTextViewsByComponentId(Landroid/view/View;Ljava/lang/String;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/millennialmedia/internal/Handshake$NativeTypeDefinition$ComponentDefinition;

    if-eqz v4, :cond_3

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v5

    iget v4, v4, Lcom/millennialmedia/internal/Handshake$NativeTypeDefinition$ComponentDefinition;->publisherRequired:I

    if-ge v5, v4, :cond_3

    sget-object v1, Lcom/millennialmedia/NativeAd;->TAG:Ljava/lang/String;

    const-string v4, "Layout does not contain the required number of Views for the Disclaimer component."

    invoke-static {v1, v4}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_3
    const-string v4, "iconImage"

    invoke-direct {p0, v7, v4}, Lcom/millennialmedia/NativeAd;->findImageViewsByComponentId(Landroid/view/View;Ljava/lang/String;)Ljava/util/List;

    move-result-object v11

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/millennialmedia/internal/Handshake$NativeTypeDefinition$ComponentDefinition;

    if-eqz v4, :cond_4

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v5

    iget v4, v4, Lcom/millennialmedia/internal/Handshake$NativeTypeDefinition$ComponentDefinition;->publisherRequired:I

    if-ge v5, v4, :cond_4

    sget-object v1, Lcom/millennialmedia/NativeAd;->TAG:Ljava/lang/String;

    const-string v4, "Layout does not contain the required number of Views for the \'Icon Image\' component."

    invoke-static {v1, v4}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_4
    const-string v4, "mainImage"

    invoke-direct {p0, v7, v4}, Lcom/millennialmedia/NativeAd;->findImageViewsByComponentId(Landroid/view/View;Ljava/lang/String;)Ljava/util/List;

    move-result-object v12

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/millennialmedia/internal/Handshake$NativeTypeDefinition$ComponentDefinition;

    if-eqz v4, :cond_5

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v5

    iget v4, v4, Lcom/millennialmedia/internal/Handshake$NativeTypeDefinition$ComponentDefinition;->publisherRequired:I

    if-ge v5, v4, :cond_5

    sget-object v1, Lcom/millennialmedia/NativeAd;->TAG:Ljava/lang/String;

    const-string v4, "Layout does not contain the required number of Views for the \'Main Image\' component."

    invoke-static {v1, v4}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_5
    const-string v4, "rating"

    invoke-direct {p0, v7, v4}, Lcom/millennialmedia/NativeAd;->findTextViewsByComponentId(Landroid/view/View;Ljava/lang/String;)Ljava/util/List;

    move-result-object v13

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/millennialmedia/internal/Handshake$NativeTypeDefinition$ComponentDefinition;

    if-eqz v4, :cond_6

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v5

    iget v4, v4, Lcom/millennialmedia/internal/Handshake$NativeTypeDefinition$ComponentDefinition;->publisherRequired:I

    if-ge v5, v4, :cond_6

    sget-object v1, Lcom/millennialmedia/NativeAd;->TAG:Ljava/lang/String;

    const-string v4, "Layout does not contain the required number of Views for the Rating component."

    invoke-static {v1, v4}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_6
    const-string v4, "title"

    invoke-direct {p0, v7, v4}, Lcom/millennialmedia/NativeAd;->findTextViewsByComponentId(Landroid/view/View;Ljava/lang/String;)Ljava/util/List;

    move-result-object v14

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/internal/Handshake$NativeTypeDefinition$ComponentDefinition;

    if-eqz v0, :cond_7

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v4

    iget v0, v0, Lcom/millennialmedia/internal/Handshake$NativeTypeDefinition$ComponentDefinition;->publisherRequired:I

    if-ge v4, v0, :cond_7

    sget-object v0, Lcom/millennialmedia/NativeAd;->TAG:Ljava/lang/String;

    const-string v1, "Layout does not contain the required number of Views for the Title component."

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_7
    if-eqz v1, :cond_c

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, v6, Lcom/millennialmedia/NativeAd;->bodyInfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gt v0, v1, :cond_8

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, v6, Lcom/millennialmedia/NativeAd;->disclaimerInfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gt v0, v1, :cond_8

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, v6, Lcom/millennialmedia/NativeAd;->ratingInfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gt v0, v1, :cond_8

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, v6, Lcom/millennialmedia/NativeAd;->titleInfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gt v0, v1, :cond_8

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, v6, Lcom/millennialmedia/NativeAd;->callToActionInfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gt v0, v1, :cond_8

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, v6, Lcom/millennialmedia/NativeAd;->iconImageInfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gt v0, v1, :cond_8

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, v6, Lcom/millennialmedia/NativeAd;->mainImageInfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gt v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_2

    :cond_8
    const/4 v0, 0x0

    :goto_2
    if-nez v0, :cond_a

    if-nez p2, :cond_9

    goto :goto_3

    :cond_9
    const/4 v8, 0x0

    goto :goto_4

    :cond_a
    :goto_3
    sget-object v3, Lcom/millennialmedia/NativeAd$ComponentName;->BODY:Lcom/millennialmedia/NativeAd$ComponentName;

    iget-object v4, v6, Lcom/millennialmedia/NativeAd;->bodyInfoList:Ljava/util/List;

    const-string v5, "body"

    move-object v0, p0

    move-object v1, v2

    move-object v2, v5

    move/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/millennialmedia/NativeAd;->fillTextViews(Ljava/util/List;Ljava/lang/String;Lcom/millennialmedia/NativeAd$ComponentName;Ljava/util/List;Z)V

    sget-object v3, Lcom/millennialmedia/NativeAd$ComponentName;->DISCLAIMER:Lcom/millennialmedia/NativeAd$ComponentName;

    iget-object v4, v6, Lcom/millennialmedia/NativeAd;->disclaimerInfoList:Ljava/util/List;

    const-string v2, "disclaimer"

    move-object v1, v10

    invoke-direct/range {v0 .. v5}, Lcom/millennialmedia/NativeAd;->fillTextViews(Ljava/util/List;Ljava/lang/String;Lcom/millennialmedia/NativeAd$ComponentName;Ljava/util/List;Z)V

    sget-object v3, Lcom/millennialmedia/NativeAd$ComponentName;->RATING:Lcom/millennialmedia/NativeAd$ComponentName;

    iget-object v4, v6, Lcom/millennialmedia/NativeAd;->ratingInfoList:Ljava/util/List;

    const-string v2, "rating"

    move-object v1, v13

    invoke-direct/range {v0 .. v5}, Lcom/millennialmedia/NativeAd;->fillTextViews(Ljava/util/List;Ljava/lang/String;Lcom/millennialmedia/NativeAd$ComponentName;Ljava/util/List;Z)V

    sget-object v3, Lcom/millennialmedia/NativeAd$ComponentName;->TITLE:Lcom/millennialmedia/NativeAd$ComponentName;

    iget-object v4, v6, Lcom/millennialmedia/NativeAd;->titleInfoList:Ljava/util/List;

    const-string v2, "title"

    move-object v1, v14

    invoke-direct/range {v0 .. v5}, Lcom/millennialmedia/NativeAd;->fillTextViews(Ljava/util/List;Ljava/lang/String;Lcom/millennialmedia/NativeAd$ComponentName;Ljava/util/List;Z)V

    sget-object v3, Lcom/millennialmedia/NativeAd$ComponentName;->CALL_TO_ACTION:Lcom/millennialmedia/NativeAd$ComponentName;

    iget-object v4, v6, Lcom/millennialmedia/NativeAd;->callToActionInfoList:Ljava/util/List;

    const-string v2, "callToAction"

    move-object v1, v9

    invoke-direct/range {v0 .. v5}, Lcom/millennialmedia/NativeAd;->fillTextViews(Ljava/util/List;Ljava/lang/String;Lcom/millennialmedia/NativeAd$ComponentName;Ljava/util/List;Z)V

    sget-object v3, Lcom/millennialmedia/NativeAd$ComponentName;->ICON_IMAGE:Lcom/millennialmedia/NativeAd$ComponentName;

    iget-object v4, v6, Lcom/millennialmedia/NativeAd;->iconImageInfoList:Ljava/util/List;

    const-string v2, "iconImage"

    move-object v1, v11

    invoke-direct/range {v0 .. v5}, Lcom/millennialmedia/NativeAd;->fillImageViews(Ljava/util/List;Ljava/lang/String;Lcom/millennialmedia/NativeAd$ComponentName;Ljava/util/List;Z)V

    sget-object v3, Lcom/millennialmedia/NativeAd$ComponentName;->MAIN_IMAGE:Lcom/millennialmedia/NativeAd$ComponentName;

    iget-object v4, v6, Lcom/millennialmedia/NativeAd;->mainImageInfoList:Ljava/util/List;

    const-string v2, "mainImage"

    move-object v1, v12

    invoke-direct/range {v0 .. v5}, Lcom/millennialmedia/NativeAd;->fillImageViews(Ljava/util/List;Ljava/lang/String;Lcom/millennialmedia/NativeAd$ComponentName;Ljava/util/List;Z)V

    iput-boolean v8, v6, Lcom/millennialmedia/NativeAd;->usingManagedLayout:Z

    iget-object v0, v6, Lcom/millennialmedia/NativeAd;->impressionReporter:Lcom/millennialmedia/NativeAd$ImpressionReporter;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/millennialmedia/NativeAd$ImpressionReporter;->cancel()V

    :cond_b
    new-instance v0, Lcom/millennialmedia/NativeAd$ImpressionReporter;

    iget-object v1, v6, Lcom/millennialmedia/NativeAd;->currentNativeAdAdapter:Lcom/millennialmedia/internal/adadapters/NativeAdapter;

    invoke-static {v1}, Lcom/millennialmedia/NativeAd;->getImpressionDelay(Lcom/millennialmedia/internal/adadapters/AdAdapter;)J

    move-result-wide v1

    invoke-direct {v0, p0, v7, v1, v2}, Lcom/millennialmedia/NativeAd$ImpressionReporter;-><init>(Lcom/millennialmedia/NativeAd;Landroid/view/View;J)V

    iput-object v0, v6, Lcom/millennialmedia/NativeAd;->impressionReporter:Lcom/millennialmedia/NativeAd$ImpressionReporter;

    invoke-virtual {v0}, Lcom/millennialmedia/NativeAd$ImpressionReporter;->start()V

    :goto_4
    move v3, v8

    goto :goto_5

    :cond_c
    sget-object v0, Lcom/millennialmedia/NativeAd;->TAG:Ljava/lang/String;

    const-string v1, "Layout was not updated because it did not contain the required Views."

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    return v3
.end method

.method private invokeAction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-nez p2, :cond_0

    sget-object p2, Lcom/millennialmedia/NativeAd;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to invoke "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " action, url is null"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object p2, p0, Lcom/millennialmedia/NativeAd;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/Context;

    if-eqz p2, :cond_1

    invoke-static {p2, p1}, Lcom/millennialmedia/internal/utils/Utils;->startActivity(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/millennialmedia/NativeAd;->onAdLeftApplication()V

    :cond_1
    return-void
.end method

.method private isLoading()Z
    .locals 2

    iget-object v0, p0, Lcom/millennialmedia/internal/AdPlacement;->placementState:Ljava/lang/String;

    const-string v1, "idle"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/millennialmedia/internal/AdPlacement;->placementState:Ljava/lang/String;

    const-string v1, "load_failed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/millennialmedia/internal/AdPlacement;->placementState:Ljava/lang/String;

    const-string v1, "loaded"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/millennialmedia/internal/AdPlacement;->placementState:Ljava/lang/String;

    const-string v1, "expired"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/millennialmedia/internal/AdPlacement;->placementState:Ljava/lang/String;

    const-string v1, "destroyed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private loadAdAdapter(Lcom/millennialmedia/internal/AdPlacement$RequestState;)V
    .locals 5

    invoke-virtual {p1}, Lcom/millennialmedia/internal/AdPlacement$RequestState;->copy()Lcom/millennialmedia/internal/AdPlacement$RequestState;

    move-result-object v0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/millennialmedia/internal/AdPlacement;->doPendingDestroy()Z

    move-result v1

    if-eqz v1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/millennialmedia/internal/AdPlacement;->currentRequestState:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    invoke-virtual {v1, v0}, Lcom/millennialmedia/internal/AdPlacement$RequestState;->compareRequest(Lcom/millennialmedia/internal/AdPlacement$RequestState;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/millennialmedia/internal/AdPlacement;->placementState:Ljava/lang/String;

    const-string v2, "play_list_loaded"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/millennialmedia/internal/AdPlacement;->placementState:Ljava/lang/String;

    const-string v2, "ad_adapter_load_failed"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    const-string v1, "loading_ad_adapter"

    iput-object v1, p0, Lcom/millennialmedia/internal/AdPlacement;->placementState:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/millennialmedia/internal/AdPlacement$RequestState;->getItemHash()I

    iput-object v0, p0, Lcom/millennialmedia/internal/AdPlacement;->currentRequestState:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/millennialmedia/internal/AdPlacement;->playList:Lcom/millennialmedia/internal/PlayList;

    invoke-virtual {v1}, Lcom/millennialmedia/internal/PlayList;->hasNext()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lcom/millennialmedia/NativeAd;->TAG:Ljava/lang/String;

    const-string v1, "Unable to find ad adapter in play list"

    invoke-static {p1, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-direct {p0, v0}, Lcom/millennialmedia/NativeAd;->onLoadFailed(Lcom/millennialmedia/internal/AdPlacement$RequestState;)V

    return-void

    :cond_3
    invoke-virtual {p1}, Lcom/millennialmedia/internal/AdPlacement$RequestState;->getAdPlacementReporter()Lcom/millennialmedia/internal/AdPlacementReporter;

    move-result-object p1

    invoke-static {p1}, Lcom/millennialmedia/internal/AdPlacementReporter;->getPlayListItemReporter(Lcom/millennialmedia/internal/AdPlacementReporter;)Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;

    move-result-object p1

    iget-object v1, p0, Lcom/millennialmedia/internal/AdPlacement;->playList:Lcom/millennialmedia/internal/PlayList;

    invoke-virtual {v1, p0, p1}, Lcom/millennialmedia/internal/PlayList;->getNextAdAdapter(Lcom/millennialmedia/internal/AdPlacement;Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;)Lcom/millennialmedia/internal/adadapters/AdAdapter;

    move-result-object v1

    check-cast v1, Lcom/millennialmedia/internal/adadapters/NativeAdapter;

    iput-object v1, p0, Lcom/millennialmedia/NativeAd;->nextNativeAdAdapter:Lcom/millennialmedia/internal/adadapters/NativeAdapter;

    iget-object v1, p0, Lcom/millennialmedia/NativeAd;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Lcom/millennialmedia/NativeAd;->nextNativeAdAdapter:Lcom/millennialmedia/internal/adadapters/NativeAdapter;

    if-eqz v2, :cond_6

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/millennialmedia/NativeAd;->nextNativeAdAdapter:Lcom/millennialmedia/internal/adadapters/NativeAdapter;

    iget v1, v1, Lcom/millennialmedia/internal/adadapters/AdAdapter;->requestTimeout:I

    if-lez v1, :cond_5

    iget-object v2, p0, Lcom/millennialmedia/NativeAd;->adAdapterRequestTimeoutRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    if-eqz v2, :cond_4

    invoke-interface {v2}, Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;->cancel()V

    :cond_4
    new-instance v2, Lcom/millennialmedia/NativeAd$3;

    invoke-direct {v2, p0, v0, p1}, Lcom/millennialmedia/NativeAd$3;-><init>(Lcom/millennialmedia/NativeAd;Lcom/millennialmedia/internal/AdPlacement$RequestState;Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;)V

    int-to-long v3, v1

    invoke-static {v2, v3, v4}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnWorkerThreadDelayed(Ljava/lang/Runnable;J)Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    move-result-object v1

    iput-object v1, p0, Lcom/millennialmedia/NativeAd;->adAdapterRequestTimeoutRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    :cond_5
    iget-object v1, p0, Lcom/millennialmedia/NativeAd;->nextNativeAdAdapter:Lcom/millennialmedia/internal/adadapters/NativeAdapter;

    new-instance v2, Lcom/millennialmedia/NativeAd$4;

    invoke-direct {v2, p0, v0, p1}, Lcom/millennialmedia/NativeAd$4;-><init>(Lcom/millennialmedia/NativeAd;Lcom/millennialmedia/internal/AdPlacement$RequestState;Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;)V

    invoke-virtual {v1, v2}, Lcom/millennialmedia/internal/adadapters/NativeAdapter;->init(Lcom/millennialmedia/internal/adadapters/NativeAdapter$NativeAdapterListener;)V

    goto :goto_0

    :cond_6
    invoke-virtual {v0}, Lcom/millennialmedia/internal/AdPlacement$RequestState;->getAdPlacementReporter()Lcom/millennialmedia/internal/AdPlacementReporter;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/millennialmedia/internal/AdPlacementReporter;->reportPlayListItem(Lcom/millennialmedia/internal/AdPlacementReporter;Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;)V

    invoke-direct {p0, v0}, Lcom/millennialmedia/NativeAd;->onAdAdapterLoadFailed(Lcom/millennialmedia/internal/AdPlacement$RequestState;)V

    :goto_0
    return-void

    :cond_7
    :goto_1
    :try_start_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private loadButtonComponentArray(Ljava/lang/String;Lcom/millennialmedia/NativeAd$ComponentName;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/millennialmedia/NativeAd$ComponentName;",
            "Ljava/util/List<",
            "Lcom/millennialmedia/internal/adadapters/NativeAdapter$TextComponentInfo;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/millennialmedia/NativeAd;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/millennialmedia/internal/adadapters/NativeAdapter$TextComponentInfo;

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    new-instance v4, Landroid/widget/Button;

    invoke-direct {v4, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iget-object v5, v3, Lcom/millennialmedia/internal/adadapters/NativeAdapter$TextComponentInfo;->value:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0, v4, p2, v2, v3}, Lcom/millennialmedia/NativeAd;->setComponentClickListener(Landroid/view/View;Lcom/millennialmedia/NativeAd$ComponentName;ILcom/millennialmedia/internal/adadapters/NativeAdapter$ComponentInfo;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/millennialmedia/NativeAd;->loadedComponents:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private loadComponents(Lcom/millennialmedia/internal/adadapters/NativeAdapter;)Z
    .locals 4

    invoke-virtual {p1}, Lcom/millennialmedia/internal/adadapters/NativeAdapter;->getType()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object p1, Lcom/millennialmedia/NativeAd;->TAG:Ljava/lang/String;

    const-string v0, "Unable to load components, native type is not set"

    :goto_0
    invoke-static {p1, v0}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    iget-object v2, p0, Lcom/millennialmedia/NativeAd;->requestedNativeTypes:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object p1, Lcom/millennialmedia/NativeAd;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to load components, native type <"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "> is not a requested native type"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lcom/millennialmedia/internal/Handshake;->getNativeTypeDefinition(Ljava/lang/String;)Lcom/millennialmedia/internal/Handshake$NativeTypeDefinition;

    move-result-object v2

    iput-object v2, p0, Lcom/millennialmedia/NativeAd;->nativeTypeDefinition:Lcom/millennialmedia/internal/Handshake$NativeTypeDefinition;

    if-nez v2, :cond_2

    sget-object p1, Lcom/millennialmedia/NativeAd;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to load components, unable to find list of required components for native type <"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ">"

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/millennialmedia/internal/adadapters/NativeAdapter;->getTitleList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/millennialmedia/NativeAd;->titleInfoList:Ljava/util/List;

    sget-object v2, Lcom/millennialmedia/NativeAd$ComponentName;->TITLE:Lcom/millennialmedia/NativeAd$ComponentName;

    const-string v3, "title"

    invoke-direct {p0, v3, v2, v1}, Lcom/millennialmedia/NativeAd;->loadTextComponentArray(Ljava/lang/String;Lcom/millennialmedia/NativeAd$ComponentName;Ljava/util/List;)V

    invoke-virtual {p1}, Lcom/millennialmedia/internal/adadapters/NativeAdapter;->getBodyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/millennialmedia/NativeAd;->bodyInfoList:Ljava/util/List;

    sget-object v2, Lcom/millennialmedia/NativeAd$ComponentName;->BODY:Lcom/millennialmedia/NativeAd$ComponentName;

    const-string v3, "body"

    invoke-direct {p0, v3, v2, v1}, Lcom/millennialmedia/NativeAd;->loadTextComponentArray(Ljava/lang/String;Lcom/millennialmedia/NativeAd$ComponentName;Ljava/util/List;)V

    invoke-virtual {p1}, Lcom/millennialmedia/internal/adadapters/NativeAdapter;->getIconImageList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/millennialmedia/NativeAd;->iconImageInfoList:Ljava/util/List;

    sget-object v2, Lcom/millennialmedia/NativeAd$ComponentName;->ICON_IMAGE:Lcom/millennialmedia/NativeAd$ComponentName;

    const-string v3, "iconImage"

    invoke-direct {p0, v3, v2, v1}, Lcom/millennialmedia/NativeAd;->loadImageComponentArray(Ljava/lang/String;Lcom/millennialmedia/NativeAd$ComponentName;Ljava/util/List;)V

    invoke-virtual {p1}, Lcom/millennialmedia/internal/adadapters/NativeAdapter;->getMainImageList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/millennialmedia/NativeAd;->mainImageInfoList:Ljava/util/List;

    sget-object v2, Lcom/millennialmedia/NativeAd$ComponentName;->MAIN_IMAGE:Lcom/millennialmedia/NativeAd$ComponentName;

    const-string v3, "mainImage"

    invoke-direct {p0, v3, v2, v1}, Lcom/millennialmedia/NativeAd;->loadImageComponentArray(Ljava/lang/String;Lcom/millennialmedia/NativeAd$ComponentName;Ljava/util/List;)V

    invoke-virtual {p1}, Lcom/millennialmedia/internal/adadapters/NativeAdapter;->getCallToActionList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/millennialmedia/NativeAd;->callToActionInfoList:Ljava/util/List;

    sget-object v2, Lcom/millennialmedia/NativeAd$ComponentName;->CALL_TO_ACTION:Lcom/millennialmedia/NativeAd$ComponentName;

    const-string v3, "callToAction"

    invoke-direct {p0, v3, v2, v1}, Lcom/millennialmedia/NativeAd;->loadButtonComponentArray(Ljava/lang/String;Lcom/millennialmedia/NativeAd$ComponentName;Ljava/util/List;)V

    invoke-virtual {p1}, Lcom/millennialmedia/internal/adadapters/NativeAdapter;->getRatingList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/millennialmedia/NativeAd;->ratingInfoList:Ljava/util/List;

    sget-object v2, Lcom/millennialmedia/NativeAd$ComponentName;->RATING:Lcom/millennialmedia/NativeAd$ComponentName;

    const-string v3, "rating"

    invoke-direct {p0, v3, v2, v1}, Lcom/millennialmedia/NativeAd;->loadTextComponentArray(Ljava/lang/String;Lcom/millennialmedia/NativeAd$ComponentName;Ljava/util/List;)V

    invoke-virtual {p1}, Lcom/millennialmedia/internal/adadapters/NativeAdapter;->getDisclaimerList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/millennialmedia/NativeAd;->disclaimerInfoList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    new-instance p1, Lcom/millennialmedia/internal/adadapters/NativeAdapter$TextComponentInfo;

    invoke-direct {p1}, Lcom/millennialmedia/internal/adadapters/NativeAdapter$TextComponentInfo;-><init>()V

    const-string v1, "Sponsored"

    iput-object v1, p1, Lcom/millennialmedia/internal/adadapters/NativeAdapter$TextComponentInfo;->value:Ljava/lang/String;

    iget-object v1, p0, Lcom/millennialmedia/NativeAd;->disclaimerInfoList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    sget-object p1, Lcom/millennialmedia/NativeAd$ComponentName;->DISCLAIMER:Lcom/millennialmedia/NativeAd$ComponentName;

    iget-object v1, p0, Lcom/millennialmedia/NativeAd;->disclaimerInfoList:Ljava/util/List;

    const-string v2, "disclaimer"

    invoke-direct {p0, v2, p1, v1}, Lcom/millennialmedia/NativeAd;->loadTextComponentArray(Ljava/lang/String;Lcom/millennialmedia/NativeAd$ComponentName;Ljava/util/List;)V

    invoke-direct {p0, v0}, Lcom/millennialmedia/NativeAd;->validateLoadedComponents(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private loadImageComponentArray(Ljava/lang/String;Lcom/millennialmedia/NativeAd$ComponentName;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/millennialmedia/NativeAd$ComponentName;",
            "Ljava/util/List<",
            "Lcom/millennialmedia/internal/adadapters/NativeAdapter$ImageComponentInfo;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/millennialmedia/NativeAd;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/millennialmedia/internal/adadapters/NativeAdapter$ImageComponentInfo;

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v5, v3, Lcom/millennialmedia/internal/adadapters/NativeAdapter$ImageComponentInfo;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v5, Landroid/widget/ImageView;

    invoke-direct {v5, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0, v5, p2, v2, v3}, Lcom/millennialmedia/NativeAd;->setComponentClickListener(Landroid/view/View;Lcom/millennialmedia/NativeAd$ComponentName;ILcom/millennialmedia/internal/adadapters/NativeAdapter$ComponentInfo;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/millennialmedia/NativeAd;->loadedComponents:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private loadTextComponentArray(Ljava/lang/String;Lcom/millennialmedia/NativeAd$ComponentName;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/millennialmedia/NativeAd$ComponentName;",
            "Ljava/util/List<",
            "Lcom/millennialmedia/internal/adadapters/NativeAdapter$TextComponentInfo;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/millennialmedia/NativeAd;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/millennialmedia/internal/adadapters/NativeAdapter$TextComponentInfo;

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget-object v5, v3, Lcom/millennialmedia/internal/adadapters/NativeAdapter$TextComponentInfo;->value:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0, v4, p2, v2, v3}, Lcom/millennialmedia/NativeAd;->setComponentClickListener(Landroid/view/View;Lcom/millennialmedia/NativeAd$ComponentName;ILcom/millennialmedia/internal/adadapters/NativeAdapter$ComponentInfo;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/millennialmedia/NativeAd;->loadedComponents:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private markComponentAsAccessed(Ljava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lcom/millennialmedia/NativeAd;->accessedComponentIndices:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lcom/millennialmedia/NativeAd;->accessedComponentIndices:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private onAdAdapterLoadFailed(Lcom/millennialmedia/internal/AdPlacement$RequestState;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/millennialmedia/internal/AdPlacement;->currentRequestState:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/internal/AdPlacement$RequestState;->compare(Lcom/millennialmedia/internal/AdPlacement$RequestState;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/millennialmedia/NativeAd;->TAG:Ljava/lang/String;

    const-string v0, "onAdAdapterLoadFailed called but load state is not valid"

    invoke-static {p1, v0}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    iget-object v0, p0, Lcom/millennialmedia/internal/AdPlacement;->placementState:Ljava/lang/String;

    const-string v1, "loading_ad_adapter"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lcom/millennialmedia/NativeAd;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAdAdapterLoadFailed called but placement state is not valid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/millennialmedia/internal/AdPlacement;->placementState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    monitor-exit p0

    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/millennialmedia/internal/AdPlacement;->doPendingDestroy()Z

    move-result v0

    if-eqz v0, :cond_4

    monitor-exit p0

    return-void

    :cond_4
    const-string v0, "ad_adapter_load_failed"

    iput-object v0, p0, Lcom/millennialmedia/internal/AdPlacement;->placementState:Ljava/lang/String;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0, p1}, Lcom/millennialmedia/NativeAd;->loadAdAdapter(Lcom/millennialmedia/internal/AdPlacement$RequestState;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private onAdLeftApplication()V
    .locals 2

    sget-object v0, Lcom/millennialmedia/NativeAd;->TAG:Ljava/lang/String;

    const-string v1, "Ad left application"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/millennialmedia/NativeAd;->nativeListener:Lcom/millennialmedia/NativeAd$NativeListener;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/millennialmedia/NativeAd$8;

    invoke-direct {v1, p0, v0}, Lcom/millennialmedia/NativeAd$8;-><init>(Lcom/millennialmedia/NativeAd;Lcom/millennialmedia/NativeAd$NativeListener;)V

    invoke-static {v1}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOffUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private onExpired(Lcom/millennialmedia/internal/AdPlacement$RequestState;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/millennialmedia/internal/AdPlacement;->currentRequestState:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/internal/AdPlacement$RequestState;->compare(Lcom/millennialmedia/internal/AdPlacement$RequestState;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/millennialmedia/NativeAd;->TAG:Ljava/lang/String;

    const-string v0, "onExpired called but load state is not valid"

    invoke-static {p1, v0}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    iget-object p1, p0, Lcom/millennialmedia/internal/AdPlacement;->placementState:Ljava/lang/String;

    const-string v0, "loaded"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lcom/millennialmedia/NativeAd;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onExpired called but placement state is not valid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/millennialmedia/internal/AdPlacement;->placementState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    monitor-exit p0

    return-void

    :cond_3
    const-string p1, "expired"

    iput-object p1, p0, Lcom/millennialmedia/internal/AdPlacement;->placementState:Ljava/lang/String;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object p1, Lcom/millennialmedia/NativeAd;->TAG:Ljava/lang/String;

    const-string v0, "Ad expired"

    invoke-static {p1, v0}, Lcom/millennialmedia/MMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/millennialmedia/NativeAd;->nativeListener:Lcom/millennialmedia/NativeAd$NativeListener;

    if-eqz p1, :cond_4

    new-instance v0, Lcom/millennialmedia/NativeAd$9;

    invoke-direct {v0, p0, p1}, Lcom/millennialmedia/NativeAd$9;-><init>(Lcom/millennialmedia/NativeAd;Lcom/millennialmedia/NativeAd$NativeListener;)V

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOffUiThread(Ljava/lang/Runnable;)V

    :cond_4
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private onLoadFailed(Lcom/millennialmedia/internal/AdPlacement$RequestState;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/millennialmedia/internal/AdPlacement;->doPendingDestroy()Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/internal/AdPlacement;->currentRequestState:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/internal/AdPlacement$RequestState;->compareRequest(Lcom/millennialmedia/internal/AdPlacement$RequestState;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/millennialmedia/NativeAd;->TAG:Ljava/lang/String;

    const-string v0, "onLoadFailed called but load state is not valid"

    invoke-static {p1, v0}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    monitor-exit p0

    return-void

    :cond_2
    iget-object v0, p0, Lcom/millennialmedia/internal/AdPlacement;->placementState:Ljava/lang/String;

    const-string v1, "loading_ad_adapter"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/millennialmedia/internal/AdPlacement;->placementState:Ljava/lang/String;

    const-string v1, "loading_play_list"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p1, Lcom/millennialmedia/NativeAd;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLoadFailed called but placement state is not valid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/millennialmedia/internal/AdPlacement;->placementState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    monitor-exit p0

    return-void

    :cond_4
    const-string v0, "load_failed"

    iput-object v0, p0, Lcom/millennialmedia/internal/AdPlacement;->placementState:Ljava/lang/String;

    sget-object v0, Lcom/millennialmedia/NativeAd;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Load failed for placement ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/millennialmedia/internal/AdPlacement;->placementId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". If this warning persists please check your placement configuration."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/millennialmedia/NativeAd;->stopRequestTimeoutTimers()V

    invoke-virtual {p1}, Lcom/millennialmedia/internal/AdPlacement$RequestState;->getAdPlacementReporter()Lcom/millennialmedia/internal/AdPlacementReporter;

    move-result-object p1

    invoke-static {p1}, Lcom/millennialmedia/internal/AdPlacementReporter;->reportPlayList(Lcom/millennialmedia/internal/AdPlacementReporter;)V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/millennialmedia/NativeAd;->nativeListener:Lcom/millennialmedia/NativeAd$NativeListener;

    if-eqz p1, :cond_5

    new-instance v0, Lcom/millennialmedia/NativeAd$7;

    invoke-direct {v0, p0, p1}, Lcom/millennialmedia/NativeAd$7;-><init>(Lcom/millennialmedia/NativeAd;Lcom/millennialmedia/NativeAd$NativeListener;)V

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOffUiThread(Ljava/lang/Runnable;)V

    :cond_5
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private onLoadSucceeded(Lcom/millennialmedia/internal/AdPlacement$RequestState;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/millennialmedia/internal/AdPlacement;->currentRequestState:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/internal/AdPlacement$RequestState;->compare(Lcom/millennialmedia/internal/AdPlacement$RequestState;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/millennialmedia/NativeAd;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLoadSucceeded called but load state is not valid; current = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/millennialmedia/internal/AdPlacement;->currentRequestState:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", caller = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    iget-object v0, p0, Lcom/millennialmedia/internal/AdPlacement;->placementState:Ljava/lang/String;

    const-string v1, "loading_ad_adapter"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lcom/millennialmedia/NativeAd;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLoadSucceeded called but placement state is not valid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/millennialmedia/internal/AdPlacement;->placementState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    monitor-exit p0

    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/millennialmedia/internal/AdPlacement;->doPendingDestroy()Z

    move-result v0

    if-eqz v0, :cond_4

    monitor-exit p0

    return-void

    :cond_4
    const-string v0, "loaded"

    iput-object v0, p0, Lcom/millennialmedia/internal/AdPlacement;->placementState:Ljava/lang/String;

    sget-object v0, Lcom/millennialmedia/NativeAd;->TAG:Ljava/lang/String;

    const-string v1, "Load succeeded"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/millennialmedia/NativeAd;->stopRequestTimeoutTimers()V

    invoke-direct {p0, p1}, Lcom/millennialmedia/NativeAd;->startExpirationTimer(Lcom/millennialmedia/internal/AdPlacement$RequestState;)V

    invoke-virtual {p1}, Lcom/millennialmedia/internal/AdPlacement$RequestState;->getAdPlacementReporter()Lcom/millennialmedia/internal/AdPlacementReporter;

    move-result-object p1

    invoke-static {p1}, Lcom/millennialmedia/internal/AdPlacementReporter;->reportPlayList(Lcom/millennialmedia/internal/AdPlacementReporter;)V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/millennialmedia/NativeAd;->currentNativeAdAdapter:Lcom/millennialmedia/internal/adadapters/NativeAdapter;

    instance-of p1, p1, Lcom/millennialmedia/internal/adadapters/NativeMediatedAdAdapter;

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/millennialmedia/NativeAd;->currentNativeAdAdapter:Lcom/millennialmedia/internal/adadapters/NativeAdapter;

    check-cast p1, Lcom/millennialmedia/internal/adadapters/NativeMediatedAdAdapter;

    invoke-virtual {p1, p0}, Lcom/millennialmedia/internal/adadapters/NativeMediatedAdAdapter;->onAdLoaded(Lcom/millennialmedia/NativeAd;)V

    :cond_5
    iget-object p1, p0, Lcom/millennialmedia/NativeAd;->nativeListener:Lcom/millennialmedia/NativeAd$NativeListener;

    if-eqz p1, :cond_6

    new-instance v0, Lcom/millennialmedia/NativeAd$6;

    invoke-direct {v0, p0, p1}, Lcom/millennialmedia/NativeAd$6;-><init>(Lcom/millennialmedia/NativeAd;Lcom/millennialmedia/NativeAd$NativeListener;)V

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOffUiThread(Ljava/lang/Runnable;)V

    :cond_6
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private releaseAdapters()V
    .locals 2

    iget-object v0, p0, Lcom/millennialmedia/NativeAd;->currentNativeAdAdapter:Lcom/millennialmedia/internal/adadapters/NativeAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/NativeAd;->currentNativeAdAdapter:Lcom/millennialmedia/internal/adadapters/NativeAdapter;

    invoke-virtual {v0}, Lcom/millennialmedia/internal/adadapters/AdAdapter;->release()V

    iput-object v1, p0, Lcom/millennialmedia/NativeAd;->currentNativeAdAdapter:Lcom/millennialmedia/internal/adadapters/NativeAdapter;

    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/NativeAd;->nextNativeAdAdapter:Lcom/millennialmedia/internal/adadapters/NativeAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/millennialmedia/NativeAd;->nextNativeAdAdapter:Lcom/millennialmedia/internal/adadapters/NativeAdapter;

    invoke-virtual {v0}, Lcom/millennialmedia/internal/adadapters/AdAdapter;->release()V

    iput-object v1, p0, Lcom/millennialmedia/NativeAd;->nextNativeAdAdapter:Lcom/millennialmedia/internal/adadapters/NativeAdapter;

    :cond_1
    return-void
.end method

.method private reportClick(Lcom/millennialmedia/internal/AdPlacementReporter;Lcom/millennialmedia/internal/adadapters/NativeAdapter$ComponentInfo;)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/millennialmedia/NativeAd;->reportImpression(Lcom/millennialmedia/internal/AdPlacementReporter;I)V

    invoke-static {p1}, Lcom/millennialmedia/internal/AdPlacementReporter;->setClicked(Lcom/millennialmedia/internal/AdPlacementReporter;)V

    if-eqz p2, :cond_0

    iget-object p1, p2, Lcom/millennialmedia/internal/adadapters/NativeAdapter$ComponentInfo;->clickTrackerUrls:Ljava/util/List;

    if-nez p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/millennialmedia/NativeAd;->currentNativeAdAdapter:Lcom/millennialmedia/internal/adadapters/NativeAdapter;

    invoke-virtual {p1}, Lcom/millennialmedia/internal/adadapters/NativeAdapter;->getClickTrackers()Ljava/util/List;

    move-result-object p1

    :cond_1
    const-string p2, "click tracker"

    invoke-static {p1, p2}, Lcom/millennialmedia/internal/utils/TrackingEvent;->fireUrls(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method private reportImpression(Lcom/millennialmedia/internal/AdPlacementReporter;I)V
    .locals 1

    iget-boolean v0, p0, Lcom/millennialmedia/NativeAd;->impressionReported:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/millennialmedia/NativeAd;->impressionReported:Z

    invoke-static {p1, p2}, Lcom/millennialmedia/internal/AdPlacementReporter;->setDisplayed(Lcom/millennialmedia/internal/AdPlacementReporter;I)V

    iget-object p1, p0, Lcom/millennialmedia/NativeAd;->currentNativeAdAdapter:Lcom/millennialmedia/internal/adadapters/NativeAdapter;

    invoke-virtual {p1}, Lcom/millennialmedia/internal/adadapters/NativeAdapter;->getImpressionTrackers()Ljava/util/List;

    move-result-object p1

    const-string p2, "impression tracker"

    invoke-static {p1, p2}, Lcom/millennialmedia/internal/utils/TrackingEvent;->fireUrls(Ljava/util/List;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/millennialmedia/NativeAd;->stopExpirationTimer()V

    :cond_0
    return-void
.end method

.method private setComponentClickListener(Landroid/view/View;Lcom/millennialmedia/NativeAd$ComponentName;ILcom/millennialmedia/internal/adadapters/NativeAdapter$ComponentInfo;)V
    .locals 7

    iget-object v0, p0, Lcom/millennialmedia/internal/AdPlacement;->currentRequestState:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    invoke-virtual {v0}, Lcom/millennialmedia/internal/AdPlacement$RequestState;->getAdPlacementReporter()Lcom/millennialmedia/internal/AdPlacementReporter;

    move-result-object v3

    new-instance v0, Lcom/millennialmedia/NativeAd$5;

    move-object v1, v0

    move-object v2, p0

    move-object v4, p4

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/millennialmedia/NativeAd$5;-><init>(Lcom/millennialmedia/NativeAd;Lcom/millennialmedia/internal/AdPlacementReporter;Lcom/millennialmedia/internal/adadapters/NativeAdapter$ComponentInfo;Lcom/millennialmedia/NativeAd$ComponentName;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setCurrentAdAdapter(Lcom/millennialmedia/internal/adadapters/NativeAdapter;)V
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/NativeAd;->currentNativeAdAdapter:Lcom/millennialmedia/internal/adadapters/NativeAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/NativeAd;->currentNativeAdAdapter:Lcom/millennialmedia/internal/adadapters/NativeAdapter;

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/NativeAd;->currentNativeAdAdapter:Lcom/millennialmedia/internal/adadapters/NativeAdapter;

    invoke-virtual {v0}, Lcom/millennialmedia/internal/adadapters/AdAdapter;->release()V

    :cond_0
    iput-object p1, p0, Lcom/millennialmedia/NativeAd;->currentNativeAdAdapter:Lcom/millennialmedia/internal/adadapters/NativeAdapter;

    return-void
.end method

.method private startExpirationTimer(Lcom/millennialmedia/internal/AdPlacement$RequestState;)V
    .locals 4

    invoke-direct {p0}, Lcom/millennialmedia/NativeAd;->stopExpirationTimer()V

    invoke-static {}, Lcom/millennialmedia/internal/Handshake;->getNativeExpirationDuration()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v1, Lcom/millennialmedia/NativeAd$ExpirationRunnable;

    invoke-direct {v1, p0, p1}, Lcom/millennialmedia/NativeAd$ExpirationRunnable;-><init>(Lcom/millennialmedia/NativeAd;Lcom/millennialmedia/internal/AdPlacement$RequestState;)V

    int-to-long v2, v0

    invoke-static {v1, v2, v3}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnWorkerThreadDelayed(Ljava/lang/Runnable;J)Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    move-result-object p1

    iput-object p1, p0, Lcom/millennialmedia/NativeAd;->expirationRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    :cond_0
    return-void
.end method

.method private stopExpirationTimer()V
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/NativeAd;->expirationRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/millennialmedia/NativeAd;->expirationRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    :cond_0
    return-void
.end method

.method private stopRequestTimeoutTimers()V
    .locals 2

    iget-object v0, p0, Lcom/millennialmedia/NativeAd;->placementRequestTimeoutRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;->cancel()V

    iput-object v1, p0, Lcom/millennialmedia/NativeAd;->placementRequestTimeoutRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/NativeAd;->adAdapterRequestTimeoutRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;->cancel()V

    iput-object v1, p0, Lcom/millennialmedia/NativeAd;->adAdapterRequestTimeoutRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    :cond_1
    return-void
.end method

.method private validateLoadedComponents(Ljava/lang/String;)Z
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/millennialmedia/NativeAd;->nativeTypeDefinition:Lcom/millennialmedia/internal/Handshake$NativeTypeDefinition;

    iget-object v1, v1, Lcom/millennialmedia/internal/Handshake$NativeTypeDefinition;->componentDefinitions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/millennialmedia/internal/Handshake$NativeTypeDefinition$ComponentDefinition;

    if-eqz v2, :cond_2

    iget v3, v2, Lcom/millennialmedia/internal/Handshake$NativeTypeDefinition$ComponentDefinition;->adverstiserRequired:I

    iget-object v4, p0, Lcom/millennialmedia/NativeAd;->loadedComponents:Ljava/util/Map;

    iget-object v5, v2, Lcom/millennialmedia/internal/Handshake$NativeTypeDefinition$ComponentDefinition;->componentId:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v4, v3, :cond_0

    :cond_1
    iget-object v2, v2, Lcom/millennialmedia/internal/Handshake$NativeTypeDefinition$ComponentDefinition;->componentId:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/millennialmedia/NativeAd;->TAG:Ljava/lang/String;

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p1, v1, v4

    const-string p1, "Missing configuration data for native type: %s."

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    sget-object v1, Lcom/millennialmedia/NativeAd;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to load required components <"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-static {v3, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "> for native type <"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ">"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :cond_4
    return v3
.end method

.method private validateRequiredComponentAccess()V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/millennialmedia/NativeAd;->nativeTypeDefinition:Lcom/millennialmedia/internal/Handshake$NativeTypeDefinition;

    iget-object v1, v1, Lcom/millennialmedia/internal/Handshake$NativeTypeDefinition;->componentDefinitions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/millennialmedia/internal/Handshake$NativeTypeDefinition$ComponentDefinition;

    iget-object v3, p0, Lcom/millennialmedia/NativeAd;->accessedComponentIndices:Ljava/util/Map;

    iget-object v4, v2, Lcom/millennialmedia/internal/Handshake$NativeTypeDefinition$ComponentDefinition;->componentId:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    iget v5, v2, Lcom/millennialmedia/internal/Handshake$NativeTypeDefinition$ComponentDefinition;->publisherRequired:I

    if-ge v3, v5, :cond_0

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v2, v2, Lcom/millennialmedia/internal/Handshake$NativeTypeDefinition$ComponentDefinition;->componentId:Ljava/lang/String;

    aput-object v2, v6, v4

    const/4 v2, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v6, v2

    const/4 v2, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v2

    const-string v2, "Component: %s, required: %d, accessed: %d"

    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    return-void

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to validate that all required native components have been accessed:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/millennialmedia/NativeAd;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/millennialmedia/MMException;

    invoke-direct {v1, v0}, Lcom/millennialmedia/MMException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public canDestroyNow()Z
    .locals 1

    invoke-direct {p0}, Lcom/millennialmedia/NativeAd;->isLoading()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public fireCallToActionClicked()V
    .locals 2

    invoke-virtual {p0}, Lcom/millennialmedia/internal/AdPlacement;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/millennialmedia/NativeAd$ComponentName;->CALL_TO_ACTION:Lcom/millennialmedia/NativeAd$ComponentName;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/millennialmedia/NativeAd;->getComponentInfo(Lcom/millennialmedia/NativeAd$ComponentName;I)Lcom/millennialmedia/internal/adadapters/NativeAdapter$ComponentInfo;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/millennialmedia/NativeAd;->TAG:Ljava/lang/String;

    const-string v1, "Unable to fire clicked, found component info is null"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/millennialmedia/internal/AdPlacement;->currentRequestState:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    invoke-virtual {v1}, Lcom/millennialmedia/internal/AdPlacement$RequestState;->getAdPlacementReporter()Lcom/millennialmedia/internal/AdPlacementReporter;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/millennialmedia/NativeAd;->reportClick(Lcom/millennialmedia/internal/AdPlacementReporter;Lcom/millennialmedia/internal/adadapters/NativeAdapter$ComponentInfo;)V

    return-void
.end method

.method public fireImpression()V
    .locals 2

    invoke-virtual {p0}, Lcom/millennialmedia/internal/AdPlacement;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/millennialmedia/NativeAd;->isReady()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/millennialmedia/NativeAd;->TAG:Ljava/lang/String;

    const-string v1, "Native ad is not in a loaded state, you must load before showing"

    invoke-static {v0, v1}, Lcom/millennialmedia/internal/utils/Utils;->logAndFireMMException(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/millennialmedia/NativeAd;->usingManagedLayout:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/millennialmedia/NativeAd;->TAG:Ljava/lang/String;

    const-string v1, "Impression firing is disabled when using a managed layout."

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-direct {p0}, Lcom/millennialmedia/NativeAd;->validateRequiredComponentAccess()V

    sget-object v0, Lcom/millennialmedia/NativeAd;->TAG:Ljava/lang/String;

    const-string v1, "All required components have been accessed, firing impression"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/millennialmedia/internal/AdPlacement;->currentRequestState:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    invoke-virtual {v0}, Lcom/millennialmedia/internal/AdPlacement$RequestState;->getAdPlacementReporter()Lcom/millennialmedia/internal/AdPlacementReporter;

    move-result-object v0

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/millennialmedia/NativeAd;->reportImpression(Lcom/millennialmedia/internal/AdPlacementReporter;I)V

    return-void
.end method

.method public getAdPlacementMetaDataMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/millennialmedia/NativeAd;->nativeAdMetadata:Lcom/millennialmedia/NativeAd$NativeAdMetadata;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0, p0}, Lcom/millennialmedia/NativeAd$NativeAdMetadata;->toMap(Lcom/millennialmedia/NativeAd;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getBody()Landroid/widget/TextView;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/millennialmedia/NativeAd;->getBody(I)Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method public getBody(I)Landroid/widget/TextView;
    .locals 2

    invoke-virtual {p0}, Lcom/millennialmedia/internal/AdPlacement;->isDestroyed()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/millennialmedia/NativeAd;->isReady()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p1, Lcom/millennialmedia/NativeAd;->TAG:Ljava/lang/String;

    const-string v0, "Unable to get body, ad not loaded"

    invoke-static {p1, v0}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_1
    const-string v0, "body"

    invoke-direct {p0, p1, v0, v0}, Lcom/millennialmedia/NativeAd;->getComponentInstance(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    return-object p1
.end method

.method public getCallToActionButton()Landroid/widget/Button;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/millennialmedia/NativeAd;->getCallToActionButton(I)Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method public getCallToActionButton(I)Landroid/widget/Button;
    .locals 2

    invoke-virtual {p0}, Lcom/millennialmedia/internal/AdPlacement;->isDestroyed()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/millennialmedia/NativeAd;->isReady()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p1, Lcom/millennialmedia/NativeAd;->TAG:Ljava/lang/String;

    const-string v0, "Unable to get call to action button, ad not loaded"

    invoke-static {p1, v0}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_1
    const-string v0, "callToAction"

    const-string v1, "call to action"

    invoke-direct {p0, p1, v0, v1}, Lcom/millennialmedia/NativeAd;->getComponentInstance(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    return-object p1
.end method

.method public getCallToActionUrl()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/millennialmedia/internal/AdPlacement;->isDestroyed()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    sget-object v0, Lcom/millennialmedia/NativeAd$ComponentName;->CALL_TO_ACTION:Lcom/millennialmedia/NativeAd$ComponentName;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lcom/millennialmedia/NativeAd;->getComponentInfo(Lcom/millennialmedia/NativeAd$ComponentName;I)Lcom/millennialmedia/internal/adadapters/NativeAdapter$ComponentInfo;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/millennialmedia/NativeAd;->TAG:Ljava/lang/String;

    const-string v2, "Unable to get call to action url, found component info is not for a call to action component"

    invoke-static {v0, v2}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_1
    iget-object v0, v0, Lcom/millennialmedia/internal/adadapters/NativeAdapter$ComponentInfo;->clickUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/NativeAd;->contextRef:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    return-object v0
.end method

.method public getCreativeInfo()Lcom/millennialmedia/CreativeInfo;
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/NativeAd;->currentNativeAdAdapter:Lcom/millennialmedia/internal/adadapters/NativeAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/NativeAd;->currentNativeAdAdapter:Lcom/millennialmedia/internal/adadapters/NativeAdapter;

    invoke-virtual {v0}, Lcom/millennialmedia/internal/adadapters/AdAdapter;->getCreativeInfo()Lcom/millennialmedia/CreativeInfo;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getDisclaimer()Landroid/widget/TextView;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/millennialmedia/NativeAd;->getDisclaimer(I)Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method public getDisclaimer(I)Landroid/widget/TextView;
    .locals 2

    invoke-virtual {p0}, Lcom/millennialmedia/internal/AdPlacement;->isDestroyed()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/millennialmedia/NativeAd;->isReady()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p1, Lcom/millennialmedia/NativeAd;->TAG:Ljava/lang/String;

    const-string v0, "Unable to get disclaimer, ad not loaded"

    invoke-static {p1, v0}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_1
    const-string v0, "disclaimer"

    invoke-direct {p0, p1, v0, v0}, Lcom/millennialmedia/NativeAd;->getComponentInstance(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    return-object p1
.end method

.method public getIconImage()Landroid/widget/ImageView;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/millennialmedia/NativeAd;->getIconImage(I)Landroid/widget/ImageView;

    move-result-object v0

    return-object v0
.end method

.method public getIconImage(I)Landroid/widget/ImageView;
    .locals 2

    invoke-virtual {p0}, Lcom/millennialmedia/internal/AdPlacement;->isDestroyed()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/millennialmedia/NativeAd;->isReady()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p1, Lcom/millennialmedia/NativeAd;->TAG:Ljava/lang/String;

    const-string v0, "Unable to get icon image, ad not loaded"

    invoke-static {p1, v0}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_1
    const-string v0, "iconImage"

    const-string v1, "icon image"

    invoke-direct {p0, p1, v0, v1}, Lcom/millennialmedia/NativeAd;->getComponentInstance(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    return-object p1
.end method

.method public getImageUrl(Lcom/millennialmedia/NativeAd$ComponentName;I)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/millennialmedia/internal/AdPlacement;->isDestroyed()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/millennialmedia/NativeAd;->getComponentInfo(Lcom/millennialmedia/NativeAd$ComponentName;I)Lcom/millennialmedia/internal/adadapters/NativeAdapter$ComponentInfo;

    move-result-object p1

    instance-of p2, p1, Lcom/millennialmedia/internal/adadapters/NativeAdapter$ImageComponentInfo;

    if-nez p2, :cond_1

    sget-object p1, Lcom/millennialmedia/NativeAd;->TAG:Ljava/lang/String;

    const-string p2, "Unable to get image url, found component info is not for a image component"

    invoke-static {p1, p2}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_1
    check-cast p1, Lcom/millennialmedia/internal/adadapters/NativeAdapter$ImageComponentInfo;

    iget-object p1, p1, Lcom/millennialmedia/internal/adadapters/NativeAdapter$ImageComponentInfo;->bitmapUrl:Ljava/lang/String;

    return-object p1
.end method

.method public getMainImage()Landroid/widget/ImageView;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/millennialmedia/NativeAd;->getMainImage(I)Landroid/widget/ImageView;

    move-result-object v0

    return-object v0
.end method

.method public getMainImage(I)Landroid/widget/ImageView;
    .locals 2

    invoke-virtual {p0}, Lcom/millennialmedia/internal/AdPlacement;->isDestroyed()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/millennialmedia/NativeAd;->isReady()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p1, Lcom/millennialmedia/NativeAd;->TAG:Ljava/lang/String;

    const-string v0, "Unable to get main image, ad not loaded"

    invoke-static {p1, v0}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_1
    const-string v0, "mainImage"

    const-string v1, "main image"

    invoke-direct {p0, p1, v0, v1}, Lcom/millennialmedia/NativeAd;->getComponentInstance(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    return-object p1
.end method

.method public getNativeType()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/millennialmedia/internal/AdPlacement;->isDestroyed()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/millennialmedia/NativeAd;->isReady()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/millennialmedia/NativeAd;->TAG:Ljava/lang/String;

    const-string v2, "Unable to get native type, ad not loaded"

    invoke-static {v0, v2}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_1
    iget-object v0, p0, Lcom/millennialmedia/NativeAd;->currentNativeAdAdapter:Lcom/millennialmedia/internal/adadapters/NativeAdapter;

    if-nez v0, :cond_2

    return-object v1

    :cond_2
    iget-object v0, p0, Lcom/millennialmedia/NativeAd;->nativeTypeDefinition:Lcom/millennialmedia/internal/Handshake$NativeTypeDefinition;

    iget-object v0, v0, Lcom/millennialmedia/internal/Handshake$NativeTypeDefinition;->typeName:Ljava/lang/String;

    return-object v0
.end method

.method public getRating()Landroid/widget/TextView;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/millennialmedia/NativeAd;->getRating(I)Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method public getRating(I)Landroid/widget/TextView;
    .locals 2

    invoke-virtual {p0}, Lcom/millennialmedia/internal/AdPlacement;->isDestroyed()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/millennialmedia/NativeAd;->isReady()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p1, Lcom/millennialmedia/NativeAd;->TAG:Ljava/lang/String;

    const-string v0, "Unable to get rating, ad not loaded"

    invoke-static {p1, v0}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_1
    const-string v0, "rating"

    invoke-direct {p0, p1, v0, v0}, Lcom/millennialmedia/NativeAd;->getComponentInstance(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    return-object p1
.end method

.method public getTitle()Landroid/widget/TextView;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/millennialmedia/NativeAd;->getTitle(I)Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method public getTitle(I)Landroid/widget/TextView;
    .locals 2

    invoke-virtual {p0}, Lcom/millennialmedia/internal/AdPlacement;->isDestroyed()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/millennialmedia/NativeAd;->isReady()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p1, Lcom/millennialmedia/NativeAd;->TAG:Ljava/lang/String;

    const-string v0, "Unable to get title, ad not loaded"

    invoke-static {p1, v0}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_1
    const-string v0, "title"

    invoke-direct {p0, p1, v0, v0}, Lcom/millennialmedia/NativeAd;->getComponentInstance(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    return-object p1
.end method

.method public hasExpired()Z
    .locals 2

    invoke-virtual {p0}, Lcom/millennialmedia/internal/AdPlacement;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/internal/AdPlacement;->placementState:Ljava/lang/String;

    const-string v1, "expired"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public inflateLayout(Landroid/content/Context;[I)Landroid/view/View;
    .locals 6

    invoke-virtual {p0}, Lcom/millennialmedia/internal/AdPlacement;->isDestroyed()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    invoke-static {}, Lcom/millennialmedia/internal/utils/ThreadUtils;->isUiThread()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p1, Lcom/millennialmedia/NativeAd;->TAG:Ljava/lang/String;

    const-string p2, "NativeAd.inflateLayout must be called on the UI thread."

    :goto_0
    invoke-static {p1, p2}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_1
    if-nez p1, :cond_2

    sget-object p1, Lcom/millennialmedia/NativeAd;->TAG:Ljava/lang/String;

    const-string p2, "Unable to inflate a layout because the provided Context is null."

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_8

    array-length v0, p2

    if-nez v0, :cond_3

    goto :goto_4

    :cond_3
    invoke-virtual {p0}, Lcom/millennialmedia/NativeAd;->isReady()Z

    move-result v0

    if-nez v0, :cond_4

    sget-object p1, Lcom/millennialmedia/NativeAd;->TAG:Ljava/lang/String;

    const-string p2, "Cannot inflate a layout. The NativeAd is not loaded."

    goto :goto_0

    :cond_4
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_1
    array-length v3, p2

    if-ge v2, v3, :cond_7

    aget v3, p2, v2

    invoke-virtual {p1, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    array-length v4, p2

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    if-ge v2, v4, :cond_5

    goto :goto_2

    :cond_5
    const/4 v5, 0x0

    :goto_2
    invoke-direct {p0, v3, v5, v0}, Lcom/millennialmedia/NativeAd;->internalUpdateLayout(Landroid/view/View;ZZ)Z

    move-result v4

    if-eqz v4, :cond_6

    move-object v1, v3

    goto :goto_3

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_7
    :goto_3
    return-object v1

    :cond_8
    :goto_4
    sget-object p1, Lcom/millennialmedia/NativeAd;->TAG:Ljava/lang/String;

    const-string p2, "Unable to inflate a layout because the layoutIds are null or empty."

    goto :goto_0
.end method

.method public invokeDefaultAction()V
    .locals 2

    invoke-virtual {p0}, Lcom/millennialmedia/internal/AdPlacement;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/millennialmedia/NativeAd;->isReady()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/millennialmedia/NativeAd;->TAG:Ljava/lang/String;

    const-string v1, "Unable to invoke default action, ad not loaded"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/millennialmedia/NativeAd;->currentNativeAdAdapter:Lcom/millennialmedia/internal/adadapters/NativeAdapter;

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/millennialmedia/internal/AdPlacement;->currentRequestState:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    invoke-virtual {v0}, Lcom/millennialmedia/internal/AdPlacement$RequestState;->getAdPlacementReporter()Lcom/millennialmedia/internal/AdPlacementReporter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/millennialmedia/NativeAd;->reportClick(Lcom/millennialmedia/internal/AdPlacementReporter;Lcom/millennialmedia/internal/adadapters/NativeAdapter$ComponentInfo;)V

    iget-object v0, p0, Lcom/millennialmedia/NativeAd;->currentNativeAdAdapter:Lcom/millennialmedia/internal/adadapters/NativeAdapter;

    invoke-virtual {v0}, Lcom/millennialmedia/internal/adadapters/NativeAdapter;->getDefaultAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "default"

    invoke-direct {p0, v1, v0}, Lcom/millennialmedia/NativeAd;->invokeAction(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public isReady()Z
    .locals 2

    invoke-virtual {p0}, Lcom/millennialmedia/internal/AdPlacement;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/internal/AdPlacement;->placementState:Ljava/lang/String;

    const-string v1, "loaded"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public load(Landroid/content/Context;Lcom/millennialmedia/NativeAd$NativeAdMetadata;)V
    .locals 4

    invoke-virtual {p0}, Lcom/millennialmedia/internal/AdPlacement;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/millennialmedia/NativeAd;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loading playlist for placement ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/millennialmedia/internal/AdPlacement;->placementId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_4

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/millennialmedia/NativeAd;->contextRef:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/millennialmedia/NativeAd;->nativeAdMetadata:Lcom/millennialmedia/NativeAd$NativeAdMetadata;

    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Lcom/millennialmedia/internal/AdPlacement;->placementState:Ljava/lang/String;

    const-string v0, "idle"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/millennialmedia/internal/AdPlacement;->placementState:Ljava/lang/String;

    const-string v0, "load_failed"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/millennialmedia/internal/AdPlacement;->placementState:Ljava/lang/String;

    const-string v0, "loaded"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/millennialmedia/internal/AdPlacement;->placementState:Ljava/lang/String;

    const-string v0, "expired"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    const-string p1, "loading_play_list"

    iput-object p1, p0, Lcom/millennialmedia/internal/AdPlacement;->placementState:Ljava/lang/String;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/millennialmedia/internal/AdPlacement;->playList:Lcom/millennialmedia/internal/PlayList;

    iget-object p1, p0, Lcom/millennialmedia/NativeAd;->accessedComponentIndices:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    iget-object p1, p0, Lcom/millennialmedia/NativeAd;->loadedComponents:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/millennialmedia/NativeAd;->usingManagedLayout:Z

    if-nez p2, :cond_2

    new-instance p2, Lcom/millennialmedia/NativeAd$NativeAdMetadata;

    invoke-direct {p2}, Lcom/millennialmedia/NativeAd$NativeAdMetadata;-><init>()V

    :cond_2
    invoke-virtual {p0}, Lcom/millennialmedia/internal/AdPlacement;->getRequestState()Lcom/millennialmedia/internal/AdPlacement$RequestState;

    move-result-object p1

    iget-object v0, p0, Lcom/millennialmedia/NativeAd;->placementRequestTimeoutRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;->cancel()V

    :cond_3
    invoke-static {}, Lcom/millennialmedia/internal/Handshake;->getNativeTimeout()I

    move-result v0

    new-instance v1, Lcom/millennialmedia/NativeAd$1;

    invoke-direct {v1, p0, p1}, Lcom/millennialmedia/NativeAd$1;-><init>(Lcom/millennialmedia/NativeAd;Lcom/millennialmedia/internal/AdPlacement$RequestState;)V

    int-to-long v2, v0

    invoke-static {v1, v2, v3}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnWorkerThreadDelayed(Ljava/lang/Runnable;J)Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    move-result-object v1

    iput-object v1, p0, Lcom/millennialmedia/NativeAd;->placementRequestTimeoutRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    invoke-virtual {p2}, Lcom/millennialmedia/internal/AdPlacementMetadata;->getImpressionGroup()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, p0}, Lcom/millennialmedia/NativeAd$NativeAdMetadata;->toMap(Lcom/millennialmedia/NativeAd;)Ljava/util/Map;

    move-result-object p2

    new-instance v2, Lcom/millennialmedia/NativeAd$2;

    invoke-direct {v2, p0, p1, v1}, Lcom/millennialmedia/NativeAd$2;-><init>(Lcom/millennialmedia/NativeAd;Lcom/millennialmedia/internal/AdPlacement$RequestState;Ljava/lang/String;)V

    invoke-static {p2, v2, v0}, Lcom/millennialmedia/internal/playlistserver/PlayListServer;->loadPlayList(Ljava/util/Map;Lcom/millennialmedia/internal/playlistserver/PlayListServer$PlayListLoadListener;I)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_4
    new-instance p1, Lcom/millennialmedia/MMException;

    const-string p2, "Unable to load native, specified context cannot be null"

    invoke-direct {p1, p2}, Lcom/millennialmedia/MMException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onDestroy()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/millennialmedia/NativeAd;->nativeListener:Lcom/millennialmedia/NativeAd$NativeListener;

    iput-object v0, p0, Lcom/millennialmedia/internal/AdPlacement;->incentivizedEventListener:Lcom/millennialmedia/XIncentivizedEventListener;

    iput-object v0, p0, Lcom/millennialmedia/NativeAd;->nativeAdMetadata:Lcom/millennialmedia/NativeAd$NativeAdMetadata;

    invoke-direct {p0}, Lcom/millennialmedia/NativeAd;->stopRequestTimeoutTimers()V

    invoke-direct {p0}, Lcom/millennialmedia/NativeAd;->stopExpirationTimer()V

    iget-object v1, p0, Lcom/millennialmedia/NativeAd;->impressionReporter:Lcom/millennialmedia/NativeAd$ImpressionReporter;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/millennialmedia/NativeAd$ImpressionReporter;->cancel()V

    iput-object v0, p0, Lcom/millennialmedia/NativeAd;->impressionReporter:Lcom/millennialmedia/NativeAd$ImpressionReporter;

    :cond_0
    invoke-direct {p0}, Lcom/millennialmedia/NativeAd;->releaseAdapters()V

    iput-object v0, p0, Lcom/millennialmedia/NativeAd;->nativeTypeDefinition:Lcom/millennialmedia/internal/Handshake$NativeTypeDefinition;

    new-instance v1, Lcom/millennialmedia/NativeAd$10;

    invoke-direct {v1, p0}, Lcom/millennialmedia/NativeAd$10;-><init>(Lcom/millennialmedia/NativeAd;)V

    invoke-static {v1}, Lcom/millennialmedia/internal/utils/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/millennialmedia/NativeAd;->accessedComponentIndices:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    iget-object v1, p0, Lcom/millennialmedia/NativeAd;->requestedNativeTypes:Ljava/util/List;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iput-object v0, p0, Lcom/millennialmedia/NativeAd;->requestedNativeTypes:Ljava/util/List;

    :cond_1
    iput-object v0, p0, Lcom/millennialmedia/NativeAd;->bodyInfoList:Ljava/util/List;

    iput-object v0, p0, Lcom/millennialmedia/NativeAd;->disclaimerInfoList:Ljava/util/List;

    iput-object v0, p0, Lcom/millennialmedia/NativeAd;->ratingInfoList:Ljava/util/List;

    iput-object v0, p0, Lcom/millennialmedia/NativeAd;->titleInfoList:Ljava/util/List;

    iput-object v0, p0, Lcom/millennialmedia/NativeAd;->callToActionInfoList:Ljava/util/List;

    iput-object v0, p0, Lcom/millennialmedia/NativeAd;->iconImageInfoList:Ljava/util/List;

    iput-object v0, p0, Lcom/millennialmedia/NativeAd;->mainImageInfoList:Ljava/util/List;

    iput-object v0, p0, Lcom/millennialmedia/internal/AdPlacement;->playList:Lcom/millennialmedia/internal/PlayList;

    return-void
.end method

.method public setListener(Lcom/millennialmedia/NativeAd$NativeListener;)V
    .locals 1

    invoke-virtual {p0}, Lcom/millennialmedia/internal/AdPlacement;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/millennialmedia/NativeAd;->nativeListener:Lcom/millennialmedia/NativeAd$NativeListener;

    return-void
.end method

.method public updateLayout(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Lcom/millennialmedia/internal/AdPlacement;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/millennialmedia/internal/utils/ThreadUtils;->isUiThread()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p1, Lcom/millennialmedia/NativeAd;->TAG:Ljava/lang/String;

    const-string v0, "NativeAd.updateLayout must be called on the UI thread."

    invoke-static {p1, v0}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    if-nez p1, :cond_2

    sget-object p1, Lcom/millennialmedia/NativeAd;->TAG:Ljava/lang/String;

    const-string v0, "Unable to updated; the provided layout was null."

    invoke-static {p1, v0}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/millennialmedia/NativeAd;->isReady()Z

    move-result v0

    if-nez v0, :cond_3

    sget-object p1, Lcom/millennialmedia/NativeAd;->TAG:Ljava/lang/String;

    const-string v0, "Cannot update the layout. The NativeAd is not loaded."

    invoke-static {p1, v0}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/millennialmedia/NativeAd;->internalUpdateLayout(Landroid/view/View;ZZ)Z

    return-void
.end method
