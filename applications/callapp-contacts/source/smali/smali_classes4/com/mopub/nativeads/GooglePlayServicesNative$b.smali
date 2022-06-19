.class abstract Lcom/mopub/nativeads/GooglePlayServicesNative$b;
.super Lcom/mopub/nativeads/BaseNativeAd;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/nativeads/GooglePlayServicesNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "b"
.end annotation


# instance fields
.field protected a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected b:D

.field protected c:Ljava/lang/String;

.field protected d:Ljava/lang/String;

.field protected e:Ljava/lang/String;

.field protected f:Lcom/google/android/gms/ads/formats/UnifiedNativeAd;

.field protected g:Z

.field protected h:Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/Double;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private final s:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 2

    .line 141
    invoke-direct {p0}, Lcom/mopub/nativeads/BaseNativeAd;-><init>()V

    .line 142
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/mopub/nativeads/GooglePlayServicesNative$b;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 177
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mopub/nativeads/GooglePlayServicesNative$b;->s:Ljava/util/Map;

    return-void
.end method

.method static synthetic a(Lcom/mopub/nativeads/GooglePlayServicesNative$b;Lcom/google/android/gms/ads/formats/UnifiedNativeAd;)V
    .locals 2

    .line 1456
    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/UnifiedNativeAd;->getImages()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 1457
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/formats/NativeAd$Image;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/formats/NativeAd$Image;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mopub/nativeads/GooglePlayServicesNative$b;->setMainImageUrl(Ljava/lang/String;)V

    .line 1459
    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/UnifiedNativeAd;->getIcon()Lcom/google/android/gms/ads/formats/NativeAd$Image;

    move-result-object v0

    .line 1460
    invoke-virtual {v0}, Lcom/google/android/gms/ads/formats/NativeAd$Image;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mopub/nativeads/GooglePlayServicesNative$b;->setIconImageUrl(Ljava/lang/String;)V

    .line 1461
    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/UnifiedNativeAd;->getCallToAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mopub/nativeads/GooglePlayServicesNative$b;->setCallToAction(Ljava/lang/String;)V

    .line 1462
    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/UnifiedNativeAd;->getHeadline()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mopub/nativeads/GooglePlayServicesNative$b;->setTitle(Ljava/lang/String;)V

    .line 1464
    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/UnifiedNativeAd;->getBody()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mopub/nativeads/GooglePlayServicesNative$b;->setText(Ljava/lang/String;)V

    .line 1465
    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/UnifiedNativeAd;->getStarRating()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1466
    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/UnifiedNativeAd;->getStarRating()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mopub/nativeads/GooglePlayServicesNative$b;->setStarRating(Ljava/lang/Double;)V

    .line 1469
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/UnifiedNativeAd;->getStore()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1470
    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/UnifiedNativeAd;->getStore()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mopub/nativeads/GooglePlayServicesNative$b;->setStore(Ljava/lang/String;)V

    .line 1473
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/UnifiedNativeAd;->getPrice()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1474
    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/UnifiedNativeAd;->getPrice()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mopub/nativeads/GooglePlayServicesNative$b;->setPrice(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method protected static a(Lcom/google/android/gms/ads/formats/UnifiedNativeAd;)Z
    .locals 2

    .line 387
    invoke-virtual {p0}, Lcom/google/android/gms/ads/formats/UnifiedNativeAd;->getHeadline()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/ads/formats/UnifiedNativeAd;->getBody()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 388
    invoke-virtual {p0}, Lcom/google/android/gms/ads/formats/UnifiedNativeAd;->getImages()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/ads/formats/UnifiedNativeAd;->getImages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 389
    invoke-virtual {p0}, Lcom/google/android/gms/ads/formats/UnifiedNativeAd;->getImages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 390
    invoke-virtual {p0}, Lcom/google/android/gms/ads/formats/UnifiedNativeAd;->getIcon()Lcom/google/android/gms/ads/formats/NativeAd$Image;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 391
    invoke-virtual {p0}, Lcom/google/android/gms/ads/formats/UnifiedNativeAd;->getCallToAction()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method protected static a(Ljava/lang/Object;)Z
    .locals 4

    .line 348
    instance-of v0, p0, Ljava/lang/Integer;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 351
    :cond_0
    check-cast p0, Ljava/lang/Integer;

    .line 352
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    .line 353
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    .line 354
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    return v2
.end method

.method protected static b(Ljava/lang/Object;)Z
    .locals 4

    .line 366
    instance-of v0, p0, Ljava/lang/Integer;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 369
    :cond_0
    check-cast p0, Ljava/lang/Integer;

    .line 370
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 371
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v2, :cond_2

    .line 372
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    .line 373
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    return v2
.end method


# virtual methods
.method protected final a(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 424
    new-instance v0, Lcom/mopub/nativeads/GooglePlayServicesNative$b$1;

    invoke-direct {v0, p0}, Lcom/mopub/nativeads/GooglePlayServicesNative$b$1;-><init>(Lcom/mopub/nativeads/GooglePlayServicesNative$b;)V

    invoke-static {p1, p2, v0}, Lcom/mopub/nativeads/NativeImageHelper;->preCacheImages(Landroid/content/Context;Ljava/util/List;Lcom/mopub/nativeads/NativeImageHelper$ImageListener;)V

    return-void
.end method

.method public final addExtra(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "addExtra key is not allowed to be null"

    .line 185
    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions$NoThrow;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/mopub/nativeads/GooglePlayServicesNative$b;->s:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public clear(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x0

    .line 404
    iput-object p1, p0, Lcom/mopub/nativeads/GooglePlayServicesNative$b;->h:Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;

    .line 405
    iget-object p1, p0, Lcom/mopub/nativeads/GooglePlayServicesNative$b;->f:Lcom/google/android/gms/ads/formats/UnifiedNativeAd;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/UnifiedNativeAd;->cancelUnconfirmedClick()V

    return-void
.end method

.method public destroy()V
    .locals 1

    .line 411
    iget-object v0, p0, Lcom/mopub/nativeads/GooglePlayServicesNative$b;->f:Lcom/google/android/gms/ads/formats/UnifiedNativeAd;

    if-eqz v0, :cond_0

    .line 412
    invoke-virtual {v0}, Lcom/google/android/gms/ads/formats/UnifiedNativeAd;->destroy()V

    :cond_0
    return-void
.end method

.method public getAdvertiser()Ljava/lang/String;
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/mopub/nativeads/GooglePlayServicesNative$b;->o:Ljava/lang/String;

    return-object v0
.end method

.method public getCallToAction()Ljava/lang/String;
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/mopub/nativeads/GooglePlayServicesNative$b;->m:Ljava/lang/String;

    return-object v0
.end method

.method public final getExtra(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    const-string v0, "getExtra key is not allowed to be null"

    .line 181
    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions$NoThrow;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/mopub/nativeads/GooglePlayServicesNative$b;->s:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getIconImageUrl()Ljava/lang/String;
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/mopub/nativeads/GooglePlayServicesNative$b;->l:Ljava/lang/String;

    return-object v0
.end method

.method public getMainImageUrl()Ljava/lang/String;
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/mopub/nativeads/GooglePlayServicesNative$b;->k:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaView()Ljava/lang/String;
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/mopub/nativeads/GooglePlayServicesNative$b;->r:Ljava/lang/String;

    return-object v0
.end method

.method public getPrice()Ljava/lang/String;
    .locals 1

    .line 259
    iget-object v0, p0, Lcom/mopub/nativeads/GooglePlayServicesNative$b;->q:Ljava/lang/String;

    return-object v0
.end method

.method public getStarRating()Ljava/lang/Double;
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/mopub/nativeads/GooglePlayServicesNative$b;->n:Ljava/lang/Double;

    return-object v0
.end method

.method public getStore()Ljava/lang/String;
    .locals 1

    .line 252
    iget-object v0, p0, Lcom/mopub/nativeads/GooglePlayServicesNative$b;->p:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/mopub/nativeads/GooglePlayServicesNative$b;->j:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/mopub/nativeads/GooglePlayServicesNative$b;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getUnifiedNativeAd()Lcom/google/android/gms/ads/formats/UnifiedNativeAd;
    .locals 1

    .line 336
    iget-object v0, p0, Lcom/mopub/nativeads/GooglePlayServicesNative$b;->f:Lcom/google/android/gms/ads/formats/UnifiedNativeAd;

    return-object v0
.end method

.method public prepare(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public setAdvertiser(Ljava/lang/String;)V
    .locals 0

    .line 308
    iput-object p1, p0, Lcom/mopub/nativeads/GooglePlayServicesNative$b;->o:Ljava/lang/String;

    return-void
.end method

.method public setCallToAction(Ljava/lang/String;)V
    .locals 0

    .line 294
    iput-object p1, p0, Lcom/mopub/nativeads/GooglePlayServicesNative$b;->m:Ljava/lang/String;

    return-void
.end method

.method public setIconImageUrl(Ljava/lang/String;)V
    .locals 0

    .line 287
    iput-object p1, p0, Lcom/mopub/nativeads/GooglePlayServicesNative$b;->l:Ljava/lang/String;

    return-void
.end method

.method public setMainImageUrl(Ljava/lang/String;)V
    .locals 0

    .line 280
    iput-object p1, p0, Lcom/mopub/nativeads/GooglePlayServicesNative$b;->k:Ljava/lang/String;

    return-void
.end method

.method public setMediaView(Ljava/lang/String;)V
    .locals 0

    .line 196
    iput-object p1, p0, Lcom/mopub/nativeads/GooglePlayServicesNative$b;->r:Ljava/lang/String;

    return-void
.end method

.method public setPrice(Ljava/lang/String;)V
    .locals 0

    .line 322
    iput-object p1, p0, Lcom/mopub/nativeads/GooglePlayServicesNative$b;->q:Ljava/lang/String;

    return-void
.end method

.method public setStarRating(Ljava/lang/Double;)V
    .locals 0

    .line 301
    iput-object p1, p0, Lcom/mopub/nativeads/GooglePlayServicesNative$b;->n:Ljava/lang/Double;

    return-void
.end method

.method public setStore(Ljava/lang/String;)V
    .locals 0

    .line 315
    iput-object p1, p0, Lcom/mopub/nativeads/GooglePlayServicesNative$b;->p:Ljava/lang/String;

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    .line 273
    iput-object p1, p0, Lcom/mopub/nativeads/GooglePlayServicesNative$b;->j:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 266
    iput-object p1, p0, Lcom/mopub/nativeads/GooglePlayServicesNative$b;->i:Ljava/lang/String;

    return-void
.end method

.method public shouldSwapMargins()Z
    .locals 1

    .line 329
    iget-boolean v0, p0, Lcom/mopub/nativeads/GooglePlayServicesNative$b;->g:Z

    return v0
.end method
