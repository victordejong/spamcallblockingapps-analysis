.class Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader;->getAdRunnable()Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader$3;->a:Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 89
    :try_start_0
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader$3;->a:Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader;

    iget-boolean v0, v0, Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader;->c:Z

    if-eqz v0, :cond_0

    return-void

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader$3;->a:Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader;->b(Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader;)Lcom/callapp/contacts/util/ads/JSONAdUnit;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    .line 96
    iget-object v2, p0, Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader$3;->a:Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader;

    iget v2, v2, Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader;->l:F

    const/4 v3, 0x0

    const/4 v4, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 97
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "callapp_adaptive_ad_width"

    .line 98
    iget-object v5, p0, Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader$3;->a:Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader;

    iget v5, v5, Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader;->l:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-interface {v2, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v6, v2

    goto :goto_0

    :cond_1
    move-object v6, v4

    .line 101
    :goto_0
    invoke-virtual {v0}, Lcom/callapp/contacts/util/ads/JSONAdUnit;->getAdType()I

    move-result v2

    if-eqz v2, :cond_4

    if-eq v2, v1, :cond_3

    const/4 v1, 0x2

    if-eq v2, v1, :cond_2

    const/4 v1, 0x3

    if-eq v2, v1, :cond_4

    goto :goto_1

    .line 115
    :cond_2
    iget-object v1, p0, Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader$3;->a:Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader;

    iget-object v1, v1, Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader;->g:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/callapp/contacts/util/ads/JSONAdUnit;->getAdUnitId()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/mopub/mobileads/MoPubView$MoPubAdSize;->HEIGHT_250:Lcom/mopub/mobileads/MoPubView$MoPubAdSize;

    iget-object v0, p0, Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader$3;->a:Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader;->d(Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader;)Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;

    move-result-object v4

    iget-object v0, p0, Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader$3;->a:Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader;

    iget-boolean v5, v0, Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader;->f:Z

    invoke-static/range {v1 .. v6}, Lcom/callapp/contacts/util/ads/AdUtils;->a(Landroid/content/Context;Ljava/lang/String;Lcom/mopub/mobileads/MoPubView$MoPubAdSize;Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;ZLjava/util/Map;)V

    :goto_1
    return-void

    .line 112
    :cond_3
    iget-object v1, p0, Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader$3;->a:Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader;

    iget-object v1, v1, Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader;->g:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/callapp/contacts/util/ads/JSONAdUnit;->getAdUnitId()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/mopub/mobileads/MoPubView$MoPubAdSize;->HEIGHT_50:Lcom/mopub/mobileads/MoPubView$MoPubAdSize;

    iget-object v0, p0, Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader$3;->a:Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader;->d(Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader;)Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;

    move-result-object v4

    iget-object v0, p0, Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader$3;->a:Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader;

    iget-boolean v5, v0, Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader;->f:Z

    invoke-static/range {v1 .. v6}, Lcom/callapp/contacts/util/ads/AdUtils;->a(Landroid/content/Context;Ljava/lang/String;Lcom/mopub/mobileads/MoPubView$MoPubAdSize;Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;ZLjava/util/Map;)V

    return-void

    .line 104
    :cond_4
    iget-object v1, p0, Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader$3;->a:Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader;

    iget-object v1, v1, Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader;->j:Lcom/callapp/contacts/util/ads/NativeAdParamGetter;

    invoke-virtual {v0}, Lcom/callapp/contacts/util/ads/JSONAdUnit;->getAdUnitId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/callapp/contacts/util/ads/NativeAdParamGetter;->a(Ljava/lang/String;)Lcom/callapp/contacts/util/ads/AdSettings;

    move-result-object v1

    .line 105
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader$3;->a:Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader;->c(Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader;)Lcom/mopub/nativeads/MoPubNative;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 106
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader$3;->a:Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader;->c(Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader;)Lcom/mopub/nativeads/MoPubNative;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/nativeads/MoPubNative;->destroy()V

    .line 107
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader$3;->a:Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader;

    invoke-static {v0, v4}, Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader;->a(Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader;Lcom/mopub/nativeads/MoPubNative;)Lcom/mopub/nativeads/MoPubNative;

    .line 109
    :cond_5
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader$3;->a:Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader;

    iget-object v2, v0, Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader;->j:Lcom/callapp/contacts/util/ads/NativeAdParamGetter;

    invoke-interface {v2, v1}, Lcom/callapp/contacts/util/ads/NativeAdParamGetter;->a(Lcom/callapp/contacts/util/ads/AdSettings;)Lcom/mopub/nativeads/ViewBinder;

    move-result-object v2

    iget-object v3, p0, Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader$3;->a:Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader;

    iget-object v3, v3, Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader;->j:Lcom/callapp/contacts/util/ads/NativeAdParamGetter;

    invoke-interface {v3, v1}, Lcom/callapp/contacts/util/ads/NativeAdParamGetter;->b(Lcom/callapp/contacts/util/ads/AdSettings;)Ljava/util/EnumSet;

    move-result-object v3

    iget-object v4, p0, Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader$3;->a:Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader;

    invoke-static {v4}, Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader;->d(Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader;)Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;

    move-result-object v4

    iget-object v5, p0, Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader$3;->a:Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader;

    iget-boolean v5, v5, Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader;->f:Z

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lcom/callapp/contacts/util/ads/AdUtils;->a(Lcom/callapp/contacts/util/ads/AdSettings;Lcom/mopub/nativeads/ViewBinder;Ljava/util/EnumSet;Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;ZLjava/util/Map;Z)Lcom/mopub/nativeads/MoPubNative;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader;->a(Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader;Lcom/mopub/nativeads/MoPubNative;)Lcom/mopub/nativeads/MoPubNative;

    return-void

    .line 119
    :cond_6
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader$3;->a:Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader;->e(Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader;)I

    .line 120
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader$3;->a:Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader;->e:Z

    .line 121
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader$3;->a:Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader;

    iput-boolean v1, v0, Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader;->f:Z

    .line 123
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader$3;->a:Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader;

    iget-boolean v0, v0, Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader;->i:Z

    if-eqz v0, :cond_7

    .line 124
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader$3;->a:Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader$3;->a:Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader;

    invoke-virtual {v0}, Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader;->d()V

    .line 127
    :cond_7
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader$3;->a:Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader;->h:Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;

    sget-object v1, Lcom/mopub/nativeads/NativeErrorCode;->NATIVE_ADAPTER_CONFIGURATION_ERROR:Lcom/mopub/nativeads/NativeErrorCode;

    invoke-interface {v0, v1}, Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;->onNativeAdFailed(Lcom/mopub/nativeads/NativeErrorCode;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 130
    iget-object v1, p0, Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader$3;->a:Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader;

    iget-object v1, v1, Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader;->h:Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;

    if-eqz v1, :cond_8

    .line 131
    iget-object v1, p0, Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader$3;->a:Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader;

    iget-object v1, v1, Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader;->h:Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;

    sget-object v2, Lcom/mopub/nativeads/NativeErrorCode;->NATIVE_ADAPTER_CONFIGURATION_ERROR:Lcom/mopub/nativeads/NativeErrorCode;

    invoke-interface {v1, v2}, Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;->onNativeAdFailed(Lcom/mopub/nativeads/NativeErrorCode;)V

    .line 133
    :cond_8
    invoke-static {v0}, Lcom/callapp/contacts/util/CrashlyticsUtils;->a(Ljava/lang/Throwable;)V

    .line 134
    iget-object v1, p0, Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader$3;->a:Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader;

    iget-object v1, v1, Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader;->b:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
