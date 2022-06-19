.class public Lcom/mopub/nativeads/CriteoAdRenderer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/criteo/publisher/advancednative/CriteoNativeRenderer;
.implements Lcom/mopub/nativeads/MoPubAdRenderer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/nativeads/CriteoAdRenderer$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/criteo/publisher/advancednative/CriteoNativeRenderer;",
        "Lcom/mopub/nativeads/MoPubAdRenderer<",
        "Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$CriteoStaticNativeAd;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/callapp/contacts/util/ads/AdSettings;

.field private final b:Lcom/mopub/nativeads/ViewBinder;

.field private final c:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/view/View;",
            "Lcom/mopub/nativeads/CriteoAdRenderer$a;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/criteo/publisher/advancednative/CriteoNativeAd;

.field private e:Lcom/criteo/publisher/advancednative/RendererHelper;


# direct methods
.method public constructor <init>(Lcom/mopub/nativeads/ViewBinder;Lcom/callapp/contacts/util/ads/AdSettings;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/mopub/nativeads/CriteoAdRenderer;->b:Lcom/mopub/nativeads/ViewBinder;

    .line 34
    iput-object p2, p0, Lcom/mopub/nativeads/CriteoAdRenderer;->a:Lcom/callapp/contacts/util/ads/AdSettings;

    .line 35
    new-instance p1, Ljava/util/WeakHashMap;

    invoke-direct {p1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object p1, p0, Lcom/mopub/nativeads/CriteoAdRenderer;->c:Ljava/util/WeakHashMap;

    return-void
.end method


# virtual methods
.method public createAdView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/mopub/nativeads/CriteoAdRenderer;->d:Lcom/criteo/publisher/advancednative/CriteoNativeAd;

    invoke-virtual {v0, p1, p2}, Lcom/criteo/publisher/advancednative/CriteoNativeAd;->createNativeRenderedView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public createNativeView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 41
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iget-object v0, p0, Lcom/mopub/nativeads/CriteoAdRenderer;->b:Lcom/mopub/nativeads/ViewBinder;

    iget v0, v0, Lcom/mopub/nativeads/ViewBinder;->a:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public renderAdView(Landroid/view/View;Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$CriteoStaticNativeAd;)V
    .locals 9

    .line 61
    iget-object v0, p0, Lcom/mopub/nativeads/CriteoAdRenderer;->c:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/nativeads/CriteoAdRenderer$a;

    if-nez v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/mopub/nativeads/CriteoAdRenderer;->b:Lcom/mopub/nativeads/ViewBinder;

    invoke-static {p1, v0}, Lcom/mopub/nativeads/CriteoAdRenderer$a;->a(Landroid/view/View;Lcom/mopub/nativeads/ViewBinder;)Lcom/mopub/nativeads/CriteoAdRenderer$a;

    move-result-object v0

    .line 64
    iget-object v1, p0, Lcom/mopub/nativeads/CriteoAdRenderer;->c:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    :cond_0
    invoke-virtual {p2}, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$CriteoStaticNativeAd;->getCriteoNativeAd()Lcom/criteo/publisher/advancednative/CriteoNativeAd;

    move-result-object v1

    .line 69
    iget-object v2, v0, Lcom/mopub/nativeads/CriteoAdRenderer$a;->a:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/criteo/publisher/advancednative/CriteoNativeAd;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mopub/nativeads/NativeRendererHelper;->addTextView(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 70
    iget-object v2, v0, Lcom/mopub/nativeads/CriteoAdRenderer$a;->b:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/criteo/publisher/advancednative/CriteoNativeAd;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mopub/nativeads/NativeRendererHelper;->addTextView(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 71
    iget-object v0, v0, Lcom/mopub/nativeads/CriteoAdRenderer$a;->c:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/criteo/publisher/advancednative/CriteoNativeAd;->getCallToAction()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mopub/nativeads/NativeRendererHelper;->addTextView(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/mopub/nativeads/CriteoAdRenderer;->b:Lcom/mopub/nativeads/ViewBinder;

    iget v0, v0, Lcom/mopub/nativeads/ViewBinder;->f:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    .line 75
    new-instance v4, Lcom/criteo/publisher/advancednative/CriteoMediaView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/criteo/publisher/advancednative/CriteoMediaView;-><init>(Landroid/content/Context;)V

    .line 76
    iget-object v5, p0, Lcom/mopub/nativeads/CriteoAdRenderer;->b:Lcom/mopub/nativeads/ViewBinder;

    iget v5, v5, Lcom/mopub/nativeads/ViewBinder;->f:I

    invoke-virtual {v4, v5}, Lcom/criteo/publisher/advancednative/CriteoMediaView;->setId(I)V

    .line 78
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 79
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    iget v7, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v8, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v6, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 81
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    .line 82
    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    add-int/2addr v0, v3

    .line 83
    invoke-virtual {v7, v4, v0, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 84
    invoke-virtual {v7, v7}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 86
    instance-of v0, v5, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v0, :cond_1

    .line 87
    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    .line 89
    invoke-virtual {v5}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v0

    const/4 v5, 0x0

    .line 90
    :goto_0
    array-length v7, v0

    if-ge v5, v7, :cond_1

    .line 91
    aget v7, v0, v5

    invoke-virtual {v6, v5, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 95
    :cond_1
    iget-object v0, p0, Lcom/mopub/nativeads/CriteoAdRenderer;->e:Lcom/criteo/publisher/advancednative/RendererHelper;

    invoke-virtual {v1}, Lcom/criteo/publisher/advancednative/CriteoNativeAd;->getAdvertiserLogoMedia()Lcom/criteo/publisher/advancednative/CriteoMedia;

    move-result-object v5

    invoke-virtual {v0, v5, v4}, Lcom/criteo/publisher/advancednative/RendererHelper;->setMediaInView(Lcom/criteo/publisher/advancednative/CriteoMedia;Lcom/criteo/publisher/advancednative/CriteoMediaView;)V

    .line 98
    :cond_2
    iget-object v0, p0, Lcom/mopub/nativeads/CriteoAdRenderer;->b:Lcom/mopub/nativeads/ViewBinder;

    iget v0, v0, Lcom/mopub/nativeads/ViewBinder;->e:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 100
    new-instance v4, Lcom/criteo/publisher/advancednative/CriteoMediaView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/criteo/publisher/advancednative/CriteoMediaView;-><init>(Landroid/content/Context;)V

    .line 101
    iget-object v5, p0, Lcom/mopub/nativeads/CriteoAdRenderer;->b:Lcom/mopub/nativeads/ViewBinder;

    iget v5, v5, Lcom/mopub/nativeads/ViewBinder;->e:I

    invoke-virtual {v4, v5}, Lcom/criteo/publisher/advancednative/CriteoMediaView;->setId(I)V

    .line 103
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 104
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    iget v7, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v6, v7, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 106
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 107
    invoke-virtual {v0, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v5

    add-int/2addr v5, v3

    .line 108
    invoke-virtual {v0, v4, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 109
    invoke-virtual {v0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 110
    iget-object v0, p0, Lcom/mopub/nativeads/CriteoAdRenderer;->e:Lcom/criteo/publisher/advancednative/RendererHelper;

    invoke-virtual {v1}, Lcom/criteo/publisher/advancednative/CriteoNativeAd;->getProductMedia()Lcom/criteo/publisher/advancednative/CriteoMedia;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lcom/criteo/publisher/advancednative/RendererHelper;->setMediaInView(Lcom/criteo/publisher/advancednative/CriteoMedia;Lcom/criteo/publisher/advancednative/CriteoMediaView;)V

    .line 113
    :cond_3
    iget-object v0, p0, Lcom/mopub/nativeads/CriteoAdRenderer;->b:Lcom/mopub/nativeads/ViewBinder;

    iget-object v0, v0, Lcom/mopub/nativeads/ViewBinder;->i:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$CriteoStaticNativeAd;->getExtras()Ljava/util/Map;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/mopub/nativeads/NativeRendererHelper;->updateExtras(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;)V

    const-string v0, "was_animated"

    .line 116
    invoke-virtual {p2, v0}, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$CriteoStaticNativeAd;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 117
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p2, v0, v4}, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$CriteoStaticNativeAd;->addExtra(Ljava/lang/String;Ljava/lang/Object;)V

    .line 118
    iget-object p2, p0, Lcom/mopub/nativeads/CriteoAdRenderer;->a:Lcom/callapp/contacts/util/ads/AdSettings;

    if-eqz v1, :cond_4

    const/4 v2, 0x1

    :cond_4
    invoke-static {p1, p2, v2}, Lcom/mopub/nativeads/CallAppMoPubStaticNativeAdRenderer;->a(Landroid/view/View;Lcom/callapp/contacts/util/ads/AdSettings;Z)V

    return-void
.end method

.method public bridge synthetic renderAdView(Landroid/view/View;Lcom/mopub/nativeads/BaseNativeAd;)V
    .locals 0

    .line 25
    check-cast p2, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$CriteoStaticNativeAd;

    invoke-virtual {p0, p1, p2}, Lcom/mopub/nativeads/CriteoAdRenderer;->renderAdView(Landroid/view/View;Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$CriteoStaticNativeAd;)V

    return-void
.end method

.method public renderNativeView(Lcom/criteo/publisher/advancednative/RendererHelper;Landroid/view/View;Lcom/criteo/publisher/advancednative/CriteoNativeAd;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/mopub/nativeads/CriteoAdRenderer;->e:Lcom/criteo/publisher/advancednative/RendererHelper;

    return-void
.end method

.method public setCriteoNativeAd(Lcom/criteo/publisher/advancednative/CriteoNativeAd;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/mopub/nativeads/CriteoAdRenderer;->d:Lcom/criteo/publisher/advancednative/CriteoNativeAd;

    return-void
.end method

.method public supports(Lcom/mopub/nativeads/BaseNativeAd;)Z
    .locals 0

    .line 123
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 124
    instance-of p1, p1, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$CriteoStaticNativeAd;

    return p1
.end method
