.class public Lcom/mopub/nativeads/FacebookNative;
.super Lcom/mopub/nativeads/CustomEventNative;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/nativeads/FacebookNative$a;
    }
.end annotation


# static fields
.field public static final PLACEMENT_ID_KEY:Ljava/lang/String; = "placement_id"

.field private static final a:Ljava/lang/String; = "FacebookNative"


# instance fields
.field private b:Ljava/lang/Boolean;

.field private c:Lcom/mopub/mobileads/FacebookAdapterConfiguration;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 53
    invoke-direct {p0}, Lcom/mopub/nativeads/CustomEventNative;-><init>()V

    .line 54
    new-instance v0, Lcom/mopub/mobileads/FacebookAdapterConfiguration;

    invoke-direct {v0}, Lcom/mopub/mobileads/FacebookAdapterConfiguration;-><init>()V

    iput-object v0, p0, Lcom/mopub/nativeads/FacebookNative;->c:Lcom/mopub/mobileads/FacebookAdapterConfiguration;

    return-void
.end method

.method static synthetic a(Landroid/view/View;Lcom/facebook/ads/NativeAdBase;Lcom/facebook/ads/MediaView;Lcom/facebook/ads/MediaView;)V
    .locals 3

    if-eqz p1, :cond_3

    .line 1127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/16 v1, 0xa

    .line 1128
    invoke-static {p0, v0, v1}, Lcom/mopub/nativeads/FacebookNative;->a(Landroid/view/View;Ljava/util/List;I)V

    .line 1130
    instance-of v1, p1, Lcom/facebook/ads/NativeAd;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-eqz p2, :cond_1

    .line 1131
    check-cast p1, Lcom/facebook/ads/NativeAd;

    .line 1132
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 1133
    invoke-virtual {p1, p0, p2, p3}, Lcom/facebook/ads/NativeAd;->registerViewForInteraction(Landroid/view/View;Lcom/facebook/ads/MediaView;Lcom/facebook/ads/MediaView;)V

    return-void

    .line 1135
    :cond_0
    invoke-virtual {p1, p0, p2, p3, v0}, Lcom/facebook/ads/NativeAd;->registerViewForInteraction(Landroid/view/View;Lcom/facebook/ads/MediaView;Lcom/facebook/ads/MediaView;Ljava/util/List;)V

    return-void

    .line 1137
    :cond_1
    instance-of p2, p1, Lcom/facebook/ads/NativeBannerAd;

    if-eqz p2, :cond_3

    .line 1138
    check-cast p1, Lcom/facebook/ads/NativeBannerAd;

    .line 1139
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    if-ne p2, v2, :cond_2

    .line 1140
    invoke-virtual {p1, p0, p3}, Lcom/facebook/ads/NativeBannerAd;->registerViewForInteraction(Landroid/view/View;Lcom/facebook/ads/MediaView;)V

    return-void

    .line 1142
    :cond_2
    invoke-virtual {p1, p0, p3, v0}, Lcom/facebook/ads/NativeBannerAd;->registerViewForInteraction(Landroid/view/View;Lcom/facebook/ads/MediaView;Ljava/util/List;)V

    :cond_3
    return-void
.end method

.method private static a(Landroid/view/View;Ljava/util/List;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p0, :cond_0

    .line 150
    sget-object p0, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "View given is null. Ignoring"

    aput-object p2, p1, v0

    invoke-static {p0, p1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return-void

    :cond_0
    if-gtz p2, :cond_1

    .line 155
    sget-object p2, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Depth limit reached; adding this view regardless of its type."

    aput-object v2, v1, v0

    invoke-static {p2, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 156
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 160
    :cond_1
    instance-of v2, p0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_3

    move-object v2, p0

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-lez v3, :cond_3

    .line 162
    :goto_0
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p0

    if-ge v0, p0, :cond_2

    .line 163
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    add-int/lit8 v3, p2, -0x1

    invoke-static {p0, p1, v3}, Lcom/mopub/nativeads/FacebookNative;->a(Landroid/view/View;Ljava/util/List;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void

    .line 168
    :cond_3
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .line 43
    sget-object v0, Lcom/mopub/nativeads/FacebookNative;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public loadNativeAd(Landroid/content/Context;Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;Ljava/util/Map;Ljava/util/Map;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/mopub/nativeads/FacebookNative;->c:Lcom/mopub/mobileads/FacebookAdapterConfiguration;

    invoke-virtual {v0, p1, p4}, Lcom/mopub/mobileads/FacebookAdapterConfiguration;->initializeNetwork(Landroid/content/Context;Ljava/util/Map;)V

    const-string v0, "placement_id"

    .line 1117
    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1118
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    const/4 v3, 0x0

    if-eqz v1, :cond_5

    .line 67
    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 68
    iget-object v1, p0, Lcom/mopub/nativeads/FacebookNative;->c:Lcom/mopub/mobileads/FacebookAdapterConfiguration;

    invoke-virtual {v1, p1, p4}, Lcom/mopub/mobileads/FacebookAdapterConfiguration;->setCachedInitializationParameters(Landroid/content/Context;Ljava/util/Map;)V

    .line 75
    invoke-static {p4}, Lcom/callapp/contacts/util/ads/AdUtils;->a(Ljava/util/Map;)D

    move-result-wide v8

    const-string v1, "app_bidder_request_id"

    .line 76
    invoke-interface {p4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Ljava/lang/String;

    const-string v1, "adm"

    .line 78
    invoke-interface {p4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    move-object v7, p4

    check-cast v7, Ljava/lang/String;

    .line 80
    invoke-static {p3}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Map;)Z

    move-result p4

    if-eqz p4, :cond_0

    const-string p4, "has_main_image"

    invoke-interface {p3, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    if-eqz p4, :cond_0

    const/4 p4, 0x1

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    .line 82
    :goto_0
    invoke-interface {p3}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "native_banner"

    .line 83
    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    .line 85
    instance-of v1, p3, Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    .line 86
    check-cast p3, Ljava/lang/Boolean;

    iput-object p3, p0, Lcom/mopub/nativeads/FacebookNative;->b:Ljava/lang/Boolean;

    .line 92
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 96
    iget-object p3, p0, Lcom/mopub/nativeads/FacebookNative;->b:Ljava/lang/Boolean;

    if-nez p3, :cond_3

    if-nez p4, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    iput-object p3, p0, Lcom/mopub/nativeads/FacebookNative;->b:Ljava/lang/Boolean;

    if-eqz p3, :cond_4

    .line 99
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_4

    .line 100
    new-instance p3, Lcom/mopub/nativeads/FacebookNative$a;

    new-instance v5, Lcom/facebook/ads/NativeBannerAd;

    invoke-direct {v5, p1, v0}, Lcom/facebook/ads/NativeBannerAd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    move-object v4, p3

    move-object v6, p2

    invoke-direct/range {v4 .. v10}, Lcom/mopub/nativeads/FacebookNative$a;-><init>(Lcom/facebook/ads/NativeAdBase;Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;Ljava/lang/String;DLjava/lang/String;)V

    .line 102
    invoke-virtual {p3}, Lcom/mopub/nativeads/FacebookNative$a;->a()V

    return-void

    .line 111
    :cond_4
    new-instance p3, Lcom/mopub/nativeads/FacebookNative$a;

    new-instance v5, Lcom/facebook/ads/NativeAd;

    invoke-direct {v5, p1, v0}, Lcom/facebook/ads/NativeAd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    move-object v4, p3

    move-object v6, p2

    invoke-direct/range {v4 .. v10}, Lcom/mopub/nativeads/FacebookNative$a;-><init>(Lcom/facebook/ads/NativeAdBase;Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;Ljava/lang/String;DLjava/lang/String;)V

    .line 113
    invoke-virtual {p3}, Lcom/mopub/nativeads/FacebookNative$a;->a()V

    return-void

    .line 70
    :cond_5
    sget-object p1, Lcom/mopub/nativeads/NativeErrorCode;->NETWORK_NO_FILL:Lcom/mopub/nativeads/NativeErrorCode;

    invoke-interface {p2, p1}, Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;->onNativeAdFailed(Lcom/mopub/nativeads/NativeErrorCode;)V

    .line 71
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->LOAD_FAILED:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    const/4 p2, 0x3

    new-array p2, p2, [Ljava/lang/Object;

    sget-object p3, Lcom/mopub/nativeads/FacebookNative;->a:Ljava/lang/String;

    aput-object p3, p2, v3

    sget-object p3, Lcom/mopub/nativeads/NativeErrorCode;->NETWORK_NO_FILL:Lcom/mopub/nativeads/NativeErrorCode;

    invoke-virtual {p3}, Lcom/mopub/nativeads/NativeErrorCode;->getIntCode()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p2, v2

    const/4 p3, 0x2

    sget-object p4, Lcom/mopub/nativeads/NativeErrorCode;->NETWORK_NO_FILL:Lcom/mopub/nativeads/NativeErrorCode;

    aput-object p4, p2, p3

    invoke-static {p1, p2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return-void
.end method
