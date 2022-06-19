.class public Lcom/mopub/nativeads/PangleAdRenderer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mopub/nativeads/MoPubAdRenderer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/mopub/nativeads/MoPubAdRenderer<",
        "Lcom/mopub/nativeads/PangleAdNative$PangleNativeAd;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/callapp/contacts/util/ads/AdSettings;

.field private final b:Lcom/mopub/nativeads/PangleAdViewBinder;

.field private final c:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/view/View;",
            "Lcom/mopub/nativeads/PangleAdNativeViewHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/mopub/nativeads/PangleAdViewBinder;Lcom/callapp/contacts/util/ads/AdSettings;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/mopub/nativeads/PangleAdRenderer;->b:Lcom/mopub/nativeads/PangleAdViewBinder;

    .line 39
    new-instance p1, Ljava/util/WeakHashMap;

    invoke-direct {p1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object p1, p0, Lcom/mopub/nativeads/PangleAdRenderer;->c:Ljava/util/WeakHashMap;

    .line 40
    iput-object p2, p0, Lcom/mopub/nativeads/PangleAdRenderer;->a:Lcom/callapp/contacts/util/ads/AdSettings;

    return-void
.end method

.method public constructor <init>(Lcom/mopub/nativeads/ViewBinder;Lcom/callapp/contacts/util/ads/AdSettings;)V
    .locals 2

    .line 26
    new-instance v0, Lcom/mopub/nativeads/PangleAdViewBinder$Builder;

    iget v1, p1, Lcom/mopub/nativeads/ViewBinder;->a:I

    invoke-direct {v0, v1}, Lcom/mopub/nativeads/PangleAdViewBinder$Builder;-><init>(I)V

    iget v1, p1, Lcom/mopub/nativeads/ViewBinder;->b:I

    .line 27
    invoke-virtual {v0, v1}, Lcom/mopub/nativeads/PangleAdViewBinder$Builder;->titleId(I)Lcom/mopub/nativeads/PangleAdViewBinder$Builder;

    move-result-object v0

    iget v1, p1, Lcom/mopub/nativeads/ViewBinder;->c:I

    .line 28
    invoke-virtual {v0, v1}, Lcom/mopub/nativeads/PangleAdViewBinder$Builder;->decriptionTextId(I)Lcom/mopub/nativeads/PangleAdViewBinder$Builder;

    move-result-object v0

    iget v1, p1, Lcom/mopub/nativeads/ViewBinder;->d:I

    .line 29
    invoke-virtual {v0, v1}, Lcom/mopub/nativeads/PangleAdViewBinder$Builder;->callToActionId(I)Lcom/mopub/nativeads/PangleAdViewBinder$Builder;

    move-result-object v0

    iget v1, p1, Lcom/mopub/nativeads/ViewBinder;->f:I

    .line 30
    invoke-virtual {v0, v1}, Lcom/mopub/nativeads/PangleAdViewBinder$Builder;->iconImageId(I)Lcom/mopub/nativeads/PangleAdViewBinder$Builder;

    move-result-object v0

    iget v1, p1, Lcom/mopub/nativeads/ViewBinder;->g:I

    .line 31
    invoke-virtual {v0, v1}, Lcom/mopub/nativeads/PangleAdViewBinder$Builder;->logoViewId(I)Lcom/mopub/nativeads/PangleAdViewBinder$Builder;

    move-result-object v0

    iget v1, p1, Lcom/mopub/nativeads/ViewBinder;->e:I

    .line 32
    invoke-virtual {v0, v1}, Lcom/mopub/nativeads/PangleAdViewBinder$Builder;->mediaViewIdId(I)Lcom/mopub/nativeads/PangleAdViewBinder$Builder;

    move-result-object v0

    iget-object p1, p1, Lcom/mopub/nativeads/ViewBinder;->i:Ljava/util/Map;

    .line 33
    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/PangleAdViewBinder$Builder;->addExtras(Ljava/util/Map;)Lcom/mopub/nativeads/PangleAdViewBinder$Builder;

    move-result-object p1

    .line 34
    invoke-virtual {p1}, Lcom/mopub/nativeads/PangleAdViewBinder$Builder;->build()Lcom/mopub/nativeads/PangleAdViewBinder;

    move-result-object p1

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/mopub/nativeads/PangleAdRenderer;-><init>(Lcom/mopub/nativeads/PangleAdViewBinder;Lcom/callapp/contacts/util/ads/AdSettings;)V

    return-void
.end method


# virtual methods
.method public createAdView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .line 45
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/nativeads/PangleAdRenderer;->b:Lcom/mopub/nativeads/PangleAdViewBinder;

    iget v1, v1, Lcom/mopub/nativeads/PangleAdViewBinder;->mLayoutId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 48
    iget-object v0, p0, Lcom/mopub/nativeads/PangleAdRenderer;->b:Lcom/mopub/nativeads/PangleAdViewBinder;

    iget v0, v0, Lcom/mopub/nativeads/PangleAdViewBinder;->mMediaViewId:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p2

    .line 53
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 54
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 57
    instance-of v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v3, :cond_1

    .line 58
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 60
    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v2, v3, v4, v5, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 66
    :cond_1
    new-instance v1, Lcom/bytedance/sdk/openadsdk/adapter/MediaView;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/bytedance/sdk/openadsdk/adapter/MediaView;-><init>(Landroid/content/Context;)V

    .line 67
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 68
    invoke-virtual {p1, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 69
    iget-object v3, p0, Lcom/mopub/nativeads/PangleAdRenderer;->b:Lcom/mopub/nativeads/PangleAdViewBinder;

    iget v3, v3, Lcom/mopub/nativeads/PangleAdViewBinder;->mMediaViewId:I

    invoke-virtual {v1, v3}, Lcom/bytedance/sdk/openadsdk/adapter/MediaView;->setId(I)V

    add-int/lit8 v0, v0, 0x1

    .line 70
    invoke-virtual {p1, v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 71
    invoke-virtual {p1, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-object p2
.end method

.method public bridge synthetic renderAdView(Landroid/view/View;Lcom/mopub/nativeads/BaseNativeAd;)V
    .locals 0

    .line 19
    check-cast p2, Lcom/mopub/nativeads/PangleAdNative$PangleNativeAd;

    invoke-virtual {p0, p1, p2}, Lcom/mopub/nativeads/PangleAdRenderer;->renderAdView(Landroid/view/View;Lcom/mopub/nativeads/PangleAdNative$PangleNativeAd;)V

    return-void
.end method

.method public renderAdView(Landroid/view/View;Lcom/mopub/nativeads/PangleAdNative$PangleNativeAd;)V
    .locals 6

    .line 78
    iget-object v0, p0, Lcom/mopub/nativeads/PangleAdRenderer;->c:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/nativeads/PangleAdNativeViewHolder;

    if-nez v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/mopub/nativeads/PangleAdRenderer;->b:Lcom/mopub/nativeads/PangleAdViewBinder;

    invoke-static {p1, v0}, Lcom/mopub/nativeads/PangleAdNativeViewHolder;->a(Landroid/view/View;Lcom/mopub/nativeads/PangleAdViewBinder;)Lcom/mopub/nativeads/PangleAdNativeViewHolder;

    move-result-object v0

    .line 81
    iget-object v1, p0, Lcom/mopub/nativeads/PangleAdRenderer;->c:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz p2, :cond_9

    if-nez p1, :cond_1

    goto/16 :goto_0

    .line 1095
    :cond_1
    invoke-virtual {p2}, Lcom/mopub/nativeads/PangleAdNative$PangleNativeAd;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, v0, Lcom/mopub/nativeads/PangleAdNativeViewHolder;->mTitleView:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 1096
    iget-object v1, v0, Lcom/mopub/nativeads/PangleAdNativeViewHolder;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/mopub/nativeads/PangleAdNative$PangleNativeAd;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1099
    :cond_2
    invoke-virtual {p2}, Lcom/mopub/nativeads/PangleAdNative$PangleNativeAd;->getAdvertiserName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, v0, Lcom/mopub/nativeads/PangleAdNativeViewHolder;->mAdvertiserNameView:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    .line 1100
    iget-object v1, v0, Lcom/mopub/nativeads/PangleAdNativeViewHolder;->mAdvertiserNameView:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/mopub/nativeads/PangleAdNative$PangleNativeAd;->getAdvertiserName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1103
    :cond_3
    invoke-virtual {p2}, Lcom/mopub/nativeads/PangleAdNative$PangleNativeAd;->getDescriptionText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, v0, Lcom/mopub/nativeads/PangleAdNativeViewHolder;->mDescription:Landroid/widget/TextView;

    if-eqz v1, :cond_4

    .line 1104
    iget-object v1, v0, Lcom/mopub/nativeads/PangleAdNativeViewHolder;->mDescription:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/mopub/nativeads/PangleAdNative$PangleNativeAd;->getDescriptionText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1107
    :cond_4
    invoke-virtual {p2}, Lcom/mopub/nativeads/PangleAdNative$PangleNativeAd;->getCallToAction()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, v0, Lcom/mopub/nativeads/PangleAdNativeViewHolder;->mCallToActionView:Landroid/widget/TextView;

    if-eqz v1, :cond_5

    .line 1108
    iget-object v1, v0, Lcom/mopub/nativeads/PangleAdNativeViewHolder;->mCallToActionView:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/mopub/nativeads/PangleAdNative$PangleNativeAd;->getCallToAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1111
    :cond_5
    invoke-virtual {p2}, Lcom/mopub/nativeads/PangleAdNative$PangleNativeAd;->getIcon()Lcom/bytedance/sdk/openadsdk/TTImage;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {p2}, Lcom/mopub/nativeads/PangleAdNative$PangleNativeAd;->getIcon()Lcom/bytedance/sdk/openadsdk/TTImage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/TTImage;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, v0, Lcom/mopub/nativeads/PangleAdNativeViewHolder;->mIcon:Landroid/widget/ImageView;

    if-eqz v1, :cond_6

    .line 1112
    invoke-virtual {p2}, Lcom/mopub/nativeads/PangleAdNative$PangleNativeAd;->getIcon()Lcom/bytedance/sdk/openadsdk/TTImage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/TTImage;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/mopub/nativeads/PangleAdNativeViewHolder;->mIcon:Landroid/widget/ImageView;

    invoke-static {v1, v2}, Lcom/mopub/nativeads/NativeImageHelper;->loadImageView(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 1115
    :cond_6
    invoke-virtual {p2}, Lcom/mopub/nativeads/PangleAdNative$PangleNativeAd;->getAdLogo()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_7

    iget-object v1, v0, Lcom/mopub/nativeads/PangleAdNativeViewHolder;->mLogoView:Landroid/widget/ImageView;

    if-eqz v1, :cond_7

    .line 1116
    iget-object v1, v0, Lcom/mopub/nativeads/PangleAdNativeViewHolder;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/mopub/nativeads/PangleAdNative$PangleNativeAd;->getAdLogo()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1117
    iget-object v1, v0, Lcom/mopub/nativeads/PangleAdNativeViewHolder;->mLogoView:Landroid/widget/ImageView;

    new-instance v2, Lcom/mopub/nativeads/PangleAdRenderer$1;

    invoke-direct {v2, p0, p2}, Lcom/mopub/nativeads/PangleAdRenderer$1;-><init>(Lcom/mopub/nativeads/PangleAdRenderer;Lcom/mopub/nativeads/PangleAdNative$PangleNativeAd;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1126
    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p2}, Lcom/mopub/nativeads/PangleAdNative$PangleNativeAd;->getImageMode()I

    move-result v2

    iget-object v3, v0, Lcom/mopub/nativeads/PangleAdNativeViewHolder;->mMediaView:Lcom/bytedance/sdk/openadsdk/adapter/MediaView;

    invoke-virtual {p2}, Lcom/mopub/nativeads/PangleAdNative$PangleNativeAd;->getAdView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {p2}, Lcom/mopub/nativeads/PangleAdNative$PangleNativeAd;->getImageList()Ljava/util/List;

    move-result-object v5

    invoke-static {v1, v2, v3, v4, v5}, Lcom/bytedance/sdk/openadsdk/adapter/MediationAdapterUtil;->addNativeFeedMainView(Landroid/content/Context;ILcom/bytedance/sdk/openadsdk/adapter/MediaView;Landroid/view/View;Ljava/util/List;)V

    .line 1129
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1130
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1133
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1134
    iget-object v3, v0, Lcom/mopub/nativeads/PangleAdNativeViewHolder;->mCallToActionView:Landroid/widget/TextView;

    if-eqz v3, :cond_8

    .line 1135
    iget-object v0, v0, Lcom/mopub/nativeads/PangleAdNativeViewHolder;->mCallToActionView:Landroid/widget/TextView;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1138
    :cond_8
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    new-instance v3, Lcom/mopub/nativeads/PangleAdRenderer$2;

    invoke-direct {v3, p0, p2}, Lcom/mopub/nativeads/PangleAdRenderer$2;-><init>(Lcom/mopub/nativeads/PangleAdRenderer;Lcom/mopub/nativeads/PangleAdNative$PangleNativeAd;)V

    invoke-virtual {p2, v0, v1, v2, v3}, Lcom/mopub/nativeads/PangleAdNative$PangleNativeAd;->registerViewForInteraction(Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Lcom/bytedance/sdk/openadsdk/TTNativeAd$AdInteractionListener;)V

    :cond_9
    :goto_0
    const-string v0, "was_animated"

    .line 85
    invoke-virtual {p2, v0}, Lcom/mopub/nativeads/PangleAdNative$PangleNativeAd;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 86
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p2, v0, v2}, Lcom/mopub/nativeads/PangleAdNative$PangleNativeAd;->addExtra(Ljava/lang/String;Ljava/lang/Object;)V

    .line 87
    iget-object p2, p0, Lcom/mopub/nativeads/PangleAdRenderer;->a:Lcom/callapp/contacts/util/ads/AdSettings;

    if-eqz v1, :cond_a

    const/4 v0, 0x1

    goto :goto_1

    :cond_a
    const/4 v0, 0x0

    :goto_1
    invoke-static {p1, p2, v0}, Lcom/mopub/nativeads/CallAppMoPubStaticNativeAdRenderer;->a(Landroid/view/View;Lcom/callapp/contacts/util/ads/AdSettings;Z)V

    return-void
.end method

.method public supports(Lcom/mopub/nativeads/BaseNativeAd;)Z
    .locals 0

    .line 158
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 159
    instance-of p1, p1, Lcom/mopub/nativeads/PangleAdNative$PangleNativeAd;

    return p1
.end method
