.class public Lcom/mopub/nativeads/GooglePlayServicesAdRenderer;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/mopub/nativeads/MoPubAdRenderer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/nativeads/GooglePlayServicesAdRenderer$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/mopub/nativeads/MoPubAdRenderer<",
        "Lcom/mopub/nativeads/GooglePlayServicesNative$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final VIEW_BINDER_KEY_ADVERTISER:Ljava/lang/String; = "key_advertiser"

.field public static final VIEW_BINDER_KEY_AD_CHOICES_ICON_CONTAINER:Ljava/lang/String; = "ad_choices_container"

.field public static final VIEW_BINDER_KEY_PRICE:Ljava/lang/String; = "key_price"

.field public static final VIEW_BINDER_KEY_STAR_RATING:Ljava/lang/String; = "key_star_rating"

.field public static final VIEW_BINDER_KEY_STORE:Ljava/lang/String; = "key_store"

.field public static c:I

.field public static d:I


# instance fields
.field public final a:Lcom/mopub/nativeads/ViewBinder;

.field public final b:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/view/View;",
            "Lcom/mopub/nativeads/GooglePlayServicesAdRenderer$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/mopub/nativeads/ViewBinder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer;->a:Lcom/mopub/nativeads/ViewBinder;

    new-instance p1, Ljava/util/WeakHashMap;

    invoke-direct {p1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object p1, p0, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer;->b:Ljava/util/WeakHashMap;

    sget p1, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer;->c:I

    if-nez p1, :cond_0

    const/16 p1, 0x3e9

    invoke-static {p1}, Loe1;->h(I)I

    move-result p1

    sput p1, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer;->c:I

    :cond_0
    sget p1, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer;->d:I

    if-nez p1, :cond_1

    const/16 p1, 0x3ea

    invoke-static {p1}, Loe1;->h(I)I

    move-result p1

    sput p1, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer;->d:I

    :cond_1
    return-void
.end method

.method public static a(Lcom/google/android/gms/ads/formats/NativeAdView;Landroid/view/View;Z)V
    .locals 7

    instance-of v0, p1, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer;->c:I

    if-ne v0, v1, :cond_1

    sget v0, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer;->d:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setId(I)V

    check-cast p1, Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, -0x1

    if-eqz p2, :cond_0

    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p2, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    iget v3, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v4, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v5, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iget v6, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {p2, v3, v4, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v0, v0, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    :cond_0
    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p2, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    :cond_1
    const-string p0, "MoPubToAdMobNative"

    const-string p1, "Couldn\'t add Google native ad view. Wrapping view not found."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public static b(Landroid/view/View;Z)V
    .locals 8

    instance-of v0, p0, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer;->c:I

    if-ne v0, v1, :cond_2

    sget v0, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer;->d:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    move-object v2, v0

    check-cast v2, Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    iget v5, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v6, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v7, v4, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iget v4, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {p1, v5, v6, v7, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    :cond_0
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-virtual {p0, v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    :cond_1
    instance-of p0, v0, Lcom/google/android/gms/ads/formats/NativeAdView;

    if-eqz p0, :cond_2

    check-cast v0, Lcom/google/android/gms/ads/formats/NativeAdView;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/formats/NativeAdView;->destroy()V

    :cond_2
    return-void
.end method


# virtual methods
.method public final c(Lcom/mopub/nativeads/GooglePlayServicesNative$a;Lcom/mopub/nativeads/GooglePlayServicesAdRenderer$a;Lcom/google/android/gms/ads/formats/NativeAppInstallAdView;)V
    .locals 5

    iget-object v0, p2, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer$a;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/mopub/nativeads/GooglePlayServicesNative$a;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mopub/nativeads/NativeRendererHelper;->addTextView(Landroid/widget/TextView;Ljava/lang/String;)V

    iget-object v0, p2, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer$a;->b:Landroid/widget/TextView;

    invoke-virtual {p3, v0}, Lcom/google/android/gms/ads/formats/NativeAppInstallAdView;->setHeadlineView(Landroid/view/View;)V

    iget-object v0, p2, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer$a;->c:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/mopub/nativeads/GooglePlayServicesNative$a;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mopub/nativeads/NativeRendererHelper;->addTextView(Landroid/widget/TextView;Ljava/lang/String;)V

    iget-object v0, p2, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer$a;->c:Landroid/widget/TextView;

    invoke-virtual {p3, v0}, Lcom/google/android/gms/ads/formats/NativeAppInstallAdView;->setBodyView(Landroid/view/View;)V

    iget-object v0, p2, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer$a;->d:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/mopub/nativeads/GooglePlayServicesNative$a;->getCallToAction()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mopub/nativeads/NativeRendererHelper;->addTextView(Landroid/widget/TextView;Ljava/lang/String;)V

    iget-object v0, p2, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer$a;->d:Landroid/widget/TextView;

    invoke-virtual {p3, v0}, Lcom/google/android/gms/ads/formats/NativeAppInstallAdView;->setCallToActionView(Landroid/view/View;)V

    invoke-virtual {p1}, Lcom/mopub/nativeads/GooglePlayServicesNative$a;->getMainImageUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p2, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer$a;->e:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/mopub/nativeads/NativeImageHelper;->loadImageView(Ljava/lang/String;Landroid/widget/ImageView;)V

    iget-object v0, p2, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer$a;->e:Landroid/widget/ImageView;

    invoke-virtual {p3, v0}, Lcom/google/android/gms/ads/formats/NativeAppInstallAdView;->setImageView(Landroid/view/View;)V

    invoke-virtual {p1}, Lcom/mopub/nativeads/GooglePlayServicesNative$a;->getIconImageUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p2, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer$a;->f:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/mopub/nativeads/NativeImageHelper;->loadImageView(Ljava/lang/String;Landroid/widget/ImageView;)V

    iget-object v0, p2, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer$a;->f:Landroid/widget/ImageView;

    invoke-virtual {p3, v0}, Lcom/google/android/gms/ads/formats/NativeAppInstallAdView;->setIconView(Landroid/view/View;)V

    invoke-virtual {p1}, Lcom/mopub/nativeads/GooglePlayServicesNative$a;->getStarRating()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer$a;->h:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/mopub/nativeads/GooglePlayServicesNative$a;->getStarRating()Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "%.1f/5 Stars"

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mopub/nativeads/NativeRendererHelper;->addTextView(Landroid/widget/TextView;Ljava/lang/String;)V

    iget-object v0, p2, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer$a;->h:Landroid/widget/TextView;

    invoke-virtual {p3, v0}, Lcom/google/android/gms/ads/formats/NativeAppInstallAdView;->setStarRatingView(Landroid/view/View;)V

    :cond_0
    invoke-virtual {p1}, Lcom/mopub/nativeads/GooglePlayServicesNative$a;->getPrice()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p2, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer$a;->k:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/mopub/nativeads/GooglePlayServicesNative$a;->getPrice()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mopub/nativeads/NativeRendererHelper;->addTextView(Landroid/widget/TextView;Ljava/lang/String;)V

    iget-object v0, p2, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer$a;->k:Landroid/widget/TextView;

    invoke-virtual {p3, v0}, Lcom/google/android/gms/ads/formats/NativeAppInstallAdView;->setPriceView(Landroid/view/View;)V

    :cond_1
    invoke-virtual {p1}, Lcom/mopub/nativeads/GooglePlayServicesNative$a;->getStore()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p2, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer$a;->j:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/mopub/nativeads/GooglePlayServicesNative$a;->getStore()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mopub/nativeads/NativeRendererHelper;->addTextView(Landroid/widget/TextView;Ljava/lang/String;)V

    iget-object v0, p2, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer$a;->j:Landroid/widget/TextView;

    invoke-virtual {p3, v0}, Lcom/google/android/gms/ads/formats/NativeAppInstallAdView;->setStoreView(Landroid/view/View;)V

    :cond_2
    iget-object v0, p2, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer$a;->g:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-static {v0, v1, v1}, Lcom/mopub/nativeads/NativeRendererHelper;->addPrivacyInformationIcon(Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p2, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer$a;->l:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_3

    new-instance v0, Lcom/google/android/gms/ads/formats/AdChoicesView;

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/ads/formats/AdChoicesView;-><init>(Landroid/content/Context;)V

    iget-object v1, p2, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer$a;->l:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V

    iget-object p2, p2, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer$a;->l:Landroid/widget/FrameLayout;

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p3, v0}, Lcom/google/android/gms/ads/formats/NativeAdView;->setAdChoicesView(Lcom/google/android/gms/ads/formats/AdChoicesView;)V

    :cond_3
    invoke-virtual {p1}, Lcom/mopub/nativeads/GooglePlayServicesNative$a;->getAppInstallAd()Lcom/google/android/gms/ads/formats/NativeAppInstallAd;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/google/android/gms/ads/formats/NativeAdView;->setNativeAd(Lcom/google/android/gms/ads/formats/NativeAd;)V

    return-void
.end method

.method public createAdView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer;->a:Lcom/mopub/nativeads/ViewBinder;

    iget v1, v1, Lcom/mopub/nativeads/ViewBinder;->a:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    sget p1, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer;->c:I

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setId(I)V

    invoke-virtual {v0, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    const-string p1, "MoPubToAdMobNative"

    const-string p2, "Ad view created."

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public final d(Lcom/mopub/nativeads/GooglePlayServicesNative$a;Lcom/mopub/nativeads/GooglePlayServicesAdRenderer$a;Lcom/google/android/gms/ads/formats/NativeContentAdView;)V
    .locals 2

    iget-object v0, p2, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer$a;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/mopub/nativeads/GooglePlayServicesNative$a;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mopub/nativeads/NativeRendererHelper;->addTextView(Landroid/widget/TextView;Ljava/lang/String;)V

    iget-object v0, p2, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer$a;->b:Landroid/widget/TextView;

    invoke-virtual {p3, v0}, Lcom/google/android/gms/ads/formats/NativeContentAdView;->setHeadlineView(Landroid/view/View;)V

    iget-object v0, p2, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer$a;->c:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/mopub/nativeads/GooglePlayServicesNative$a;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mopub/nativeads/NativeRendererHelper;->addTextView(Landroid/widget/TextView;Ljava/lang/String;)V

    iget-object v0, p2, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer$a;->c:Landroid/widget/TextView;

    invoke-virtual {p3, v0}, Lcom/google/android/gms/ads/formats/NativeContentAdView;->setBodyView(Landroid/view/View;)V

    iget-object v0, p2, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer$a;->d:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/mopub/nativeads/GooglePlayServicesNative$a;->getCallToAction()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mopub/nativeads/NativeRendererHelper;->addTextView(Landroid/widget/TextView;Ljava/lang/String;)V

    iget-object v0, p2, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer$a;->d:Landroid/widget/TextView;

    invoke-virtual {p3, v0}, Lcom/google/android/gms/ads/formats/NativeContentAdView;->setCallToActionView(Landroid/view/View;)V

    invoke-virtual {p1}, Lcom/mopub/nativeads/GooglePlayServicesNative$a;->getMainImageUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p2, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer$a;->e:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/mopub/nativeads/NativeImageHelper;->loadImageView(Ljava/lang/String;Landroid/widget/ImageView;)V

    iget-object v0, p2, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer$a;->e:Landroid/widget/ImageView;

    invoke-virtual {p3, v0}, Lcom/google/android/gms/ads/formats/NativeContentAdView;->setImageView(Landroid/view/View;)V

    invoke-virtual {p1}, Lcom/mopub/nativeads/GooglePlayServicesNative$a;->getIconImageUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p2, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer$a;->f:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/mopub/nativeads/NativeImageHelper;->loadImageView(Ljava/lang/String;Landroid/widget/ImageView;)V

    iget-object v0, p2, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer$a;->f:Landroid/widget/ImageView;

    invoke-virtual {p3, v0}, Lcom/google/android/gms/ads/formats/NativeContentAdView;->setLogoView(Landroid/view/View;)V

    invoke-virtual {p1}, Lcom/mopub/nativeads/GooglePlayServicesNative$a;->getAdvertiser()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer$a;->i:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/mopub/nativeads/GooglePlayServicesNative$a;->getAdvertiser()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mopub/nativeads/NativeRendererHelper;->addTextView(Landroid/widget/TextView;Ljava/lang/String;)V

    iget-object v0, p2, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer$a;->i:Landroid/widget/TextView;

    invoke-virtual {p3, v0}, Lcom/google/android/gms/ads/formats/NativeContentAdView;->setAdvertiserView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p2, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer$a;->l:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/google/android/gms/ads/formats/AdChoicesView;

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/ads/formats/AdChoicesView;-><init>(Landroid/content/Context;)V

    iget-object v1, p2, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer$a;->l:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V

    iget-object v1, p2, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer$a;->l:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p3, v0}, Lcom/google/android/gms/ads/formats/NativeAdView;->setAdChoicesView(Lcom/google/android/gms/ads/formats/AdChoicesView;)V

    :cond_1
    iget-object p2, p2, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer$a;->g:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-static {p2, v0, v0}, Lcom/mopub/nativeads/NativeRendererHelper;->addPrivacyInformationIcon(Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/mopub/nativeads/GooglePlayServicesNative$a;->getContentAd()Lcom/google/android/gms/ads/formats/NativeContentAd;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/google/android/gms/ads/formats/NativeAdView;->setNativeAd(Lcom/google/android/gms/ads/formats/NativeAd;)V

    return-void
.end method

.method public bridge synthetic renderAdView(Landroid/view/View;Lcom/mopub/nativeads/BaseNativeAd;)V
    .locals 0

    check-cast p2, Lcom/mopub/nativeads/GooglePlayServicesNative$a;

    invoke-virtual {p0, p1, p2}, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer;->renderAdView(Landroid/view/View;Lcom/mopub/nativeads/GooglePlayServicesNative$a;)V

    return-void
.end method

.method public renderAdView(Landroid/view/View;Lcom/mopub/nativeads/GooglePlayServicesNative$a;)V
    .locals 3

    iget-object v0, p0, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer;->b:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer$a;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer;->a:Lcom/mopub/nativeads/ViewBinder;

    invoke-static {p1, v0}, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer$a;->fromViewBinder(Landroid/view/View;Lcom/mopub/nativeads/ViewBinder;)Lcom/mopub/nativeads/GooglePlayServicesAdRenderer$a;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer;->b:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {p2}, Lcom/mopub/nativeads/GooglePlayServicesNative$a;->shouldSwapMargins()Z

    move-result v1

    invoke-static {p1, v1}, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer;->b(Landroid/view/View;Z)V

    const/4 v1, 0x0

    invoke-virtual {p2}, Lcom/mopub/nativeads/GooglePlayServicesNative$a;->isNativeAppInstallAd()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v1, Lcom/google/android/gms/ads/formats/NativeAppInstallAdView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/gms/ads/formats/NativeAppInstallAdView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p2, v0, v1}, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer;->c(Lcom/mopub/nativeads/GooglePlayServicesNative$a;Lcom/mopub/nativeads/GooglePlayServicesAdRenderer$a;Lcom/google/android/gms/ads/formats/NativeAppInstallAdView;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lcom/mopub/nativeads/GooglePlayServicesNative$a;->isNativeContentAd()Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v1, Lcom/google/android/gms/ads/formats/NativeContentAdView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/gms/ads/formats/NativeContentAdView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p2, v0, v1}, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer;->d(Lcom/mopub/nativeads/GooglePlayServicesNative$a;Lcom/mopub/nativeads/GooglePlayServicesAdRenderer$a;Lcom/google/android/gms/ads/formats/NativeContentAdView;)V

    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    invoke-virtual {p2}, Lcom/mopub/nativeads/GooglePlayServicesNative$a;->shouldSwapMargins()Z

    move-result p2

    invoke-static {v1, p1, p2}, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer;->a(Lcom/google/android/gms/ads/formats/NativeAdView;Landroid/view/View;Z)V

    goto :goto_1

    :cond_3
    const-string p1, "MoPubToAdMobNative"

    const-string p2, "Couldn\'t add Google native ad view. NativeAdView is null."

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public supports(Lcom/mopub/nativeads/BaseNativeAd;)Z
    .locals 0

    instance-of p1, p1, Lcom/mopub/nativeads/GooglePlayServicesNative$a;

    return p1
.end method
