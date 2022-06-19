.class public Lcom/mopub/nativeads/GooglePlayServicesNative$a;
.super Lcom/mopub/nativeads/BaseNativeAd;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/nativeads/GooglePlayServicesNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/Double;

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:Z

.field public o:Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;

.field public p:Lcom/google/android/gms/ads/formats/NativeContentAd;

.field public q:Lcom/google/android/gms/ads/formats/NativeAppInstallAd;


# direct methods
.method public constructor <init>(Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;)V
    .locals 0

    invoke-direct {p0}, Lcom/mopub/nativeads/BaseNativeAd;-><init>()V

    iput-object p1, p0, Lcom/mopub/nativeads/GooglePlayServicesNative$a;->o:Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;

    return-void
.end method

.method public static synthetic g(Lcom/mopub/nativeads/GooglePlayServicesNative$a;)Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;
    .locals 0

    iget-object p0, p0, Lcom/mopub/nativeads/GooglePlayServicesNative$a;->o:Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;

    return-object p0
.end method

.method public static synthetic h(Lcom/mopub/nativeads/GooglePlayServicesNative$a;Lcom/google/android/gms/ads/formats/NativeAppInstallAd;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/mopub/nativeads/GooglePlayServicesNative$a;->r(Lcom/google/android/gms/ads/formats/NativeAppInstallAd;)Z

    move-result p0

    return p0
.end method

.method public static synthetic i(Lcom/mopub/nativeads/GooglePlayServicesNative$a;)Lcom/google/android/gms/ads/formats/NativeAppInstallAd;
    .locals 0

    iget-object p0, p0, Lcom/mopub/nativeads/GooglePlayServicesNative$a;->q:Lcom/google/android/gms/ads/formats/NativeAppInstallAd;

    return-object p0
.end method

.method public static synthetic j(Lcom/mopub/nativeads/GooglePlayServicesNative$a;Lcom/google/android/gms/ads/formats/NativeAppInstallAd;)Lcom/google/android/gms/ads/formats/NativeAppInstallAd;
    .locals 0

    iput-object p1, p0, Lcom/mopub/nativeads/GooglePlayServicesNative$a;->q:Lcom/google/android/gms/ads/formats/NativeAppInstallAd;

    return-object p1
.end method

.method public static synthetic k(Lcom/mopub/nativeads/GooglePlayServicesNative$a;Landroid/content/Context;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/mopub/nativeads/GooglePlayServicesNative$a;->u(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic l(Lcom/mopub/nativeads/GooglePlayServicesNative$a;Lcom/google/android/gms/ads/formats/NativeContentAd;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/mopub/nativeads/GooglePlayServicesNative$a;->s(Lcom/google/android/gms/ads/formats/NativeContentAd;)Z

    move-result p0

    return p0
.end method

.method public static synthetic m(Lcom/mopub/nativeads/GooglePlayServicesNative$a;)Lcom/google/android/gms/ads/formats/NativeContentAd;
    .locals 0

    iget-object p0, p0, Lcom/mopub/nativeads/GooglePlayServicesNative$a;->p:Lcom/google/android/gms/ads/formats/NativeContentAd;

    return-object p0
.end method

.method public static synthetic n(Lcom/mopub/nativeads/GooglePlayServicesNative$a;Lcom/google/android/gms/ads/formats/NativeContentAd;)Lcom/google/android/gms/ads/formats/NativeContentAd;
    .locals 0

    iput-object p1, p0, Lcom/mopub/nativeads/GooglePlayServicesNative$a;->p:Lcom/google/android/gms/ads/formats/NativeContentAd;

    return-object p1
.end method

.method public static synthetic o(Lcom/mopub/nativeads/GooglePlayServicesNative$a;Lcom/google/android/gms/ads/formats/NativeContentAd;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/mopub/nativeads/GooglePlayServicesNative$a;->w(Lcom/google/android/gms/ads/formats/NativeContentAd;)V

    return-void
.end method

.method public static synthetic p(Lcom/mopub/nativeads/GooglePlayServicesNative$a;Lcom/google/android/gms/ads/formats/NativeAppInstallAd;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/mopub/nativeads/GooglePlayServicesNative$a;->v(Lcom/google/android/gms/ads/formats/NativeAppInstallAd;)V

    return-void
.end method


# virtual methods
.method public clear(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Lcom/mopub/nativeads/GooglePlayServicesNative$a;->shouldSwapMargins()Z

    move-result v0

    invoke-static {p1, v0}, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer;->b(Landroid/view/View;Z)V

    return-void
.end method

.method public destroy()V
    .locals 1

    iget-object v0, p0, Lcom/mopub/nativeads/GooglePlayServicesNative$a;->p:Lcom/google/android/gms/ads/formats/NativeContentAd;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/formats/NativeContentAd;->destroy()V

    :cond_0
    iget-object v0, p0, Lcom/mopub/nativeads/GooglePlayServicesNative$a;->q:Lcom/google/android/gms/ads/formats/NativeAppInstallAd;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/ads/formats/NativeAppInstallAd;->destroy()V

    :cond_1
    return-void
.end method

.method public getAdvertiser()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mopub/nativeads/GooglePlayServicesNative$a;->k:Ljava/lang/String;

    return-object v0
.end method

.method public getAppInstallAd()Lcom/google/android/gms/ads/formats/NativeAppInstallAd;
    .locals 1

    iget-object v0, p0, Lcom/mopub/nativeads/GooglePlayServicesNative$a;->q:Lcom/google/android/gms/ads/formats/NativeAppInstallAd;

    return-object v0
.end method

.method public getCallToAction()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mopub/nativeads/GooglePlayServicesNative$a;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getContentAd()Lcom/google/android/gms/ads/formats/NativeContentAd;
    .locals 1

    iget-object v0, p0, Lcom/mopub/nativeads/GooglePlayServicesNative$a;->p:Lcom/google/android/gms/ads/formats/NativeContentAd;

    return-object v0
.end method

.method public getIconImageUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mopub/nativeads/GooglePlayServicesNative$a;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getMainImageUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mopub/nativeads/GooglePlayServicesNative$a;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getPrice()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mopub/nativeads/GooglePlayServicesNative$a;->m:Ljava/lang/String;

    return-object v0
.end method

.method public getStarRating()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lcom/mopub/nativeads/GooglePlayServicesNative$a;->j:Ljava/lang/Double;

    return-object v0
.end method

.method public getStore()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mopub/nativeads/GooglePlayServicesNative$a;->l:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mopub/nativeads/GooglePlayServicesNative$a;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mopub/nativeads/GooglePlayServicesNative$a;->e:Ljava/lang/String;

    return-object v0
.end method

.method public isNativeAppInstallAd()Z
    .locals 1

    iget-object v0, p0, Lcom/mopub/nativeads/GooglePlayServicesNative$a;->q:Lcom/google/android/gms/ads/formats/NativeAppInstallAd;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNativeContentAd()Z
    .locals 1

    iget-object v0, p0, Lcom/mopub/nativeads/GooglePlayServicesNative$a;->p:Lcom/google/android/gms/ads/formats/NativeContentAd;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public loadAd(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/ads/AdLoader$Builder;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/ads/AdLoader$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string p2, "swap_margins"

    invoke-interface {p3, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    instance-of v1, p2, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    iput-boolean p2, p0, Lcom/mopub/nativeads/GooglePlayServicesNative$a;->n:Z

    :cond_0
    new-instance p2, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;

    invoke-direct {p2}, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->setReturnUrlsForImageAssets(Z)Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->setRequestMultipleImages(Z)Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;

    const-string v1, "orientation_preference"

    invoke-interface {p3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mopub/nativeads/GooglePlayServicesNative$a;->t(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->setImageOrientation(I)Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;

    :cond_1
    const-string v1, "ad_choices_placement"

    invoke-interface {p3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mopub/nativeads/GooglePlayServicesNative$a;->q(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->setAdChoicesPlacement(I)Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;

    :cond_2
    invoke-virtual {p2}, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->build()Lcom/google/android/gms/ads/formats/NativeAdOptions;

    move-result-object p2

    new-instance p3, Lcom/mopub/nativeads/GooglePlayServicesNative$a$c;

    invoke-direct {p3, p0, p1}, Lcom/mopub/nativeads/GooglePlayServicesNative$a$c;-><init>(Lcom/mopub/nativeads/GooglePlayServicesNative$a;Landroid/content/Context;)V

    invoke-virtual {v0, p3}, Lcom/google/android/gms/ads/AdLoader$Builder;->forContentAd(Lcom/google/android/gms/ads/formats/NativeContentAd$OnContentAdLoadedListener;)Lcom/google/android/gms/ads/AdLoader$Builder;

    move-result-object p3

    new-instance v0, Lcom/mopub/nativeads/GooglePlayServicesNative$a$b;

    invoke-direct {v0, p0, p1}, Lcom/mopub/nativeads/GooglePlayServicesNative$a$b;-><init>(Lcom/mopub/nativeads/GooglePlayServicesNative$a;Landroid/content/Context;)V

    invoke-virtual {p3, v0}, Lcom/google/android/gms/ads/AdLoader$Builder;->forAppInstallAd(Lcom/google/android/gms/ads/formats/NativeAppInstallAd$OnAppInstallAdLoadedListener;)Lcom/google/android/gms/ads/AdLoader$Builder;

    move-result-object p1

    new-instance p3, Lcom/mopub/nativeads/GooglePlayServicesNative$a$a;

    invoke-direct {p3, p0}, Lcom/mopub/nativeads/GooglePlayServicesNative$a$a;-><init>(Lcom/mopub/nativeads/GooglePlayServicesNative$a;)V

    invoke-virtual {p1, p3}, Lcom/google/android/gms/ads/AdLoader$Builder;->withAdListener(Lcom/google/android/gms/ads/AdListener;)Lcom/google/android/gms/ads/AdLoader$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/ads/AdLoader$Builder;->withNativeAdOptions(Lcom/google/android/gms/ads/formats/NativeAdOptions;)Lcom/google/android/gms/ads/AdLoader$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdLoader$Builder;->build()Lcom/google/android/gms/ads/AdLoader;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {p2}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    const-string p3, "MoPub"

    invoke-virtual {p2, p3}, Lcom/google/android/gms/ads/AdRequest$Builder;->setRequestAgent(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/ads/AdLoader;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    return-void
.end method

.method public prepare(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public final q(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    instance-of v1, p1, Ljava/lang/Integer;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v2, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v3, 0x3

    if-eq v1, v3, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    :goto_0
    return v0
.end method

.method public final r(Lcom/google/android/gms/ads/formats/NativeAppInstallAd;)Z
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/NativeAppInstallAd;->getHeadline()Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/NativeAppInstallAd;->getBody()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/NativeAppInstallAd;->getImages()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/NativeAppInstallAd;->getImages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/NativeAppInstallAd;->getImages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/NativeAppInstallAd;->getIcon()Lcom/google/android/gms/ads/formats/NativeAd$Image;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/NativeAppInstallAd;->getCallToAction()Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public final s(Lcom/google/android/gms/ads/formats/NativeContentAd;)Z
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/NativeContentAd;->getHeadline()Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/NativeContentAd;->getBody()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/NativeContentAd;->getImages()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/NativeContentAd;->getImages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/NativeContentAd;->getImages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/NativeContentAd;->getLogo()Lcom/google/android/gms/ads/formats/NativeAd$Image;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/NativeContentAd;->getCallToAction()Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public setAdvertiser(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mopub/nativeads/GooglePlayServicesNative$a;->k:Ljava/lang/String;

    return-void
.end method

.method public setCallToAction(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mopub/nativeads/GooglePlayServicesNative$a;->i:Ljava/lang/String;

    return-void
.end method

.method public setIconImageUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mopub/nativeads/GooglePlayServicesNative$a;->h:Ljava/lang/String;

    return-void
.end method

.method public setMainImageUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mopub/nativeads/GooglePlayServicesNative$a;->g:Ljava/lang/String;

    return-void
.end method

.method public setPrice(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mopub/nativeads/GooglePlayServicesNative$a;->m:Ljava/lang/String;

    return-void
.end method

.method public setStarRating(Ljava/lang/Double;)V
    .locals 0

    iput-object p1, p0, Lcom/mopub/nativeads/GooglePlayServicesNative$a;->j:Ljava/lang/Double;

    return-void
.end method

.method public setStore(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mopub/nativeads/GooglePlayServicesNative$a;->l:Ljava/lang/String;

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mopub/nativeads/GooglePlayServicesNative$a;->f:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mopub/nativeads/GooglePlayServicesNative$a;->e:Ljava/lang/String;

    return-void
.end method

.method public shouldSwapMargins()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mopub/nativeads/GooglePlayServicesNative$a;->n:Z

    return v0
.end method

.method public final t(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    instance-of v1, p1, Ljava/lang/Integer;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v2, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    :goto_0
    return v0
.end method

.method public final u(Landroid/content/Context;Ljava/util/List;)V
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

    new-instance v0, Lcom/mopub/nativeads/GooglePlayServicesNative$a$d;

    invoke-direct {v0, p0}, Lcom/mopub/nativeads/GooglePlayServicesNative$a$d;-><init>(Lcom/mopub/nativeads/GooglePlayServicesNative$a;)V

    invoke-static {p1, p2, v0}, Lcom/mopub/nativeads/NativeImageHelper;->preCacheImages(Landroid/content/Context;Ljava/util/List;Lcom/mopub/nativeads/NativeImageHelper$ImageListener;)V

    return-void
.end method

.method public final v(Lcom/google/android/gms/ads/formats/NativeAppInstallAd;)V
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/NativeAppInstallAd;->getImages()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/formats/NativeAd$Image;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/formats/NativeAd$Image;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mopub/nativeads/GooglePlayServicesNative$a;->setMainImageUrl(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/NativeAppInstallAd;->getIcon()Lcom/google/android/gms/ads/formats/NativeAd$Image;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/formats/NativeAd$Image;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mopub/nativeads/GooglePlayServicesNative$a;->setIconImageUrl(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/NativeAppInstallAd;->getCallToAction()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mopub/nativeads/GooglePlayServicesNative$a;->setCallToAction(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/NativeAppInstallAd;->getHeadline()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mopub/nativeads/GooglePlayServicesNative$a;->setTitle(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/NativeAppInstallAd;->getBody()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mopub/nativeads/GooglePlayServicesNative$a;->setText(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/NativeAppInstallAd;->getStarRating()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/NativeAppInstallAd;->getStarRating()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mopub/nativeads/GooglePlayServicesNative$a;->setStarRating(Ljava/lang/Double;)V

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/NativeAppInstallAd;->getStore()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/NativeAppInstallAd;->getStore()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mopub/nativeads/GooglePlayServicesNative$a;->setStore(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/NativeAppInstallAd;->getPrice()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/NativeAppInstallAd;->getPrice()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mopub/nativeads/GooglePlayServicesNative$a;->setPrice(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public final w(Lcom/google/android/gms/ads/formats/NativeContentAd;)V
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/NativeContentAd;->getImages()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/formats/NativeAd$Image;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/formats/NativeAd$Image;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mopub/nativeads/GooglePlayServicesNative$a;->setMainImageUrl(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/NativeContentAd;->getLogo()Lcom/google/android/gms/ads/formats/NativeAd$Image;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/formats/NativeAd$Image;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mopub/nativeads/GooglePlayServicesNative$a;->setIconImageUrl(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/NativeContentAd;->getCallToAction()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mopub/nativeads/GooglePlayServicesNative$a;->setCallToAction(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/NativeContentAd;->getHeadline()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mopub/nativeads/GooglePlayServicesNative$a;->setTitle(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/NativeContentAd;->getBody()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mopub/nativeads/GooglePlayServicesNative$a;->setText(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/NativeContentAd;->getAdvertiser()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mopub/nativeads/GooglePlayServicesNative$a;->setAdvertiser(Ljava/lang/String;)V

    return-void
.end method
