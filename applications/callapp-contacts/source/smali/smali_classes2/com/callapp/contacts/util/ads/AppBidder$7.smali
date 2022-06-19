.class Lcom/callapp/contacts/util/ads/AppBidder$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/util/ads/AppBidder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/util/ads/JSONAdUnit;

.field final synthetic b:Lcom/callapp/contacts/util/ads/NativeAdParamGetter;

.field final synthetic c:Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;

.field final synthetic d:Z

.field final synthetic e:Landroid/content/Context;

.field final synthetic f:Lcom/callapp/contacts/util/ads/AppBidder;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/util/ads/AppBidder;Lcom/callapp/contacts/util/ads/JSONAdUnit;Lcom/callapp/contacts/util/ads/NativeAdParamGetter;Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;ZLandroid/content/Context;)V
    .locals 0

    .line 1253
    iput-object p1, p0, Lcom/callapp/contacts/util/ads/AppBidder$7;->f:Lcom/callapp/contacts/util/ads/AppBidder;

    iput-object p2, p0, Lcom/callapp/contacts/util/ads/AppBidder$7;->a:Lcom/callapp/contacts/util/ads/JSONAdUnit;

    iput-object p3, p0, Lcom/callapp/contacts/util/ads/AppBidder$7;->b:Lcom/callapp/contacts/util/ads/NativeAdParamGetter;

    iput-object p4, p0, Lcom/callapp/contacts/util/ads/AppBidder$7;->c:Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;

    iput-boolean p5, p0, Lcom/callapp/contacts/util/ads/AppBidder$7;->d:Z

    iput-object p6, p0, Lcom/callapp/contacts/util/ads/AppBidder$7;->e:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1257
    :try_start_0
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string v0, "callapp_request_id"

    .line 1258
    iget-object v1, p0, Lcom/callapp/contacts/util/ads/AppBidder$7;->f:Lcom/callapp/contacts/util/ads/AppBidder;

    invoke-static {v1}, Lcom/callapp/contacts/util/ads/AppBidder;->b(Lcom/callapp/contacts/util/ads/AppBidder;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1259
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/AppBidder$7;->f:Lcom/callapp/contacts/util/ads/AppBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/AppBidder;->i(Lcom/callapp/contacts/util/ads/AppBidder;)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const-string v0, "callapp_adaptive_ad_width"

    .line 1260
    iget-object v1, p0, Lcom/callapp/contacts/util/ads/AppBidder$7;->f:Lcom/callapp/contacts/util/ads/AppBidder;

    invoke-static {v1}, Lcom/callapp/contacts/util/ads/AppBidder;->i(Lcom/callapp/contacts/util/ads/AppBidder;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1263
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/AppBidder$7;->a:Lcom/callapp/contacts/util/ads/JSONAdUnit;

    invoke-virtual {v0}, Lcom/callapp/contacts/util/ads/JSONAdUnit;->getAdType()I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 1276
    :cond_1
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/AppBidder$7;->e:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/callapp/contacts/util/ads/AppBidder$7;->a:Lcom/callapp/contacts/util/ads/JSONAdUnit;

    invoke-virtual {v1}, Lcom/callapp/contacts/util/ads/JSONAdUnit;->getAdUnitId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/util/ads/AppBidder$7;->c:Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;

    iget-boolean v3, p0, Lcom/callapp/contacts/util/ads/AppBidder$7;->d:Z

    invoke-static {v0, v1, v2, v3}, Lcom/callapp/contacts/util/ads/AdUtils;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;Z)V

    :goto_0
    return-void

    .line 1273
    :cond_2
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/AppBidder$7;->e:Landroid/content/Context;

    iget-object v1, p0, Lcom/callapp/contacts/util/ads/AppBidder$7;->a:Lcom/callapp/contacts/util/ads/JSONAdUnit;

    invoke-virtual {v1}, Lcom/callapp/contacts/util/ads/JSONAdUnit;->getAdUnitId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/mopub/mobileads/MoPubView$MoPubAdSize;->HEIGHT_250:Lcom/mopub/mobileads/MoPubView$MoPubAdSize;

    iget-object v3, p0, Lcom/callapp/contacts/util/ads/AppBidder$7;->c:Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;

    iget-boolean v4, p0, Lcom/callapp/contacts/util/ads/AppBidder$7;->d:Z

    invoke-static/range {v0 .. v5}, Lcom/callapp/contacts/util/ads/AdUtils;->a(Landroid/content/Context;Ljava/lang/String;Lcom/mopub/mobileads/MoPubView$MoPubAdSize;Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;ZLjava/util/Map;)V

    return-void

    .line 1270
    :cond_3
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/AppBidder$7;->e:Landroid/content/Context;

    iget-object v1, p0, Lcom/callapp/contacts/util/ads/AppBidder$7;->a:Lcom/callapp/contacts/util/ads/JSONAdUnit;

    invoke-virtual {v1}, Lcom/callapp/contacts/util/ads/JSONAdUnit;->getAdUnitId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/mopub/mobileads/MoPubView$MoPubAdSize;->HEIGHT_50:Lcom/mopub/mobileads/MoPubView$MoPubAdSize;

    iget-object v3, p0, Lcom/callapp/contacts/util/ads/AppBidder$7;->c:Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;

    iget-boolean v4, p0, Lcom/callapp/contacts/util/ads/AppBidder$7;->d:Z

    invoke-static/range {v0 .. v5}, Lcom/callapp/contacts/util/ads/AdUtils;->a(Landroid/content/Context;Ljava/lang/String;Lcom/mopub/mobileads/MoPubView$MoPubAdSize;Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;ZLjava/util/Map;)V

    return-void

    .line 1266
    :cond_4
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/AppBidder$7;->b:Lcom/callapp/contacts/util/ads/NativeAdParamGetter;

    iget-object v1, p0, Lcom/callapp/contacts/util/ads/AppBidder$7;->a:Lcom/callapp/contacts/util/ads/JSONAdUnit;

    invoke-virtual {v1}, Lcom/callapp/contacts/util/ads/JSONAdUnit;->getAdUnitId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/callapp/contacts/util/ads/NativeAdParamGetter;->a(Ljava/lang/String;)Lcom/callapp/contacts/util/ads/AdSettings;

    move-result-object v0

    .line 1267
    iget-object v1, p0, Lcom/callapp/contacts/util/ads/AppBidder$7;->b:Lcom/callapp/contacts/util/ads/NativeAdParamGetter;

    invoke-interface {v1, v0}, Lcom/callapp/contacts/util/ads/NativeAdParamGetter;->a(Lcom/callapp/contacts/util/ads/AdSettings;)Lcom/mopub/nativeads/ViewBinder;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/util/ads/AppBidder$7;->b:Lcom/callapp/contacts/util/ads/NativeAdParamGetter;

    invoke-interface {v2, v0}, Lcom/callapp/contacts/util/ads/NativeAdParamGetter;->b(Lcom/callapp/contacts/util/ads/AdSettings;)Ljava/util/EnumSet;

    move-result-object v2

    iget-object v3, p0, Lcom/callapp/contacts/util/ads/AppBidder$7;->c:Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;

    iget-boolean v4, p0, Lcom/callapp/contacts/util/ads/AppBidder$7;->d:Z

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/callapp/contacts/util/ads/AdUtils;->a(Lcom/callapp/contacts/util/ads/AdSettings;Lcom/mopub/nativeads/ViewBinder;Ljava/util/EnumSet;Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;ZLjava/util/Map;Z)Lcom/mopub/nativeads/MoPubNative;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 1282
    const-class v1, Lcom/callapp/contacts/util/ads/AppBidder;

    invoke-static {v1, v0}, Lcom/callapp/contacts/util/CLog;->b(Ljava/lang/Class;Ljava/lang/Throwable;)V

    return-void
.end method
