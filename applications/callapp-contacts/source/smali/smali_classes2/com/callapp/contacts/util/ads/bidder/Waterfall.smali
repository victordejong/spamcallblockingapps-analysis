.class public Lcom/callapp/contacts/util/ads/bidder/Waterfall;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected isDestroyed:Z

.field private moPubInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

.field private moPubView:Lcom/mopub/mobileads/MoPubView;

.field private nativeAd:Lcom/mopub/nativeads/NativeAd;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/callapp/contacts/util/ads/bidder/Waterfall;)Lcom/mopub/mobileads/MoPubView;
    .locals 0

    .line 8
    iget-object p0, p0, Lcom/callapp/contacts/util/ads/bidder/Waterfall;->moPubView:Lcom/mopub/mobileads/MoPubView;

    return-object p0
.end method

.method static synthetic access$002(Lcom/callapp/contacts/util/ads/bidder/Waterfall;Lcom/mopub/mobileads/MoPubView;)Lcom/mopub/mobileads/MoPubView;
    .locals 0

    .line 8
    iput-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/Waterfall;->moPubView:Lcom/mopub/mobileads/MoPubView;

    return-object p1
.end method

.method static synthetic access$100(Lcom/callapp/contacts/util/ads/bidder/Waterfall;)Lcom/mopub/nativeads/NativeAd;
    .locals 0

    .line 8
    iget-object p0, p0, Lcom/callapp/contacts/util/ads/bidder/Waterfall;->nativeAd:Lcom/mopub/nativeads/NativeAd;

    return-object p0
.end method

.method static synthetic access$102(Lcom/callapp/contacts/util/ads/bidder/Waterfall;Lcom/mopub/nativeads/NativeAd;)Lcom/mopub/nativeads/NativeAd;
    .locals 0

    .line 8
    iput-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/Waterfall;->nativeAd:Lcom/mopub/nativeads/NativeAd;

    return-object p1
.end method

.method static synthetic access$200(Lcom/callapp/contacts/util/ads/bidder/Waterfall;)Lcom/mopub/mobileads/MoPubInterstitial;
    .locals 0

    .line 8
    iget-object p0, p0, Lcom/callapp/contacts/util/ads/bidder/Waterfall;->moPubInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    return-object p0
.end method

.method static synthetic access$202(Lcom/callapp/contacts/util/ads/bidder/Waterfall;Lcom/mopub/mobileads/MoPubInterstitial;)Lcom/mopub/mobileads/MoPubInterstitial;
    .locals 0

    .line 8
    iput-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/Waterfall;->moPubInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    return-object p1
.end method


# virtual methods
.method public destroy()V
    .locals 2

    const/4 v0, 0x1

    .line 15
    iput-boolean v0, p0, Lcom/callapp/contacts/util/ads/bidder/Waterfall;->isDestroyed:Z

    .line 16
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/util/ads/bidder/Waterfall$1;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/util/ads/bidder/Waterfall$1;-><init>(Lcom/callapp/contacts/util/ads/bidder/Waterfall;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public isDestroyed()Z
    .locals 1

    .line 51
    iget-boolean v0, p0, Lcom/callapp/contacts/util/ads/bidder/Waterfall;->isDestroyed:Z

    return v0
.end method

.method public setInterstitial(Lcom/mopub/mobileads/MoPubInterstitial;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/Waterfall;->moPubInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    return-void
.end method

.method public setMoPubView(Lcom/mopub/mobileads/MoPubView;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/Waterfall;->moPubView:Lcom/mopub/mobileads/MoPubView;

    return-void
.end method

.method public setNativeAd(Lcom/mopub/nativeads/NativeAd;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/Waterfall;->nativeAd:Lcom/mopub/nativeads/NativeAd;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 57
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/Waterfall;->moPubView:Lcom/mopub/mobileads/MoPubView;

    const-string v1, ""

    if-eqz v0, :cond_1

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "banner - "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/callapp/contacts/util/ads/bidder/Waterfall;->moPubView:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v2}, Lcom/mopub/mobileads/MoPubView;->getAdViewController()Lcom/mopub/mobileads/AdViewController;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/callapp/contacts/util/ads/bidder/Waterfall;->moPubView:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v2}, Lcom/mopub/mobileads/MoPubView;->getAdViewController()Lcom/mopub/mobileads/AdViewController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mopub/mobileads/AdViewController;->getBaseAdClassName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 61
    :goto_1
    iget-object v2, p0, Lcom/callapp/contacts/util/ads/bidder/Waterfall;->nativeAd:Lcom/mopub/nativeads/NativeAd;

    if-eqz v2, :cond_2

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "native - "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/callapp/contacts/util/ads/bidder/Waterfall;->nativeAd:Lcom/mopub/nativeads/NativeAd;

    invoke-virtual {v2}, Lcom/mopub/nativeads/NativeAd;->getBaseNativeAd()Lcom/mopub/nativeads/BaseNativeAd;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 65
    :cond_2
    iget-object v2, p0, Lcom/callapp/contacts/util/ads/bidder/Waterfall;->moPubInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    if-eqz v2, :cond_4

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "interstitial - "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/callapp/contacts/util/ads/bidder/Waterfall;->moPubInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    invoke-virtual {v2}, Lcom/mopub/mobileads/MoPubInterstitial;->getAdViewController()Lcom/mopub/mobileads/AdViewController;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v1, p0, Lcom/callapp/contacts/util/ads/bidder/Waterfall;->moPubInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    invoke-virtual {v1}, Lcom/mopub/mobileads/MoPubInterstitial;->getAdViewController()Lcom/mopub/mobileads/AdViewController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mopub/mobileads/AdViewController;->getBaseAdClassName()Ljava/lang/String;

    move-result-object v1

    :cond_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 69
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Waterfall{type="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", isDestroyed="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/callapp/contacts/util/ads/bidder/Waterfall;->isDestroyed:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v0, 0x7d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
