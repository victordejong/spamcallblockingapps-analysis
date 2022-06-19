.class public Lcom/mopub/nativeads/PangleAdNative$PangleNativeAd;
.super Lcom/mopub/nativeads/BaseNativeAd;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTNativeAd$AdInteractionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/nativeads/PangleAdNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "PangleNativeAd"
.end annotation


# instance fields
.field final synthetic a:Lcom/mopub/nativeads/PangleAdNative;

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/String;

.field private d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private e:Lcom/bytedance/sdk/openadsdk/TTFeedAd;


# direct methods
.method constructor <init>(Lcom/mopub/nativeads/PangleAdNative;Lcom/bytedance/sdk/openadsdk/TTFeedAd;Ljava/lang/String;)V
    .locals 1

    .line 168
    iput-object p1, p0, Lcom/mopub/nativeads/PangleAdNative$PangleNativeAd;->a:Lcom/mopub/nativeads/PangleAdNative;

    invoke-direct {p0}, Lcom/mopub/nativeads/BaseNativeAd;-><init>()V

    .line 162
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/mopub/nativeads/PangleAdNative$PangleNativeAd;->b:Ljava/util/Map;

    .line 164
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/mopub/nativeads/PangleAdNative$PangleNativeAd;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 169
    iput-object p2, p0, Lcom/mopub/nativeads/PangleAdNative$PangleNativeAd;->e:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    .line 170
    iput-object p3, p0, Lcom/mopub/nativeads/PangleAdNative$PangleNativeAd;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final addExtra(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "addExtra key is not allowed to be null"

    .line 198
    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions$NoThrow;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/mopub/nativeads/PangleAdNative$PangleNativeAd;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public clear(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public destroy()V
    .locals 0

    return-void
.end method

.method public getAdLogo()Landroid/graphics/Bitmap;
    .locals 1

    .line 291
    iget-object v0, p0, Lcom/mopub/nativeads/PangleAdNative$PangleNativeAd;->e:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    if-eqz v0, :cond_0

    .line 292
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTFeedAd;->getAdLogo()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAdView()Landroid/view/View;
    .locals 1

    .line 347
    iget-object v0, p0, Lcom/mopub/nativeads/PangleAdNative$PangleNativeAd;->e:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    if-eqz v0, :cond_0

    .line 348
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTFeedAd;->getAdView()Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getAdvertiserName()Ljava/lang/String;
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/mopub/nativeads/PangleAdNative$PangleNativeAd;->e:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    if-eqz v0, :cond_0

    .line 244
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTFeedAd;->getSource()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAppCommentNum()I
    .locals 1

    .line 312
    iget-object v0, p0, Lcom/mopub/nativeads/PangleAdNative$PangleNativeAd;->e:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    if-eqz v0, :cond_0

    .line 313
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTFeedAd;->getAppCommentNum()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getAppScore()I
    .locals 1

    .line 305
    iget-object v0, p0, Lcom/mopub/nativeads/PangleAdNative$PangleNativeAd;->e:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    if-eqz v0, :cond_0

    .line 306
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTFeedAd;->getAppScore()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getAppSize()I
    .locals 1

    .line 319
    iget-object v0, p0, Lcom/mopub/nativeads/PangleAdNative$PangleNativeAd;->e:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    if-eqz v0, :cond_0

    .line 320
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTFeedAd;->getAppSize()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public final getCallToAction()Ljava/lang/String;
    .locals 1

    .line 264
    iget-object v0, p0, Lcom/mopub/nativeads/PangleAdNative$PangleNativeAd;->e:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    if-eqz v0, :cond_0

    .line 265
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTFeedAd;->getButtonText()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getDescriptionText()Ljava/lang/String;
    .locals 1

    .line 257
    iget-object v0, p0, Lcom/mopub/nativeads/PangleAdNative$PangleNativeAd;->e:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    if-eqz v0, :cond_0

    .line 258
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTFeedAd;->getDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDislikeDialog(Landroid/app/Activity;)Lcom/bytedance/sdk/openadsdk/TTAdDislike;
    .locals 1

    .line 355
    iget-object v0, p0, Lcom/mopub/nativeads/PangleAdNative$PangleNativeAd;->e:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    if-eqz v0, :cond_0

    .line 356
    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/TTFeedAd;->getDislikeDialog(Landroid/app/Activity;)Lcom/bytedance/sdk/openadsdk/TTAdDislike;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getDislikeDialog(Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;)Lcom/bytedance/sdk/openadsdk/TTAdDislike;
    .locals 1

    .line 362
    iget-object v0, p0, Lcom/mopub/nativeads/PangleAdNative$PangleNativeAd;->e:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    if-eqz v0, :cond_0

    .line 363
    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/TTFeedAd;->getDislikeDialog(Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;)Lcom/bytedance/sdk/openadsdk/TTAdDislike;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final getExtra(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    const-string v0, "getExtra key is not allowed to be null"

    .line 187
    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions$NoThrow;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/mopub/nativeads/PangleAdNative$PangleNativeAd;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getExtras()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 194
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/mopub/nativeads/PangleAdNative$PangleNativeAd;->b:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public getFilterWords()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/FilterWord;",
            ">;"
        }
    .end annotation

    .line 340
    iget-object v0, p0, Lcom/mopub/nativeads/PangleAdNative$PangleNativeAd;->e:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    if-eqz v0, :cond_0

    .line 341
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTFeedAd;->getFilterWords()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIcon()Lcom/bytedance/sdk/openadsdk/TTImage;
    .locals 1

    .line 278
    iget-object v0, p0, Lcom/mopub/nativeads/PangleAdNative$PangleNativeAd;->e:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    if-eqz v0, :cond_0

    .line 279
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTFeedAd;->getIcon()Lcom/bytedance/sdk/openadsdk/TTImage;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getImageList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/TTImage;",
            ">;"
        }
    .end annotation

    .line 298
    iget-object v0, p0, Lcom/mopub/nativeads/PangleAdNative$PangleNativeAd;->e:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    if-eqz v0, :cond_0

    .line 299
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTFeedAd;->getImageList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getImageMode()I
    .locals 1

    .line 333
    iget-object v0, p0, Lcom/mopub/nativeads/PangleAdNative$PangleNativeAd;->e:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    if-eqz v0, :cond_0

    .line 334
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTFeedAd;->getImageMode()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getInteractionType()I
    .locals 1

    .line 326
    iget-object v0, p0, Lcom/mopub/nativeads/PangleAdNative$PangleNativeAd;->e:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    if-eqz v0, :cond_0

    .line 327
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTFeedAd;->getInteractionType()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/mopub/nativeads/PangleAdNative$PangleNativeAd;->e:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    if-eqz v0, :cond_0

    .line 251
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTFeedAd;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVideoCoverImage()Lcom/bytedance/sdk/openadsdk/TTImage;
    .locals 1

    .line 271
    iget-object v0, p0, Lcom/mopub/nativeads/PangleAdNative$PangleNativeAd;->e:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    if-eqz v0, :cond_0

    .line 272
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTFeedAd;->getVideoCoverImage()Lcom/bytedance/sdk/openadsdk/TTImage;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public onAdClicked(Landroid/view/View;Lcom/bytedance/sdk/openadsdk/TTNativeAd;)V
    .locals 4

    .line 209
    iget-object p1, p0, Lcom/mopub/nativeads/PangleAdNative$PangleNativeAd;->a:Lcom/mopub/nativeads/PangleAdNative;

    invoke-static {p1}, Lcom/mopub/nativeads/PangleAdNative;->a(Lcom/mopub/nativeads/PangleAdNative;)Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->CLICKED:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {}, Lcom/mopub/nativeads/PangleAdNative;->b()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p1, p2, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Ljava/lang/String;Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 211
    invoke-virtual {p0}, Lcom/mopub/nativeads/PangleAdNative$PangleNativeAd;->notifyAdClicked()V

    .line 213
    iget-object p1, p0, Lcom/mopub/nativeads/PangleAdNative$PangleNativeAd;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p1

    if-nez p1, :cond_0

    .line 214
    iget-object p1, p0, Lcom/mopub/nativeads/PangleAdNative$PangleNativeAd;->a:Lcom/mopub/nativeads/PangleAdNative;

    invoke-static {p1}, Lcom/mopub/nativeads/PangleAdNative;->c(Lcom/mopub/nativeads/PangleAdNative;)Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;->NATIVE:Lcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;

    const-string v0, "pangle"

    invoke-static {v0, p1, p2}, Lcom/callapp/contacts/manager/CallAppAdsAnalyticsManager;->c(Ljava/lang/String;Ljava/lang/String;Lcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;)V

    :cond_0
    return-void
.end method

.method public onAdCreativeClick(Landroid/view/View;Lcom/bytedance/sdk/openadsdk/TTNativeAd;)V
    .locals 4

    .line 223
    iget-object p1, p0, Lcom/mopub/nativeads/PangleAdNative$PangleNativeAd;->a:Lcom/mopub/nativeads/PangleAdNative;

    invoke-static {p1}, Lcom/mopub/nativeads/PangleAdNative;->a(Lcom/mopub/nativeads/PangleAdNative;)Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->CLICKED:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {}, Lcom/mopub/nativeads/PangleAdNative;->b()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p1, p2, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Ljava/lang/String;Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 225
    invoke-virtual {p0}, Lcom/mopub/nativeads/PangleAdNative$PangleNativeAd;->notifyAdClicked()V

    .line 227
    iget-object p1, p0, Lcom/mopub/nativeads/PangleAdNative$PangleNativeAd;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p1

    if-nez p1, :cond_0

    .line 228
    iget-object p1, p0, Lcom/mopub/nativeads/PangleAdNative$PangleNativeAd;->a:Lcom/mopub/nativeads/PangleAdNative;

    invoke-static {p1}, Lcom/mopub/nativeads/PangleAdNative;->c(Lcom/mopub/nativeads/PangleAdNative;)Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;->NATIVE:Lcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;

    const-string v0, "pangle"

    invoke-static {v0, p1, p2}, Lcom/callapp/contacts/manager/CallAppAdsAnalyticsManager;->c(Ljava/lang/String;Ljava/lang/String;Lcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;)V

    :cond_0
    return-void
.end method

.method public onAdShow(Lcom/bytedance/sdk/openadsdk/TTNativeAd;)V
    .locals 6

    .line 234
    iget-object p1, p0, Lcom/mopub/nativeads/PangleAdNative$PangleNativeAd;->a:Lcom/mopub/nativeads/PangleAdNative;

    invoke-static {p1}, Lcom/mopub/nativeads/PangleAdNative;->a(Lcom/mopub/nativeads/PangleAdNative;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->SHOW_SUCCESS:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {}, Lcom/mopub/nativeads/PangleAdNative;->b()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p1, v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Ljava/lang/String;Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 236
    invoke-virtual {p0}, Lcom/mopub/nativeads/PangleAdNative$PangleNativeAd;->notifyAdImpressed()V

    .line 238
    iget-object p1, p0, Lcom/mopub/nativeads/PangleAdNative$PangleNativeAd;->a:Lcom/mopub/nativeads/PangleAdNative;

    invoke-static {p1}, Lcom/mopub/nativeads/PangleAdNative;->c(Lcom/mopub/nativeads/PangleAdNative;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mopub/nativeads/PangleAdNative$PangleNativeAd;->getPublisherRevenue()D

    move-result-wide v2

    sget-object v4, Lcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;->NATIVE:Lcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;

    iget-object v5, p0, Lcom/mopub/nativeads/PangleAdNative$PangleNativeAd;->c:Ljava/lang/String;

    const-string v0, "pangle"

    invoke-static/range {v0 .. v5}, Lcom/callapp/contacts/manager/CallAppAdsAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;DLcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;Ljava/lang/String;)V

    return-void
.end method

.method public prepare(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public registerViewForInteraction(Landroid/view/ViewGroup;Landroid/view/View;Lcom/bytedance/sdk/openadsdk/TTNativeAd$AdInteractionListener;)V
    .locals 1

    .line 371
    iget-object v0, p0, Lcom/mopub/nativeads/PangleAdNative$PangleNativeAd;->e:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    if-eqz v0, :cond_0

    .line 372
    invoke-interface {v0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/TTFeedAd;->registerViewForInteraction(Landroid/view/ViewGroup;Landroid/view/View;Lcom/bytedance/sdk/openadsdk/TTNativeAd$AdInteractionListener;)V

    :cond_0
    return-void
.end method

.method public registerViewForInteraction(Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Landroid/view/View;Lcom/bytedance/sdk/openadsdk/TTNativeAd$AdInteractionListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            "Lcom/bytedance/sdk/openadsdk/TTNativeAd$AdInteractionListener;",
            ")V"
        }
    .end annotation

    .line 392
    iget-object v0, p0, Lcom/mopub/nativeads/PangleAdNative$PangleNativeAd;->e:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    if-eqz v0, :cond_0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 393
    invoke-interface/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/TTFeedAd;->registerViewForInteraction(Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Landroid/view/View;Lcom/bytedance/sdk/openadsdk/TTNativeAd$AdInteractionListener;)V

    :cond_0
    return-void
.end method

.method public registerViewForInteraction(Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Lcom/bytedance/sdk/openadsdk/TTNativeAd$AdInteractionListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Lcom/bytedance/sdk/openadsdk/TTNativeAd$AdInteractionListener;",
            ")V"
        }
    .end annotation

    .line 381
    iget-object v0, p0, Lcom/mopub/nativeads/PangleAdNative$PangleNativeAd;->e:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    if-eqz v0, :cond_0

    .line 382
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/TTFeedAd;->registerViewForInteraction(Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Lcom/bytedance/sdk/openadsdk/TTNativeAd$AdInteractionListener;)V

    :cond_0
    return-void
.end method

.method public showPrivacyActivity()V
    .locals 1

    .line 285
    iget-object v0, p0, Lcom/mopub/nativeads/PangleAdNative$PangleNativeAd;->e:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    if-eqz v0, :cond_0

    .line 286
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTFeedAd;->showPrivacyActivity()V

    :cond_0
    return-void
.end method
