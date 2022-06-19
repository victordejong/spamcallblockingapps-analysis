.class public Lcom/millennialmedia/internal/adadapters/NativeMediatedAdAdapter;
.super Lcom/millennialmedia/internal/adadapters/NativeAdapter;
.source ""

# interfaces
.implements Lcom/millennialmedia/internal/adadapters/MediatedAdAdapter;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "DefaultLocale"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/millennialmedia/internal/adadapters/NativeMediatedAdAdapter$CustomEventNativeListenerImpl;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NativeMediatedAdAdapter"


# instance fields
.field private body:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/millennialmedia/internal/adadapters/NativeAdapter$TextComponentInfo;",
            ">;"
        }
    .end annotation
.end field

.field private callToAction:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/millennialmedia/internal/adadapters/NativeAdapter$TextComponentInfo;",
            ">;"
        }
    .end annotation
.end field

.field private customEventNative:Lcom/millennialmedia/mediation/CustomEventNative;

.field private disclaimer:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/millennialmedia/internal/adadapters/NativeAdapter$TextComponentInfo;",
            ">;"
        }
    .end annotation
.end field

.field private iconImage:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/millennialmedia/internal/adadapters/NativeAdapter$ImageComponentInfo;",
            ">;"
        }
    .end annotation
.end field

.field private volatile imagesDownloaded:I

.field private mainImage:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/millennialmedia/internal/adadapters/NativeAdapter$ImageComponentInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mediationInfo:Lcom/millennialmedia/internal/adadapters/MediatedAdAdapter$MediationInfo;

.field private nativeAdapterListener:Lcom/millennialmedia/internal/adadapters/NativeAdapter$NativeAdapterListener;

.field private rating:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/millennialmedia/internal/adadapters/NativeAdapter$TextComponentInfo;",
            ">;"
        }
    .end annotation
.end field

.field private title:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/millennialmedia/internal/adadapters/NativeAdapter$TextComponentInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/millennialmedia/internal/adadapters/NativeAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/millennialmedia/internal/adadapters/NativeMediatedAdAdapter;->title:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/millennialmedia/internal/adadapters/NativeMediatedAdAdapter;->body:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/millennialmedia/internal/adadapters/NativeMediatedAdAdapter;->disclaimer:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/millennialmedia/internal/adadapters/NativeMediatedAdAdapter;->rating:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/millennialmedia/internal/adadapters/NativeMediatedAdAdapter;->callToAction:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/millennialmedia/internal/adadapters/NativeMediatedAdAdapter;->mainImage:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/millennialmedia/internal/adadapters/NativeMediatedAdAdapter;->iconImage:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lcom/millennialmedia/internal/adadapters/NativeMediatedAdAdapter;->imagesDownloaded:I

    return-void
.end method

.method public static synthetic access$000(Lcom/millennialmedia/internal/adadapters/NativeMediatedAdAdapter;Lcom/millennialmedia/mediation/CustomEventNativeAd;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/millennialmedia/internal/adadapters/NativeMediatedAdAdapter;->loadContent(Lcom/millennialmedia/mediation/CustomEventNativeAd;)V

    return-void
.end method

.method public static synthetic access$100(Lcom/millennialmedia/internal/adadapters/NativeMediatedAdAdapter;)Lcom/millennialmedia/internal/adadapters/NativeAdapter$NativeAdapterListener;
    .locals 0

    iget-object p0, p0, Lcom/millennialmedia/internal/adadapters/NativeMediatedAdAdapter;->nativeAdapterListener:Lcom/millennialmedia/internal/adadapters/NativeAdapter$NativeAdapterListener;

    return-object p0
.end method

.method public static synthetic access$200()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/millennialmedia/internal/adadapters/NativeMediatedAdAdapter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$400(Lcom/millennialmedia/internal/adadapters/NativeMediatedAdAdapter;)Lcom/millennialmedia/mediation/CustomEventNative;
    .locals 0

    iget-object p0, p0, Lcom/millennialmedia/internal/adadapters/NativeMediatedAdAdapter;->customEventNative:Lcom/millennialmedia/mediation/CustomEventNative;

    return-object p0
.end method

.method public static synthetic access$508(Lcom/millennialmedia/internal/adadapters/NativeMediatedAdAdapter;)I
    .locals 2

    iget v0, p0, Lcom/millennialmedia/internal/adadapters/NativeMediatedAdAdapter;->imagesDownloaded:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/millennialmedia/internal/adadapters/NativeMediatedAdAdapter;->imagesDownloaded:I

    return v0
.end method

.method private addImageComponentInfo(Ljava/util/List;Lcom/millennialmedia/mediation/CustomEventNativeAd$ImageComponent;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/millennialmedia/internal/adadapters/NativeAdapter$ImageComponentInfo;",
            ">;",
            "Lcom/millennialmedia/mediation/CustomEventNativeAd$ImageComponent;",
            ")V"
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/millennialmedia/internal/adadapters/NativeAdapter$ImageComponentInfo;

    invoke-direct {v0}, Lcom/millennialmedia/internal/adadapters/NativeAdapter$ImageComponentInfo;-><init>()V

    iget-object v1, p2, Lcom/millennialmedia/mediation/CustomEventNativeAd$ImageComponent;->imageUrl:Ljava/lang/String;

    iput-object v1, v0, Lcom/millennialmedia/internal/adadapters/NativeAdapter$ImageComponentInfo;->bitmapUrl:Ljava/lang/String;

    iget-object v1, p2, Lcom/millennialmedia/mediation/CustomEventNativeAd$Component;->clickTrackingUrls:Ljava/util/List;

    iput-object v1, v0, Lcom/millennialmedia/internal/adadapters/NativeAdapter$ComponentInfo;->clickTrackerUrls:Ljava/util/List;

    iget-object p2, p2, Lcom/millennialmedia/mediation/CustomEventNativeAd$Component;->clickThroughUrl:Ljava/lang/String;

    iput-object p2, v0, Lcom/millennialmedia/internal/adadapters/NativeAdapter$ComponentInfo;->clickUrl:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addTextComponentInfo(Ljava/util/List;Lcom/millennialmedia/mediation/CustomEventNativeAd$TextComponent;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/millennialmedia/internal/adadapters/NativeAdapter$TextComponentInfo;",
            ">;",
            "Lcom/millennialmedia/mediation/CustomEventNativeAd$TextComponent;",
            ")V"
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/millennialmedia/internal/adadapters/NativeAdapter$TextComponentInfo;

    invoke-direct {v0}, Lcom/millennialmedia/internal/adadapters/NativeAdapter$TextComponentInfo;-><init>()V

    iget-object v1, p2, Lcom/millennialmedia/mediation/CustomEventNativeAd$TextComponent;->value:Ljava/lang/String;

    iput-object v1, v0, Lcom/millennialmedia/internal/adadapters/NativeAdapter$TextComponentInfo;->value:Ljava/lang/String;

    iget-object v1, p2, Lcom/millennialmedia/mediation/CustomEventNativeAd$Component;->clickTrackingUrls:Ljava/util/List;

    iput-object v1, v0, Lcom/millennialmedia/internal/adadapters/NativeAdapter$ComponentInfo;->clickTrackerUrls:Ljava/util/List;

    iget-object p2, p2, Lcom/millennialmedia/mediation/CustomEventNativeAd$Component;->clickThroughUrl:Ljava/lang/String;

    iput-object p2, v0, Lcom/millennialmedia/internal/adadapters/NativeAdapter$ComponentInfo;->clickUrl:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private downloadImage(Ljava/util/concurrent/CountDownLatch;Lcom/millennialmedia/internal/adadapters/NativeAdapter$ImageComponentInfo;)V
    .locals 2

    if-eqz p2, :cond_0

    iget-object v0, p2, Lcom/millennialmedia/internal/adadapters/NativeAdapter$ImageComponentInfo;->bitmapUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p2, Lcom/millennialmedia/internal/adadapters/NativeAdapter$ImageComponentInfo;->bitmapUrl:Ljava/lang/String;

    new-instance v1, Lcom/millennialmedia/internal/adadapters/NativeMediatedAdAdapter$2;

    invoke-direct {v1, p0, p2, p1}, Lcom/millennialmedia/internal/adadapters/NativeMediatedAdAdapter$2;-><init>(Lcom/millennialmedia/internal/adadapters/NativeMediatedAdAdapter;Lcom/millennialmedia/internal/adadapters/NativeAdapter$ImageComponentInfo;Ljava/util/concurrent/CountDownLatch;)V

    invoke-static {v0, v1}, Lcom/millennialmedia/internal/utils/HttpUtils;->getBitmapFromGetRequestAsync(Ljava/lang/String;Lcom/millennialmedia/internal/utils/HttpUtils$HttpRequestListener;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :goto_0
    return-void
.end method

.method private downloadImages()V
    .locals 7

    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/NativeMediatedAdAdapter;->mainImage:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcom/millennialmedia/internal/adadapters/NativeMediatedAdAdapter;->iconImage:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    new-instance v3, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v3, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iget-object v4, p0, Lcom/millennialmedia/internal/adadapters/NativeMediatedAdAdapter;->mainImage:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/millennialmedia/internal/adadapters/NativeAdapter$ImageComponentInfo;

    iget-object v5, p0, Lcom/millennialmedia/internal/adadapters/NativeMediatedAdAdapter;->iconImage:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/millennialmedia/internal/adadapters/NativeAdapter$ImageComponentInfo;

    invoke-direct {p0, v3, v4}, Lcom/millennialmedia/internal/adadapters/NativeMediatedAdAdapter;->downloadImage(Ljava/util/concurrent/CountDownLatch;Lcom/millennialmedia/internal/adadapters/NativeAdapter$ImageComponentInfo;)V

    invoke-direct {p0, v3, v5}, Lcom/millennialmedia/internal/adadapters/NativeMediatedAdAdapter;->downloadImage(Ljava/util/concurrent/CountDownLatch;Lcom/millennialmedia/internal/adadapters/NativeAdapter$ImageComponentInfo;)V

    invoke-static {}, Lcom/millennialmedia/internal/Handshake;->getNativeTimeout()I

    move-result v4

    int-to-long v4, v4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5, v6}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    iget v3, p0, Lcom/millennialmedia/internal/adadapters/NativeMediatedAdAdapter;->imagesDownloaded:I

    if-lt v3, v0, :cond_2

    return-void

    :cond_2
    new-instance v3, Lcom/millennialmedia/MMException;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v1

    iget v0, p0, Lcom/millennialmedia/internal/adadapters/NativeMediatedAdAdapter;->imagesDownloaded:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v2

    const-string v0, "Failed to retrieve all image assets for custom event native ad. Excepted %d, downloaded %d."

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/millennialmedia/MMException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private loadContent(Lcom/millennialmedia/mediation/CustomEventNativeAd;)V
    .locals 2

    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/NativeMediatedAdAdapter;->title:Ljava/util/List;

    invoke-virtual {p1}, Lcom/millennialmedia/mediation/CustomEventNativeAd;->getTitle()Lcom/millennialmedia/mediation/CustomEventNativeAd$TextComponent;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/millennialmedia/internal/adadapters/NativeMediatedAdAdapter;->addTextComponentInfo(Ljava/util/List;Lcom/millennialmedia/mediation/CustomEventNativeAd$TextComponent;)V

    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/NativeMediatedAdAdapter;->body:Ljava/util/List;

    invoke-virtual {p1}, Lcom/millennialmedia/mediation/CustomEventNativeAd;->getBody()Lcom/millennialmedia/mediation/CustomEventNativeAd$TextComponent;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/millennialmedia/internal/adadapters/NativeMediatedAdAdapter;->addTextComponentInfo(Ljava/util/List;Lcom/millennialmedia/mediation/CustomEventNativeAd$TextComponent;)V

    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/NativeMediatedAdAdapter;->disclaimer:Ljava/util/List;

    invoke-virtual {p1}, Lcom/millennialmedia/mediation/CustomEventNativeAd;->getDisclaimer()Lcom/millennialmedia/mediation/CustomEventNativeAd$TextComponent;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/millennialmedia/internal/adadapters/NativeMediatedAdAdapter;->addTextComponentInfo(Ljava/util/List;Lcom/millennialmedia/mediation/CustomEventNativeAd$TextComponent;)V

    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/NativeMediatedAdAdapter;->callToAction:Ljava/util/List;

    invoke-virtual {p1}, Lcom/millennialmedia/mediation/CustomEventNativeAd;->getCallToAction()Lcom/millennialmedia/mediation/CustomEventNativeAd$TextComponent;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/millennialmedia/internal/adadapters/NativeMediatedAdAdapter;->addTextComponentInfo(Ljava/util/List;Lcom/millennialmedia/mediation/CustomEventNativeAd$TextComponent;)V

    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/NativeMediatedAdAdapter;->rating:Ljava/util/List;

    invoke-virtual {p1}, Lcom/millennialmedia/mediation/CustomEventNativeAd;->getRating()Lcom/millennialmedia/mediation/CustomEventNativeAd$TextComponent;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/millennialmedia/internal/adadapters/NativeMediatedAdAdapter;->addTextComponentInfo(Ljava/util/List;Lcom/millennialmedia/mediation/CustomEventNativeAd$TextComponent;)V

    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/NativeMediatedAdAdapter;->mainImage:Ljava/util/List;

    invoke-virtual {p1}, Lcom/millennialmedia/mediation/CustomEventNativeAd;->getMainImageUrl()Lcom/millennialmedia/mediation/CustomEventNativeAd$ImageComponent;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/millennialmedia/internal/adadapters/NativeMediatedAdAdapter;->addImageComponentInfo(Ljava/util/List;Lcom/millennialmedia/mediation/CustomEventNativeAd$ImageComponent;)V

    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/NativeMediatedAdAdapter;->iconImage:Ljava/util/List;

    invoke-virtual {p1}, Lcom/millennialmedia/mediation/CustomEventNativeAd;->getIconUrl()Lcom/millennialmedia/mediation/CustomEventNativeAd$ImageComponent;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/millennialmedia/internal/adadapters/NativeMediatedAdAdapter;->addImageComponentInfo(Ljava/util/List;Lcom/millennialmedia/mediation/CustomEventNativeAd$ImageComponent;)V

    invoke-direct {p0}, Lcom/millennialmedia/internal/adadapters/NativeMediatedAdAdapter;->downloadImages()V

    return-void
.end method


# virtual methods
.method public getBodyList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/millennialmedia/internal/adadapters/NativeAdapter$TextComponentInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/NativeMediatedAdAdapter;->body:Ljava/util/List;

    return-object v0
.end method

.method public getCallToActionList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/millennialmedia/internal/adadapters/NativeAdapter$TextComponentInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/NativeMediatedAdAdapter;->callToAction:Ljava/util/List;

    return-object v0
.end method

.method public getClickTrackers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDefaultAction()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDisclaimerList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/millennialmedia/internal/adadapters/NativeAdapter$TextComponentInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/NativeMediatedAdAdapter;->disclaimer:Ljava/util/List;

    return-object v0
.end method

.method public getIconImageList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/millennialmedia/internal/adadapters/NativeAdapter$ImageComponentInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/NativeMediatedAdAdapter;->iconImage:Ljava/util/List;

    return-object v0
.end method

.method public getImpressionTrackers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getMainImageList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/millennialmedia/internal/adadapters/NativeAdapter$ImageComponentInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/NativeMediatedAdAdapter;->mainImage:Ljava/util/List;

    return-object v0
.end method

.method public getRatingList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/millennialmedia/internal/adadapters/NativeAdapter$TextComponentInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/NativeMediatedAdAdapter;->rating:Ljava/util/List;

    return-object v0
.end method

.method public getTitleList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/millennialmedia/internal/adadapters/NativeAdapter$TextComponentInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/NativeMediatedAdAdapter;->title:Ljava/util/List;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/NativeMediatedAdAdapter;->customEventNative:Lcom/millennialmedia/mediation/CustomEventNative;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/millennialmedia/mediation/CustomEventNative;->getType()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const-string v0, "100"

    :cond_1
    return-object v0
.end method

.method public init(Lcom/millennialmedia/internal/adadapters/NativeAdapter$NativeAdapterListener;)V
    .locals 4

    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/NativeMediatedAdAdapter;->mediationInfo:Lcom/millennialmedia/internal/adadapters/MediatedAdAdapter$MediationInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object v0, Lcom/millennialmedia/internal/adadapters/NativeMediatedAdAdapter;->TAG:Ljava/lang/String;

    const-string v2, "calling initFailed, mediationInfo was null."

    invoke-static {v0, v2}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v1}, Lcom/millennialmedia/internal/adadapters/NativeAdapter$NativeAdapterListener;->initFailed(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const-class v2, Lcom/millennialmedia/NativeAd;

    iget-object v0, v0, Lcom/millennialmedia/internal/adadapters/MediatedAdAdapter$MediationInfo;->networkId:Ljava/lang/String;

    const-class v3, Lcom/millennialmedia/mediation/CustomEventNative;

    invoke-static {v2, v0, v3}, Lcom/millennialmedia/mediation/CustomEventRegistry;->getCustomEvent(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/mediation/CustomEventNative;

    iput-object v0, p0, Lcom/millennialmedia/internal/adadapters/NativeMediatedAdAdapter;->customEventNative:Lcom/millennialmedia/mediation/CustomEventNative;

    if-nez v0, :cond_1

    sget-object v0, Lcom/millennialmedia/internal/adadapters/NativeMediatedAdAdapter;->TAG:Ljava/lang/String;

    const-string v2, "calling initFailed, customEventNative was null."

    invoke-static {v0, v2}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v1}, Lcom/millennialmedia/internal/adadapters/NativeAdapter$NativeAdapterListener;->initFailed(Ljava/lang/Throwable;)V

    return-void

    :cond_1
    iput-object p1, p0, Lcom/millennialmedia/internal/adadapters/NativeMediatedAdAdapter;->nativeAdapterListener:Lcom/millennialmedia/internal/adadapters/NativeAdapter$NativeAdapterListener;

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/NativeMediatedAdAdapter;->mediationInfo:Lcom/millennialmedia/internal/adadapters/MediatedAdAdapter$MediationInfo;

    iget-object v0, v0, Lcom/millennialmedia/internal/adadapters/MediatedAdAdapter$MediationInfo;->spaceId:Ljava/lang/String;

    const-string v1, "PLACEMENT_ID"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/millennialmedia/internal/adadapters/NativeMediatedAdAdapter$1;

    invoke-direct {v0, p0, p1}, Lcom/millennialmedia/internal/adadapters/NativeMediatedAdAdapter$1;-><init>(Lcom/millennialmedia/internal/adadapters/NativeMediatedAdAdapter;Landroid/os/Bundle;)V

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAdClicked(Lcom/millennialmedia/NativeAd;)V
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/NativeMediatedAdAdapter;->customEventNative:Lcom/millennialmedia/mediation/CustomEventNative;

    invoke-interface {v0, p1}, Lcom/millennialmedia/mediation/CustomEventNative;->onAdClicked(Lcom/millennialmedia/NativeAd;)V

    return-void
.end method

.method public onAdLoaded(Lcom/millennialmedia/NativeAd;)V
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/NativeMediatedAdAdapter;->customEventNative:Lcom/millennialmedia/mediation/CustomEventNative;

    invoke-interface {v0, p1}, Lcom/millennialmedia/mediation/CustomEventNative;->onAdLoaded(Lcom/millennialmedia/NativeAd;)V

    return-void
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/NativeMediatedAdAdapter;->customEventNative:Lcom/millennialmedia/mediation/CustomEventNative;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/millennialmedia/mediation/CustomEventNative;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/millennialmedia/internal/adadapters/NativeMediatedAdAdapter;->customEventNative:Lcom/millennialmedia/mediation/CustomEventNative;

    :cond_0
    return-void
.end method

.method public setMediationInfo(Lcom/millennialmedia/internal/adadapters/MediatedAdAdapter$MediationInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/internal/adadapters/NativeMediatedAdAdapter;->mediationInfo:Lcom/millennialmedia/internal/adadapters/MediatedAdAdapter$MediationInfo;

    return-void
.end method
