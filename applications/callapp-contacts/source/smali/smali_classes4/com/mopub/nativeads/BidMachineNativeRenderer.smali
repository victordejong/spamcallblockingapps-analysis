.class public Lcom/mopub/nativeads/BidMachineNativeRenderer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mopub/nativeads/MoPubAdRenderer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/nativeads/BidMachineNativeRenderer$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/mopub/nativeads/MoPubAdRenderer<",
        "Lcom/mopub/nativeads/BidMachineNativeAd;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/callapp/contacts/util/ads/AdSettings;

.field private b:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/view/View;",
            "Lcom/mopub/nativeads/BidMachineNativeRenderer$a;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/mopub/nativeads/ViewBinder;


# direct methods
.method public constructor <init>(Lcom/mopub/nativeads/ViewBinder;Lcom/callapp/contacts/util/ads/AdSettings;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/mopub/nativeads/BidMachineNativeRenderer;->c:Lcom/mopub/nativeads/ViewBinder;

    .line 31
    iput-object p2, p0, Lcom/mopub/nativeads/BidMachineNativeRenderer;->a:Lcom/callapp/contacts/util/ads/AdSettings;

    .line 32
    new-instance p1, Ljava/util/WeakHashMap;

    invoke-direct {p1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object p1, p0, Lcom/mopub/nativeads/BidMachineNativeRenderer;->b:Ljava/util/WeakHashMap;

    return-void
.end method


# virtual methods
.method public createAdView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 38
    new-instance v0, Lio/bidmachine/nativead/view/NativeAdContentLayout;

    invoke-direct {v0, p1}, Lio/bidmachine/nativead/view/NativeAdContentLayout;-><init>(Landroid/content/Context;)V

    .line 39
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iget-object v1, p0, Lcom/mopub/nativeads/BidMachineNativeRenderer;->c:Lcom/mopub/nativeads/ViewBinder;

    iget v1, v1, Lcom/mopub/nativeads/ViewBinder;->a:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const/16 p2, 0x64

    .line 40
    invoke-virtual {p1, p2}, Landroid/view/View;->setId(I)V

    const/4 p2, -0x2

    .line 41
    invoke-virtual {v0, p1, p2, p2}, Lio/bidmachine/nativead/view/NativeAdContentLayout;->addView(Landroid/view/View;II)V

    return-object v0
.end method

.method public bridge synthetic renderAdView(Landroid/view/View;Lcom/mopub/nativeads/BaseNativeAd;)V
    .locals 0

    .line 23
    check-cast p2, Lcom/mopub/nativeads/BidMachineNativeAd;

    invoke-virtual {p0, p1, p2}, Lcom/mopub/nativeads/BidMachineNativeRenderer;->renderAdView(Landroid/view/View;Lcom/mopub/nativeads/BidMachineNativeAd;)V

    return-void
.end method

.method public renderAdView(Landroid/view/View;Lcom/mopub/nativeads/BidMachineNativeAd;)V
    .locals 5

    .line 47
    iget-object v0, p0, Lcom/mopub/nativeads/BidMachineNativeRenderer;->b:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/nativeads/BidMachineNativeRenderer$a;

    if-nez v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/mopub/nativeads/BidMachineNativeRenderer;->c:Lcom/mopub/nativeads/ViewBinder;

    invoke-static {p1, v0}, Lcom/mopub/nativeads/BidMachineNativeRenderer$a;->a(Landroid/view/View;Lcom/mopub/nativeads/ViewBinder;)Lcom/mopub/nativeads/BidMachineNativeRenderer$a;

    move-result-object v0

    .line 50
    iget-object v1, p0, Lcom/mopub/nativeads/BidMachineNativeRenderer;->b:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1078
    :cond_0
    iget-object v1, v0, Lcom/mopub/nativeads/BidMachineNativeRenderer$a;->a:Lio/bidmachine/nativead/view/NativeAdContentLayout;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    .line 1068
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->SHOW_FAILED:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    new-array v1, v3, [Ljava/lang/Object;

    const-string v4, "Error during registering native ad: NativeAdContentLayout don\'t found on layout"

    aput-object v4, v1, v2

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    goto :goto_0

    .line 2078
    :cond_1
    iget-object v1, v0, Lcom/mopub/nativeads/BidMachineNativeRenderer$a;->a:Lio/bidmachine/nativead/view/NativeAdContentLayout;

    .line 3049
    iget-object v4, p2, Lcom/mopub/nativeads/BidMachineNativeAd;->a:Lio/bidmachine/nativead/NativeAd;

    .line 1072
    invoke-virtual {v1, v4}, Lio/bidmachine/nativead/view/NativeAdContentLayout;->bind(Lio/bidmachine/nativead/NativeAd;)V

    .line 3078
    iget-object v1, v0, Lcom/mopub/nativeads/BidMachineNativeRenderer$a;->a:Lio/bidmachine/nativead/view/NativeAdContentLayout;

    .line 4049
    iget-object v4, p2, Lcom/mopub/nativeads/BidMachineNativeAd;->a:Lio/bidmachine/nativead/NativeAd;

    .line 4078
    iget-object v0, v0, Lcom/mopub/nativeads/BidMachineNativeRenderer$a;->b:Ljava/util/Set;

    .line 1073
    invoke-virtual {v1, v4, v0}, Lio/bidmachine/nativead/view/NativeAdContentLayout;->registerViewForInteraction(Lio/bidmachine/nativead/NativeAd;Ljava/util/Set;)V

    :goto_0
    const-string v0, "was_animated"

    .line 55
    invoke-virtual {p2, v0}, Lcom/mopub/nativeads/BidMachineNativeAd;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 56
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p2, v0, v4}, Lcom/mopub/nativeads/BidMachineNativeAd;->addExtra(Ljava/lang/String;Ljava/lang/Object;)V

    .line 57
    iget-object p2, p0, Lcom/mopub/nativeads/BidMachineNativeRenderer;->a:Lcom/callapp/contacts/util/ads/AdSettings;

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    :cond_2
    invoke-static {p1, p2, v2}, Lcom/mopub/nativeads/CallAppMoPubStaticNativeAdRenderer;->a(Landroid/view/View;Lcom/callapp/contacts/util/ads/AdSettings;Z)V

    return-void
.end method

.method public supports(Lcom/mopub/nativeads/BaseNativeAd;)Z
    .locals 0

    .line 62
    instance-of p1, p1, Lcom/mopub/nativeads/BidMachineNativeAd;

    return p1
.end method
