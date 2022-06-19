.class public Lcom/mopub/nativeads/FacebookAdRenderer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mopub/nativeads/MoPubAdRenderer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/nativeads/FacebookAdRenderer$FacebookViewBinder;,
        Lcom/mopub/nativeads/FacebookAdRenderer$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/mopub/nativeads/MoPubAdRenderer<",
        "Lcom/mopub/nativeads/FacebookNative$a;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/view/View;",
            "Lcom/mopub/nativeads/FacebookAdRenderer$a;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/callapp/contacts/util/ads/AdSettings;

.field private final c:Lcom/mopub/nativeads/FacebookAdRenderer$FacebookViewBinder;


# direct methods
.method public constructor <init>(Lcom/mopub/nativeads/FacebookAdRenderer$FacebookViewBinder;Lcom/callapp/contacts/util/ads/AdSettings;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/mopub/nativeads/FacebookAdRenderer;->c:Lcom/mopub/nativeads/FacebookAdRenderer$FacebookViewBinder;

    .line 57
    new-instance p1, Ljava/util/WeakHashMap;

    invoke-direct {p1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object p1, p0, Lcom/mopub/nativeads/FacebookAdRenderer;->a:Ljava/util/WeakHashMap;

    .line 58
    iput-object p2, p0, Lcom/mopub/nativeads/FacebookAdRenderer;->b:Lcom/callapp/contacts/util/ads/AdSettings;

    return-void
.end method

.method public constructor <init>(Lcom/mopub/nativeads/ViewBinder;Lcom/callapp/contacts/util/ads/AdSettings;)V
    .locals 2

    .line 39
    new-instance v0, Lcom/mopub/nativeads/FacebookAdRenderer$FacebookViewBinder$Builder;

    iget v1, p1, Lcom/mopub/nativeads/ViewBinder;->a:I

    invoke-direct {v0, v1}, Lcom/mopub/nativeads/FacebookAdRenderer$FacebookViewBinder$Builder;-><init>(I)V

    iget v1, p1, Lcom/mopub/nativeads/ViewBinder;->b:I

    .line 40
    invoke-virtual {v0, v1}, Lcom/mopub/nativeads/FacebookAdRenderer$FacebookViewBinder$Builder;->titleId(I)Lcom/mopub/nativeads/FacebookAdRenderer$FacebookViewBinder$Builder;

    move-result-object v0

    iget v1, p1, Lcom/mopub/nativeads/ViewBinder;->c:I

    .line 41
    invoke-virtual {v0, v1}, Lcom/mopub/nativeads/FacebookAdRenderer$FacebookViewBinder$Builder;->textId(I)Lcom/mopub/nativeads/FacebookAdRenderer$FacebookViewBinder$Builder;

    move-result-object v0

    iget v1, p1, Lcom/mopub/nativeads/ViewBinder;->d:I

    .line 42
    invoke-virtual {v0, v1}, Lcom/mopub/nativeads/FacebookAdRenderer$FacebookViewBinder$Builder;->callToActionId(I)Lcom/mopub/nativeads/FacebookAdRenderer$FacebookViewBinder$Builder;

    move-result-object v0

    iget v1, p1, Lcom/mopub/nativeads/ViewBinder;->e:I

    .line 43
    invoke-virtual {v0, v1}, Lcom/mopub/nativeads/FacebookAdRenderer$FacebookViewBinder$Builder;->mediaViewId(I)Lcom/mopub/nativeads/FacebookAdRenderer$FacebookViewBinder$Builder;

    move-result-object v0

    iget v1, p1, Lcom/mopub/nativeads/ViewBinder;->f:I

    .line 44
    invoke-virtual {v0, v1}, Lcom/mopub/nativeads/FacebookAdRenderer$FacebookViewBinder$Builder;->adIconViewId(I)Lcom/mopub/nativeads/FacebookAdRenderer$FacebookViewBinder$Builder;

    move-result-object v0

    const v1, 0x7f0a00b2

    .line 45
    invoke-virtual {v0, v1}, Lcom/mopub/nativeads/FacebookAdRenderer$FacebookViewBinder$Builder;->adChoicesRelativeLayoutId(I)Lcom/mopub/nativeads/FacebookAdRenderer$FacebookViewBinder$Builder;

    move-result-object v0

    iget-object p1, p1, Lcom/mopub/nativeads/ViewBinder;->i:Ljava/util/Map;

    .line 46
    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/FacebookAdRenderer$FacebookViewBinder$Builder;->extras(Ljava/util/Map;)Lcom/mopub/nativeads/FacebookAdRenderer$FacebookViewBinder$Builder;

    move-result-object p1

    .line 47
    invoke-virtual {p1}, Lcom/mopub/nativeads/FacebookAdRenderer$FacebookViewBinder$Builder;->build()Lcom/mopub/nativeads/FacebookAdRenderer$FacebookViewBinder;

    move-result-object p1

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/mopub/nativeads/FacebookAdRenderer;-><init>(Lcom/mopub/nativeads/FacebookAdRenderer$FacebookViewBinder;Lcom/callapp/contacts/util/ads/AdSettings;)V

    return-void
.end method


# virtual methods
.method public createAdView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/nativeads/FacebookAdRenderer;->c:Lcom/mopub/nativeads/FacebookAdRenderer$FacebookViewBinder;

    iget v1, v1, Lcom/mopub/nativeads/FacebookAdRenderer$FacebookViewBinder;->a:I

    const/4 v2, 0x0

    .line 65
    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 68
    iget-object v0, p0, Lcom/mopub/nativeads/FacebookAdRenderer;->c:Lcom/mopub/nativeads/FacebookAdRenderer$FacebookViewBinder;

    iget v0, v0, Lcom/mopub/nativeads/FacebookAdRenderer$FacebookViewBinder;->h:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p2

    .line 73
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 74
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    iget v4, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v5, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 77
    instance-of v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v4, :cond_1

    .line 78
    move-object v4, v1

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 80
    iget v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v6, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v7, v4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v3, v5, v6, v7, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 86
    :cond_1
    instance-of v4, v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v5, 0x4

    const/16 v6, 0x8

    if-eqz v4, :cond_3

    .line 87
    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 89
    invoke-virtual {v1}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v1

    const/4 v4, 0x0

    .line 90
    :goto_0
    array-length v7, v1

    if-ge v4, v7, :cond_2

    .line 91
    aget v7, v1, v4

    invoke-virtual {v3, v4, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 93
    :cond_2
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 95
    :cond_3
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 98
    :goto_1
    new-instance v1, Lcom/facebook/ads/MediaView;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/facebook/ads/MediaView;-><init>(Landroid/content/Context;)V

    .line 99
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 100
    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v7

    .line 101
    iget-object v8, p0, Lcom/mopub/nativeads/FacebookAdRenderer;->c:Lcom/mopub/nativeads/FacebookAdRenderer$FacebookViewBinder;

    iget v8, v8, Lcom/mopub/nativeads/FacebookAdRenderer$FacebookViewBinder;->h:I

    invoke-virtual {v1, v8}, Lcom/facebook/ads/MediaView;->setId(I)V

    add-int/lit8 v7, v7, 0x1

    .line 102
    invoke-virtual {v4, v1, v7, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 103
    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 107
    iget-object v0, p0, Lcom/mopub/nativeads/FacebookAdRenderer;->c:Lcom/mopub/nativeads/FacebookAdRenderer$FacebookViewBinder;

    iget v0, v0, Lcom/mopub/nativeads/FacebookAdRenderer$FacebookViewBinder;->g:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_4

    return-object p2

    .line 112
    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 113
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    iget v4, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v7, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v3, v4, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 116
    instance-of v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v4, :cond_5

    .line 117
    move-object v4, v1

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 119
    iget v7, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v8, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v9, v4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v3, v7, v8, v9, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 125
    :cond_5
    instance-of v4, v1, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v4, :cond_7

    .line 126
    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 128
    invoke-virtual {v1}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v1

    .line 129
    :goto_2
    array-length v4, v1

    if-ge v2, v4, :cond_6

    .line 130
    aget v4, v1, v2

    invoke-virtual {v3, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 132
    :cond_6
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 134
    :cond_7
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 137
    :goto_3
    new-instance v1, Lcom/facebook/ads/MediaView;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/facebook/ads/MediaView;-><init>(Landroid/content/Context;)V

    .line 138
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 139
    invoke-virtual {p1, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 140
    iget-object v2, p0, Lcom/mopub/nativeads/FacebookAdRenderer;->c:Lcom/mopub/nativeads/FacebookAdRenderer$FacebookViewBinder;

    iget v2, v2, Lcom/mopub/nativeads/FacebookAdRenderer$FacebookViewBinder;->g:I

    invoke-virtual {v1, v2}, Lcom/facebook/ads/MediaView;->setId(I)V

    add-int/lit8 v0, v0, 0x1

    .line 141
    invoke-virtual {p1, v1, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 142
    invoke-virtual {p1, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-object p2
.end method

.method public bridge synthetic renderAdView(Landroid/view/View;Lcom/mopub/nativeads/BaseNativeAd;)V
    .locals 0

    .line 28
    check-cast p2, Lcom/mopub/nativeads/FacebookNative$a;

    invoke-virtual {p0, p1, p2}, Lcom/mopub/nativeads/FacebookAdRenderer;->renderAdView(Landroid/view/View;Lcom/mopub/nativeads/FacebookNative$a;)V

    return-void
.end method

.method public renderAdView(Landroid/view/View;Lcom/mopub/nativeads/FacebookNative$a;)V
    .locals 7

    .line 150
    iget-object v0, p0, Lcom/mopub/nativeads/FacebookAdRenderer;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/nativeads/FacebookAdRenderer$a;

    if-nez v0, :cond_2

    .line 152
    iget-object v0, p0, Lcom/mopub/nativeads/FacebookAdRenderer;->c:Lcom/mopub/nativeads/FacebookAdRenderer$FacebookViewBinder;

    if-eqz p1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    .line 1242
    :cond_0
    new-instance v1, Lcom/mopub/nativeads/FacebookAdRenderer$a;

    invoke-direct {v1}, Lcom/mopub/nativeads/FacebookAdRenderer$a;-><init>()V

    .line 1243
    iput-object p1, v1, Lcom/mopub/nativeads/FacebookAdRenderer$a;->a:Landroid/view/View;

    .line 1244
    iget v2, v0, Lcom/mopub/nativeads/FacebookAdRenderer$FacebookViewBinder;->b:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/mopub/nativeads/FacebookAdRenderer$a;->b:Landroid/widget/TextView;

    .line 1245
    iget v2, v0, Lcom/mopub/nativeads/FacebookAdRenderer$FacebookViewBinder;->c:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/mopub/nativeads/FacebookAdRenderer$a;->c:Landroid/widget/TextView;

    .line 1246
    iget v2, v0, Lcom/mopub/nativeads/FacebookAdRenderer$FacebookViewBinder;->d:I

    .line 1247
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/mopub/nativeads/FacebookAdRenderer$a;->d:Landroid/widget/TextView;

    .line 1248
    iget v2, v0, Lcom/mopub/nativeads/FacebookAdRenderer$FacebookViewBinder;->e:I

    .line 1249
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, v1, Lcom/mopub/nativeads/FacebookAdRenderer$a;->e:Landroid/widget/RelativeLayout;

    .line 1250
    iget v2, v0, Lcom/mopub/nativeads/FacebookAdRenderer$FacebookViewBinder;->g:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/MediaView;

    iput-object v2, v1, Lcom/mopub/nativeads/FacebookAdRenderer$a;->f:Lcom/facebook/ads/MediaView;

    .line 1251
    iget v2, v0, Lcom/mopub/nativeads/FacebookAdRenderer$FacebookViewBinder;->h:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/MediaView;

    iput-object v2, v1, Lcom/mopub/nativeads/FacebookAdRenderer$a;->g:Lcom/facebook/ads/MediaView;

    .line 1252
    iget v2, v0, Lcom/mopub/nativeads/FacebookAdRenderer$FacebookViewBinder;->i:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/mopub/nativeads/FacebookAdRenderer$a;->h:Landroid/widget/TextView;

    .line 1253
    iget v0, v0, Lcom/mopub/nativeads/FacebookAdRenderer$FacebookViewBinder;->j:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/mopub/nativeads/FacebookAdRenderer$a;->i:Landroid/widget/TextView;

    move-object v0, v1

    goto :goto_1

    .line 1239
    :cond_1
    :goto_0
    new-instance v0, Lcom/mopub/nativeads/FacebookAdRenderer$a;

    invoke-direct {v0}, Lcom/mopub/nativeads/FacebookAdRenderer$a;-><init>()V

    .line 153
    :goto_1
    iget-object v1, p0, Lcom/mopub/nativeads/FacebookAdRenderer;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2175
    :cond_2
    invoke-virtual {v0}, Lcom/mopub/nativeads/FacebookAdRenderer$a;->getTitleView()Landroid/widget/TextView;

    move-result-object v1

    .line 2176
    invoke-virtual {p2}, Lcom/mopub/nativeads/FacebookNative$a;->getTitle()Ljava/lang/String;

    move-result-object v2

    .line 2175
    invoke-static {v1, v2}, Lcom/mopub/nativeads/NativeRendererHelper;->addTextView(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 2177
    invoke-virtual {v0}, Lcom/mopub/nativeads/FacebookAdRenderer$a;->getTextView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {p2}, Lcom/mopub/nativeads/FacebookNative$a;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mopub/nativeads/NativeRendererHelper;->addTextView(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 2178
    invoke-virtual {v0}, Lcom/mopub/nativeads/FacebookAdRenderer$a;->getCallToActionView()Landroid/widget/TextView;

    move-result-object v1

    .line 2179
    invoke-virtual {p2}, Lcom/mopub/nativeads/FacebookNative$a;->getCallToAction()Ljava/lang/String;

    move-result-object v2

    .line 2178
    invoke-static {v1, v2}, Lcom/mopub/nativeads/NativeRendererHelper;->addTextView(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 2180
    invoke-virtual {v0}, Lcom/mopub/nativeads/FacebookAdRenderer$a;->getAdvertiserNameView()Landroid/widget/TextView;

    move-result-object v1

    .line 2181
    invoke-virtual {p2}, Lcom/mopub/nativeads/FacebookNative$a;->getAdvertiserName()Ljava/lang/String;

    move-result-object v2

    .line 2180
    invoke-static {v1, v2}, Lcom/mopub/nativeads/NativeRendererHelper;->addTextView(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 2182
    invoke-virtual {v0}, Lcom/mopub/nativeads/FacebookAdRenderer$a;->getSponsoredLabelView()Landroid/widget/TextView;

    move-result-object v1

    .line 2183
    invoke-virtual {p2}, Lcom/mopub/nativeads/FacebookNative$a;->getSponsoredName()Ljava/lang/String;

    move-result-object v2

    .line 2182
    invoke-static {v1, v2}, Lcom/mopub/nativeads/NativeRendererHelper;->addTextView(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 2186
    invoke-virtual {v0}, Lcom/mopub/nativeads/FacebookAdRenderer$a;->getAdChoicesContainer()Landroid/widget/RelativeLayout;

    move-result-object v1

    .line 2187
    invoke-static {}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->get()Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;

    move-result-object v2

    const-string v3, "facebookCTAOnlyClick"

    invoke-virtual {v2, v3}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2188
    invoke-virtual {v0}, Lcom/mopub/nativeads/FacebookAdRenderer$a;->getCallToActionView()Landroid/widget/TextView;

    move-result-object v2

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Lcom/mopub/nativeads/FacebookAdRenderer$a;->getMainView()Landroid/view/View;

    move-result-object v2

    .line 2189
    :goto_2
    invoke-virtual {v0}, Lcom/mopub/nativeads/FacebookAdRenderer$a;->getMediaView()Lcom/facebook/ads/MediaView;

    move-result-object v3

    invoke-virtual {v0}, Lcom/mopub/nativeads/FacebookAdRenderer$a;->getAdIconView()Lcom/facebook/ads/MediaView;

    move-result-object v4

    .line 2363
    iget-object v5, p2, Lcom/mopub/nativeads/FacebookNative$a;->a:Lcom/facebook/ads/NativeAdBase;

    invoke-static {v2, v5, v3, v4}, Lcom/mopub/nativeads/FacebookNative;->a(Landroid/view/View;Lcom/facebook/ads/NativeAdBase;Lcom/facebook/ads/MediaView;Lcom/facebook/ads/MediaView;)V

    if-nez v3, :cond_4

    if-eqz v4, :cond_6

    .line 2366
    :cond_4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p2, Lcom/mopub/nativeads/FacebookNative$a;->b:Ljava/util/List;

    if-eqz v3, :cond_5

    .line 2369
    iget-object v2, p2, Lcom/mopub/nativeads/FacebookNative$a;->b:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    if-eqz v4, :cond_6

    .line 2373
    iget-object v2, p2, Lcom/mopub/nativeads/FacebookNative$a;->b:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    const/4 v2, 0x1

    if-eqz v1, :cond_9

    .line 2191
    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->removeAllViews()V

    const/4 v3, 0x0

    .line 3212
    iget-object v4, v0, Lcom/mopub/nativeads/FacebookAdRenderer$a;->a:Landroid/view/View;

    .line 2193
    instance-of v4, v4, Lcom/facebook/ads/NativeAdLayout;

    if-eqz v4, :cond_7

    .line 4212
    iget-object v3, v0, Lcom/mopub/nativeads/FacebookAdRenderer$a;->a:Landroid/view/View;

    .line 2194
    check-cast v3, Lcom/facebook/ads/NativeAdLayout;

    .line 2196
    :cond_7
    new-instance v4, Lcom/facebook/ads/AdOptionsView;

    .line 2198
    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    .line 4383
    iget-object v6, p2, Lcom/mopub/nativeads/FacebookNative$a;->a:Lcom/facebook/ads/NativeAdBase;

    .line 2199
    invoke-direct {v4, v5, v6, v3}, Lcom/facebook/ads/AdOptionsView;-><init>(Landroid/content/Context;Lcom/facebook/ads/NativeAdBase;Lcom/facebook/ads/NativeAdLayout;)V

    .line 2201
    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 2202
    instance-of v5, v3, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v5, :cond_8

    .line 2203
    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v5, 0x15

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 2206
    :cond_8
    invoke-virtual {v4, v2}, Lcom/facebook/ads/AdOptionsView;->setSingleIcon(Z)V

    .line 2208
    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 157
    :cond_9
    invoke-virtual {v0}, Lcom/mopub/nativeads/FacebookAdRenderer$a;->getMainView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/nativeads/FacebookAdRenderer;->c:Lcom/mopub/nativeads/FacebookAdRenderer$FacebookViewBinder;

    iget-object v1, v1, Lcom/mopub/nativeads/FacebookAdRenderer$FacebookViewBinder;->f:Ljava/util/Map;

    .line 159
    invoke-virtual {p2}, Lcom/mopub/nativeads/FacebookNative$a;->getExtras()Ljava/util/Map;

    move-result-object v3

    .line 157
    invoke-static {v0, v1, v3}, Lcom/mopub/nativeads/NativeRendererHelper;->updateExtras(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;)V

    const-string v0, "was_animated"

    .line 162
    invoke-virtual {p2, v0}, Lcom/mopub/nativeads/FacebookNative$a;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 163
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p2, v0, v3}, Lcom/mopub/nativeads/FacebookNative$a;->addExtra(Ljava/lang/String;Ljava/lang/Object;)V

    .line 164
    iget-object p2, p0, Lcom/mopub/nativeads/FacebookAdRenderer;->b:Lcom/callapp/contacts/util/ads/AdSettings;

    if-eqz v1, :cond_a

    goto :goto_3

    :cond_a
    const/4 v2, 0x0

    :goto_3
    invoke-static {p1, p2, v2}, Lcom/mopub/nativeads/CallAppMoPubStaticNativeAdRenderer;->a(Landroid/view/View;Lcom/callapp/contacts/util/ads/AdSettings;Z)V

    return-void
.end method

.method public supports(Lcom/mopub/nativeads/BaseNativeAd;)Z
    .locals 0

    .line 169
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 170
    instance-of p1, p1, Lcom/mopub/nativeads/FacebookNative$a;

    return p1
.end method
