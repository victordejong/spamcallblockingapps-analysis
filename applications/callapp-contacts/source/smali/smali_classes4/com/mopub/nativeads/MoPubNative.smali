.class public Lcom/mopub/nativeads/MoPubNative;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/nativeads/MoPubNative$MoPubNativeNetworkListener;
    }
.end annotation


# static fields
.field public static final HAS_MAIN_IMAGE:Ljava/lang/String; = "has_main_image"

.field static final a:Lcom/mopub/nativeads/MoPubNative$MoPubNativeNetworkListener;


# instance fields
.field final b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field c:Lcom/mopub/nativeads/MoPubNative$MoPubNativeNetworkListener;

.field d:Lcom/mopub/nativeads/AdRendererRegistry;

.field private final e:Ljava/lang/String;

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/mopub/network/AdLoader;

.field private h:Lcom/mopub/nativeads/b;

.field private final i:Lcom/mopub/network/AdLoader$Listener;

.field private j:Lcom/mopub/volley/Request;

.field private k:Lcom/mopub/nativeads/NativeAd;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 56
    new-instance v0, Lcom/mopub/nativeads/MoPubNative$1;

    invoke-direct {v0}, Lcom/mopub/nativeads/MoPubNative$1;-><init>()V

    sput-object v0, Lcom/mopub/nativeads/MoPubNative;->a:Lcom/mopub/nativeads/MoPubNative$MoPubNativeNetworkListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/mopub/nativeads/AdRendererRegistry;Lcom/mopub/nativeads/MoPubNative$MoPubNativeNetworkListener;)V
    .locals 1

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/mopub/nativeads/MoPubNative;->f:Ljava/util/Map;

    const-string v0, "context may not be null."

    .line 95
    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "AdUnitId may not be null."

    .line 96
    invoke-static {p2, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "AdRendererRegistry may not be null."

    .line 97
    invoke-static {p3, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "MoPubNativeNetworkListener may not be null."

    .line 98
    invoke-static {p4, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/mopub/nativeads/MoPubNative;->b:Ljava/lang/ref/WeakReference;

    .line 104
    iput-object p2, p0, Lcom/mopub/nativeads/MoPubNative;->e:Ljava/lang/String;

    .line 105
    iput-object p4, p0, Lcom/mopub/nativeads/MoPubNative;->c:Lcom/mopub/nativeads/MoPubNative$MoPubNativeNetworkListener;

    .line 106
    iput-object p3, p0, Lcom/mopub/nativeads/MoPubNative;->d:Lcom/mopub/nativeads/AdRendererRegistry;

    .line 107
    new-instance p1, Lcom/mopub/nativeads/MoPubNative$2;

    invoke-direct {p1, p0}, Lcom/mopub/nativeads/MoPubNative$2;-><init>(Lcom/mopub/nativeads/MoPubNative;)V

    iput-object p1, p0, Lcom/mopub/nativeads/MoPubNative;->i:Lcom/mopub/network/AdLoader$Listener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/mopub/nativeads/MoPubNative$MoPubNativeNetworkListener;)V
    .locals 1

    .line 87
    new-instance v0, Lcom/mopub/nativeads/AdRendererRegistry;

    invoke-direct {v0}, Lcom/mopub/nativeads/AdRendererRegistry;-><init>()V

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/mopub/nativeads/MoPubNative;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/mopub/nativeads/AdRendererRegistry;Lcom/mopub/nativeads/MoPubNative$MoPubNativeNetworkListener;)V

    return-void
.end method

.method static synthetic a(Lcom/mopub/nativeads/MoPubNative;Lcom/mopub/nativeads/NativeAd;)Lcom/mopub/nativeads/NativeAd;
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/mopub/nativeads/MoPubNative;->k:Lcom/mopub/nativeads/NativeAd;

    return-object p1
.end method

.method static synthetic a(Lcom/mopub/nativeads/MoPubNative;)Lcom/mopub/nativeads/b;
    .locals 1

    const/4 v0, 0x0

    .line 48
    iput-object v0, p0, Lcom/mopub/nativeads/MoPubNative;->h:Lcom/mopub/nativeads/b;

    return-object v0
.end method

.method static synthetic a(Lcom/mopub/nativeads/MoPubNative;Lcom/mopub/network/AdResponse;)V
    .locals 6

    .line 2229
    invoke-virtual {p0}, Lcom/mopub/nativeads/MoPubNative;->a()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2233
    new-instance v1, Lcom/mopub/nativeads/MoPubNative$3;

    invoke-direct {v1, p0, p1}, Lcom/mopub/nativeads/MoPubNative$3;-><init>(Lcom/mopub/nativeads/MoPubNative;Lcom/mopub/network/AdResponse;)V

    .line 2278
    iget-object v2, p0, Lcom/mopub/nativeads/MoPubNative;->h:Lcom/mopub/nativeads/b;

    if-eqz v2, :cond_0

    .line 2279
    sget-object v2, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "Native adapter is not null."

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 2280
    iget-object v2, p0, Lcom/mopub/nativeads/MoPubNative;->h:Lcom/mopub/nativeads/b;

    invoke-virtual {v2}, Lcom/mopub/nativeads/b;->a()V

    .line 2283
    :cond_0
    new-instance v2, Lcom/mopub/nativeads/b;

    invoke-direct {v2, v1}, Lcom/mopub/nativeads/b;-><init>(Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;)V

    iput-object v2, p0, Lcom/mopub/nativeads/MoPubNative;->h:Lcom/mopub/nativeads/b;

    .line 2284
    iget-object p0, p0, Lcom/mopub/nativeads/MoPubNative;->f:Ljava/util/Map;

    invoke-virtual {v2, v0, p0, p1}, Lcom/mopub/nativeads/b;->loadNativeAd(Landroid/content/Context;Ljava/util/Map;Lcom/mopub/network/AdResponse;)V

    :cond_1
    return-void
.end method

.method static synthetic b(Lcom/mopub/nativeads/MoPubNative;)Lcom/mopub/network/AdLoader;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/mopub/nativeads/MoPubNative;->g:Lcom/mopub/network/AdLoader;

    return-object p0
.end method

.method static synthetic c(Lcom/mopub/nativeads/MoPubNative;)Ljava/lang/String;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/mopub/nativeads/MoPubNative;->e:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lcom/mopub/nativeads/MoPubNative;)Lcom/mopub/nativeads/NativeAd;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/mopub/nativeads/MoPubNative;->k:Lcom/mopub/nativeads/NativeAd;

    return-object p0
.end method

.method static synthetic e(Lcom/mopub/nativeads/MoPubNative;)Lcom/mopub/nativeads/MoPubNative$MoPubNativeNetworkListener;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/mopub/nativeads/MoPubNative;->c:Lcom/mopub/nativeads/MoPubNative$MoPubNativeNetworkListener;

    return-object p0
.end method

.method static synthetic f(Lcom/mopub/nativeads/MoPubNative;)Lcom/mopub/nativeads/b;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/mopub/nativeads/MoPubNative;->h:Lcom/mopub/nativeads/b;

    return-object p0
.end method

.method static synthetic g(Lcom/mopub/nativeads/MoPubNative;)Lcom/mopub/network/AdLoader;
    .locals 1

    const/4 v0, 0x0

    .line 48
    iput-object v0, p0, Lcom/mopub/nativeads/MoPubNative;->g:Lcom/mopub/network/AdLoader;

    return-object v0
.end method


# virtual methods
.method final a()Landroid/content/Context;
    .locals 5

    .line 336
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubNative;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_0

    .line 338
    invoke-virtual {p0}, Lcom/mopub/nativeads/MoPubNative;->destroy()V

    .line 339
    sget-object v1, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "Weak reference to Context in MoPubNative became null. This instance of MoPubNative is destroyed and No more requests will be processed."

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method final a(Ljava/lang/String;Lcom/mopub/nativeads/NativeErrorCode;)V
    .locals 7

    .line 212
    invoke-virtual {p0}, Lcom/mopub/nativeads/MoPubNative;->a()Landroid/content/Context;

    move-result-object v4

    if-nez v4, :cond_0

    return-void

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubNative;->g:Lcom/mopub/network/AdLoader;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/mopub/network/AdLoader;->hasMoreAds()Z

    move-result v0

    if-nez v0, :cond_4

    .line 218
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 219
    iget-object p1, p0, Lcom/mopub/nativeads/MoPubNative;->c:Lcom/mopub/nativeads/MoPubNative$MoPubNativeNetworkListener;

    if-nez p2, :cond_2

    sget-object p2, Lcom/mopub/nativeads/NativeErrorCode;->INVALID_REQUEST_URL:Lcom/mopub/nativeads/NativeErrorCode;

    :cond_2
    invoke-interface {p1, p2}, Lcom/mopub/nativeads/MoPubNative$MoPubNativeNetworkListener;->onNativeFail(Lcom/mopub/nativeads/NativeErrorCode;)V

    return-void

    .line 222
    :cond_3
    new-instance v6, Lcom/mopub/network/AdLoader;

    sget-object v2, Lcom/mopub/common/AdFormat;->NATIVE:Lcom/mopub/common/AdFormat;

    iget-object v3, p0, Lcom/mopub/nativeads/MoPubNative;->e:Ljava/lang/String;

    iget-object v5, p0, Lcom/mopub/nativeads/MoPubNative;->i:Lcom/mopub/network/AdLoader$Listener;

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/mopub/network/AdLoader;-><init>(Ljava/lang/String;Lcom/mopub/common/AdFormat;Ljava/lang/String;Landroid/content/Context;Lcom/mopub/network/AdLoader$Listener;)V

    iput-object v6, p0, Lcom/mopub/nativeads/MoPubNative;->g:Lcom/mopub/network/AdLoader;

    .line 225
    :cond_4
    iget-object p1, p0, Lcom/mopub/nativeads/MoPubNative;->g:Lcom/mopub/network/AdLoader;

    invoke-virtual {p1, p2}, Lcom/mopub/network/AdLoader;->loadNextAd(Lcom/mopub/mobileads/MoPubError;)Lcom/mopub/volley/Request;

    move-result-object p1

    iput-object p1, p0, Lcom/mopub/nativeads/MoPubNative;->j:Lcom/mopub/volley/Request;

    return-void
.end method

.method public destroy()V
    .locals 2

    .line 134
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubNative;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 135
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubNative;->j:Lcom/mopub/volley/Request;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {v0}, Lcom/mopub/volley/Request;->cancel()V

    .line 137
    iput-object v1, p0, Lcom/mopub/nativeads/MoPubNative;->j:Lcom/mopub/volley/Request;

    .line 139
    :cond_0
    iput-object v1, p0, Lcom/mopub/nativeads/MoPubNative;->g:Lcom/mopub/network/AdLoader;

    .line 141
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubNative;->k:Lcom/mopub/nativeads/NativeAd;

    if-eqz v0, :cond_1

    .line 142
    invoke-virtual {v0}, Lcom/mopub/nativeads/NativeAd;->destroy()V

    .line 143
    iput-object v1, p0, Lcom/mopub/nativeads/MoPubNative;->k:Lcom/mopub/nativeads/NativeAd;

    .line 145
    :cond_1
    sget-object v0, Lcom/mopub/nativeads/MoPubNative;->a:Lcom/mopub/nativeads/MoPubNative$MoPubNativeNetworkListener;

    iput-object v0, p0, Lcom/mopub/nativeads/MoPubNative;->c:Lcom/mopub/nativeads/MoPubNative$MoPubNativeNetworkListener;

    return-void
.end method

.method public makeRequest()V
    .locals 1

    const/4 v0, 0x0

    .line 157
    invoke-virtual {p0, v0}, Lcom/mopub/nativeads/MoPubNative;->makeRequest(Lcom/mopub/nativeads/RequestParameters;)V

    return-void
.end method

.method public makeRequest(Lcom/mopub/nativeads/RequestParameters;)V
    .locals 1

    const/4 v0, 0x0

    .line 161
    invoke-virtual {p0, p1, v0}, Lcom/mopub/nativeads/MoPubNative;->makeRequest(Lcom/mopub/nativeads/RequestParameters;Ljava/lang/Integer;)V

    return-void
.end method

.method public makeRequest(Lcom/mopub/nativeads/RequestParameters;Ljava/lang/Integer;)V
    .locals 4

    .line 166
    invoke-virtual {p0}, Lcom/mopub/nativeads/MoPubNative;->a()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 171
    :cond_0
    invoke-static {v0}, Lcom/mopub/common/util/DeviceUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 172
    iget-object p1, p0, Lcom/mopub/nativeads/MoPubNative;->c:Lcom/mopub/nativeads/MoPubNative$MoPubNativeNetworkListener;

    sget-object p2, Lcom/mopub/nativeads/NativeErrorCode;->CONNECTION_ERROR:Lcom/mopub/nativeads/NativeErrorCode;

    invoke-interface {p1, p2}, Lcom/mopub/nativeads/MoPubNative$MoPubNativeNetworkListener;->onNativeFail(Lcom/mopub/nativeads/NativeErrorCode;)V

    return-void

    .line 1182
    :cond_1
    invoke-virtual {p0}, Lcom/mopub/nativeads/MoPubNative;->a()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_5

    if-eqz p1, :cond_2

    .line 1188
    invoke-virtual {p1}, Lcom/mopub/nativeads/RequestParameters;->getDesiredAssets()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/mopub/nativeads/RequestParameters;->getDesiredAssets()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/mopub/nativeads/RequestParameters$NativeAdAsset;->MAIN_IMAGE:Lcom/mopub/nativeads/RequestParameters$NativeAdAsset;

    invoke-virtual {v2}, Lcom/mopub/nativeads/RequestParameters$NativeAdAsset;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1189
    iget-object v1, p0, Lcom/mopub/nativeads/MoPubNative;->f:Ljava/util/Map;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v3, "has_main_image"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1192
    :cond_2
    sget-object v1, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->LOAD_ATTEMPTED:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 1194
    new-instance v1, Lcom/mopub/nativeads/e;

    invoke-direct {v1, v0}, Lcom/mopub/nativeads/e;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/mopub/nativeads/MoPubNative;->e:Ljava/lang/String;

    .line 1195
    invoke-virtual {v1, v0}, Lcom/mopub/nativeads/e;->withAdUnitId(Ljava/lang/String;)Lcom/mopub/nativeads/e;

    move-result-object v0

    .line 1196
    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/e;->a(Lcom/mopub/nativeads/RequestParameters;)Lcom/mopub/nativeads/e;

    move-result-object p1

    if-eqz p2, :cond_3

    .line 1199
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 2047
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/mopub/nativeads/e;->g:Ljava/lang/String;

    .line 1202
    :cond_3
    sget-object p2, Lcom/mopub/common/Constants;->HOST:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/mopub/nativeads/e;->generateUrlString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 1205
    sget-object p2, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "MoPubNative Loading ad from: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {p2, v0}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    :cond_4
    const/4 p2, 0x0

    .line 1208
    invoke-virtual {p0, p1, p2}, Lcom/mopub/nativeads/MoPubNative;->a(Ljava/lang/String;Lcom/mopub/nativeads/NativeErrorCode;)V

    :cond_5
    return-void
.end method

.method public registerAdRenderer(Lcom/mopub/nativeads/MoPubAdRenderer;)V
    .locals 1

    const-string v0, "Can\'t register a null adRenderer"

    .line 126
    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions$NoThrow;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubNative;->d:Lcom/mopub/nativeads/AdRendererRegistry;

    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/AdRendererRegistry;->registerAdRenderer(Lcom/mopub/nativeads/MoPubAdRenderer;)V

    return-void
.end method

.method public setLocalExtras(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 150
    new-instance p1, Ljava/util/TreeMap;

    invoke-direct {p1}, Ljava/util/TreeMap;-><init>()V

    iput-object p1, p0, Lcom/mopub/nativeads/MoPubNative;->f:Ljava/util/Map;

    return-void

    .line 152
    :cond_0
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0, p1}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/mopub/nativeads/MoPubNative;->f:Ljava/util/Map;

    return-void
.end method
