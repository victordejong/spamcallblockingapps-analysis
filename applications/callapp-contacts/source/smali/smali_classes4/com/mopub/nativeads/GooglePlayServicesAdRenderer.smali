.class public Lcom/mopub/nativeads/GooglePlayServicesAdRenderer;
.super Ljava/lang/Object;
.source "SourceFile"

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
        "Lcom/mopub/nativeads/GooglePlayServicesNative$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final VIEW_BINDER_KEY_STAR_RATING:Ljava/lang/String; = "key_star_rating"

.field private static final d:Ljava/lang/String; = "GooglePlayServicesAdRenderer"


# instance fields
.field private final a:Lcom/callapp/contacts/util/ads/AdSettings;

.field private final b:Lcom/mopub/nativeads/GooglePlayServicesViewBinder;

.field private final c:Ljava/util/WeakHashMap;
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
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/mopub/nativeads/GooglePlayServicesViewBinder;Lcom/callapp/contacts/util/ads/AdSettings;)V
    .locals 0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object p1, p0, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer;->b:Lcom/mopub/nativeads/GooglePlayServicesViewBinder;

    .line 104
    new-instance p1, Ljava/util/WeakHashMap;

    invoke-direct {p1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object p1, p0, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer;->c:Ljava/util/WeakHashMap;

    .line 105
    iput-object p2, p0, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer;->a:Lcom/callapp/contacts/util/ads/AdSettings;

    return-void
.end method

.method public constructor <init>(Lcom/mopub/nativeads/ViewBinder;Lcom/callapp/contacts/util/ads/AdSettings;)V
    .locals 2

    .line 91
    new-instance v0, Lcom/mopub/nativeads/GooglePlayServicesViewBinder$Builder;

    iget v1, p1, Lcom/mopub/nativeads/ViewBinder;->a:I

    invoke-direct {v0, v1}, Lcom/mopub/nativeads/GooglePlayServicesViewBinder$Builder;-><init>(I)V

    iget v1, p1, Lcom/mopub/nativeads/ViewBinder;->b:I

    .line 92
    invoke-virtual {v0, v1}, Lcom/mopub/nativeads/GooglePlayServicesViewBinder$Builder;->titleId(I)Lcom/mopub/nativeads/GooglePlayServicesViewBinder$Builder;

    move-result-object v0

    iget v1, p1, Lcom/mopub/nativeads/ViewBinder;->c:I

    .line 93
    invoke-virtual {v0, v1}, Lcom/mopub/nativeads/GooglePlayServicesViewBinder$Builder;->textId(I)Lcom/mopub/nativeads/GooglePlayServicesViewBinder$Builder;

    move-result-object v0

    iget v1, p1, Lcom/mopub/nativeads/ViewBinder;->d:I

    .line 94
    invoke-virtual {v0, v1}, Lcom/mopub/nativeads/GooglePlayServicesViewBinder$Builder;->callToActionId(I)Lcom/mopub/nativeads/GooglePlayServicesViewBinder$Builder;

    move-result-object v0

    iget v1, p1, Lcom/mopub/nativeads/ViewBinder;->f:I

    .line 95
    invoke-virtual {v0, v1}, Lcom/mopub/nativeads/GooglePlayServicesViewBinder$Builder;->iconImageId(I)Lcom/mopub/nativeads/GooglePlayServicesViewBinder$Builder;

    move-result-object v0

    iget v1, p1, Lcom/mopub/nativeads/ViewBinder;->g:I

    .line 96
    invoke-virtual {v0, v1}, Lcom/mopub/nativeads/GooglePlayServicesViewBinder$Builder;->privacyInformationIconImageId(I)Lcom/mopub/nativeads/GooglePlayServicesViewBinder$Builder;

    move-result-object v0

    iget v1, p1, Lcom/mopub/nativeads/ViewBinder;->e:I

    .line 97
    invoke-virtual {v0, v1}, Lcom/mopub/nativeads/GooglePlayServicesViewBinder$Builder;->mediaLayoutId(I)Lcom/mopub/nativeads/GooglePlayServicesViewBinder$Builder;

    move-result-object v0

    iget-object p1, p1, Lcom/mopub/nativeads/ViewBinder;->i:Ljava/util/Map;

    .line 98
    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/GooglePlayServicesViewBinder$Builder;->addExtras(Ljava/util/Map;)Lcom/mopub/nativeads/GooglePlayServicesViewBinder$Builder;

    move-result-object p1

    .line 99
    invoke-virtual {p1}, Lcom/mopub/nativeads/GooglePlayServicesViewBinder$Builder;->build()Lcom/mopub/nativeads/GooglePlayServicesViewBinder;

    move-result-object p1

    .line 91
    invoke-direct {p0, p1, p2}, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer;-><init>(Lcom/mopub/nativeads/GooglePlayServicesViewBinder;Lcom/callapp/contacts/util/ads/AdSettings;)V

    return-void
.end method


# virtual methods
.method public createAdView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    .line 111
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer;->b:Lcom/mopub/nativeads/GooglePlayServicesViewBinder;

    iget v1, v1, Lcom/mopub/nativeads/GooglePlayServicesViewBinder;->a:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 114
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x3e9

    .line 115
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setId(I)V

    .line 116
    invoke-virtual {v0, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 118
    iget-object p2, p0, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer;->b:Lcom/mopub/nativeads/GooglePlayServicesViewBinder;

    iget p2, p2, Lcom/mopub/nativeads/GooglePlayServicesViewBinder;->b:I

    invoke-virtual {v0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    .line 120
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 121
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    iget v5, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v4, v5, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 124
    new-instance v3, Lcom/google/android/gms/ads/formats/MediaView;

    invoke-direct {v3, p1}, Lcom/google/android/gms/ads/formats/MediaView;-><init>(Landroid/content/Context;)V

    .line 125
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 126
    invoke-virtual {p1, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v5

    .line 127
    iget-object v6, p0, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer;->b:Lcom/mopub/nativeads/GooglePlayServicesViewBinder;

    iget v6, v6, Lcom/mopub/nativeads/GooglePlayServicesViewBinder;->b:I

    invoke-virtual {v3, v6}, Lcom/google/android/gms/ads/formats/MediaView;->setId(I)V

    add-int/2addr v5, v1

    .line 128
    invoke-virtual {p1, v3, v5, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 129
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 132
    :cond_0
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    sget-object v3, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer;->d:Ljava/lang/String;

    aput-object v3, p2, v2

    const-string v2, "Ad view created."

    aput-object v2, p2, v1

    invoke-static {p1, p2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public bridge synthetic renderAdView(Landroid/view/View;Lcom/mopub/nativeads/BaseNativeAd;)V
    .locals 0

    .line 34
    check-cast p2, Lcom/mopub/nativeads/GooglePlayServicesNative$b;

    invoke-virtual {p0, p1, p2}, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer;->renderAdView(Landroid/view/View;Lcom/mopub/nativeads/GooglePlayServicesNative$b;)V

    return-void
.end method

.method public renderAdView(Landroid/view/View;Lcom/mopub/nativeads/GooglePlayServicesNative$b;)V
    .locals 11

    .line 139
    iget-object v0, p0, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer;->c:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer$a;

    if-nez v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer;->b:Lcom/mopub/nativeads/GooglePlayServicesViewBinder;

    invoke-static {p1, v0}, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer$a;->fromViewBinder(Landroid/view/View;Lcom/mopub/nativeads/GooglePlayServicesViewBinder;)Lcom/mopub/nativeads/GooglePlayServicesAdRenderer$a;

    move-result-object v0

    .line 142
    iget-object v1, p0, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer;->c:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    :cond_0
    new-instance v1, Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;-><init>(Landroid/content/Context;)V

    .line 146
    iget-object v2, p0, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer;->b:Lcom/mopub/nativeads/GooglePlayServicesViewBinder;

    iget v2, v2, Lcom/mopub/nativeads/GooglePlayServicesViewBinder;->b:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/ads/formats/MediaView;

    if-eqz v2, :cond_1

    .line 148
    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;->setMediaView(Lcom/google/android/gms/ads/formats/MediaView;)V

    .line 1239
    :cond_1
    iget-object v2, v0, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer$a;->b:Landroid/widget/TextView;

    .line 1240
    invoke-virtual {p2}, Lcom/mopub/nativeads/GooglePlayServicesNative$b;->getTitle()Ljava/lang/String;

    move-result-object v3

    .line 1239
    invoke-static {v2, v3}, Lcom/mopub/nativeads/NativeRendererHelper;->addTextView(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 1241
    iget-object v2, v0, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer$a;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;->setHeadlineView(Landroid/view/View;)V

    .line 1242
    iget-object v2, v0, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer$a;->c:Landroid/widget/TextView;

    .line 1243
    invoke-virtual {p2}, Lcom/mopub/nativeads/GooglePlayServicesNative$b;->getText()Ljava/lang/String;

    move-result-object v3

    .line 1242
    invoke-static {v2, v3}, Lcom/mopub/nativeads/NativeRendererHelper;->addTextView(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 1244
    iget-object v2, v0, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer$a;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;->setBodyView(Landroid/view/View;)V

    .line 1246
    iget-object v2, v0, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer$a;->d:Landroid/widget/TextView;

    .line 1247
    invoke-virtual {p2}, Lcom/mopub/nativeads/GooglePlayServicesNative$b;->getCallToAction()Ljava/lang/String;

    move-result-object v3

    .line 1246
    invoke-static {v2, v3}, Lcom/mopub/nativeads/NativeRendererHelper;->addTextView(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 1249
    invoke-virtual {v1, v1}, Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;->setCallToActionView(Landroid/view/View;)V

    .line 1250
    invoke-virtual {p2}, Lcom/mopub/nativeads/GooglePlayServicesNative$b;->getIconImageUrl()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer$a;->e:Landroid/widget/ImageView;

    invoke-static {v2, v3}, Lcom/mopub/nativeads/NativeImageHelper;->loadImageView(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 1252
    iget-object v2, v0, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer$a;->e:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;->setImageView(Landroid/view/View;)V

    .line 1253
    invoke-virtual {p2}, Lcom/mopub/nativeads/GooglePlayServicesNative$b;->getAdvertiser()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1254
    iget-object v2, v0, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer$a;->h:Landroid/widget/TextView;

    .line 1255
    invoke-virtual {p2}, Lcom/mopub/nativeads/GooglePlayServicesNative$b;->getAdvertiser()Ljava/lang/String;

    move-result-object v3

    .line 1254
    invoke-static {v2, v3}, Lcom/mopub/nativeads/NativeRendererHelper;->addTextView(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 1256
    iget-object v2, v0, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer$a;->h:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;->setAdvertiserView(Landroid/view/View;)V

    .line 1259
    :cond_2
    iget-object v2, v0, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer$a;->k:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_3

    .line 1260
    new-instance v2, Lcom/google/android/gms/ads/formats/AdChoicesView;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/gms/ads/formats/AdChoicesView;-><init>(Landroid/content/Context;)V

    .line 1261
    iget-object v3, v0, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer$a;->k:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 1262
    iget-object v3, v0, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer$a;->k:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1263
    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;->setAdChoicesView(Lcom/google/android/gms/ads/formats/AdChoicesView;)V

    .line 1268
    :cond_3
    iget-object v0, v0, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer$a;->f:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-static {v0, v2, v2}, Lcom/mopub/nativeads/NativeRendererHelper;->addPrivacyInformationIcon(Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/String;)V

    .line 1271
    invoke-virtual {p2}, Lcom/mopub/nativeads/GooglePlayServicesNative$b;->getUnifiedNativeAd()Lcom/google/android/gms/ads/formats/UnifiedNativeAd;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;->setNativeAd(Lcom/google/android/gms/ads/formats/UnifiedNativeAd;)V

    .line 152
    invoke-virtual {p2}, Lcom/mopub/nativeads/GooglePlayServicesNative$b;->shouldSwapMargins()Z

    move-result v0

    .line 2174
    sget-object v2, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->SHOW_ATTEMPTED:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    sget-object v5, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer;->d:Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v2, v4}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 2176
    instance-of v2, p1, Landroid/widget/FrameLayout;

    if-eqz v2, :cond_6

    .line 2177
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const/16 v4, 0x3e9

    if-ne v2, v4, :cond_6

    const/16 v2, 0x3ea

    .line 2179
    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;->setId(I)V

    .line 2180
    move-object v2, p1

    check-cast v2, Landroid/widget/FrameLayout;

    .line 2181
    invoke-virtual {v2, v6}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f0a0522

    .line 2184
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 2187
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout;

    if-eqz v7, :cond_4

    move-object v4, v5

    move-object v2, v7

    :cond_4
    const/4 v5, -0x1

    if-eqz v0, :cond_5

    .line 2201
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 2204
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 2205
    iget v7, v5, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v8, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v9, v5, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iget v10, v5, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v0, v7, v8, v9, v10}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 2209
    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2210
    invoke-virtual {v5, v6, v6, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    .line 2212
    :cond_5
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2216
    :goto_0
    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 2217
    invoke-virtual {v1, v4}, Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;->addView(Landroid/view/View;)V

    .line 2218
    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 2220
    :cond_6
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v5, v1, v6

    const-string v2, "Couldn\'t add Google native ad view. Wrapping view not found."

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    :goto_1
    const-string v0, "was_animated"

    .line 155
    invoke-virtual {p2, v0}, Lcom/mopub/nativeads/GooglePlayServicesNative$b;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 156
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p2, v0, v2}, Lcom/mopub/nativeads/GooglePlayServicesNative$b;->addExtra(Ljava/lang/String;Ljava/lang/Object;)V

    .line 157
    iget-object p2, p0, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer;->a:Lcom/callapp/contacts/util/ads/AdSettings;

    if-eqz v1, :cond_7

    goto :goto_2

    :cond_7
    const/4 v3, 0x0

    :goto_2
    invoke-static {p1, p2, v3}, Lcom/mopub/nativeads/CallAppMoPubStaticNativeAdRenderer;->a(Landroid/view/View;Lcom/callapp/contacts/util/ads/AdSettings;Z)V

    return-void
.end method

.method public supports(Lcom/mopub/nativeads/BaseNativeAd;)Z
    .locals 0

    .line 276
    instance-of p1, p1, Lcom/mopub/nativeads/GooglePlayServicesNative$a;

    return p1
.end method
